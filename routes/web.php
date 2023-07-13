<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ControllerProject;
use App\Http\Controllers\InterfaceController;
use App\Http\Controllers\FileUploadController;
use App\Projects\SearchRepository;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/home', function () {
    return view('welcome');
});

Route::get('search', function (SearchRepository $searchRepository) {
    return view('welcome'
    // Décommenter pour utiliser la recherche Eloquent plutôt qu'elasticsearch
    // , [
    //     'articles' => request()->has('q')
    //         ? $searchRepository->search(request('q'))
    //         : App\Models\Project::all(),
    // ]
);
})->name('search');

// Route::get('/project', function () {
//     return view('project');
// });

Route::get('/dropzone', function () {
    return view('dropzone');
});

Route::get('/loadLandscapeHeader', function(){
    return view('landscapeHeader');
});

Route::get('/loadPortraitHeader', function(){
    return view('portraitHeader');
});

Route::get('/loadLandscapeFooter', function(){
    return view('landscapeFooter');
});

Route::get('/loadPortraitFooter', function(){
    return view('portraitFooter');
});


Route::middleware(['auth:sanctum',config('jetstream.auth_session'),'verified'])->group(function () {
    Route::get('/dashboard', function () {
        return view('dashboard');
    })->name('dashboard');

    Route::get('/newProject', [ControllerProject::class, 'checkProject']);
    Route::get('/createProject', [ControllerProject::class, 'createNewProject']);
    Route::get('/project/{id}', [ControllerProject::class, 'loadProject'])->name('project');

    Route::post('/makeView',[ControllerProject::class, 'makeView']);
    Route::post('/makeWidget',[ControllerProject::class, 'makeWidget']);
    Route::delete('/removeWidget',[ControllerProject::class,'removeWidget']);
    Route::delete('/removeView',[ControllerProject::class,'removeView']);


    Route::post('/projectSave', [ControllerProject::class, 'save']);
    Route::post('/projectLoad', [ControllerProject::class, 'load']);

    Route::get('/test', [InterfaceController::class, 'setting']);

    Route::post('/upload',[FileUploadController::class, 'fileStore']);
    Route::post('/image/delete',[FileUploadController::class, 'fileDestroy']);
    Route::post('/file/update',[FileUploadController::class, 'fileUpdate']);
});
