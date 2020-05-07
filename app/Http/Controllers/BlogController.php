<?php

namespace App\Http\Controllers;
use Butschster\Head\Facades\Meta;
use Illuminate\Http\Request;
use App\Post;

class BlogController extends Controller
{
    public function index()
    {
        Meta::prependTitle('Blog')
                ->setDescription('Free email marketing resource. marketing articles')
                ->setKeywords(['Marketing resources','free email list','Blog', 'Post'])
                ->setContentType('text/html')
                ->setViewport('width=device-width, initial-scale=1')
                ->setCanonical(url()->current())
                ->setCharset();

        $posts = Post::all();
        return view('blog', compact('posts'));
    }

    public function article(Request $request, $locale, $slug)
    {
        $post = Post::where('slug', $slug)->firstOrFail();
        Meta::prependTitle('Blog')
                ->setDescription($post->meta_description)
                ->setKeywords($post->meta_keywords)
                ->setContentType('text/html')
                ->setViewport('width=device-width, initial-scale=1')
                ->setCanonical(url()->current())
                ->setCharset();

        return view('article', compact('post'));
    }
}
