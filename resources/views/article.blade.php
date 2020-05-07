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
                    <div>
                        <i class="fal fa-tag"></i> Article
                    </div>
                    <hr class="custom">
                    <div class="mb-3">
                        Posted <time datetime="2018-06-12T00:00:00+00:00" itemprop="datePublished">Jun 12, 2018</time>
                        by <span itemprop="author" itemscope="" itemtype="https://schema.org/Person"><span
                                itemprop="name">David
                                Miller</span></span>
                    </div>
                </header>
                <div itemprop="articleBody">
                    <p><img src="{{Voyager::image($post->image)}}" class="img-fluid rounded">
                    </p>
                    {!!$post->body!!}
                </div>
            </article>
        </div>
    </div>
</div>

</div>
</div>
@endsection