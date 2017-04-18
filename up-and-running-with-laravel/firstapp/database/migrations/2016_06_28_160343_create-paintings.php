<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePaintings extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //
        Schema::create('paintings', function($thePaitning) {
            $thePaitning->increments('id');
            $thePaitning->string('title');
            $thePaitning->string('artist');
            $thePaitning->integer('year');
            $thePaitning->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
        Schema::drop('paintings');
    }
}
