<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProjectWidget extends Model
{
    use HasFactory;

    protected $fillable = [
        'titre',
        'haut',
        'gauche',
        'hauteur',
        'largeur',
        'css_id',
        'project',
        'content',
        'created_at',
        'updated_at'
    ];
}
