<?php

use App\Modules\WebsiteApi\Service\OverseasMediclaimInsurence\Controller;
use Illuminate\Support\Facades\Route;

Route::prefix('v1')->group(function () {
    Route::prefix('overseas-mediclaim-insurences')->group(function () {
        Route::post('initial-data-store', [Controller::class, 'IntialDataStore']);
        Route::post('order-details/{orderId}', [Controller::class, 'OrderDetails']);
        Route::post('monery-receipt-details/{mrpNo}', [Controller::class, 'MoneryReceiptDetails']);
    });
});
