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
          <!-- <el-form-item label="年龄" prop="age">
            <el-input v-model.number="loginForm.age"></el-input>
          </el-form-item> -->
          <el-form-item>
            <el-button class="submit_btn" type="primary" @click="submitForm('loginForm')">提交</el-button>
          </el-form-item>
        </el-form>
        <p class="tip">温馨提示：</p>
        <p class="tip">账号请找管理员索取</p>
      </div> 
    </section>
    <!-- <transition name="form-fade" mode="in-out">
        <section class="form_contianer" v-show="showLogin">
          <div class="manage_tip">
            <p>上海欧莱美商城后台管理系统</p>
          </div>
          <el-form :model="loginForm" :rules="rules" ref="loginForm">
          <el-form-item prop="username">
            <el-input v-model="loginForm.username" placeholder="用户名"><span>dsfsf</span></el-input>
          </el-form-item>
          <el-form-item prop="password">
            <el-input type="password" placeholder="密码" v-model="loginForm.password"></el-input>
          </el-form-item>
          <el-form-item>
              <el-button type="primary" @click="submitForm('loginForm')" class="submit_btn">登陆</el-button>
            </el-form-item>
        </el-form>
        <p class="tip">温馨提示：</p>
        <p class="tip">未登录过的新用户，自动注册</p>
        <p class="tip">注册过的用户可凭账号密码登录</p>
        </section>
      </transition> -->
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
         pass: ''
         // age: ''
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
          console.log(this.loginForm.username+" : "+this.loginForm.pass);
          this.open6();
          this.$router.push('home');
        } else {
          this.$notify.error({
            title: '错误',
            message: '请输入正确的用户名密码',
            offset: 100
          });
          return false;
        }
      });
    }
  }

  // data(){
  //     return {
  //       loginForm: {
  //         username: '',
  //         password: '',
  //       },
  //       rules: {
  //         username: [
  //                 { required: true, message: '请输入用户名', trigger: 'blur' },
  //             ],
  //         password: [
  //           { required: true, message: '请输入密码', trigger: 'blur' }
  //         ],
  //       },
  //       showLogin: false,
  //     }
  //   },
  //   mounted(){
  //     this.showLogin = true;
  //     if (!this.adminInfo.id) {
  //         this.getAdminData()
  //       }
  //   },
  //   computed: {
  //     ...mapState(['adminInfo']),
  //   },
  //   methods: {
  //     ...mapActions(['getAdminData']),
  //     async submitForm(formName) {
  //       this.$refs[formName].validate(async (valid) => {
  //         if (valid) {
  //           const res = await login({user_name: this.loginForm.username, password: this.loginForm.password})
  //           if (res.status == 1) {
  //             this.$message({
  //                           type: 'success',
  //                           message: '登录成功'
  //                       });
  //             this.$router.push('manage')
  //           }else{
  //             this.$message({
  //                           type: 'error',
  //                           message: res.message
  //                       });
  //           }
  //         } else {
  //           this.$notify.error({
  //             title: '错误',
  //             message: '请输入正确的用户名密码',
  //             offset: 100
  //           });
  //           return false;
  //         }
  //       });
  //     },
  //   },
  //   watch: {
  //     adminInfo: function (newValue){
  //       if (newValue.id) {
  //         this.$message({
  //                       type: 'success',
  //                       message: '检测到您之前登录过，将自动登录'
  //                   });
  //         this.$router.push('manage')
  //       }
  //     }
  //   }
}
</script>

