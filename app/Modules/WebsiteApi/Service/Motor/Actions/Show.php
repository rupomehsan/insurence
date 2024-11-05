<?php

namespace App\Modules\WebsiteApi\Service\Motor\Actions;



class Show
{
    static $model = \App\Modules\WebsiteApi\Service\Motor\Models\Model::class;

    public static function execute($orderId)
    {
        try {
            $with = [];
            if (!$data = self::$model::query()->with($with)->where('order_id', $orderId)->first()) {
                return messageResponse('Data not found...', 404, 'error');
            }
            return entityResponse($data);
        } catch (\Exception $e) {
            return messageResponse($e->getMessage(), 500, 'server_error');
        }
    }
}
