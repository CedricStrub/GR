<?php

namespace App\Projects;

use App\Models\Project;
use Elastic\Elasticsearch\Client;
use Illuminate\Support\Arr;
use Illuminate\Database\Eloquent\Collection;

class ElasticsearchRepository implements SearchRepository
{
    /** @var \Elasticsearch\Client */
    private $elasticsearch;

    public function __construct(Client $elasticsearch)
    {
        $this->elasticsearch = $elasticsearch;
    }

    public function search(string $query = ''): Collection
    {
        $items = $this->searchOnElasticsearch($query);

        return $this->buildCollection($items);
    }

    private function searchOnElasticsearch(string $query = ''): array
    {
        $model = new Project;

        $response = $this->elasticsearch->search([
            'index' => 'projects',
            'body' => [
                'query' => [
                    'multi_match' => [
                        'fields' => ['nom', 'description'],
                        'query' => $query,
                    ],
                ],
            ],
        ]);

        // Get the response body as a string
        $responseBody = $response->getBody();

        // Decode the response JSON string into an associative array
        $responseData = json_decode($responseBody, true);

        // Access the desired data from the response array
        $items = $responseData['hits']['hits'];

        // dd($items);
        // Return the items
        return $responseData;

    }

    private function buildCollection(array $items): Collection
    {
        $ids = Arr::pluck($items['hits']['hits'], '_id');

        return Project::findMany($ids)
            ->sortBy(function ($article) use ($ids) {
                return array_search($article->getKey(), $ids);
            });
    }
}