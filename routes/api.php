<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

// student recipt api's 

Route::get('get_all_students', 'StudentsReciptsController@get_all_students');

Route::get('get_student_data', "StudentsReciptsController@get_student_data" );

Route::get('get_student_data_using_his_name', "StudentsReciptsController@get_student_data_using_his_name" );

Route::get('get_study_years', "StudentsReciptsController@get_study_years" );

Route::get('get_student_payment_recipt_in_specific_year', "StudentsReciptsController@get_student_payment_recipt_in_specific_year" );

Route::post('update_month_payment', "StudentsReciptsController@update_month_payment" ); 
 
Route::post('delete_month_payment ', "StudentsReciptsController@delete_month_payment");

// bus student api's

Route::get('get_all_buses', 'BusStudentsController@get_all_buses');

Route::get('get_bus_students', 'BusStudentsController@get_bus_students');

// class student api's

Route::get('get_all_classes', 'ClassStudentsController@get_all_classes');

Route::get('get_class_students', 'ClassStudentsController@get_class_students');

// total years api's 

Route::get('get_study_years', 'YearTotalController@get_study_years');