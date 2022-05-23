<?php

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


Route::get('/traders-blog', function () {
    return view('traders-blog');
})->name('traders-blog');

Route::get('/ads', function () {
    return view('ads');
})->name('ads');


