<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Session;
use App\teacher_model;
use DB;

class adminController extends Controller
{
	public function index(){
		if (Session::get('login')==true||Session::get('userlevel')=='admin') {
            return redirect('admin-dashboard');
        }else{
            return view('admin.login');
        }
	}
    public function login_admin(Request $request)
    {
    	$email = $request->admin_email;
    	$password = $request->admin_password;
        $user_hashed_pass = Hash::make($password);
        
        $login_sequence = DB::table('tbladmin')->where('AdminEmail',$email)->first();
        if ($login_sequence) {
            if ($login_sequence->AdminStatus==0) {
                $verify_password = Hash::check($password,$login_sequence->AdminPassword);
                if ($verify_password) {
                    return back()->withInput()->with('fail','Maaf akun Anda sedang disuspend oleh Superadmin!');
                }
                else{
                    return back()->withInput()->with('fail','Email atau password mungkin tidak cocok');
                }
            }
            else{
                $verify_password = Hash::check($password,$login_sequence->AdminPassword);
                if ($verify_password) {
                    $login_result = DB::table('tbladmin')->where('AdminEmail',$email)->first();
                    Session::put('adminID',$login_result->id);
                    Session::put('name',$login_result->AdminName);
                    Session::put('email',$login_result->AdminEmail);
                    Session::put('image',$login_result->AdminImage);
                    Session::put('level',$login_result->AdminLevel);
                    Session::put('userlevel',"admin");
                    Session::put('admin','1');
                    Session::put('login',TRUE);
                    return redirect()->route('admin-dashboard');
                }
                else{
                    return back()->withInput()->with('fail','Email atau password mungkin tidak cocok');
                }
            }
        }else{
           return back()->withInput()->with('fail','Email atau password mungkin tidak cocok');
        }
    }
    public function logout(Request $request){
    	$request->Session()->flush();
    	return redirect()->route('login');
    }
}