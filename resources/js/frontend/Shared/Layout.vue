<template>
    <div>
        <Header />
        <div>
            <slot />
        </div>
        <Footer />
    </div>
</template>

<script>
import Header from "./Header.vue";
import Footer from "./Footer.vue";
export default {
    name: "Layout",
    components: { Header, Footer },
};
</script>

<style></style>
