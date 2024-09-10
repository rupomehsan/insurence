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

        <div class="p-2">
            <div>
                <p class="text-center fw-bold">
                    EASTERN INSURANCE CO. LTD. The Symbol of Comprehensive
                    Suitys HEAD OFFICE: 44, DILKUSHA C/A, (1ST & 2ND FLOOR),
                    DHAKA-1000, BANGLADESH PABX 02-223388058-4, 02-223383056-8,
                    e-mail: info@eastern-insurance.com <br />
                    Website: www.eastern-insurance.com
                </p>
            </div>
            <div>
                <p class="fw-bold">BIN: 001933689-0208</p>
            </div>
            <div class="text-center my-4">
                <p class="fw-bold">MONEY RECEIPT</p>
                <p class="fw-bold">MUSHAK: 6.3</p>
            </div>
            <div class="d-flex justify-content-between align-items-center my-3">
                <div class="fw-bold">
                    <p>Issuing Office : Corporate Office</p>
                    <p>Money Receipt No.: {{ mriDetails.money_receipt_no }}</p>
                    <p>Class of Insurance: Miscellaneous</p>
                </div>

                <div class="fw-bold">
                    <p>Date: {{ new Date().toLocaleDateString("en-GB") }}</p>
                </div>
            </div>
            <div>
                <div class="d-flex">
                    <p class="fw-bold w-25 fw-bold">
                        Received with thanks from :
                    </p>
                    <p class="mx-3 border-bottom border-secondary w-75 fw-bold">
                        {{ mriDetails.received_from }}
                    </p>
                </div>
                <div class="d-flex my-2">
                    <p class="fw-bold w-25 fw-bold">The sum of :</p>
                    <p class="mx-3 border-bottom border-secondary w-75 fw-bold">
                        Tk. <span class="mx-3"></span>
                        {{ mriDetails.amount_received }} ({{
                            mriDetails.amount_received_in_word
                        }})
                    </p>
                </div>
                <div class="d-flex">
                    <div class="d-flex w-75">
                        <p class="fw-bold" style="width: 38%">
                            Mode of Payment :
                        </p>
                        <p
                            class="mx-3 border-bottom border-secondary w-75 fw-bold"
                        >
                            {{ mriDetails.payment_method }}
                        </p>
                    </div>
                    <div class="d-flex w-25">
                        <p class="fw-bold w-25 mx-2 fw-bold">Date :</p>
                        <p
                            class="mx-3 border-bottom border-secondary w-75 fw-bold"
                        >
                            {{
                                new Date(
                                    mriDetails.created_at
                                ).toLocaleDateString("en-GB")
                            }}
                        </p>
                    </div>
                </div>

                <div class="d-flex my-2">
                    <p class="fw-bold w-25 fw-bold">Drawn on :</p>
                    <p class="mx-3 border-bottom border-secondary w-75"></p>
                </div>

                <div class="d-flex my-2">
                    <p class="fw-bold w-25 fw-bold">Issued against :</p>
                    <p class="mx-3 border-bottom border-secondary w-75 fw-bold">
                        EICL/CO/FC-{{
                            new Date(mriDetails.created_at).toLocaleDateString(
                                "en-GB"
                            )
                        }}
                    </p>
                </div>

                <div
                    class="d-flex justify-content-start align-items-center qr-code-section gap-5 my-3"
                >
                    <table class="table table-bordered w-50 mb-0 me-5">
                        <thead>
                            <tr>
                                <th>Premium</th>
                                <td class="text-center">BDT</td>
                                <td class="text-end mx-3">
                                    {{ mriDetails.net_cost }}
                                </td>
                            </tr>
                            <tr>
                                <th>Vat(15%)</th>
                                <td class="text-center">BDT</td>
                                <td class="text-end mx-3">
                                    {{ mriDetails.vat }}
                                </td>
                            </tr>
                            <tr>
                                <th>Stamp</th>
                                <td class="text-center">BDT</td>
                                <td class="text-end mx-3">
                                    {{ mriDetails.stamp_cost }}
                                </td>
                            </tr>
                            <tr>
                                <th
                                    style="
                                        background-color: #8080803d !important;
                                        border: 1px solid #80808066;
                                    "
                                >
                                    Total
                                </th>
                                <td
                                    class="text-center"
                                    style="
                                        background-color: #8080803d !important;
                                        border: 1px solid #80808066;
                                    "
                                >
                                    BDT
                                </td>
                                <td
                                    class="text-end mx-3"
                                    style="
                                        background-color: #8080803d !important;
                                        border: 1px solid #80808066;
                                    "
                                >
                                    {{ mriDetails.amount_received }}
                                </td>
                            </tr>
                        </thead>
                    </table>

                    <div class="qr-code-image">
                        <img class="border ms-5" :src="qrCode" alt="QR Code" />
                    </div>
                </div>
            </div>
            <div>
                <p style="color: #00000059; text-align: center">
                    This RECEIPT is computer generated, authorised signature is
                    not required
                </p>
                <p
                    class="mt-3 text-center py-2 fw-bold"
                    style="background-color: #8080803d"
                >
                    Receipt valid subject to encashment of cheque/P.O./D.D.
                </p>
            </div>
        </div>

        <div class="d-flex justify-content-center mt-3 gap-3">
            <button class="btn btn-warning px-5 p-d-none" @click="printInvoice">
                Print
            </button>
            <Link
                v-if="mriDetails.omi_order_id"
                :href="`invoice?order_id=${mriDetails.omi_order_id}-4121&status=success`"
                class="btn btn-warning px-5 p-d-none"
            >
                Invoice
            </Link>
        </div>
    </div>
</template>
<script>
import QRCode from "qrcode";
export default {
    noLayout: true,
    data() {
        return {
            qrCode: "",
            currentUrl: "",
            mrp_no: "",
            mriDetails: {},
        };
    },
    created: async function () {
        this.currentUrl = window.location.href;
        let url = new URL(this.currentUrl);
        this.mrp_no = url.searchParams.get("mrp_no");
        this.generateQRCode();
        this.get_money_receipt_info();
    },
    methods: {
        async generateQRCode() {
            try {
                this.qrCode = await QRCode.toDataURL(this.currentUrl);
            } catch (error) {
                console.error("Error generating QR code:", error);
            }
        },

        get_money_receipt_info: async function () {
            try {
                let response = await axios.post(
                    "overseas-mediclaim-insurences/monery-receipt-details/" +
                        this.mrp_no
                );
                this.mriDetails = response.data.data;
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
    width: 90px;
    height: 90px;
    object-fit: contain;
}

.bg-end-table > th,
td {
    background-color: 78787821 !important;
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
}
</style>
