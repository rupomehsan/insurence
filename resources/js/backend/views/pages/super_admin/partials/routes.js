import Layout from "./Layout.vue";
import Dashboard from "../Dashboard.vue";

import money_receipt_routes from "../management/MoneyReceipt/setup/routes";




const routes = {
    path: "/",
    component: Layout,
    children: [
        {
            path: "dashboard",
            component: Dashboard,
            name: "SuperAdminDashboard",
        },

        money_receipt_routes,

    ],
};

export default routes;
