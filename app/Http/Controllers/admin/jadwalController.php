<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use DB;

class jadwalController extends Controller
{
	public function __construct()
    {
        $this->middleware('admin');
    }
    
    public function index(){
		$AllJadwal = DB::table('tblmapel_kelas')
    	->orderBy('hari','ASC')
    	->orderBy('waktu','ASC')
    	->get();
    	// echo $AllJadwal;

		return view('admin.admin_schedule',compact('AllJadwal'));    	
    }
}
