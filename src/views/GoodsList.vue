<template>
  <div class="goodsList" style="min-height: 100%;">
    <el-table
      :data="tableData"
      style="width: 100%">
      <el-table-column
        type="index"
        width="50">
      </el-table-column>
      <el-table-column
        label=更新日期
        width="180">
        <template slot-scope="scope">
          <i class="el-icon-time"></i>
          <span style="margin-left: 10px">{{ scope.row.atime }}</span>
        </template>
      </el-table-column>
      <el-table-column
        label="商品封面"
        width="180">
        <template slot-scope="scope">
          <el-popover trigger="hover" placement="top">
            <img v-bind:src="scope.row.logo" style="width: 200px;">
            <div slot="reference" class="name-wrapper">
              <img v-bind:src="scope.row.logo" style="width: 90px;">
            </div>
          </el-popover>
          <!-- <span style="margin-left: 10px"> <img v-bind:src="scope.row.logo" style="width: 90px;"></span> -->
        </template>
      </el-table-column>
      <el-table-column
        label="商品名称"
        width="330">
        <template slot-scope="scope">
          <span style="margin-left: 10px">{{ scope.row.name }}<!-- {{ scope.row.describe }} --></span>
        </template>
      </el-table-column>
      <el-table-column
        label="原价/折扣"
        width="180">
        <template slot-scope="scope">
          <el-tag size="medium">{{ scope.row.money }}</el-tag>/
          <el-tag size="medium" style="color:red">{{ scope.row.ymoney }}</el-tag>
        </template>
      </el-table-column>
      <el-table-column label="操作" width="180">
        <template slot-scope="scope">
          <el-button
            size="mini"
            @click="handleEdit(scope.$index, scope.row)">编辑</el-button>
          <el-button
            size="mini"
            type="danger"
            @click="handleDelete(scope.$index, scope.row)">删除</el-button>
        </template>
      </el-table-column>
    </el-table>
    <div class="block">
      <el-pagination
        @size-change="handleSizeChange"
        @current-change="handleCurrentChange"
        :current-page="currentPage"
        :page-sizes="[10,30,77]"
        :page-size="pageSize"
        layout="total, sizes, prev, pager, next, jumper"
        :total="totalCount">
      </el-pagination>
    </div>
  </div>
</template>

<script>
export default {
  name: 'goodsList',
  computed: {

  },
  data() {
    return {
      currentPage: 1,
      pageSize: 10,
      currentTotal: 0,
      totalCount:0,
      tableData: [],
      funs1: []
    }
  },
  created(){
      this.initData();
      this.currentPage = 0;
  },
  watch: {
    tableData: function (val) {
      // console.log(val)
    },
  },
  methods: {
     handleEdit(index, row) {
       console.log(index,row);

     },
     handleDelete(index, row) {
       console.log(index, row);
     },
     handleSizeChange(val) {
       console.log(`每页 ${val} 条`);
       this.pageSize = val;
       this.initData();
     },
     handleCurrentChange(val) {
       console.log(`当前页: ${val}`);
       this.initData1(val);
     },
     async initData(){
         try{
              this.axios.post('?goodsList')
              .then((response)=> {
                // console.log(response);
                console.log(response.data);
                if (response.status==200) {
                  // var funs = [{
                  //   ID: '1',
                  //   date: '2016-05-01',
                  //   name: '王小虎',
                  //   address: '上海市普陀区金沙江路 1516 弄'
                  // }];
                  var funs = response.data;
                  this.funs1 = funs;
                  this.tableData = [];
                  this.totalCount = funs.length;
                  if (funs.length < this.pageSize) {
                    this.pageSize = funs.length - 1;
                  }
                  for (var i = 0; i < this.pageSize; i++) {
                    this.tableData.push(funs[i]);
                    // console.log(i);
                  }
                }else{
                  this.$notify.error({
                    title: '错误',
                    message: '数据获取失败',
                    offset: 100
                  });
                  return false;
                }
              })
              .catch((error)=> {
                console.log(error);
                this.$notify.error({
                  title: '错误',
                  message: '数据获取失败',
                  offset: 100
                });
                return false;
              });

             
         }catch(err){
          console.log('获取数据失败', err);
         }
     },
     async initData1(val){
         try{
          this.tableData = [];
          // console.log(this.pageSize*(val-1));
          
          var page = this.pageSize
          if (this.totalCount-(this.pageSize*(val-1)) < this.pageSize) {
            var page = this.totalCount-(this.pageSize*(val-1));
            // console.log(page);
          }
          for (var i = 0; i < page; i++) {
            this.tableData.push(this.funs1[this.pageSize*(val-1)+i]);
          }
          
          // if (this.pageSize==1) {
          //   for (var i = 0; i < this.pageSize; i++) {
          //     // if (val>0) {val = val + 1;}
          //     this.tableData.push(this.funs1[val-1+i]);
          //   }
          // }else{
          //   for (var i = 0; i < this.pageSize; i++) {
          //     if (val==1) {val = val-1;}
          //     this.tableData.push(this.funs1[val+i]);
          //     console.log(val+i);
          //   }
          // }
         }catch(err){
          console.log('获取数据失败', err);
         }
     }
  }
  }
</script>

<style scoped>

</style>
