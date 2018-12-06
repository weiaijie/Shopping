<template>
  <div class="addGoods" style="min-height: 100%;">

    <el-row :gutter="20">
      <el-col :span="12" :offset="6">
        <div class="sub-title"><p>商品封面图</p></div>
        <el-upload
         class="upload-demo"
         action="https://jsonplaceholder.typicode.com/posts/"
         :on-preview="handlePreview"
         :on-remove="handleRemove"
         :file-list="fileList2"
         list-type="picture">
         <el-button size="small" type="primary">点击上传</el-button>
         <div slot="tip" class="el-upload__tip">只能上传jpg/png文件，且不超过500kb</div>
        </el-upload>
<br><br>
        商品名称  
        <el-autocomplete
          class="inline-input"
          v-model="state2"
          :fetch-suggestions="querySearch"
          placeholder="请输入内容"
          :trigger-on-focus="false"
          @select="handleSelect"
        ></el-autocomplete>
<br><br>
        产品类别  
        <el-select v-model="value1"  @change="handleChange" filterable placeholder="请选择">
          <el-option
            v-for="item in options"
            :key="item.value"
            :label="item.label"
            :value="item.value">
          </el-option>
        </el-select>
<br><br>
        原价 <el-input-number :min="0" :step="10" v-model="money"></el-input-number><span style="color:red;margin-left:5%">优惠价</span> <el-input-number :min="0" :step="10" v-model="ymoney"></el-input-number>
<br><br>
        <div class="sub-title"><p>购买须知</p></div>

        使用时间  
        <el-autocomplete
          class="inline-input"
          v-model="state1"
          :fetch-suggestions="querySearch"
          placeholder="请输入内容"
          :trigger-on-focus="false"
          @select="handleSelect"
        ></el-autocomplete>
<br><br>
        小提示  
        <el-autocomplete
          class="inline-input"
          v-model="state1"
          :fetch-suggestions="querySearch"
          placeholder="请输入内容"
          :trigger-on-focus="false"
          @select="handleSelect"
        ></el-autocomplete>
<br><br>
      </el-col>
    </el-row>
    
  </div>
</template>

<script>
export default {
  name: 'addGoods',
  computed: {

  },
  data() {
    return {
      options: [],   //类别下拉
      value1: '',
      restaurants: [], //商品名称智能匹配
      money: 0,
      ymoney: 0,
      state1: '',
      state2: '',
      fileList2: [{name: 'food.jpeg', url: 'https://fuss10.elemecdn.com/3/63/4e7f3a15429bfda99bce42a18cdd1jpeg.jpeg?imageMogr2/thumbnail/360x360/format/webp/quality/100'}, {name: 'food2.jpeg', url: 'https://fuss10.elemecdn.com/3/63/4e7f3a15429bfda99bce42a18cdd1jpeg.jpeg?imageMogr2/thumbnail/360x360/format/webp/quality/100'}]

    };
  },
  created(){
    this.initData3();
  },
  mounted() {
    this.restaurants = this.loadAll();
  },
  methods: {
    handleRemove(file, fileList) {
      console.log(file, fileList);
    },
    handlePreview(file) {
      console.log(file);
    },
    async initData3(){
      var xuni = ["胸部","吸脂瘦身","线雕","自体脂肪","瘦脸针","玻尿酸","注射除皱","注射隆鼻","丰下巴","瘦腿针","纹绣","净肤祛斑","紧肤","脱毛","祛痘","美白嫩肤"];
      // var cache = [];
      for (var i = 0; i < xuni.length ; i++) {
        var cache = [];
        cache['value'] = i+1;
        cache['label'] = xuni[i];
        this.options.push(cache);
      }
    },
    handleChange(value) {
       console.log(value);
    },
    handleSelect(item) {
      console.log(item);
    },
    querySearch(queryString, cb) {
      var restaurants = this.restaurants;
      var results = queryString ? restaurants.filter(this.createFilter(queryString)) : restaurants;
      // 调用 callback 返回建议列表的数据
      cb(results);
    },
    createFilter(queryString) {
      return (restaurant) => {
        return (restaurant.value.toLowerCase().indexOf(queryString.toLowerCase()) === 0);
      };
    },
    loadAll() {
        return [
          { "value": "三全鲜食（北新泾店）", "address": "长宁区新渔路144号" }
        ];
      },
  }
}
</script>

<style scoped>
.el-autocomplete,.el-select {
  width: 80%;
}

</style>
