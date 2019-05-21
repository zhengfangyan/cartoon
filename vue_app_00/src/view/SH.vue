<template>
  <div class="app-mh">
    <my-header></my-header> 
    <div class="container pl-0 pr-0">
      <div class="contant">
      <div class="media pt-2 pb-2 bg-white pl-0" v-for="elem of list" :key="elem.i">
        <img :src="elem.limg" class="w-25 ml-3">
        <div class="media-body ml-3">
          <p class="mb-1">
            <a href="javascript:;" class="p1 ml-2" v-text="elem.title"></a>
          </p>
          <p class="mb-1 mt-2">
            <a href="javascript:;" class="small">
              <i class="m_img m_i1"></i><span v-text="elem.author"></span>
            </a>
          </p>
          <p class="mb-1">
            <a href="javascript:;" class="small">
              <i class="m_img m_i2"></i><span v-text="elem.type"></span>
            </a>
          </p>
          <p>
            <a href="javascript:;" class="small">
              <i class="m_img m_i3"></i><span id="span1" v-text="elem.click">1111</span>
            </a>
          </p>
        </div>
      </div>
      </div>
       <div class="mui-pull-bottom-pocket mui-block mui-visibility"><div class="mui-pull"><div class="mui-pull-loading mui-icon mui-spinner mui-hidden"></div><div class="mui-pull-caption mui-pull-caption-nomore">没有更多数据了</div></div></div>
    </div>
  </div>
</template>
<script>
import myHeader from "@/components/Header.vue";
export default {
  data(){
    return{
      list:[],
    }
  },
  methods: {
    Contentlist(){
      var url="http://127.0.0.1:3000/SH";
      this.axios.get(url).then(result=>{
        this.list=result.data.data;
      })
    },
    
  },
  created() {
    this.Contentlist(); 
   
  },
  components:{
    myHeader
  }
}
</script>
<style>
  *{margin:0;padding:0;}
  /* a标签样式 */
  .app-mh a:hover{
    text-decoration: none;
    cursor: pointer;
  }
  .app-mh a{
    color:rgb(77,75,75);
  }  
  /* 最小字体样式 */
  .app-mh .small{
    color: #999;
    font-size: 0.32rem;
  }
  /* 主体 */
  .app-mh .container .contant{
    margin-top:55px;
  }
  .app-mh .container .media{
    margin-top:0.3rem;
    width:100%;
    position:relative;
  }
  .app-mh .container .media .media-body .p1{
    color:#333;
    font-size:18px;
    font-weight: bold;
  }
  .app-mh .container .media .media-body .m_img{
    display:inline-block;
    background: url(http://127.0.0.1:3000//img/Popular/v2_bookrack_sprite.png); 
    width:23px;
    height:19px;
    background-size: 95px auto;
    vertical-align:top;
    margin-left:0.5rem; 
  }
  .app-mh .container .media .media-body .m_i1{
    background-position: 2px -18px;
  }
  .app-mh .container .media .media-body .m_i2{
    background-position: 61px -18px;
  }
   .app-recommend .container .media .media-body .m_i3{
    background-position: 21.7px -19.4px;
  } 
</style>