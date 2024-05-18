<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Job;
use Faker\Generator as Faker;
use Illuminate\Support\Str;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Job>
 */
class JobFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'user_id' => 1,
            'title' => fake()->jobTitle,
            'description' => fake()->paragraph(5),
            'company_name' => fake()->company,
            'location' => fake()->city . ', ' . fake()->state,
            'job_type' => fake()->randomElement(['Full-Time', 'Part-Time', 'Contract']),
        ];
    }
}
