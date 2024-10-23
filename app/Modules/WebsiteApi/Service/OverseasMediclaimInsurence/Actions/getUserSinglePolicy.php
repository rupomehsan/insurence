<?php

namespace App\Modules\WebsiteApi\Service\OverseasMediclaimInsurence\Actions;

use Carbon\Carbon;
use Illuminate\Support\Facades\DB;

class getUserSinglePolicy
{
    static $model = \App\Modules\WebsiteApi\Service\OverseasMediclaimInsurence\Models\Model::class;

    public static function execute($id)
    {
        try {

            $data = self::$model::query()->where('id', $id)->first();

            if (!$data) {
                return messageResponse('Data not found...', [$id], 404, 'error');
            }
            $data->country_name = DB::table('location_countries')->where('id', $data->country_id)->first()->name;
            return entityResponse($data);
        } catch (\Exception $e) {
            return messageResponse($e->getMessage(), [], 500, 'server_error');
        }
    }
}
