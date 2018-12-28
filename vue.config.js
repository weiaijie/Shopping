module.exports = {
  lintOnSave: false,

  devServer: {
  proxy: {
    '/api': {
      target: 'http://m.021olmyy.com/api',
      ws: true,
      changeOrigin: true,
      pathRewrite:{
        '^/api':''
      }
     }
    }
  },

  baseUrl: '/admin',
  outputDir: undefined,
  assetsDir: undefined,
  runtimeCompiler: undefined,
  productionSourceMap: undefined,
  parallel: undefined,
  css: undefined
}