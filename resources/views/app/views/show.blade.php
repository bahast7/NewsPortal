@extends('layouts.app')

@section('content')
<div class="container">
    <div class="card">
        <div class="card-body">
            <h4 class="card-title">
                <a href="{{ route('views.index') }}" class="mr-4"
                    ><i class="icon ion-md-arrow-back"></i
                ></a>
                @lang('crud.views.show_title')
            </h4>

            <div class="mt-4">
                <div class="mb-4">
                    <h5>@lang('crud.views.inputs.number')</h5>
                    <span>{{ $view->number ?? '-' }}</span>
                </div>
                <div class="mb-4">
                    <h5>@lang('crud.views.inputs.ip')</h5>
                    <span>{{ $view->ip ?? '-' }}</span>
                </div>
                <div class="mb-4">
                    <h5>@lang('crud.views.inputs.news_id')</h5>
                    <span>{{ optional($view->news)->title ?? '-' }}</span>
                </div>
            </div>

            <div class="mt-4">
                <a href="{{ route('views.index') }}" class="btn btn-light">
                    <i class="icon ion-md-return-left"></i>
                    @lang('crud.common.back')
                </a>

                @can('create', App\Models\View::class)
                <a href="{{ route('views.create') }}" class="btn btn-light">
                    <i class="icon ion-md-add"></i> @lang('crud.common.create')
                </a>
                @endcan
            </div>
        </div>
    </div>
</div>
@endsection
