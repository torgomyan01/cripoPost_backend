<?php

namespace App\Http\Controllers;

use Illuminate\Contracts\Foundation\Application;
use Illuminate\Contracts\View\Factory;
use Illuminate\Contracts\View\View;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class AdminController extends Controller
{
    /**
     * Handle the incoming request.
     *
     * @param Request $request
     * @return Application|Factory|View
     */
    public function admin(Request $request)
    {
        $page = $request->input('page');

        $query = DB::table('news_tb')
            ->where('id', '>', $page || 1)
            ->orderBy('id', 'DESC')
            ->paginate(10);

        return view('admin.posts', [
            'posts' => $query
        ]);
    }

    /**
     * Handle the incoming request.
     *
     * @param Request $request
     * @return array
     */
    public function postClip(Request $request)
    {
        $workType = $request->work;
        $id = $request->id;


        $affected = DB::table('news_tb')
            ->where('id', $id)
            ->update(
                ['position' => $workType === 'remove' ? 0 : 1]
            );

        if($affected){
            return [
                'code' => 200,
                'data' => 1,
            ];
        } else {
            return [
                'code' => 415,
                'data' => 0,
            ];
        }

    }

    /**
     * Remove post
     *
     * @param Request $request
     * @return array
     */
    public function removePost(Request $request)
    {
        $id = $request->id;

        $affected = DB::table('news_tb')
            ->where('id', $id)
            ->delete();


        if($affected){
            return [
                'code' => 200,
                'data' => 1,
            ];
        } else {
            return [
                'code' => 415,
                'data' => 0,
            ];
        }

    }

    /**
     * Remove post
     *
     * @param Request $request
     * @return Application|Factory|View
     */
    public function createPostPage(Request $request)
    {
        return view('admin.create-post');

    }
}
