@extends('admin.adminContent')

@section('content-admin')

    <div class="alert alert-success d-none" role="alert" id="alert"></div>
    <div class="row">
        <div class="col-8">
            <div class="row">

                <div class="col-12">
                    <select class="form-select border ps-2 pe-2" aria-label="Default select example" id="select__banner">
                        <option selected>Выбрать баннер</option>
                        @foreach($banners as $banner)
                            <option value="{{ $banner->id }}">{{ $banner->place }}</option>
                        @endforeach
                    </select>
                </div>

                <div class="col-12" id="banner__block">

                </div>

            </div>
        </div>
        <div class="col-4">
            <img src="{{ asset('assets/img/banner-map.png') }}" alt="Banner Block" class="w-100">
        </div>
    </div>


    <script>

        const bannerBlock = $('#select__banner');
        const bannerParrent = $('#banner__block');
        const alert = $('#alert')

        bannerBlock.on('change', function (){
                $.ajax({
                    type: "GET",
                    url: `/admin-panel/banner/${this.value}`,
                    dataType: 'json',
                    success: function (res){
                        const banner = res[0];

                        bannerParrent.html(`
                            <form action="#" id="banner__change" class="row">
                                 <div class="col-12 mt-4">
                                    <div class="mb-3">
                                        <label for="exampleFormControlInput1" class="form-label bold">Banner URL</label>
                                        <input type="text" name="url" value="${banner?.image_url}" class="form-control border ps-2" id="exampleFormControlInput1" placeholder="http://criptopost.loc/admin-panel/banners">
                                    </div>
                                </div>

                                <div class="col-12">
                                    <div class="d-inline-block position-relative">
                                        <img id="img__banner" src="${banner?.image_path}" alt="Banner" class="mt-3" style="max-width: 100%">
                                        <label class="change__banner">
                                            <i class="fa-solid fa-cloud-arrow-up"></i>
                                            <input type="file" name="file" id="select__banner__file">
                                        </label>
                                    </div>
                                </div>
                                <div class="col-12 d-flex justify-content-center mt-3">
                                  <button class="btn btn-success" type="submit">Сохранить </button>
                                </div>
                            </form>
                        `)
                        startChangeBanners();
                    },
                    error: function (err){
                        console.log(err)
                    }
                });
        })
        function getBase64(file) {
            return new Promise((resolve, reject) => {
                const reader = new FileReader();
                reader.readAsDataURL(file);
                reader.onload = () => resolve(reader.result);
                reader.onerror = error => reject(error);
            });
        }

        function startChangeBanners(){
            const bannerInput = $('#select__banner__file');
            const imgBanner = $('#img__banner');
            bannerInput.on('change', function (e){
                const file = e.target.files[0];
                getBase64(file).then((date) => {
                    imgBanner.attr('src', date)
                    console.log(date)
                });
            })



            const bannerChangeForm = $('#banner__change');
            bannerChangeForm.on('submit', function (e){
                e.preventDefault();
                const url = e.target.url.value;
                const file = e.target.file.files[0];

                const formData = new FormData();
                formData.append('_token', '{{ csrf_token() }}');
                formData.append('url', url);
                formData.append('file', file);


                $.ajax({
                    type: "POST",
                    url: `/admin-panel/banner-update/${bannerBlock.val()}`,
                    data: formData,
                    contentType: false,
                    processData: false,
                    dataType: 'json',
                    success: function (res){
                        console.log(res)
                        if(res === 1){
                            alert.removeClass('d-none').text('Ваш баннер сохранено');
                            bannerParrent.html('');
                        }
                    },
                    error: function (err){
                        console.log(err)
                    }
                });

            })
        }

        {{--const updateClip = $('.post__update__clip');--}}
        {{--updateClip.on('click', function (){--}}
        {{--    const thisId = this.id;--}}

            {{--$.ajax({--}}
            {{--    type: "POST",--}}
            {{--    url: '{{ route('admin-post-clip') }}',--}}
            {{--    data: {--}}
            {{--        _token: '{{ csrf_token() }}',--}}
            {{--        id: thisId,--}}
            {{--        work: $(this).hasClass('c-green') ? 'remove' : 'add',--}}
            {{--    },--}}
            {{--    dataType: 'json',--}}
            {{--    success: function (res){--}}
            {{--        if(res.data){--}}
            {{--            window.location.reload()--}}
            {{--        }--}}
            {{--    },--}}
            {{--    error: function (err){--}}
            {{--        console.log(err)--}}
            {{--    }--}}
            {{--});--}}
        {{--})--}}

    </script>
@endsection



