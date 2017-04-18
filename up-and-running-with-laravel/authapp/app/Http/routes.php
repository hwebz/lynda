<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

use App\User as User;
use Illuminate\Support\Facades\Input as Input;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/register', function() {
	return view('users/register');
});

Route::post('/register', function() {
	$user = new User;
	$user->email = Input::get('email');
	$user->username = Input::get('username');
	$user->password = Hash::make(Input::get('password'));
	$user->save();

	$theEmail = Input::get('email');
	return view('users/thanks')->with('theEmail', $theEmail);
});

Route::get('/login', function() {
	return view('users/login');
});

Route::get('/logout', function() {
	Auth::logout();
	return view('users/logout');
});

// Route::get('/spotlight', array('middleware' => 'auth.basic', function() {
Route::get('/spotlight', array('middleware' => 'auth', function() {
	return view('spotlight');
}));

Route::post('/login', function() {
	$credentials = Input::only('username', 'password');
	if (Auth::attempt($credentials)) {
		return Redirect::intended('/');
	}
	return Redirect::to('/login');
});

Route::post('/logout', function() {

});