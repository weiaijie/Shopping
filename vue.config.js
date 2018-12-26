module.exports = {
  lintOnSave: false,
  devServer: {
  proxy: {
    '/api': {
      target: 'http://api.c.com/api',
      ws: true,
      changeOrigin: true,
      pathRewrite:{
        '^/api':''
      }
     }
    }
  }

}