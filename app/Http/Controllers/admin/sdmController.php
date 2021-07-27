<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Str;
use App\teacher_model;
use DB;


class sdmController extends Controller
{
    public function __construct()
    {
        $this->middleware('admin');
    }

    public function index()
    {
        $data_pengajar = DB::table('tbluser')
        ->where('UserType',0)
        ->get();

        $data_pengajar_s = DB::table('tbluser')
        ->where('UserType',0)
        ->groupBy('UserEmail')
        ->having('UserEmail', '!=', 1)
        ->get();

        $data_mapel = DB::table('tblmapel')->get();
        // echo $data_pengajar;
        return view('admin.admin_data_pengajar',compact('data_pengajar','data_mapel','data_pengajar_s'));
    }

    public function all_pengajar(Request $request)
    {
        if ($request->ajax()) {
            $data_pengajar = DB::table('tbluser')->where('UserType',0)->orderBy('id','DESC')->paginate(5);
            return view('admin.all_pengajar',compact('data_pengajar'));
        }
    }

    public function all_siswa()
    {
        $all_siswa = DB::table('tbluser')->whereNotIn('id_user',function($q){
            $q->select('user')->from('tblcourseuser');
        })->where('userType',1)->get();

        // $all_siswa = DB::table('tbluser')->where('UserType',1)->get();

        return view('admin.admin_data_siswa',compact('all_siswa'));
    }

    // ==============================FUNGSI PENCARIAN==================================
    // 1. Pencarian Pengajar
    public function cari_pengajar(Request $request)
    {
       if ($request->ajax()) {
            $keyword = $request->keyword;
            $data_pengajar = DB::table('tbluser')
            ->where('nama', 'like', '%'.$keyword.'%')
            ->paginate(5);
            return view('admin.all_pengajar',compact('data_pengajar','keyword'));
        } 
    }
    // 2. Pencarian Peserta Bimbel
    public function cari_siswa(Request $request)
    {
        if ($request->ajax()) {
            $keyword = $request->keyword;
            $program = $request->program;
            $data_pes_bimbel = DB::table('tblcourseuser')
            ->join('tbluser', 'tblcourseuser.user', '=', 'tbluser.id')
            ->select('tblcourseuser.id','tblcourseuser.grade', 'tbluser.UserName','tbluser.UserEmail', 'tbluser.alamat','tbluser.UserAvatar','tblcourseuser.school')
            ->where([
                ['tblcourseuser.course',$program],
                ['tbluser.UserName', 'like', '%'.$keyword.'%'],
            ])
            ->paginate(10);
            return view('admin.component.admin_all_siswa_course',compact('data_pes_bimbel','keyword'));
        }
    }
    // ==============================END FUNGSI PENCARIAN==================================
    
