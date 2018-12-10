import Vue from 'vue'
import Router from 'vue-router'
import login from './views/Login.vue'

Vue.use(Router) 

export default new Router({
  routes: [
    {
      path: '/',
      name: 'login',
      component: login
    },
    
    {
      path: '/home',
      name: 'home',
      component: () => import('./views/Home.vue'),
      children:[
        {
          path: '/addGoods',
          name: 'addGoods',
          component: () => import('./views/AddGoods.vue'),
          meta: ['数据管理', '添加商品'],
        },
        {
          path: '/goodsList',
          name: 'goodsList',
          component: () => import('./views/GoodsList.vue'),
          meta: ['数据管理', '商品管理'],
        },
        {
          path: '/admin',
          name: 'admin',
          component: () => import('./views/Admin.vue'),
          meta: ['数据管理', '添加商品'],
        },
        {
          path: '/about',
          name: 'about',
          // route level code-splitting
          // this generates a separate chunk (about.[hash].js) for this route
          // which is lazy-loaded when the route is visited.
          component: () => import(/* webpackChunkName: "about" */ './views/About.vue'),
          meta: ['数据管理', '商品管理'],
        },
      ]
    },
  ]
  // mode:"history"
})