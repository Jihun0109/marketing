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
        <div class="container para-margin">
            <h3 class="card-title text-center" style=""><span style="border-bottom: 5px solid #f73f3f;">How it
                    works:</span></h3>
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
                                    Coding, debugging and running. In order to make sure that all the data is correct,
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
                                    the data is not correct, you can ask to correct it.
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
    <div class="row mb-3 mb-sm-5 justify-content-center para-margin">
        <h3 class="text-center" style="border-bottom: 5px solid #f73f3f;">Features:</h3>
    </div>
    <div class="row mb-4">
        <div class="col-12 text-center">
            <img class="img-fluid shadow" src="{{asset('img/scraping_bk.png')}}" alt="Web Scraping" style="">
        </div>
    </div>
    <div class="row mb-3 mb-sm-5 justify-content-center para-margin">
        <h3 class="text-center" style="border-bottom: 5px solid #f73f3f;">We use:</h3>
    </div>
    <div class="row">
        <div class="col-6 col-sm-4 col-md-3 text-center my-3">
            <h5>Python</h3>
        </div>
        <div class="col-6 col-sm-4 col-md-3 text-center my-3">
            <h5>Scrapy</h3>
        </div>
        <div class="col-6 col-sm-4 col-md-3 text-center my-3">
            <h5>Selenium</h3>
        </div>
        <div class="col-6 col-sm-4 col-md-3 text-center my-3">
            <h5>Xpath</h3>
        </div>
        <div class="col-6 col-sm-4 col-md-3 text-center my-3">
            <h5>Requests</h3>
        </div>
        <div class="col-6 col-sm-4 col-md-3 text-center my-3">
            <h5>Pandas</h3>
        </div>
        <div class="col-6 col-sm-4 col-md-3 text-center my-3">
            <h5>BS4</h3>
        </div>
        <div class="col-6 col-sm-4 col-md-3 text-center my-3">
            <h5>MySQL</h3>
        </div>
    </div>
    <div class="row mb-3 mb-sm-5 justify-content-center  para-margin">
        <h3 class="text-center" style="border-bottom: 5px solid #f73f3f;">Our clients say like:</h3>
    </div>
    <div class="row">
        <section class="pb-5" style="margin-bottom: 0 !important;">
            <div class="container">
                <div class="row">
                    <div class="col-lg-10 col-xl-8 mx-auto">
                        <div class="p-5 shadow rounded">
                            <!-- Bootstrap carousel-->
                            <div class="carousel slide" id="carouselExampleIndicators" data-ride="carousel">
                                <!-- Bootstrap carousel indicators [nav] -->
                                <ol class="carousel-indicators mb-0">
                                    <li class="active" data-target="#carouselExampleIndicators" data-slide-to="0"></li>
                                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                                </ol>


                                <!-- Bootstrap inner [slides]-->
                                <div class="carousel-inner px-5 pb-4">
                                    <!-- Carousel slide-->
                                    <div class="carousel-item active">
                                        <div class="media"><img class="rounded-circle"
                                                src="{{asset('img/flags/united-states-of-america-flag-xs.png')}}" alt=""
                                                width="50" height="50">
                                            <div class="media-body ml-3">
                                                <blockquote class="blockquote border-0 p-0">
                                                    <p class="font-italic lead"> <i
                                                            class="fa fa-quote-left mr-3 main-color"></i>The best
                                                        experience I ever have in fiverr, this seller is fast and offer
                                                        a amazing , professional service, exceed my
                                                        expectations and save me hours or days of work. I'm very happy
                                                        with my order and highly recommend this seller.</p>
                                                    <footer class="blockquote-footer">babybella in
                                                        <cite title="Fiverr">Fiverr</cite>
                                                    </footer>
                                                </blockquote>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Carousel slide-->
                                    <div class="carousel-item">
                                        <div class="media"><img class="rounded-circle"
                                                src="{{asset('img/flags/australia-flag-xs.png')}}" alt="" width="50"
                                                height="50">
                                            <div class="media-body ml-3">
                                                <blockquote class="blockquote border-0 p-0">
                                                    <p class="font-italic lead"> <i
                                                            class="fa fa-quote-left mr-3 main-color"></i>Fantastic
                                                        experience with the seller. Great communication, very fast
                                                        delivery (under expected times) and very easy to
                                                        work with.</p>
                                                    <footer class="blockquote-footer">synapsiscreativ in
                                                        <cite title="Fiverr">Fiverr</cite>
                                                    </footer>
                                                </blockquote>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Carousel slide-->
                                    <div class="carousel-item">
                                        <div class="media"><img class="rounded-circle"
                                                src="{{asset('img/flags/turkey-flag-xs.png')}}" alt="" width="50"
                                                height="50">
                                            <div class="media-body ml-3">
                                                <blockquote class="blockquote border-0 p-0">
                                                    <p class="font-italic lead"> <i
                                                            class="fa fa-quote-left mr-3 main-color"></i>This guy is a
                                                        gem, exceptional job exceptional results highly recommended.</p>
                                                    <footer class="blockquote-footer">tr34mehmet61 in
                                                        <cite title="Fiverr">Fiverr</cite>
                                                    </footer>
                                                </blockquote>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                                <!-- Bootstrap controls [dots]-->
                                <a class="carousel-control-prev width-auto" href="#carouselExampleIndicators"
                                    role="button" data-slide="prev">
                                    <i class="fa fa-angle-left text-dark text-lg"></i>
                                    <span class="sr-only">Previous</span>
                                </a>
                                <a class="carousel-control-next width-auto" href="#carouselExampleIndicators"
                                    role="button" data-slide="next">
                                    <i class="fa fa-angle-right text-dark text-lg"></i>
                                    <span class="sr-only">Next</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <div class="row justify-content-center">
        <h5 class="text-center">
            We scraped <span class="main-color">550+</span> websites for <span class="main-color">7</span> over years.
        </h5>
    </div>
    <div class="my-5"></div>
    <div class="row justify-content-center">We opened a channel at &nbsp;&nbsp;<a
            href="https://www.fiverr.com/kanggyong/do-data-mining-data-extraction-web-scrape-email"
            target="_blank"><span style="color:#f73f3f">Fiverr.com</span></div>
    <div class="para-margin"></div>
</div>
@endsection