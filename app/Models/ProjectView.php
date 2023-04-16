<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProjectView extends Model
{
    use HasFactory;

    protected $fillable = [
        'titre',
        'haut',
        'hauteur',
        'css_id',
        'created_at',
        'updated_at'
    ];
}
