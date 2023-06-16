<?php

namespace App\Search;

use Elastic\Elasticsearch\Client;

trait Searchable
{
    public static function bootSearchable()
    {
        if (config('services.search.enabled')) {
            static::observe(ElasticsearchObserver::class);
        }
    }

    public function elasticsearchIndex(Client $elasticsearchClient)
    {
        $parameters = [
            'index' => 'projects',
            'id'    => $this->getKey(),
            'body'  => ['doc' => $this->toElasticsearchDocumentArray()],
        ];  
        
        // Debugging parameters
        $elasticsearchClient->index($parameters);
    }

    public function elasticsearchDelete(Client $elasticsearchClient)
    {
        $elasticsearchClient->delete([
            'index' => 'projects',
            'id' => (string)$this->getKey(),
        ]);
    }

    abstract public function toElasticsearchDocumentArray(): array;
}
