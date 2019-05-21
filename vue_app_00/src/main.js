import Vue from 'vue'
import App from './App.vue'
import router from './router'
import'mint-ui/lib/style.css'

//引入axios库
//1.引入axios库(引入整个库不用{})
import axios from 'axios'
//2.配置跨域选项
//让axios的请求携带验证信息到服务端
//配置跨域访问保存session中数据
axios.defaults.withCredentials=true;
//3.将axious配置Vue实例属性中
Vue.prototype.axios=axios;

Vue.config.productionTip = false
//main.js 引入mui的组件库所需的样式文件
import './lib/mui/css/mui.css'
//扩展的图标
import './lib/mui/css/icons-extra.css'
//需要全局引入
import MintUI from "mint-ui";
import 'mint-ui/lib/style.css'
Vue.use(MintUI);

new Vue({
  router,
  render: h => h(App)
}).$mount('#app')
