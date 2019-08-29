<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB ; 

class YearTotalController extends Controller
{
    public function index()
    {
        //Create your own query 
       $data = [];
       $data['page_title'] = 'Year Total';
             
       return view('CustomCrudBoosterPages.YearTotal' , $data ) ;
    }

    public function get_study_years()
    {
        $years = DB::table('years')->get();
    
        return response()->json($years) ;
    }
}
