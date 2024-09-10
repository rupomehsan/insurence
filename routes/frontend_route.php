<?php

use App\Modules\PaymentGateway\SSLCommerZ\Controller\SslCommerzPaymentController;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

use Inertia\Inertia;

/*
|--------------------------------------------------------------------------
| Start Routes
|--------------------------------------------------------------------------
*/

Route::get('/', [\App\Http\Controllers\Frontend\FrontendController::class, 'HomePage'])->name('HomePage');
Route::get('/services', [\App\Http\Controllers\Frontend\FrontendController::class, 'ServicesPage'])->name('ServicesPage');
Route::get('/service/{slug}', [\App\Http\Controllers\Frontend\FrontendController::class, 'BuyService'])->name('BuyService');
Route::get('/about-us', [\App\Http\Controllers\Frontend\FrontendController::class, 'AboutUsPage'])->name('AboutUsPage');
Route::get('/contact-us', [\App\Http\Controllers\Frontend\FrontendController::class, 'ContactUsPage'])->name('ContactUsPage');
Route::get('/omi/invoice', [\App\Http\Controllers\Frontend\FrontendController::class, 'invoice'])->name('invoice');
Route::get('/omi/money-receipt', [\App\Http\Controllers\Frontend\FrontendController::class, 'omiMoneyReceipt'])->name('omiMoneyReceipt');
Route::get('/login', [\App\Http\Controllers\Frontend\FrontendController::class, 'login'])->name('login');
Route::get('/register', [\App\Http\Controllers\Frontend\FrontendController::class, 'register'])->name('register');
Route::get('/profile', [\App\Http\Controllers\Frontend\FrontendController::class, 'profile'])->name('profile');
/*
|--------------------------------------------------------------------------
| End Routes
|--------------------------------------------------------------------------
*/


