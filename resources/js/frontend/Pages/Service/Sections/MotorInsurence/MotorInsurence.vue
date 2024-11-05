<template>
    <template v-if="step_one">
        <div class="container bg-light p-5">
            <div class="text-center mx-auto" style="max-width: 500px">
                <h5 class="my-3">Select Motor Insurance Type</h5>
            </div>
            <div class="row justify-content-center text-center">
                <div
                    class="col-md-3"
                    style="cursor: pointer"
                    @click="
                        (step_two = true),
                            (step_one = false),
                            (formData.motor_type = 'bike')
                    "
                >
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Motor Cycle Insurance</h5>
                            <img
                                src="/frontend/img/motor/bike.jpg"
                                class="img-fluid"
                                alt=""
                            />
                        </div>
                    </div>
                </div>
                <div
                    class="col-md-3"
                    style="cursor: pointer"
                    @click="
                        (step_two = true),
                            (step_one = false),
                            (formData.motor_type = 'car')
                    "
                >
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Car Insurance</h5>
                            <img
                                src="/frontend/img/motor/car.jpg"
                                class="img-fluid"
                                alt=""
                            />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </template>

    <template v-if="step_two">
        <div class="container bg-light p-5">
            <div class="text-center mx-auto" style="max-width: 500px">
                <h1 class="display-6 mb-5">Basic Information</h1>
            </div>
            <div>
                <div class="row justify-content-center align-items-center">
                    <div class="col-md-7">
                        <div class="row align-items-center my-3">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="" class="fw-bold"
                                        >Plan Type :
                                    </label>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <div class="form-group">
                                    <select
                                        class="form-select py-2 rounded-0"
                                        v-model="formData.plan_type"
                                    >
                                        <option value="">
                                            Select Plan Type
                                        </option>
                                        <option value="act_liabilities">
                                            Act Liabilities
                                        </option>
                                        <option value="comprehensive">
                                            Comprehensive
                                        </option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="row align-items-center my-3">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="" class="fw-bold"
                                        >Your name :
                                    </label>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <div class="form-group">
                                    <input
                                        class="form-control"
                                        name="name"
                                        id=""
                                        v-model="formData.name"
                                    />
                                </div>
                            </div>
                        </div>
                        <div class="row align-items-center my-3">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="" class="fw-bold"
                                        >Mobile Number :
                                    </label>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <div class="form-group">
                                    <input
                                        class="form-control"
                                        name="mobile_number"
                                        id=""
                                        v-model="formData.mobile_number"
                                    />
                                </div>
                            </div>
                        </div>
                        <template v-if="formData.plan_type == 'comprehensive'">
                            <div class="row align-items-center my-3">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="" class="fw-bold"
                                            >Capacity (CC) :
                                        </label>
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <input
                                            type="number"
                                            class="form-control"
                                            name="capacity"
                                            id=""
                                            v-model="formData.capacity"
                                        />
                                    </div>
                                </div>
                            </div>
                            <div class="row align-items-center my-3">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="" class="fw-bold">
                                            {{
                                                formData.motor_type == "car"
                                                    ? "Vehicle"
                                                    : "Motorcycle cycle"
                                            }}
                                            price :
                                        </label>
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <input
                                            type="number"
                                            class="form-control"
                                            name="motor_price"
                                            id=""
                                            v-model="formData.motor_price"
                                        />
                                    </div>
                                </div>
                            </div>
                            <div class="row align-items-center my-3">
                                <div class="col-md-3 m-0 p-0">
                                    <div class="form-group">
                                        <label for="" class="fw-bold"
                                            >Insurance Start Date :
                                        </label>
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <input
                                            type="date"
                                            class="form-control"
                                            name="insurance_start_date"
                                            id=""
                                            v-model="
                                                formData.insurance_start_date
                                            "
                                        />
                                    </div>
                                </div>
                            </div>
                            <div class="row align-items-center my-3">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="" class="fw-bold"
                                            >Make Year :
                                        </label>
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <input
                                            type="number"
                                            min="1900"
                                            max="2100"
                                            class="form-control"
                                            name="make_year"
                                            id=""
                                            v-model="formData.make_year"
                                        />
                                    </div>
                                </div>
                            </div>
                        </template>
                    </div>
                </div>
            </div>
        </div>

        <div class="d-flex justify-content-center my-3">
            <button
                class="btn btn-primary py-3 px-5 text-center"
                type="button"
                @click="StepTwoSubmitHandler"
            >
                Get Calculation
            </button>
        </div>
    </template>

    <template v-if="step_three">
        <div class="container bg-light p-5">
            <table class="table table-bordered table-hover">
                <thead>
                    <tr>
                        <td class="text-center fw-bold" style="width: 25%">
                            Name
                        </td>
                        <td class="text-center">:</td>
                        <td>{{ formData.name }}</td>
                    </tr>
                    <tr>
                        <td class="text-center fw-bold" style="width: 25%">
                            Mobile Number
                        </td>
                        <td class="text-center">:</td>
                        <td>{{ formData.mobile_number }}</td>
                    </tr>
                    <tr>
                        <td class="text-center fw-bold" style="width: 25%">
                            Capacity
                        </td>
                        <td class="text-center">:</td>
                        <td>{{ formData.capacity }}</td>
                    </tr>
                    <tr>
                        <td class="text-center fw-bold" style="width: 25%">
                            Insurance start date
                        </td>
                        <td class="text-center">:</td>
                        <td>{{ formData.insurance_start_date }}</td>
                    </tr>
                    <tr>
                        <td class="text-center fw-bold" style="width: 25%">
                            Motor cycle price
                        </td>
                        <td class="text-center">:</td>
                        <td>{{ formData.motor_price }}</td>
                    </tr>
                    <tr>
                        <td class="text-center fw-bold" style="width: 25%">
                            Premium
                        </td>
                        <td class="text-center">:</td>
                        <td>{{ this.premium }} TK</td>
                    </tr>
                    <tr>
                        <td class="text-center fw-bold" style="width: 25%">
                            VAT
                        </td>
                        <td class="text-center">:</td>
                        <td>{{ this.vat }} TK</td>
                    </tr>
                    <tr>
                        <td class="text-center fw-bold" style="width: 25%">
                            Stamp
                        </td>
                        <td class="text-center">:</td>
                        <td>00 TK</td>
                    </tr>
                    <tr>
                        <td class="text-center fw-bold" style="width: 25%">
                            Total
                        </td>
                        <td class="text-center">:</td>
                        <td>{{ this.total_pay }} TK</td>
                    </tr>
                </thead>
            </table>
        </div>
        <div class="d-flex justify-content-center mt-3">
            <button class="btn btn-success fw-bold" @click="checkoutPopUp">
                Pay now
            </button>
        </div>
    </template>
