<?php

namespace App\Modules\WebsiteApi\Service\OverseasMediclaimInsurence\Actions;

use Carbon\Carbon;
use Illuminate\Support\Facades\DB;

class UpdatePolicy
{
    static $model = \App\Modules\WebsiteApi\Service\OverseasMediclaimInsurence\Models\Model::class;
    static $MoneyReceiptModel = \App\Modules\OmiMoneyReceipt\Models\Model::class;

    public static function execute($request, $id)
    {
        try {

            if (!$data = self::$model::query()->where('id', $id)->first()) {
                return messageResponse('Data not found...', 404, 'error');
            }

            $requestData = $request->validated();


            $data->update($requestData);

            return messageResponse('Item Updated successfully', $data, 201);
        } catch (\Exception $e) {
            return messageResponse($e->getMessage(), [], 500, 'server_error');
        }
    }
}
