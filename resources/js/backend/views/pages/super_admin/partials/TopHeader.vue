<template>
    <!--Start topbar header-->
    <header class="topbar-nav">
        <nav class="navbar navbar-expand fixed-top">
            <div class="d-flex align-items-center">
                <div class="toggle-menu">
                    <i @click.prevent="toggle_menu" class="zmdi zmdi-menu"></i>
                </div>
                <div class="mx-2">
                    <a
                        href="/"
                        target="_blank"
                        class="zmdi zmdi-circle"
                        style="
                            background: rgba(255, 255, 255, 0.12);
                            padding: 8px;
                        "
                        title="Website"
                    ></a>
                </div>
            </div>

            <div class="search-bar flex-grow-1"></div>

            <ul class="navbar-nav align-items-center right-nav-link ml-auto">


                <li class="nav-item dropdown">
                    <a
                        class="nav-link dropdown-toggle dropdown-toggle-nocaret position-relative"
                    >
                        <span class="user-profile">
                            <img
                                src="/backend/assets/images/avatars/avatar-13.png"
                                class="img-circle"
                                alt="user avatar"
                            />
                        </span>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-right">
                        <li class="dropdown-item user-details">
                            <a href="javaScript:void();">
                                <div class="media">
                                    <div class="avatar">
                                        <img
                                            class="align-self-start mr-3"
                                            src="/backend/assets/images/avatars/avatar-13.png"
                                            alt="user avatar"
                                        />
                                    </div>
                                    <div class="media-body">
                                        <h6 class="mt-2 user-title">Admin</h6>
                                        <p class="user-subtitle">
                                            admin@gmail.com
                                        </p>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="dropdown-divider"></li>
                        <!-- <li class="dropdown-item">
                            <i class="zmdi zmdi-comments mr-3"></i>Inbox
                        </li>
                        <li class="dropdown-divider"></li>
                        <li class="dropdown-item">
                            <i class="zmdi zmdi-balance-wallet mr-3"></i>Account
                        </li>
                        <li class="dropdown-divider"></li>
                        <li class="dropdown-item">
                            <i class="zmdi zmdi-settings mr-3"></i>Setting
                        </li> -->
                        <li class="dropdown-divider"></li>
                        <li
                            class="dropdown-item"
                            s
                            @click="logout()"
                            role="button"
                        >
                            <i class="zmdi zmdi-power mr-3"></i>Logout
                        </li>
                    </ul>
                </li>
            </ul>
        </nav>
    </header>
    <!--End topbar header-->
</template>

<script>
import { mapActions } from "pinia";
import { auth_store } from "../../../../store/auth_store";
export default {
    data: () => ({
        show_notification: 0,
        latest_orders: [],
    }),

    methods: {
        ...mapActions(auth_store, ["log_out"]),
        toggle_menu: function () {
            document.getElementById("wrapper").classList.toggle("toggled");
        },

        logout: function () {
            let confirm = window.confirm("logout");
            if (confirm) {
                this.log_out();
            }
        },


    },


    mounted() {
        const navItems = document.querySelectorAll(".nav-item");

        navItems.forEach((element) => {
            element.addEventListener("click", () => {
                navItems.forEach((item) => {
                    if (element !== item) {
                        if (item.childNodes[1]?.classList?.contains("show")) {
                            item.childNodes[1]?.classList?.remove("show");
                        }
                    }
                });
                element.childNodes[1].classList.toggle("show");
            });
        });
    },
};
</script>
