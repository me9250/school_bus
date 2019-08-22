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



Route::get('get_all_students', 'StudentsReciptsController@get_all_students');

Route::get('get_student_data', "StudentsReciptsController@get_student_data" );

Route::get('get_student_data_using_his_name', "StudentsReciptsController@get_student_data_using_his_name" );

Route::get('get_study_years', "StudentsReciptsController@get_study_years" );

Route::get('get_student_payment_recipt_in_specific_year', "StudentsReciptsController@get_student_payment_recipt_in_specific_year" );

