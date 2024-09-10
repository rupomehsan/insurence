<?php

use App\Modules\PaymentGateway\SSLCommerZ\Controller\SslCommerzPaymentController;
use Illuminate\Support\Facades\Route;



/*
|--------------------------------------------------------------------------
| // SSLCOMMERZ Start
|--------------------------------------------------------------------------
*/

// Route::get('/checkout1', [SslCommerzPaymentController::class, 'exampleEasyCheckout']);
// Route::get('/checkout2', [SslCommerzPaymentController::class, 'exampleHostedCheckout']);

// Route::post('/pay', [SslCommerzPaymentController::class, 'index']);
// Route::post('/pay-via-ajax', [SslCommerzPaymentController::class, 'payViaAjax']);
Route::post('/success', [SslCommerzPaymentController::class, 'success']);
Route::post('/fail', [SslCommerzPaymentController::class, 'fail']);
Route::post('/cancel', [SslCommerzPaymentController::class, 'cancel']);

Route::post('/ipn', [SslCommerzPaymentController::class, 'ipn']);

/*
|--------------------------------------------------------------------------
| //SSLCOMMERZ END
|--------------------------------------------------------------------------
*/
