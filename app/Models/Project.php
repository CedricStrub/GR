<?php

namespace App\Models;

use App\Search\Searchable;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Project extends Model
{
    use HasFactory;
    use Searchable;

    protected $casts = [
        'tags' => 'json',
    ];

    protected $fillable = [
        'nom',
        'description',
        'miniature',
        'uuid',
        'author',
        'created_at',
        'updated_at'
    ];

    public function toElasticsearchDocumentArray(): array
    {
        return [
            'nom' => $this->nom,
            'description' => $this->description
            // include any other fields you want to be searchable
        ];
    }
}
