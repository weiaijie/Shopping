<template>
  <div class="asideleft" style="min-height: 100%;">
    <el-col style="min-height: 100%;">
        <el-menu
          router
          :default-active="defaultActive" 
          @open="handleOpen"
          @close="handleClose"
          background-color="#324057"
          text-color="#bfcbd9"
          >
          <el-menu-item index="home">
            <i class="el-icon-menu"></i>
            <span>首页</span>
          </el-menu-item>

          <el-submenu index="2">
            <template slot="title">
              <i class="el-icon-document"></i>
              <span>数据管理</span>
            </template>
              <el-menu-item index="addGoods">添加商品</el-menu-item>
              <el-menu-item index="GoodsList">管理商品</el-menu-item>
          </el-submenu>
          <el-submenu index="3">
            <template slot="title">
              <i class="el-icon-warning"></i>
              <span>帮助</span>
            </template>
              <el-menu-item index="about">帮助</el-menu-item>
          </el-submenu>
        </el-menu>
      </el-col>
    </el-row>
  </div>
</template>

<script>
export default {
  name: 'asideleft',
  computed: {
    defaultActive: function(){
      // console.log(this.index);
      // return this.$route.path.replace('/', '');
    }
  },
  data() {
    return {
      isCollapse: true
    };
  },
  methods: {
    handleOpen(key, keyPath) {
      // console.log(key, keyPath);
    },
    handleClose(key, keyPath) {
      // console.log(key, keyPath);
    }
  }
}
</script>

<style scoped>
.asideleft{
  /*height:100%; background:rgb(50, 64, 87);*/
  text-align: left;
  overflow: hidden;
}
.el-menu{
  border: 0;
}
</style>
