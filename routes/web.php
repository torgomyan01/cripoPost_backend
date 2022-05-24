<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\BannersController;
use App\Http\Controllers\newsController;
use Illuminate\Support\Facades\Route;

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



Route::get('/', [newsController::class, 'homeGet'])->name('home');

Route::get('/news/{productId}', [newsController::class, 'printProduct'])->name('news');

Route::get('/crate-news', [newsController::class, 'create'])->name('create');


Route::get('/crate-banners', [BannersController::class, 'create'])->name('crate-banners');


// ------------------ FOR ADMIN ------------------------------

Route::get('/admin-panel', [AdminController::class, 'admin'])->name('admin');
Route::get('/admin-panel/banners', [BannersController::class, 'getBanners'])->name('banners');
Route::get('/admin-panel/banner/{bannerId}', [BannersController::class, 'getBanner']);
Route::post('/admin-panel/banner-update/{id}', [BannersController::class, 'update']);

Route::get('/admin-panel/create', [AdminController::class, 'createPostPage'])->name('create-post');

Route::post('/admin-panel/post/clip', [AdminController::class, 'postClip'])->name('admin-post-clip');
Route::post('/admin-panel/post/remove', [AdminController::class, 'removePost'])->name('admin-post-remove');

Route::post('/admin-panel/post/create', [AdminController::class, 'createPost'])->name('admin-post-page');

// ------------------ FOR ADMIN ------------------------------




Route::get('/traders-blog', function () {
    return view('traders-blog');
})->name('traders-blog');

Route::get('/ads', function () {
    return view('ads');
})->name('ads');


