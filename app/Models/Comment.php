<?php

namespace App\Models;

use App\Models\Scopes\Searchable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Comment extends Model
{
    use HasFactory;
    use Searchable;

    protected $fillable = ['content', 'news_id'];

    protected $searchableFields = ['*'];

    public function news()
    {
        return $this->belongsTo(News::class);
    }

    public function replies()
    {
        return $this->hasMany(Reply::class);
    }
}
