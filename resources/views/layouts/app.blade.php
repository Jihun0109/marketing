<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Cache-Control" content="no-cache">
    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    {!! Meta::toHtml() !!}
    {{-- canonical link here --}}
    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <link href="{{ asset('css/rect-bubble.css') }}" rel="stylesheet">
    <link href="{{ asset('css/shadow-label.css') }}" rel="stylesheet">

    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-166486099-1"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());
    
      gtag('config', 'UA-166486099-1');
    </script>
    <script type="text/javascript">
        var infolinks_pid = 3227001;
        var infolinks_wsid = 1;
    </script>
    <script type="text/javascript" src="//resources.infolinks.com/js/infolinks_main.js"></script>
</head>

<body class="hero-anime dark">
    <div id="app">
        <div class="navigation-wrap bg-light start-header start-style">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <nav class="navbar navbar-expand-md navbar-light">

                            <a class="navbar-brand" href="{{route('home', app()->getLocale())}}" target="_self">
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
                                        class="nav-item pl-4 pl-md-0 ml-0 ml-md-4 {{ (request()->segment(2) == "email-list" || request()->segment(2) == "product") ? 'active' : '' }}">
                                        <a class="nav-link"
                                            href="{{route('emaillist.index', app()->getLocale())}}">Email
                                            List</a>
                                    </li>
                                    <li
                                        class="nav-item pl-4 pl-md-0 ml-0 ml-md-4 {{ (request()->segment(2) == "scraping" || request()->segment(2) == "templates") ? 'active' : '' }}">
                                        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
                                            role="button" aria-haspopup="true" aria-expanded="false">Services</a>
                                        <div class="dropdown-menu">
                                            {{-- <a class="dropdown-item" href="#">Website Development</a> --}}
                                            <a class="dropdown-item"
                                                href="{{route('scraping', app()->getLocale())}}">Web
                                                Scraping</a>
                                            <a class="dropdown-item"
                                                href="{{route('templates', app()->getLocale())}}">Email Templates</a>
                                        </div>
                                    </li>
                                    <li
                                        class="nav-item pl-4 pl-md-0 ml-0 ml-md-4 {{ (request()->segment(2) == "blog" || request()->segment(2) == "articles") ? 'active' : '' }}">
                                        <a class="nav-link" href="{{route('blog.index', app()->getLocale())}}">Blog</a>
                                    </li>
                                    <li
                                        class="nav-item pl-4 pl-md-0 ml-0 ml-md-4 {{ request()->segment(2) == "contact" ? 'active' : '' }}">
                                        <a class="nav-link" href="{{route('contact', app()->getLocale())}}">Contact</a>
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
                        <p class="text-justify mr-md-5"><a href="{{route('home', app()->getLocale())}}"><span
                                    style="color:#f73f3f">Idea2alive.com</span></a> is a small window
                            to connect a development team with the
                            world. We will share our ideas with you and also make your ideas to live with our software
                            development service. All of members are sensitive and passionate to new technical trends.
                            The team motto is supreme quality and customer respect. The slogan is "Let's bring ideas to
                            reality." </p>
                    </div>
                    <div class="col-xs-6 col-md-3">
                        <h6>Services</h6>
                        <ul class="footer-links">
                            <li><a href="{{route('emaillist.index', app()->getLocale())}}">Free Email list</a></li>
                            <li><a href="{{route('scraping', app()->getLocale())}}">Web Scraping</a></li>
                            <li><a href="{{route('templates', app()->getLocale())}}">Email Templates</a></li>
                            {{-- <li><a href="#">Website Development</a></li> --}}
                            <li><a href="http://codemissile.creatorlink.net/">More...</a></li>
                        </ul>

                    </div>

                    <div class="col-xs-6 col-md-3">
                        <h6>Contact</h6>
                        <ul class="footer-links">
                            <li><img src="{{asset('img/contact.png')}}" alt=""></li>
                            <li>skype: beautisong</li>
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
                            {{-- <li><a class="linkedin" href="https://www.linkedin.com/in/hanjihun"><i
                                        class="fab fa-linkedin"></i></a></li> --}}
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