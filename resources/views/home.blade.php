@extends('layouts.app')

@section('content')

<header id="header-area" style="background: url({{ asset('img/header_back.jpg') }}) no-repeat;">
    <div class="container">
        <div class="row justify-content-sm-center header-title">
            <div class="mt-4">
                <div class="contents text-center">
                    <h1 style="color:#f73f3f; margin-bottom:10px;">Marketing Resources</h1>
                    <h3 style="padding: 5px; display: inline-block; background-color:#f73f3f">Free Email Lists</h3>
                </div>
            </div>
        </div>
    </div>
</header>
<section id="why">
    <div class="container">
        <div class="px-5">
            <h3 class="text-center">Why email marketing?</h3>
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
        <div class="row">
            <div class="col-md-6">
                <img class="img-fluid w-100" src="{{asset('img/chart.png')}}" style="border: none;" alt="">
            </div>
            <div class="col-md-6" style="position: relative;">
                <div class="frame" style="">
                    <div>
                        <h4 class="text-center">Grow your business</h4>
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
            <div class="col-md-6 col-lg-3">
                <a href="#" class="d-block mb-4 h-100 banner-effect">
                    {{-- <div class="ribbon  ribbon--yellow">Best!</div> --}}
                    <img class="img-fluid img-thumbnail" src="https://source.unsplash.com/pWkk7iiCoDM/400x300" alt="">
                </a>
            </div>
            <div class="col-md-6 col-lg-3">
                <a href="#" class="d-block mb-4 h-100 banner-effect">
                    <img class="img-fluid img-thumbnail" src="https://source.unsplash.com/aob0ukAYfuI/400x300" alt="">
                </a>
            </div>
            <div class="col-md-6 col-lg-3">
                <a href="#" class="d-block mb-4 h-100 banner-effect">
                    <img class="img-fluid img-thumbnail" src="https://source.unsplash.com/EUfxH-pze7s/400x300" alt="">
                </a>
            </div>
            <div class="col-md-6 col-lg-3">
                <a href="#" class="d-block mb-4 h-100 banner-effect">
                    <img class="img-fluid img-thumbnail" src="https://source.unsplash.com/M185_qYH8vg/400x300" alt="">
                </a>
            </div>
        </div>
</section>

<section>
    <div class="container">

    </div>
</section>
@endsection