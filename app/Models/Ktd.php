<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Ktd extends Model
{
    use HasFactory;

    protected $table = 'ktd';

    protected $primaryKey = 'id_ktd';

    public $timestamps = false;

    protected $fillable = ['nip', 'nidn'];

    public function dosen_ktd()
    {
        return $this->belongsTo(Dosen::class);
    }
}
