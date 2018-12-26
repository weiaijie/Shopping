<template>
  <div class="home">
  	<el-container>
  		<el-row>
		    <el-col :span="4" class="left" style="min-height: 100%; background-color: #324057;">
          <asideleft></asideleft>
        </el-col>
		    <el-col :span="20" class="right">
            <headTop></headTop>
            <el-main>
              <router-view/>
            </el-main>
        </el-col>
		  </el-row>
	 </el-container>
  </div>
</template>



<script>
// @ is an alias to /src
import headTop from '@/components/HeadTop.vue'
import asideleft from '@/components/Asideleft.vue'

export default {
  name: 'home',
  components: {
    headTop,
    asideleft,
  },
  data: function () {
    return {  }
  }
}
</script>

<style type="text/css" scoped>
  .home,.left,.el-container{
    height: 100%;
  }
  .left{
    /*background-color: rgb(50, 64, 87);*/
    /*color:#bfcbd9;*/
  }
  .right{
    height: 100%;
    overflow: auto;
  }
  .el-row {
    width: 100%;
  }
  .el-col {
    padding:0;
  }
  .sadad{
    color: red;
    font-size: 180%;
  }
</style>

