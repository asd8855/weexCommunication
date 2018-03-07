<template>
    <div class="wrapper">
        <text class="text" @click="jsTonative">js调native</text>
    </div>
</template>

<script>
    export default {

        methods: {
            jsTonative() {
                //这块必须写对
                const eventModule = weex.requireModule('event');
                eventModule.openURL('hello native,I`m js');
            },
        },

        created() {
            const globalEvent = weex.requireModule('globalEvent');
            globalEvent.addEventListener("sayhello", function (e) {
                console.log(e.key);
            });
        },
    }
</script>

<style scoped>

    .wrapper {
        justify-content: center;
        align-items: center;
    }

    .text {

        width: 100px;
        height: 100px;
        background-color: #00B4FF;
        margin: 50px 50px;
    }

</style>