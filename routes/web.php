<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', 'HomeController@index')->name('index');


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});



Route::get('/home', 'HomeController@index')->name('home');


Route::group([
        'prefix' => '{Locale}', 
        'where' => ['Locale' => '[a-zA-Z]{2}'],
        'middleware' => 'setlocale',
    ], function(){

        Auth::routes();

        Route::get('/', 'HomeController@home')->name('home');

        Route::get('/email-list', 'EmailListController@home')->name('emaillist.home');
        Route::get('/product/{prod_id}', 'EmailListController@product')->name('emaillist.product');
    });
