<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     php artisan migrate --path='\App\Modules\OmiMoneyReceipt\Database\create_omi_money_receipts_table.php'
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('omi_money_receipts', function (Blueprint $table) {
            $table->id();
            $table->integer('omi_order_id')->nullable();
            $table->integer('money_receipt_no')->nullable();
            $table->string('received_from')->nullable();
            $table->float('amount_received')->nullable();
            $table->string('amount_received_in_word')->nullable();
            $table->string('payment_method')->nullable();
            $table->string('down_on_payment')->nullable();
            $table->string('issued_against')->nullable();
            $table->integer('stamp_cost')->default(0)->nullable();
            $table->integer('vat')->nullable();
            $table->integer('net_cost')->nullable();

            $table->bigInteger('creator')->unsigned()->nullable();
            $table->string('slug', 50)->nullable();
            $table->enum('status', ['active', 'inactive'])->default('active');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('omi_money_receipts');
    }
};
