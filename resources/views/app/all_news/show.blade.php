@extends('layouts.app')

@section('content')
<div class="container">
    <div class="card">
        <div class="card-body">
            <h4 class="card-title">
                <a href="{{ route('all-news.index') }}" class="mr-4"
                    ><i class="icon ion-md-arrow-back"></i
                ></a>
                @lang('crud.all_news.show_title')
            </h4>

            <div class="mt-4">
                <div class="mb-4">
                    <h5>@lang('crud.all_news.inputs.title')</h5>
                    <span>{{ $news->title ?? '-' }}</span>
                </div>
                <div class="mb-4">
                    <h5>@lang('crud.all_news.inputs.content')</h5>
                    <span>{{ $news->content ?? '-' }}</span>
                </div>
                <div class="mb-4">
                    <h5>@lang('crud.all_news.inputs.image')</h5>
                    <x-partials.thumbnail
                        src="{{ $news->image ? \Storage::url($news->image) : '' }}"
                        size="150"
                    />
                </div>
                <div class="mb-4">
                    <h5>@lang('crud.all_news.inputs.user_id')</h5>
                    <span>{{ optional($news->user)->name ?? '-' }}</span>
                </div>
            </div>

            <div class="mt-4">
                <a href="{{ route('all-news.index') }}" class="btn btn-light">
                    <i class="icon ion-md-return-left"></i>
                    @lang('crud.common.back')
                </a>

                @can('create', App\Models\News::class)
                <a href="{{ route('all-news.create') }}" class="btn btn-light">
                    <i class="icon ion-md-add"></i> @lang('crud.common.create')
                </a>
                @endcan
            </div>
        </div>
    </div>
</div>
@endsection
