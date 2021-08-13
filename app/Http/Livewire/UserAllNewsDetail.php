<?php

namespace App\Http\Livewire;

use App\Models\User;
use App\Models\News;
use Livewire\Component;
use Livewire\WithFileUploads;
use Illuminate\Support\Facades\Storage;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;

class UserAllNewsDetail extends Component
{
    use WithFileUploads;
    use AuthorizesRequests;

    public User $user;
    public News $news;
    public $newsImage;
    public $uploadIteration = 0;

    public $selected = [];
    public $editing = false;
    public $allSelected = false;
    public $showingModal = false;

    public $modalTitle = 'New News';

    protected $rules = [
        'news.title' => ['required', 'max:255', 'string'],
        'news.content' => ['required', 'max:255', 'string'],
        'newsImage' => ['nullable', 'image', 'max:1024'],
    ];

    public function mount(User $user)
    {
        $this->user = $user;
        $this->resetNewsData();
    }

    public function resetNewsData()
    {
        $this->news = new News();

        $this->newsImage = null;

        $this->dispatchBrowserEvent('refresh');
    }

    public function newNews()
    {
        $this->editing = false;
        $this->modalTitle = trans('crud.user_all_news.new_title');
        $this->resetNewsData();

        $this->showModal();
    }

    public function editNews(News $news)
    {
        $this->editing = true;
        $this->modalTitle = trans('crud.user_all_news.edit_title');
        $this->news = $news;

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

        if (!$this->news->user_id) {
            $this->authorize('create', News::class);

            $this->news->user_id = $this->user->id;
        } else {
            $this->authorize('update', $this->news);
        }

        if ($this->newsImage) {
            $this->news->image = $this->newsImage->store('public');
        }

        $this->news->save();

        $this->uploadIteration++;

        $this->hideModal();
    }

    public function destroySelected()
    {
        $this->authorize('delete-any', News::class);

        collect($this->selected)->each(function (string $id) {
            $news = News::findOrFail($id);

            if ($news->image) {
                Storage::delete($news->image);
            }

            $news->delete();
        });

        $this->selected = [];
        $this->allSelected = false;

        $this->resetNewsData();
    }

    public function toggleFullSelection()
    {
        if (!$this->allSelected) {
            $this->selected = [];
            return;
        }

        foreach ($this->user->allNews as $news) {
            array_push($this->selected, $news->id);
        }
    }

    public function render()
    {
        return view('livewire.user-all-news-detail', [
            'allNews' => $this->user->allNews()->paginate(20),
        ]);
    }
}
