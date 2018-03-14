<template>
    <div class="wrapper">
        <text class="text" @click="jsTonative">js调native</text>
    </div>
</template>

<script>
    const modal = weex.requireModule('modal');
    const globalEvent = weex.requireModule('globalEvent');
    export default {

        methods: {
            jsTonative() {
                //这块必须写对
                const eventModule = weex.requireModule('event');
                eventModule.openURL('hello native,I`m js');
            },
        },

        created() {
            globalEvent.addEventListener("sayhello", function (e) {
                console.log(e.key);
                modal.toast({
                    message: e.key,
                    duration: 3
                })
            });
        },
        destroyed() {
            globalEvent.removeEventListener("sayhello");
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