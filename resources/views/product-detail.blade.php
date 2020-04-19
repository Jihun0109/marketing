@extends('layouts.app')

@section('content')

<header>

</header>
<div class="container mt-5 pt-5">
    <h1 class="font-weight-light text-center text-lg-left mt-4 mb-0">{{$product->name}}</h1>

    <hr class="mt-2 mb-5">

    <div class="card">
        <div class="container-fluid">
            <div class="wrapper row">
                <div class="preview col-md-6">
                    {{-- <img class="img-fluid"
                        src="http://marketing.com//storage/products/March2020/ZiP6jJdMa2jdM19fRKF9.jpg" alt=""> --}}
                    <img class="img-fluid" src="{{Voyager::image($product->thumb)}}" alt="{{$product->name}}">
                    {{-- <img class="img-fluid" src="{{Voyager::image($product->thumb('cropped','image')) ?? asset('img/products/noavailable.jpg') }}
                    alt="{{$product->name}}"> --}}
                </div>
                <div class="preview col-md-6">
                    <div class="mt-4 row-100"></div>
                    <h3>{{$product->short}}</h3>
                    <p>
                        {!! $product->description !!}
                    </p>
                </div>
            </div>
        </div>

    </div>

    <div class="d-flex justify-content-center mt-md-5">
        <a class="btn btn-dark" href="{{$product->outlink}}">Download</a>
    </div>
</div>
@endsection