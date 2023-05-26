@include('header')

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h1>Laravel 9 Drag and Drop File Upload with Dropzone JS - ItSolutionStuff.com</h1>
            <form action="{{ route('upload') }}" method="post" enctype="multipart/form-data" id="image-upload" class="dropzone">
                @csrf
                <div>
                    <h4>Upload Multiple Image By Click On Box</h4>
                </div>
            </form>
        </div>
    </div>
</div>

@vite(['resources/js/dropzoneTest.js'])

@include('footer')