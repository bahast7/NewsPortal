<?php

namespace App\Http\Livewire;

use App\Models\Ads;
use App\Models\User;
use Livewire\Component;
use Livewire\WithFileUploads;
use Illuminate\Support\Facades\Storage;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;

class UserAllAdsDetail extends Component
{
    use WithFileUploads;
    use AuthorizesRequests;

    public User $user;
    public Ads $ads;
    public $adsImage;
    public $uploadIteration = 0;

    public $selected = [];
    public $editing = false;
    public $allSelected = false;
    public $showingModal = false;

    public $modalTitle = 'New Ads';

    protected $rules = [
        'ads.title' => ['required', 'max:255', 'string'],
        'adsImage' => ['nullable', 'image', 'max:1024'],
        'ads.url' => ['required', 'url'],
    ];

    public function mount(User $user)
    {
        $this->user = $user;
        $this->resetAdsData();
    }

    public function resetAdsData()
    {
        $this->ads = new Ads();

        $this->adsImage = null;

        $this->dispatchBrowserEvent('refresh');
    }

    public function newAds()
    {
        $this->editing = false;
        $this->modalTitle = trans('crud.user_all_ads.new_title');
        $this->resetAdsData();

        $this->showModal();
    }

    public function editAds(Ads $ads)
    {
        $this->editing = true;
        $this->modalTitle = trans('crud.user_all_ads.edit_title');
        $this->ads = $ads;

        $this->dispatchBrowserEvent('refresh');

        $this->showModal();
    }

    public function showModal()
    {
        $this->resetErrorBag();
        $this->showingModal = true;
    }

    public function hideModal()
    {
        $this->showingModal = false;
    }

    public function save()
    {
        $this->validate();

        if (!$this->ads->user_id) {
            $this->authorize('create', Ads::class);

            $this->ads->user_id = $this->user->id;
        } else {
            $this->authorize('update', $this->ads);
        }

        if ($this->adsImage) {
            $this->ads->image = $this->adsImage->store('public');
        }

        $this->ads->save();

        $this->uploadIteration++;

        $this->hideModal();
    }

    public function destroySelected()
    {
        $this->authorize('delete-any', Ads::class);

        collect($this->selected)->each(function (string $id) {
            $ads = Ads::findOrFail($id);

            if ($ads->image) {
                Storage::delete($ads->image);
            }

            $ads->delete();
        });

        $this->selected = [];
        $this->allSelected = false;

        $this->resetAdsData();
    }

    public function toggleFullSelection()
    {
        if (!$this->allSelected) {
            $this->selected = [];
            return;
        }

        foreach ($this->user->allAds as $ads) {
            array_push($this->selected, $ads->id);
        }
    }

    public function render()
    {
        return view('livewire.user-all-ads-detail', [
            'allAds' => $this->user->allAds()->paginate(20),
        ]);
    }
}
