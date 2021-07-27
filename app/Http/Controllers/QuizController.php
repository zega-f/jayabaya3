<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use DB;

class QuizController extends Controller
{
    public function store_quiz_question(Request $request)
    {
		 $number = count($request->name);

		 if($number > 0)  
		 {  
		      for($i=0; $i<$number; $i++)  
		      {  
		           if(trim($request->name[$i] != ''))  
		           {  
		           		$sql = DB::table('tblcobaquiz')->insert([
		           			'quiz_question'=>$request->name[$i],
		           			]);
		                // $sql = "INSERT INTO tbl_name(name) VALUES('".mysqli_real_escape_string($connect, $_POST["name"][$i])."')";  
		                // mysqli_query($connect, $sql);  
		           }  
		      }  
		      echo "Data Inserted";  
		 }  
		 else  
		 {  
		      echo "Please Enter Name";  
		 }  
    }
    public function store_quiz_answer(Request $request)
    {

    }
}
