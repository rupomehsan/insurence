<template>
    <template v-if="step.one">
        <form @submit.prevent="StepOneSubmitHandler">
            <input type="hidden" name="step" value="1" />
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
                                            >Visa Type :
                                        </label>
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <select
                                            class="form-select py-2 rounded-0"
                                            v-model="visa_type"
                                            name="visa_type"
                                        >
                                            <option value="working/student">
                                                Working / Student
                                            </option>
                                            <option value="tourist">
                                                Tourist
                                            </option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="row align-items-center my-3">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="" class="fw-bold"
                                            >Country :
                                        </label>
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <select
                                            class="form-select py-2 rounded-0"
                                            name="country_id"
                                            id="country_id"
                                            required="required"
                                        >
                                            <option
                                                v-for="item in all_countries"
                                                :value="item.id"
                                                :key="item.id"
                                            >
                                                {{ item.name }}
                                            </option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="row align-items-center my-3">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="" class="fw-bold"
                                            >Passport No :
                                        </label>
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <input
                                            name="passport_no"
                                            type="text"
                                            class="form-control py-2 rounded-0"
                                            placeholder="Enter your passport no"
                                        />
                                    </div>
                                </div>
                            </div>

                            <div class="row align-items-center my-3">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="" class="fw-bold"
                                            >Date Of Birth :
                                        </label>
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <input
                                            name="date_of_birth"
                                            type="date"
                                            class="form-control py-2 rounded-0"
                                        />
                                    </div>
                                </div>
                            </div>

                            <div class="row align-items-center my-3">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="" class="fw-bold"
                                            >Stay Duration * :
                                        </label>
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <select
                                            class="form-select py-2 rounded-0"
                                            name="stay_duration"
                                            id="stay"
                                            v-if="visa_type == 'tourist'"
                                        >
                                            <option
                                                v-for="item in stay_duration_data"
                                                :key="item"
                                                :value="item"
                                            >
                                                &nbsp;{{ item }} days
                                            </option>
                                        </select>
                                        <select
                                            v-else
                                            name="stay_duration"
                                            class="form-select py-2 rounded-0"
                                        >
                                            <option v-for="item in 12" :value="item">{{ item }} {{ item > 1 ? 'Months' : 'Month' }}</option>

                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="d-flex justify-content-center mt-3">
                <button
                    class="btn btn-primary py-3 px-5 text-center"
                    type="submit"
                >
                    Get Calculation
                </button>
            </div>
        </form>
    </template>
    <template v-if="step.two">
        <form @submit.prevent="StepTwoSubmitHandler">
            <input type="hidden" name="step" value="2" />
            <div class="container bg-light p-5">
                <div class="text-center mx-auto" style="max-width: 500px">
                    <h1 class="display-6 mb-5">Personal Information</h1>
                </div>
                <div>
                    <div class="row justify-content-center align-items-center">
                        <div class="col-md-7">
                            <div class="row align-items-center my-3">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="" class="fw-bold"
                                            >Full Name :
                                        </label>
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <input
                                            name="name"
                                            type="text"
                                            class="form-control py-2 rounded-0"
                                            placeholder="Enter your name"
                                        />
                                    </div>
                                </div>
                            </div>
                            <div class="row align-items-center my-3">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="" class="fw-bold"
                                            >Email :
                                        </label>
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <input
                                            name="email"
                                            type="text"
                                            class="form-control py-2 rounded-0"
                                            placeholder="Enter your email"
                                        />
                                    </div>
                                </div>
                            </div>
                            <div class="row align-items-center my-3">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="" class="fw-bold"
                                            >Mobile No :
                                        </label>
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <input
                                            name="mobile_number"
                                            type="text"
                                            class="form-control py-2 rounded-0"
                                            placeholder="Enter your mobile number"
                                        />
                                    </div>
                                </div>
                            </div>
                            <div class="row align-items-center my-3">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="" class="fw-bold"
                                            >Address (as per as passport) :
                                        </label>
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <input
                                            name="address"
                                            type="text"
                                            class="form-control py-2 rounded-0"
                                            placeholder="Enter your mobile number"
                                        />
                                    </div>
                                </div>
                            </div>
                            <div class="row align-items-center my-3">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="" class="fw-bold"
                                            >Journy Date from :
                                        </label>
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <input
                                            name="journy_date_start_from"
                                            type="date"
                                            class="form-control py-2 rounded-0"
                                            placeholder="Enter your mobile number"
                                        />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="d-flex justify-content-center mt-3">
                <button
                    class="btn btn-primary py-3 px-5 text-center"
                    type="submit"
                >
                    Get Calculation
                </button>
            </div>
        </form>
    </template>
    <template v-if="step.three">
        <div>
            <p class="alert alert-info text-center fw-bold">
                Your Order Summery
            </p>
        </div>
        <table class="table table-bordered table-hover">
            <thead>
                <tr>
                    <td class="text-center fw-bold" style="width: 25%">Name</td>
                    <td class="text-center">:</td>
                    <td>{{ response_data.name }}</td>
                </tr>
                <tr>
                    <td class="text-center fw-bold" style="width: 25%">
                        Email
                    </td>
                    <td class="text-center">:</td>
                    <td>{{ response_data.email }}</td>
                </tr>
                <tr>
                    <td class="text-center fw-bold" style="width: 25%">
                        Mobile No
                    </td>
                    <td class="text-center">:</td>
                    <td>{{ response_data.mobile_number }}</td>
                </tr>
                <tr>
                    <td class="text-center fw-bold" style="width: 25%">
                        Address
                    </td>
                    <td class="text-center">:</td>
                    <td>{{ response_data.address }}</td>
                </tr>
                <tr>
                    <td class="text-center fw-bold" style="width: 25%">
                        Visa type
                    </td>
                    <td class="text-center">:</td>
                    <td>{{ response_data.visa_type }}</td>
                </tr>

                <tr>
                    <td class="text-center fw-bold" style="width: 25%">
                        Passport No
                    </td>
                    <td class="text-center">:</td>
                    <td>{{ response_data.passport_no }}</td>
                </tr>
                <tr>
                    <td class="text-center fw-bold" style="width: 25%">
                        Country
                    </td>
                    <td class="text-center">:</td>
                    <td>{{ response_data.country_name }}</td>
                </tr>
                <tr>
                    <td class="text-center fw-bold" style="width: 25%">
                        Date Of Birth
                    </td>
                    <td class="text-center">:</td>
                    <td>{{ response_data.date_of_birth }}</td>
                </tr>
                <tr>
                    <td class="text-center fw-bold" style="width: 25%">
                        Current Age
                    </td>
                    <td class="text-center">:</td>
                    <td>{{ response_data.age }}</td>
                </tr>

                <tr>
                    <td class="text-center fw-bold" style="width: 25%">
                        Stay Of Duration
                    </td>
                    <td class="text-center">:</td>
                    <td>{{ response_data.stay_of_days }}</td>
                </tr>
                <tr>
                    <td class="text-center fw-bold" style="width: 25%">
                        Total Cost
                    </td>
                    <td class="text-center">:</td>
                    <td>{{ Number(response_data.total_cost || 0).toFixed(2) }} (Taka only)</td>
                </tr>
            </thead>
        </table>
        <div class="d-flex justify-content-center">
            <button class="btn btn-success fw-bold" @click="checkoutPopUp">
                Pay now
            </button>
        </div>
    </template>
