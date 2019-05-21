<template>
  <div class="app-hot">
    <my-header></my-header> 
    <div class="container pl-0 pr-0">
      <div class="contant">
      <div class="media pt-2 pb-2 bg-white pl-0" v-for="elem of list" :key="elem.i">
        <div class="w-25">
          <a :href="elem.href">
            <img :src="elem.limg" class="w-100 ml-3">
          </a>
        </div>
        <div class="media-body ml-3">
          <p class="mb-1">
            <a :href="elem.href" class="p1 ml-2" v-text="elem.title"></a>
          </p>
          <p class="mb-1 mt-2">
            <a :href="elem.href" class="small">
              <i class="m_img m_i1"></i><span v-text="elem.author"></span>
            </a>
          </p>
          <p class="mb-1">
            <a :href="elem.href" class="small">
              <i class="m_img m_i2"></i><span v-text="elem.type"></span>
            </a>
          </p>
          <p>
            <a :href="elem.href" class="small">
              <i class="m_img m_i3"></i><span v-text="elem.click>100 ? elem.click+'万' : elem.click+'亿'"></span>
            </a>
          </p>
        </div>
      </div>
      
      </div>
    </div>
    <my-footer></my-footer>  
  </div>
</template>
<script>
import myHeader from "@/components/Header.vue";
import myFooter from "@/components/Footer.vue";
export default {
  data(){
    return{
      list:[],
    }
  },
  methods: {
    Contentlist(){
      var url="http://127.0.0.1:3000/cantent";
      this.axios.get(url).then(result=>{
        this.list=result.data.data.splice(45,18);
      })
    }
  },
  created() {
    this.Contentlist(); 
  },
  components:{
    myHeader,
    myFooter,
  }
}
</script>
<style>
  *{margin:0;padding:0;}
  /* a标签样式 */
  .app-hot a{
    overflow: hidden;
    -webkit-line-clamp: 1;
    color:rgb(77, 75, 75);
  } 
  .app-hot a:hover{
    text-decoration: none;
    cursor: pointer;
  }
  /* 最小字体样式 */
  .app-hot .small{
    color: #999;
    font-size: 0.32rem;
  }
  /* 主体 */
   .app-hot .container .contant{
     margin-top:60px;
   }
  .app-hot .container .media{
   margin-top:0.3rem;
   width:100%;
  }
  .app-hot .container .media .media-body .p1{
    color:#333;
    font-size:1.5rem;
  }
  .app-hot .container .media .media-body .m_img{
    display:inline-block;
    background: url(http://127.0.0.1:3000//img/Popular/v2_bookrack_sprite.png); 
    width:23px;
    height:19px;
    background-size: 95px auto;
    vertical-align:bottom;
    margin-left:0.5rem; 
  }
  .app-hot .container .media .media-body .m_i1{
    background-position: 2px -18px;
  }
  .app-hot .container .media .media-body .m_i2{
    background-position: 61px -18px;
  }
  .app-hot .container .media .media-body .m_i3{
    background-position: 21.7px -19.4px;
  } 
</style>