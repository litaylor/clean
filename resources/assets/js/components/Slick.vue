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
          <a href="/imageupload">Upload image</a>
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
      newTags: ''
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
      }
  },
  mounted() {
    // this.slickIt();
  },
  watch: {
    list: function() {
      console.log('list changed');
      console.log(this.list);
      this.slickIt();
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

      $('.slider-top').slick('slickAdd','<div><div class="innerSlide"><h2 style="font-size:10px;">'+this.newTitle+'</h2></div></div>', 1);


      // erase new info
      // POST
    },
    slideToIt () {
      $('.slider-top').slick('slickGoTo',+2);
    }
  }
}
</script>

<style lang="css">
</style>
