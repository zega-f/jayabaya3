<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class QuizAnswerModel extends Model
{
    use HasFactory;
    protected $table = 'tblcobaquizsiswa';
    protected $fillable =['id_siswa','id_materi','id_soal','id_option'];
}
