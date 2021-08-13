@extends('layouts.app')

@section('content')
<div class="container">
    <div class="card">
        <div class="card-body">
            <h4 class="card-title">
                <a href="{{ route('all-ads.index') }}" class="mr-4"
                    ><i class="icon ion-md-arrow-back"></i
                ></a>
                @lang('crud.all_ads.show_title')
            </h4>

            <div class="mt-4">
                <div class="mb-4">
                    <h5>@lang('crud.all_ads.inputs.title')</h5>
                    <span>{{ $ads->title ?? '-' }}</span>
                </div>
                <div class="mb-4">
                    <h5>@lang('crud.all_ads.inputs.image')</h5>
                    <x-partials.thumbnail
                        src="{{ $ads->image ? \Storage::url($ads->image) : '' }}"
                        size="150"
                    />
                </div>
                <div class="mb-4">
                    <h5>@lang('crud.all_ads.inputs.url')</h5>
                    <span>{{ $ads->url ?? '-' }}</span>
                </div>
                <div class="mb-4">
                    <h5>@lang('crud.all_ads.inputs.user_id')</h5>
                    <span>{{ optional($ads->user)->name ?? '-' }}</span>
                </div>
            </div>

            <div class="mt-4">
                <a href="{{ route('all-ads.index') }}" class="btn btn-light">
                    <i class="icon ion-md-return-left"></i>
                    @lang('crud.common.back')
                </a>

                @can('create', App\Models\Ads::class)
                <a href="{{ route('all-ads.create') }}" class="btn btn-light">
                    <i class="icon ion-md-add"></i> @lang('crud.common.create')
                </a>
                @endcan
            </div>
        </div>
    </div>
</div>
@endsection
