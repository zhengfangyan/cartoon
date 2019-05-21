<template>
  <div class="app-use">
    <my-header></my-header> 
   <div class="container pr-0 pl-0 pb-0">
      <div class="use text-center bg-white">
        <div class="top"></div>
        <!-- top -->
        <div class=" pt-5 pb-2">
          <img src="http://127.0.0.1:3000/img/login/default.gif" alt="" class="img1">
          <p class="up_1"><span class="uname">{{uname}}</span></p>
          <p>会员时长剩余0天</p>
        </div>
      </div>
      <!-- title -->
      <div class="mt-2 bg-white ">
          <ul class="d-flex list-unstyled row m-0 p-0">
            <li class="col-6 text-center"><a href="#">0</a><p>妖气币</p></li>
            <li class="col-6 text-center"><a href="#">0</a><p>月票</p></li>
          </ul>
      </div>
      <!-- 书架 -->
      <div class="bg-white p-0 mt-2 book mui-table-view-cell">
        <ul class="mui-table-view">
           <li class="mui-table-view-cell mui-collapse">
					  	<a class="mui-navigate-right name_1 tub_1"><span>书架</span></a>
					  	<div class="mui-collapse-content p-0">
					  	  <ul class="tab-tilte1 d-flex list-unstyled mt-3 mb-2">
                  <li @click="cur=0" :class="{active:cur==0}">收藏</li>
                  <li @click="cur=1" :class="{active:cur==1}">历史</li>
					  	  </ul>
                <div class="t_hr"></div>
                <div class="text-center">
                  <div v-show="cur==0" class="t_bg">
                    <img src="http://127.0.0.1:3000/img/Popular/nullPic.png" class="w-50  pb-3">
                  </div>
                  <div v-show="cur==1" class="t_bg">
                    <img src="http://127.0.0.1:3000/img/Popular/nullPic.png" class="w-50  pb-3">
                  </div>
                </div>
					  	</div>
					  </li>
        </ul>
      </div> 
      <div class="mui-content mt-2">
			  <div class="mui-card m-0">
				  <ul class="mui-table-view">
            <!-- VIP充值 -->
				    <li class="mui-table-view-cell mui-collapse">
						  <a class="mui-navigate-right name_1 tub_2" href="#"><span>VIP充值</span></a>
						    <div class="mui-collapse-content p-0">
                <div class="t_bg w-100 pl-3 mt-2 pt-2 pb-2">
                  <span class="text-right mr-3">VIP开通推荐</span><span class="text-danger">(中断续费将不再享受专享价格)</span>
                  <div class="price">
                    <p @click="cur=0" :class="{active:cur==0}">88元/12个月</p>
                    <p @click="cur=1" :class="{active:cur==1}"><s>30元</s>18元素/1个月</p>
                    <p @click="cur=2"  :class="{active:cur==2}">8元素/1个月</p>
                  </div>
                </div>
                <div class="t_hr"></div>
                <div>
                  <p class="ml-3 pt-2 pb-2 " id="header">选择支付方式</p>
                  <div class="t_hr"></div>
                  <form class="mui-input-group" style="margin-bottom: 15px;">
				            <div class="mui-input-row mui-radio">
					            <label>
                        <img src="http://127.0.0.1:3000/img/Popular/recharge_alipy.png" class="mr-2">支付宝
                      </label>
					            <input name="style" type="radio" checked="" value="right-none">
				            </div>
				            <div class="mui-input-row mui-radio">
					            <label>
                        <img src="http://127.0.0.1:3000/img/Popular/recharge_wxpay.png" class="mr-2">微信
                      </label>
					            <input name="style" type="radio" checked="" value="right-none">
				            </div>
			            </form>
                </div>
                <div class="t_hr"></div>
							  <div>
                  <div class="w-100">
                    <p class="ml-3 pt-2 pb-2">VIP会员独有特权</p>
                    <div class="t_hr"></div>
                    <img src="http://127.0.0.1:3000/img/Popular/vip_privilege.png" class="w-100">
                  </div>
                </div>
                <div class="t_bg">
                  <button class="t_pay mt-3 mb-3">立即支付</button>
                </div>
						  </div>
					  </li> 
          <!-- 妖气币充值 -->
					  <li class="mui-table-view-cell mui-collapse">
					  	<a class="mui-navigate-right name_1 tub_3" ><span>妖气币充值</span></a>
					  	<div class="mui-collapse-content p-0">
                <div class="t_bg w-100 pl-3 mt-2 pt-2 pb-2">
                  <span class="text-right mr-3">当前账号：{{uname}}</span>
                  <span class="ml-5 h6">余额：<span class="text-danger">0</span>妖气币</span>
                </div>
                <div class="mt-2">
                  <div class="ml-3 d-flex">
                    <span class="mt-2 mr-2">充值金额:</span>
                    <div class="buttn">
                      <button class="t_btn1" @click="subtract">-</button>
                      <span class="t_sp border">{{n.toFixed(2)}}</span>
                      <button class="t_btn2" @click="add">+</button> 
                    </div>
                  </div>
                  <p class="mt-3 ml-3 mb-3 text-dark h6">妖气币数量：<span class="text-danger">{{n*100}}</span>妖气币</p>
                  <div class="t_hr"></div>
                  <div>
                    <p class="ml-3 pt-2 pb-2 " id="header">选择支付方式</p>
                    <div class="t_hr"></div>
                    <form class="mui-input-group" style="margin-bottom: 15px;">
				              <div class="mui-input-row mui-radio">
					              <label>
                          <img src="http://127.0.0.1:3000/img/Popular/recharge_alipy.png" class="mr-2">支付宝
                        </label>
					              <input name="style" type="radio" checked="" value="right-none">
				              </div>
				              <div class="mui-input-row mui-radio">
					              <label>
                          <img src="http://127.0.0.1:3000/img/Popular/recharge_wxpay.png" class="mr-2">微信
                        </label>
					              <input name="style" type="radio" checked="" value="right-none">
				              </div>
			              </form>
                  </div>
                </div>
                <div class="t_bg">
                  <button class="t_pay mt-3 mb-3">立即支付</button>
                </div>
					  	</div>
					  </li>
          <!-- 消费记录 -->
					  <li class="mui-table-view-cell mui-collapse">
					  	<a class="mui-navigate-right name_1 name_1 tub_4"><span>消费记录</span></a>
					  	<div class="mui-collapse-content p-0">
					  	  <ul class="tab-tilte1 d-flex list-unstyled mt-3 mb-2">
                  <li @click="cur=0" :class="{active:cur==0}">充值记录</li>
                  <li @click="cur=1" :class="{active:cur==1}">购买记录</li>
					  	  </ul>
                <div class="t_hr"></div>
                <div class="mt-2 text-center pt-3 pb-3">
                  <div v-show="cur==0">
                    没有充值记录
                  </div>
                   <div v-show="cur==1">
                    没有购买记录
                  </div>
                </div>
					  	</div>
					  </li>
				  </ul>
			  </div>
	  	</div>
      <input type="button" value="退出当前用户登录" class="btn mt-2" @click="quit">
    </div>
  </div>
