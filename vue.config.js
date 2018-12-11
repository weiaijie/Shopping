module.exports = {
  lintOnSave: false,
  devServer: {
  proxy: {
    '/api': {
      target: 'http://api.c.com/',
      ws: true,
      changeOrigin: true,
      pathRewrite:{
        '^/api':''
      }
     }
    }
  }

}