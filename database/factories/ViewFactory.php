<?php

namespace Database\Factories;

use App\Models\View;
use Illuminate\Support\Str;
use Illuminate\Database\Eloquent\Factories\Factory;

class ViewFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = View::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'number' => $this->faker->randomNumber,
            'ip' => $this->faker->ipv4,
            'news_id' => \App\Models\News::factory(),
        ];
    }
}