</template>

<script>
export default {
    data: () => ({
        step_one: true,
        step_two: false,
        step_three: false,

        formData: {
            name: "",
            email: "",
            mobile_no: "",
            capacity: "",
            insurance_start_date: "",
            motor_price: "",
            make_year: "",
            motor_type: "",
        },
        premium: 0,
        vat: 0,
        total_pay: 0,
    }),
    methods: {
        StepTwoSubmitHandler: async function () {
            this.step_two = false;
            this.step_three = true;

            if (this.formData.motor_type == "bike") {
                this.premium = Math.round(
                    this.formData.motor_price * 0.0215 + 200 + 195
                );
                this.vat = Math.round((this.premium * 15) / 100);
                this.total_pay = Math.round(this.premium + this.vat);
            } else {
                this.premium = Math.round(
                    this.formData.motor_price * 0.0215
                );
                this.vat = Math.round((this.premium * 15) / 100);
                this.total_pay = Math.round(this.premium + this.vat);
            }
        },

        StepOneSubmitHandler: async function () {
            let token = localStorage.getItem("user_token");
            let formData = JSON.stringify(this.formData);
            let request = await axios.post(
                "motor-insurance/initial-data-store",
                formData,
                {
                    headers: {
                        Authorization: `Bearer ${token}`,
                    },
                }
            );
            if (request.data.status == "success") {
                window.s_alert("Thanks for your application");
                this.step.one = false;
                this.step.two = true;
                this.response_data = request.data?.data;
            }
        },
        checkoutPopUp: async function () {
            let token = localStorage.getItem("user_token");
            let payload = this.formData;
            let payment_res = await axios.post(`pay-via-ajax`, payload, {
                headers: {
                    Authorization: `Bearer ${token}`,
                },
            });
            // console.log(payment_res);

            this.payment_link = payment_res.data?.data;
            window.open(this.payment_link, "_blank");
            window.location.href = "/profile";
        },
    },
};
</script>

<style lang="scss" scoped></style>
