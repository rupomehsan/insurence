<template>
    <div>
        <h2>User Policy</h2>
        <hr />
        <div>
            <table
                class="table table-bordered border-dark table-hover text-center"
            >
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Visa type</th>
                        <th>Stay duration</th>
                        <th>Total cost</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <tr v-for="i in 10">
                        <th>2</th>
                        <td>Jacob</td>
                        <td>Thornton</td>
                        <td>@fat</td>
                        <td>
                            <Link
                                :href="`policy/edit/${i}`"
                                class="btn btn-primary"
                                >Edit</Link
                            >
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</template>

<script>
export default {};
</script>

<style lang="scss" scoped></style>
