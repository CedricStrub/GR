<?php

namespace App\Projects;

use Illuminate\Database\Eloquent\Collection;

interface SearchRepository
{
    public function search(string $query): Collection;
}