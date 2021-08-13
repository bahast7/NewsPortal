<?php

namespace Tests\Feature\Controllers;

use App\Models\Ads;
use App\Models\User;

use Tests\TestCase;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\RefreshDatabase;

class AdsControllerTest extends TestCase
{
    use RefreshDatabase, WithFaker;

    protected function setUp(): void
    {
        parent::setUp();

        $this->actingAs(
            User::factory()->create(['email' => 'admin@admin.com'])
        );

        $this->seed(\Database\Seeders\PermissionsSeeder::class);

        $this->withoutExceptionHandling();
    }

    /**
     * @test
     */
    public function it_displays_index_view_with_all_ads()
    {
        $allAds = Ads::factory()
            ->count(5)
            ->create();

        $response = $this->get(route('all-ads.index'));

        $response
            ->assertOk()
            ->assertViewIs('app.all_ads.index')
            ->assertViewHas('allAds');
    }

    /**
     * @test
     */
    public function it_displays_create_view_for_ads()
    {
        $response = $this->get(route('all-ads.create'));

        $response->assertOk()->assertViewIs('app.all_ads.create');
    }

    /**
     * @test
     */
    public function it_stores_the_ads()
    {
        $data = Ads::factory()
            ->make()
            ->toArray();

        $response = $this->post(route('all-ads.store'), $data);

        $this->assertDatabaseHas('ads', $data);

        $ads = Ads::latest('id')->first();

        $response->assertRedirect(route('all-ads.edit', $ads));
    }

    /**
     * @test
     */
    public function it_displays_show_view_for_ads()
    {
        $ads = Ads::factory()->create();

        $response = $this->get(route('all-ads.show', $ads));

        $response
            ->assertOk()
            ->assertViewIs('app.all_ads.show')
            ->assertViewHas('ads');
    }

    /**
     * @test
     */
    public function it_displays_edit_view_for_ads()
    {
        $ads = Ads::factory()->create();

        $response = $this->get(route('all-ads.edit', $ads));

        $response
            ->assertOk()
            ->assertViewIs('app.all_ads.edit')
            ->assertViewHas('ads');
    }

    /**
     * @test
     */
    public function it_updates_the_ads()
    {
        $ads = Ads::factory()->create();

        $user = User::factory()->create();

        $data = [
            'title' => $this->faker->sentence(10),
            'url' => $this->faker->url,
            'user_id' => $user->id,
        ];

        $response = $this->put(route('all-ads.update', $ads), $data);

        $data['id'] = $ads->id;

        $this->assertDatabaseHas('ads', $data);

        $response->assertRedirect(route('all-ads.edit', $ads));
    }

    /**
     * @test
     */
    public function it_deletes_the_ads()
    {
        $ads = Ads::factory()->create();

        $response = $this->delete(route('all-ads.destroy', $ads));

        $response->assertRedirect(route('all-ads.index'));

        $this->assertDeleted($ads);
    }
}
