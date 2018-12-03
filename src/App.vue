<template>
  <div id="app" class="fillcontain">
<!--     <div id="nav" class="el-container">
      <router-link to="/home">Home</router-link> | 
      <router-link to="/">login</router-link> | 
      <router-link to="/about">About</router-link>
    </div> -->
    <router-view/>
  </div>
</template>

<style>
::-webkit-scrollbar {display:none}
.fillcontain,html,body{
  margin: 0;
  padding: 0;
  border: 0;
  width: 100%;
  height: 100%;
}
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  /*margin-top: 60px;*/
  overflow: hidden;
}
</style>
