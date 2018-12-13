<template>
  <div>
  	<div id="editor1" class="toolbar">
    </div>
    <!-- <div style="padding: 5px 0; color: #ccc">中间隔离带</div> -->
    <div id="editor2" class="text"> <!--可使用 min-height 实现编辑区域自动增加高度-->
        <p>请输入内容</p>
    </div>
    <!-- <div id="editor" class="editor" style="height: 700px"></div> -->
  </div>
</template>
 
<script>
import E from 'wangeditor'
export default {
  name: 'editor',
  data () {
  	return{
  		content: '',
  	}
  },
  mounted () {
  	 // var E = window.wangEditor
    var editor = new E('#editor1', '#editor2')  // 两个参数也可以传入 elem 对象，class 选择器
    // var editor = new E('#editor')
    editor.customConfig.uploadImgServer = '/upload'  // 上传图片到服务器
    editor.customConfig.onchange = function (html) {
        // 监控变化，同步更新到 textarea
        this.content = editor.txt.html()
        this.cont()
    }

    editor.customConfig.menus = [
    	// 'head',  // 标题
    	// 'bold',  // 粗体
    	// 'fontSize',  // 字号
    	// 'fontName',  // 字体
    	// 'italic',  // 斜体
    	// 'underline',  // 下划线
    	// 'strikeThrough',  // 删除线
    	// 'foreColor',  // 文字颜色
    	'backColor',  // 背景颜色
    	// 'link',  // 插入链接
    	'justify',  // 对齐方式
    	'quote',  // 引用
    	// 'emoticon',  // 表情
    	'image',  // 插入图片
    	// 'table',  // 表格
    	// 'video',  // 插入视频
    	'code',  // 插入代码
    	'undo',  // 撤销
    	// 'redo'  // 重复
    ]
    editor.create()
    
    var s  = '<img src="http://localhost/images/banner2.jpg" style="width:100%"><img src="http://localhost/images/banner2.jpg" style="width:100%"><img src="http://localhost/images/banner2.jpg" style="width:100%">';
    editor.txt.html(s)
  }
  // ,
  // mounted: {
  //   // cont () {
  //   // 	this.content
  //   // }
  // }
}
</script>
<style scoped>
.toolbar{
    background:  #e8e8e8;
    max-width: 640px !important;
    margin: auto;
}
#editor2{
	max-width: 640px !important;
    height: 600px !important;/*!important是重点，因为原div是行内样式设置的高度300px*/
    border: 1px solid #33333342;
    padding: 10px 0;
    margin: auto;
}
</style>



