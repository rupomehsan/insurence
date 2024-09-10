<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use Inertia\Inertia;
use App\Http\Controllers\SslCommerzPaymentController;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;

/*
|--------------------------------------------------------------------------
| Frontend Routes
|--------------------------------------------------------------------------
*/

include __DIR__ . '/frontend_route.php';
/*
|--------------------------------------------------------------------------
| Admin Routes
|--------------------------------------------------------------------------
*/
include __DIR__ . '/backend_route.php';
/*
|--------------------------------------------------------------------------
| SSLCommerz Routes
|--------------------------------------------------------------------------
*/
include __DIR__ . '/ssl_commerz_route.php';



Route::get('/test', function () {
    $requestData = Carbon::parse("07-Sep-1976")
        ->addDays(10)
        ->format('Y-m-d');
    dd($requestData);
});


Route::get('/plan-set', function () {
    $data = DB::table('price_range')
        ->where('plan', null)
        ->update(['plan' => 'schengen']);

    dd($data);
});
