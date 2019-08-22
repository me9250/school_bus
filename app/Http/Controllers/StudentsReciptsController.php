<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB ; 

class StudentsReciptsController extends Controller
{
    
    public function index()
    {

       //Create your own query 
       $data = [];
       $data['page_title'] = 'Students Recipts';
             

      // $this->cbView('CustomCrudBoosterPages.StudentsRecipts',$data);

        return view('CustomCrudBoosterPages.StudentsRecipts') ;
    }

    public function get_all_students()
    {

        $students = DB::table('student')
        ->get();
    
    
        return response()->json($students) ;
    
    }



    public function get_student_data_using_his_name(Request $request)
    {
 
        $student = DB::table('student')
        ->leftJoin('bus', 'student.bus_id', '=', 'bus.id')
        ->leftJoin('city', 'student.city_id', '=', 'city.id')
        ->leftJoin('school_class', 'student.class_id', '=', 'school_class.id')
        ->where('student.name_english' , 'LIKE' , '%' . $request->name . '%' )
        ->orWhere('student.name_arabic' , 'LIKE' , '%' . $request->name . '%' )
        ->limit(1)
        ->get( 
            [ 
            'student.id as student_id',
            'student.name_english as student_name_english',
            'student.name_arabic as student_name_arabic',
            'student.*',
            'city.id as city_id',
            'city.name_english as city_name_english',
            'city.name_arabic as city_name_arabic',
            'city.*',
            'school_class.id as school_class_id',
            'school_class.name_english as class_name_english',
            'school_class.name_arabic as class_name_english',
            'school_class.*',
            'bus.*',
        ] );


        $months_payments = DB::table('month_payment')
        //->where( 'year_id' , 'LIKE' , '%' . $request->year  )
        //->andWhere( 'student_id' , '=' ,  $student[0]->student_id  )
        //->groupBy('month_id')
        ->get() ; 


        return response()->json([  'student' => $student , 'student_payments_in_specific_study_year' => $months_payments  ] ) ;
  
    }

    public function get_student_data(Request $request)
    {
 
        $student = DB::table('student')
        ->leftJoin('bus', 'student.bus_id', '=', 'bus.id')
        ->leftJoin('city', 'student.city_id', '=', 'city.id')
        ->leftJoin('school_class', 'student.class_id', '=', 'school_class.id')
        ->where('student.id' , '=' , $request->id )
        ->get( 
            [ 
            'student.id as student_id',
            'student.name_english as student_name_english',
            'student.name_arabic as student_name_arabic',
            'student.*',
            'city.id as city_id',
            'city.name_english as city_name_english',
            'city.name_arabic as city_name_arabic',
            'city.*',
            'school_class.id as school_class_id',
            'school_class.name_english as class_name_english',
            'school_class.name_arabic as class_name_english',
            'school_class.*',
            'bus.*',
        ] );

        return response()->json([ 'student' => $student ] ) ;
 
    }


    public function get_study_years()
    {
        $years = DB::table('years')
        ->get(); 
    
        return response()->json($years) ;
    }


    public function get_student_payment_recipt_in_specific_year(Request $request)
    {

        $payments = DB::table('payment')
        ->where('student_id'  , '=' , $request->student_id )
        ->where('year_id'  , '=' , $request->year_id )
        ->get();  
     
        return response()->json( $payments ) ; 
    }
}
