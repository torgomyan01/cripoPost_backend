<aside class="sidenav navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-3   bg-gradient-dark" id="sidenav-main">
    <div class="sidenav-header">
        <i class="fas fa-times p-3 cursor-pointer text-white opacity-5 position-absolute end-0 top-0 d-none d-xl-none" aria-hidden="true" id="iconSidenav"></i>
        <a class="navbar-brand m-0" href="{{ route('home') }}" target="_blank">
            <img src="{{ asset('assets/img/logo-ct.png') }}" class="navbar-brand-img h-100" alt="main_logo">
            <span class="ms-1 font-weight-bold text-white">CriptoPost</span>
        </a>
    </div>
    <hr class="horizontal light mt-0 mb-2">
    <div class="collapse navbar-collapse  w-auto  max-height-vh-100" id="sidenav-collapse-main">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link text-white active {{ Request::url() === route('admin') ? 'bg-gradient-primary' : '' }}" href="{{ route('admin') }}">
                    <span class="nav-link-text ms-1">Posts</span>
                </a>
            </li>
        </ul>
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link text-white active {{ Request::url() === route('banners') ? 'bg-gradient-primary' : '' }}" href="{{ route('banners') }}">
                    <span class="nav-link-text ms-1">Banners</span>
                </a>
            </li>
        </ul>
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link text-white active {{ Request::url() === route('create-post') ? 'bg-gradient-primary' : '' }}" href="{{ route('create-post') }}">
                    <i class="fa-solid fa-plus "></i>
                    <span class="nav-link-text ms-1">Create Post</span>
                </a>
            </li>
        </ul>
    </div>
</aside>
