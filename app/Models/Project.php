<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Project extends Model
{
    use HasFactory;

    protected $fillable = [
        'nom',
        'description',
        'miniature',
        'uuid',
        'author',
        'created_at',
        'updated_at'
    ];
}
