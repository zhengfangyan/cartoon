<template>
  <div class="app-rank">
    <my-header></my-header> 
    <div class="container pl-0 pr-0">
      <div class="contant">
        <div class="media  pt-2 pb-2 bg-white pl-0"  v-for="elem of rlist1" :key="elem.i">
          <img :src="elem.limg" class="w-25 ml-3">
          <div class="media-body ml-2 mt-4">
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
            <p class="p_right text-center">
              <a href="javascript:;" >
                <img :src="elem.rank" class="r_img w-50"> 
              </a>
            </p>  
          </div>
        </div> 
        <div class="right mt-1">
          <div class="right_1" v-for="elem of rlist2" :key="elem.i">
            <a href="javascript:;" >
              <img :src="elem.rank">
            </a>
          </div>
          <div class="right_2 mt-1" v-for="elem of rlist3" :key="elem.i">
            <a href="javascript:;" >
              <span v-text="elem.rank"></span>
            </a>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
import myHeader from "@/components/Header.vue";
export default {
  data(){
    return{
      rlist1:[],
      rlist2:[],
      rlist3:[]
    }
  },
  methods: {
    Contentlist1(){
      var url="http://127.0.0.1:3000/rank";
      this.axios.get(url).then(result=>{
        this.rlist1=result.data.data;
      })
    },
      Contentlist2(){
        var url="http://127.0.0.1:3000/r_rank";
        this.axios.get(url).then(result=>{
          this.rlist2=result.data.data.splice(0,3);
        })
      },
      Contentlist3(){
        var url="http://127.0.0.1:3000/r_rank";
        this.axios.get(url).then(result=>{
          this.rlist3=result.data.data.splice(3,27);
        })
      },
  },
  created() {
    this.Contentlist1(); 
    this.Contentlist2();
    this.Contentlist3();
  },
  components:{
    myHeader
  }
}
</script>
<style>
  *{margin:0;padding:0;}
  /* a标签样式 */
  .app-rank a:hover{
    text-decoration: none;
    cursor: pointer;
  }
  .app-rank a{
    color:rgb(77,75,75);
  }  
  /* 最小字体样式 */
  .app-rank .small{
    color: #999;
    font-size: 0.32rem;
  }
  /* 主体 */
  .app-rank .container .contant{
    margin-top:55px;
    position:relative;
  }
  .app-rank .container .media{
    margin-top:0.4rem;
    width:100%;
  }
  .app-rank .container .media .media-body .p1{
    color:#333;
    font-size:16px;
    font-weight: bold;
  }
  .app-rank .container .media .media-body .m_img{
    display:inline-block;
    background: url(http://127.0.0.1:3000//img/Popular/v2_bookrack_sprite.png); 
    width:23px;
    height:19px;
    background-size: 95px auto;
    vertical-align:top;
    margin-left:0.5rem; 
  }
  .app-rank .container .media .media-body .m_i1{
    background-position: 2px -18px;
  }
  .app-rank .container .media .media-body .m_i2{
    background-position: 61px -18px;
  }
  .right{
    position:absolute;
    top:3px;
    right:3px; 
  }
  .right_1,.right_2{
    margin-bottom:0.4rem;
    width:50px;
    height:153px;
    text-align:center;
  }
  .right_2 a{
    font-size:35px;
    color:#c5c5c5;
    font-weight: bold;
  }
  .right_1 img{
    width:40px;
    height:47px; 
  }
</style>