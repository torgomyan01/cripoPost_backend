<div class="navbar-site">
    <div class="container">
        <div class="row" style="margin-top: -3px;">
            <div class="col-2 mt-0">
                <a href="{{ route('home') }}">
                    <img src="{{ asset('images/logo-site.png') }}" alt="Logo site" class="navbar-logo-site">
                </a>
            </div>
            <div class="col-2 mt-0 d-none d-md-block">
                <a href="{{ route('home') }}" class="menu-item {{ Request::url() === route('home') ? 'active' : '' }} ">
                    Все новости
                </a>
            </div>
            <div class="col-3 mt-0 col-xl-2 d-none d-md-block">
                <a href="{{ route('traders-blog') }}" class="menu-item {{ Request::url() === route('traders-blog') ? 'active' : '' }} ">
                    Трейдерский блог
                </a>
            </div>
            <div class="col-2 mt-0 d-none d-md-block">
                <a href="{{ route('ads') }}" class="menu-item {{ Request::url() === route('ads') ? 'active' : '' }} ">
                    Реклама и Контакты
                </a>
            </div>

            <!--      mobile menu -->
            <div class="col-8 mt-0 d-flex justify-content-center justify-content-md-end align-items-center d-md-none">
                <span id="mobile-menu" class="menu-item tg">
                  <i class="fa-solid fa-bars fs40"></i>
                </span>
            </div>
            <!--      mobile menu -->

            <div class="col-2 mt-0 col-md-2 d">
                <a href="https://t.me/+NkISGAsJ8zhiZTEy" target="_blank" class="menu-item tg justify-content-center text-transform-uppercase fw-bold">
                    <img src="{{ asset('images/3.svg') }}" alt="telegram" class="me-2 w-45">
                    <span class="d-none d-md-inline-block">
                        Наш тг
                    </span>
                </a>
            </div>
        </div>
    </div>
</div>



<div class="mobile-menu" id="mobile-menu-block">
    <div class="mobile-menu-item mt-50  {{ Request::url() === route('home') ? 'active' : '' }} ">
        <a href="{{ route('home') }}">
            Все новости
        </a>
    </div>
    <div class="mobile-menu-item  {{ Request::url() === route('traders-blog') ? 'active' : '' }} ">
        <a href="{{ route('traders-blog') }}">
            Трейдерский блог
        </a>
    </div>
    <div class="mobile-menu-item  {{ Request::url() === route('ads') ? 'active' : '' }} ">
        <a href="{{ route('ads') }}">
            Реклама и Контакты
        </a>
    </div>
</div>
