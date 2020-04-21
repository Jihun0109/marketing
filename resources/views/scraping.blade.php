@extends('layouts.app')

@section('content')

<header>

</header>
<div class="container mt-5 pt-5">
    <div class="row justify-content-center">
        <h1 class="font-weight-light text-center text-lg-left mt-4 mb-0 ">Web <span class="main-color">Scraping</span>
        </h1>
    </div>
    <hr class="mt-2 mb-5">

    <div class="row mb-3 mb-sm-5">
        <div class="container">
            <h3 class="card-title text-center">How it works</h3>
            <div class="row">
                <div class="col-md-12">
                    <div class="main-timeline3">
                        <div class="timeline">
                            <div class="timeline-icon"><span class="year">1</span></div>
                            <div class="timeline-content">
                                <h3 class="title">Order</h3>
                                <div class="description">
                                    <ul>
                                        <li>Target site url</li>
                                        <li>What data should be scraped?</li>
                                        <li>Data format</li>
                                        <li>Deadline and price agreement</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="timeline">
                            <div class="timeline-icon"><span class="year">2</span></div>
                            <div class="timeline-content">
                                <h3 class="title">Scrape</h3>
                                <p class="description">
                                    We code, debug and run the code. In order to make sure that all the data is correct,
                                    we give the client some data as a demo.
                                </p>
                            </div>
                        </div>
                        <div class="timeline">
                            <div class="timeline-icon"><span class="year">3</span></div>
                            <div class="timeline-content">
                                <h3 class="title">Payment</h3>
                                <p class="description">
                                    The client verifies that the demo data is correct and makes the promised payment. If
                                    the data is not correct, you may be asked to correct it.
                                </p>
                            </div>
                        </div>
                        <div class="timeline">
                            <div class="timeline-icon"><span class="year">4</span></div>
                            <div class="timeline-content">
                                <h3 class="title">Delivery</h3>
                                <p class="description">
                                    When the payment transaction is confirmed, we will send the entire scrapped data
                                    and, if necessary, the code.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row mb-3 mb-sm-5 justify-content-center">
        <h3 class="text-center">What tools we use.</h3>
    </div>
    <div class="row">
        <div class="col-12 col-md-6">
            <img class="img-fluid" src="{{asset('img/scraping_bk.png')}}" alt="Web Scraping">
        </div>
        <div class="col-12 col-md-6 mt-5">

        </div>
    </div>
</div>
@endsection