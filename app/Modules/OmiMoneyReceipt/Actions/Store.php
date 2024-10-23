<?php

namespace App\Modules\OmiMoneyReceipt\Actions;

class Store
{
    static $model = \App\Modules\OmiMoneyReceipt\Models\Model::class;
    static $OMImodel = \App\Modules\WebsiteApi\Service\OverseasMediclaimInsurence\Models\Model::class;

    public static function execute($request)
    {
        try {
            $requestData = $request->validated();
            $defaultMrpNo = 123;
            $maxMoneyReceiptInModel = self::$model::max('money_receipt_no') ?? $defaultMrpNo;
            $maxMoneyReceiptInOMIModel = self::$OMImodel::max('mrp_no') ?? $defaultMrpNo;
            $money_receipt_no = max($maxMoneyReceiptInModel, $maxMoneyReceiptInOMIModel) + 1;

            $requestData['money_receipt_no'] = $money_receipt_no;
            $requestData['vat_percent'] =  $requestData['vat_percent'] ?? 0;
            $requestData['vat'] = ($requestData['amount_received'] *  ($requestData['vat_percent']) ?? 0) / 100;
            $requestData['net_cost'] = $requestData['amount_received'];
            $requestData['amount_received'] =  $requestData['net_cost'] + $requestData['stamp_cost'] + $requestData['vat'];
            $requestData['amount_received_in_word'] = numercToAlphabet(round($requestData['amount_received']));
            $requestData['payment_method'] = $requestData['payment_method'];
            $requestData['issued_against'] = $requestData['issued_against'];
            $requestData['mode_of_payment_date'] = $requestData['mode_of_payment_date'];
            $requestData['creator'] = auth()->id();

            if ($data = self::$model::query()->create($requestData)) {

                return messageResponse('Item added successfully', $data, 201);
            }
        } catch (\Exception $e) {
            return messageResponse($e->getMessage(), [], 500, 'server_error');
        }
    }
}
