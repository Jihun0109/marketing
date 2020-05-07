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

        Route::get('/email-list', 'EmailListController@index')->name('emaillist.index');
        Route::get('/product/{sku}', 'EmailListController@product')->name('emaillist.product');
        Route::get('/contact', 'ContactController@index')->name('contact');
        Route::post('/contact/send-msg', 'ContactController@message')->name('message');
        Route::get('/scraping', 'ServiceController@scraping')->name('scraping');
        Route::get('/templates', 'ServiceController@templates')->name('templates');

        Route::get('/product/download/{sku}', 'EmailListController@download')->name('emaillist.download');

        Route::get('/blog', 'BlogController@index')->name('blog.index');
        Route::get('/articles/{slug}', 'BlogController@article')->name('blog.article');
    });
