<?php

namespace Tests\Feature\Controllers;

use App\Models\User;
use App\Models\View;

use App\Models\News;

use Tests\TestCase;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\RefreshDatabase;

class ViewControllerTest extends TestCase
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
    public function it_displays_index_view_with_views()
    {
        $views = View::factory()
            ->count(5)
            ->create();

        $response = $this->get(route('views.index'));

        $response
            ->assertOk()
            ->assertViewIs('app.views.index')
            ->assertViewHas('views');
    }

    /**
     * @test
     */
    public function it_displays_create_view_for_view()
    {
        $response = $this->get(route('views.create'));

        $response->assertOk()->assertViewIs('app.views.create');
    }

    /**
     * @test
     */
    public function it_stores_the_view()
    {
        $data = View::factory()
            ->make()
            ->toArray();

        $response = $this->post(route('views.store'), $data);

        $this->assertDatabaseHas('views', $data);

        $view = View::latest('id')->first();

        $response->assertRedirect(route('views.edit', $view));
    }

    /**
     * @test
     */
    public function it_displays_show_view_for_view()
    {
        $view = View::factory()->create();

        $response = $this->get(route('views.show', $view));

        $response
            ->assertOk()
            ->assertViewIs('app.views.show')
            ->assertViewHas('view');
    }

    /**
     * @test
     */
    public function it_displays_edit_view_for_view()
    {
        $view = View::factory()->create();

        $response = $this->get(route('views.edit', $view));

        $response
            ->assertOk()
            ->assertViewIs('app.views.edit')
            ->assertViewHas('view');
    }

    /**
     * @test
     */
    public function it_updates_the_view()
    {
        $view = View::factory()->create();

        $news = News::factory()->create();

        $data = [
            'number' => $this->faker->randomNumber,
            'ip' => $this->faker->ipv4,
            'news_id' => $news->id,
        ];

        $response = $this->put(route('views.update', $view), $data);

        $data['id'] = $view->id;

        $this->assertDatabaseHas('views', $data);

        $response->assertRedirect(route('views.edit', $view));
    }

    /**
     * @test
     */
    public function it_deletes_the_view()
    {
        $view = View::factory()->create();

        $response = $this->delete(route('views.destroy', $view));

        $response->assertRedirect(route('views.index'));

        $this->assertDeleted($view);
    }
}
