<?php

namespace App\Policies;

use App\Models\User;
use App\Models\Reply;
use Illuminate\Auth\Access\HandlesAuthorization;

class ReplyPolicy
{
    use HandlesAuthorization;

    /**
     * Determine whether the reply can view any models.
     *
     * @param  App\Models\User  $user
     * @return mixed
     */
    public function viewAny(User $user)
    {
        return $user->hasPermissionTo('list replies');
    }

    /**
     * Determine whether the reply can view the model.
     *
     * @param  App\Models\User  $user
     * @param  App\Models\Reply  $model
     * @return mixed
     */
    public function view(User $user, Reply $model)
    {
        return $user->hasPermissionTo('view replies');
    }

    /**
     * Determine whether the reply can create models.
     *
     * @param  App\Models\User  $user
     * @return mixed
     */
    public function create(User $user)
    {
        return $user->hasPermissionTo('create replies');
    }

    /**
     * Determine whether the reply can update the model.
     *
     * @param  App\Models\User  $user
     * @param  App\Models\Reply  $model
     * @return mixed
     */
    public function update(User $user, Reply $model)
    {
        return $user->hasPermissionTo('update replies');
    }

    /**
     * Determine whether the reply can delete the model.
     *
     * @param  App\Models\User  $user
     * @param  App\Models\Reply  $model
     * @return mixed
     */
    public function delete(User $user, Reply $model)
    {
        return $user->hasPermissionTo('delete replies');
    }

    /**
     * Determine whether the user can delete multiple instances of the model.
     *
     * @param  App\Models\User  $user
     * @param  App\Models\Reply  $model
     * @return mixed
     */
    public function deleteAny(User $user)
    {
        return $user->hasPermissionTo('delete replies');
    }

    /**
     * Determine whether the reply can restore the model.
     *
     * @param  App\Models\User  $user
     * @param  App\Models\Reply  $model
     * @return mixed
     */
    public function restore(User $user, Reply $model)
    {
        return false;
    }

    /**
     * Determine whether the reply can permanently delete the model.
     *
     * @param  App\Models\User  $user
     * @param  App\Models\Reply  $model
     * @return mixed
     */
    public function forceDelete(User $user, Reply $model)
    {
        return false;
    }
}
