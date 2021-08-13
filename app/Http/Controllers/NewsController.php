<?php

namespace App\Http\Controllers;

use App\Models\News;
use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Requests\NewsStoreRequest;
use Illuminate\Support\Facades\Storage;
use App\Http\Requests\NewsUpdateRequest;

class NewsController extends Controller
{
    /**
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $this->authorize('view-any', News::class);

        $search = $request->get('search', '');

        $allNews = News::search($search)
            ->latest()
            ->paginate(5);

        return view('app.all_news.index', compact('allNews', 'search'));
    }

    /**
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        $this->authorize('create', News::class);

        $users = User::pluck('name', 'id');

        return view('app.all_news.create', compact('users'));
    }

    /**
     * @param \App\Http\Requests\NewsStoreRequest $request
     * @return \Illuminate\Http\Response
     */
    public function store(NewsStoreRequest $request)
    {
        $this->authorize('create', News::class);

        $validated = $request->validated();
        if ($request->hasFile('image')) {
            $validated['image'] = $request->file('image')->store('public');
        }

        $news = News::create($validated);

        return redirect()
            ->route('all-news.edit', $news)
            ->withSuccess(__('crud.common.created'));
    }

    /**
     * @param \Illuminate\Http\Request $request
     * @param \App\Models\News $news
     * @return \Illuminate\Http\Response
     */
    public function show(Request $request, News $news)
    {
        $this->authorize('view', $news);

        return view('app.all_news.show', compact('news'));
    }

    /**
     * @param \Illuminate\Http\Request $request
     * @param \App\Models\News $news
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request, News $news)
    {
        $this->authorize('update', $news);

        $users = User::pluck('name', 'id');

        return view('app.all_news.edit', compact('news', 'users'));
    }

    /**
     * @param \App\Http\Requests\NewsUpdateRequest $request
     * @param \App\Models\News $news
     * @return \Illuminate\Http\Response
     */
    public function update(NewsUpdateRequest $request, News $news)
    {
        $this->authorize('update', $news);

        $validated = $request->validated();

        if ($request->hasFile('image')) {
            if ($news->image) {
                Storage::delete($news->image);
            }

            $validated['image'] = $request->file('image')->store('public');
        }

        $news->update($validated);

        return redirect()
            ->route('all-news.edit', $news)
            ->withSuccess(__('crud.common.saved'));
    }

    /**
     * @param \Illuminate\Http\Request $request
     * @param \App\Models\News $news
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, News $news)
    {
        $this->authorize('delete', $news);

        if ($news->image) {
            Storage::delete($news->image);
        }

        $news->delete();

        return redirect()
            ->route('all-news.index')
            ->withSuccess(__('crud.common.removed'));
    }
}
