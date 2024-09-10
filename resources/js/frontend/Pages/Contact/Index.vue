<template>
    <!-- Page Header Start -->
    <div
        class="container-fluid page-header py-5 mb-5 wow fadeIn"
        data-wow-delay="0.1s"
    >
        <div class="container py-5">
            <h1 class="display-4 animated slideInDown mb-4">Contact Us</h1>
            <nav aria-label="breadcrumb animated slideInDown">
                <ol class="breadcrumb mb-0">
                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                    <li class="breadcrumb-item"><a href="#">Pages</a></li>
                    <li class="breadcrumb-item active" aria-current="page">
                        Contact Us
                    </li>
                </ol>
            </nav>
        </div>
    </div>
    <!-- Page Header End -->

    <!-- Contact Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="row g-5">
                <div class="col-lg-6 wow fadeIn" data-wow-delay="0.1s">
                    <h1 class="display-6 mb-5">
                        If You Have Any Query, Please Contact Us
                    </h1>
                    <p class="mb-4">
                        The contact form is currently inactive. Get a functional
                        and working contact form with Ajax & PHP in a few
                        minutes. Just copy and paste the files, add a little
                        code and you're done.
                        <a href="https://htmlcodex.com/contact-form"
                            >Download Now</a
                        >.
                    </p>
                    <form>
                        <div class="row g-3">
                            <div class="col-md-6">
                                <div class="form-floating">
                                    <input
                                        type="text"
                                        class="form-control"
                                        id="name"
                                        placeholder="Your Name"
                                    />
                                    <label for="name">Your Name</label>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-floating">
                                    <input
                                        type="email"
                                        class="form-control"
                                        id="email"
                                        placeholder="Your Email"
                                    />
                                    <label for="email">Your Email</label>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-floating">
                                    <input
                                        type="text"
                                        class="form-control"
                                        id="subject"
                                        placeholder="Subject"
                                    />
                                    <label for="subject">Subject</label>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-floating">
                                    <textarea
                                        class="form-control"
                                        placeholder="Leave a message here"
                                        id="message"
                                        style="height: 100px"
                                    ></textarea>
                                    <label for="message">Message</label>
                                </div>
                            </div>
                            <div class="col-12">
                                <button
                                    class="btn btn-primary py-3 px-5"
                                    type="submit"
                                >
                                    Send Message
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
                <div
                    class="col-lg-6 wow fadeIn"
                    data-wow-delay="0.5s"
                    style="min-height: 450px"
                >
                    <div
                        class="position-relative rounded overflow-hidden h-100"
                    >
                        <iframe
                            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14601.768257271893!2d90.36453466421511!3d23.802874490723212!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c0d33532b3fb%3A0x2b27b0c01cb2bc0d!2sMirpur-10%2C%20Dhaka!5e0!3m2!1sen!2sbd!4v1723947653959!5m2!1sen!2sbd"
                           class="w-100 h-100"
                            style="border: 0"
                            allowfullscreen=""
                            loading="lazy"
                            referrerpolicy="no-referrer-when-downgrade"
                        ></iframe>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Contact End -->
</template>

<script>
export default {};
</script>

<style lang="scss" scoped></style>