</template>
<script>
  import myHeader from "@/components/Header.vue"
  export default {
    data(){
      return{
        uname:"",
        cur: 0,
        n:1
      }
    },
    methods: {
      name(){
        if(!sessionStorage.getItem("uname")){
          this.uname="有妖气欢迎你"
          this.$router.push({path:"/login"})
        }
        if(sessionStorage.getItem("uname")){
          this.uname="漫友"+sessionStorage.getItem("uname")
        }
      },
      quit(){
        sessionStorage.removeItem("uname");
        location.href="#/login";
      },
      add(){
        this.n++;
      },
      subtract(){
        if(this.n>0){
          this.n--;
        }
      }
    },
    created() {
      this.name();
    },
    components:{
      myHeader,
    }
  }
</script>
<style>
  *{margin:0;padding:0}
  .app-use a{
    color:rgb(77,75,75);
  }
  .app-use .use{
    margin-top:50px;
  } 
  .app-use .img1{
    width:60px;
    border-radius: 50px;
  }
  .app-use .up_1{
    color: #000;
    font-size:17px;
  }
  .app-use .uname{
    font-size: 18px;
    font-weight: bold;
  }
  .app-use .mui-table-view span,.app-use .book span {
    color: #333;
    font-size:16px;
  }
  /* 小图标 */
  .app-use .name_1  ::before{
    content: "";
    display:inline-block;
    background: url(http://127.0.0.1:3000/img/login/tubiao.png); 
    width:27px;
    height:28px;
    background-size: 120px auto;
    vertical-align:bottom;
    margin-right:0.7rem; 
  }
  .app-use .tub_1 ::before{
    background-position:2px -24px;
  }
  .app-use .tub_2 ::before{
    background-position:-29px 3px;
  }
  .app-use .tub_3 ::before{
    background-position:61px -24px;
  } 
  .app-use .tub_4 ::before{
    background-position:27px -24px;
  }
  /* 消费记录 */
  .app-use .tab-tilte1 li{
    width:50%;
    height:30px;
    color:#ccc;
    font-size: 17px;
    line-height:35px;
    text-align: center;
  }
  .app-use .tab-tilte1 .active{
    border-radius: 0.4rem;
    background: #dcf0e8;
    border-radius: 0.4rem;
    color: #1ddd8f;
    border-radius:1.5rem;
    border-bottom:#1ddd8f;
  }
  /* VIP充值 */
  .app-use .price{
    display:flex;
    flex-wrap: wrap;
    margin-bottom:10px; 
  }
  .app-use .price p{
    width:168.5px;
    height:66px;
    color:#333;
    border:1px solid #ccc;
    background: #fff;
    text-align: center;
    line-height:66px;
    font-size: 17px;
    margin-right:10px;
    margin-top:10px;
  }
  .app-use .price .active{
    border: 1px solid #1ddd8f;
    color: #1ddd8f;
  }
  /* 妖气币充值 */
  /* 支付背景 */
  .app-use .t_bg{
    border-top:4px solid #fff; 
    background: #f2f2f2;
  }
  /* 支付图标 */
   .app-use  label img{
    width:27px;
  }
  .app-use .buttn .t_btn1,.app-use .buttn .t_btn2{
    width:60px;
    height:35px;
    font-size:25px;
    line-height: 20px;
    outline: 0;
    border-radius: 1.5rem 0 0 1.5rem;
  }
  .app-use .buttn .t_btn2{
    border-radius: 0 1.5rem 1.5rem 0;
  }
  .app-use .buttn .t_sp{
    display:inline-block;
    width:130px;
    height:35px;
    line-height: 34px;
    color:red;
    text-align: center;
  }
  .app-use .t_pay{
    color: #fff;
    border:0;
    outline: 0;
    width:355px;
    height: 40px;
    margin-left:10px;
    background: #ff655d;
    border-radius: 1.5rem;
  }
  /* 灰线 */
  .app-use .t_hr{
    width:100%;
    border:1px solid #ccc;
  }
  .app-use .btn{
    width: 100%;
    padding:15px 0;
    color:#bbb;
    font-size: 16px;
    border: 0;
  }
</style>