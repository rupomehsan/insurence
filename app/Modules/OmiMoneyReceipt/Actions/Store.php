<?php

namespace App\Modules\OmiMoneyReceipt\Actions;

class Store
{
    static $model = \App\Modules\OmiMoneyReceipt\Models\Model::class;

    public static function execute($request)
    {
        try {
            $requestData = $request->validated();

            $isExist = self::$model::latest()->first();
            $defaultMrpNo = 123;
            $requestData['money_receipt_no'] = $isExist ? ($isExist->money_receipt_no + 1) : $defaultMrpNo;
            $requestData['vat'] = ($requestData['amount_received'] * 15) / 100;
            $requestData['net_cost'] = $requestData['amount_received'];
            $requestData['amount_received'] =  $requestData['net_cost'] + $requestData['stamp_cost'] + $requestData['vat'];
            $requestData['amount_received_in_word'] = numercToAlphabet(round($requestData['amount_received']));
            $requestData['payment_method'] = "offline";
            $requestData['issued_against'] = "EICL/CO/FC-";

            


            if ($data = self::$model::query()->create($requestData)) {

                return messageResponse('Item added successfully', $data, 201);
            }
        } catch (\Exception $e) {
            return messageResponse($e->getMessage(), [], 500, 'server_error');
        }
    }
}
