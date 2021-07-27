<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Session;
use DB;

class KelasController extends Controller
{
    public function __construct()
    {
        $this->middleware('admin');
    }

    public function kelas_index()
    {
    	$kelas = DB::table('tblkelas')->orderBy('id','DESC')->get();
        
    	return view('admin.admin_data_kelas',compact('kelas'));
    }

    public function store_kursus(Request $request)
    {
        $new_kursus = DB::table('tblcourse')
        ->insert([
            'CourseName'=>$request->nama_kursus,
            'CourseDescription'=>$request->description,
            'AddedByAdminID'=>Session::get('adminID')
        ]);

        if ($new_kursus) {
            return back()->with('success','Berhasil menambahkan kursus');
        }else{
            return back()->with('fail','Gagal menambahkan kursus');
        }
    }

    public function store_kelas(Request $request)
    {
    	$jenjang = $request->jenjang;
    	$sub_jenjang = $request->sub_jenjang;
    	$region = $request->region;
    	$class_name = $request->class_name;

    	$class_now = DB::table('tblkelas')
    	->where([
    			['base_name',$jenjang],
    			['sub_name',$sub_jenjang],
                ['region',$region],
    		])
    	->count();
    	

    	// echo $class_now." ".$jenjang." ".$sub_jenjang." ".$region;

    	if ($class_now==0) {
    		$class_name = 'A';
    		$store_kelas = DB::table('tblkelas')
    		->insert([
    			'base_name'=>$jenjang,
    			'sub_name'=>$sub_jenjang,
    			'class_name'=>$class_name,
    			'region'=>$region,
    			'tingkat'=>$jenjang,
    			'jenjang'=>$sub_jenjang,
    		]);
    		return redirect()->route('kelas');
    	}
    	else{
    		$class_noW_2 = DB::table('tblkelas')
    		->where([
    			['base_name',$jenjang],
    			['sub_name',$sub_jenjang],
    		])
    		->latest()
    		->value('class_name');

    		$alph = $class_noW_2;
			$i = 1;
			$alph = chr(ord($alph)+$i);
    		$store_kelas = DB::table('tblkelas')
    		->insert([
    			'base_name'=>$jenjang,
    			'sub_name'=>$sub_jenjang,
    			'class_name'=>$alph,
    			'region'=>$region,
    			'tingkat'=>$jenjang,
    			'jenjang'=>$sub_jenjang,
    		]);

    		return redirect()->route('kelas');
    	}    		
    }

    public function c_non_aktif(Request $request)
    {
        $non_aktif = DB::table('tblkelas')
        ->where([
            ['id',$request->id_kelas],
        ])
        ->update([
            'aktif'=>0,
        ]);
    }

    public function c_aktif(Request $request)
    {
        $aktif = DB::table('tblkelas')
        ->where([
            ['id',$request->id_kelas],
        ])
        ->update([
            'aktif'=>1,
        ]);
    }

    public function kelola_kelas($id_kelas, $jenjang, $tingkat)
    {
        $all_siswa = DB::table('tblcourseuser')
        ->join('tbluser','tblcourseuser.user','=','tbluser.id_user')
        ->select('tblcourseuser.jenjang','tblcourseuser.grade','tblcourseuser.course','tblcourseuser.user','tbluser.UserName','tbluser.id')
        ->where([
            ['tblcourseuser.course',"class"],
            ['tblcourseuser.jenjang',$jenjang],
            ['tblcourseuser.grade',$tingkat],
            ['tblcourseuser.class_id',null]
        ])
        ->get();

        $all_siswa_active = DB::table('tblcourseuser')
        ->join('tbluser','tblcourseuser.user','=','tbluser.id_user')
        ->select('tblcourseuser.jenjang','tblcourseuser.grade','tblcourseuser.course','tblcourseuser.class_id','tblcourseuser.user','tbluser.UserName','tbluser.id')
        ->where([
            ['tblcourseuser.course',"class"],
            ['tblcourseuser.jenjang',$jenjang],
            ['tblcourseuser.grade',$tingkat],
            ['tblcourseuser.class_id',$id_kelas],
            ['tblcourseuser.class_id','!=',null]
        ])
        ->get();


        $all_mapel = DB::table('tblmapel')->get();
        $nama_kelas = DB::table('tblkelas')
        ->where('id',$id_kelas)
        ->get();

        $jadwal_kelas = DB::table('tblmapel_kelas')
        ->join('tblmapel','tblmapel_kelas.mapel_id','=','tblmapel.id')
        ->select('tblmapel_kelas.id','tblmapel.nama','tblmapel_kelas.mapel_id','tblmapel_kelas.waktu','tblmapel_kelas.hari','tblmapel_kelas.teacher_id','tblmapel_kelas.aktif','tblmapel_kelas.meetID')
        ->where('tblmapel_kelas.kelas_id',$id_kelas)
        ->orderBy('tblmapel_kelas.hari','ASC')
        ->get();
        return view('admin.2nd_admin.admin_kelola_kelas',compact('all_mapel','nama_kelas','all_siswa_active','all_siswa','id_kelas','jenjang','tingkat','jadwal_kelas'));
    }

    public function teacher_list(request $request)
    {
        if($request->ajax()){
            $output = "";
            $id_mapel = $request->mapel_id;
            $teacher_list = DB::table('tbl_classteacher')
            ->join('tbluser','tbl_classteacher.id_teacher','=','tbluser.id_user')
            ->select('tbl_classteacher.id_teacher','tbluser.id_user','tbluser.UserName')
            ->where('tbl_classteacher.id_kursus',$id_mapel)
            ->get();

            if (count($teacher_list)==0) {
                $output.='<option value="" selected>Pilih pengajar</option>';
                return Response($output);
            }
            else{
                echo "<option value='' selected>Pilih pengajar</option>";
                foreach ($teacher_list as $teacher_l) {
                    $output.='<option value='.$teacher_l->id_teacher.'>'.$teacher_l->UserName.'</option>';
                }
                return Response($output); 
            }
        }
    }

