<?php

namespace App\Http\Controllers;
use Butschster\Head\Facades\Meta;

use Illuminate\Http\Request;
use DB;
use App\Product;

class EmailListController extends Controller
{
    public function index()
    {
        Meta::prependTitle('Free email list')
                ->setDescription('Free Email Marketing Resources. You can promote your products with free email list we provide and get more sales.')
                ->setKeywords(['Marketing resources','free email list','Etsy customers'])
                ->setContentType('text/html')
                ->setViewport('width=device-width, initial-scale=1')
                ->setCanonical(url()->current())
                ->setCharset();

        $products = Product::all();
        return view('emaillist', compact('products'));
    }
    public function product(Request $request, $locale, $prod_id)
    {
        $product = Product::where('id', $prod_id)->first();
        Meta::prependTitle('Free email list')
                ->setDescription($product->short)
                ->setKeywords(['Marketing resources','free email list','Etsy customers'])
                ->setContentType('text/html')
                ->setViewport('width=device-width, initial-scale=1')
                ->setCanonical(url()->current())
                ->setCharset();
                
        
        return view('product-detail', compact('product'));
    }
}
