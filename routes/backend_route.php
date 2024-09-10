<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

use Inertia\Inertia;

/*
|--------------------------------------------------------------------------
| Start Routes
|--------------------------------------------------------------------------
*/

Route::get('/admin', function () {
    return view('backend.dashboard');
})->name('admin.dashboard');

/*
|--------------------------------------------------------------------------
| End Routes
|--------------------------------------------------------------------------
*/
