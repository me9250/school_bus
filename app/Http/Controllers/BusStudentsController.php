<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB ; 

class BusStudentsController extends Controller
{

    public function index()
    {
       //Create your own query 
       $data = [];
       $data['page_title'] = 'Bus Students';
             
       return view('CustomCrudBoosterPages.BusStudents' , $data ) ;

    }

    public function get_all_buses()
    {
        $buses = DB::table('bus')->get();
    
        return response()->json($buses) ;
    }

    public function get_bus_students(Request $request)
    {
        $bus_students = DB::table('student')
        ->leftJoin('bus', 'bus.id', '=', 'student.bus_id')
        ->leftJoin('school_class', 'school_class.id', '=', 'student.class_id')
        ->where( 'bus_id' , '=' , $request->bus_id )
        ->get( 
            [ 
            'student.id as student_id',
            'student.name_english as student_name_english',
            'student.name_arabic as student_name_arabic',
            'student.*',
            'school_class.id as school_class_id',
            'school_class.name_english as class_name_english',
            'school_class.name_arabic as class_name_english',
            'school_class.*',
            'bus.*',
        ] );
    
        return response()->json($bus_students) ;
    }



}
