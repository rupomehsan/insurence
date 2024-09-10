import "../backend/plugins/axios_setup.js";
import "../backend/plugins/sweet_alert.js";

import { createApp, h } from "vue";
import { createInertiaApp, Link, Head } from "@inertiajs/vue3";
import { createPinia } from "pinia";

import Layout from "./Shared/Layout.vue";

const pinia = createPinia();

createInertiaApp({
    resolve: (name) => {
        const pages = import.meta.glob("./Pages/**/*.vue", { eager: true });
        const page = pages[`./Pages/${name}.vue`];
        if (page && page.default) {
            // Check if the page has the noLayout property
            if (!page.default.noLayout) {
                page.default.layout = Layout;
            }
        }

        return page;
    },
    setup({ el, App, props, plugin }) {
        const app = createApp({ render: () => h(App, props) });
        app.use(plugin);
        app.use(pinia);
        app.component("Link", Link);
        app.component("Head", Head);
        app.mount(el);
    },

    title: (title) => `insurence bd : ${title}`,
});
