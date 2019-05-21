<template>
  <div class="app-header container p-0">
    <!--顶部 -->
    <header class="container header d-flex pt-2 pb-1 pl-0 pr-0 bg-white" id="header" >
      <div class="col-4 ">
        <a href="javascript:;" @click="prev()">
          <img src="http://127.0.0.1:3000/img/index/header_back.png" class="t_img" alt="">
        </a> 
      </div>
      <div class="col-8 mt-1">
        <ul class="d-flex ml-4 list-unstyled">
          <li> 
            <a href="#/Search"><i class="ht_i i-1" ></i></a>
          </li>
          <li @click="drop">
            <a href="javascript:;"><i class="ht_i i-2" ></i></a>
            <div v-if="show" class="drop">
              <div class="deg"></div>
              <p><a href="#/Login"><i class="i_img1"></i><span class="ml-1 mr-3">登陆</span></a></p>
              <p class="d_hr"></p>
              <p><a href="#/Use"><i class="i_img2"></i><span class="ml-1 mr-3">我的</span></a></p>
            </div>
          </li>
          <li>
            <a href="#/Index"><i class="ht_i i-3" ></i></a>
          </li>
        </ul> 
      </div>
    </header>
  </div>
</template>
<script>
export default {
  
  data(){
    return{
      show:true,
    }
  },
  methods:{
    drop(){
      this.show=!this.show;
    },
    prev(){
      this.$router.go(-1)
    }  
  },
  created() {
    this.drop();
  },
}
</script>
<style>
  *{margin:0;padding:0}
  .app-header a:hover{
    text-decoration: none;
    cursor: pointer;
  }
  .app-header .header{
    width:100%;
    position:fixed;
    top:0; 
    z-index:100;
    border-bottom:1px solid #b3b3b3;
  }
  .app-header .header .t_img{
    width:23%;
  }
  .app-header .header a img{
    height:80%;
    width:80%;
    vertical-align: middle;
  }
  .app-header ul{
    margin-bottom:1px;
  }
  .app-header  button{
    border:0;
    outline:none;
    margin-left:10px;
  }
  .app-header  .ht_i{
    display:inline-block;
    background: url(http://127.0.0.1:3000/img/index/v2_header_sprite.png); 
    width:33px;
    height:32px;
    background-size: 120px auto;
    vertical-align: middle;
    margin-left:1.4rem; 
  }
  .app-header  .i-1{
    background-position: 3px 0px;
  }
  .app-header .i-2{
    background-position: -33px 0px;
  }
  .app-header .i-3{
    background-position: -71px 0px;
  }
  /* 下拉框 */
  .app-header .deg{
    position: relative;
    left:2rem;
    top:-1.2rem; 
    border-radius: 3px;
    width: 0px;
    border: 10px solid transparent;
    border-bottom-color:#fff;
  }
  .app-header .drop{
    padding:0px 5px 5px 5px;
    background:#fff;
    position:absolute;
    top:2.8rem;
    left:5.5rem;
    border-radius:10px;
    box-shadow: 0px 0px 8px 3px #ccc;
  }
  .app-header  .drop .d_hr{
  border-bottom:1px solid #ccc;
}
  .app-header .drop .i_img1{
    display:inline-block;
    background: url(http://127.0.0.1:3000/img/Popular/v2_bookrack_sprite.png); 
    width:30px;
    height:28px;
    background-size: 120px auto;
    vertical-align:middle;
    margin-left:0.5rem; 
   background-position: 3px -22px;
  }
  .app-header .drop .i_img2{
    display:inline-block;
    background: url(http://127.0.0.1:3000/img/index/v2_header_sprite.png); 
    width:30px;
    height:25.5px;
    background-size: 120px auto;
    vertical-align:bottom;
    margin-left:0.5rem; 
    background-position: -30px -26px;
  }
</style>