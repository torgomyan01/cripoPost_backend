<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use Illuminate\Contracts\Foundation\Application;
use Illuminate\Contracts\View\Factory;
use Illuminate\Contracts\View\View;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use MongoDB\Driver\Session;

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

        $pass = session('pass');

        $query = DB::table('news_tb')
            ->where('id', '>', $page || 0)
            ->orderByRaw('position DESC, id DESC')
            ->paginate(10);

        if($pass === env('ADMIN_PASSWORD')){
            return view('admin.posts', [
                'posts' => $query
            ]);
        } else {
            return view('admin.login');
        }

    }


    /**
     * Login Admin
     *
     * @param Request $request
     * @return Application|Factory|View|RedirectResponse
     */
    public function loginAdmin(Request $request)
    {
       $pass = $request->password;

        if($pass === env('ADMIN_PASSWORD')){
            session()->put('pass', $pass);
            return redirect()->route('admin');
        } else {
            return view('admin.login');
        }
    }


    /**
     * Login Admin
     *
     * @param Request $request
     * @return Application|Factory|View
     */
    public function logoutAdmin(Request $request)
    {

        Session()->forget('pass');
        return view('admin.login');
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

    /**
     * Edit post page
     *
     * @param Request $request
     * @return Application|Factory|View
     */
    public function editPostPage(Request $request)
    {
        $id = $request->id;
        $post = DB::table('news_tb')->find($id);

        return view('admin.edit-post', ['post' => $post]);

    }


    /**
     * Ajax post edit
     *
     * @param Request $request
     * @return int[]
     */
    public function AjaxPostEdit(Request $request): array
    {
        $file = $request->file;

        if($file !== 'undefined'){
            Storage::put('public/images', $file);
        }

        $post = DB::table('news_tb')->find($request->id);

        $query = DB::table('news_tb')
            ->where('id', $request->id)
            ->update([
                'title' => $request->title,
                'image_url' => $file !== 'undefined' ? asset('storage/images/'.$file->hashName()) : $post->image_url,
                'text' => htmlentities($request->html),
                'position' => $request->position,
                'place' => $request->place,
            ]);
        if($query){
            return [
                'code' => 200,
                'data' => 1
            ];
        } else {
            return [
                'code' => 415,
                'data' => 0
            ];
        }

    }



    /**
     * Remove post
     *
     * @param Request $request
     * @return int[]
     */
    public function createPost(Request $request)
    {


        $file = $request->file;


        Storage::put('public/images', $file);


        $query = DB::table('news_tb')->insert([
            [
                'title' => $request->title,
                'image_url' => asset('storage/images/'.$file->hashName()),
                'text' => htmlentities($request->html),
                'position' => $request->position,
                'place' => $request->place,
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ]
        ]);
        if($query){
            return [
                'code' => 200,
                'data' => 1
            ];
        } else {
            return [
                'code' => 415,
                'data' => 0
            ];
        }

    }


    /**
     * Remove post
     *
     * @param Request $request
     * @return int[]
     */
    public function createPostApi(Request $request)
    {

        $id = $request->id;

        $checkPost = DB::table('news_id')->where('news_id', $id)->first();

        if(!$checkPost){
            $query = DB::table('news_tb')->insert([
                [
                    'title' => $request->title,
                    'image_url' => $request->imageUrl,
                    'text' => htmlentities($request->html),
                    'position' => $request->position,
                    'place' => 'home',
                    'created_at' => Carbon::now(),
                    'updated_at' => Carbon::now()
                ]
            ]);

            $checkNewsId= DB::table('news_id')->insert([
                [
                    'news_id' => $id,
                ]
            ]);

            if($query && $checkNewsId){
                return [
                    'data' => 1
                ];
            } else {
                return [
                    'data' => 0
                ];
            }
        } else {
            return [
                'data' => 2
            ];
        }

    }
}