    public function storeTeacher(Request $request)
    {
    	$datacount = DB::table('tbluser')->count();
        $status = 1;
    	$foto = $request->file('teacher_foto');
        $password_default = '12345678';

        $random_base = Str::random(6);
        $random_sub = Str::random(6);
        $random = $random_base.$random_sub;

    	if ($datacount==0) {
    		$truncate_user = DB::table('tbluser')->truncate();
    		$id_foto = 1;
            $namafile = $id_foto.'.jpg';
            $direct='img/teacher_img/';
            $img_full_name = $direct.$namafile;
            $password_default = '12345678';
            $foto->move($direct,$namafile);

            $register = DB::table('tbluser')
            ->insert([
                'id_user'=>$random,
                'UserName' => $request->teacher_name,
                'UserEmail'=>$request->teacher_email,
                'UserPassword'=>Hash::make($password_default),
                'jenis_kelamin'=>$request->teacher_gender,
                'tempat_lahir'=>$request->teacher_tempatlahir,
                'tgl_lahir'=>$request->teacher_tgllahir,
                'alamat'=>$request->teacher_alamat,
                'pendidikan'=>$request->teacher_pendidikan,
                'universitas'=>$request->teacher_univ,
                'telp'=>$request->teacher_phone,
                'UserAvatar' => $img_full_name,
                'UserType'=>0,
                ]);

            $register_2 = DB::table('tbl_classteacher')
            ->insert([
                'id_teacher'=>$random,
                'id_program'=>$request->teacher_program,
                'id_kursus'=>$request->teacher_mapel,
            ]);
            
            if (!$register) {
            	File::delete($direct,$id_foto);
            }
            else{
            	return redirect()->route('all_teacher');
            }

    	}
    	else{
    		$email = $request->teacher_email;
            $email_check=DB::table('tbluser')->where('UserEmail',$email)->count();
            $id_now = DB::table('tbluser')->latest()->value('id');

            if ($request->teacher_name==null) {
                $teacher_data = DB::table('tbluser')->where('id_user',$request->s_teacher)->first();
                // $register_ex = DB::table('tbluser')
                // ->insert([
                //     'id_user'=>$request->s_teacher,
                //     'UserName' => $teacher_data->UserName,
                //     'UserEmail'=>$teacher_data->UserEmail,
                //     'UserPassword'=>$teacher_data->UserPassword,
                //     'jenis_kelamin'=>$teacher_data->jenis_kelamin,
                //     'tempat_lahir'=>$teacher_data->tempat_lahir,
                //     'tgl_lahir'=>$teacher_data->tgl_lahir,
                //     'alamat'=>$teacher_data->alamat,
                //     'pendidikan'=>$teacher_data->pendidikan,
                //     'universitas'=>$teacher_data->universitas,
                //     'telp'=>$teacher_data->telp,
                //     'UserAvatar' => $teacher_data->UserAvatar,
                //     'UserType'=>0,
                // ]);

                $thisTeacherMapel = DB::table('tbl_classteacher')
                ->where([
                    ['id_teacher',$request->s_teacher],
                    ['id_kursus',$request->teacher_mapel]
                ])
                ->count();

                if ($thisTeacherMapel>1) {
                    return back();
                }else{
                    $register_2 = DB::table('tbl_classteacher')
                ->insert([
                    'id_teacher'=>$request->s_teacher,
                    'id_program'=>$request->teacher_program,
                    'id_kursus'=>$request->teacher_mapel,
                ]);

                return redirect()->route('all_teacher');
                }                    
            }
            else{
                if ($email_check==1) {
                return back()->withInput()->with('error','Email telah digunakan');
                }
                else{
                    $id_now = DB::table('tbluser')->latest()->value('id');

                    $img_id = $id_now + 1;
                    $namafile = $img_id.'.jpg';
                    $direct='img/teacher_img/';
                    $img_full_name = $direct.$namafile;
                    $foto->move($direct,$namafile);

                    $register = DB::table('tbluser')
                    ->insert([
                        'id_user'=>$random,
                        'UserName' => $request->teacher_name,
                        'UserEmail'=>$request->teacher_email,
                        'UserPassword'=>Hash::make($password_default),
                        'jenis_kelamin'=>$request->teacher_gender,
                        'tempat_lahir'=>$request->teacher_tempatlahir,
                        'tgl_lahir'=>$request->teacher_tgllahir,
                        'alamat'=>$request->teacher_alamat,
                        'pendidikan'=>$request->teacher_pendidikan,
                        'universitas'=>$request->teacher_univ,
                        'telp'=>$request->teacher_phone,
                        'UserAvatar' => $img_full_name,
                        'UserType'=>0,
                        ]);

                    $register_2 = DB::table('tbl_classteacher')
                    ->insert([
                        'id_teacher'=>$random,
                        'id_program'=>$request->teacher_program,
                        'id_kursus'=>$request->teacher_mapel,
                    ]);

                    if (!$register) {
                       File::delete($direct,$id_foto);
                    }
                    else{
                        return redirect()->route('all_teacher');
                    }
                }
            }
    	}
    }

    public function editTeacher(Request $request)
    {
        if($request->ajax())
        {
            $output="";
            $teacher_id = $request->teacher_id;
            $data_teacher = DB::table('tbluser')->where('id',$teacher_id)->get();
            // return view('admin.edit_form_teacher',compact('data_teacher')); 
            return view('admin.edit_form_teacher',compact('data_teacher'));  
        }
    }

    public function updateTeacher(Request $request)
    {
        $url = url()->previous();

        $id = $request->teacher_id;
        $foto = $request->file('teacher_foto');
        $namafile = $id.'.jpg';
        $direct='img/teacher_img/';
        $img_full_name = $direct.$namafile;

        if ($foto) {
            if (File::exists($img_full_name)) {
                $del_existed_img=File::delete($img_full_name);
                if ($del_existed_img) {
                    $foto->move($direct,$namafile);
                    $update = DB::table('tbluser')
                    ->where('id',$id)
                    ->update([
                        'UserName' => $request->teacher_name,
                        'UserEmail'=>$request->teacher_email,
                        'jenis_kelamin'=>$request->teacher_gender,
                        'tempat_lahir'=>$request->teacher_tempatlahir,
                        'tgl_lahir'=>$request->teacher_tgllahir,
                        'alamat'=>$request->teacher_alamat,
                        'pendidikan'=>$request->teacher_pendidikan,
                        'universitas'=>$request->teacher_univ,
                        'tentor_program'=>$request->teacher_program,
                        'telp'=>$request->teacher_phone,
                        'UserAvatar' => $img_full_name,
                        ]);
                    if ($update) {
                        // return redirect()->route('all_teacher');
                        return redirect($url);
                    }
                    else{
                        // return redirect()->route('all_teacher');
                        return redirect($url);
                    }
                }
                else{
                    echo "gagal 2";
                }
            }
            else{
                    $foto->move($direct,$namafile);
                    $update = DB::table('tbluser')
                    ->where('id',$id)
                    ->update([
                        'UserName' => $request->teacher_name,
                        'UserEmail'=>$request->teacher_email,
                        'jenis_kelamin'=>$request->teacher_gender,
                        'tempat_lahir'=>$request->teacher_tempatlahir,
                        'tgl_lahir'=>$request->teacher_tgllahir,
                        'alamat'=>$request->teacher_alamat,
                        'pendidikan'=>$request->teacher_pendidikan,
                        'universitas'=>$request->teacher_univ,
                        'tentor_program'=>$request->teacher_program,
                        'telp'=>$request->teacher_phone,
                        'UserAvatar' => $img_full_name,
                        ]);
                    return redirect($url);
            }
                
        }
        else{
                $update = DB::table('tbluser')
                ->where('id',$id)
                ->update([
                'nama' => $request->teacher_name,
                'email'=>$request->teacher_email,
                'jenis_kelamin'=>$request->teacher_gender,
                'tempat_lahir'=>$request->teacher_tempatlahir,
                'tgl_lahir'=>$request->teacher_tgllahir,
                'alamat'=>$request->teacher_alamat,
                'pendidikan'=>$request->teacher_pendidikan,
                'universitas'=>$request->teacher_univ,
                'tentor_program'=>$request->teacher_program,
                'telp'=>$request->teacher_phone,
                ]);
            if ($update) {
                 // return redirect()->route('all_teacher');
                return redirect($url);
            }
            else{
                
                return redirect($url);
            } 
        }
    }

