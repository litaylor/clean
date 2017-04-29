<template lang="html">
  <div class="Closet">
    <RackTop :list="list"></RackTop>
  </div>
</template>

<script>
import RackTop from './RackTop';
export default {
  components: {
    RackTop
  },
  props: [
    'list'
  ]
}
</script>

<style lang="css">
</style>
