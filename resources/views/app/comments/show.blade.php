@extends('layouts.app')

@section('content')
<div class="container">
    <div class="card">
        <div class="card-body">
            <h4 class="card-title">
                <a href="{{ route('comments.index') }}" class="mr-4"
                    ><i class="icon ion-md-arrow-back"></i
                ></a>
                @lang('crud.comments.show_title')
            </h4>

            <div class="mt-4">
                <div class="mb-4">
                    <h5>@lang('crud.comments.inputs.content')</h5>
                    <span>{{ $comment->content ?? '-' }}</span>
                </div>
                <div class="mb-4">
                    <h5>@lang('crud.comments.inputs.news_id')</h5>
                    <span>{{ optional($comment->news)->title ?? '-' }}</span>
                </div>
            </div>

            <div class="mt-4">
                <a href="{{ route('comments.index') }}" class="btn btn-light">
                    <i class="icon ion-md-return-left"></i>
                    @lang('crud.common.back')
                </a>

                @can('create', App\Models\Comment::class)
                <a href="{{ route('comments.create') }}" class="btn btn-light">
                    <i class="icon ion-md-add"></i> @lang('crud.common.create')
                </a>
                @endcan
            </div>
        </div>
    </div>
</div>
@endsection
