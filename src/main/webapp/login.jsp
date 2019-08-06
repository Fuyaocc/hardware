<%--
  Created by IntelliJ IDEA.
  User: lennon
  Date: 2018/12/24
  Time: 10:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@ include file="/Pages/template/cdnmain.jsp" %>
</head>
<body>


<style>
    .cheng_card_login_alone {
        margin-top: 100px;
    }
</style>

<div id="loginBothJsp" class="container cheng_card_login_alone">
    <el-card class="box-card">
        <el-container>
            <el-aside width="50%">
                <div>
                    <img style="max-width: 100%;max-height: inherit"
                         src="${pageContext.request.contextPath}/statics/images/cheng/saber8.jpg"/>
                </div>
            </el-aside>
            <el-main>
                <div class="container">
                    <el-menu :default-active="activeIndex" class="el-menu-demo" mode="horizontal"
                             @select="handleSelect">
                        <el-menu-item index="1" style="width: 50%;text-align: center">账号登录
                        </el-menu-item>
                        <el-menu-item index="2" style="width: 50%;text-align: center">短信登录
                        </el-menu-item>
                    </el-menu>
                    <!--账号登陆-->
                    <div class="container">
                        <div v-show="navShow">
                            <el-row>
                                <el-input size="small" class="cheng_top_login"
                                          v-model="loginForm.phoneInput" placeholder="手机号"></el-input>
                            </el-row>
                            <el-row>
                                <el-input size="small" type="password" class="cheng_top_login"
                                          v-model="loginForm.passwordInput" placeholder="密码"></el-input>
                            </el-row>
                            <el-row style="font-size: 15px">
                                <el-col :span="12" style="padding: 3px;">
                                    <el-checkbox v-model="loginForm.autoLogin">自动登录</el-checkbox>
                                </el-col>
                                <el-col :span="12" style="text-align: right;padding: 2px;">
                                    <p class="cheng_onhover">
                                        <object><a href="${pageContext.request.contextPath}/updatepassword.jsp">忘记密码</a></object>
                                    </p>
                                </el-col>
                            </el-row>
                            <el-row>
                                <el-col :span="24">
                                    <el-button type="primary" size="small" style="width: inherit"
                                               @click="handleSubmit('username')">登录
                                    </el-button>
                                </el-col>
                            </el-row>
                            <el-row style="font-size: 15px;text-align: right">
                                <el-col :span="24">
                                    <p>还没有账号?
                                        <object><a href="${pageContext.request.contextPath}/resigter.jsp">10秒注册</a></object>
                                    </p>
                                </el-col>
                            </el-row>
                        </div>
                        <!--短信登陆-->
                        <div v-show="!navShow">
                            <el-row>
                                <el-input size="small" class="cheng_top_login"
                                          v-model="loginForm.phoneInput" placeholder="手机号"></el-input>
                            </el-row>
                            <el-row>
                                <el-col :span="12">
                                    <el-input size="small" type="text" class="cheng_top_login"
                                              v-model="loginForm.validCode"
                                              placeholder="验证码"></el-input>
                                </el-col>
                                <el-col :span="6">
                                    <img src="${pageContext.request.contextPath}/xky/valid/getcode" id="validCodeImg"
                                         style="width: 100%;height: 32px;margin: 5px;"/>
                                </el-col>
                                <el-col :span="6" style="padding: 2px;">
                                    <p class="cheng_onhover" style="margin: 5px;">
                                        <object><a id="validCodeId" href="">看不清</a></object>
                                    </p>
                                </el-col>
                            </el-row>
                            <el-row style="font-size: 15px">
                                <el-col :span="12">
                                    <el-input size="small" type="text" class="cheng_top_login"
                                              v-model="loginForm.dynamicCode"
                                              placeholder="验证码"></el-input>
                                </el-col>
                                <el-col :span="12">
                                    <el-button type="primary" plain size="small"
                                               style="margin: 5px;width: 100%" @click="getDynamicCode">
                                        获取动态密码
                                    </el-button>
                                </el-col>
                            </el-row>
                            <el-row>
                                <el-col :span="24">
                                    <el-button type="primary" size="small" style="width: inherit"
                                               @click="handleSubmit('dynamic')">登录
                                    </el-button>
                                </el-col>
                            </el-row>
                        </div>
                    </div>
                </div>

            </el-main>
        </el-container>
    </el-card>
</div>

<script>
    $(function () {
        console.log("ChengGlobal.baseUrl"+ChengGlobal.baseUrl);
        $("#validCodeId").click(function () {
            //浏览器带有缓存功能，不会多次请求相同数据
            $("#validCodeImg").attr("src", "${pageContext.request.contextPath}/xky/valid/getcode?date=" + new Date());
            return false;
        })
    })
</script>


