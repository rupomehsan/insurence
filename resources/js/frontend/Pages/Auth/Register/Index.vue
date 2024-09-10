<template>
    <div class="container">
        <div class="row mt-3 justify-content-center">
            <div class="col-lg-6 card my-5 p-2">
                <div class="account-heading mb-25">
                    <h2 class="text-center">Register</h2>
                </div>
                <hr />
                <div
                    class="account-form form-style p-20 mb-30 bg-fff box-shadow"
                >
                    <form @submit.prevent="submitHandlerForLogin">
                        <div class="row g-3 py-3 px-2">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="email" class="my-2"
                                        >Enter your name</label
                                    >
                                    <input
                                        type="email"
                                        class="form-control"
                                        name="name"
                                        id="name"
                                        placeholder="Your name"
                                    />
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="email" class="my-2"
                                        >Enter your email</label
                                    >
                                    <input
                                        type="email"
                                        class="form-control"
                                        name="email"
                                        id="email"
                                        placeholder="Your email"
                                    />
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="password" class="my-2"
                                        >Enter your password</label
                                    >
                                    <input
                                        type="password"
                                        class="form-control"
                                        id="password"
                                        placeholder="Your password"
                                        name="password"
                                    />
                                </div>
                            </div>

                            <div class="col-12">
                                <button
                                    class="btn btn-primary py-3 px-5"
                                    type="submit"
                                >
                                    Register
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    methods: {
        submitHandlerForLogin: async function () {
            let formData = new FormData(event.target);
            let response = await axios.post("login", formData);
            if (response.data.status === "success") {
                localStorage.setItem(
                    "admin_token",
                    response.data?.data?.access_token
                );
                if (response.data?.data?.user.role_id == 1) {
                    window.location.href = "admin";
                }
                if (response.data?.data?.user.role_id == 2) {
                    window.location.href = "profile";
                }
            }
        },
    },
};
</script>
<style lang="scss" scoped></style>
