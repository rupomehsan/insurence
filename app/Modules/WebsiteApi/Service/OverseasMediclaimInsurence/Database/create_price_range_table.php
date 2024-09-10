<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     php artisan migrate --path='\App\Modules\WebsiteApi\Service\OverseasMediclaimInsurence\Database\create_omi_price_range_table.php'
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('omi_price_range', function (Blueprint $table) {
            $table->id();
            $table->string('plan_name');
            $table->string('period_days');
            $table->integer('age_band_0_40_years');
            $table->integer('age_band_41_50_years');
            $table->integer('age_band_51_55_years');
            $table->integer('age_band_56_59_years');
            $table->integer('age_band_60_65_years');
            $table->integer('age_band_66_70_years');
            $table->integer('age_band_71_75_years');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('omi_price_range');
    }
};
