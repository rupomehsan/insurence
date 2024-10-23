<?php
namespace App\Modules\WebsiteApi\Service\Motor\Database;

use Illuminate\Database\Seeder as SeederClass;

class Seeder extends SeederClass
{
    /**
     * Run the database seeds.
     php artisan db:seed --class="\App\Modules\WebsiteApi\Service\Motor\Database\Seeder"
     */
    static $model = \App\Modules\WebsiteApi\Service\Motor\Models\Model::class;
    public function run(): void
    {

        self::$model::truncate();
        for ($i = 1; $i < 100; $i++) {
        self::$model::create([
            'visa_type' => facker()->name,
            'country_id' => facker()->name,
            'passport_no' => facker()->name,
            'stay_duration' => facker()->name,
            'mobile_number' => facker()->name,
            ]);
        }
    }
}