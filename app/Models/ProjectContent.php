<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProjectContent extends Model
{
    use HasFactory;

    protected $fillable = [
        'project',
        'view',
        'widget',
        'created_at',
        'updated_at'
    ];
}
