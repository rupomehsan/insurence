<template>
    <!-- header start -->
    <!-- Topbar Start -->
    <div
        class="container-fluid bg-dark text-white-50 py-2 px-0 d-none d-lg-block p-d-none"
    >
        <div class="row gx-0 align-items-center">
            <div class="col-lg-7 px-5 text-start">
                <div class="h-100 d-inline-flex align-items-center me-4">
                    <small class="fa fa-phone-alt me-2"></small>
                    <small>+012 345 6789</small>
                </div>
                <div class="h-100 d-inline-flex align-items-center me-4">
                    <small class="far fa-envelope-open me-2"></small>
                    <small>info@example.com</small>
                </div>
                <div class="h-100 d-inline-flex align-items-center me-4">
                    <small class="far fa-clock me-2"></small>
                    <small>Mon - Fri : 09 AM - 09 PM</small>
                </div>
            </div>
            <div class="col-lg-5 px-5 text-end">
                <div class="h-100 d-inline-flex align-items-center">
                    <a class="text-white-50 ms-4" href=""
                        ><i class="fab fa-facebook-f"></i
                    ></a>
                    <a class="text-white-50 ms-4" href=""
                        ><i class="fab fa-twitter"></i
                    ></a>
                    <a class="text-white-50 ms-4" href=""
                        ><i class="fab fa-linkedin-in"></i
                    ></a>
                    <a class="text-white-50 ms-4" href=""
                        ><i class="fab fa-instagram"></i
                    ></a>
                </div>
            </div>
        </div>
    </div>
    <!-- Topbar End -->

    <!-- Navbar Start -->
    <nav
        class="navbar navbar-expand-lg bg-white navbar-light sticky-top px-4 px-lg-5"
    >
        <Link href="/" class="navbar-brand d-flex align-items-center">
            <h1 class="m-0">
                <img
                    class="img-fluid me-3"
                    src="/frontend/img/icon/icon-02-primary.png"
                    alt=""
                />Insurance
            </h1>
        </Link>
        <button
            type="button"
            class="navbar-toggler"
            data-bs-toggle="collapse"
            data-bs-target="#navbarCollapse"
        >
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse p-d-none" id="navbarCollapse">
            <div class="navbar-nav mx-auto bg-light rounded pe-4 py-3 py-lg-0">
                <Link
                    href="/"
                    :class="[
                        'nav-item nav-link',
                        isActive('/') ? 'active' : '',
                    ]"
                    >Home</Link
                >
                <Link
                    href="/services"
                    :class="[
                        'nav-item nav-link',
                        isActive('/services') ? 'active' : '',
                    ]"
                    >Our Services</Link
                >
                <Link
                    href="/about-us"
                    :class="[
                        'nav-item nav-link',
                        isActive('/about-us') ? 'active' : '',
                    ]"
                    >About Us</Link
                >
                <Link
                    href="/contact-us"
                    :class="[
                        'nav-item nav-link',
                        isActive('/contact-us') ? 'active' : '',
                    ]"
                    >Contact Us</Link
                >
                <Link
                    href="/login"
                    :class="[
                        'nav-item nav-link',
                        isActive('/login') ? 'active' : '',
                    ]"
                    >Login</Link
                >
                <Link
                    href="/register"
                    :class="[
                        'nav-item nav-link',
                        isActive('/register') ? 'active' : '',
                    ]"
                    >Register</Link
                >
                <div>
                    <Link href="/profile">
                        <img
                            src="dummy.png"
                            title="Profile"
                            height="50"
                            width="50"
                            class="border rounded-circle p-1 c-pointer"
                            alt=""
                        />
                    </Link>
                </div>
            </div>
        </div>
        <!-- <a href="" class="btn btn-primary px-3 d-none d-lg-block"
            >Get A Quote</a
        > -->
    </nav>
    <!-- Navbar End -->
    <!-- header end -->
</template>

<script>
import { Link, usePage } from "@inertiajs/vue3";

export default {
    setup() {
        const page = usePage();

        function isActive(route) {
            return page.url === route;
        }

        return {
            isActive,
        };
    },
};
</script>
