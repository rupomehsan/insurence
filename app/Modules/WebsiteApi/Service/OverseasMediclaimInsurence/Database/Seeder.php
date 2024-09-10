<?php

namespace App\Modules\WebsiteApi\Service\OverseasMediclaimInsurence\Database;

use Illuminate\Database\Seeder as SeederClass;
use Illuminate\Support\Facades\DB;

class Seeder extends SeederClass
{
    /**
     * Run the database seeds.
     php artisan db:seed --class="\App\Modules\WebsiteApi\Service\OverseasMediclaimInsurence\Database\Seeder"
     */
    static $model = \App\Modules\WebsiteApi\Service\OverseasMediclaimInsurence\Models\Model::class;
    public function run(): void
    {
        $data = [
            [15, 1115, 1795, 2249, 2249, 2249, 7318, 10824, 'non schengen'],
            [30, 1795, 2923, 3666, 3666, 3666, 11631, 17189, 'non schengen'],
            [45, 2249, 3666, 4597, 4597, 4597, 14608, 21580, 'non schengen'],
            [60, 2343, 3456, 4567, 4567, 4567, 15789, 22345, 'non schengen'],
            [75, 2450, 3567, 4789, 4789, 4789, 16789, 23456, 'non schengen'],
            [90, 2560, 3678, 4890, 4890, 4890, 17890, 24567, 'non schengen'],
            [105, 2670, 3789, 5001, 5001, 5001, 18901, 25678, 'non schengen'],
            [120, 2780, 3890, 5112, 5112, 5112, 20012, 26789, 'non schengen'],
            [135, 2890, 4001, 5223, 5223, 5223, 21123, 27890, 'non schengen'],
            [150, 3000, 4112, 5334, 5334, 5334, 22234, 28901, 'non schengen'],
            [160, 3110, 4223, 5445, 5445, 5445, 23345, 30012, 'non schengen'],
        ];
        foreach ($data as $row) {
            DB::table('omi_price_range')->insert([
                'period_days' => $row[0],
                'age_band_0_40_years' => $row[1],
                'age_band_41_50_years' => $row[2],
                'age_band_51_55_years' => $row[3],
                'age_band_56_59_years' => $row[4],
                'age_band_60_65_years' => $row[5],
                'age_band_66_70_years' => $row[6],
                'age_band_71_75_years' => $row[7],
                'plan_name' => $row[8],
            ]);
        }
    }
}
