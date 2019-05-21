<template>
  <div class="app-home container p-0">
    <!--顶部 -->
    <div class="home-header">
      <header class="container header d-flex pt-2 pb-1 pl-0 pr-0 bg-white" id="header" >
        <div class="col-4 ">
          <a href="javascript:;">
            <img src="../../../vue_server_00/public/img/index/logo.png" class="" alt="">
          </a> 
        </div>
        <div class="col-8 mt-1">
          <ul class="d-flex ml-4 list-unstyled">
            <li> 
              <a href="#/Refer"><i class="ht_i i-1" ></i></a>
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
    <!-- 轮播图 -->
    <div class="p-0 bg-white">
      <mt-swipe :auto="4000" :show-indictors="false">
        <mt-swipe-item v-for="item of list" :key="item.i">
          <a :href="item.href"><img :src="item.img"></a>
        </mt-swipe-item>  
      </mt-swipe>
    </div> 
    <!-- title -->
    <div class="title bg-white">
      <ul class="d-flex list-unstyled m-0">
        <li class="col-6 text-center">  
          <a href="#/Update">
          更新
          </a>
        </li>
        <li class="col-6 text-center">
          <a href="#/Rank">
          排行
          </a>
        </li>
      </ul>
    </div>
    <!-- 主体 -->
    <div class="center">
      <!-- 标题 -->
      <div class="center_title p-2 text-center">
        <img src="http://127.0.0.1:3000/img/index/v2_qt_tit.png" class="w-50" alt="">
      </div>
      <!-- 主体内容 -->
      <div class="container "> 
        <!-- 第一层 -->
        <div class="row  pl-2 pr-2 pt-3 pb-2 bg-white">
          <div class="col-4 pl-0 pr-2 " v-for="elem of clist_1" :key="elem.i">
            <div class="card bg-white ">
              <a :href="elem.href">
                <img v-lazy="elem.limg" alt="..." class="img1 img_fluid">
                <p  class="text-center mb-0" v-text="elem.title"></p>
              </a>
            </div>
          </div>
        </div>
        <!-- 第二层 -->
        <div class="row  pl-2 pr-2 pt-3 pb-2 mt-3 bg-white">
          <p class="col-12 p-title text-center">人气作品
            <a href="#/Moods">更多>></a>
          </p>
          <div class="col-4 pl-0 pr-2 " v-for="elem of clist_2" :key="elem.i">
            <div class="card bg-white">
              <a :href="elem.href">
                <img :src="elem.limg" alt="..." class=" w-100 img_fluid">
                <p class="text-center mb-0" v-text="elem.title"></p>
              </a>
            </div>
          </div>
        </div>
         <!-- 第三层 -->
        <div class="row  pl-2 pr-2 pt-3 pb-2 mt-3 bg-white">
          <p class="col-12 p-title text-center">精品推荐
            <a href="#/Recommend">更多>></a>
          </p>
          <div class="col-4 pl-0 pr-2 " v-for="elem of clist_3" :key="elem.i">
            <div class="card bg-white">
              <a :href="elem.href">
                <img :src="elem.limg" alt="..." class=" w-100 img_fluid">
                <p class="text-center mb-0" v-text="elem.title"></p>
              </a>
            </div>
          </div>
        </div>
        <!-- 第四层 -->
        <div class=" row center_4 bg-white pb-3 mt-3 pl-2 pr-2 pt-2">
          <p class="col-12 p-title text-center ">热力点击
            <a href="#/Hot">更多>></a>
          </p>
          <div class="media mt-2" v-for="elem of clist_4" :key="elem.i">
            <a :href="elem.href">
              <img :src="elem.limg">
               <div class="media-body">
                <p class="mb-1 mt-3 p1" v-text="elem.title" ></p>
                <p class="mb-1" v-text="elem.type"></p>
                <p class=" mb-0" v-text="elem.author"></p>
              </div>
            </a>
          </div>
        </div>
         <!-- 第五层 -->
        <div class=" row center_5 bg-white pb-3 mt-3 pl-2 pr-2 pt-2">
          <p class="col-12 p-title text-center pb-2">今日推荐</p>
          <div class="media mt-2" v-for="elem of clist_5" :key="elem.i" >
            <a :href="elem.href">
              <img :src="elem.limg">
              <div class="media-body ml-3">
                <p class="p1 mt-4" v-text="elem.title" ></p>
                <p class="p2" v-text="elem.type"></p>
                <p class="p3" v-text="elem.author"></p>
              </div>
            </a>
          </div>
        </div>
        <!-- 第六层 -->
        <div class="row  pl-2 pr-2 pt-3 pb-2 mt-3 bg-white">
          <p class="col-12 p-title text-center">完结漫画
            <a href="#/End">更多>></a>
          </p>
          <div class="col-4 pl-0 pr-2 " v-for="elem of clist_6" :key="elem.i">
            <div class="card bg-white">
              <a :href="elem.href">
                <img :src="elem.limg" alt="..." class=" w-100 img_fluid">
                <p class="text-center mb-0" v-text="elem.title"></p>
              </a>
            </div>
          </div>
        </div>
         <!-- 第七层 -->
        <div class="row  pl-2 pr-2 pt-3 pb-2 mt-3 bg-white">
          <p class="col-12 p-title text-center">全彩漫画
            <a href="#/Colours">更多>></a>
          </p>
          <div class="col-4 pl-0 pr-2 " v-for="elem of clist_7" :key="elem.i">
            <div class="card bg-white">
              <a :href="elem.href">
                <img :src="elem.limg" alt="..." class=" w-100 img_fluid">
                <p class="text-center mb-0" v-text="elem.title"></p>
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <my-footer></my-footer>  
  </div>
