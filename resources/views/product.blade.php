@extends('contentSite')

@section('title'){{ $data[0]->title }}@endsection
@section('content')

    <div class="container mt-2">

        <a href="{{ DB::table('banners_tb')->find(1)->image_url }}" target="_blank">
            <img src="{{ DB::table('banners_tb')->find(1)->image_path }}" alt="Banner" class="w-100">
        </a>

        <div class="row mt-3">
            <div class="col-3">
                <a href="{{ route('home') }}">
                    <button type="button" class="btn btn-dark">
                        <i class="fa-solid fa-rotate-left me-2"></i>
                        Вернуться
                    </button>
                </a>
            </div>
        </div>

        <div class="row mt-3">



            @foreach($data as $pr)

                <div class="col-12 col-md-8 product-body">
                    <h1 class="fs30 fs50-xl c-block mb-30">
                        {{ $pr->title }}
                    </h1>
                    <img src="{{ $pr->image_url }}" alt="poster img" class="w-100">
                    <div class="mt-5">
                        {!! html_entity_decode($pr->text) !!}
                    </div>
                </div>

            @endforeach


            <div class="col-12 col-md-4">
                <a href="{{ DB::table('banners_tb')->find(3)->image_url }}" target="_blank">
                    <img src="{{ DB::table('banners_tb')->find(3)->image_path }}" alt="Banner Right" class="w-100">
                </a>
            </div>

        </div>


    </div>

@endsection
