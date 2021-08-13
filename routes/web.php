<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AdsController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\NewsController;
use App\Http\Controllers\ViewController;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\CommentController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\PermissionController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', [HomeController::class, 'index'])->name('home');

Route::prefix('/')
    ->middleware('auth')
    ->group(function () {
        Route::resource('roles', RoleController::class);
        Route::resource('permissions', PermissionController::class);

        Route::resource('users', UserController::class);
        Route::get('all-news', [NewsController::class, 'index'])->name(
            'all-news.index'
        );
        Route::post('all-news', [NewsController::class, 'store'])->name(
            'all-news.store'
        );
        Route::get('all-news/create', [NewsController::class, 'create'])->name(
            'all-news.create'
        );
        Route::get('all-news/{news}', [NewsController::class, 'show'])->name(
            'all-news.show'
        );
        Route::get('all-news/{news}/edit', [
            NewsController::class,
            'edit',
        ])->name('all-news.edit');
        Route::put('all-news/{news}', [NewsController::class, 'update'])->name(
            'all-news.update'
        );
        Route::delete('all-news/{news}', [
            NewsController::class,
            'destroy',
        ])->name('all-news.destroy');

        Route::resource('categories', CategoryController::class);
        Route::get('all-ads', [AdsController::class, 'index'])->name(
            'all-ads.index'
        );
        Route::post('all-ads', [AdsController::class, 'store'])->name(
            'all-ads.store'
        );
        Route::get('all-ads/create', [AdsController::class, 'create'])->name(
            'all-ads.create'
        );
        Route::get('all-ads/{ads}', [AdsController::class, 'show'])->name(
            'all-ads.show'
        );
        Route::get('all-ads/{ads}/edit', [AdsController::class, 'edit'])->name(
            'all-ads.edit'
        );
        Route::put('all-ads/{ads}', [AdsController::class, 'update'])->name(
            'all-ads.update'
        );
        Route::delete('all-ads/{ads}', [AdsController::class, 'destroy'])->name(
            'all-ads.destroy'
        );

        Route::resource('comments', CommentController::class);
        Route::resource('views', ViewController::class);
    });
