<?php

namespace App\Modules\WebsiteApi\Service\OverseasMediclaimInsurence\Actions;

use Carbon\Carbon;
use Illuminate\Support\Facades\DB;

class OrderDetails
{
    static $model = \App\Modules\WebsiteApi\Service\OverseasMediclaimInsurence\Models\Model::class;

    public static function execute($orderId)
    {
        try {

            $data = self::$model::query()->where('order_id', $orderId)->first();
            $data->country_name = DB::table('location_countries')->where('id', $data->country_id)->first()->name;
            if (!$data) {
                return messageResponse('Data not found...', [$orderId], 404, 'error');
            }
            return entityResponse($data);
        } catch (\Exception $e) {
            return messageResponse($e->getMessage(), [], 500, 'server_error');
        }
    }
}
