<?php

namespace App\Modules\Service\MotorInsurance\Actions;

class Store
{
    static $model = \App\Modules\Service\MotorInsurance\Models\Model::class;

    public static function execute($request)
    {
        try {



            $request = (object) $request;

            $lastData = self::$model::orderBy('id', 'desc')->first();

            if ($lastData) {
                $lastData->policy_no = $lastData->policy_no + 1;
                $lastData->mr_no = $lastData->mr_no + 1;
            }

            if ($request->motor_type == 'bike') {
                $premium = round($request->motor_price * 0.0215 + 200 + 195);
                $vat = round(($premium * 15) / 100);
                $total_cost = round($premium + $vat);
            } else {
                $premium = round($request->motor_price * 0.0215);
                $vat = round(($premium * 15) / 100);
                $total_cost = round($premium + $vat);
            }


            $requestData = [
                'user_id' => $request->user_id ?? null,
                'order_id' => rand(1000000, 9999999999),
                'name' => $request->name ?? null,
                'motor_type' => $request->motor_type ?? null,
                'mobile_number' => $request->mobile_number ?? null,
                'registration_no' => $request->registration_no ?? null,
                'engine_no' => $request->engine_no ?? null,
                'chassis_no' => $request->chassis_no ?? null,
                'manufacturer' => $request->manufacturer ?? null,
                'upload_registration_copy' => $request->upload_registration_copy ?? null,
                'plan_type' => $request->plan_type ?? null,
                'capacity' => $request->capacity ?? null,
                'insurance_start_date' => $request->insurance_start_date ?? null,
                'motor_price' => $request->motor_price ?? null,
                'make_year' => $request->make_year ?? null,
                'premium_cost' => $premium,
                'vat' =>  $vat,
                'total_cost' =>  $total_cost,
                'mr_no' => $lastData->mr_no ?? 123,
                'policy_no' =>  $lastData->policy_no ?? 12345,
            ];

            if ($data = self::$model::query()->create($requestData)) {
                return $data;
            }
        } catch (\Exception $e) {
            return messageResponse($e->getMessage(), [], 500, 'server_error');
        }
    }
}
