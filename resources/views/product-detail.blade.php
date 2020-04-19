@extends('layouts.app')

@section('content')

<header>

</header>
<div class="container mt-5 pt-5">
    <h1 class="font-weight-light text-center text-center mt-4 mb-0">{{$product->name}}</h1>

    <hr class="mt-2 mb-5">
    <div class="row d-flex justify-content-center">
        <div class="col-12 col-md-8">
            <img class="img-fluid" src="{{Voyager::image($product->image)}}" alt="{{$product->name}}">
        </div>
    </div>
    <div class="row mt-md-5 mt-3 justify-content-center">
        <h5>{{$product->short}}</h5>
    </div>
    <div class="container-fluid">
        <div class="wrapper row">
            <div class="preview">
                <div class="mt-4 row-100"></div>
                <div>
                    {!! $product->description !!}
                </div>
            </div>
        </div>
    </div>
    <div class="d-flex justify-content-center mt-md-5">
        <a class="btn btn-dark" target="_blank" href="{{$product->outlink}}">Download</a>
    </div>
</div>
@endsection