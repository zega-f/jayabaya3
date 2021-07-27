<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Mail;
use App\Mail\sendPromotion;
use DB;

class AdminEmailController extends Controller
{
    public function sendPromotion(Request $request)
    {
    	$thisUser = DB::table('tbluser')->where('id_user',$request->id_user)->value('UserEmail');
        $email_counter = DB::table('tbluser')->where('id_user',$request->id_user)->value('email_sent_count'); 
    	$pesan = 'Salam%20Bahagia%21%20%F0%9F%99%82%0A%0AKami%20mendapati%20Anda%20kesulitan%20dalam%20registrasi%20kursus%20di%20jayabayabimbel.co.id.%20Admin%20kami%20siap%20membantu%20Anda%20dalam%20proses%20registrasi.%20%0AAnda%20dapat%20mengirimkan%20WA%20di%20nomor%200857%205539%203713%20atau%20klik%20link%20https%3A%2F%2Fwa.link%2Fgnbq45.%20Dengan%20senang%20hati%20kami%20akan%20membantu%20Anda.%20';
    	$body = array('recipient' => $thisUser, 'pesan' => urldecode($pesan));
    	Mail::to($body['recipient'])->send(new sendPromotion($body));

    	if (Mail::failures()) {
	        return Response('0');
	    }else{
            $email_counter = DB::table('tbluser')
            ->where('id_user',$request->id_user)
            ->update([
                'email_sent_count'=>$email_counter+1,
            ]);
	    	return Response('1');
	    }

    }
}
