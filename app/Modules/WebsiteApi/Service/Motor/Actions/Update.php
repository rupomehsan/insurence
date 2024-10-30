<?php

namespace App\Modules\WebsiteApi\Service\Motor\Actions;

use App\Modules\WebsiteApi\Service\Motor\Validations\Validation;

class Update
{
    static $model = \App\Modules\WebsiteApi\Service\Motor\Models\Model::class;

    public static function execute($orderId)
    {
        try {

            if (!$data = self::$model::query()->where('order_id', $orderId)->first()) {
                return messageResponse('Data not found...', 404, 'error');
            }

            $requestData = request()->all();

            if (request()->hasFile('upload_registration_copy')) {
                $image = request()->file('upload_registration_copy');
                $requestData['upload_registration_copy'] = uploader($image, 'uploads/registration_copy');
            }

            $data->update($requestData);
            return messageResponse('Item updated successfully');
        } catch (\Exception $e) {
            return messageResponse($e->getMessage(),[], 500, 'server_error');
        }
    }
}
