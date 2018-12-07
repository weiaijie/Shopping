<template>
  <div>
    <div id="editor" class="editor"></div>
  </div>
</template>
 
<script>
import E from 'wangeditor'
export default {
  name: 'editor',
  mounted () {
    var editor = new E('#editor')
    editor.customConfig.uploadImgServer = '/upload'  // 上传图片到服务器
    editor.create()
  }
}
</script>