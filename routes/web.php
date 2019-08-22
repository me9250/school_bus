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

/*
Route::get('/', function () {
    return view('welcome');
});
*/

Route::redirect('/', '/school_bus/public/admin');


Route::redirect('/dashboard', '/vendor/crudbooster/type_components/students_payment_recipts');

Route::get('/StudentsRecipts' , 'StudentsReciptsController@index' ) ; 

