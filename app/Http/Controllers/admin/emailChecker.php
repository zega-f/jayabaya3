<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\teacher_model;
use DB;

class emailChecker extends Controller
{
    public function __construct()
    {
        $this->middleware('admin');
    }
    
    public function email_check(Request $request)
    {
        if($request->ajax())
        {
            
        $string = "lorem ipsum";
        $email = $request->input('email');
        $checking_email = DB::table('tbluser')->where('UserEmail',$email)->count();
        // $checking_email_2 = DB::table('tblteacher')->where('email',$email)->value('nama');
        $output="";        


        if($checking_email==0)
        {
        $output.=
        '<div class="alert alert-success ">'.
        '<p>'."email dapat dipakai".'</p>'.
        '</div>';
        return Response($output);
        }
        else{
      	$output.=
      	'<div class="alert alert-danger ">'.
        '<p>'."email tidak dapat dipakai".'</p>'.
        '</div>';
        
        return Response($output);
        }

        }
    }
}
