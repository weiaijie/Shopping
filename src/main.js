import Vue from 'vue'
import Vuex from 'vuex'
import App from './App.vue'
import router from './router'
import axios from 'axios'
import VueAxios from 'vue-axios'
import ElementUI from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';

Vue.use(Vuex)
Vue.use(ElementUI)
Vue.use(VueAxios, axios)
Vue.config.productionTip = false

axios.defaults.timeout = 5000;                        //响应时间
axios.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded;charset=UTF-8';           //配置请求头
axios.defaults.baseURL = '/api';   //配置接口地址


new Vue({
  router,
  render: h => h(App)
}).$mount('#app')
