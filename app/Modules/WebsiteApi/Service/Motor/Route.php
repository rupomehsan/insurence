<?php

use App\Modules\WebsiteApi\Service\Motor\Controller;
use Illuminate\Support\Facades\Route;

Route::prefix('v1')->group(function () {
    Route::apiResource('motors', Controller::class);
    Route::post('motors/bulk-action', [Controller::class, 'bulkAction']);
});