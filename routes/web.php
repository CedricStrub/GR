<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ControllerProject;
use App\Http\Controllers\InterfaceController;
use App\Http\Controllers\FileUploadController;

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

// Route::get('/project', function () {
//     return view('project');
// });

Route::get('/dropzone', function () {
    return view('dropzone');
});

Route::middleware(['auth:sanctum',config('jetstream.auth_session'),'verified'])->group(function () {
    Route::get('/dashboard', function () {
        return view('dashboard');
    })->name('dashboard');

    Route::get('/project',[ControllerProject::class, 'newProject']);
    Route::post('/makeView',[ControllerProject::class, 'makeView']);
    Route::post('/makeWidget',[ControllerProject::class, 'makeWidget']);

    Route::post('/projectSave', [ControllerProject::class, 'save']);
    Route::post('/projectLoad', [ControllerProject::class, 'load']);

    Route::get('/test', [InterfaceController::class, 'setting']);

    Route::post('/upload',[FileUploadController::class, 'fileStore'])->name('upload');
    Route::post('/image/delete',[FileUploadController::class, 'fileDestroy']);

});
