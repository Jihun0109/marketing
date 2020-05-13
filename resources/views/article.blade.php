@extends('layouts.app')

@section('content')

<header>

</header>

<div class="container ">
    <div class="row mt-5 pt-5">
        <div class="col-lg-8">
            <article class="post">
                <header>
                    <h1 itemprop="name headline">{{$post->title}}</h1>

                    <div class="mt-5">
                        <i class="fas fa-align-justify"></i>
                        Posted <time datetime="2018-06-12T00:00:00+00:00"
                            itemprop="datePublished">{{$post->created_at}}</time>
                        by <span itemprop="author" itemscope="" itemtype="https://schema.org/Person"><span
                                itemprop="name">admin</span></span>
                    </div>
                </header>
                <div itemprop="articleBody">
                    <p><img src="{{Voyager::image($post->image)}}" class="img-fluid rounded" alt="{{$post->seo_title}}">
                    </p>
                    <br>
                    {!!$post->body!!}
                </div>
            </article>
        </div>
    </div>
</div>

</div>
</div>
@endsection