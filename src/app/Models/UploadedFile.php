<?php

namespace App\Models;

use Laravel\Sanctum\HasApiTokens;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class UploadedFile extends Model
{
    use HasApiTokens, HasFactory;

    protected $table = 'uploads';
    protected $primaryKey= 'id';
    protected $fillable = [
        'id',
        'file_path',
        'original_name',
        'created_at',
        'updated_at'
    ];
}