<nav>
    <div class="container">
<div class="l-navbar" id="nav-bar">
    @auth
    <nav class="nav">

        <div> <a href="{{ url('/') }}" class="nav_logo"> <i class='bx bx-layer nav_logo-icon'></i> <span class="nav_logo-name">NewsPortal</span> </a>
            <div class="nav_list"> <a href="{{ route('home') }}" class="nav_link active"> <i class='bx bx-grid-alt nav_icon' data-toggle="tooltip" data-placement="top" title="Dashboard"></i> <span class="nav_name">Dashboard</span> </a>
                @can('view-any', App\Models\User::class)
                <a href="{{ route('users.index') }}" class="nav_link"> <i class='bx bx-user nav_icon' data-toggle="tooltip" data-placement="top" title="Users"></i> <span class="nav_name">Users</span> </a>
                @endcan
                @can('view-any', App\Models\News::class)
                    <a href="{{ route('all-news.index') }}" class="nav_link"> <i class='bx bx-message-square-detail nav_icon' data-toggle="tooltip" data-placement="top" title="News"></i> <span class="nav_name">All News</span> </a>
                @endcan
                @can('view-any', App\Models\Category::class)
                    <a href="{{ route('categories.index') }}" class="nav_link"> <i class='bx bx-bookmark nav_icon' data-toggle="tooltip" data-placement="top" title="Category"></i> <span class="nav_name">Categories</span> </a>
                @endcan
                @can('view-any', App\Models\Ads::class)
                    <a href="{{ route('all-ads.index') }}" class="nav_link"> <i class='bx bx-blanket nav_icon' data-toggle="tooltip" data-placement="top" title="Ads"></i> <span class="nav_name">All Ads</span> </a>
                @endcan
                @can('view-any', App\Models\Comment::class)
                    <a href="{{ route('comments.index') }}" class="nav_link"> <i class='bx bx-comment nav_icon' data-toggle="tooltip" data-placement="top" title="Comments"></i> <span class="nav_name">Comments</span> </a>
                @endcan
                @can('view-any', App\Models\View::class)
                    <a href="{{ route('views.index') }}" class="nav_link"> <i class='bx bx-bar-chart-alt-2 nav_icon' data-toggle="tooltip" data-placement="top" title="Views"></i> <span class="nav_name">Views</span> </a>
                @endcan
                @if (Auth::user()->can('view-any', Spatie\Permission\Models\Role::class) ||
                                       Auth::user()->can('view-any', Spatie\Permission\Models\Permission::class))
                            @can('view-any', Spatie\Permission\Models\Role::class)
                                <a href="{{ route('roles.index') }}" class="nav_link"> <i class='bx bx-body nav_icon' data-toggle="tooltip" data-placement="top" title="Roles"></i> <span class="nav_name">Roles</span> </a>
                            @endcan

                            @can('view-any', Spatie\Permission\Models\Permission::class)
                                    <a href="{{ route('permissions.index') }}" class="nav_link" data-toggle="tooltip" data-placement="top" title="Permissions"> <i class='bx bx-briefcase nav_icon'></i> <span class="nav_name">Permissions</span> </a>
                            @endcan
                        </div>
                @endif


            <a href="{{ route('logout') }}" class="nav_link" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                    <i class='bx bx-log-out nav_icon'></i> <span class="nav_name">SignOut</span>
            </a>

            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                {{ csrf_field() }}
            </form>
        </div>

        </div>
</div>
    @endauth

</nav>
