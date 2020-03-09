<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class EmailListController extends Controller
{
    public function home()
    {        
        return view('emaillist');
    }
    public function product(Request $request, $locale, $prod_id)
    {        
        return view('product-detail');
    }
}
