<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class SendOTP extends Mailable
{
    use Queueable, SerializesModels;
    public $recipient;
    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($recipient)
    {
        $this->recipient = $recipient;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        $pesan = $this->recipient['otp'];
        return $this->from('cobajyby@gmail.com', 'Jayabaya Bimbel')
        ->subject('Reset Password')
        ->view('user.reset_password')
        ->with([
            'konten'=>$pesan,
        ]);
    }
}