    public function all_admin()
    {
        $all_admin = DB::table('tbladmin')
        ->where([
            ['id','!=',Session::get('adminID')],
        ])
        ->get();
        return view('admin.admin_data_admin',compact('all_admin'));
    }

    public function non_aktif(Request $request)
    {
        $non_aktif_admin = DB::table('tbladmin')
        ->where('id',$request->admin_id)
        ->update([
            'AdminStatus'=>0,
        ]);
    }

    public function aktif(Request $request)
    {
        $non_aktif_admin = DB::table('tbladmin')
        ->where('id',$request->admin_id)
        ->update([
            'AdminStatus'=>1,
        ]);
    }

    public function check_email(Request $request)
    {
        if ($request->ajax()) {
            $output='';
            $check_email=DB::table('tbladmin')
            ->where('AdminEmail',$request->a_email)
            ->count();

            if ($check_email>=1) {
                $res = 0;
                $output.=$res;
                // $output.='<div class="alert alert-danger ">'.
                //     '<p>'."email tidak dapat dipakai".'</p>'.
                //     '</div>';
                return Response($output);
            }
            else{
                $res = 1;
                $output.=$res;
                return Response($output);
            }
        }
    }

    public function add_admin(Request $request)
    {
        $email_check = DB::table('tbladmin')
        ->where('AdminEmail',$request->admin_email)
        ->count();

        if ($email_check>=1) {
            return back()->withInput();
        }
        else{
            $email_check = DB::table('tbladmin')
            ->where('AdminEmail',$request->admin_email)
            ->count();
        }

        $default_password = "12345678";
        $add_admin = DB::table('tbladmin')
        ->insert([
            'AdminEmail'=>$request->admin_email,
            'AdminName'=>$request->admin_name,
            'AdminContactNo'=>$request->admin_phone,
            'AdminLevel'=>$request->admin_level,
            'AdminStatus'=>1,
            'AdminPassword'=>Hash::make($default_password),
            'AddedByAdminID'=>Session::get('adminID'),
        ]);

        return redirect()->route('kelola_admin');
    }

    public function admin_change_pass(Request $request)
    {
        $admin_email = Session::get('email');
        $admin_pass = $request->password;

        $password_check = DB::table('tbladmin')
        ->where('AdminEmail',$admin_email)
        ->first();

        $password_check_2 = Hash::check($admin_pass,$password_check->AdminPassword);

        if ($password_check_2) {
            return redirect()->route('new_pass_v'); 
        }
        else{
            return back()->with('fail','password salah!');
        }
    }

    public function new_password_view()
    {
        return view('admin.new_password');
    }

    public function admin_store_new_password(Request $request)
    {
        $validatedData = $request->validate([
            'password' => 'required|min:6|confirmed',
        ]);

        if ($validatedData) {
            $store_new_pass = DB::table('tbladmin')
            ->where('id',Session::get('adminID'))
            ->update([
                'AdminPassword'=>Hash::make($request->password),
            ]);
            $request->Session()->flush();
            return redirect()->route('index-admin')->with('success','Berhasil mengganti password! Silahkan Login kembali');
        }
    }

    public function change_year_regist(Request $request)
    {
        $year = $request->year;
        $registerCount = array();
        for ($i=1; $i <= 12 ; $i++) { 
            $all_user = DB::table('tbluser')
            ->whereMonth('created_at', '=', $i)
            ->whereYear('created_at','=',$year)
            ->count();
            $registerCount[] = $all_user;
        }
        $lineData = json_encode($registerCount);
        // echo $registerCount;
        return view('admin.chart.line',compact('lineData'));
    }

    // admin kelola materi
    public function show_materi(Request $request)
    {
        $thisMateri = DB::table('tblmateri')->where('id',$request->id)->first();
        return view('admin.2nd_admin.admin_show_materi',compact('thisMateri'));
    }
}
