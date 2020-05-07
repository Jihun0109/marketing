@extends('layouts.app')

@section('content')

<header id="header-area" style="background: url({{ asset('img/header_back.jpg') }}) no-repeat;">
    <div class="container">
        <div class="row justify-content-sm-center header-title">
            <div class="mt-4">
                <div class="contents text-center" data-aos="fade-up">
                    <h1 style="color:#f73f3f; margin-bottom:10px;" data-aos="fade-right" data-aos-offset="300"
                        data-aos-easing="ease-in-sine" data-aos-duration="1000">Marketing Resources</h1>
                    <h3 style="padding: 5px; display: inline-block; background-color:#f73f3f" data-aos="fade-left"
                        data-aos-offset="500" data-aos-duration="1500"><a style="color:white !important;"
                            href="{{route('emaillist.index', app()->getLocale())}}">Free Email Lists</a>
                    </h3>
                </div>
            </div>
        </div>
    </div>
</header>
<section id="idea">
    <div class="container para-margin" data-aos="fade-up">
        <div class="px-5 mx-md-5">
            <h3 class="text-center main-color mx-md-5" data-aos="zoom-in-down">No matter how new the idea is, it becomes
                useless
                if it is not known to people. <br><span class="text-white">Drive quality traffic to your ideas.</span>
            </h3>
            <p>

            </p>
        </div>
    </div>
</section>
<section id="why">
    <div class="container" data-aos="fade-up">
        <div class="px-5">
            <h3 class="text-center" data-aos="zoom-in-down">Why <span style="color:#f73f3f">email</span> marketing?</h3>
            <p>
                No marketing category has the longevity of email marketing. While some marketing trends come and go,
                email
                remains the most powerful channel available to the modern marketer.
            </p>
        </div>
    </div>
</section>
<section id="">
    <div class="container">
        <div class="row" data-aos="fade-up" data-aos-duration="1000">
            <div class="col-md-6">
                <img class="img-fluid w-100" src="{{asset('img/chart.png')}}" style="border: none;" alt="">
            </div>
            <div class="col-md-6" style="position: relative;">
                <div class="frame" style="">
                    <div>
                        <h4 class="text-center"><span style="color:#f73f3f">Grow</span> your business</h4>
                        <div>
                            At its simplest, email marketing is a powerful communication tool
                            to build relationships with customers. It gives you a chance to
                            speak to a lot of people.</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section id="">
    <div class="container">
        <div class="row justify-content-center mb-3">
            <h3>You can <span style="color:#f73f3f">make</span> :</h3>
        </div>
        <div class="row steps">
            <div class="col-md-6 col-lg-3 py-3 step">
                <img src="{{asset('img/traffic.png')}}" alt="" class="img-fluid w-100">
                <h3 class="steps-text">
                    Traffic to your
                    service</h3>
            </div>
            <div class="col-md-6 col-lg-3 py-3 step">
                <img src="{{asset('img/crowd.png')}}" alt="" class="img-fluid w-100">
                <h3 class="steps-text">
                    Much more leads</h3>
            </div>
            <div class="col-md-6 col-lg-3 py-3 step">
                <img src="{{asset('img/cash.png')}}" alt="" class="img-fluid w-100">
                <h3 class="steps-text">
                    Sales than before</h3>
            </div>
            <div class="col-md-6 col-lg-3 py-3 step">
                <img src="{{asset('img/money.png')}}" alt="" class="img-fluid w-100">
                <h3 class="steps-text">
                    Increazed revenue</h3>
            </div>
        </div>
    </div>
</section>
<section>
    <div class="container">
        <div class="row justify-content-center">
            <h3>with</h3>
        </div>
        <div class="row justify-content-center mb-3">
            <h3><span style="color:#f73f3f">FREE</span> email lists :</h3>
        </div>
        <div class="row text-center text-lg-left py-3">
            @foreach ($products as $product)
            <div class="col-md-6 col-lg-3">
                <a href="{{app()->getLocale()}}/product/{{$product->sku}}" class="d-block mb-4 h-100 banner-effect">
                    {{-- <div class="ribbon  ribbon--yellow">Best!</div> --}}
                    <img class="img-fluid img-thumbnail" src="{{Voyager::image($product->thumb)}}"
                        alt="{{$product->name}}">
                </a>
            </div>
            @endforeach
        </div>
</section>

<section>
    <div class="container">

    </div>
</section>
@endsection