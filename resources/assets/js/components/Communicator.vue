<template lang="html">
  <div class="box">
    <!-- This is Communicator
    <button type="button" name="button" class="btn" v-on:click="getAll()">GET (all)</button>
    <br /> <button type="button" name="button" class="btn" v-on:click="getOne(1)">GET (one)</button>
    <br /> <button type="button" name="button" class="btn" v-on:click="postOne('#ffccaa', 'salmon shorts', 'salmonshorts.png', 'salmon-shorts', 'shorts,warm,casual', 'Salmon shorts', 'pants')">POST</button>
    <br /> <button type="button" name="button" class="btn" v-on:click="deleteOne(3)">DELETE (one)</button>
    <br /> <a href="/imageupload"> <button type="button" name="button" class="btn">UPLOAD</button> </a>
     -->

    <Closet :list="items"></Closet>

  </div>
</template>

<script>
import axios from 'axios';
import Closet from './Closet';
export default {
  components: {
    Closet
  },
  data() {
    return {
      items: [],
      thisItem: {}
    }
  },
  mounted() {
    console.log('Communicator mounted.');
    this.getAll();
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
    },
    putOne (id, color, description, imgUrl, slug, tags, title, type) {
      axios.put(('/items/'+id), {
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
    },
    uploadOne () {
      axios.get('/imageupload')
    },
    deleteOne (id) {
      axios.delete('items/'+id, {

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
