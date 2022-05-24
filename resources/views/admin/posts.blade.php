@extends('admin.adminContent')

@section('content-admin')

    <div class="row">

        @foreach($posts as $post)

            <div class="col-12 col-lg-6 mb-4">
                <div class="card">
                    <div class="d-flex justify-content-start ">
                        <div class="img-block me-3" style="background-image: url({{ $post->image_url }})"> </div>
                        <div class="pe-5">
                            <a target="_blank" href="/news/{{ $post->id }}">
                                <h3 class="mt-2 fs-5">
                                    {{  Str::limit($post->title, 80) }}
                                </h3>
                            </a>
                        </div>

                        <i class="fa-solid fa-paperclip me-3 {{ $post->position ? 'c-green' : '' }} post__update__clip" id="{{ $post->id }}"></i>
                        <div class="tools-block">
                            <small class="me-3">
                                ID: {{ $post->id }}
                            </small>
{{--                            <i class="fa-solid fa-pen-to-square me-2"></i>--}}
                            <i class="fa-solid fa-trash remove__post__admin" id="{{ $post->id }}"></i>
                        </div>

                    </div>
                </div>
            </div>

        @endforeach

    </div>

    <div class="w-100 d-flex justify-content-center align-items-center mt-4 mb-4">
        {{ $posts->links()  }}
    </div>

    <script>

        const updateClip = $('.post__update__clip');
        updateClip.on('click', function (){
            const thisId = this.id;

            $.ajax({
                type: "POST",
                url: '{{ route('admin-post-clip') }}',
                data: {
                    _token: '{{ csrf_token() }}',
                    id: thisId,
                    work: $(this).hasClass('c-green') ? 'remove' : 'add',
                },
                dataType: 'json',
                success: function (res){
                    if(res.data){
                        window.location.reload()
                    }
                },
                error: function (err){
                    console.log(err)
                }
            });
        })

        const removeClip = $('.remove__post__admin');
        removeClip.on('click', function (){
            const thisId = this.id;

            $.ajax({
                type: "POST",
                url: '{{ route('admin-post-remove') }}',
                data: {
                    _token: '{{ csrf_token() }}',
                    id: thisId
                },
                dataType: 'json',
                success: function (res){
                    if(res.data){
                        window.location.reload()
                    }
                },
                error: function (err){
                    console.log(err)
                }
            });
        })

    </script>
@endsection



