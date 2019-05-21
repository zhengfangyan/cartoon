<template>
  <div class="app-login">
    <my-header></my-header>
    <div class="container pr-0 pl-0 pb-3 bg-white">
      <div class="login text-center ">
        <div class="login_center">
          <img src="http://127.0.0.1:3000/img/login/yaoqiniang1.png" class="img1">
          <div class="center">
            <form action="#" method="get" v-if="!showname">
              <div class="center1">
                <input type="text" placeholder="请输入用户名" class="pl-3 mb-2" v-model="uname">
              </div>
              <div class="center2">
                <input type="password" placeholder="密码" class="pl-3 mb-2" v-model="upwd">
              </div>
              <div>
                <a href="javascript:;" class="a1">忘记密码？</a>
              </div>
              <input type="button" value="登录" class="btn" @click="btnLogin">
              <div>
                <a href="#/register" class="a2">手机号快速注册</a>
              </div>
            </form>
          </div>
        </div>
      </div>
      <div class="buttom text-center">
        <p class="p_1">使用以下账号登录</p>
        <ul class="d-flex list-unstyled">
          <li>
            <a href="https://xui.ptlogin2.qq.com">
              <img src="http://127.0.0.1:3000/img/login/coagent_qq.png" alt="">
              <p>QQ</p>
            </a>
          </li>
          <li class="pl-4">
            <a href="https://api.weibo.com/" >
              <img src="http://127.0.0.1:3000/img/login/coagent_weibo.png" alt="">
              <p>微博</p>
            </a>
          </li>
        </ul>
      </div>
    </div>
  </div>
</template>
<script>
import myHeader from "@/components/Header.vue";
import {Toast} from "mint-ui";
export default {
  data(){
    return{
      uname:"",
      upwd:"",
      num:1,
      showname:false
    }
  },
  methods: {
   btnLogin(){
     var u=this.uname;
     var p=this.upwd; 
     if(!u){
       console.log(this);
       this.$toast("用户名不能为空");
     }else if(!p){
       this.$toast("密码不能为空");
     }else{
       var url="http://127.0.0.1:3000/user/login?uname="+u+"&upwd="+p;
        this.axios.get(url).then(result=>{
          console.log(result.data.code);
          if(result.data.code==1){
            this.$toast(result.data.msg);
            setTimeout(function(){
            location.href="#/Use";
            },900);
            sessionStorage.setItem("uname",u);
            sessionStorage.setItem("num",this.num);
            this.$router.push({path:"/Use"})
          }else{
            this.$toast(result.data.msg)
            this.$router.push({path:"/login"})
          }
        })
   
         }
  }
  },
  components:{
    myHeader
  }
}
</script>
<style>
 *{margin:0;padding:0;}
  .app-login a{
    color:rgb(77, 75, 75);
  } 
 .app-login{
    height:100%;
 }
  .app-login .login{
    margin-top:50px;
    height:100%;
    padding-bottom:4rem; 
  }
  .login_center{
    padding-top:30px; 
  }
  .app-login .img1{
    width:150px;
  }
  .app-login .center input{
     width:70%;
  }
  .app-login .center input[type=text],
  .app-login .center input[type=password]::-webkit-input-placeholder{font-size: 14px; }
  .app-login .center input[type=text],.app-login .center input[type=password]::-o-input-placeholder{font-size:14px;}
  .app-login .center input[type=text],.app-login .center input[type=password]::-moz-input-placeholder{font-size: 14px; }
  .app-login .center input[type=text],.app-login .center input[type=password]::-ms-input-placeholder{font-size: 14px;  }
  .app-login .center .center1{
    margin-top:-15px;
  }
  .app-login .center .a1{
    margin-left:10rem;
    color:#333;
    font-size:14px;
  }
  .app-login .center .btn{
    width:250px;
    color:#fff;
    margin:1rem 0 2rem 0;
    text-align: center;
    border-radius: 5px;
    background-color: #4fd962;
  }
  .app-login .center .a2{
    color:#333;
    font-size:14px;
  }
  .app-login .buttom .p_1::before,.buttom .p_1::after{
    content: "————"
  }
  .app-login .buttom ul{
    margin-top:2rem;
    padding-bottom:2rem;
    justify-content:center;
  }
  .app-login .buttom ul li img{
    width:40px;
  }
</style>