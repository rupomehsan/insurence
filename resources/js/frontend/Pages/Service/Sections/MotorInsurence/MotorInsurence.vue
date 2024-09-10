<template>
    <form>
        <template v-if="is_show_more_details">
            <div class="container bg-light p-5">
                <div class="text-center mx-auto" style="max-width: 500px">
                    <p class="display-6 mb-5 fw-bold">
                        Personal & Vehicle Information
                    </p>
                </div>
                <div>
                    <div class="row justify-content-center align-items-center">
                        <div class="col-md-12">
                            <div class="row align-items-start my-3">
                                <div class="col-md-6">
                                    <div class="row">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="" class="fw-bold"
                                                    >Insured Full Name :
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-md-8">
                                            <div class="form-group">
                                                <input
                                                    type="text"
                                                    class="form-control"
                                                    name=""
                                                    id=""
                                                />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row align-items-center my-3">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="" class="fw-bold"
                                                    >Insured Address :
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-md-8">
                                            <div class="form-group">
                                                <input
                                                    type="text"
                                                    class="form-control"
                                                    name=""
                                                    id=""
                                                />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row align-items-center my-3">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="" class="fw-bold"
                                                    >Mailing Address :
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-md-8">
                                            <div class="form-group">
                                                <input
                                                    type="text"
                                                    class="form-control"
                                                    name=""
                                                    id=""
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
                                                    type="text"
                                                    class="form-control"
                                                    name=""
                                                    id=""
                                                />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row align-items-center my-3">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="" class="fw-bold"
                                                    >Vehicle Brand/Make:
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-md-8">
                                            <div class="form-group">
                                                <input
                                                    type="text"
                                                    class="form-control"
                                                    name=""
                                                    id=""
                                                />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row align-items-center my-3">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="" class="fw-bold"
                                                    >NID :
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-md-8">
                                            <div class="form-group">
                                                <input
                                                    type="file"
                                                    class="form-control"
                                                    name=""
                                                    id=""
                                                />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row align-items-center my-3">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="" class="fw-bold"
                                                    >Vehicle Document(s) :
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-md-8">
                                            <div class="form-group">
                                                <input
                                                    type="text"
                                                    class="form-control"
                                                    name=""
                                                    id=""
                                                />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="row mt-2">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="" class="fw-bold"
                                                    >Email ID :
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-md-8">
                                            <div class="form-group">
                                                <input
                                                    type="text"
                                                    class="form-control"
                                                    name=""
                                                    id=""
                                                />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row align-items-center my-3">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="" class="fw-bold"
                                                    >City :
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-md-8">
                                            <div class="form-select">
                                                <select
                                                    class="form-control"
                                                    name="city1"
                                                    required=""
                                                >
                                                    <option>Select</option>
                                                    <option value="37">
                                                        Bagerhat
                                                    </option>
                                                    <option value="22">
                                                        Bandarban
                                                    </option>
                                                    <option value="25">
                                                        Barguna
                                                    </option>
                                                    <option value="11">
                                                        Barisal
                                                    </option>
                                                    <option value="21">
                                                        Bhola
                                                    </option>
                                                    <option value="13">
                                                        Bogra
                                                    </option>
                                                    <option value="47">
                                                        Brahmanbaria
                                                    </option>
                                                    <option value="4">
                                                        Chandpur
                                                    </option>
                                                    <option value="5">
                                                        Chattogram
                                                    </option>
                                                    <option value="38">
                                                        Chuadanga
                                                    </option>
                                                    <option value="49">
                                                        Cox's Bazar
                                                    </option>
                                                    <option value="3">
                                                        Cumilla
                                                    </option>
                                                    <option value="1">
                                                        Dhaka
                                                    </option>
                                                    <option value="9">
                                                        Dinajpur
                                                    </option>
                                                    <option value="12">
                                                        Faridpur
                                                    </option>
                                                    <option value="46">
                                                        Feni
                                                    </option>
                                                    <option value="34">
                                                        Gaibandha
                                                    </option>
                                                    <option value="55">
                                                        Gazipur
                                                    </option>
                                                    <option value="51">
                                                        Gopalganj
                                                    </option>
                                                    <option value="23">
                                                        Habiganj
                                                    </option>
                                                    <option value="57">
                                                        Jamalpur
                                                    </option>
                                                    <option value="8">
                                                        Jessore
                                                    </option>
                                                    <option value="26">
                                                        Jhalokati
                                                    </option>
                                                    <option value="29">
                                                        Jhenaidah
                                                    </option>
                                                    <option value="41">
                                                        Joypurhat
                                                    </option>
                                                    <option value="45">
                                                        Khagrachhari
                                                    </option>
                                                    <option value="18">
                                                        Khulna
                                                    </option>
                                                    <option value="56">
                                                        Kishoreganj
                                                    </option>
                                                    <option value="32">
                                                        Kurigram
                                                    </option>
                                                    <option value="24">
                                                        Lakshmipur
                                                    </option>
                                                    <option value="31">
                                                        Lalmonirhat
                                                    </option>
                                                    <option value="53">
                                                        Madaripur
                                                    </option>
                                                    <option value="30">
                                                        Magura
                                                    </option>
                                                    <option value="63">
                                                        Manikganj
                                                    </option>
                                                    <option value="39">
                                                        Meherpur
                                                    </option>
                                                    <option value="50">
                                                        Moulvibazar
                                                    </option>
                                                    <option value="60">
                                                        Munshiganj
                                                    </option>
                                                    <option value="10">
                                                        Mymensingh
                                                    </option>
                                                    <option value="43">
                                                        Naogaon
                                                    </option>
                                                    <option value="2">
                                                        Narail
                                                    </option>
                                                    <option value="62">
                                                        Narayanganj
                                                    </option>
                                                    <option value="61">
                                                        Narsingdi
                                                    </option>
                                                    <option value="42">
                                                        Natore
                                                    </option>
                                                    <option value="44">
                                                        Nawabganj
                                                    </option>
                                                    <option value="59">
                                                        Netrakona
                                                    </option>
                                                    <option value="33">
                                                        Nilphamari
                                                    </option>
                                                    <option value="17">
                                                        Noakhali
                                                    </option>
                                                    <option value="14">
                                                        Pabna
                                                    </option>
                                                    <option value="20">
                                                        Panchagarh
                                                    </option>
                                                    <option value="28">
                                                        Patuakhali
                                                    </option>
                                                    <option value="27">
                                                        Pirojpur
                                                    </option>
                                                    <option value="54">
                                                        Rajbari
                                                    </option>
                                                    <option value="6">
                                                        Rajshahi
                                                    </option>
                                                    <option value="15">
                                                        Rangamati
                                                    </option>
                                                    <option value="16">
                                                        Rangpur
                                                    </option>
                                                    <option value="36">
                                                        Satkhira
                                                    </option>
                                                    <option value="52">
                                                        Shariatpur
                                                    </option>
                                                    <option value="58">
                                                        Sherpur
                                                    </option>
                                                    <option value="40">
                                                        Sirajganj
                                                    </option>
                                                    <option value="48">
                                                        Sunamganj
                                                    </option>
                                                    <option value="7">
                                                        Sylhet
                                                    </option>
                                                    <option value="19">
                                                        Tangail
                                                    </option>
                                                    <option value="35">
                                                        Thakurgaon
                                                    </option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row align-items-center my-3">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="" class="fw-bold"
                                                    >Mailing City :
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-md-8">
                                            <div class="form-select">
                                                <select
                                                    class="form-control"
                                                    name="city2"
                                                    required=""
                                                >
                                                    <option>Select</option>
                                                    <option value="37">
                                                        Bagerhat
                                                    </option>
                                                    <option value="22">
                                                        Bandarban
                                                    </option>
                                                    <option value="25">
                                                        Barguna
                                                    </option>
                                                    <option value="11">
                                                        Barisal
                                                    </option>
                                                    <option value="21">
                                                        Bhola
                                                    </option>
                                                    <option value="13">
                                                        Bogra
                                                    </option>
                                                    <option value="47">
                                                        Brahmanbaria
                                                    </option>
                                                    <option value="4">
                                                        Chandpur
                                                    </option>
                                                    <option value="5">
                                                        Chattogram
                                                    </option>
                                                    <option value="38">
                                                        Chuadanga
                                                    </option>
                                                    <option value="49">
                                                        Cox's Bazar
                                                    </option>
                                                    <option value="3">
                                                        Cumilla
                                                    </option>
                                                    <option value="1">
                                                        Dhaka
                                                    </option>
                                                    <option value="9">
                                                        Dinajpur
                                                    </option>
                                                    <option value="12">
                                                        Faridpur
                                                    </option>
                                                    <option value="46">
                                                        Feni
                                                    </option>
                                                    <option value="34">
                                                        Gaibandha
                                                    </option>
                                                    <option value="55">
                                                        Gazipur
                                                    </option>
                                                    <option value="51">
                                                        Gopalganj
                                                    </option>
                                                    <option value="23">
                                                        Habiganj
                                                    </option>
                                                    <option value="57">
                                                        Jamalpur
                                                    </option>
                                                    <option value="8">
                                                        Jessore
                                                    </option>
                                                    <option value="26">
                                                        Jhalokati
                                                    </option>
                                                    <option value="29">
                                                        Jhenaidah
                                                    </option>
                                                    <option value="41">
                                                        Joypurhat
                                                    </option>
                                                    <option value="45">
                                                        Khagrachhari
                                                    </option>
                                                    <option value="18">
                                                        Khulna
                                                    </option>
                                                    <option value="56">
                                                        Kishoreganj
                                                    </option>
                                                    <option value="32">
                                                        Kurigram
                                                    </option>
                                                    <option value="24">
                                                        Lakshmipur
                                                    </option>
                                                    <option value="31">
                                                        Lalmonirhat
                                                    </option>
                                                    <option value="53">
                                                        Madaripur
                                                    </option>
                                                    <option value="30">
                                                        Magura
                                                    </option>
                                                    <option value="63">
                                                        Manikganj
                                                    </option>
                                                    <option value="39">
                                                        Meherpur
                                                    </option>
                                                    <option value="50">
                                                        Moulvibazar
                                                    </option>
                                                    <option value="60">
                                                        Munshiganj
                                                    </option>
                                                    <option value="10">
                                                        Mymensingh
                                                    </option>
                                                    <option value="43">
                                                        Naogaon
                                                    </option>
                                                    <option value="2">
                                                        Narail
                                                    </option>
                                                    <option value="62">
                                                        Narayanganj
                                                    </option>
                                                    <option value="61">
                                                        Narsingdi
                                                    </option>
                                                    <option value="42">
                                                        Natore
                                                    </option>
                                                    <option value="44">
                                                        Nawabganj
                                                    </option>
                                                    <option value="59">
                                                        Netrakona
                                                    </option>
                                                    <option value="33">
                                                        Nilphamari
                                                    </option>
                                                    <option value="17">
                                                        Noakhali
                                                    </option>
                                                    <option value="14">
                                                        Pabna
                                                    </option>
                                                    <option value="20">
                                                        Panchagarh
                                                    </option>
                                                    <option value="28">
                                                        Patuakhali
                                                    </option>
                                                    <option value="27">
                                                        Pirojpur
                                                    </option>
                                                    <option value="54">
                                                        Rajbari
                                                    </option>
                                                    <option value="6">
                                                        Rajshahi
                                                    </option>
                                                    <option value="15">
                                                        Rangamati
                                                    </option>
                                                    <option value="16">
                                                        Rangpur
                                                    </option>
                                                    <option value="36">
                                                        Satkhira
                                                    </option>
                                                    <option value="52">
                                                        Shariatpur
                                                    </option>
                                                    <option value="58">
                                                        Sherpur
                                                    </option>
                                                    <option value="40">
                                                        Sirajganj
                                                    </option>
                                                    <option value="48">
                                                        Sunamganj
                                                    </option>
                                                    <option value="7">
                                                        Sylhet
                                                    </option>
                                                    <option value="19">
                                                        Tangail
                                                    </option>
                                                    <option value="35">
                                                        Thakurgaon
                                                    </option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row align-items-center my-3">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="" class="fw-bold"
                                                    >Year of Manufacture :
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-md-8">
                                            <div class="form-select">
                                                <select
                                                    class="form-control"
                                                    name="mfg_year"
                                                    required=""
                                                >
                                                    <option value="">
                                                        select
                                                    </option>
                                                    <option value="2024">
                                                        2024
                                                    </option>
                                                    <option value="2023">
                                                        2023
                                                    </option>
                                                    <option value="2022">
                                                        2022
                                                    </option>
                                                    <option value="2021">
                                                        2021
                                                    </option>
                                                    <option value="2020">
                                                        2020
                                                    </option>
                                                    <option value="2019">
                                                        2019
                                                    </option>
                                                    <option value="2018">
                                                        2018
                                                    </option>
                                                    <option value="2017">
                                                        2017
                                                    </option>
                                                    <option value="2016">
                                                        2016
                                                    </option>
                                                    <option value="2015">
                                                        2015
                                                    </option>
                                                    <option value="2014">
                                                        2014
                                                    </option>
                                                    <option value="2013">
                                                        2013
                                                    </option>
                                                    <option value="2012">
                                                        2012
                                                    </option>
                                                    <option value="2011">
                                                        2011
                                                    </option>
                                                    <option value="2010">
                                                        2010
                                                    </option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row align-items-center my-3">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="" class="fw-bold"
                                                    >Registration Date :
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-md-8">
                                            <div class="form-group">
                                                <input
                                                    type="date"
                                                    class="form-control"
                                                    name=""
                                                    id=""
                                                />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row align-items-center my-3">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="" class="fw-bold"
                                                    >Engine Number :
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-md-8">
                                            <div class="form-group">
                                                <input
                                                    type="text"
                                                    class="form-control"
                                                    name=""
                                                    id=""
                                                />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row align-items-center my-3">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label for="" class="fw-bold"
                                                    >Chassis No :
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-md-8">
                                            <div class="form-group">
                                                <input
                                                    type="text"
                                                    class="form-control"
                                                    name=""
                                                    id=""
                                                />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="text-center my-5">
                    <input type="checkbox" name="" id="" />
                    <label for="" class="ms-2">
                        I accept the <Link href="#"> Terms & Conditions.</Link>
                    </label>
                </div>

                <div class="d-flex justify-content-center gap-3">
                    <button
                        class="btn btn-info py-3 px-5 text-center"
                        type="button"
                        @click="is_show_more_details = !is_show_more_details"
                    >
                        Get Back
                    </button>
                    <a
                        @click="checkoutPopUp"
                        class="btn btn-success py-3 px-5 text-center"
                        type="button"
                    >
                        Pay Now
                    </a>
                </div>
            </div>
        </template>

        <template v-else>
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
                                            >Application Type :
                                        </label>
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <select
                                            class="form-select py-2 rounded-0"
                                        >
                                            <option value="New">New</option>
                                            <option value="Renew">Renew</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
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
                                        >
                                            <option value="1">
                                                Act Liabilities
                                            </option>
                                            <option value="1">
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
                                            >Insurance Sub Type :
                                        </label>
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <select
                                            class="form-select py-2 rounded-0"
                                        >
                                            <option value="1">
                                                Motor Cycle
                                            </option>
                                            <option value="1">
                                                Private Vehicle
                                            </option>
                                            <option value="1">
                                                Commercial Vehicle (CV)
                                            </option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container bg-light p-5 my-3">
                <div class="text-center mx-auto" style="max-width: 500px">
                    <h1 class="display-6 mb-5">Vehicle Information</h1>
                </div>
                <div>
                    <div class="row justify-content-center align-items-center">
                        <div class="col-md-7">
                            <div class="row align-items-center my-3">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="" class="fw-bold"
                                            >Vehicle Type * :
                                        </label>
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <select
                                            class="form-select py-2 rounded-0"
                                        >
                                            <option value="">
                                                Motor Cycle
                                            </option>
                                        </select>
                                    </div>
                                </div>
                            </div>
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
                                            type="text"
                                            class="form-control"
                                            id="name"
                                            placeholder="Enter Your Capacity (CC)"
                                        />
                                    </div>
                                </div>
                            </div>
                            <div class="row align-items-center my-3">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="" class="fw-bold"
                                            >Driver :
                                        </label>
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <select
                                            class="form-select py-2 rounded-0"
                                        >
                                            <option value="1">1</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="row align-items-center my-3">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="" class="fw-bold"
                                            >Passenger :
                                        </label>
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <select
                                            class="form-select py-2 rounded-0"
                                        >
                                            <option value="1">1</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="row align-items-center my-3">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="" class="fw-bold"
                                            >Policy Start * :
                                        </label>
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <input
                                            type="date"
                                            class="form-control"
                                            name=""
                                            id=""
                                        />
                                    </div>
                                </div>
                            </div>
                            <div class="row align-items-center my-3">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label for="" class="fw-bold"
                                            >Policy End * :
                                        </label>
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <div class="form-group">
                                        <input
                                            type="date"
                                            class="form-control"
                                            name=""
                                            disabled
                                        />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="d-flex justify-content-center">
                <button
                    class="btn btn-primary py-3 px-5 text-center"
                    type="button"
                    @click="is_show_more_details = !is_show_more_details"
                >
                    Get Calculation
                </button>
            </div>
        </template>
    </form>
</template>

<script>
export default {
    data: () => ({
        is_show_more_details: false,
    }),
    methods: {
        checkoutPopUp: async function (data) {
            let payload = JSON.stringify(data);
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
