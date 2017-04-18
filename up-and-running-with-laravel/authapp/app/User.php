<?php

namespace App;
use Illuminate\Contracts\Auth\Authenticatable;

use Illuminate\Database\Eloquent\Model;

class User extends Model implements Authenticatable
{
	public $fullfill = ['email', 'username', 'password'];

	public function getAuthIdentifierName() {

	}

	public function getAuthIdentifier() {

	}

	public function getAuthPassword() {

	}

	public function getRememberToken() {

	}

	public function setRememberToken($value) {
		$this->remember_token = $value;
	}

	public function getRememberTokenName() {
		
	}
}
