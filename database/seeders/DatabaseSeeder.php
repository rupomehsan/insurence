<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
//location seeder
use App\Modules\LocationManagement\Country\Database\Seeder as CountrySeeder;
use App\Modules\WebsiteApi\Service\OverseasMediclaimInsurence\Database\Seeder as OMISeeder;
use App\Modules\UserManagement\User\Database\Seeder as UserSeeder;
use App\Modules\UserManagement\Role\Database\Seeder as RoleSeeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */

    public function run(): void
    {
        $this->call([
            CountrySeeder::class,
            OMISeeder::class,
            UserSeeder::class,
            RoleSeeder::class,
        ]);
    }
}
