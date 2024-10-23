<?php

use App\Modules\WebsiteApi\Service\OverseasMediclaimInsurence\Controller;
use Illuminate\Support\Facades\Route;

Route::prefix('v1')->middleware('auth:api')->group(function () {
    Route::prefix('overseas-mediclaim-insurences')->group(function () {
        Route::post('initial-data-store', [Controller::class, 'IntialDataStore']);
    });
});
Route::prefix('v1')->middleware('auth:api')->group(function () {

    Route::get('get-all-user-policies', [Controller::class, 'getAllUserPolicies']);
    Route::get('get-single-policy/{id}', [Controller::class, 'getUserSinglePolicy']);
    Route::post('update-policy/{id}', [Controller::class, 'UpdatePolicy']);
});

Route::prefix('v1')->group(function () {
    Route::prefix('overseas-mediclaim-insurences')->group(function () {
        Route::post('order-details/{orderId}', [Controller::class, 'OrderDetails']);
        Route::post('monery-receipt-details/{mrpNo}', [Controller::class, 'MoneryReceiptDetails']);
    });
});
