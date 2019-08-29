<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB ; 
use CRUDbooster;

class ClassStudentsController extends \crocodicstudio\crudbooster\controllers\CBController
{
    
    public function index()
    {
       //Create your own query 
       $data = [];
       $data['page_title'] = 'Class Students';
              
       return view('CustomCrudBoosterPages.ClassStudents' , $data ) ;
    }

    public function get_all_classes()
    {
        $school_classes = DB::table('school_class')->get();
    
        return response()->json($school_classes) ;
    }

    public function get_class_students(Request $request)
    {
        $class_students = DB::table('student')
        ->leftJoin('bus', 'bus.id', '=', 'student.bus_id')
        ->leftJoin('school_class', 'school_class.id', '=', 'student.class_id')
        ->where( 'class_id' , '=' , $request->class_id )
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
    
        return response()->json($class_students) ;
    }


}
