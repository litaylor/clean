<template lang="html">
  <div class="rack">
    <Slick :list="list" :whichRack="'RackTop'"></Slick>
  </div>
</template>

<script>
import Slick from './Slick';
export default {
  components: {
    Slick
  },
  props: [
    'list'
  ]
}
</script>

<style lang="css">
</style>
