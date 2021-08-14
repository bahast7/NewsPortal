<?php

namespace App\Http\Controllers;

use App\Models\Comment;
use App\Models\News;
use App\Models\Reply;
use App\Models\User;
use App\Models\View;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     * @throws \Illuminate\Auth\Access\AuthorizationException
     */
    public function index()
    {
        $this->authorize('view-any', User::class);

        $users = User::count();

        $news = News::count();

        $comments = Comment::count();

        $reply = Reply::count();

        $reco = $comments + $reply;

        $views = View::count();

        $allnews = News::orderBy('created_at', 'desc')->take(10)->get();
        return view('home', compact('users' , 'news' , 'reco' , 'views' , 'allnews'));
    }
}
