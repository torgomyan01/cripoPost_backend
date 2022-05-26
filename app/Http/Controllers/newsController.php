<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class newsController extends Controller
{
    /**
     * Handle the incoming request.
     *
     * @param Request $request
     * @return string
     */
    public function create(Request $request): string
    {
        $query = DB::table('news_tb')->insert([
            [
                'title' => 'Test',
                'image_url' => 'https://cnews24.ru/uploads/95e/95ef6086b4cb9981e164097c1fa1475a05ba68c0.jpg',
                'text' => 'Test Text',
                'position' => false,
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
    public function homeGet(Request $request): string
    {
        $page = $request->input('page');
        $query = DB::table('news_tb')
            ->where('id', '>', $page || 0)
            ->where('place', 'home')
            ->orderByRaw('position DESC, id DESC')
            ->paginate(15);
        return view('home', [
            'posts' => $query
        ]);
    }


    /**
     * traders-block page get Posts
     *
     * @param Request $request
     * @return string
     */
    public function tradersPosts(Request $request): string
    {
        $page = $request->input('page');
        $query = DB::table('news_tb')
            ->where('id', '>', $page || 0)
            ->where('place', 'traders-blog')
            ->orderByRaw('position DESC, id DESC')
            ->paginate(15);
        return view('traders-blog', [
            'posts' => $query
        ]);
    }

    /**
     * Handle the incoming request.
     *
     * @param Request $request
     * @return string
     */
    public function printProduct(Request $request): string
    {
        $id = $request->productId;
        $query = DB::table('news_tb')->where('id', $id)->get();

        return view('product', [
            'data' => $query
        ]);
    }
}
