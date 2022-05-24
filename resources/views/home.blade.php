@extends('contentSite')
@section('content')



    <div class="container">
        <div class="d-flex justify-content-center align-items-center mb-3 mt-3">
            <a href="{{ DB::table('banners_tb')->find(1)->image_url }}" target="_blank" class="w-100">
                <img src="{{ DB::table('banners_tb')->find(1)->image_path }}" alt="Banner" class="w-100">
            </a>
        </div>

        <h1 class="text-center c-block fw-bold mt-40 mb-50">
            Все новости
        </h1>


        <div class="row">

            @foreach($posts as $post)

                <div class="col-12 col-md-6 col-lg-4 mb-4">

                    <a href="/news/{{ $post->id }}" class="product-block">
                        <div class="img-block">
                            <img src="{{ $post->image_url }}" alt="product">

                            @if($post->position)
                                <span class="top-product">
                                    ЗАКРЕПЛЁННИЕ
                                </span>
                            @endif
                        </div>
                        <h3>
                            {{  Str::limit($post->title, 75) }}
                        </h3>
                        <div class="data">
                            {{ Carbon\Carbon::parse($post->created_at)
                                ->locale('ru')
                                ->isoFormat('D MMM YYYY')
                            }}
                        </div>
                    </a>

                </div>


            @endforeach

        </div>

        <div class="w-100 d-flex justify-content-center align-items-center mt-4 mb-4">
            {{ $posts->links()  }}
        </div>


    </div>

@endsection
