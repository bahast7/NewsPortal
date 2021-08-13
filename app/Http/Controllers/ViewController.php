<?php

namespace App\Http\Controllers;

use App\Models\View;
use App\Models\News;
use Illuminate\Http\Request;
use App\Http\Requests\ViewStoreRequest;
use App\Http\Requests\ViewUpdateRequest;

class ViewController extends Controller
{
    /**
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $this->authorize('view-any', View::class);

        $search = $request->get('search', '');

        $views = View::search($search)
            ->latest()
            ->paginate(5);

        return view('app.views.index', compact('views', 'search'));
    }

    /**
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        $this->authorize('create', View::class);

        $allNews = News::pluck('title', 'id');

        return view('app.views.create', compact('allNews'));
    }

    /**
     * @param \App\Http\Requests\ViewStoreRequest $request
     * @return \Illuminate\Http\Response
     */
    public function store(ViewStoreRequest $request)
    {
        $this->authorize('create', View::class);

        $validated = $request->validated();

        $view = View::create($validated);

        return redirect()
            ->route('views.edit', $view)
            ->withSuccess(__('crud.common.created'));
    }

    /**
     * @param \Illuminate\Http\Request $request
     * @param \App\Models\View $view
     * @return \Illuminate\Http\Response
     */
    public function show(Request $request, View $view)
    {
        $this->authorize('view', $view);

        return view('app.views.show', compact('view'));
    }

    /**
     * @param \Illuminate\Http\Request $request
     * @param \App\Models\View $view
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request, View $view)
    {
        $this->authorize('update', $view);

        $allNews = News::pluck('title', 'id');

        return view('app.views.edit', compact('view', 'allNews'));
    }

    /**
     * @param \App\Http\Requests\ViewUpdateRequest $request
     * @param \App\Models\View $view
     * @return \Illuminate\Http\Response
     */
    public function update(ViewUpdateRequest $request, View $view)
    {
        $this->authorize('update', $view);

        $validated = $request->validated();

        $view->update($validated);

        return redirect()
            ->route('views.edit', $view)
            ->withSuccess(__('crud.common.saved'));
    }

    /**
     * @param \Illuminate\Http\Request $request
     * @param \App\Models\View $view
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, View $view)
    {
        $this->authorize('delete', $view);

        $view->delete();

        return redirect()
            ->route('views.index')
            ->withSuccess(__('crud.common.removed'));
    }
}
