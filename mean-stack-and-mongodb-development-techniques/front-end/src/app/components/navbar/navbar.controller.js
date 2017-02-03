export class NavbarController {
    constructor($auth) {
        'ngInject';
        
        this.isAuthenticated = $auth.isAuthenticated;
    }
    
    logout() {
        this.$auth.logout();
    }
}