</template>

<script>
import axios from "axios";
export default {
    data: () => ({
        all_countries: [],
        visa_type: "tourist",
        stay_duration_data: [
            "1-15",
            "16-30",
            "31-45",
            "46-60",
            "61-75",
            "76-90",
            "91-105",
            "106-120",
            "121-135",
            "136-150",
            "151-165",
            "166-180",
        ],
        step: {
            one: true,
            two: false,
            three: false,
        },
        response_data: {},
    }),
    created: async function () {
        await this.get_all_countries();
    },
    methods: {
        get_all_countries: async function () {
            let response = await axios.get("countries?get_all=1");
            if (response.data.status == "success") {
                this.all_countries = response.data.data;
            }
        },
        StepOneSubmitHandler: async function () {
            let formData = new FormData(event.target);
            let request = await axios.post(
                "overseas-mediclaim-insurences/initial-data-store",
                formData
            );

            if (request.data.status == "success") {
                window.s_alert("Thanks for your application");
                this.step.one = false;
                this.step.two = true;
                this.response_data = request.data?.data;
            }
        },
        StepTwoSubmitHandler: async function () {
            let formData = new FormData(event.target);
            formData.append("id", this.response_data.id);
            let request = await axios.post(
                "overseas-mediclaim-insurences/initial-data-store",
                formData
            );

            if (request.data.status == "success") {
                window.s_alert("Thanks for your kind information");
                this.step.two = false;
                this.step.three = true;
                this.response_data = request.data?.data;
            }
        },
        checkoutPopUp: async function () {
            let payload = JSON.stringify(this.response_data);
            let payment_res = await window.axios.post(
                `pay-via-ajax?payload=${payload}`
            );
            this.payment_link = payment_res.data?.data;
            window.open(this.payment_link, "_blank");
        },
    },
};
</script>

<style lang="scss" scoped></style>
