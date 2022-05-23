<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;

class BannersController extends Controller
{
    /**
     * Handle the incoming request.
     *
     * @param Request $request
     * @return string
     */
    public function create(Request $request)
    {

        $query = DB::table('banners_tb')->insert([
            [
                'image_url' => 'https://fb.com',
                'image_path' => '/images/test',
                'place' => 'right',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ]
        ]);
        if($query){
            return 'ok';
        } else {
            return 'error';
        }
    }
}
