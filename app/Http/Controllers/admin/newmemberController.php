<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Session;
use DB;

class newmemberController extends Controller
{
    public function __construct()
    {
        $this->middleware('admin');
    }

    public function index(){
    	$data_new_member = DB::table('tblcourseuser')
			->join('users', 'users.user_id', '=', 'tblcourseuser.user')
			->select('tblcourseuser.id','users.name','users.address','users.sex','tblcourseuser.course','tblcourseuser.jenjang','tblcourseuser.grade','tblcourseuser.school','tblcourseuser.bukti')
            ->where([
                ['tblcourseuser.verify','0'],
                ['tblcourseuser.bukti','!=','0']
            ])
            ->orderBy('tblcourseuser.date_submit','DESC')
            ->get();
    	// $data_new_member = DB::table('tblcourseuser')->where('verify','0')->get();
    	return view('admin.admin_pesertabaru',compact('data_new_member'));
			// echo $data_new_member;
    }

    public function edit_verifikasi_user(Request $request)
    {
    	if($request->ajax())
        {
            $output="";
            $pendaftar_id = $request->pendaftar_id;
            $data_new_member_2 = DB::table('tblcourseuser')
            ->join('users', 'users.user_id', '=', 'tblcourseuser.user')
            ->select('tblcourseuser.id','users.name','users.address','users.sex','tblcourseuser.course','tblcourseuser.jenjang','tblcourseuser.grade','tblcourseuser.school','tblcourseuser.bukti')
            ->where('tblcourseuser.id',$pendaftar_id)
            ->get();
            return view('admin.edit_form_pendaftar',compact('data_new_member_2'));
            // $output = $pendaftar_id;
            // return Response($output);  
        }
    }

    public function change_verify_val(Request $request)
    {
        $reg_id = $request->pendaftaran_id;
        $course = $request->pendaftar_course;
        $userID = DB::table('tblcourseuser')->where('id',$reg_id)->value('user');

        $do_verify = DB::table('tblcourseuser')
        ->where('id',$reg_id)
        ->update([
            'verify'=>'1',
            ]);
        $insert_verifikasi_admin_to_activity = DB::table('tbluseractivity')
        ->insert([
            'category'=>7,
            'user_id'=>$userID,
            'activity_id'=>$course
        ]);
        return redirect()->route('pendaftar_baru');
    }
}
