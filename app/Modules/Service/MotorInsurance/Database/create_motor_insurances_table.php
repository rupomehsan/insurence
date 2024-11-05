<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     php artisan migrate --path='\App\Modules\Service\MotorInsurance\Database\create_motor_insurances_table.php'
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('motor_insurances', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('user_id')->nullable();
            $table->bigInteger('order_id')->nullable();
            $table->string('motor_type')->nullable();
            $table->string('name', 100)->nullable();
            $table->string('mobile_number', 100)->nullable();
            $table->string('registration_no', 100)->nullable();
            $table->string('engine_no', 100)->nullable();
            $table->string('chassis_no', 100)->nullable();
            $table->string('manufacturer', 100)->nullable();
            $table->string('upload_registration_copy', 100)->nullable();
            $table->string('plan_type', 100)->nullable();
            $table->integer('capacity')->nullable();
            $table->date('insurance_start_date')->nullable();
            $table->integer('motor_price')->nullable();
            $table->string('make_year', 100)->nullable();
            $table->integer('stamp_cost')->nullable();
            $table->float('premium_cost')->nullable();
            $table->integer('vat')->nullable();
            $table->float('total_cost')->nullable();

            $table->string('mr_no')->nullable();
            $table->string('policy_no')->nullable();
            $table->string('payment_method')->nullable();
            $table->string('payment_status')->nullable();

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
        Schema::dropIfExists('motor_insurances');
    }
};
