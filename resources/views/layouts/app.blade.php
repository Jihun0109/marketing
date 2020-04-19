<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Cache-Control" content="no-cache">
    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>


    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <link href="{{ asset('css/rect-bubble.css') }}" rel="stylesheet">
    <link href="{{ asset('css/shadow-label.css') }}" rel="stylesheet">
</head>

<body class="hero-anime dark">
    <div id="app">
        <div class="navigation-wrap bg-light start-header start-style">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <nav class="navbar navbar-expand-md navbar-light">

                            <a class="navbar-brand" href="{{route('home', app()->getLocale())}}" target="_blank">
                                {{-- <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/1462889/logo.svg" alt=""> --}}
                                <h2><span style="color:#aaa;">idea</span><span style="color:white;">2</span><span
                                        style="color:#f73f3f;">alive</span>
                                </h2>
                            </a>

                            <button class="navbar-toggler" type="button" data-toggle="collapse"
                                data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                                aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>

                            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                <ul class="navbar-nav ml-auto py-4 py-md-0">
                                    <li
                                        class="nav-item pl-4 pl-md-0 ml-0 ml-md-4 {{ request()->segment(2) == "" ? 'active' : '' }}">
                                        <a class="nav-link" href="{{route('home', app()->getLocale())}}"
                                            role="button">Home</a>
                                    </li>
                                    <li
                                        class="nav-item pl-4 pl-md-0 ml-0 ml-md-4 {{ request()->segment(2) == "email-list" ? 'active' : '' }}">
                                        <a class="nav-link" href="{{route('emaillist.home', app()->getLocale())}}">Email
                                            List</a>
                                    </li>
                                    <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4">
                                        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
                                            role="button" aria-haspopup="true" aria-expanded="false">Services</a>
                                        <div class="dropdown-menu">
                                            <a class="dropdown-item" href="#">Website Development</a>
                                            <a class="dropdown-item" href="#">Web Scraping</a>
                                            <a class="dropdown-item" href="#">Email Templates</a>
                                        </div>
                                    </li>
                                    <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4">
                                        <a class="nav-link"
                                            href="http://codemissile.creatorLink.net/portfolio">Portfolio</a>
                                    </li>
                                    <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4">
                                        <a class="nav-link" href="#">Contact</a>
                                    </li>
                                </ul>
                            </div>

                        </nav>
                    </div>
                </div>
            </div>
        </div>
        <main class="py-4">
            @yield('content')
        </main>
        <footer class="site-footer">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 col-md-6">
                        <h6>About</h6>
                        <p class="text-justify"><a href="{{route('home', app()->getLocale())}}"><span
                                    style="color:#f73f3f">Idea2alive.com</span></a> is a small window
                            to connect a development team with the
                            world. We will share our ideas with you and also make your ideas to live with our software
                            development service. All of members are sensitive and passionate to new technical trends.
                            The team motto is supreme quality and customer respect. The slogan is "Let's bring ideas to
                            reality." </p>
                    </div>

                    <div class="col-xs-6 col-md-3">
                        <h6>Categories</h6>
                        <ul class="footer-links">
                            <li><a href="http://scanfcode.com/category/c-language/">C</a></li>
                            <li><a href="http://scanfcode.com/category/front-end-development/">UI Design</a></li>
                            <li><a href="http://scanfcode.com/category/back-end-development/">PHP</a></li>
                            <li><a href="http://scanfcode.com/category/java-programming-language/">Java</a></li>
                            <li><a href="http://scanfcode.com/category/android/">Android</a></li>
                            <li><a href="http://scanfcode.com/category/templates/">Templates</a></li>
                        </ul>
                    </div>

                    <div class="col-xs-6 col-md-3">
                        <h6>Quick Links</h6>
                        <ul class="footer-links">
                            <li><a href="http://scanfcode.com/about/">About Us</a></li>
                            <li><a href="http://scanfcode.com/contact/">Contact Us</a></li>
                            <li><a href="http://scanfcode.com/contribute-at-scanfcode/">Contribute</a></li>
                            <li><a href="http://scanfcode.com/privacy-policy/">Privacy Policy</a></li>
                            <li><a href="http://scanfcode.com/sitemap/">Sitemap</a></li>
                        </ul>
                    </div>
                </div>
                <hr>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-sm-6 col-xs-12">
                        <p class="copyright-text">Copyright &copy; 2020 All Rights Reserved by
                            <a href="http://codemissile.creatorLink.net">codemissile team</a>
                        </p>
                    </div>

                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <ul class="social-icons">
                            {{-- <li><a class="github" href="https://github.com/Jihun0109"><i class="fab fa-github"></i></a>
                            </li> --}}
                            <li><a class="facebook" href="https://www.facebook.com/jihun.han.10420"><i
                                        class="fab fa-facebook-f"></i></a></li>
                            <li><a class="twitter" href="https://twitter.com/hanjihun"><i
                                        class="fab fa-twitter"></i></a></li>
                            <li><a class="dribbble" href="https://www.instagram.com/hanbeautisong/"><i
                                        class="fab fa-instagram"></i></a></li>
                            <li><a class="linkedin" href="https://www.linkedin.com/in/hanjihun"><i
                                        class="fab fa-linkedin"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </footer>
    </div>
    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>
</body>

</html>