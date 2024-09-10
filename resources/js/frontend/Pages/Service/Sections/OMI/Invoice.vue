<template>
    <link
        href="https://fonts.googleapis.com/css?family=Arial:400,700&display=swap"
        rel="stylesheet"
    />
    <div class="my-4 py-5 document mx-auto">
        <div class="row justify-content-center">
            <img
                src="/frontend/img/logo/logo.png"
                alt="Company Logo"
                class="img-fluid w-50 mx-auto"
            />
        </div>

        <div class="mt-4 p-2" style="border: 2px solid black">
            <p class="text-center">
                <strong>OVERSEAS MEDICLAIM INDEMNIFICATION SCHEDULE</strong>
            </p>
            <p class="text-center">
                <strong
                    >Plan "A": FOR SCHENGEN AND NON SCHENGEN COUNTRIES
                    ONLY</strong
                >
            </p>
            <div class="my-2" style="border-top: 1px solid black"></div>
            <p class="text-center fw-bold" style="font-size: 13px">
                This Overseas Mediclaim Insurance is only available to
                Bangladesh Citizens between 6 months and 79 years of age who are
                undertaking bonafide trips outside Bangladesh. Which will not
                involve any form of manual work and do not exceed 180 days in
                duration unless specifically extended.
            </p>

            <div class="section text-center">
                <p class="fw-bold" style="font-size: 13px">
                    Policy No.: EICL/BBA/MISC/OMP-{{ userDetails.policy_no }}/{{
                        formatMonthYear(userDetails.created_at)
                    }}
                    (B&H) Plan "A" Category: Medical Date:
                    {{
                        new Date(userDetails.created_at).toLocaleDateString(
                            "en-GB"
                        )
                    }}
                </p>
            </div>

            <table class="table table-borderless">
                <tr>
                    <td>
                        01. Name of the Insured Person <br />
                        (as indicated on passport)
                    </td>
                    <td class="d-flex">
                        <strong class="m-0 p-0 text-uppercase"
                            >: {{ userDetails.name }}</strong
                        >
                    </td>
                </tr>
                <tr>
                    <td>02. Age (in completed years)</td>
                    <td>
                        : {{ userDetails.age }} Completed Years
                        <span class="mx-3"
                            >Date of birth:
                            {{
                                formattedDate(
                                    userDetails.date_of_birth,
                                    "DD-MMM-YYYY"
                                )
                            }}</span
                        >
                    </td>
                </tr>
                <tr>
                    <td>03. Residence Address</td>
                    <td class="text-uppercase">: {{ userDetails.address }}</td>
                </tr>
                <tr>
                    <td>04. Residence Telephone No. /Mobile No.</td>
                    <td>: {{ userDetails.mobile_number }}</td>
                </tr>
                <tr>
                    <td>05. Insured's Occupation (Specify)</td>
                    <td>: {{ userDetails.occupation ?? "N/A" }}</td>
                </tr>
                <tr>
                    <td>06. Passport No.</td>
                    <td class="text-uppercase">
                        : {{ userDetails.passport_no }}
                    </td>
                </tr>
                <tr>
                    <td>
                        07. Name and Address of the Usual Physician Telephone no
                        (Home/Office)
                    </td>
                    <td>
                        : Dr. Md. Refayetur Rahman, MBBS, FCPS (Part-1), Reg.
                        No. A-66385, Mobile: 01611000797
                    </td>
                </tr>
                <tr>
                    <td>08. Plan Type</td>
                    <td>
                        <strong class="m-0 p-0"
                            >: Plan "A" FOR <span class="text-uppercase " >{{ userDetails.country_name }}</span>  AND
                            ALL SCHENGEN COUNTRIES</strong
                        >
                    </td>
                </tr>
                <tr>
                    <td>09. Limit of Cover See (Condition-12):</td>
                </tr>
                <tr>
                    <td style="width: 45%;">
                        a) For Schengen Countries:(Both Illness & Accident)
                    </td>
                    <td>Non-Medical: Euro 30,000.00</td>
                </tr>
                <tr>
                    <td>
                        b) For Non-Schengen Countries: (Both Illness & Accident)
                    </td>
                    <td>Non-Medical: Equivalent US$</td>
                </tr>
                <tr>
                    <td>10. Deductible</td>
                    <td>
                        :For Schengen Countries: No deductible <br />
                        For Non Schengen Countries: US$ 100, <br />Emergency
                        Dental Care: US$ 50
                    </td>
                </tr>
            </table>

            <div class="premium-section">
                <table class="premium-table table table-borderless mb-0">
                    <tr>
                        <td class="d-flex">
                            <strong class="m-0 p-0"
                                >11. Amount of Premium</strong
                            >
                        </td>
                        <td
                            style="
                                border-left: 1px solid black;
                                margin-right: 5px;
                            "
                        >
                            <p class="fw-bold price">Net Premium</p>

                            <p class="fw-bold price">VAT 15%</p>

                            <p class="fw-bold price">Total</p>
                        </td>
                        <td>
                            <p class="fw-bold price">Tk.</p>
                            <p class="fw-bold price">Tk.</p>
                            <p class="fw-bold price">Tk.</p>
                        </td>
                        <td style="text-align: right; margin-right: 25px">
                            <p class="fw-bold price" style="margin-right: 30px">
                                {{ Number(userDetails.net_cost)?.toFixed(2) }}
                            </p>
                            <p class="fw-bold price" style="margin-right: 30px">
                                {{ Number(userDetails.vat_cost)?.toFixed(2) }}
                            </p>
                            <p class="fw-bold price" style="margin-right: 30px">
                                {{ Number(userDetails.total_cost)?.toFixed(2) }}
                            </p>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="qr-code-section">
                <table class="table table-borderless mt-1">
                    <tr>
                        <td>12. Date of Purchase</td>
                        <td class="fw-bold">
                            <div class="p-0">
                                :

                                {{
                                    new Date(
                                        userDetails.created_at
                                    ).toLocaleDateString("en-GB")
                                }}
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>13. No. of Days Covered</td>
                        <td>
                            : {{ userDetails.stay_of_days }} days
                            <span class="fw-bold"
                                >{{
                                    new Date(
                                        userDetails.journy_date_start_from
                                    ).toLocaleDateString("en-GB")
                                }}
                                to
                                {{
                                    new Date(
                                        userDetails.journy_date_end_to
                                    ).toLocaleDateString("en-GB")
                                }}</span
                            >
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 43%;">
                            14. First day of Insurance (Date and time commercing
                            from the time of boarding the aircraft or othe mode
                            of transport from bangaldesh )
                        </td>
                        <td>
                            :
                            {{
                                new Date(
                                    userDetails.journy_date_start_from
                                ).toLocaleDateString("en-GB")
                            }}
                        </td>
                    </tr>
                    <tr>
                        <td>15. Address of Issuing Office</td>
                        <td>
                            : B.B. Avenue Branch, Dhaka <br />
                            44, Dilkusha(7th Floor), C/A, Dhaka, e-mail:
                            eiclomc@easterninsurancebd.com.bd
                        </td>
                    </tr>
                    <tr>
                        <td>16. Telephone No.</td>
                        <td>:02223384246-8</td>
                    </tr>
                </table>
                <div class="qr-code-image">
                    <img class="" :src="qrCode" alt="QR Code" />
                </div>
            </div>

            <div class="footer">
                <p class="fw-bold text-black">
                    SIGNED for and on behalf of Eastern Insurance Company Ltd.
                    at Dhaka this
                    {{ formattedDate(userDetails.created_at, "DD-MMM-YYYY") }}.
                </p>
                <table class="table table-borderless m-0 p-0">
                    <tr>
                        <td style="width: 20%" class="fw-bold">
                            <p>WARRANTY:</p>
                        </td>
                        <td>
                            <p>
                                <strong
                                    >Warranted that if any
                                    alteration/modification/cancellation of this
                                    policy is needed, the Insured must inform
                                    M/S: Eastern Insurance Company Limited in
                                    writing before 48 hours of his/her departure
                                    from Bangladesh. Covid-19 is covered but
                                    Pre-Existing Covid-19 is not covered. This
                                    Policy is not Refundable / Adjustable under
                                    any circumstances.</strong
                                >
                            </p>
                        </td>
                    </tr>
                </table>
                <div
                    class="d-flex align-items-center justify-content-between mt-1"
                >
                    <div>
                        <p class="fw-bold text-black">
                            MR No.{{ userDetails.mrp_no }}
                        </p>
                        <p class="fw-bold text-black">
                            MR Date :
                            {{
                                new Date(
                                    userDetails.created_at
                                ).toLocaleDateString("en-GB")
                            }}
                        </p>
                        <p class="fw-bold text-black">
                            PIN :{{ userDetails.mrp_no }}
                        </p>
                    </div>

                    <p class="fw-bold text-black text-center">
                        For & On behalf of <br />
                        Eastern Insurance Company Ltd.
                    </p>
                </div>

                <div
                    class="d-flex justify-content-start gap-5 ms-4 pt-3 mt-5 position-relative"
                >
                    <p
                        style="
                            position: absolute;
                            top: 0;
                            right: 0;
                            color: #00000059;
                            transform: translate(-50%, -50%);
                        "
                    >
                        This RECEIPT is computer generated, authorised signature
                        is not required
                    </p>
                    <p class="fw-bold text-black">Prepared</p>
                    <p class="fw-bold text-black">Checked</p>
                    <p class="fw-bold text-black">Countersigned</p>
                </div>
            </div>
        </div>

        <div class="d-flex justify-content-center mt-3 gap-3">
            <button class="btn btn-warning px-5 p-d-none" @click="printInvoice">
                Print
            </button>
            <Link
                :href="`/omi/money-receipt?mrp_no=${userDetails.mrp_no}&order_id=${order_id}`"
                class="btn btn-warning px-5 p-d-none"
                target="_blank"
            >
                Money Receipt
            </Link>
        </div>
    </div>
