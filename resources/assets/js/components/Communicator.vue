<template lang="html">
  <div class="box">
    This is Communicator
    <button type="button" name="button" class="btn" v-on:click="getAll()">GET (all)</button>
    <br /> <button type="button" name="button" class="btn" v-on:click="getOne(1)">GET (one)</button>
    <br /> <button type="button" name="button" class="btn" v-on:click="postOne('#ffccaa', 'salmon shorts', 'salmonshorts.png', 'salmon-shorts', 'shorts,warm,casual', 'Salmon shorts', 'pants')">POST</button>
  </div>
</template>

<script>
import axios from 'axios';
export default {
  data() {
    return {
      items: [],
      thisItem: {}
    }
  },
  mounted() {
    console.log('App component mounted.');
  },
  methods: {
    getAll () {
      axios.get('/items')
      .then(response => {
        this.items = response.data;
      })
      .catch((error) => {

      })
    },
    getOne (id) {
      axios.get('/items/'+id)
      .then(response => {
        this.thisItem = response.data;
      })
      .catch((error) => {

      })
    },
    postOne (color, description, imgUrl, slug, tags, title, type) {
      axios.post('/items', {
        color: color,
        description: description,
        imgUrl: imgUrl,
        slug: slug,
        tags: tags,
        title: title,
        type: type
      })
      .then((response) => {

      })
      .catch((error) => {

      })
    }
  }
}
</script>

<style lang="css">
</style>
