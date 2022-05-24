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

    /**
     * Handle the incoming request.
     *
     * @param Request $request
     * @return string
     */
    public function getBanners(Request $request): string
    {

        $banners = DB::table('banners_tb')->get();
        return view('admin.banners', ['banners' => $banners]);
    }


    /**
     * Get banner for ajax
     *
     * @param Request $request
     * @return string
     */
    public function getBanner(Request $request): string
    {
        $banners = DB::table('banners_tb')->where('id', $request->bannerId)->get();
        return $banners;
    }


    /**
     * Get banner for ajax
     *
     * @param Request $request
     * @return string
     */
    public function update(Request $request): string
    {
        $id = $request->id;
        $file = $request->file;
        $url = $request->url;

        Storage::put('public/banners', $file);

        $banner = DB::table('banners_tb')
            ->where('id', $id)
            ->update(
                [
                    'image_path' => asset('storage/banners/'.$file->hashName()),
                    'image_url' => $url
                ]
            );

        if($banner){
            return 1;
        } else {
            return 0;
        }
    }
}
