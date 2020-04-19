<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\Product;

class EmailListController extends Controller
{
    public function home()
    {        
        return view('emaillist');
    }
    public function product(Request $request, $locale, $prod_id)
    {
        $product = Product::where('id', $prod_id)->first();
        
        return view('product-detail', compact('product'));
    }
}
