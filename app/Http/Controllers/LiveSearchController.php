<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;

class LiveSearchController extends Controller
{
    public function index()
    {
        return view('index');
    }

    public function loadData(Request $request)
    {
        if ($request->has('q')) {
            $cari = $request->q;
            $output="";
            $data = DB::table('tbluser')->select('id','UserEmail')->where('UserEmail', 'like', '%'.$cari.'%')->get();
            // if (count($data)<=1) {
            // 	echo "berhasil";
            // }
            // else{
            // 	echo "tidak berhasil";
            // }
            // $output.=$data;
            return response()->json($data);
        }
    }

    public function loadData2(Request $request)
    {
    	if ($request->ajax()) {
    		$output="";
    		$cari_2 = $request->useremail;
    		$data_2 = DB::table('tbluser')->where('UserEmail', 'like', '%'.$cari_2.'%')->get();
    		if (count($data_2)>=1) {
    			$output.=$data_2;
    			return Response($output);
    		}
    		else{
    			$output.='tidak terdapat data';
    		return Response($output);
    		}
    		// echo $data_2;
    	}
    }
}
