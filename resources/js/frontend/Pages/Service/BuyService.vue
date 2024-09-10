<template>
    <!-- Page Header Start -->
    <div
        class="container-fluid page-header py-5 mb-5 wow fadeIn"
        data-wow-delay="0.1s"
    >
        <div class="container py-5">
            <h1 class="display-4 animated slideInDown mb-4">{{ slug }}</h1>
            <nav aria-label="breadcrumb animated slideInDown">
                <ol class="breadcrumb mb-0">
                    <li class="breadcrumb-item"><Link href="/">Home</Link></li>
                    <li class="breadcrumb-item active" aria-current="page">
                        Services
                    </li>
                </ol>
            </nav>
        </div>
    </div>
    <!-- Page Header End -->

    <!-- Service Start -->
    <div class="container-xxl py-5">
        <template v-if="slug === 'motor-insurance'">
            <MotorInsurence></MotorInsurence>
        </template>
        <template v-if="slug === 'overseas-mediclaim-insurance'">
            <OMI></OMI>
        </template>
    </div>
    <!-- Service End -->
</template>

<script>
import MotorInsurence from "./Sections/MotorInsurence/MotorInsurence.vue";
import OMI from "./Sections/OMI/OMI.vue";

export default {
    components: { MotorInsurence, OMI },
    props: {
        slug: {
            type: String,
            required: true,
        },
    },
};
</script>

<style lang="scss" scoped>

</style>
