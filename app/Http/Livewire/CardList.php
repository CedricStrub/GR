<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Project;
use App\Models\File;
use App\Models\User;

class CardList extends Component
{
    public $perPage = 12;

    public function render()
    {
        $projects = Project::paginate($this->perPage);
        $data = [];

        foreach($projects as $project){
            $miniature = File::find($project->miniature);
            $author = User::find($project->author);
            $d = [
                'id' => $project->id,
                'nom' => $project->nom,
                'description' => $project->description,
                'miniature' => $miniature->filename,
                'vues' => $project->vues,
                'auteur' => $author->name
            ];
            $data []= $d;
        }
        
        return view('livewire.card-list', [
            'datas' => $data,
            'projects' => $projects
        ]);
    }

    public function loadMore()
    {
        $this->perPage += 6;
    }
}
