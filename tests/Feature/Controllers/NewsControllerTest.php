<?php

namespace Tests\Feature\Controllers;

use App\Models\User;
use App\Models\News;

use Tests\TestCase;
use Illuminate\Foundation\Testing\WithFaker;
use Illuminate\Foundation\Testing\RefreshDatabase;

class NewsControllerTest extends TestCase
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
    public function it_displays_index_view_with_all_news()
    {
        $allNews = News::factory()
            ->count(5)
            ->create();

        $response = $this->get(route('all-news.index'));

        $response
            ->assertOk()
            ->assertViewIs('app.all_news.index')
            ->assertViewHas('allNews');
    }

    /**
     * @test
     */
    public function it_displays_create_view_for_news()
    {
        $response = $this->get(route('all-news.create'));

        $response->assertOk()->assertViewIs('app.all_news.create');
    }

    /**
     * @test
     */
    public function it_stores_the_news()
    {
        $data = News::factory()
            ->make()
            ->toArray();

        $response = $this->post(route('all-news.store'), $data);

        $this->assertDatabaseHas('news', $data);

        $news = News::latest('id')->first();

        $response->assertRedirect(route('all-news.edit', $news));
    }

    /**
     * @test
     */
    public function it_displays_show_view_for_news()
    {
        $news = News::factory()->create();

        $response = $this->get(route('all-news.show', $news));

        $response
            ->assertOk()
            ->assertViewIs('app.all_news.show')
            ->assertViewHas('news');
    }

    /**
     * @test
     */
    public function it_displays_edit_view_for_news()
    {
        $news = News::factory()->create();

        $response = $this->get(route('all-news.edit', $news));

        $response
            ->assertOk()
            ->assertViewIs('app.all_news.edit')
            ->assertViewHas('news');
    }

    /**
     * @test
     */
    public function it_updates_the_news()
    {
        $news = News::factory()->create();

        $user = User::factory()->create();

        $data = [
            'title' => $this->faker->sentence(10),
            'content' => $this->faker->text,
            'user_id' => $user->id,
        ];

        $response = $this->put(route('all-news.update', $news), $data);

        $data['id'] = $news->id;

        $this->assertDatabaseHas('news', $data);

        $response->assertRedirect(route('all-news.edit', $news));
    }

    /**
     * @test
     */
    public function it_deletes_the_news()
    {
        $news = News::factory()->create();

        $response = $this->delete(route('all-news.destroy', $news));

        $response->assertRedirect(route('all-news.index'));

        $this->assertDeleted($news);
    }
}
