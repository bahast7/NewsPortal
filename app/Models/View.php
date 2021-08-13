<?php

namespace App\Models;

use App\Models\Scopes\Searchable;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class View extends Model
{
    use HasFactory;
    use Searchable;

    protected $fillable = ['number', 'ip', 'news_id'];

    protected $searchableFields = ['*'];

    public function news()
    {
        return $this->belongsTo(News::class);
    }
}
