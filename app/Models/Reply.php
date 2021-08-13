<?php

namespace App\Models;

use App\Models\Scopes\Searchable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Reply extends Model
{
    use HasFactory;
    use Searchable;

    protected $fillable = ['content', 'comment_id'];

    protected $searchableFields = ['*'];

    public function comment()
    {
        return $this->belongsTo(Comment::class);
    }
}
