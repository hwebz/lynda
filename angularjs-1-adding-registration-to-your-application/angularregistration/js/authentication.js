myApp.factory('Authentication', ['$rootScope', '$firebaseAuth', '$firebaseObject', '$location', 'FIREBASE_URL', function($rootScope, $firebaseAuth, $firebaseObject, $location, FIREBASE_URL) {

	var ref = new Firebase(FIREBASE_URL);
	var auth = $firebaseAuth(ref);

	auth.$onAuth(function(authUser) {
		if (authUser) {
			var userRef = new Firebase(FIREBASE_URL + "users/" + authUser.uid);
			var userObj = $firebaseObject(userRef);
			$rootScope.currentUser = userObj;
		} else {
			$rootScope.currentUser = "";
		}
	});

	var myObject = {
		login: function(user) {
			// $rootScope.message = "Welcome " + $scope.user.email;

			auth.$authWithPassword({
				email: user.email,
				password: user.password
			}).then(function(reqUser) {
				$location.path('/success');
			}).catch(function(err) {
				$rootScope.message = err.message;
			});
		},

		logout: function() {
			return auth.$unauth();
		},

		requireAuth: function() {
			return auth.$requireAuth();
		},

		register: function(user) {
			auth.$createUser({
				email: $scope.user.email,
				password: $scope.user.password
			}).then(function(reqUser) {

				var regRef = new Firebase(FIREBASE_URL + "users")
				.child(regUser.uid).set({
					date: Firebase.ServeValue.TIMESTAMP,
					reqUser: reqUser.uid,
					firstname: user.firstname,
					lastname: user.lastname,
					email: user.email 
				});

				myObject.login(user);

				$scope.message = "Hi " + $scope.user.firstname + ", Thanks for registering";
			}).catch(function(err) {
				$scope.message = err.message;
			});
		}
	}

	return myObject;
}]);