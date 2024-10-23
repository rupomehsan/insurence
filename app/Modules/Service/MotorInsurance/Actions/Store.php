<?php

namespace App\Modules\Service\MotorInsurance\Actions;

class Store
{
    static $model = \App\Modules\Service\MotorInsurance\Models\Model::class;

    public static function execute($request)
    {
        try {

            $request = (object) $request;

            $premium = round($request->motor_cycle_price * 0.0215 + 200 + 195);
            $vat = round(($premium * 15) / 100);
            $total_cost = round($premium + $vat);





            $requestData = [
                'user_id' => $request->user_id ?? null,
                'order_id' => rand(1000000, 9999999999),
                'name' => $request->name ?? null,
                'mobile_number' => $request->mobile_number ?? null,
                'registration_no' => $request->registration_no ?? null,
                'engine_no' => $request->engine_no ?? null,
                'chassis_no' => $request->chassis_no ?? null,
                'manufacturer' => $request->manufacturer ?? null,
                'upload_registration_copy' => $request->upload_registration_copy ?? null,
                'plan_type' => $request->plan_type ?? null,
                'capacity' => $request->capacity ?? null,
                'insurance_start_date' => $request->insurance_start_date ?? null,
                'motor_cycle_price' => $request->motor_cycle_price ?? null,
                'make_year' => $request->make_year ?? null,
                'premium_cost' => $premium,
                'vat' =>  $vat,
                'total_cost' =>  $total_cost,
            ];

            if ($data = self::$model::query()->create($requestData)) {
                return $data;
            }
        } catch (\Exception $e) {
            return messageResponse($e->getMessage(), [], 500, 'server_error');
        }
    }
}
