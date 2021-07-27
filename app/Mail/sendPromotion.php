<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class sendPromotion extends Mailable
{
    use Queueable, SerializesModels;
    public $body;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct($body)
    {
        $this->body = $body;
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        $pesan = $this->body['pesan'];
        return $this->from('cobajyby@gmail.com', 'Jayabaya Bimbel')
        ->subject('Jayabaya Bimbel Promotion')
        ->view('user.email.sendPromotion')
        ->with([
            'konten'=>$pesan,
        ]);
    }
}
