<template>
    <div>
        <h2>User Policy</h2>
        <hr />
        <div class="table-responsive">
            <table
                class="table table-bordered border-dark table-hover text-center"
            >
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Phone</th>
                        <th>Address</th>
                        <th>Visa Type</th>
                        <th>Stay Duration</th>
                        <th>Total Cost</th>
                        <th>Payment Status</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <tr v-for="(item, index) in policyData.data" :key="item.id">
                        <th>{{ index + 1 }}</th>
                        <td class="text-truncate">{{ item.name }}</td>
                        <td class="text-truncate">{{ item.email }}</td>
                        <td>{{ item.mobile_number }}</td>
                        <td class="text-truncate">{{ item.address }}</td>
                        <td>{{ item.visa_type }}</td>
                        <td>{{ item.stay_duration }}</td>
                        <td>{{ item.total_cost }}</td>
                        <td>{{ item.payment_status ?? "Pending" }}</td>
                        <td style="width: 100px; position: relative">
                            <!-- Gear icon to toggle the dropdown menu -->
                            <i
                                class="fa fa-cog c-pointer"
                                @click="toggleActions(index)"
                            ></i>
                            <div
                                v-show="actionVisible === index"
                                class="dropdown-action-buttons"
                            >
                                <button
                                    @click.prevent="editPolicy(item.id)"
                                    class="dropdown-item"
                                >
                                    <i
                                        class="fa fa-pencil-alt text-warning"
                                    ></i>
                                    Edit
                                </button>
                                <template
                                    v-if="item.payment_status !== 'success'"
                                >
                                    <a
                                        :href="`service/overseas-mediclaim-insurance?id=${item.id}`"
                                        class="dropdown-item"
                                        target="_blank"
                                    >
                                        <i class="fa fa-credit-card"></i>
                                        Pay now
                                    </a>
                                </template>
                                <template
                                    v-if="item.payment_status == 'success'"
                                >
                                    <a
                                        :href="`omi/invoice?order_id=${
                                            item.order_id
                                        }-${
                                            Math.floor(
                                                Math.random() * 1000000
                                            ) + 1
                                        }&payment_status=${
                                            item.payment_status
                                        }`"
                                        class="dropdown-item"
                                        target="_blank"
                                    >
                                        <i class="fa fa-receipt"></i>
                                        Invoice
                                    </a>
                                    <a
                                        :href="`omi/money-receipt?mrp_no=${item.mrp_no}&order_id=${item.order_id}`"
                                        class="dropdown-item"
                                        target="_blank"
                                    >
                                        <i class="fa fa-book"></i>
                                        MR
                                    </a>
                                </template>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <!-- Modal for Editing Policy -->
        <div
            v-if="modal_show"
            class="modal fade show"
            tabindex="-1"
            style="display: block"
        >
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Edit Policy</h5>
                        <button
                            type="button"
                            class="btn-close"
                            @click="modal_show = false"
                        ></button>
                    </div>
                    <div class="modal-body">
                        <form @submit.prevent="updatePolicy">
                            <div class="mb-3">
                                <label for="visaType" class="form-label"
                                    >Name</label
                                >
                                <input
                                    type="text"
                                    id="visaType"
                                    class="form-control"
                                    v-model="singlePolicyData.name"
                                    name="name"
                                />
                            </div>
                            <div class="mb-3">
                                <label for="stayDuration" class="form-label"
                                    >Email</label
                                >
                                <input
                                    type="text"
                                    id="stayDuration"
                                    class="form-control"
                                    v-model="singlePolicyData.email"
                                    name="email"
                                />
                            </div>
                            <div class="mb-3">
                                <label for="totalCost" class="form-label"
                                    >Phone</label
                                >
                                <input
                                    type="text"
                                    id="totalCost"
                                    class="form-control"
                                    v-model="singlePolicyData.mobile_number"
                                    name="mobile_number"
                                />
                            </div>
                            <div class="mb-3">
                                <label for="paymentStatus" class="form-label"
                                    >Address</label
                                >
                                <input
                                    type="text"
                                    id="paymentStatus"
                                    class="form-control"
                                    v-model="singlePolicyData.address"
                                    name="address"
                                />
                            </div>
                            <button type="submit" class="btn btn-success">
                                Update Policy
                            </button>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal backdrop (for aesthetics) -->
        <div v-if="modal_show" class="modal-backdrop fade show"></div>
    </div>
</template>

<script>
export default {
    props: ["data"],
    data: () => ({
        policyData: [],
        modal_show: false,
        singlePolicyData: {},
        actionVisible: null,
    }),
    created: async function () {
        await this.get_all_user_policies();
    },

    methods: {
        editPolicy: async function (id) {
            this.modal_show = true;
            let token = localStorage.getItem("user_token");
            let response = await axios.get(`get-single-policy/${id}`, {
                headers: {
                    Authorization: `Bearer ${token}`,
                },
            });
            this.singlePolicyData = response.data.data;
        },
        async updatePolicy() {
            try {
                let token = localStorage.getItem("user_token");
                let formData = new FormData(event.target);
                let response = await axios.post(
                    `update-policy/${this.singlePolicyData.id}`,
                    formData,
                    {
                        headers: {
                            Authorization: `Bearer ${token}`,
                        },
                    }
                );
                if (response.data.status === "success") {
                    window.s_alert("Policy updated successfully");
                    this.modal_show = false;
                }
            } catch (error) {
                console.error("Error updating policy:", error);
            }
        },
        get_all_user_policies: async function () {
            let token = localStorage.getItem("user_token");
            let response = await axios.get("get-all-user-policies", {
                headers: {
                    Authorization: `Bearer ${token}`,
                },
            });

            this.policyData = response.data.data;
        },
        toggleActions(index) {
            if (this.actionVisible === index) {
                this.actionVisible = null;
            } else {
                this.actionVisible = index;
            }
        },
    },
};
</script>
<style lang="scss" scoped>
.modal-backdrop {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.5);
    z-index: 1040;
}
.modal {
    z-index: 1050;
}

/* Limit the text length in cells for readability */
/* Dropdown-style action buttons */
.dropdown-action-buttons {
    position: absolute;
    top: 0;
    right: 66px;
    background-color: #1a202c;
    padding: 10px;
    border-radius: 6px;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
    z-index: 1000;
    width: 120px;
}

/* Styles for dropdown items */
.dropdown-item {
    display: flex;
    align-items: center;
    background-color: transparent;
    color: white;
    border: none;
    padding: 5px 10px;
    cursor: pointer;
    width: 100%;
    text-align: left;
}

.dropdown-item:hover {
    background-color: #2d3748;
    border-radius: 4px;
}

/* Icons inside the dropdown items */
.dropdown-item i {
    margin-right: 8px;
}

.table-responsive {
    overflow-x: auto;
}

.text-truncate {
    max-width: 150px;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
}
</style>
