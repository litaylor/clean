<template>
    <div class="box">
        <Top></Top>
        <Communicator></Communicator>
        <Bottom></Bottom>
    </div>
</template>

<script>
  import slick from 'slick-carousel';
  import Top from './Top';
  import Bottom from './Bottom';
  import Communicator from './Communicator';
  export default {
    components: {
      Top,
      Communicator,
      Bottom
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
