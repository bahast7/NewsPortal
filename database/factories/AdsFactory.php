<?php

namespace Database\Factories;

use App\Models\Ads;
use Illuminate\Support\Str;
use Illuminate\Database\Eloquent\Factories\Factory;

class AdsFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Ads::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'title' => $this->faker->sentence(10),
            'url' => $this->faker->url,
            'user_id' => \App\Models\User::factory(),
        ];
    }
}
