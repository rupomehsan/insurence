<template>
    <div class="card" style="min-height: 500px">
        <div class="container p-5 d-flex align-items-center">
            <ul
                class="nav nav-pills flex-column nav-pills border-end border-3 me-3 align-items-end w-25"
                id="pills-tab"
                role="tablist"
            >
                <li class="nav-item" role="presentation">
                    <button
                        class="nav-link text-primary fw-semibold active position-relative"
                        id="pills-home-tab"
                        data-bs-toggle="pill"
                        data-bs-target="#pills-home"
                        type="button"
                        role="tab"
                        aria-controls="pills-home"
                        aria-selected="true"
                    >
                        Profile
                    </button>
                </li>
                <li class="nav-item" role="presentation">
                    <button
                        class="nav-link text-primary fw-semibold position-relative"
                        id="pills-profile-tab"
                        data-bs-toggle="pill"
                        data-bs-target="#pills-profile"
                        type="button"
                        role="tab"
                        aria-controls="pills-profile"
                        aria-selected="false"
                    >
                        Policy
                    </button>
                </li>
                <!-- <li class="nav-item" role="presentation">
                    <button
                        class="nav-link text-primary fw-semibold position-relative"
                        id="pills-contact-tab"
                        data-bs-toggle="pill"
                        data-bs-target="#pills-contact"
                        type="button"
                        role="tab"
                        aria-controls="pills-contact"
                        aria-selected="false"
                    >
                        Change Password
                    </button>
                </li> -->
                <li class="nav-item" role="presentation">
                    <button
                        class="nav-link text-primary fw-semibold position-relative"
                        type="button"
                        role="tab"
                    >
                        Logout
                    </button>
                </li>
            </ul>
            <div
                class="tab-content border rounded-3 border-primary p-3 text-danger w-100"
                id="pills-tabContent"
                style="min-height: 300px"
            >
                <div
                    class="tab-pane fade show active"
                    id="pills-home"
                    role="tabpanel"
                    aria-labelledby="pills-home-tab"
                >
                    <Profile></Profile>
                </div>
                <div
                    class="tab-pane fade"
                    id="pills-profile"
                    role="tabpanel"
                    aria-labelledby="pills-profile-tab"
                >
                    <Policy></Policy>
                </div>
                <!-- <div
                    class="tab-pane fade"
                    id="pills-contact"
                    role="tabpanel"
                    aria-labelledby="pills-contact-tab"
                >
                    <h2>Chnage Password</h2>
                    <p>
                        Please check our more design @
                        <a
                            target="_blank"
                            href="https://codepen.io/Gaurav-Rana-the-reactor"
                            >Codepen</a
                        >
                    </p>
                </div> -->
            </div>
        </div>
    </div>
</template>

<script>
import Policy from "./Sections/Policy.vue";
import Profile from "./Sections/Profile.vue";

export default {
    components: {
        Policy,
        Profile,
    },
    data: () => ({
        userInfo: {},
    }),
    created() {
        this.get_user_info();
    },
    methods: {
        get_user_info: async function () {
            try {
                let response = await axios.get("check_user");
                if (response.data.user) {
                    this.userInfo = response.data.user;
                }
            } catch (error) {
                console.error("Error fetching order data:", error);
                if (error.response.status === 401) {
                    this.$inertia.visit("/login");
                }
            }
        },
    },
};
</script>

<style lang="scss" scoped>
.nav .nav-item button.active {
    background-color: transparent;
    color: var(--bs-danger) !important;
}
.nav .nav-item button.active::after {
    content: "";
    border-right: 4px solid var(--bs-danger);
    height: 100%;
    position: absolute;
    right: -1px;
    top: 0;
    border-radius: 5px 0 0 5px;
}
</style>
