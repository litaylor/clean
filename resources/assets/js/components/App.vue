<template>
    <div class="box">
        <Top></Top>
        <Communicator></Communicator>
    </div>
</template>

<script>
  import Top from './Top';
  import Communicator from './Communicator';
  export default {
    components: {
      Top,
      Communicator
    },
    mounted() {
        console.log('App component mounted.');
    }
  }
</script>

<style lang="css">
  .box {
    border: thin solid #ccc;
  }
</style>
