<?php

use App\Http\Controllers\HomeController;
use App\Http\Controllers\JobApplicationController;
use App\Http\Controllers\JobController;
use Illuminate\Support\Facades\Route;

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
    return view('auth.login');
});

Auth::routes();

Route::group(['middleware' => 'auth'], function () {
    Route::get('jobs', [JobController::class, 'index'])->name('jobs.index');
    Route::get('jobs/{job}', [JobController::class, 'show'])->name('jobs.show');
    Route::post('jobs/{job}/apply', [JobApplicationController::class, 'apply'])->name('jobs.apply');
    Route::get('user/dashboard', [HomeController::class, 'userDashboard'])->name('user.dashboard');
});


Route::group(['middleware' => ['auth', 'admin'], 'prefix' => 'admin'], function () {
    Route::get('dashboard', [HomeController::class, 'index'])->name('admin.dashboard');
    Route::resource('jobs', JobController::class)->except(['index', 'show']);
    Route::get('job-applications', [JobApplicationController::class,'index'])->name('applications.index');
    Route::delete('applications/{id}', [JobApplicationController::class, 'destroy'])->name('applications.destroy');
    Route::get('applications/{id}/download', [JobApplicationController::class, 'downloadResume'])->name('applications.download');
});
