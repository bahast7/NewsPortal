<?php

namespace App\Http\Livewire;

use App\Models\News;
use Livewire\Component;
use App\Models\Comment;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;

class NewsCommentsDetail extends Component
{
    use AuthorizesRequests;

    public News $news;
    public Comment $comment;

    public $selected = [];
    public $editing = false;
    public $allSelected = false;
    public $showingModal = false;

    public $modalTitle = 'New Comment';

    protected $rules = [
        'comment.content' => ['required', 'max:255', 'string'],
    ];

    public function mount(News $news)
    {
        $this->news = $news;
        $this->resetCommentData();
    }

    public function resetCommentData()
    {
        $this->comment = new Comment();

        $this->dispatchBrowserEvent('refresh');
    }

    public function newComment()
    {
        $this->editing = false;
        $this->modalTitle = trans('crud.news_comments.new_title');
        $this->resetCommentData();

        $this->showModal();
    }

    public function editComment(Comment $comment)
    {
        $this->editing = true;
        $this->modalTitle = trans('crud.news_comments.edit_title');
        $this->comment = $comment;

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

        if (!$this->comment->news_id) {
            $this->authorize('create', Comment::class);

            $this->comment->news_id = $this->news->id;
        } else {
            $this->authorize('update', $this->comment);
        }

        $this->comment->save();

        $this->hideModal();
    }

    public function destroySelected()
    {
        $this->authorize('delete-any', Comment::class);

        Comment::whereIn('id', $this->selected)->delete();

        $this->selected = [];
        $this->allSelected = false;

        $this->resetCommentData();
    }

    public function toggleFullSelection()
    {
        if (!$this->allSelected) {
            $this->selected = [];
            return;
        }

        foreach ($this->news->comments as $comment) {
            array_push($this->selected, $comment->id);
        }
    }

    public function render()
    {
        return view('livewire.news-comments-detail', [
            'comments' => $this->news->comments()->paginate(20),
        ]);
    }
}
