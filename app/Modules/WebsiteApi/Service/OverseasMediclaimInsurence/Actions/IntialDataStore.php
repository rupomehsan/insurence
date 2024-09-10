<?php

namespace App\Modules\WebsiteApi\Service\OverseasMediclaimInsurence\Actions;

use Carbon\Carbon;
use Illuminate\Support\Facades\DB;

class IntialDataStore
{
    static $model = \App\Modules\WebsiteApi\Service\OverseasMediclaimInsurence\Models\Model::class;
    static $MoneyReceiptModel = \App\Modules\OmiMoneyReceipt\Models\Model::class;

    public static function execute($request)
    {
        try {

            $requestData = $request->validated();

            if ($request->input('step') == 1) {
                $requestData['order_id'] = rand(999999, 999999999);
                $isExist = self::$model::latest()->first();
                if ($data = self::$model::query()->create($requestData)) {
                    $netCost = 0;
                    $totalCost = 0;
                    $vat = 15; //%
                    $costPerMonth = 2400;
                    $costPerDay = $costPerMonth / 30;
                    $ageOfApplicant =  Carbon::parse($data->date_of_birth)->age;
                    $stayDuration = '';

                    if ($data->visa_type == 'tourist') {
                        $stayDuration = explode('-', $data->stay_duration)[1];
                        $netCost = self::getCost($ageOfApplicant, $stayDuration);
                    } else {
                        $stayDuration = $data->stay_duration * 30;
                        $netCost = $data->stay_duration * $costPerMonth;
                    }

                    $vatCost = ($netCost * $vat) / 100;
                    $totalCost = $netCost + $vatCost;

                    $data->age = $ageOfApplicant;
                    $data->stay_of_days = $stayDuration;
                    $data->net_cost =  $netCost;
                    $data->vat_cost =  $vatCost;
                    $data->total_cost =  $totalCost;



                    // Initialize default values
                    $defaultPolicyNo = 12345;
                    $defaultMrpNo = 123;

                    // Use null coalescing to assign values efficiently
                    $data->policy_no = $isExist ? ($isExist->policy_no + 1) : $defaultPolicyNo;
                    $data->mrp_no = $isExist ? ($isExist->mrp_no + 1) : $defaultMrpNo;

                    $data->update();

                    return messageResponse('Item added successfully', $data, 201);
                }
            }

            if ($request->input('step') == 2) {
                $data = self::$model::find($request->input('id'));
                if (!$data) {
                    return messageResponse('Item not found', [], 404, 'not_found');
                }

                $requestData['journy_date_end_to'] = Carbon::parse($request->journy_date_start_from)->copy()->addDays($data->stay_of_days)->toDateString();


                if ($data->update($requestData)) {
                    $data->country_name = DB::table('location_countries')->where('id', $data->country_id)->first()->name;

                    self::$MoneyReceiptModel::create([
                        'omi_order_id' => $data->order_id,
                        'money_receipt_no' => $data->mrp_no,
                        'received_from' => $data->name,
                        'amount_received' => $data->total_cost,
                        'amount_received_in_word' => numercToAlphabet(round($data->total_cost)),
                        'payment_method' => 'online',
                        'net_cost' => $data->net_cost,
                        'vat' => $data->vat_cost,
                        'down_on_payment' => null,
                        'issued_against' => null,
                        'created_at' => Carbon::now()->toDateTimeString(),
                    ]);

                    return messageResponse('Item added successfully', $data, 201);
                }
            }
        } catch (\Exception $e) {
            return messageResponse($e->getMessage(), [], 500, 'server_error');
        }
    }


    public static function getCost($age, $period)
    {
        $costRecord = DB::table('omi_price_range')->where('period_days', $period)->first();

        if (!$costRecord) {
            return null; // or handle this case as needed
        }

        // Determine the appropriate column based on the age
        if ($age <= 40) {
            return $costRecord->age_band_0_40_years;
        } elseif ($age <= 50) {
            return $costRecord->age_band_41_50_years;
        } elseif ($age <= 55) {
            return $costRecord->age_band_51_55_years;
        } elseif ($age <= 59) {
            return $costRecord->age_band_56_59_years;
        } elseif ($age <= 65) {
            return $costRecord->age_band_60_65_years;
        } elseif ($age <= 70) {
            return $costRecord->age_band_66_70_years;
        } elseif ($age <= 75) {
            return $costRecord->age_band_71_75_years;
        } else {
            return null; // or handle this case as needed
        }
    }
}
