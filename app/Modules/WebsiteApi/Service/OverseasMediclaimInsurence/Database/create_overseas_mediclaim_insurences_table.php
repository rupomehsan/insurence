<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     php artisan migrate --path='\App\Modules\WebsiteApi\Service\OverseasMediclaimInsurence\Database\create_omi_overseas_mediclaim_insurences_table.php'
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('omi_overseas_mediclaim_insurences', function (Blueprint $table) {
            $table->id();
            $table->integer('user_id')->nullable();
            $table->integer('order_id')->nullable();
            $table->integer('country_id')->nullable();
            $table->string('name', 50)->nullable();
            $table->string('email', 50)->nullable();
            $table->string('visa_type', 50)->nullable();
            $table->string('passport_no', 50)->nullable();
            $table->string('stay_duration', 10)->nullable();
            $table->string('mobile_number', 20)->nullable();
            $table->date('date_of_birth',)->nullable();
            $table->date('journy_date_start_from')->nullable();
            $table->date('journy_date_end_to')->nullable();
            $table->string('address')->nullable();
            $table->string('occupation')->nullable();

            $table->integer('age')->nullable();
            $table->float('total_cost')->nullable();
            $table->float('vat_cost')->nullable();
            $table->float('net_cost')->nullable();
            $table->integer('stay_of_days',)->nullable();

            $table->bigInteger('mrp_no')->nullable();
            $table->bigInteger('policy_no')->nullable();


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
        Schema::dropIfExists('omi_overseas_mediclaim_insurences');
    }
};