</template>
<script>
import QRCode from "qrcode";
import moment from "moment";
export default {
    noLayout: true,
    data() {
        return {
            qrCode: "",
            currentUrl: "",
            order_id: "",
            userDetails: {},
        };
    },
    created: async function () {
        this.currentUrl = window.location.href;
        let url = new URL(this.currentUrl);
        url = url.searchParams.get("order_id");
        this.order_id = url.split("-")[0];
        this.generateQRCode();
        this.get_order_info();
    },
    methods: {
        async generateQRCode() {
            try {
                this.qrCode = await QRCode.toDataURL(this.currentUrl);
            } catch (error) {
                console.error("Error generating QR code:", error);
            }
        },

        get_order_info: async function () {
            try {
                let response = await axios.post(
                    "overseas-mediclaim-insurences/order-details/" +
                        this.order_id
                );
                this.userDetails = response.data.data;
            } catch (error) {
                console.error("Error fetching order data:", error);
            }
        },
        printInvoice() {
            window.print();
        },
        formatMonthYear(dateString) {
            const date = new Date(dateString);
            const month = ("0" + (date.getMonth() + 1)).slice(-2); // Ensure two-digit month
            const year = date.getFullYear().toString(); // Last two digits of the year
            return `${month}/${year}`;
        },

        formattedDate(date, format) {
            // Format the date using moment.js
            return moment(this.createdAt).format("DD-MMM-YYYY").toUpperCase(); // Output: 01-JAN-2024
        },
    },
};
</script>

