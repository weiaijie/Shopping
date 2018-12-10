<template>
  <div>
    <div id="editor" class="editor"></div>
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
    var editor = new E('#editor')
    editor.customConfig.uploadImgServer = '/upload'  // 上传图片到服务器
    editor.customConfig.onchange = function (html) {
        // 监控变化，同步更新到 textarea
        console.log(editor.txt.html());

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
    
    var s  ='<img src="http://localhost/images/banner2.jpg" style="width:100%"><img src="http://localhost/images/banner2.jpg">';
    editor.txt.html(s)
  }
}
</script>