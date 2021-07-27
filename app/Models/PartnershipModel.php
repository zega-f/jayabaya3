<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PartnershipModel extends Model
{
    use HasFactory;
    protected $table = 'tblpartnership';
    protected $fillable =['instansi','telpinstansi','alamat','kepala','telpkepala','fotoKTP','program'];
}
