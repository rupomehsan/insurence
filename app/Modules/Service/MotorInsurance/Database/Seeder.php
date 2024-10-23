<?php
namespace App\Modules\Service\MotorInsurance\Database;

use Illuminate\Database\Seeder as SeederClass;

class Seeder extends SeederClass
{
    /**
     * Run the database seeds.
     php artisan db:seed --class="\App\Modules\Service\MotorInsurance\Database\Seeder"
     */
    static $model = \App\Modules\Service\MotorInsurance\Models\Model::class;
    public function run(): void
    {

        self::$model::truncate();
        for ($i = 1; $i < 100; $i++) {
        self::$model::create([
            'name' => facker()->name,
            'mobile_number' => facker()->name,
            'registration_no' => facker()->name,
            'engine_no' => facker()->name,
            'chassis_no_manufacturer' => facker()->name,
            'upload_registration_copy' => facker()->name,
            'plan_type' => facker()->name,
            'capacity' => facker()->name,
            'insurance_start_date' => facker()->name,
            'motor_cycle_price' => facker()->name,
            'make_year' => facker()->name,
            'premium_cost' => facker()->name,
            'vat' => facker()->name,
            'total_cost' => facker()->name,
            ]);
        }
    }
}