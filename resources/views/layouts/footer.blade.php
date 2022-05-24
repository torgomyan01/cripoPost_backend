<div class="container mt-3">
    <div class="d-flex justify-content-center align-items-center mb-3">
        <a href="{{ DB::table('banners_tb')->find(2)->image_url }}" target="_blank" class="w-100">
            <img src="{{ DB::table('banners_tb')->find(2)->image_path }}" alt="Banner" class="w-100">
        </a>
    </div>
</div>

<footer>

    <div class="container">
        <div class="row">
            <div class="col-12 col-lg-4 text">
                Проект CriptoPost.pro
            </div>
            <div class="col-12 col-lg-4 text">
                Since 2022
            </div>
            <div class="col-12 col-lg-4 text">
                Все права защищены
            </div>
        </div>
    </div>

</footer>
