<?php

namespace App\Http\Controllers;

use App\Models\Ads;
use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Requests\AdsStoreRequest;
use App\Http\Requests\AdsUpdateRequest;
use Illuminate\Support\Facades\Storage;

class AdsController extends Controller
{
    /**
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $this->authorize('view-any', Ads::class);

        $search = $request->get('search', '');

        $allAds = Ads::search($search)
            ->latest()
            ->paginate(5);

        return view('app.all_ads.index', compact('allAds', 'search'));
    }

    /**
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        $this->authorize('create', Ads::class);

        $users = User::pluck('name', 'id');

        return view('app.all_ads.create', compact('users'));
    }

    /**
     * @param \App\Http\Requests\AdsStoreRequest $request
     * @return \Illuminate\Http\Response
     */
    public function store(AdsStoreRequest $request)
    {
        $this->authorize('create', Ads::class);

        $validated = $request->validated();
        if ($request->hasFile('image')) {
            $validated['image'] = $request->file('image')->store('public');
        }

        $ads = Ads::create($validated);

        return redirect()
            ->route('all-ads.edit', $ads)
            ->withSuccess(__('crud.common.created'));
    }

    /**
     * @param \Illuminate\Http\Request $request
     * @param \App\Models\Ads $ads
     * @return \Illuminate\Http\Response
     */
    public function show(Request $request, Ads $ads)
    {
        $this->authorize('view', $ads);

        return view('app.all_ads.show', compact('ads'));
    }

    /**
     * @param \Illuminate\Http\Request $request
     * @param \App\Models\Ads $ads
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request, Ads $ads)
    {
        $this->authorize('update', $ads);

        $users = User::pluck('name', 'id');

        return view('app.all_ads.edit', compact('ads', 'users'));
    }

    /**
     * @param \App\Http\Requests\AdsUpdateRequest $request
     * @param \App\Models\Ads $ads
     * @return \Illuminate\Http\Response
     */
    public function update(AdsUpdateRequest $request, Ads $ads)
    {
        $this->authorize('update', $ads);

        $validated = $request->validated();

        if ($request->hasFile('image')) {
            if ($ads->image) {
                Storage::delete($ads->image);
            }

            $validated['image'] = $request->file('image')->store('public');
        }

        $ads->update($validated);

        return redirect()
            ->route('all-ads.edit', $ads)
            ->withSuccess(__('crud.common.saved'));
    }

    /**
     * @param \Illuminate\Http\Request $request
     * @param \App\Models\Ads $ads
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, Ads $ads)
    {
        $this->authorize('delete', $ads);

        if ($ads->image) {
            Storage::delete($ads->image);
        }

        $ads->delete();

        return redirect()
            ->route('all-ads.index')
            ->withSuccess(__('crud.common.removed'));
    }
}
