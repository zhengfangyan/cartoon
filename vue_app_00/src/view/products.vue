<template>
  <div class="app_products"> 
    <my-header></my-header>
    <div class="container bg-white pl-0 pr-0 pb-2">
      <div class="search">
        <my-search></my-search>
      </div>
    </div>
    <div class="contant mt-2">
      <div class="media pt-2 pb-2 bg-white pl-0" v-for="elem of products" :key="elem.i">
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
              <i class="m_img m_i3"></i><span id="span1"  v-text="elem.click>100 ? elem.click+'万' : elem.click+'亿'"></span>
            </a>
          </p>
        </div>
      </div>
      <div>
        <p class="no_p bg-white" v-show="not">
          <img src="http://127.0.0.1:3000/img/Popular/ss.png" class="w-100">
          抱歉，银家没找到关于与<span class="text-danger ml-2 mr-2">{{notfond}}</span>相关的动漫信息!
        </p>
      </div>
    </div>
  </div>
</template>
<script>
import myHeader from "@/components/Header.vue";
import mySearch from "@/components/Search.vue";
import myFooter from "@/components/Footer.vue";
export default {
  data(){
    return{
      search:"",
      products:[],
      notfond:"",
      not:false
    }
  },
  created() {
    this.search=this.$route.params.search;
  },
  methods:{
    btn(){
      var search = this.search;
      console.log(search);
			if (search) {
        var url="http://127.0.0.1:3000/refer?type="+search;
        console.log(search)
          this.axios.get(url).then(result=>{
            if(result.data.code>0){
              this.products=result.data.data;
            }else{
              this.not=true;
              this.notfond=result.data.msg;
            }
       })
      }
    },
  },
  watch:{
    search(){
    this.btn();
    }
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
  .app_products a{
    overflow: hidden;
    -webkit-line-clamp: 1;
    color:rgb(77, 75, 75);
  } 
  .app_products .search{
    margin-top:50px;
  }
   /* 搜索框 */
  .app_products .search input{
    margin-top:1rem;
    margin-left:1rem;
    border: 1px solid #49dda1;
    border-radius: 1.5rem 0 0 1.5rem;
    width:280px ;
  }
  .app_products .search button{
    margin-top:1rem;
    border:0;
    outline: 0;
    font-size:18px;
    color: #fff;
    padding:0.48rem 0.9rem 0.48rem 0.8rem;
    background: #49dda1;
    border-radius: 0 1.5rem 1.5rem 0;
  }
  
  .app_products .contant .media .media-body .p1{
    color:#333;
    font-size:1.5rem;
  }
  .app_products .contant .media .media-body .m_img{
    display:inline-block;
    background: url(http://127.0.0.1:3000//img/Popular/v2_bookrack_sprite.png); 
    width:23px;
    height:19px;
    background-size: 95px auto;
    vertical-align:bottom;
    margin-left:0.5rem; 
  }
  .app_products .contant .media .media-body .m_i1{
    background-position: 2px -18px;
  }
  .app_products .contant .media .media-body .m_i2{
    background-position: 61px -18px;
  }
  .app_products .contant .media .media-body .m_i3{
    background-position: 21.7px -19.4px;
  } 
  .app_products .no_p{
    text-align: center;
    font-size:25px;
    font-family:"STXingkai";
  }
</style>

