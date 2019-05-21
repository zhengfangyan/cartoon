<template>
  <div class="app-update">
    <myHeader></myHeader>
    <div class="container pl-0 pr-0">
      <div class="tab">
        <!-- <div class="tab-ul"> -->
          <ul class="tab-tilte d-flex list-unstyled mb-0">
            <li @click="cur=0" :class="{active:cur==0}">日</li>
            <li @click="cur=1" :class="{active:cur==1}">一</li>
            <li @click="cur=2" :class="{active:cur==2}">二</li>
            <li @click="cur=3" :class="{active:cur==3}">三</li>
            <li @click="cur=4" :class="{active:cur==4}">四</li>
            <li @click="cur=5" :class="{active:cur==5}">五</li>
            <li @click="cur=6" :class="{active:cur==6}">六</li>
          </ul>
        <div class="tab-content">
          <div v-show="cur==0">
            <div class="media pt-2 bg-white pl-0  mb-2" v-for="elem of ulist1" :key="elem.i">
              <div>
                <a :href="elem.href">
                  <img :src="elem.limg" class="ml-3">
                </a>
              </div>
              <div class="media-body ml-3">
                <p class="mb-1">
                  <a :href="elem.href" class="p1 ml-2" v-text="elem.title"></a>
                </p>
                <p class="mb-1 mt-1">
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
          <div v-show="cur==1">
            <div class="media pt-2 bg-white pl-0 mt-0 mb-2" v-for="elem of ulist2" :key="elem.i">
              <div>
                <a :href="elem.href">
                  <img :src="elem.limg" class=" ml-3">
                </a>
              </div>
              <div class="media-body ml-3">
                <p class="mb-1">
                  <a :href="elem.href" class="p1 ml-2" v-text="elem.title"></a>
                </p>
                <p class="mb-1 mt-1">
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
          <div v-show="cur==2">
            <div class="media pt-2 bg-white pl-0 mt-0 mb-2" v-for="elem of ulist3" :key="elem.i">
              <div>
                <a :href="elem.href">
                  <img :src="elem.limg" class=" ml-3">
                </a>
              </div>
              <div class="media-body ml-3">
                <p class="mb-1">
                  <a :href="elem.href" class="p1 ml-2" v-text="elem.title"></a>
                </p>
                <p class="mb-1 mt-1">
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
          <div v-show="cur==3">
            <div class="media pt-2 bg-white pl-0 mt-0 mb-2" v-for="elem of ulist4" :key="elem.i">
              <div>
                <a :href="elem.href">
                  <img :src="elem.limg" class=" ml-3">
                </a>
              </div>
              <div class="media-body ml-3">
                <p class="mb-1">
                  <a :href="elem.href" class="p1 ml-2" v-text="elem.title"></a>
                </p>
                <p class="mb-1 mt-1">
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
          <div v-show="cur==4">
            <div class="media pt-2 bg-white pl-0 mt-0 mb-2" v-for="elem of ulist5" :key="elem.i">
              <dir>
                <a :href="elem.href">
                  <img :src="elem.limg" class=" ml-3">
                </a>
              </dir>
              <div class="media-body ml-3">
                <p class="mb-1">
                  <a :href="elem.href" class="p1 ml-2" v-text="elem.title"></a>
                </p>
                <p class="mb-1 mt-1">
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
          <div v-show="cur==5">
            <div class="media pt-2 bg-white pl-0 mt-0 mb-2" v-for="elem of ulist6" :key="elem.i">
              <div>
                <a :href="elem.href">
                  <img :src="elem.limg" class=" ml-3">
                </a>
              </div>
              <div class="media-body ml-3">
                <p class="mb-1">
                  <a :href="elem.href" class="p1 ml-2" v-text="elem.title"></a>
                </p>
                <p class="mb-1 mt-1">
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
          <div v-show="cur==6">
            <div class="media pt-2 bg-white pl-0 mt-0 mb-2" v-for="elem of ulist7" :key="elem.i">
              <div>
                <a :href="elem.href">
                  <img :src="elem.limg" class=" ml-3">
                </a>
              </div>
              <div class="media-body ml-3">
                <p class="mb-1">
                  <a :href="elem.href" class="p1 ml-2" v-text="elem.title"></a>
                </p>
                <p class="mb-1 mt-1">
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
      </div>
    </div>      
  </div>
</template>
<script>
import myHeader from "@/components/Header.vue";
export default {
  data(){
    return{ 
      ulist1:[],
      ulist2:[],
      ulist3:[],
      ulist4:[],
      ulist5:[],
      ulist6:[],
      ulist7:[],
      cur: 0 //默认选中第一个tab
    }
  },
  methods: {
    Contentlist1(){
      var url="http://127.0.0.1:3000/cantent";
      this.axios.get(url).then(result=>{
        this.ulist1=result.data.data.splice(0,20);
        this.ulist2=result.data.data.splice(0,20);
        this.ulist3=result.data.data.splice(0,20);
        this.ulist4=result.data.data.splice(0,20);
        this.ulist5=result.data.data.splice(0,20);
        this.ulist6=result.data.data.splice(0,20);
        this.ulist7=result.data.data.splice(0,20);
      })
    },
     Contentlist2(){
      var url="http://127.0.0.1:3000/cantent";
      this.axios.get(url).then(result=>{
        this.ulist7=result.data.data.splice(76,20);
      })
    },
  },
  created() {
    this.Contentlist1(); 
    this.Contentlist2(); 
  },
   components:{
    myHeader
  }
}
</script>
<style type="text/css">
  *{margin:0;padding:0;}
  /* a标签样式 */
  .app-update a:hover{
    text-decoration: none;
    cursor: pointer;
  }
  .app-update a{
    color:rgb(77,75,75);
  }  
  /* 主体 */
  .app-update .container .tab{
    margin-top:50px;
  }
  .app-update .tab-tilte {
    width:100%;
    height:47px;
    position: fixed;
    z-index: 100px;
    background-color:#f4f4f4;
  }
  .app-update .tab-tilte li{
    width:53.5px;
    height:30px;
    margin:8px 1px;
    line-height:30px;
    text-align: center;
    cursor: pointer;
  }
  /* 点击对应的标题添加对应的背景颜色 */
  .app-update .tab-tilte .active{
    background: #dcf0e8;
    border-radius: 0.4rem;
    color: #1ddd8f;
    border-radius:1.5rem;
  }
  .app-update .container .tab .media{
   margin-top:0.3rem;
   width:100%;
  }
  .app-update .container .tab .media img{
    width:80px;
  }
  .app-update .container .tab .media .media-body .p1{
    color:#333;
    font-size:17px;
    font-weight: bold;
  }
  .app-update .container .tab .media .media-body .m_img{
    display:inline-block;
    background: url(http://127.0.0.1:3000//img/Popular/v2_bookrack_sprite.png); 
    width:23px;
    height:19px;
    background-size: 95px auto;
    vertical-align:top;
    margin-left:0.5rem; 
  }
  .app-update .container .tab .media .media-body .m_i1{
    background-position: 2px -18px;
  }
  .app-update .container .tab .media .media-body .m_i2{
    background-position: 61px -18px;
  }
  .app-update .container .tab .media .media-body .m_i3{
    background-position: 21.7px -19.4px;
  } 
  .app-update .container .tab .tab-content{
    padding-top:50px; 
  }
  </style>