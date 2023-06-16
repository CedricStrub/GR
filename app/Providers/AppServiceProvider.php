<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use App\Projects\SearchRepository;
use App\Projects\EloquentSearchRepository;
use App\Projects\ElasticsearchRepository;
use Elastic\Elasticsearch\Client;
use Elastic\Elasticsearch\ClientBuilder;
use Symfony\Component\HttpClient\Psr18Client;
use Elastic\Transport\NodePool\NodePoolInterface;
use Elastic\Transport\NodePool\StaticNodePool;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        $this->app->bind(SearchRepository::class, function ($app) {
            // This is useful in case we want to turn-off our
            // search cluster or when deploying the search
            // to a live, running application at first.
            if (! config('services.search.enabled')) {
                return new EloquentSearchRepository();
            }

            return new ElasticsearchRepository(
                $app->make(Client::class)
            );
        });

        $this->bindSearchClient();

        // Bind an instance of Symfony\Component\HttpClient\Psr18Client to the Psr\Http\Client\ClientInterface
        $this->app->singleton(\Psr\Http\Client\ClientInterface::class, function ($app) {
            return new Psr18Client();
        });
    }

    private function bindSearchClient()
    {
        $this->app->bind(Client::class, function ($app) {
            return ClientBuilder::create()
                ->setHosts($app['config']->get('services.search.hosts'))
                ->build();
        });
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {

    }
}
