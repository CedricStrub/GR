<?php
 namespace App\Projects;
 use App\Models\Project;
 use Illuminate\Database\Eloquent\Collection;
 class EloquentSearchRepository implements SearchRepository
 {
    public function search(string $term): Collection
    {
        return Project::query()
            ->where(fn ($query) => (
                $query->where('nom', 'LIKE', "%{$term}%")
                    ->orWhere('description', 'LIKE', "%{$term}%")
            ))
            ->get();
    }
 }