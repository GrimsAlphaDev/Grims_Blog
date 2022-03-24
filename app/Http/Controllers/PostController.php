<?php

namespace App\Http\Controllers;

use App\Models\Post;
use App\Models\User;
use App\Models\Category;
use Illuminate\Http\Request;

class PostController extends Controller
{
    public function index() {

        $title = '';
        if (request('categonry')) {
            $category = Category::firstWhere('slug', request('category'));
            $title = ' in ' . $category->name;
        } 
        
        if (request('user')) {
            $user = User::firstWhere('username', request('user'));
            $title = ' by ' . $user->name;
        } 
      
        return view('posts',[
            "title" => "All Post" . $title,
            "active" => "posts",
            // "posts" => Post::all()
            "posts" => Post::latest()->filter(request(['search', 'category','user']))->paginate(7)->withQueryString()
        ]);
    }

    public function show(Post $post){
        return view('post', [
            "title" => "Single Post",
            "active" => "posts",
            "post" => $post
        ]);

    }
    
    // public function coba($id){
    //     return view('coba', [
    //         "title" => "coba ni bos",
    //         "rawdata" => Post::coba($id)
            
    //     ]);
    // }

  

}
