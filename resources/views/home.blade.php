@extends('layouts.app')

@section('content')

<div class="container">


    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" />
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <div class="card-counter primary">
                    <i class="fa fa-code-fork"></i>
                    <span class="count-numbers">{{$news}}</span>
                    <span class="count-name">News</span>
                </div>
            </div>

            <div class="col-md-3">
                <div class="card-counter danger">
                    <i class="fa fa-ticket"></i>
                    <span class="count-numbers">{{$reco}}</span>
                    <span class="count-name">Comments & Reply</span>
                </div>
            </div>

            <div class="col-md-3">
                <div class="card-counter success">
                    <i class="fa fa-database"></i>
                    <span class="count-numbers">{{$views}}</span>
                    <span class="count-name">Views</span>
                </div>
            </div>

            <div class="col-md-3">
                <div class="card-counter info">
                    <i class="fa fa-users"></i>
                    <span class="count-numbers">{{$users}}</span>
                    <span class="count-name">Users</span>
                </div>
            </div>
        </div>
    </div>


    <!-- Card -->
    <div class="card" style="margin-top: 75px;">
        <div class="card-body">

            <!-- Table -->
            <table class="table">
                <h3>Recent News</h3>
                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Title</th>
                    <th scope="col">Created At</th>
                    <th scope="col">Action</th>
                </tr>
                </thead>

                <tbody>
                @foreach($allnews as $newss)
                <tr>
                    <th scope="row">{{$newss->id}}</th>
                    <td>{{$newss->title, 5}}</td>
                    <td>{{$newss->created_at}}</td>
                    <td>
                        @can('view' , $newss)
                        <a href="{{route('all-news.show', $newss)}}" type="button" class="btn btn-dark-green btn-sm m-0 py-1 px-2 mr-1">Preview</a>
                        @endcan
                        @can('update', $newss)
                        <a href="{{ route('all-news.edit', $newss) }}" type="button" class="btn btn-primary btn-sm m-0 py-1 px-2">Edit</a>
                        @endcan
                    </td>
                </tr>
                @endforeach
                </tbody>
            </table>

            <!-- Table -->

        </div>
    </div>
    <!-- Card -->

</div>
@endsection
