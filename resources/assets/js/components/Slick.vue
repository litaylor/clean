<template lang="html">
  <div class="Slick">
    <div class="container-fluid">
      <div class="row">
        <div class="col-xs-12 col-sm-9 col-sm-push-3 bar">
          <div class="slider-top">
            <div v-for="item in list" :style="{'background-image':'url(uploads/images/'+item.imgUrl+')'}">
              <div class="innerSlide">
                <div></div>
                <h2>{{ item.title }}</h2>
                <a v-on:click="destroy(item, list)" class="closeButton" href="#"> <i class="fa fa-window-close" aria-hidden="true"></i> {{ this.closeWarning }} </a>
              </div>
            </div>
          </div>
        </div>
        <div class="col-xs-12 col-sm-3 col-sm-pull-9 bar">
          <div class="addNew">
            <a v-if="!this.showImgPath" href="/imageupload">
              <h3 class="uploadBox">Upload<br />clean<br />fit</h3></a> <br />
            <span v-if="this.showImgPath"> {{ this.tempImgUrl }} </span>
            <div v-show="this.showImgPath">
              <input type="text" placeholder="Title" v-model="newTitle">
              <textarea v-model="newDescription" placeholder="A desciription of the item"></textarea>
              <p>Tags:</p>
              <textarea v-model="newTags" placeholder="warm, casual, athletic"></textarea>
              <select v-model="newType">
                <option disabled value="">Pick a type</option>
                <option>Top</option>
                <option>Bottom</option>
                <option>Footwear</option>
              </select>
              <br />
              <button class="mybutton small" v-on:click="addItem()">Submit</button>
            </div>
          </div>
        </div>

      </div>
    </div>

  </div>
</template>

<script>
export default {
  data () {
    return {
      newTitle: '',
      newSlug: '',
      newDescription: '',
      newTags: '',
      newType: '',
      showImgPath: false,
      closeWarning: ''
    }
  },
  props: [
    'list',
    'whichRack'
  ],
  computed: {
    isSlickPopulated: function () {
      var listLength=this.list.length;
      return listLength
    },
    tempImgUrl: function () {
      return window.tempImgUrl
    }
  },
  mounted() {
    if(window.tempImgUrl) {
      if (window.tempImgUrl.length>0) {
        this.showImgPath = true;
      }
    }
    window.history.pushState('x', 'refreshed', '/');
  },
  watch: {
    list: function() {
      console.log('list changed');
      console.log(this.list);
      this.slickIt();
    },
    tempImgUrl: function() {
      // console.log('tempImgUrl changed');
      // if (tempImgUrl.length>0) {
      //   this.showImgPath = true;
      // }
    }
  },
  methods: {
    slickIt () {
      Vue.nextTick(function() {
        var mySlick=$('.slider-top');
        mySlick.slick({
          arrows: true,
          // appendArrows: '.myArrows',
          // prevArrow: '.my-prev',
          // nextArrow: '.my-next',
          swipeToSlide: true,
          centerMode: true,
          centerPadding: '60px',
          slidesToShow: 5,
          responsive: [
            {
              breakpoint: 992,
              settings: {
                arrows: true,
                centerMode: true,
                centerPadding: '40px',
                slidesToShow: 3
              }
            },
            {
              breakpoint: 480,
              settings: {
                arrows: false,
                centerMode: true,
                centerPadding: '40px',
                slidesToShow: 1
              }
            }
          ]
        });
      });
    },
    addItem () {
      // console.log("HI");
      // var theCurrentSlide = $('.slider-top').slick('slickCurrentSlide');
      this.slideToIt();

      $('.slider-top').slick('slickAdd','<div style="background-size: cover; background-image:url(uploads/images/'+this.tempImgUrl+')"><div class="innerSlide"><h2>'+this.newTitle+'</h2></div></div>', 1);

      // POST
      this.newSlug = function () {
        // from Peter Boughton at http://stackoverflow.com/questions/1053902/how-to-convert-a-title-to-a-url-slug-in-jquery
        return this.newTitle
          .toLowerCase()
          .replace(/[^\w ]+/g,'')
          .replace(/ +/g,'-')
          ;
      }
      this.postNewItem();

      // erase new info

      this.newTitle='';
      this.newDescription='';
      this.newTags='';
      this.newType='';
      // this.tempImgUrl='';
      window.tempImgUrl=null;
      this.showImgPath=false;
    },
    slideToIt () {
      $('.slider-top').slick('slickGoTo',+2);
    },
    postNewItem () {
      axios.post('/items', {
        description: this.newDescription,
        imgUrl: this.tempImgUrl,
        // slug: this.newSlug,
        tags: this.newTags,
        title: this.newTitle,//,
        type: this.newType
      })
      .then((response) => {
        console.log('Added '+'title');
      })
      .catch((error) => {

      })
    },
    destroy (item,items) {
      var x = $('.slider-top');
      var theCurrentSlide=x.slick('slickCurrentSlide');
      // console.log(theCurrentSlide);
      // console.log(item,items);
      var index=items.indexOf(item);
      var tempId = item.id;
      console.log(tempId);
      x.slick('slickRemove',theCurrentSlide);
      this.list.splice(index,1);
      axios.delete('items/'+tempId, {
      })
      .then((response) => {
        console.log('deleted');
      })
      .catch((error) => {
        location.reload();
      })
    }
  }
}
</script>

<style lang="css">
</style>
