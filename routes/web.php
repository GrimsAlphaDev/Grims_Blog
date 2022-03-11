<?php

use App\Http\Controllers\AdminCategoryController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\DashboardPostController;
use App\Models\Category;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\RegisterController;

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
    return view('home', [
        "title" => "Home",
        "active" => "home"
    ] );
    
});

Route::get('/mengcoba/{id}', [PostController::class, 'coba'] );

Route::get('/about', function () {
    return view('about', [
        "title" => "About",
        "active" => "about",
        "name" => "KAL",
        "email" => "MKal@gmail.com",
        "image" => "patoriku.jpg"
    ]);
});


Route::get('/posts', [PostController::class, 'index']);


//Halaman Single
Route::get('posts/{post:slug}', [PostController::class, 'show']);

// untuk menuju halaman kategori post dengan mengirimkan slug
Route::get('categories/{category:slug}', function (Category $category) {
    return view('posts',[
        'title' => "Post by Category : $category->name",
        'active' => 'categories',
        'posts' => $category->posts->load('category','user'),
    ]);
});

// mengarah ke kategori
Route::get('categories', function () {
    return view('categories',[
        'title' => 'Post Kategori',
        'active' => 'categories',
        'categories' => Category::all()
    ]);
});

Route::get('/login', [LoginController::class, 'index'])->name('login')->middleware('guest');
Route::post('/login', [LoginController::class, 'authenticate']);

Route::post('/logout', [LoginController::class, 'logout']);

Route::get('/register', [RegisterController::class, 'index'])->middleware('guest');
Route::post('/register', [RegisterController::class, 'store']);

Route::get('/dashboard', function() {
    return view('dashboard.index' ,['title' => 'Dashboard']);
})->middleware('auth');

Route::get('/dashboard/posts/checkSlug', [DashboardPostController::class, 'checkSlug'])->middleware('auth');
Route::resource('/dashboard/posts', DashboardPostController::class)->middleware('auth');

Route::get('/dashboard/categories/checkSlug', [AdminCategoryController::class, 'checkSlug'])->middleware('admin');
Route::resource('/dashboard/categories', AdminCategoryController::class)->except('show')->middleware('admin');

// Route::get('/authors/{author:username}', function (User $author) {
//     return view('posts',[
//         'title' => "Post by Author : $author->name",
//         'posts' => $author->posts->load('category','user'),
//     ]);
// });
 