<style scoped>
table {
    color: black;
}
.document {
    width: 1000px;
    padding: 20px;
    background-color: #ffffff;
    font-family: Arial, Helvetica, sans-serif;
}

h2 {
    text-align: center;
    text-transform: uppercase;
    font-size: 18px;
}

p {
    margin: 5px 0;
    line-height: 1.6;
    font-size: 15px;
}
p strong {
    font-size: 12px;
}

.section {
    width: 90%;
    border: 1px solid #000;
    padding: 5px;
    margin: 10px auto;
}

.footer {
    margin-top: 20px;
}

.footer p {
    font-size: 12px;
}

.premium-section {
    border: 1px solid #000;
    margin-top: 20px;
}

.premium-table td {
    padding: 8px;
}

.amount {
    text-align: right;
    padding-right: 10px;
}
.qr-code-section {
    position: relative;
}
.qr-code-image img {
    position: absolute;
    top: 50px;
    right: 50px;
    width: 100px;
    height: 100px;
    object-fit: contain;
}
@media print {
    .p-d-none {
        display: none;
    }
    .p-m-0 {
        margin: 0 !important;
    }

    .p-p-0 {
        padding: 0 !important;
    }
    .navbar .navbar-nav {
        display: none;
    }
    @page {
        size: A4; /* Use A4 paper size */
        margin: 10mm; /* Set print margins */
    }

    .document {
        width: 100%;
        margin: 0 !important;
        padding: 0 !important;
    }
    p {
        margin: 0 !important;
        padding: 0 !important;
        font-size: 10px !important;
    }
    p strong {
        font-size: 10px !important;
    }
    .price {
        font-size: 12px !important;
        margin-right: 20px !important;
    }
    td {
        font-size: 12px !important;
        line-height: 18px !important;
        padding: 0 !important;
    }
    .premium-table td {
        padding-left: 5px !important;
    }
    .premium-section {
        margin-bottom: 5px !important;
        border: 2px solid black !important;
    }
    .qr-code-image img {
        top: 20px;
        right: 20px;
        width: 100px;
        height: 100px;
        object-fit: contain;
    }
}
</style>
