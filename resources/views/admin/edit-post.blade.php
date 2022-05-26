@extends('admin.adminContent')

@section('content-admin')

    <form action="#" id="createPostForm">
        <div class="mb-3">
            <label for="Title" class="form-label bold">Заголовок поста</label>
            <input type="text" value="{{ $post->title }}" class="form-control border ps-2" id="Title" placeholder="Title" name="title">
        </div>
        <div class="row mb-3">
            <div class="col-3">
                <img src="{{ $post->image_url }}" alt="" style="width: 100%; border-radius: 5px">
            </div>
            <div class="col-9">
                <div class="mb-3">
                    <label for="formFile" class="form-label">Выбрать картинку</label>
                    <input class="form-control border px-2" type="file" id="formFile" name="file">
                </div>
            </div>
        </div>
        <div class="mb-3">
            <label for="selectPage" class="form-label">Выбрать страницу</label>
            <select class="form-select ps-2 border" id="selectPage" name="selectPlace">
                <option value="home" {{ $post->place === 'home' ? 'selected' : '' }}>Все новости</option>
                <option value="traders-blog" {{ $post->place === 'traders-blog' ? 'selected' : '' }}>Трейдерский блог</option>
            </select>
        </div>
        <div class="row mb-3">
            <div class="col-12 col-sm-4 col-lg-2">
                <div class="mt-3 d-flex">
                    <h6 class="mb-0">ЗАКРЕПЛЁННИЕ </h6>
                    <div class="form-check form-switch ps-0 ms-auto my-auto is-filled">
                        <input class="form-check-input mt-1 ms-auto" {{ $post->position ? 'checked' : '' }} type="checkbox" name="position">
                    </div>
                </div>
            </div>
        </div>

        <div class="d-flex justify-content-center">
            <button class="btn btn-pinterest">Добавить </button>
        </div>
    </form>


    <div class="dx-viewport demo-container" style="min-height: 500px">
        <div id="btn"></div>
        <div class="html-editor">{!!  html_entity_decode($post->text) !!}</div>
    </div>


    <link rel="stylesheet" href="{{ asset('assets/css/dx.common.css') }}">
    <link rel="stylesheet" href="https://cdn3.devexpress.com/jslib/19.1.7/css/dx.light.css">

    <script src="{{ asset('assets/js/quill.min.js') }}"></script>
    <script src="{{ asset('assets/js/dx.all.js') }}"></script>

    <script>

        const createPostForm = $('#createPostForm');

        createPostForm.on('submit', function (e){
            e.preventDefault();
            const title = e.target.title.value;
            const file = e.target.file.files[0];
            const position = e.target.position.checked;
            const place = e.target.selectPlace.value;

            $('.dx-quill-container *').removeAttr('contenteditable')
            const html = $('.dx-quill-container').html();


            const formData = new FormData();
            formData.append('_token', '{{ csrf_token() }}');
            formData.append('title', title);
            formData.append('file', file);
            formData.append('position', position ? 1 : 0);
            formData.append('html', html);
            formData.append('place', place);
            formData.append('id', '{{ $post->id }}');


            $.ajax({
                type: "POST",
                url: '{{ route('admin-post-edit') }}',
                contentType: false,
                processData: false,
                data: formData,
                dataType: 'json',
                success: function (res){
                    if(res.data){
                        window.location = '{{ route('admin') }}'
                    }
                },
                error: function (err){
                    console.log(err)
                }
            });
        })



    </script>



    <script>
        $(function() {
            // $("#btn").dxButton({
            //     text: 'Add link',
            //     onClick: (args)=>{
            //         let editor = $(".html-editor").dxHtmlEditor("instance");
            //         editor.insertEmbed(editor.getLength(),'link',
            //             {
            //                 href: "https://js.devexpress.com/Demos/WidgetsGallery/Demo/HtmlEditor/Overview/jQuery/Light/",
            //                 text: "Test link" })
            //     }
            //
            // })

            $(".html-editor").dxHtmlEditor({
                toolbar: {
                    items: [
                        "undo", "redo", "separator",
                        {
                            formatName: "size",
                            formatValues: ["8pt", "10pt", "12pt", "14pt", "18pt", "24pt", "36pt"] },
                        {
                            formatName: "font",
                            formatValues: ["Arial", "Courier New", "Georgia", "Impact", "Lucida Console", "Tahoma", "Times New Roman", "Verdana"]
                        },
                        "separator", "bold", "italic", "strike", "underline", "separator",
                        "alignLeft", "alignCenter", "alignRight", "alignJustify", "separator",
                        {
                            formatName: "header",
                            formatValues: [false, 1, 2, 3, 4, 5]
                        }, "separator",
                        "orderedList", "bulletList", "separator",
                        "color", "background", "separator",
                        "link", "image", "separator",
                        "clear", "codeBlock", "blockquote"
                    ]
                },
                mediaResizing: {
                    enabled: true
                }
            });
        });
    </script>
@endsection



