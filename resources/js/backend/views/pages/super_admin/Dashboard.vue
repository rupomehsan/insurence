<template>
    <div class="container-fluid">
        <!--Start Dashboard Content-->

        <div class="card mt-3">
            <div class="card-content">
                <div class="row row-group m-0">
                    <div class="col-12 col-lg-6 col-xl-3 border-light">
                        <div class="card-body">
                            <h5 class="text-white mb-0">
                                {{ total_visitors }}
                                <span class="float-right"
                                    ><i class="fa fa-users"></i
                                ></span>
                            </h5>
                            <div class="progress my-3" style="height: 3px">
                                <div
                                    class="progress-bar"
                                    style="width: 55%"
                                ></div>
                            </div>
                            <p class="mb-0 text-white small-font">
                                Total Visitors
                            </p>
                        </div>
                    </div>
                    <div class="col-12 col-lg-6 col-xl-3 border-light">
                        <div class="card-body">
                            <h5 class="text-white mb-0">
                                {{ total_products }}
                                <span class="float-right"
                                    ><i class="fa fa-book"></i
                                ></span>
                            </h5>
                            <div class="progress my-3" style="height: 3px">
                                <div
                                    class="progress-bar"
                                    style="width: 55%"
                                ></div>
                            </div>
                            <p class="mb-0 text-white small-font">
                                Total service
                            </p>
                        </div>
                    </div>
                    <div class="col-12 col-lg-6 col-xl-3 border-light">
                        <div class="card-body">
                            <h5 class="text-white mb-0">
                                {{ total_category }}
                                <span class="float-right"
                                    ><i class="fa fa-eye"></i
                                ></span>
                            </h5>
                            <div class="progress my-3" style="height: 3px">
                                <div
                                    class="progress-bar"
                                    style="width: 55%"
                                ></div>
                            </div>
                            <p class="mb-0 text-white small-font">
                                Total policy
                            </p>
                        </div>
                    </div>
                    <div class="col-12 col-lg-6 col-xl-3 border-light">
                        <div class="card-body">
                            <h5 class="text-white mb-0">
                                {{ total_brand }}
                                <span class="float-right"
                                    ><i class="fa fa-envira"></i
                                ></span>
                            </h5>
                            <div class="progress my-3" style="height: 3px">
                                <div
                                    class="progress-bar"
                                    style="width: 55%"
                                ></div>
                            </div>
                            <p class="mb-0 text-white small-font">Total MR</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--End Row-->

        <!--End Dashboard Content-->
        <!--start overlay-->
        <div class="overlay"></div>
        <!--end overlay-->
    </div>
    <!-- End container-fluid-->
</template>

<script>
export default {
    data: () => ({
        total_visitors: 0,
        total_products: 0,
        total_category: 0,
        total_brand: 0,
        latest_orders: [],
    }),

    created: async function () {
        await this.getDashboardData();
    },

    methods: {
        getDashboardData: async function () {
            await axios
                .get("/get-dashboard-info")
                .then((response) => {
                    console.log(response.data.data);
                    this.total_visitors = response.data.data.visitor;
                    this.total_products = response.data.data.product;
                    this.total_category = response.data.data.category;
                    this.total_brand = response.data.data.brand;
                    this.latest_orders = response.data.data.orders;
                })
                .catch((error) => {
                    console.log(error);
                });
        },
    },
};
</script>

<style></style>
