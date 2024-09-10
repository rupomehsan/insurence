<?php
namespace App\Modules\OmiMoneyReceipt\Database;

use Illuminate\Database\Seeder as SeederClass;

class Seeder extends SeederClass
{
    /**
     * Run the database seeds.
     php artisan db:seed --class="\App\Modules\OmiMoneyReceipt\Database\Seeder"
     */
    static $model = \App\Modules\OmiMoneyReceipt\Models\Model::class;
    public function run(): void
    {

        self::$model::truncate();
        for ($i = 1; $i < 100; $i++) {
        self::$model::create([
            'omi_order_id' => facker()->name,
            'money_receipt_no' => facker()->name,
            'received_from' => facker()->name,
            'amount_received' => facker()->name,
            'amount_received_in_word' => facker()->name,
            'payment_method' => facker()->name,
            'down_on_payment' => facker()->name,
            'issued_against' => facker()->name,
            ]);
        }
    }
}