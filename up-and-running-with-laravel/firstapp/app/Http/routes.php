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

use App\Painting as Painting;

Route::get('/', function () {
    
    /* Schema::create('art', function($newtable) {
        $newtable->increments('id');
        $newtable->string('artist');
        $newtable->string('title', 500);
        $newtable->text('description');
        $newtable->date('created');
        $newtable->date('exhibition_date');
        $newtable->timestamps();
    }); */
    
    /* Schema::table('art', function($newtable) {
        $newtable->boolean('alumni');
        $newtable->dropColumn('exhibition_date');
    }); */
    
    /* $painting = new Painting;
    $painting->title = 'Do No Wrong';
    $painting->artist = 'D. DoRight';
    $painting->year = 2014;
    $painting->save(); */
    
    /*$painting = Painting::find(1);
    $painting->title = 'Do No Wrongh - Just Do Right';
    $painting->save();
    return $painting->title;*/
    
    $theLandmarks = array('St.Marks', 'Brooklyn Heights', 'Central Park', 'Times Square');
    return view('welcome', array('theLocation' => 'NYC', 'theWeather' => 'sunny', 'theLandmarks' => $theLandmarks));

    //return view('welcome');
});

Route::get('about', function() {
   return 'About Us'; 
});

Route::get('about/directions', function() {
   return 'About Us Directions page'; 
});

Route::get('about/{theSubject}', function($theSubject) {
   return $theSubject. ' conten goes here'; 
});

Route::get('about/classes/{theSubject}', function($theSubject) {
   return "Content about {$theSubject} classes goes here."; 
});

Route::get('signup', function() {
    return view('signup');
});

Route::post('thanks', function() {
    $theEmail = Input::get('email');
    return view('thanks')->with('theEmail', $theEmail);
});