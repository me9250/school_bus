<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use DB ; 
Use Exception;
use CRUDbooster;
class StudentsReciptsController extends \crocodicstudio\crudbooster\controllers\CBController
{
    
    public function index()
    {

       //Create your own query 
       $data = [];
       $data['page_title'] = 'Students Recipts';
             
        return view('CustomCrudBoosterPages.StudentsRecipts', $data) ;
    }

    public function checkPrivilege()
    {
        CRUDBooster::myPrivilegeId();
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
        ->leftJoin('school_class', 'student.class_id', '=', 'school_class.id')
        ->where('student.id' , '=' ,  $request->student_id  )
        ->limit(1)
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

        return response()->json([  'student' => $student , 'privilege_id' => CRUDBooster::myPrivilegeId() , 'is_super_admin' => CRUDBooster::isSuperadmin() ] ) ;
  
    }

    public function get_study_years()
    {
        $years = DB::table('years')
        ->get(); 
    
        return response()->json($years) ;
    }


    public function get_student_payment_recipt_in_specific_year(Request $request)
    {

        $school_months = DB::table('months')
        ->where('month_status'  , '=' , 'School' )
        ->orderBy('month_display_order','asc') 
        ->get(); 


        $student_payments = DB::table('month_payment')
        ->leftJoin('months', 'months.id', '=', 'month_id')
        ->where( 'student_id'  , '=' , $request->student_id )
        ->where( 'year_id'  , '=' , $request->year_id )
        ->get([
            'months.name_english as month_name_english',
            'months.name_arabic as month_name_arabic',
            'month_payment.*',
        ]);     

        return response()->json( [ 'school_months' => $school_months , 'student_payments' => $student_payments  ] ) ; 
    }

    public function update_month_payment(Request $request)
    {
     
        foreach( $request->months_payments as $month_payment )
        {
    
            DB::insert("insert ignore into month_payment (id, month_id , student_id , year_id , month_fees  ) values (?,?,?,?,?)  ON DUPLICATE KEY UPDATE month_fees=" . $month_payment['value']  , [null, $month_payment['name']  , $request->student_id , $request->year_id , $month_payment['value'] ]);
        
        } 
       
    }

    public function delete_month_payment(Request $request)
    {

        if( DB::table('month_payment')->where('id', '=', $request->id )->delete() )
        {
        
            $status = 1 ; 
            $msg = "You delete month payment successfully." ; 
        }
        else 
        {
            $status = 2 ;
            $msg = "Something happend during delete month payment" ; 
        }
 
        return response()->json( [ 'status' => $status , 'msg' => $msg ] ) ; 

    }


} 
