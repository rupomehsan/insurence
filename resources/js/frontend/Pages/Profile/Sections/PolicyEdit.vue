<template>
    <div>
        <h2>User Policy Update</h2>
        <hr />
        <div
            class="account-form form-style p-20 mb-30 bg-fff box-shadow" >
            <form @submit.prevent="submitHandlerForLogin">
                <div class="row g-3 py-3 px-2">
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
                        <button class="btn btn-primary py-3 px-5" type="submit">
                            Login
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</template>

<script>
export default {};
</script>

<style lang="scss" scoped></style>
