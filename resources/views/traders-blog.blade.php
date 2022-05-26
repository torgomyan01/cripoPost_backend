@extends('contentSite')
@section('content')


    <h2 class="text-center fs35 mb-2 fst-italic fw-bold">
        Трейдерский блог
    </h2>

    <img src="{{ asset('images/td-bg.jpg') }}" alt="it bg" class="w-100">


    <div class="container mt-5">

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

    <div class="mt-3">

        <h5 class="fst-italic text-center">
            «Привет друзья, меня зовут Руслан.
            <br>
            Я — аналитик проекта <a href="https://criptopost.pro">CriptoPost.pro</a> и  telegram-канала
            <a href="https://t.me/candlelight_channel">«Ужин при Свечах»</a>
        </h5>

        <p class="ts16 text-center mt-3">
            Это мой личный торговый блог о криптовалютах!
        </p>

        <h5 class="fst-italic text-center mt-50 c-block">
            Здесь и на моем канале вас ждут:
        </h5>
        <p class="text-center c-black-grey fst-italic m-0 p-0">
            — качественная аналитика BTC ETH и других инструментов
        </p>
        <p class="text-center c-black-grey fst-italic m-0 p-0">
            — видео-обзоры
        </p>
        <p class="text-center c-black-grey fst-italic m-0 p-0">
            — мои ожидания по рынку
        </p>

        <p class="c-block text-center c-black-grey fst-italic mt-60">
            Читайте мой блог в <a href="https://t.me/candlelight_channel">telegram-канал</a> и давайте зарабатывать вместе!
        </p>

    </div>

@endsection
