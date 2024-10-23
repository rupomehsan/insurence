<?php

namespace App\Modules\WebsiteApi\Service\OverseasMediclaimInsurence\Actions;



class MoneryReceiptDetails
{
    static $model =     \App\Modules\OmiMoneyReceipt\Models\Model::class;

    public static function execute($mrpNo)
    {
        try {

            $data = self::$model::query()->where('money_receipt_no', $mrpNo)->first();
            if (!$data) {
                return messageResponse('Data not found...', [$mrpNo], 404, 'error');
            }
            return entityResponse($data);
        } catch (\Exception $e) {
            return messageResponse($e->getMessage(), [], 500, 'server_error');
        }
    }
}
