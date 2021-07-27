<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\File;
use DB;

class pesertaController extends Controller
{
	public function __construct()
    {
        $this->middleware('admin');
    }
    
    public function index($program){
    	$data_pes_bimbel = DB::table('tblcourseuser')
		->join('tbluser', 'tblcourseuser.user', '=', 'tbluser.id_user')
		->select('tblcourseuser.id','tblcourseuser.jenjang','tblcourseuser.grade', 'tbluser.UserName','tbluser.UserEmail', 'tbluser.alamat','tbluser.UserAvatar','tblcourseuser.school')
		->where('tblcourseuser.course','class')
		->paginate(10);

		return view('admin.admin_data_peserta_bimbel',compact('data_pes_bimbel','program'));
		// echo $data_pes_bimbel;
    }

    public function all_english($program){
    	$data_pes_bimbel = DB::table('tblcourseuser')
		->join('tbluser', 'tblcourseuser.user', '=', 'tbluser.id_user')
		->select('tblcourseuser.id','tblcourseuser.grade', 'tbluser.UserName','tbluser.UserEmail', 'tbluser.alamat','tbluser.UserAvatar','tblcourseuser.school')
		->where('tblcourseuser.course','english')
		->paginate(10);

		return view('admin.admin_data_peserta_english',compact('data_pes_bimbel','program'));
		// echo $data_pes_bimbel;
    }
    public function all_math($program){
    	$data_pes_bimbel = DB::table('tblcourseuser')
		->join('tbluser', 'tblcourseuser.user', '=', 'tbluser.id_user')
		->select('tblcourseuser.id','tblcourseuser.grade', 'tbluser.UserName','tbluser.UserEmail', 'tbluser.alamat','tbluser.UserAvatar','tblcourseuser.school')
		->where('tblcourseuser.course','math')
		->paginate(10);

		return view('admin.admin_data_peserta_english',compact('data_pes_bimbel','program'));
		// echo $data_pes_bimbel;
    }
}
