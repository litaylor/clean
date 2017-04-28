<template lang="html">
  <div class="Slick">
    <div class="container-fluid">
      <div class="row">
        <div class="col-xs-12 col-sm-2">
          <div class="addNew">
            Add new
          </div>
        </div>
        <div class="col-xs-12 col-sm-10">
          <div class="slider-top">
            <div v-for="item in list">
              <div style="height:50px; width: 100%; background-color:#cccccc;"></div>
              <h2 style="font-size:10px;">{{ item.title }}</h2>

            </div>
            <div>x</div>
            <div>y</div>
            <div>z</div>
            <div>a</div>
          </div>
        </div>
      </div>
    </div>

  </div>
</template>

<script>
export default {
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
        console.log('about to slicky');
        var mySlick=$('.slider-top');
        console.log($('.slider-top div'));
        mySlick.slick({
          arrows: true,
          centerMode: true,
          centerPadding: '60px',
          slidesToShow: 5,
          responsive: [
            {
              breakpoint: 768,
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
                slidesToShow: 2
              }
            }
          ]
        });
      });
    }
  }
}
</script>

<style lang="css">
</style>
