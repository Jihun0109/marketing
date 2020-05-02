<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ServiceController extends Controller
{
    public function scraping()
    {
        return view('scraping');
    }

    public function templates()
    {
        return view('coming-soon');
    }
}
