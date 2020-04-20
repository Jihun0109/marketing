@extends('layouts.app')

@section('content')

<header>

</header>
<div class="container mt-5 pt-5">
    <h1 class="font-weight-light text-center text-lg-left mt-4 mb-0">Email List</h1>

    <hr class="mt-2 mb-5">


    <div class="row text-center text-lg-left">
        @foreach ($products as $product)
        <div class="col-lg-3 col-md-4 col-6">
            <a href="product/{{$product->id}}" class="d-block mb-4 h-100 banner-effect">
                {{-- <div class="ribbon  ribbon--yellow">Best!</div> --}}
                <img class="img-fluid img-thumbnail" src="{{Voyager::image($product->thumb)}}" alt="{{$product->name}}">
            </a>
        </div>
        @endforeach


    </div>
</div>
@endsection