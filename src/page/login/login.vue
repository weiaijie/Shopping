<template>
  <div class="login">
    <section>
      <div class="manage_tip">
        <p>上海欧莱美商城后台管理系统</p>
      </div>
      <div class="el-main">
        <el-form :model="loginForm" status-icon :rules="rules2" ref="loginForm"  class="demo-ruleForm">
          <el-form-item  prop="username">
            <el-input type="username" v-model="loginForm.username" autocomplete="off" placeholder="用户名"></el-input>
          </el-form-item>
          <el-form-item prop="pass">
            <el-input type="password" v-model="loginForm.pass" autocomplete="off" placeholder="密码"></el-input>
          </el-form-item>
          <el-form-item>
            <el-button class="submit_btn" type="primary" @click="submitForm('loginForm')">提交</el-button>
          </el-form-item>
        </el-form>
        <p class="tip">温馨提示：</p>
        <p class="tip">账号请找管理员索取</p>
      </div> 
    </section>

  </div>
</template>


<style type="text/css" scoped>
  body{
    background-color: #324057;
  }
  .login{
    position: fixed;
    top:0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: #324057;
  }
  .login .el-main{
    width: 400px;
    margin: auto;
    background: #fff;
    border-radius: 10px;
  }
  .login .el-form-item__content{
    margin-left: 0!important;
  }
  .login section{
    margin-top: 15%
  }
  .login .submit_btn{
    width: 100%;
    font-size: 16px;
  }
  .login .manage_tip p{
    color:#fff;
    font-size: 180%;
  }
  .login .tip{
    text-align: left;
    color:red;
    font-size: 80%;
  }
</style>

<script>

export default {
  name: 'login',
  components: {
    
  },
  data() {
    var username = (rule, value, callback) => {
       if (value === '') {
         callback(new Error('请输入用户名'));
       } else {
         callback();
       }
     };
     var validatePass = (rule, value, callback) => {
       if (value === '') {
         callback(new Error('请输入密码'));
       } else {
         callback();
       }
     };
     return {
       loginForm: {
         username: '',
         pass: '',
         state: ''
       },
       rules2: {
         username: [
           { validator: username, trigger: 'blur' }
         ],
         pass: [
           { validator: validatePass, trigger: 'blur' }
         ]
       }
     };
   },
  methods: {
    open6() {
      this.$message({
        showClose: true,
        message: '登陆成功',
        type: 'success'
      });
    },
    submitForm(formName) {
      this.$refs[formName].validate((valid) => {
        if (valid) {
          this.axios.post('?login&goodsList='+this.loginForm.username+'&pass='+this.loginForm.pass)
          .then((response)=> {
            // console.log(response);
            console.log(response.data);
            if (response.data==1) {
              this.open6();
              this.$router.push('home');
            }else{
              this.$notify.error({
                title: '错误',
                message: '请输入正确的用户名密码',
                offset: 100
              });
              return false;
            }
          })
          .catch((error)=> {
            console.log(error);
            this.$notify.error({
              title: '错误',
              message: '请输入正确的用户名密码',
              offset: 100
            });
            return false;
          });
        } else {
          this.$notify.error({
            title: '错误',
            message: '请输入正确的用户名密码',
            offset: 100
          });
          return false;
        }
      });
     },
  }
}
</script>

