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
  h1 {
    font-size: 90px;
    text-align: center;
    font-weight: 100;
    border-bottom: 5px solid #E38F00;
  }
  h2 {
    font-size: 18px;
    text-align: center;
    font-weight: 400;
  }
  h1, h2, p {
    font-family: paralucent;
  }
  .bar {
    padding-top:24px;
  }
  .description {
    color: #E38F00;
    max-width: 480px;
    margin: 0 auto;
    font-size: 14px;
    line-height: 18px;
    padding: 0 12px;
  }
  .slick-slide {
    text-align: center;
    margin: 0 10px;
    background-color: #dddddd;
    background-size: cover;
    height:240px;
  }
  .slick-slide h2 {
    display: none;
  }
  .slick-slide:hover h2 {
    display: block;
    color: white;
    background-color: rgba(0,0,0,0.5);
    font-size: 40px;
  }
  .closeButton {
    display: none;
    position: absolute;
    bottom: 0px;
    /*text-align: center;*/
    padding-left: 20px;
  }
  a.closeButton:link,a.closeButton:visited,a.closeButton:active {
    color: #E38F00;
    text-decoration: none;
    font-family: paralucent;
  }
  a.closeButton:hover::after {
    content: 'Delete'
  }
  .slick-center .closeButton {
    display: block;
  }
  .uploadBox {
    background-color: #E38F00;
    height: 240px;
    line-height: 72px;
    padding: 12px 0;
    margin:0;
  }
  .uploadBox {
    font-family: paralucent;
    color: white;
    font-weight: 100;
    font-size: 60px;
    text-align: center;
  }
  .addNew a:link, .uploadBox a:active, .uploadBox a:visited, .uploadBox a:hover {
    color: white;
    text-decoration: none;
  }
  a:hover h3 {
    background-color: black;
  }

.slick-arrow {
  position: absolute;
  z-index: 100;
  top: 90px;
  background: white;
  border: none;
  height: 60px;
  padding: 0 20px;
  line-height: 60px;
  border-radius: 5px;
}
.slick-prev{
  left: 5px;
}
.slick-next{
  right: 5px;
}

.footer {
  border-top: 5px solid #E38F00;
  color: black;
  padding-top: 24px;
}

.footer a:link,.footer a:visited,.footer a:active {
  color: black;
  text-decoration: none;
}

.footer a:hover {
  color: #E38F00;
  text-decoration: none;
}

input, textarea {
  display: block;
  border-width: 0px 0px 5px;
  border-style: solid;
  border-color: #054096;
  outline: none;
  padding-left: 6px;
  margin-top: 12px;
  margin-bottom: 12px;
}

input:focus {
  background-color: #E38F00;
  color: white;
}

input:focus::-webkit-input-placeholder { /* Chrome/Opera/Safari */
  color: white;
}
input:focus::-moz-placeholder { /* Firefox 19+ */
  color: white;
}
input:focus:-ms-input-placeholder { /* IE 10+ */
  color: white;
}

textarea:focus {
  background-color: #E38F00;
  color: white;
}

select {
  border-width: 0px 0px 5px;
  border-style: solid;
  border-color: #054096;
  outline: none;
  margin-top: 12px;
  margin-bottom: 12px;
}


.mybutton {
  padding: 12px;
  background-color: #E38F00;
  text-align: center;
  cursor: pointer;
  font-weight: 900;
  border: none;
  margin-top: 12px;
  margin-bottom: 12px;
}

.mybutton:hover{
  color: white;
}

.mybutton.small {
  width: 120px;
}

</style>
