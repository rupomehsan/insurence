<?php


use Illuminate\Support\Facades\Route;
use App\Modules\PaymentGateway\SSLCommerZ\Controller\SslCommerzPaymentController;


// SSLCOMMERZ Start
Route::prefix('v1')->group(function () {
    Route::post('/pay-via-ajax', [SslCommerzPaymentController::class, 'payViaAjax']);
    //note : others oroute in ssl_commerz_route.php in routes folder
});
//SSLCOMMERZ END
