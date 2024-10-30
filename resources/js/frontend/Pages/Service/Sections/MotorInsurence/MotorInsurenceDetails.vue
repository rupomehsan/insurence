<template>
    <div class="container bg-light p-5 mt-5">
        <div class="text-center mx-auto" style="max-width: 500px">
            <h5 class="my-3">Vehicle Information</h5>
        </div>
        <form @submit.prevent="submitHandler">
            <div class="row justify-content-center align-items-center">
                <div class="col-md-7">
                    <div class="row align-items-center my-3">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label for="" class="fw-bold"
                                    >registration_no :
                                </label>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="form-group">
                                <input
                                    class="form-control"
                                    name="registration_no"
                                    id=""
                                />
                            </div>
                        </div>
                    </div>
                    <div class="row align-items-center my-3">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label for="" class="fw-bold"
                                    >engine_no :
                                </label>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="form-group">
                                <input
                                    class="form-control"
                                    name="engine_no"
                                    id=""
                                />
                            </div>
                        </div>
                    </div>

                    <div class="row align-items-center my-3">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label for="" class="fw-bold"
                                    >engine_no :
                                </label>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="form-group">
                                <input
                                    type="number"
                                    class="form-control"
                                    name="engine_no"
                                    id=""
                                />
                            </div>
                        </div>
                    </div>
                    <div class="row align-items-center my-3">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label for="" class="fw-bold"
                                    >chassis_no :
                                </label>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="form-group">
                                <input
                                    type="number"
                                    class="form-control"
                                    name="chassis_no"
                                    id=""
                                />
                            </div>
                        </div>
                    </div>
                    <div class="row align-items-center my-3">
                        <div class="col-md-3 m-0 p-0">
                            <div class="form-group">
                                <label for="" class="fw-bold"
                                    >manufacturer :
                                </label>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="form-group">
                                <input
                                    type="date"
                                    class="form-control"
                                    name="manufacturer"
                                    id=""
                                />
                            </div>
                        </div>
                    </div>
                    <div class="row align-items-center my-3">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label for="" class="fw-bold"
                                    >upload_registration_copy :
                                </label>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="form-group">
                                <input
                                    type="file"
                                    class="form-control"
                                    name="upload_registration_copy"
                                    id=""
                                />
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="text-center">
                <button type="submit" class="btn btn-primary rounded-0 px-5">
                    Submit
                </button>
            </div>
        </form>
    </div>
</template>

<script>
export default {
    data: () => ({
        order_id: "",
    }),
    created: async function () {
        this.order_id = window.location.href.split("/").pop();
    },
    methods: {
        submitHandler: async function () {
            let token = localStorage.getItem("user_token");
            let formData = new FormData(event.target);
            let request = await axios.post(
                `motor-cycle-insurance/update/${this.order_id}`,
                formData,
                {
                    headers: {
                        Authorization: `Bearer ${token}`,
                    },
                }
            );
            if (request.data.status == "success") {
                window.s_alert("Information updated successfully");
                window.location.href = "/motor-cycle-insurance/invoice?order_id=" + this.order_id;
            }
        },
    },
};
</script>

<style lang="scss" scoped></style>
