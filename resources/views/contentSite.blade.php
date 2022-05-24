<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Все новости криптовалют, цифровой индустрии и рынков! Биткоин, блокчейн, криптовалюты, майнинг! Узнавайте первыми на CriptoPost">
    <meta name="keywords" content="cripto,crypto,cripta,биткоин,сколько стоит биткоин,купить биткоин,что такое биткоин,1 биткоин в рублях,калькулятор биткоин,локал биткоинкак майнить биткоин, обменник биткоин,сколько стоил биткоин в 2009, биткоин акции, биткоин адрес, биткоин аналитика, биткоин аппарат, биткоин анализ, биткоин адрес кошелька,биткоин аппарат цена, биткоин автомат, биткоин адрес проверить, биткоин аккаунт, акции биткоин, аналитика биткоин, адрес биткоин кошелька, акции биткоин график, анонимный биткоин кошелек,асик биткоин, аппарат биткоин, аппаратный кошелек биткоин, амазон биткоин, адрес биткоин кошелька пример, биткоин биржа, биткоин банкомат, биткоин бинанс, биткоин банкомат москва,">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="https://site-assets.fontawesome.com/releases/v6.1.1/css/all.css">

    <script src="{{ asset('js/jquery.min.js') }}"></script>
    <script src="{{ asset('js/popper.min.js') }}"></script>
    <script src="{{ asset('js/bootstrap.min.js') }}"></script>

    <link rel="stylesheet" href="{{ asset('css/helper.css') }}">
    <link rel="stylesheet" href="{{ asset('css/style.css') }}">
    <link rel="stylesheet" href="{{ asset('css/bootstrap.min.css') }}">
    <link rel="icon" type="image/x-icon" href="{{ asset('favicon.ico') }}">

    <title>@yield('title')</title>

</head>
<body>


@include('layouts.navbar')


@yield('content')




@include('layouts.footer')




<script src={{ asset('js/script.js') }}></script>
</body>
</html>
