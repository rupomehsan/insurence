<?php


use Illuminate\Support\Facades\Route;
use App\Modules\PaymentGateway\SSLCommerZ\Controller\SslCommerzPaymentController;
use App\Modules\PaymentGateway\SSLCommerZ\Controller\MotorcycleSslCommerzPaymentController;


// SSLCOMMERZ Start
Route::prefix('v1')->middleware('auth:api')->group(function () {
    Route::post('/pay-via-ajax', [SslCommerzPaymentController::class, 'payViaAjax']);
    //note : others oroute in ssl_commerz_route.php in routes folder
});


//SSLCOMMERZ END
