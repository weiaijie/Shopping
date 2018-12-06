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
        原价 <el-input-number :min="0" :step="10" v-model="money"></el-input-number><span style="color:red;margin-left:5%;margin-right:1%">优惠价</span> <el-input-number :min="0" :step="10" v-model="ymoney"></el-input-number>
<br><br>
        <div class="sub-title"><p>购买须知</p></div>

        使用时间  
        <el-autocomplete
          class="inline-input"
          v-model="utilitytime"
          :fetch-suggestions="querySearch"
          placeholder="请输入内容"
          :trigger-on-focus="false"
          @select="handleSelect"
        ></el-autocomplete>
<br><br>
        　小提示  
        <el-autocomplete
          class="inline-input"
          v-model="tip"
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
      state2: '',
      utilitytime: '',
      tip: '',
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
          { "value": "支付后30天内到院"},
          { "value": "埋线双眼皮"},
          { "value": "埋线双眼皮"},
          { "value": "全切双眼皮"},
          { "value": "双眼皮+开内眼角"},
          { "value": "内切祛眼袋"},
          { "value": "欧范眼综合"},
          { "value": "双眼皮修复"},
          { "value": "国产假体隆鼻"},
          { "value": "韩士生科假体隆鼻"},
          { "value": "韩士生科综合隆鼻"},
          { "value": "立秀膨体隆鼻"},
          { "value": "立秀膨体鼻综合"},
          { "value": "(花样年华)威宁假体隆胸"},
          { "value": "威宁之星隆胸"},
          { "value": "(浪漫情环)威宁假体隆胸"},
          { "value": "自体脂肪隆胸"},
          { "value": "曼托圆盘毛面美胸"},
          { "value": "内窥镜隆胸术"},
          { "value": "吸脂大腿环吸 "},
          { "value": "吸脂腰腹环吸"},
          { "value": "吸脂上臂吸脂"},
          { "value": "自体脂肪填充(小部位)"},
          { "value": "自体脂肪填充(全脸)"},
          { "value": "自体脂肪隆胸"},
          { "value": "衡力瘦脸针（首次）"},
          { "value": "衡力瘦脸针3次"},
          { "value": "botox瘦脸针（首次）"},
          { "value": "海薇m+玻尿酸（首支）"},
          { "value": "润百颜玻尿酸（首支）"},
          { "value": "海薇玻尿酸（首支）"},
          { "value": "伊婉c玻尿酸（首支）"},
          { "value": "艾莉薇玻尿酸（首支）"},
          { "value": "瑞蓝玻尿酸（首支）"},
          { "value": "乔雅登雅致玻尿酸（首支）"},
          { "value": "伊婉v玻尿酸（首支）"},
          { "value": "botox祛鱼尾纹（首次）"},
          { "value": "botox除皱3次"},
          { "value": "衡力除皱（单部位）（首次）"},
          { "value": "botox除皱（单部位）（首次）"},
          { "value": "润百颜玻尿酸（首支）"},
          { "value": "瑞蓝玻尿酸（首支）"},
          { "value": "乔雅登雅致玻尿酸（首支）"},
          { "value": "伊婉c玻尿酸（首支）"},
          { "value": "海薇m+玻尿酸（首支）"},
          { "value": "艾莉薇玻尿酸（首支）"},
          { "value": "伊婉v玻尿酸（首支）"},
          { "value": "海薇m+玻尿酸（首支）"},
          { "value": "润百颜玻尿酸（首支）"},
          { "value": "海薇玻尿酸（首支）"},
          { "value": "伊婉c玻尿酸（首支）"},
          { "value": "艾莉薇玻尿酸（首支）"},
          { "value": "瑞蓝玻尿酸（首支）"},
          { "value": "乔雅登雅致玻尿酸（首支）"},
          { "value": "伊婉v玻尿酸（首支）"},
          { "value": "衡力瘦腿针（首次）"},
          { "value": "半永久纹眉"},
          { "value": "半永久美瞳线"},
          { "value": "360嫩肤祛斑"},
          { "value": "镭射祛斑"},
          { "value": "超皮秒局部"},
          { "value": "果酸焕肤"},
          { "value": "光子嫩肤"},
          { "value": "激光点痣"},
          { "value": "点阵激光"},
          { "value": "热拉提（射频紧肤）"},
          { "value": "光子嫩肤"},
          { "value": "脱唇/腋毛包年（二选一）"},
          { "value": "超冰四肢脱毛（四选一）"},
          { "value": "果酸焕肤"},
          { "value": "光子嫩肤"},
          { "value": "（针清+红蓝光+中药面膜）祛痘"},
          { "value": "无针水光"},
          { "value": "小气泡"},
          { "value": "大气泡（舒敏之星）"},
          { "value": "菲洛嘉水光针"},
          { "value": "基础水光针"},
          { "value": "美白水光针"},
          { "value": "紧致水光针"},
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
