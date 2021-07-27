<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\File;
use App\Models\PartnershipModel;
use Illuminate\Support\Str;
use DB;

class cobaController extends Controller
{
    public function download_penawaran(Request $request){
         // $direct=public_path('document/surat_penawaran.pdf');
         // // $url = Storage::path('document/surat_penawaran.pdf');
         // $url = Storage::get('public/doc/surat_penawaran.pdf');
         // // $path = public_path('document\surat_penawaran.pdf');
         // // return Storage::download($direct);
         // return Storage::path('public/doc/surat_penawaran.pdf');
    // 	return response()->download(public_path('document\surat_penawaran.pdf'));
    	// echo "<iframe src='doc/surat_penawaran.pdf' width='500' height='500'>";
         // echo $path;
         return view('user.surat_penawaran');
    }

    public function partnership(Request $request)
    {
    	$fotoKTP = $request->file('fotoKTP');
    	$directory = 'public/partnership/';
    	$str_random = Str::random(6);
    	$img_full_name = $request->instansi."_".$request->kepala."_".$str_random.".jpg";
    	$fotoKTP->move($directory,$img_full_name);

    	$flights = DB::table('tblpartnership')->insert([
    		'instansi' => $request->instansi,
		    'telpinstansi' => $request->telpinstansi,
		    'alamat' => $request->alamat,
		    'kepala' => $request->kepala,
		    'telpkepala' => $request->telpkepala,
		    'fotoKTP' => $img_full_name,
		    'program' => $request->eng.",".$request->math.",".$request->class.",".$request->other,
    	]);

    	return redirect()->route('kerjasama')->with('success','Berhasil mengirim formulir kerjasama. Tim kami akan menghubungi Anda segera!');
    }

    public function get_in_touch()
    {
    	
    }
}