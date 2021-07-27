<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Session;
use DB;

class MapelController extends Controller
{
    public function __construct()
    {
        $this->middleware('admin');
    }

    public function mapel_index()
    {
    	$all_mapel = DB::table('tblmapel')->get();
    	// echo $all_mapel;
    	return view('admin.admin_data_mapel',compact('all_mapel'));
    }

    public function store_mapel(Request $request)
    {
        $store = DB::table('tblmapel')
        ->insert([
            'nama'=>$request->mapel_name,
        ]);

        if ($store) {
            return redirect()->route('mapel')->with('success','Berhasil menambah Mata Pelajaran');
        }
        else{
            return redirect()->route('mapel')->with('fail','Gagal menambah Mata Pelajaran');
        }
    }

    public function edit_mapel($idMapel)
    {
        $thisMapel = DB::table('tblmapel_kelas')
        ->where('id',$idMapel)
        ->first();
    }

    public function update_mapel($idMapel)
    {
        $updateMapel = DB::table('tblmapel_kelas')
        ->where('id',$idMapel)
        ->update([
            'meetID'=>$request->meetID,
            'mapel_id'=>$request->mapelID,
            'hari'=>$request->mapelDay,
            'waktu'=>$request->timeStart,
            'waktuEnd'=>$request->timeEnd,
            'teacher_id'=>$request->teacherID,
        ]);
    }

    public function mapel_aktif($idMapel)
    {
        $aktif = DB::table('tblmapel_kelas')
        ->where('id',$idMapel)
        ->update([
            'aktif'=>1,
        ]);
    }

    public function mapel_nonaktif()
    {
        $nonAktif = DB::table('tblmapel_kelas')
        ->where('id',$idMapel)
        ->update([
            'aktif'=>0,
        ]);
    }

    public function delete_mapel(Request $request)
    {
        if($request->ajax()){
            $del_mapel = DB::table('tblmapel_kelas')->where('id',$request->jadwal_id)->delete();
        }
    }
}
