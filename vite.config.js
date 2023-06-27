import { defineConfig } from 'vite';
import laravel, { refreshPaths } from 'laravel-vite-plugin';


export default defineConfig({
    plugins: [
        laravel({
            input: [
                'resources/css/app.css',
                'resources/css/home.css',
                'resources/css/project.css',
                'resources/js/app.js',
                'resources/js/project.js',
                'resources/js/context.js',
                'resources/js/search.js',
                'resources/js/fileProcess.js',
                'resources/js/tarteaucitron.js',
            ],
            refresh: [
                ...refreshPaths,
                'app/Http/Livewire/**',
            ],
        }),
    ],
});