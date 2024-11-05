<?php

use App\Modules\WebsiteApi\Service\Motor\Controller;
use Illuminate\Support\Facades\Route;

Route::prefix('v1')->middleware('auth:api')->group(function () {
    Route::post('motor-cycle-insurance/update/{orderId}', [Controller::class, 'update']);
    Route::post('motors/bulk-action', [Controller::class, 'bulkAction']);
    Route::get('motor-insurance/order-details/{slug}', [Controller::class, 'show']);
});