    public function siswaIntoClass(Request $request)
    {
        $id_kelas = $request->id_kelas;
        $siswaIntoClass = DB::table('tblcourseuser')
        ->where([
            ['user',$request->siswa_id],
            ['course',"class"],
        ])
        ->update([
            'class_id'=>$request->id_kelas,
        ]);

        $all_siswa_active = DB::table('tblcourseuser')
        ->join('tbluser','tblcourseuser.user','=','tbluser.id_user')
        ->select('tblcourseuser.jenjang','tblcourseuser.grade','tblcourseuser.course','tblcourseuser.user','tbluser.UserName')
        ->where([
            ['course','class'],
            ['class_id',$request->id_kelas],
        ])
        ->get();
        $jenjang = DB::table('tblkelas')->where('id',$id_kelas)->value('base_name');
        $tingkat = DB::table('tblkelas')->where('id',$id_kelas)->value('sub_name');
        // return view('admin.component.active_user',compact('all_siswa_active','id_kelas','jenjang','tingkat'));
    }

    public function siswa_aktif(Request $request)
    {
        $id_kelas = $request->id_kelas;
        $all_siswa_active = DB::table('tblcourseuser')
        ->join('tbluser','tblcourseuser.user','=','tbluser.id_user')
        ->select('tblcourseuser.jenjang','tblcourseuser.grade','tblcourseuser.course','tblcourseuser.class_id','tblcourseuser.user','tbluser.UserName')
        ->where([
            ['tblcourseuser.course',"class"],
            ['tblcourseuser.class_id',$id_kelas],
        ])
        ->get();

        $jenjang = DB::table('tblkelas')->where('id',$id_kelas)->value('base_name');
        $tingkat = DB::table('tblkelas')->where('id',$id_kelas)->value('sub_name');
        // echo count( $all_siswa_active).$request->id_klelas;
        return view('admin.component.active_user',compact('all_siswa_active','id_kelas','jenjang','tingkat'));
    }

    public function siswa_nonaktif(Request $request)
    {
        $id_kelas = $request->id_kelas;
        $jenjang = DB::table('tblkelas')->where('id',$id_kelas)->value('base_name');
        $tingkat = DB::table('tblkelas')->where('id',$id_kelas)->value('sub_name');
        $all_siswa = DB::table('tblcourseuser')
        ->join('tbluser','tblcourseuser.user','=','tbluser.id_user')
        ->select('tblcourseuser.jenjang','tblcourseuser.grade','tblcourseuser.course','tblcourseuser.user','tbluser.UserName','tbluser.id')
        ->where([
            ['tblcourseuser.course',"class"],
            ['tblcourseuser.jenjang',$jenjang],
            ['tblcourseuser.grade',$tingkat],
            ['tblcourseuser.class_id',null]
        ])
        ->get();
        // echo count( $all_siswa_active).$request->id_klelas;
        return view('admin.component.inactive_user',compact('all_siswa','id_kelas'));
    }

    public function removeSiswaFromClass(Request $request)
    {
        $siswaOutClass = DB::table('tblcourseuser')
        ->where([
            ['user',$request->id_siswa_r],
            ['course',"class"],
        ])
        ->update([
            'class_id'=>null,
        ]);
    }

    public function store_jadwal(Request $request, $kelas_id,$kelas_jenjang,$kelas_tingkat)
    {
        // $kelas_tingkat = $request->tingkat;
        // $kelas_jenjang = $request->jenjang;
        // echo $kelas_id.$kelas_tingkat.$kelas_jenjang;
        $jadwal = DB::table('tblmapel_kelas')
        ->insert([
            'kelas_id'=>$kelas_id,
            'mapel_id'=>$request->mapel,
            'hari'=>$request->hari,
            'waktu'=>$request->waktu,
            'waktuEnd'=>$request->waktuEnd,
            'teacher_id'=>$request->teacher_list,
            'tahun_id'=>1,
            'aktif'=>1
        ]);

        return redirect()->back();
    }

    public function validateURL(Request $request)
    {
        $url = $request->url;
        // Remove all illegal characters from a url
        $url = filter_var($url, FILTER_SANITIZE_URL);

        // Validate url
        if (filter_var($url, FILTER_VALIDATE_URL) !== false) {
            return Response(1);
        } else {
            return Response(0);
        }
    }

    public function storeMeet(Request $request)
    {
        $storeMeet = DB::table('tblmapel_kelas')
        ->where('id',$request->idMapel)
        ->update([
            'meetID'=>$request->meetNow,
        ]);

        return Response('1');
    }

    public function KelolaKursus($courseID)
    {
        $thisCourse = DB::table('tblcourse')->where('CourseName',$courseID)->first();
        $thisCourseSiswa = DB::table('tblcourseuser')
        ->join('tbluser','tblcourseuser.user','=','tbluser.id_user')
        ->select('tbluser.userName','tbluser.id_user','tblcourseuser.course')
        ->where('tblcourseuser.course',$courseID)
        ->get();
        return view('admin.2nd_admin.admin_kelola_kursus',compact('courseID','thisCourse','thisCourseSiswa'));
    }

    public function updateMeet(Request $request, $courseID)
    {
        $updateMeetID = DB::table('tblcourse')
        ->where('CourseName',$courseID)
        ->update([
            'courseMeetID'=>$request->meetID,
        ]);

        return back();
    }

}
