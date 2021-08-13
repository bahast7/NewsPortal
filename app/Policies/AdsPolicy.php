<?php

namespace App\Policies;

use App\Models\Ads;
use App\Models\User;
use Illuminate\Auth\Access\HandlesAuthorization;

class AdsPolicy
{
    use HandlesAuthorization;

    /**
     * Determine whether the ads can view any models.
     *
     * @param  App\Models\User  $user
     * @return mixed
     */
    public function viewAny(User $user)
    {
        return $user->hasPermissionTo('list allads');
    }

    /**
     * Determine whether the ads can view the model.
     *
     * @param  App\Models\User  $user
     * @param  App\Models\Ads  $model
     * @return mixed
     */
    public function view(User $user, Ads $model)
    {
        return $user->hasPermissionTo('view allads');
    }

    /**
     * Determine whether the ads can create models.
     *
     * @param  App\Models\User  $user
     * @return mixed
     */
    public function create(User $user)
    {
        return $user->hasPermissionTo('create allads');
    }

    /**
     * Determine whether the ads can update the model.
     *
     * @param  App\Models\User  $user
     * @param  App\Models\Ads  $model
     * @return mixed
     */
    public function update(User $user, Ads $model)
    {
        return $user->hasPermissionTo('update allads');
    }

    /**
     * Determine whether the ads can delete the model.
     *
     * @param  App\Models\User  $user
     * @param  App\Models\Ads  $model
     * @return mixed
     */
    public function delete(User $user, Ads $model)
    {
        return $user->hasPermissionTo('delete allads');
    }

    /**
     * Determine whether the user can delete multiple instances of the model.
     *
     * @param  App\Models\User  $user
     * @param  App\Models\Ads  $model
     * @return mixed
     */
    public function deleteAny(User $user)
    {
        return $user->hasPermissionTo('delete allads');
    }

    /**
     * Determine whether the ads can restore the model.
     *
     * @param  App\Models\User  $user
     * @param  App\Models\Ads  $model
     * @return mixed
     */
    public function restore(User $user, Ads $model)
    {
        return false;
    }

    /**
     * Determine whether the ads can permanently delete the model.
     *
     * @param  App\Models\User  $user
     * @param  App\Models\Ads  $model
     * @return mixed
     */
    public function forceDelete(User $user, Ads $model)
    {
        return false;
    }
}
