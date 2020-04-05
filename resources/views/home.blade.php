@extends('layouts.app')

@section('content')

<div class="header">

    <!--Content before waves-->
    <div class="inner-header flex" style="overflow: hidden;">

        <div class="d-flex flex-column pl-4">
            <h1 class="row text-black sign"><span class="flicker">F</span>ree&nbsp;<span
                    class="fast-flicker">E</span>mail&nbsp;<span class="flicker">L</span>is<span
                    class="fast-flicker">t</span>
            </h1>
            <div class="d-flex justify-content-end">
                <div class="row text-white align-self-right" style="animation: blink 1s infinite alternate;">For your
                    marketing
                </div>

                <div class="scanlines"></div>
            </div>

        </div>
    </div>

    <!--Waves Container-->
    <div style="z-index: 10;">
        <svg class="waves" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
            viewBox="0 24 150 28" preserveAspectRatio="none" shape-rendering="auto">
            <defs>
                <path id="gentle-wave" d="M-160 44c30 0 58-18 88-18s 58 18 88 18 58-18 88-18 58 18 88 18 v44h-352z" />
            </defs>
            <g class="parallax">
                <use xlink:href="#gentle-wave" x="48" y="0" fill="rgba(255,255,255,0.7" />
                <use xlink:href="#gentle-wave" x="48" y="3" fill="rgba(255,255,255,0.5)" />
                <use xlink:href="#gentle-wave" x="48" y="5" fill="rgba(255,255,255,0.3)" />
                <use xlink:href="#gentle-wave" x="48" y="7" fill="#fff" />
            </g>
        </svg>
    </div>
    <!--Waves end-->

</div>
<!--Header ends-->

