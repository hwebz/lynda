myApp.controller('RegistrationController', ['$scope', 'Authentication', 
	function($scope, Authentication) {
	//$scope.message = "Welcome to my App";

	$scope.login = function() {
		// $scope.message = "Welcome " + $scope.user.email;

		Authentication.login($scope.user);
	};

	$scope.logout = function() {
		Authentication.logout();
	}

	$scope.register = function() {
		// $scope.message = "Welcome " + $scope.user.firstname;
		Authentication.register($scope.user);
	};
}]);