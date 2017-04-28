<template lang="html">
  <div class="Slick">
    <div class="container-fluid">
      <div class="row">
        <div class="col-xs-12 col-sm-2">
          <div class="addNew">
            <input type="text" placeholder="Title" v-model="newTitle">
            <textarea v-model="newDescription" placeholder="A desciription of the item"></textarea>
            Tags:
            <textarea v-model="newTags" placeholder="warm, casual, athletic"></textarea>
          <a v-if="!this.showImgPath" href="/imageupload">Upload image</a>
          <span v-if="this.showImgPath"> {{ this.tempImgUrl }} </span>
          <button class="btn" v-on:click="addItem()">Submit</button>
          </div>
        </div>
        <div class="col-xs-12 col-sm-10">
          <div class="slider-top">
            <div v-for="item in list">
              <div class="innerSlide">
                <div style="height:50px; width: 100%; background-color:#cccccc;"></div>
                <h2 style="font-size:10px;">{{ item.title }}</h2>
              </div>
            </div>
            <div>
              <div class="innerSlide">
                x
              </div>
            </div>
            <div>
              <div class="innerSlide">
                y
              </div>
            </div>
            <div>
              <div class="innerSlide">
                z
              </div>
            </div>
            <div>
              <div class="innerSlide">
                ayyyy
              </div>
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
      newDescription: '',
      newTags: '',
      showImgPath: false
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
    if (window.tempImgUrl.length>0) {
      this.showImgPath = true;
    }
    window.history.pushState('x', 'refreshed', '/clean');
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
                arrows: true,
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

      $('.slider-top').slick('slickAdd','<div style="background-size: cover; background-image:url(uploads/images/'+this.tempImgUrl+')"><div class="innerSlide"><h2 style="font-size:10px;">'+this.newTitle+'</h2></div></div>', 1);

      // POST

      this.postNewItem();

      // erase new info

      this.newTitle='';
      this.newDescription='';
      this.newTags='';
      // this.tempImgUrl='';
      window.tempImgUrl=null;
      this.showImgPath=false;
    },
    slideToIt () {
      $('.slider-top').slick('slickGoTo',+2);
    }
  }
}
</script>

<style lang="css">
</style>
