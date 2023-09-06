<template>
    <div class="app_vue" v-if="!isDateReached">
        <div v-if="isAdminRoute">
            <LayoutWrapper />
            <RightSidebar />
        </div>
        <div class="main-container" v-else>
            <div class="navbar_main container-xl">      
                <HomeNavbarView />
            </div>
            <div class="app-content">
                <router-view></router-view>
            </div>
        </div>
    </div>
    <div class="app_vue comingsoon" v-else>
        <router-view></router-view>
    </div>
</template>
<script>
// import loginLayout from './components/account/LoginLayout.vue';
// import register from './components/account/Register.vue';
import LayoutWrapper from './components/layouts/LayoutWrapper.vue';
import RightSidebar from './components/layouts/RightSidebar.vue';

import HomeNavbarView from './components/home/view/NavbarView.vue';
import FooterLayout from './components/layouts/FooterLayout.vue';


export default {
    components: {
        // loginLayout,
        LayoutWrapper,
        RightSidebar,
        HomeNavbarView,
        FooterLayout,
        // register,
    },
    data() {
        return {
            targetDate: new Date("2023-09-18T00:00:00"), // Ngày đích đến
        };
    },
    computed: {
        accessToken() {
            return this.$store.getters.accessToken;
        },
        isAdminRoute() {
            return this.$route.path.startsWith("/admin/") || this.$route.path.startsWith("/admin");
        },
        isDateReached() {
            const now = new Date();
            return now >= this.targetDate;
        },
    },
    methods: {
    },
     mounted() {
        
    },
}
</script>

<style>
.app_vue .main-container{
    overflow: hidden;
}

.app_vue .main-container .app-content{
    min-height: 606px;
    /* margin-bottom: 85px; */
}

.app_vue .navbar_main{
    position: fixed;
    z-index: 9;
}

</style>