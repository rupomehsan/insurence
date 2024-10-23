<template>
    <div>
        <h2>Profile</h2>
        <hr />
        <div class="p-2">
            <table class="table table-bordered table-hover">
                <tr>
                    <th>Name</th>
                    <td class="text-center">:</td>
                    <td>{{ userInfo.name }}</td>
                </tr>
                <tr>
                    <th>Email</th>
                    <td class="text-center">:</td>
                    <td>{{ userInfo.email }}</td>
                </tr>
                <tr>
                    <th>Phone</th>
                    <td class="text-center">:</td>
                    <td>{{ userInfo.phone }}</td>
                </tr>
            </table>
        </div>
    </div>
</template>

<script>
export default {
    data: () => ({
        userInfo: {},
    }),
    created: async function () {
        await this.get_user_info();
    },
    methods: {
        get_user_info: async function () {
            let token = localStorage.getItem("user_token");
            let response = await axios.get("check_user", {
                headers: {
                    Authorization: `Bearer ${token}`,
                },
            });
            if (response.data.user) {
                this.userInfo = response.data.user;
            }
        },
    },
};
</script>

<style lang="scss" scoped>
.table tr td,
.table tr th {
    padding: 0.5rem 0.5rem !important;
    border: 1px solid #dee2e6 !important;
}
</style>
