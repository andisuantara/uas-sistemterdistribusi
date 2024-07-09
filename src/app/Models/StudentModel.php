<?php

namespace App\Models;

use Laravel\Sanctum\HasApiTokens;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class StudentModel extends Model
{
    use HasApiTokens, HasFactory;

    protected $table = 'students';
    protected $primaryKey= 'id';
    protected $fillable = [
        'id',
        'name',
        'age',
        'hobby',
        'address',
        'phone_num',
        'faculty',
        'created_at',
        'updated_at'
    ];
}