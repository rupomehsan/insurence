<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Inertia\Inertia;

class FrontendController extends Controller
{

    public function HomePage()
    {
        return Inertia::render('Home/Index');
    }
    public function ServicesPage()
    {
        return Inertia::render('Service/Index');
    }
    public function BuyService($slug)
    {
        return Inertia::render('Service/BuyService', [
            'slug' => $slug
        ]);
    }
    public function AboutUsPage()
    {
        return Inertia::render('About/Index');
    }
    public function ContactUsPage()
    {
        return Inertia::render('Contact/Index');
    }
    public function invoice()
    {
        return Inertia::render('Service/Sections/OMI/Invoice');
    }
    public function omiMoneyReceipt()
    {
        return Inertia::render('Service/Sections/OMI/MoneyReceipt');
    }

    public function login()
    {
        return Inertia::render('Auth/Login/Index');
    }
    public function register()
    {
        return Inertia::render('Auth/Register/Index');
    }
    public function profile()
    {
        return Inertia::render('Profile/Index');
    }
}
