<template>
  <footer class="app-footer">
    <ul class="d-flex list-unstyled pb-5">
      <li><a href="">成为作者</a></li>
      <li><a href="">意见反馈</a></li>
      <li><a href="">电脑端</a></li>
    </ul>
    <div class="scroll" :class="{show:isActive}">
      <div id="toTop" class="left" @click="toTop(step)"></div>
    </div>
    <div class="buttom"><a href="javascript:;"></a></div> 
  </footer>
</template>
<script>
  export default {
    props:{
      step:{   //此数据是控制动画快慢的
        type:Number,
         default:50 
      }
    },
  data(){
    return{ isActive:false,}
  },
  methods: {
    toTop(i){
      //参数i表示间隔的幅度大小，以此来控制速度
      document.documentElement.scrollTop-=i;
      if (document.documentElement.scrollTop>0) {
        var c=setTimeout(()=>this.toTop(i),20);
      }else {clearTimeout(c);}
    },
  },
  created(){
    var vm=this;
    window.onscroll=function(){
      if (document.documentElement.scrollTop>60) {
        vm.isActive=true;
      }else {vm.isActive=false;}
    }
  }
}
</script>
<style>
  .app-footer a:hover{
    text-decoration: none;
    cursor: pointer;
  }
  .app-footer ul{justify-content: center;}
  .app-footer ul li{
    margin-top:1.5rem;
    margin-left:1rem;
  }
  .app-footer ul li a{
    color: #bbb;
  }
  .app-footer .buttom a{
    background:url(../../../vue_server_00/public/img/index/footer.png) no-repeat center center;
    position: fixed;
    z-index: 80;
    width:100%;
    height:10%;
    background-size: 100% 100%;
    right: 0rem; 
    bottom: 0rem;  
  }
  .scroll{
    position: fixed;
    right: 10px;
    bottom: 60px;
    width: 45px;
    height: 90px;
    cursor: pointer;
    display: none; 
  }
  .scroll>div{
    background:url(../../../vue_server_00/public/img/index/v2_gotop.png)  no-repeat center center;
    position: fixed;
    z-index: 100;
    width:3rem;
    height:4rem;
    background-size: 100% 100%;
    right: 1rem; 
    bottom: 4.5rem; 
  }
  .show{
    display: block;
  }
</style>