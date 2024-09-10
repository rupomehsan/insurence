<template>
    <Head title="Home Page"></Head>

    <!-- Spinner Start -->
    <!-- <div
        id="spinner"
        class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center"
    >
        <div class="spinner-grow text-primary" role="status"></div>
    </div> -->
    <!-- Spinner End -->

    <!-- Carousel Start -->
    <HomeSlider></HomeSlider>
    <!-- Carousel End -->

    <!-- About Start -->
    <ExperienceSection></ExperienceSection>
    <!-- About End -->

    <!-- Facts Start -->
    <FactSections></FactSections>
    <!-- Facts End -->

    <!-- Features Start -->
    <FeatureSection></FeatureSection>
    <!-- Features End -->

    <!-- Service Start -->
    <ServiceSection></ServiceSection>
    <!-- Service End -->

    <!-- Appointment Start -->
    <AppointmentSection></AppointmentSection>
    <!-- Appointment End -->

    <!-- Team Start -->
    <TeamSection></TeamSection>
    <!-- Team End -->

    <!-- Testimonial Start -->
    <TestimonialSection></TestimonialSection>
    <!-- Testimonial End -->

   
</template>
<script>
import HomeSlider from "./Sections/HomeSlider/HomeSlider.vue";
import ExperienceSection from "./Sections/Experience/Index.vue";
import FactSections from "./Sections/Facts/Index.vue";
import FeatureSection from "./Sections/Features/Index.vue";
import ServiceSection from "./Sections/Service/Index.vue";
import AppointmentSection from "./Sections/Appointment/Index.vue";
import TeamSection from "./Sections/Team/Index.vue";
import TestimonialSection from "./Sections/Testimonial/Index.vue";

export default {
    components: {
        HomeSlider,
        ExperienceSection,
        FactSections,
        FeatureSection,
        ServiceSection,
        AppointmentSection,
        TeamSection,
        TestimonialSection,
    },

    data: () => ({}),

    created: async function () {},

    methods: {},
};
</script>
<style lang="scss" scoped></style>
