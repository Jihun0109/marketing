<?php

namespace App\Http\Controllers;
use Butschster\Head\Facades\Meta;
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
        Meta::prependTitle('Marketing Resources')
                ->setDescription('Free Email Marketing Resources. You can promote your products with free email list we provide and get more sales.')
                ->setKeywords(['Marketing resources','free email list','Etsy customers'])
                ->setContentType('text/html')
                ->setViewport('width=device-width, initial-scale=1')
                ->setCanonical(url()->current())
                ->setHrefLang('en', env('APP_URL', 'https://idea2alive/') . "en")
                ->setHrefLang('ko', env('APP_URL', 'https://idea2alive/') . "ko")
                ->setCharset();
        
        $products = Product::whereIn('id', [1,2,3,4])->get();
        return view('home', compact('products'));
    }
}
