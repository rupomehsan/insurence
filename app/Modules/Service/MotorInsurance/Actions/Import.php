<?php

namespace App\Modules\Service\MotorInsurance\Actions;

class Import
{
    static $model = \App\Modules\Service\MotorInsurance\Models\Model::class;

    public static function execute()
    {
        try {
            foreach (request()->data as $row) {
                 self::$model::create([
                    "name" => $row['name'],

                    "mobile_number" => $row['mobile_number'],

                    "registration_no" => $row['registration_no'],

                    "engine_no" => $row['engine_no'],

                    "chassis_no_manufacturer" => $row['chassis_no_manufacturer'],

                    "upload_registration_copy" => $row['upload_registration_copy'],

                    "plan_type" => $row['plan_type'],

                    "capacity" => $row['capacity'],

                    "insurance_start_date" => $row['insurance_start_date'],

                    "motor_cycle_price" => $row['motor_cycle_price'],

                    "make_year" => $row['make_year'],

                    "premium_cost" => $row['premium_cost'],

                    "vat" => $row['vat'],

                    "total_cost" => $row['total_cost'],

                ]);
            }
            return messageResponse('Item Successfully updated', [], 200, 'success');
        } catch (\Exception $e) {
            return messageResponse($e->getMessage(),[], 500, 'server_error');
        }
    }
}