<script>
    new Vue({
        el: '#loginBothJsp',
        data: function () {
            return {
                login: '登陆',
                activeIndex: "1",
                navShow: true,
                loginForm: {
                    phoneInput: "",
                    passwordInput: "",
                    autoLogin: false,
                    validCode: "",
                    dynamicCode: ""
                },
                hasLogin: false,
                respDynamicCode : ""
            }
        },
        methods: {
            handleSelect: function (index) {
                if (index == 1) {
                    this.navShow = true
                } else {
                    this.navShow = false
                }
            },
            getDynamicCode: function () {
                //检查是否输入
                var phone = this.loginForm.phoneInput;
                if (phone == "" || phone == null) {
                    this.$message.error('请输入手机号');
                } else {
                    //检查手机输入是否正确
                    if (this.isPoneAvailable(phone)) {
                        //俩个条件都满足。向后端请求短信
                        this.askPhoneMessqge(phone);
                    } else {
                        this.$message.error('请输入有效的手机号');
                    }
                }
            },
            handleSubmit: function (value) {
                if (value == "dynamic") {
                    //检查是否输入
                    var phone = this.loginForm.phoneInput;
                    if (phone == "" || phone == null) {
                        this.$message.error('请输入手机号');
                    } else {
                        //检查手机输入是否正确
                        if (this.isPoneAvailable(phone)) {
                            //检查手机验证码是否正确
                            if(this.respDynamicCode == this.loginForm.dynamicCode )
                            {
                                ChengGlobal.currentUser.nickName = this.loginForm.phoneInput;
                                ChengGlobal.currentUser.phone = this.loginForm.phoneInput;
                                ChengGlobal.currentUser.haslogin = true;
                                localStorage.setItem('login', this.loginForm.phoneInput);
                                that.$message.success('登录成功');
                                location.href="${pageContext.request.contextPath}/index.jsp";
                            }else {
                                this.$message.error('验证码错误');
                            }
                        } else {
                            this.$message.error('请输入有效的手机号');
                        }
                    }
                } else if (value == "username") {
                    //检查是否输入
                    var phone = this.loginForm.phoneInput;
                    if (phone == "" || phone == null) {
                        this.$message.error('请输入手机号');
                    } else {
                        //检查手机输入是否正确
                        if (this.isPoneAvailable(phone)) {
                            //检查密码是否正确
                            this.checkedUserAndPassword()
                        } else {
                            this.$message.error('请输入有效的手机号');
                        }
                    }
                }

            },
            askPhoneMessqge: function (phone) {
                var that = this;
                // 发送 POST 请求
                var url = ChengGlobal.baseUrl + "/xky/dynamic/msg";
                axios({
                    method: "post",
                    url: url,
                    params: {
                        phone: phone
                    }
                }).then(function (response) {
                    if(response.data.status>0)
                    {
                        that.$message.success('验证码已发送，请注意查收');
                        that.respDynamicCode = response.data.code
                    }else {
                        that.$message.error('验证码发送失败');
                    }
                }).catch(function (error) {
                    that.$message.error('服务器繁忙');
                });
            },
            // 判断是否为手机号
            isPoneAvailable: function (pone) {
                var myreg = /^[1][3,4,5,7,8][0-9]{9}$/;
                if (!myreg.test(pone)) {
                    return false;
                } else {
                    return true;
                }
            },
            // 判断是否为电话号码
            isTelAvailable: function (tel) {
                var myreg = /^(([0\+]\d{2,3}-)?(0\d{2,3})-)(\d{7,8})(-(\d{3,}))?$/;
                if (!myreg.test(tel)) {
                    return false;
                } else {
                    return true;
                }
            },
            //检查验证码是否正确
            checkedValidCode:function(){
                var strCode = '<%= session.getAttribute("strCode")%>';
                if(strCode!=null && this.loginForm.validCode!=null)
                {
                    if(strCode==this.loginForm.validCode)
                        return true;
                }
                return false;
            },
            //检查用户名或密码是否正确
            checkedUserAndPassword:function(){
                var that = this;
                var url = ChengGlobal.baseUrl + '/xky/login/checkall';
                // 发送 POST 请求
                axios({
                    method: "post",
                    url: url,
                    params: {
                        phone: that.loginForm.phoneInput,
                        password: that.loginForm.passwordInput,
                        isauto: that.loginForm.autoLogin
                    }
                }).then(function (response) {
                    console.log(response)
                    console.log(response.data.result)
                    if(response.data.result<0)
                    {
                        that.$message.error('用户名或密码错误');
                    }
                    if(response.data.result>0)
                    {
                        ChengGlobal.currentUser.nickName = that.loginForm.phoneInput;
                        ChengGlobal.currentUser.phone = that.loginForm.phoneInput;
                        ChengGlobal.currentUser.haslogin = true;
                        localStorage.setItem('login', that.loginForm.phoneInput);
                        that.$message.success('登录成功');
                        location.href="${pageContext.request.contextPath}/index.jsp";
                    }
                }).catch(function (error) {
                    that.$message.error('密码验证服务器繁忙');
                });
            }
        },
        mounted: function () {
            this.$nextTick(function () {
                this.navShow = true
            })
        }
    })
</script>

</body>
</html>