</template>
<script>
import myFooter from "@/components/Footer.vue";
export default {
  data(){
    return{
      list:[],//轮播图数组
      clist_1:[],//主体 f1内容
      clist_2:[],//主体 f2内容
      clist_3:[],//主体 f3内容
      clist_4:[],//主体 f4内容
      clist_5:[],//主体 f5内容
      clist_6:[],//主体 f6内容
      clist_7:[],//主体 f6内容
      show:true,
    }
  },
  created() {
    //vue组件创建成功后调用
    this.navList();
    this.centerList1();//第一层
    this.centerList2();//第二层
    this.centerList3();//第三层
    this.centerList4();//第四层
    this.centerList5();//第五层
    this.centerList6();//第六层
    this.centerList7();//第七层
    this.drop();
  },
  methods:{
    drop(){
      this.show=!this.show;
    },
    navList(){
      //功能：发送ajax请求获取轮播图列表
      // 1：创建url变量
      var url="http://127.0.0.1:3000/imglist";
      // 2：发送ajax请求
      this.axios.get(url).then(result=>{
        // 3：获取服务器返回数据
        // 4：保存data中
        this.list=result.data.data;
        console.log(1)
        // console.log(this.list);
      })
    },
    //第一层
    centerList1(){
      var url="http://127.0.0.1:3000/center1";
      this.axios.get(url).then(result=>{
        this.clist_1=result.data.data
      })
    },
    // 第二层
    centerList2(){
      var url="http://127.0.0.1:3000/center";
      this.axios.get(url).then(result=>{
        this.clist_2=result.data.data.splice(6,6);  
      })
    },
     // 第三层
    centerList3(){
      var url="http://127.0.0.1:3000/center";
      this.axios.get(url).then(result=>{
        this.clist_3=result.data.data.splice(12,3);
      })
    },
     // 第四层
    centerList4(){
      var url="http://127.0.0.1:3000/center";
      this.axios.get(url).then(result=>{
        this.clist_4=result.data.data.splice(15,3);
      })
    },
     // 第五层
    centerList5(){
      var url="http://127.0.0.1:3000/center";
      this.axios.get(url).then(result=>{
        this.clist_5=result.data.data.splice(18,2);
      })
    },
     // 第六层
    centerList6(){
      var url="http://127.0.0.1:3000/center";
      this.axios.get(url).then(result=>{
        this.clist_6=result.data.data.splice(20,3);
      })
    },
      // 第七层
    centerList7(){
      var url="http://127.0.0.1:3000/center";
      this.axios.get(url).then(result=>{
        this.clist_7=result.data.data.splice(23,3);
      })
    },
  }, 
  components:{
    // myHeader,
    myFooter
  }
}
</script>
<style>
*{margin:0;padding:0}
/* 所有a标签样式 */
.app-home a:hover{
  text-decoration: none;
  cursor: pointer;
}
 .app-home a{
   overflow: hidden;
  -webkit-line-clamp: 1;
  color:rgb(77, 75, 75);
} 
.app-home a p{
  color:rgb(77, 75, 75);
} 
.app-home a p:hover{
  color:#000;
} 
/* 头部 */
.app-home .home-header .header{
  width:100%;
  position:fixed;
  top:0; 
  z-index:100;
  border-bottom:1px solid #b3b3b3;
}
.app-home .home-header .header a img{
  height:80%;
  width:80%;
  vertical-align: middle;
}
.app-home .home-header ul{
  margin-bottom:1px;
}
.app-home .home-header button{
  border:0;
  outline:none;
  margin-left:10px;
}
.app-home .home-header  .ht_i{
  display:inline-block;
  background: url(http://127.0.0.1:3000/img/index/v2_header_sprite.png); 
  width:33px;
  height:32px;
  background-size: 120px auto;
  vertical-align: middle;
  margin-left:1.4rem; 
}
.app-home .home-header  .i-1{
  background-position: 3px 0px;
}
.app-home .home-header .i-2{
  background-position: -33px 0px;
}
.app-home .home-header .i-3{
  background-position: -71px 0px;
}
  /* 下拉框 */
.app-home .home-header .deg{
  position: relative;
  left:2rem;
  top:-1.2rem; 
  border-radius: 3px;
  width: 0px;
  border: 10px solid transparent;
  border-bottom-color:#fff;
}
.app-home .home-header .drop{
  padding:0px 5px 5px 5px;
  background:#fff;
  position:absolute;
  top:2.8rem;
  left:5.5rem;
  border-radius:10px;
  box-shadow: 0px 0px 8px 3px #ccc;
}
.app-home .home-header .drop .d_hr{
  border-bottom:1px solid #ccc;
}
.app-home .home-header .i_img1{
  display:inline-block;
  background: url(http://127.0.0.1:3000/img/Popular/v2_bookrack_sprite.png); 
  width:30px;
  height:28px;
  background-size: 120px auto;
  vertical-align:middle;
  margin-left:0.5rem; 
  background-position: 3px -22px;
}
.app-home .home-header .drop .i_img2{
  display:inline-block;
  background: url(http://127.0.0.1:3000/img/index/v2_header_sprite.png); 
  width:30px;
  height:25.5px;
  background-size: 120px auto;
  vertical-align:bottom;
  margin-left:0.5rem; 
  background-position: -30px -26px;
}
/* 轮播图的高度 */
.app-home .mint-swipe{
  height:244px;
}
.app-home .mint-swipe img{
  margin-top:50px;
  width:100%;
}
/* 指示器 */
.app-home .mint-swipe-indicator.is-active {
    width: 7px;
    height:7px;
    background:#fff;
    opacity: 1;
    border-radius: 0;
    transform: rotate(40deg);
}
.app-home .mint-swipe-indicator {
  display: inline-block;
  width: 8px;
  height: 8px;
  border-radius: 100%;
  background: #000;
  opacity: 0.8;
  margin: 0 3px;
}
/* 主体的标题 */
 .app-home .title ul li:first-child{
  border-right:1px solid #b3b3b3;
} 
.app-home .title ul li a{
  color:#333;
  font-size:1rem;
}
.app-home .title ul li {
  padding:0.65rem;
}
.app-home .title ul li:first-child ::before{
  content: "";
  display: inline-block;
   background: url(http://127.0.0.1:3000/img/index/v2_index_ico.png); 
  width:23px;
  height:23px;
  background-size: 202px auto;
  background-position:-24px -25px ;
  vertical-align:bottom;
}
.app-home .title ul li:nth-child(2) ::before{
  content: "";
  display: inline-block;
   background: url(http://127.0.0.1:3000/img/index/v2_index_ico.png); 
  width:23px;
  height:23px;
  background-size: 202px auto;
  background-position:3px -119px ;
  vertical-align:bottom;
}
/* 第一次标题 */
.app-home .center_title{
  background: #49dda1 !important;
  width:100%;
  border-radius: 12px 12px 0 0;
}
/* 主体内容 */
.app-home .container .card{
  border-radius: 6px;
  box-shadow: 0px 4px 8px 0px rgba(0, 0, 0, 0.1);
  margin-bottom: 0.373333rem;
}
.app-home .container .card .img1{
  width:109.66px;
  height:144.64px;
}
.app-home .container .card img{
  border-radius: 6px 6px 0 0;
  margin-bottom: 0.373333rem;
}
/* 第二层标题 */
.app-home .container .p-title{
  color: #000;
  font-size:18px;
  font-weight: bolder;
}
.app-home .container .p-title a{
  font-size:15px;
  color:#ccc;
  float:right;
}
/* 第四层 */
.app-home .container .center_4 .media img{
  width:55%;
  height:100%;
} 
.app-home .container .center_4 .media {
  background:#f2f2f2;
}
.app-home .container .center_4 .media .media-body{
  margin-left: 10px;
  width:35%;
  float:right;
} 
.app-home .container .center_4 .media .p1{
  font-weight: bold;
  color:#333;
}
/* 第五层 */
.app-home .container .center_5 .media img{
  width:35%;
  height:98%;
} 
.app-home .container .center_5 .media .p1{
  color:#333;
  font-size: 20px;
  font-weight: bold;
}
.app-home .container .center_5 .media .media-body{
  width:50%;
  float:right;
} 
</style>