<template>
  <div class="wrapper">
    <router-view/>
  </div>
</template>

<script>
  export default {
    name: 'App',
    data () {
      return {
      }
    }
  }
</script>

<style scoped>
  .wrapper {
    justify-content: center;
    align-items: flex-start;
  }

</style>
