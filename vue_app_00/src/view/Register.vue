<template>
  <div class="app-register">
    <my-header></my-header>
    <div class="container pl-0 pr-0 pb-5 bg-white">
      <div class="register text-center">
        <img src="http://127.0.0.1:3000/img/login/yaoqiniang1.png" class="img1">
        <form action="#" method="post" class="pb-5">
          <div>
            <input type="text" placeholder="请输入用户名" v-model="uname" >
          </div>
          <div>
            <input type="text" placeholder="请填写手机号" v-model="phone">
          </div>
          <div>
            <input type="password" placeholder="请输入密码" v-model="upwd" >
          </div>
          <div>
            <input type="password" placeholder="请输入确认密码" v-model="toupwd">
          </div>
          <div class="drag text-center" ref="dragDiv">
            <div class="drag_bg"></div>
            <div class="drag_text">{{confirmWords}}</div>
            <div ref="moveDiv" @touchstart="mousedownFn($event)" :class="{'handler_ok_bg':confirmSuccess}" class="handler handler_bg"></div>
          </div>
          <input type="button" value="注册" class="btn1 mt-3" @click="btnRegister">
        </form>
      </div>
     </div> 
    <footer class="">
      <img src="http://127.0.0.1:3000/img/login/downloadApp.jpg" alt="" class="w-100">
    </footer>
  </div>
</template>
<script>
import myHeader from "@/components/Header.vue";
export default {
  data(){
    return{
      uname:"",
      phone:"",
      upwd:"",
      toupwd:"",
      phonets:"",
      upwdts:"",
      toupwdts:"",
      beginClientX:0,/*距离屏幕左端距离*/
      mouseMoveStata:false,/*触发拖动状态  判断*/
      maxwidth:'',/*拖动最大宽度，依据滑块宽度算出来的*/
      confirmWords:'拖动滑块验证', /*滑块文字*/
      confirmSuccess:false /*验证成功判断*/
    }
  },
  methods: { 
    mousedownFn:function (e) {
      if(!this.confirmSuccess){
        e.preventDefault && e.preventDefault();   //阻止文字选中等 浏览器默认事件
        this.mouseMoveStata = true;
        this.beginClientX = e.changedTouches[0].clientX;
      }
    },//mousedoen 事件
    successFunction(){
      this.confirmSuccess = true
      this.confirmWords = '验证通过';
      if(window.addEventListener){
        document.getElementsByClassName('drag')[0].removeEventListener('touchmove',this.mouseMoveFn);
        console.log(document.getElementsByClassName('drag')[0])
        document.getElementsByClassName('drag')[0].removeEventListener('touchend',this.moseUpFn);
      }else{
        document.getElementsByClassName('drag')[0].removeEventListener('touchend',()=>{});
      }
      document.getElementsByClassName('drag_text')[0].style.color = '#fff'
      document.getElementsByClassName('handler')[0].style.left = this.maxwidth + 'px';
      document.getElementsByClassName('drag_bg')[0].style.width = this.maxwidth + 'px';
    },                //验证成功函数
    mouseMoveFn(e){
      if(this.mouseMoveStata){
         let width = e.changedTouches[0].clientX - this.beginClientX;
        if(width>0 && width<=this.maxwidth){
          document.getElementsByClassName('handler')[0].style.left = width + 'px';
          document.getElementsByClassName('drag_bg')[0].style.width = width + 'px';
        }else if(width>this.maxwidth){
          this.successFunction();
        }
      }
    },                   //mousemove事件
    moseUpFn(e){
      this.mouseMoveStata = false;
      var width = e.changedTouches[0].clientX - this.beginClientX;
    },
     uuname(){
          var url="http://127.0.0.1:3000/user/checkUname";
         this.axios.get(url).then(result=>{
        if(result.data.code==1){
           this.$toast(result.data.msg);
         }else{
           this.$toast(result.data.msg);
           return;
         }
       })
    },
    btnRegister(){
      var uname=this.uname;
      var phone=this.phone;
      var upwd=this.upwd;
      var toupwd=this.toupwd;
      console.log(uname,phone,upwd, toupwd);
      //2:创建正则表达式
      var ureg=/^1[3|4|5|6|7|8|9][0-9]{9}$/;
      var preg=/^\w{6,12}$/;
      if(!uname){
        this.$toast("用户名不能为空");
        return;
      }else if(!ureg.test(phone)){
        this.$toast("请输入正确的手机格式，手机号为11位");
        return;
      }else if(!preg.test(upwd)){
        this.$toast("密码格式不正确");
        return;
      }else if(upwd!=toupwd){
        this.$toast("两次密码不相等");
        return;
      }else if(this.mouseMoveStata==false){
        this.$toast("请滑动验证码");
        return;
      }else{
        let param = new URLSearchParams()
        param.append('uname', uname)
        param.append('phone', phone)
        param.append('upwd', upwd)
        param.append('toupwd', toupwd) 
        var url="http://127.0.0.1:3000/user/regist"
        this.axios({
          method: 'post',
          url: url,
          data: param}).then(result=>{
          console.log(uname,phone,upwd,toupwd)
            if(result.data.code==1){
             this.$toast(result.data.msg)
             setTimeout(function(){
             location.href="#/Login";
             },900);
           }
          else{this.$toast(result.data.msg)}
        })
      }
    },
  },
  mounted(){
    this.maxwidth = this.$refs.dragDiv.clientWidth - this.$refs.moveDiv.clientWidth;
    document.getElementsByClassName('drag')[0].addEventListener('touchmove',this.mouseMoveFn);
    document.getElementsByClassName('drag')[0].addEventListener('touchend',this.moseUpFn)
  },
  components:{
    myHeader,
  }
}
</script>
<style>
*{margin:0;padding:0}
.app-register .register{
  margin-top:50px;
}
.app-register a{
    color:rgb(77,75,75);
  }  
.app-register .register .img1{
  width:150px;
  padding-top:30px; 
}
.app-register .register form input{
  width:70%;
} 
.app-register .register form input[type=text],
.app-register .register form input[type=password]::-webkit-input-placeholder{font-size: 14px;}
.app-register .register form input[type=text],
.app-register .register form input[type=password]::-o-input-placeholder{font-size:14px;}
.app-register .register form input[type=text],
.app-register .register form input[type=password]::-moz-input-placeholder{font-size: 14px; }
.app-register .register form input[type=text],
.app-register .register form input[type=password]::-ms-input-placeholder{font-size: 14px;}
.app-register .register form .btn1{
  width:70%;
  height:40px;
  border:0;
  border-radius: 3px;
  color:#fff;
  font-size: 1.1rem;
  background-color: #4fd962;
  }
  .app-register form{
    margin-top:-15px;
  }
  /* 滑块 */
  .app-register .register .drag{
    position: relative;
    background-color: #e8e8e8;
    width:70%;
    height:35px;
    line-height:35px;
    text-align: center;
    margin:0 auto;
  }
  .app-register .register .handler{
    width: 40px;
    height: 32px;
    border: 1px solid #ccc;
    cursor: move;
  }
  .app-register .register .handler_bg{
    position: absolute;top: 0px;left: 0px;
  }
  .app-register .register .handler_ok_bg{
    width:40px;
    height:34px;
    background: #fff url(http://127.0.0.1:3000/img/login/ok.png) no-repeat center;
  }
  .app-register .register .drag_bg{
    background-color: #7ac23c;
    height: 34px;
    width: 0px;
  } 
  .app-register .register .drag_text{
    position: absolute;
    top: 0px;
    width: 100%;
    text-align: center;
  }
</style>
