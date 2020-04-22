@extends('layouts.app')

@section('content')

<header>

</header>
<div class="container mt-5 pt-5">
    <h1 class="font-weight-light text-center text-lg-left mt-4 mb-0 ">Contact <span class="main-color">Us</span> </h1>

    <hr class="mt-2 mb-5">

    <div class="row mb-3 mb-sm-5">
        <div class="col-12">
            If you have any question message us here or send email to <img src="{{asset('img/gmail.png')}}" alt="">.
        </div>
    </div>
    <div class="row">
        <div class="col-12 col-md-6">
            <img class="img-fluid" src="{{asset('img/contact_bk.png')}}" alt="Contact to Free Email List Service">
        </div>
        <div class="col-12 col-md-6 mt-5">
            <form class="w-100 pl-0 pl-md-5" action="{{route('message', app()->getLocale())}}" method="post">
                {{ csrf_field() }}
                <div class="form-group">
                    <label for="exampleFormControlInput1">Email address <span class="main-color">*</span></label>
                    <input type="email" class="form-control" placeholder="yourname@example.com" name="email">
                </div>
                <div class="form-group">
                    <label for="exampleFormControlTextarea1">Your message <span class="main-color">*</span></label>
                    <textarea class="form-control" rows="4"
                        placeholder="Kindly put your message here and we will reply to asap." name="msg"></textarea>
                </div>
                <div class="form-group text-center">
                    <button type="submit" class="btn btn-secondary px-5">Send</button>
                </div>
            </form>
        </div>
    </div>
</div>
@endsection