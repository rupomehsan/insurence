<template>
    <div class="certificate">
        <div class="title">Comprehensive Risk</div>

        <div class="section">
            <div class="section-title">CERTIFICATE NUMBER</div>
            <div class="section-content">
                : FICL/BOG/MV/MC/CERT-{{ userDetails.policy_no }}/{{ formatMonthYear(
                    userDetails.created_at
                ) }}
            </div>
        </div>

        <div class="section">
            <div class="section-title">1. Description of the Vehicle</div>
            <div class="section-content"></div>
        </div>

        <div class="section row">
            <div class="section-title">(a) Registration mark and No</div>
            <div class="section-content">
                : <span class="value">{{ userDetails.registration_no }}</span>
            </div>
        </div>

        <div class="section row">
            <div class="section-title">Engine Number</div>
            <div class="section-content">: {{ userDetails.engine_no }}</div>
        </div>

        <div class="section row">
            <div class="section-title">Chassis Number</div>
            <div class="section-content">: {{ userDetails.chassis_no }}</div>
        </div>

        <div class="section row">
            <div class="section-title">
                (b) Make, Model/Year of Manufacture /Carrying/Cubic Capacity,
                Number of Seats
            </div>
            <div class="section-content">
                : MOTOR CYCLE<br />
                &nbsp;&nbsp;&nbsp;&nbsp;M-2016, CC-125, SC- 1+1
            </div>
        </div>

        <div class="section row">
            <div class="section-title">(c) Full Insured Value (FIV)</div>
            <div class="section-content">: Tk. 1,31,500.00</div>
        </div>

        <div class="section">
            <div class="section-title">2. Name and Address of the Insured:</div>
            <div class="section-content">
                : CHAPAINAWABGANJ PALLI BIDYUT SAMITY, CHAPAINAWABGANJ
            </div>
        </div>

        <div class="section">
            <span class="section-title">3. Risk Period:</span> From 03/02/2024
            To 02/02/2025 Midnight (Both Dates Inclusive)
        </div>

        <div class="section">
            <span class="section-title"
                >4. Persons or Classes of persons entitled to drive:</span
            >
            <ol>
                <li>The Insured</li>
                <li>
                    Any other person provided he is in the insured's employment
                    and/or is driving on the insured's order or with his / their
                    permission.
                </li>
                <li>
                    The insured may also drive a motor Car/Cycle not belonging
                    to him and not hired to him under a Hire purchase
                    Agreement...
                </li>
            </ol>
        </div>

        <div class="section">
            <span class="section-title"
                >5. The risk of Terrorism has been withdrawn.</span
            >
        </div>

        <div class="section">
            <span class="section-title">6. Limitation as to use:</span> PRIVATE
            USE
        </div>

        <div class="section">
            <table class="table">
                <tr>
                    <th>Premium Computation (Tk.)</th>
                    <th>Amount</th>
                </tr>
                <tr>
                    <td>Basic Premium</td>
                    <td>200.00</td>
                </tr>
                <tr>
                    <td>2.15 % on FIV</td>
                    <td>2,827.00</td>
                </tr>
                <tr>
                    <td>Own Damage Premium</td>
                    <td>3,027.00</td>
                </tr>
                <tr>
                    <td>Less: 25% NCB</td>
                    <td>757.00</td>
                </tr>
                <tr>
                    <td><strong>Total</strong></td>
                    <td><strong>2,270.00</strong></td>
                </tr>
                <tr>
                    <td>Passenger Driver</td>
                    <td>100.00</td>
                </tr>
                <tr>
                    <td><strong>Net Premium</strong></td>
                    <td><strong>2,365.00</strong></td>
                </tr>
                <tr>
                    <td>Add VAT @ 15 %</td>
                    <td>354.00</td>
                </tr>
                <tr>
                    <td><strong>Total Premium</strong></td>
                    <td><strong>2,719.00</strong></td>
                </tr>
            </table>
        </div>

        <div class="footer">Total Premium: Tk. 2,719.00</div>

        <div class="header">
            Subject to a compulsory excess Tk.500/= for each & every Loss.
        </div>
        <div class="footer">
            <p>
                I / We hereby Certify that the policy to which this certificate
                relates as well as this certificate of insurance is issued in
                accordance with the Provisions of the chapter IX of the Motor
                Vehicles Act. 1991.
            </p>
        </div>
        <div class="details">
            <div>
                <strong>MR#</strong> 240500019 <br />
                <strong>DT#</strong> 31/01/2024
            </div>
            <div>
                <strong>Issuing Office:</strong> Bogura Branch <br />
                <strong>Issuing Date:</strong> 31.01.2024
            </div>
            <div>
                <strong>For and on behalf of</strong> <br />
                Federal Insurance Company Limited
            </div>
        </div>
        <div><strong>Checked By:</strong> (SI# 616478) (P.I# 00035)</div>
        <div class="authorised">Authorised Officer</div>
    </div>
    <div class="d-flex justify-content-center mt-3 gap-3">
        <button
            class="btn btn-warning px-5 p-d-none mx-auto"
            @click="printInvoice"
        >
            Print
        </button>
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
                let token = localStorage.getItem("user_token");
                let response = await axios.get(
                    "motor-insurance/order-details/" + this.order_id,
                    {
                        headers: {
                            Authorization: `Bearer ${token}`,
                        },
                    }
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
            return moment(date).format(format).toUpperCase(); // Output: 01-JAN-2024
        },
    },
};
</script>

<style scoped>
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 20px;
    background-color: #f8f8f8;
}

.section {
    display: flex;
    margin-bottom: 15px;
}
.section-title {
    font-weight: bold;
    flex: 0 0 40%;
    text-align: left;
}
.section-content {
    flex: 1;
    text-align: left;
    padding-left: 20px;
}
.row {
    display: flex;
    justify-content: space-between;
}
.label {
    font-weight: bold;
}
.value {
    font-weight: bold;
}
.certificate {
    max-width: 800px;
    margin: auto;
    padding: 20px;
    background-color: #ffffff;
}
.title {
    text-align: center;
    font-weight: bold;
    font-size: 20px;
    text-transform: uppercase;
    margin-bottom: 20px;
}
.section {
    margin-bottom: 15px;
}
.section-title {
    font-weight: bold;
}
.table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 10px;
}
.table th,
.table td {
    padding: 8px;
    border: 1px solid #000;
    text-align: right;
}
.table th {
    background-color: #e0e0e0;
    font-weight: bold;
}
.table td:first-child {
    text-align: left;
}
.footer {
    text-align: right;
    font-weight: bold;
    margin-top: 15px;
}
.header,
.footer {
    margin-bottom: 10px;
}
.authorised {
    margin-top: 20px;
    text-align: right;
    font-weight: bold;
}
.details {
    display: flex;
    justify-content: space-between;
}
.details div {
    margin-bottom: 5px;
}
</style>
