<?php

namespace Database\Seeders;

use App\Models\Post;
use App\Models\User;
use App\Models\Category;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /** 
     * Seed the application's database.
     *
     * @return void
     */

    public function run()
    {
       

        // User::create([
        //     'name' => 'Insane Boi',
        //     'email' => 'Alternate@email.id',
        //     'password' => bcrypt('asd')
        // ]);
        
        User::create([
            'name' => 'GrimsAlphaDev',
            'username' => 'Grims',
            'email' => 'alpha@dev.com',
            'password' => bcrypt('password')
        ]);

        User::factory(2)->create();

        Category::create([
            'name' => 'Web Programming',
            'slug' => 'web-programming'
        ]);
        
        Category::create([
            'name' => 'Web Design',
            'slug' => 'web-design'
        ]);

        Category::create([
            'name' => 'Personal',
            'slug' => 'personal'
        ]);

        Post::factory(20)->create();

        // Post::create([
        //     'title' => 'Judul Pertama',
        //     'slug' => 'judul-pertama',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Tenetur, voluptas consectetur, itaque quaerat reprehenderit aspernatur quas fuga obcaecati optio et',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Tenetur, voluptas consectetur, itaque quaerat reprehenderit aspernatur quas fuga obcaecati optio et, eaque accusantium dolorem cupiditate pariatur aliquam. Accusantium soluta perspiciatis ut commodi, mollitia reiciendis consequuntur accusamus doloremque! Voluptas magni esse vitae, nam inventore reprehenderit laborum quisquam, quasi blanditiis perferendis accusantium! Tempora ducimus eveniet voluptate, quas earum ipsam fugit ipsa accusamus ipsum quos omnis. Soluta corporis facilis quae. Debitis adipisci voluptatum modi provident corrupti sint assumenda et dolores! Optio ea facilis praesentium assumenda officiis, nobis quas alias! Ad doloremque sequi vero, unde nesciunt fugit accusamus dignissimos necessitatibus deleniti, quibusdam minima nam labore!',
        //     'category_id' => 1,
        //     'user_id' => 1

        // ]);

        // Post::create([
        //     'title' => 'Judul Ke Dua',
        //     'slug' => 'judul-ke-dua',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Tenetur, voluptas consectetur, itaque quaerat reprehenderit aspernatur quas fuga obcaecati optio et',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Tenetur, voluptas consectetur, itaque quaerat reprehenderit aspernatur quas fuga obcaecati optio et, eaque accusantium dolorem cupiditate pariatur aliquam. Accusantium soluta perspiciatis ut commodi, mollitia reiciendis consequuntur accusamus doloremque! Voluptas magni esse vitae, nam inventore reprehenderit laborum quisquam, quasi blanditiis perferendis accusantium! Tempora ducimus eveniet voluptate, quas earum ipsam fugit ipsa accusamus ipsum quos omnis. Soluta corporis facilis quae. Debitis adipisci voluptatum modi provident corrupti sint assumenda et dolores! Optio ea facilis praesentium assumenda officiis, nobis quas alias! Ad doloremque sequi vero, unde nesciunt fugit accusamus dignissimos necessitatibus deleniti, quibusdam minima nam labore!',
        //     'category_id' => 1,
        //     'user_id' => 1

        // ]);

        // Post::create([
        //     'title' => 'Judul Ke Tiga',
        //     'slug' => 'judul-ke-tiga',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Tenetur, voluptas consectetur, itaque quaerat reprehenderit aspernatur quas fuga obcaecati optio et',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Tenetur, voluptas consectetur, itaque quaerat reprehenderit aspernatur quas fuga obcaecati optio et, eaque accusantium dolorem cupiditate pariatur aliquam. Accusantium soluta perspiciatis ut commodi, mollitia reiciendis consequuntur accusamus doloremque! Voluptas magni esse vitae, nam inventore reprehenderit laborum quisquam, quasi blanditiis perferendis accusantium! Tempora ducimus eveniet voluptate, quas earum ipsam fugit ipsa accusamus ipsum quos omnis. Soluta corporis facilis quae. Debitis adipisci voluptatum modi provident corrupti sint assumenda et dolores! Optio ea facilis praesentium assumenda officiis, nobis quas alias! Ad doloremque sequi vero, unde nesciunt fugit accusamus dignissimos necessitatibus deleniti, quibusdam minima nam labore!',
        //     'category_id' => 2,
        //     'user_id' => 1

        // ]);
       
        // Post::create([
        //     'title' => 'Judul Ke Empat',
        //     'slug' => 'judul-ke-empat',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Tenetur, voluptas consectetur, itaque quaerat reprehenderit aspernatur quas fuga obcaecati optio et',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Tenetur, voluptas consectetur, itaque quaerat reprehenderit aspernatur quas fuga obcaecati optio et, eaque accusantium dolorem cupiditate pariatur aliquam. Accusantium soluta perspiciatis ut commodi, mollitia reiciendis consequuntur accusamus doloremque! Voluptas magni esse vitae, nam inventore reprehenderit laborum quisquam, quasi blanditiis perferendis accusantium! Tempora ducimus eveniet voluptate, quas earum ipsam fugit ipsa accusamus ipsum quos omnis. Soluta corporis facilis quae. Debitis adipisci voluptatum modi provident corrupti sint assumenda et dolores! Optio ea facilis praesentium assumenda officiis, nobis quas alias! Ad doloremque sequi vero, unde nesciunt fugit accusamus dignissimos necessitatibus deleniti, quibusdam minima nam labore!',
        //     'category_id' => 2,
        //     'user_id' => 2

        // ]);

    }
}
