<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //$this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return redirect(app()->getLocale());
        //return view('home');
    }

    public function home()
    {
        $products = Product::whereIn('id', [1,2,3,4])->get();
        return view('home', compact('products'));
    }
}
