<?php

namespace App\Http\Controllers;
use Butschster\Head\Facades\Meta;
use Illuminate\Http\Request;
use App\Message;

class ContactController extends Controller
{
    public function index()
    {
        return view('contact');
    }
    public function message(Request $request)
    {
        $this->validate($request, [
            'email' => 'required|email',
            'msg' => 'required|min:10|max:1024'
        ]);

        $ret = Message::create([
            'email' => $request->email,
            'msg' => $request->msg,
            'is_deleted' => 0
        ]);

        return back();
    }
}