<!--Content starts-->
<div class="container">
    <div class="d-flex pt-5">
        <div class="row w-100 justify-content-center">
            <h1 class="text-effect3" data-heading="i">Popular</h1>
        </div>
    </div>
    <section class="banner-section">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-lg-3 remove-padding">
                    <div class="left">
                        <a href="https://www.google.com/" target="_blank" class="banner-effect">
                            <div class="bottom">
                                <div class="frame">
                                    <h3>Etsy Buyers Email list</h3>
                                    {{-- <button class="btn btn-dark">download now!</button> --}}
                                </div>
                            </div>
                            <img src="http://marketing.com//storage/products/March2020/ZiP6jJdMa2jdM19fRKF9.jpg" alt="">
                        </a>
                    </div>
                </div>
                <div class="col-md-6 col-lg-3 remove-padding">
                    <div class="left"><a href="https://www.google.com/" target="_blank" class="banner-effect"><img
                                src="https://geniusocean.com/demo/royalcommerce/assets/images/banners/1564398579side-triple2.jpg"
                                alt=""></a></div>
                </div>
                <div class="col-md-6 col-lg-3 remove-padding">
                    <div class="left"><a href="https://www.google.com/" target="_blank" class="banner-effect"><img
                                src="https://geniusocean.com/demo/royalcommerce/assets/images/banners/1564398571side-triple1.jpg"
                                alt=""></a></div>
                </div>
                <div class="col-md-6 col-lg-3 remove-padding">
                    <div class="left"><a href="https://www.google.com/" target="_blank" class="banner-effect"><img
                                src="https://geniusocean.com/demo/royalcommerce/assets/images/banners/1564398571side-triple1.jpg"
                                alt=""></a></div>
                </div>
            </div>
        </div>
    </section>
    <div class="d-flex pt-5">
        <div class="row w-100 justify-content-center">
            <h1 class="text-effect3" data-heading="i">Last Update</h1>
        </div>
    </div>
    <section class="banner-section">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-lg-3 remove-padding">
                    <div class="left"><a href="https://www.google.com/" target="_blank" class="banner-effect"><img
                                src="https://geniusocean.com/demo/royalcommerce/assets/images/banners/1564398600side-triple3.jpg"
                                alt=""></a></div>
                </div>
                <div class="col-md-6 col-lg-3 remove-padding">
                    <div class="left"><a href="https://www.google.com/" target="_blank" class="banner-effect"><img
                                src="https://geniusocean.com/demo/royalcommerce/assets/images/banners/1564398579side-triple2.jpg"
                                alt=""></a></div>
                </div>
                <div class="col-md-6 col-lg-3 remove-padding">
                    <div class="left"><a href="https://www.google.com/" target="_blank" class="banner-effect"><img
                                src="https://geniusocean.com/demo/royalcommerce/assets/images/banners/1564398571side-triple1.jpg"
                                alt=""></a></div>
                </div>
                <div class="col-md-6 col-lg-3 remove-padding">
                    <div class="left"><a href="https://www.google.com/" target="_blank" class="banner-effect"><img
                                src="https://geniusocean.com/demo/royalcommerce/assets/images/banners/1564398571side-triple1.jpg"
                                alt=""></a></div>
                </div>
            </div>
        </div>
    </section>
    <div class="d-flex pt-5">
        <div class="row w-100 justify-content-center">
            <h1 class="text-effect3" data-heading="i">Special Offer</h1>
        </div>
    </div>
    <section class="banner-section">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-lg-3 remove-padding">
                    <div class="left"><a href="https://www.google.com/" target="_blank" class="banner-effect"><img
                                src="https://geniusocean.com/demo/royalcommerce/assets/images/banners/1564398600side-triple3.jpg"
                                alt=""></a></div>
                </div>
                <div class="col-md-6 col-lg-3 remove-padding">
                    <div class="left"><a href="https://www.google.com/" target="_blank" class="banner-effect"><img
                                src="https://geniusocean.com/demo/royalcommerce/assets/images/banners/1564398579side-triple2.jpg"
                                alt=""></a></div>
                </div>
                <div class="col-md-6 col-lg-3 remove-padding">
                    <div class="left"><a href="https://www.google.com/" target="_blank" class="banner-effect"><img
                                src="https://geniusocean.com/demo/royalcommerce/assets/images/banners/1564398571side-triple1.jpg"
                                alt=""></a></div>
                </div>
                <div class="col-md-6 col-lg-3 remove-padding">
                    <div class="left"><a href="https://www.google.com/" target="_blank" class="banner-effect"><img
                                src="https://geniusocean.com/demo/royalcommerce/assets/images/banners/1564398571side-triple1.jpg"
                                alt=""></a></div>
                </div>
            </div>
        </div>
    </section>
    <div class="d-flex pt-5">
        <div class="row w-100 justify-content-center">
            <h1 class="text-effect3" data-heading="i">Collections</h1>
        </div>
    </div>
    <div class="d-flex row fan-box">
        <div class="fan-card mt-5 mt-md-2">
            <div class="imgBx">
                <img class="back-img"
                    src="https://images.unsplash.com/photo-1532123675048-773bd75df1b4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
                    alt="images">
            </div>
            <div class="details">
                <h2>SomeOne Famous<br><span>Director</span></h2>
            </div>
        </div>

        <div class="fan-card mt-5 mt-md-2">
            <div class="imgBx">
                <img class="back-img"
                    src="https://images.unsplash.com/photo-1549417229-aa67d3263c09?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
                    alt="images">
            </div>
            <div class="details">
                <h2>SomeOne Famous<br><span>Producer</span></h2>
            </div>
        </div>

        <div class="fan-card mt-5 mt-md-2">
            <div class="imgBx">
                <img class="back-img"
                    src="https://images.unsplash.com/photo-1548094878-84ced0f6896d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
                    alt="images">
            </div>
            <div class="details">
                <h2>SomeOne Famous<br><span>Actor</span></h2>
            </div>
        </div>

    </div>
</div>
<!--Content ends-->
@endsection