<?php

namespace App\Http\Controllers;
use Butschster\Head\Facades\Meta;
use Illuminate\Http\Request;

class ServiceController extends Controller
{
    public function scraping()
    {
        Meta::prependTitle('Free email list')
                ->setDescription('Web scraping, data extraction from any kind of websites and harvesting emails')
                ->setKeywords(['Marketing resources','free email list','Etsy customers'])
                ->setContentType('text/html')
                ->setViewport('width=device-width, initial-scale=1')
                ->setCanonical(url()->current())
                ->setCharset();
        return view('scraping');
    }

    public function templates()
    {
        return view('coming-soon');
    }
}
