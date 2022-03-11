<?php

namespace App\Http\Controllers;

use App\Models\Post;
use App\Models\Category;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Cviebrock\EloquentSluggable\Services\SlugService;
use Illuminate\Support\Facades\Storage;

class DashboardPostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
       
        return view('dashboard.posts.index', [
            'title' => 'Dashboard Posts',
            'posts' => Post::where('user_id', auth()->user()->id)->get()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('dashboard.posts.create', [
            'title' => 'Create Post',
            'categories' => Category::all()
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        // validasi data yang dikirim user
        $validatedData = $request->validate([
            'title' => 'required|max:255',
            'slug' => 'required|unique:posts',
            'category_id' => 'required',
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'body' => 'required'
        ]);

        if ($request->file('image')) {
            $validatedData['image'] = $request->file('image')->store('post-images');
        }

        // get user id
        $validatedData['user_id'] = auth()->user()->id;

        // buat excerpt dari body
        $validatedData['excerpt'] = Str::limit(strip_tags($request->body), 200) ;
        
        // simpan ke database
        Post::create($validatedData);

        // redirect ke halaman index
        return redirect('/dashboard/posts')->with('success', 'Post created successfully');

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function show(Post $post)
    {
        return view('dashboard.posts.show', [
            'title' => 'Show Post',
            'post' => $post
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function edit(Post $post)
    {
        return view('dashboard.posts.edit', [
            'post' => $post,
            'title' => 'Edit Post',
            'categories' => Category::all()
            
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Post $post)
    {
        // membuat rules untuk validasi
        $rules = ([
            'title' => 'required|max:255',
            'category_id' => 'required',
            'body' => 'required'
        ]);

        // perbarui rules bila user mengupload gambar
        if ($request->file('image')) {
            $rules['image'] = 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048';
        }

        // jika slug tidak sama dengan slug sebelumnya
        if ($request->slug != $post->slug) {
            $rules['slug'] = 'required|unique:posts';
        }

        // validasi data
        $validatedData = $request->validate($rules);

        // cek apakah user mengupluad gambar baru ?
        if ($request->file('image')) {

            if ($request->oldImage) {
                Storage::delete($request->oldImage);
            }

            $validatedData['image'] = $request->file('image')->store('post-images');
        } 

        // get user id
        $validatedData['user_id'] = auth()->user()->id;

        // buat excerpt dari body
        $validatedData['excerpt'] = Str::limit(strip_tags($request->body), 200) ;

        // update data
        Post::where('id', $post->id)
                ->update($validatedData);

        // redirect ke halaman index
        return redirect('/dashboard/posts')->with('success', 'Post updated successfully');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function destroy(Post $post)
    {

        // hapus gambar
        if ($post->image) {
                Storage::delete($post->image);
        }

         // Hapus Data Yang Dipilih
         Post::destroy($post->id);

         // redirect ke halaman index
         return redirect('/dashboard/posts')->with('success', 'Post Deleted successfully');
 
    }

    public function checkSlug(Request $request){
        $slug = SlugService::createSlug(Post::class, 'slug', $request->title);
        return response()->json(['slug' => $slug]);
    }

}
