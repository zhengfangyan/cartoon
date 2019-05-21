<template>
  <div class="app_search"> 
    <div class="container bg-white pl-0 pr-0 pb-2">
      <div class="search bg-white">
  	    <input type="text" placeholder="请输入漫画类型" v-model="search"  @keyup.13="btn" v-focus/> 
  	    <button @click="btn">搜索</button>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data(){
    return{
      search:""
    }
  },
  //自动获取焦点
	directives: {
  	focus: {
    	// 指令的定义
    	inserted: function (el) {
      	el.focus()
      }
    }
  },
  created() {
    this.search=this.$route.params.search;
  },
  methods: {
    btn(){
      var search = this.search;
      console.log(search);
      if(!search){
        this.$toast("请输入您要搜索的内容")
        return
      }
      if(this.search.trim()!==""){
         this.$router.push(`/products/${this.search}`)
			 }
			 if(this.$route.path.split("/")[1]=="products"){
         location.reload()
     }
  	}
  },
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
</style>