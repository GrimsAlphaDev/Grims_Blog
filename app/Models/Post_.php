<?php

namespace App\Models;


class Post 
{
    private static $blog_posts = [
        [
            "title" => "Judul Post Pertama",
            "slug" => "judul-post-pertama",
            "author" => "M Kal",
            "body" => "Lorem ipsum dolor, sit amet consectetur adipisicing elit. Unde mollitia adipisci aperiam in obcaecati a corrupti ea doloremque qui dolorem vero dicta sit nobis laborum rerum exercitationem libero, esse quisquam rem, eum deleniti quibusdam. Molestias commodi debitis accusantium tempore sapiente sequi nam dignissimos nobis, laudantium atque facilis aliquid delectus itaque placeat molestiae ut quisquam excepturi maiores ipsam consequatur, tempora aspernatur et aliquam explicabo? Fugit distinctio adipisci ad, placeat aspernatur modi quas dicta reprehenderit quia illum tempora accusantium nobis repudiandae minus?"
        ],
        [
            "title" => "Judul Post Kedua",
            "slug" => "judul-post-kedua",
            "author" => "Kepin",
            "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium ad doloribus vero et minus magnam perspiciatis hic nulla quia atque in eum sequi nesciunt deleniti, possimus, impedit harum enim explicabo aspernatur natus aperiam porro nam dicta necessitatibus. Quas cumque quo quae voluptatum consectetur est quod vero aut corporis necessitatibus enim at quia aspernatur ipsum cum ab, nesciunt nostrum veniam nulla tenetur mollitia autem eligendi eius minus. Pariatur natus voluptatum dicta explicabo deleniti veritatis laudantium? Velit, ipsum. Neque maiores atque quae repellendus veniam expedita, nihil ducimus hic itaque deserunt. Repellat libero quibusdam perferendis ducimus ipsa delectus nobis, nesciunt nisi in voluptatibus."
        ]
    ];


    public static function all(){
        return collect(self::$blog_posts);
    }

    public static function find($slug){
        $posts = static::all();
    //     $post = [];

    // foreach ($posts as $p ) {
    //     if ($p["slug"] == $slug) {
    //         $post = $p;
    //             }
    //     }
        
        return $posts->firstWhere( 'slug', $slug);
    }

    public static function coba($id){
        $datafix = collect([
            [
                "id" => "1",
                "nama" => "ujang",
                "umur" => "17" 
            ],
            [
                "id" => "2",
                "nama" => "maman",
                "umur" => "18" 
            ],
            [
                "id" => "3",
                "nama" => "ardi",
                "umur" => "27" 
            ]
        ]);

        return $datafix->firstWhere('id', $id);
    }


 

}
