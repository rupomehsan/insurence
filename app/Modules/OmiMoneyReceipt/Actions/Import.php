<?php

namespace App\Modules\OmiMoneyReceipt\Actions;

class Import
{
    static $model = \App\Modules\OmiMoneyReceipt\Models\Model::class;

    public static function execute()
    {
        try {
            foreach (request()->data as $row) {
                 self::$model::create([
                    "omi_order_id" => $row['omi_order_id'],

                    "money_receipt_no" => $row['money_receipt_no'],

                    "received_from" => $row['received_from'],

                    "amount_received" => $row['amount_received'],

                    "amount_received_in_word" => $row['amount_received_in_word'],

                    "payment_method" => $row['payment_method'],

                    "down_on_payment" => $row['down_on_payment'],

                    "issued_against" => $row['issued_against'],

                ]);
            }
            return messageResponse('Item Successfully updated', [], 200, 'success');
        } catch (\Exception $e) {
            return messageResponse($e->getMessage(),[], 500, 'server_error');
        }
    }
}