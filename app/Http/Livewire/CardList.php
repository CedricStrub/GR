<?php

namespace App\Http\Livewire;

use Livewire\Component;
use Elastic\Elasticsearch\ClientBuilder;
use App\Models\Project;
use App\Models\File;
use App\Models\User;
use Illuminate\Pagination\LengthAwarePaginator;


class CardList extends Component
{
    public $perPage = 12;
    public $searchTerm = '';

    public function mount()
    {
        $this->searchTerm = request('q', '');  
    }

    public function render()
    {
        if(empty($this->searchTerm)) {
            $projects = Project::paginate($this->perPage);
    
            $data = [];
            foreach($projects as $project) {
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
        } else {
            $hosts = explode(',', env('ELASTICSEARCH_HOSTS', 'elasticsearch:9200'));
            $client = ClientBuilder::create()->setHosts($hosts)->build();

            $currentPage = LengthAwarePaginator::resolveCurrentPage();
            $perPage = $this->perPage;

            $response = $client->search([
                'index' => 'projects',
                'body' => [
                    'from' => ($currentPage - 1) * $perPage,
                    'size' => $perPage,
                    'query' => [
                        'multi_match' => [
                            'query' => $this->searchTerm,
                            'fields' => ['nom', 'description']
                        ]
                    ]
                ]
            ]);

            $total = $response['hits']['total']['value'];

            $projects = collect($response['hits']['hits'])->map(function ($hit) {
                return $hit['_source'];
            });
            
            $data = [];

            foreach($projects as $project){
                $miniature = File::find($project['miniature']);
                $author = User::find($project['author']);
                $d = [
                    'id' => $project['id'],
                    'nom' => $project['nom'] ?? 'nom',
                    'description' => $project['description'] ?? 'description',
                    'miniature' => $miniature->filename ?? '',
                    'vues' => $project['vues'] ?? 0,
                    'auteur' => $author->name ?? 'ced'
                ];
                $data []= $d;
            }

            $paginator = new LengthAwarePaginator($data, $total, $perPage, $currentPage, [
                'path' => LengthAwarePaginator::resolveCurrentPath(),
            ]);
            
            return view('livewire.card-list', [
                'datas' => $data,
                'projects' => $paginator
            ]);
        }
    }

    public function loadMore()
    {
        $this->perPage += 6;
    }
}