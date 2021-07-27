<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\admin\AdminEmailController;
use App\Http\Controllers\admin\adminController;
use App\Http\Controllers\admin\MapelController;
use App\Http\Controllers\admin\emailChecker;
use App\Http\Controllers\admin\jadwalController;
use App\Http\Controllers\admin\newmemberController;
use App\Http\Controllers\admin\sdmController;
use App\Http\Controllers\admin\pesertaController;
use App\Http\Controllers\admin\KelasController;
// use App\Http\Controllers\admin\teacherController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Route::get('test','cobaController@index');
// Route::get('test', [loginController::class, 'index']);

// admin
// notification
Route::get('unverified-user',function(){
    $notification = DB::table('tblcourseuser')
    ->where([
        ['verify','0'],
        ['bukti','!=','0']
    ])
    ->count();
    
    return Response($notification);
});
Route::get('unverified-user2',function(){
    $data_new_member = DB::table('tblcourseuser')
    ->join('tbluser', 'tbluser.id_user', '=', 'tblcourseuser.user')
    ->select('tblcourseuser.id','tbluser.UserName','tbluser.alamat','tbluser.jenis_kelamin','tblcourseuser.course','tblcourseuser.jenjang','tblcourseuser.grade','tblcourseuser.school','tblcourseuser.bukti')
    ->where([
        ['tblcourseuser.verify','0'],
        ['tblcourseuser.bukti','!=','0']
    ])
    ->orderBy('tblcourseuser.date_submit','DESC')
    ->get();
    return view('admin.component.admin_all_pendaftar_baru',compact('data_new_member'));
});
// Route::get('')
Route::get('admin',[adminController::class,'index'])->name('admin');
Route::get('admin-dashboard',function(){
    return view('admin.dashboard');
})->name('admin-dashboard');

Route::get('all_pengajar',[sdmController::class,'all_pengajar']);
Route::get('admin_all_siswa',[sdmController::class,'all_siswa']);
Route::get('cari_pengajar',[sdmController::class,'cari_pengajar']);
Route::get('cari_siswa',[sdmController::class,'cari_siswa']);
Route::post('login-admin',[adminController::class,'login_admin']);
Route::get('welcome',[sdmController::class,'index'])->name('index-admin');
Route::get('logout',[adminController::class,'logout']);

// Admin send email 
Route::post('sendPromotion',[AdminEmailController::class,'sendPromotion']);


// admin get chart
Route::get('linechart',[sdmController::class,'change_year_regist']);

// admin kelola teacher
Route::get('email_check',[emailChecker::class,'email_check']);
Route::post('store_teacher',[sdmController::class,'storeTeacher']);
Route::get('edit_teacher',[sdmController::class,'editTeacher']);
Route::post('update_teacher',[sdmController::class,'updateTeacher']);

// admin kelola admin
Route::get('kelola_admin',[sdmController::class,'all_admin'])->name('kelola_admin');
Route::get('non_aktif',[sdmController::class,'non_aktif']);
Route::get('aktif',[sdmController::class,'aktif']);
Route::get('admin_check_email',[sdmController::class,'check_email']);
Route::post('add_admin',[sdmController::class,'add_admin']);

// Admin kelola kursus
Route::get('kelolaKursus/{courseID}',[KelasController::class,'KelolaKursus']);
Route::post('add_kursus',[KelasController::class,'store_kursus']);
Route::post('updateMeet/{courseID}',[KelasController::class,'updateMeet']);

// Admin kelola Materi
Route::get('admin_materi/{classType}',function($classType){
    $materi = DB::table('tblmateri')
    ->where('course',$classType)
    ->select('id','materi_name')
    ->get();
    return view('admin.2nd_admin.all_materi',compact('materi','classType'));
});

Route::get('admin_show_materi',[sdmController::class,'show_materi']);// Admin kelola kelas
Route::get('kelas',[KelasController::class,'kelas_index'])->name('kelas');
Route::post('store_kelas',[KelasController::class,'store_kelas']);
Route::get('c_non_aktif',[KelasController::class,'c_non_aktif']);
Route::get('c_aktif',[KelasController::class,'c_aktif']);
Route::get('kelas/kelola/{id_kelas}/{jenjang}/{tingkat}',[KelasController::class,'kelola_kelas'])->name('kelola_kelas');
Route::get('teacher_list',[KelasController::class,'teacher_list']);

// Admin kelola jadwal
Route::post('store_jadwal/{kelas_id}/{jenjang}/{tingkat}',[KelasController::class,'store_jadwal']);
Route::post('storeMeet',[KelasController::class,'storeMeet']);
Route::get('validateMeetURL',[KelasController::class,'validateURL']);

// Admin add siwa into class
Route::post('siswa_into_class',[KelasController::class,'siswaIntoClass']);
Route::get('siswa_aktif',[KelasController::class,'siswa_aktif'])->name('siswa_aktif');
Route::get('siswa_inaktif',[KelasController::class,'siswa_nonaktif'])->name('siswa_nonaktif');

// Admin remove siswa from class
Route::post('remove_siswa',[KelasController::class,'removeSiswaFromClass']);

// Admin Kelola Mapel
Route::get('mapel',[MapelController::class,'mapel_index'])->name('mapel');
Route::post('store_mapel',[MapelController::class,'store_mapel']);
Route::get('del_mapel',[MapelController::class,'delete_mapel']);

// admin change password
Route::get('admin_change_password',function(){
    return view('admin.change_password');
});
Route::post('admin_verify_pass',[sdmController::class,'admin_change_pass']);
Route::get('new_pass_v',[sdmController::class,'new_password_view'])->name('new_pass_v');
Route::post('admin_store_new_pass',[sdmController::class,'admin_store_new_password']);

// all teacher
Route::get('all_teacher',[sdmController::class,'index'])->name('all_teacher');
//user peserta baru
Route::get('pendaftar-baru',[newmemberController::class,'index'])->name('pendaftar_baru');
// verifikasi peserta baru
Route::get('verifikasi_new',[newmemberController::class,'edit_verifikasi_user']);
Route::post('verified',[newmemberController::class,'change_verify_val']);
// admin kelola peserta bimbel
Route::get('peserta-bimbel/{program}',[pesertaController::class,'index']);
Route::get('peserta-english/{program}',[pesertaController::class,'all_english']);
Route::get('peserta-math/{program}',[pesertaController::class,'all_math']);
// jadwal pelajaran
Route::get('jadwal_pelajaran',[jadwalController::class,'index']);
// user landingpage
Route::get('home', function () {
    return view('user.user_landingpage');
});

Route::get('/', function () {
    return redirect()->route('admin');
});

