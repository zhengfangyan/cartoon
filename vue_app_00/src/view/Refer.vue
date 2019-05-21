<template>
  <div class="app_search"> 
    <my-header></my-header>
    <div class="container bg-white pl-0 pr-0 pb-2">
      <my-search></my-search>
      <div class="type container text-center">
        <p class="c_p"> 漫画分类 </p>
        <ul class="list-unstyled row">
          <li class="text-center"><a href="#/MH">魔幻</a></li>
          <li class="text-center"><a href="#/SH">生活</a></li>
          <li class="text-center"><a href="#/KH">动作</a></li>
          <li class="text-center"><a href="#/KH">科幻</a></li>
          <li class="text-center"><a href="#/MH">少年</a></li>
          <li class="text-center"><a href="#/SH">少女</a></li>
          <li class="text-center"><a href="#/TL">推理</a></li>
          <li class="text-center"><a href="#/SH">同人</a></li>
          <li class="text-center"><a href="#/SH">恋爱</a></li>
          <li class="text-center"><a href="#/SH">纯爱</a></li>
          <li class="text-center"><a href="#/GX">搞笑</a></li>
        </ul>
      </div>
    </div>
      <div class="container mt-2 bg-white">
        <p class="pt-3">猜你喜欢</p>
        <div class="row  pl-2 pr-2 pt-1 pb-2  bg-white">
          <div class="col-4 pl-0 pr-2 " v-for="elem of list" :key="elem.i">
            <div class=" bg-white">
              <img :src="elem.limg" alt="..." class=" w-100 img_fluid">
              <a :href="elem.href">
                <p class="text-leftss mb-0" v-text="elem.title"></p>
              </a>
            </div>
          </div>
        </div>
      </div>
    <my-footer></my-footer>
  </div>
</template>
<script>
import myHeader from "@/components/Header.vue";
import mySearch from "@/components/Search.vue";
import myFooter from "@/components/Footer.vue";
export default {
  data(){
    return{
      list:[],
    }
  },
  created() {
    this.centerList();
  },
  methods: {
     centerList(){
      var url="http://127.0.0.1:3000/center";
      this.axios.get(url).then(result=>{
        this.list=result.data.data.splice(3,3);
      })
    },
  },
  components:{
    myHeader,
    myFooter,
    mySearch
  }
}
</script>
<style>
  *{margin:0;padding:0}
  .app_search a{
    overflow: hidden;
    -webkit-line-clamp: 1;
    color:rgb(77, 75, 75);
  } 
  .app_search .search{
    margin-top:50px;
   }
  /* 搜索框 */
  .app_search .search input{
    margin-top:1rem;
    margin-left:1rem;
    border: 1px solid #49dda1;
    border-radius: 1.5rem 0 0 1.5rem;
    width:280px ;
  }
  .app_search .search button{
    margin-top:1rem;
    border:0;
    outline: 0;
    font-size:18px;
    color: #fff;
    padding:0.48rem 0.9rem 0.48rem 0.8rem;
    background: #49dda1;
    border-radius: 0 1.5rem 1.5rem 0;
  }
  /* 分类 */
  .app_search .type .c_p{
    font-size:1rem;
  }
  .app_search .type .c_p::before,.app_search .type .c_p::after{
    content: "———————"
  }
  .app_search .type ul{
   text-align: center;
  }
  .app_search .type ul li{
    width:110px;
    background:#f2f2f2;
    border-radius: 1.5rem;
    padding: 0.5rem 0rem;
    margin:0.3rem 0.41rem;
  }
  .app_search .type ul li a{
    color:#666;
    font-size:0.8rem;
  }
</style>