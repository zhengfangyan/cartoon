import Vue from 'vue'
import Router from 'vue-router'
import Index from "./view/Index.vue"
import Moods  from  "./view/Moods.vue"
import Recommend  from  "./view/Recommend.vue"
import Hot  from "./view/Hot.vue"
import End  from "./view/End.vue"
import Colours  from "./view/Colours.vue"
import Login  from "./view/Login.vue"
import Refer from "./view/Refer.vue"
import Register from "./view/Register.vue"
import Use from "./view/Use.vue"
import Products from "./view/products.vue"
import Update from "./view/Update.vue"
import Rank from "./view/Rank.vue"
import MH from "./view/MH.vue"
import SH from "./view/SH.vue"
import GX from "./view/GX.vue"
import KH from "./view/KH.vue"
import TL from "./view/TL.vue"
Vue.use(Router)
export default new Router({
  routes: [ 
    {path:'/',component:Index},
    {path:'/Index',component:Index},
    {path:'/Moods',component:Moods},
    {path:'/Recommend',component:Recommend},
    {path:'/Hot',component:Hot},
    {path:'/End',component:End},
    {path:'/Colours',component:Colours},
    {path:'/Login',component:Login},
    {path:'/Refer',component:Refer},
    {path:'/Register',component:Register},
    {path:'/Use',component:Use},
    {path:'/products/:search',component:Products,props:true},
    {path:'/Update',component:Update},
    {path:'/Rank',component:Rank},
    {path:'/MH',component:MH},
    {path:'/SH',component:SH},
    {path:'/GX',component:GX},
    {path:'/KH',component:KH},
    {path:'/TL',component:TL},
  ]
})
