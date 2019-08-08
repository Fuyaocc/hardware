<%--
  Created by IntelliJ IDEA.
  User: lennon
  Date: 2018/12/27
  Time: 0:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>注册页面</title>
    <%@ include file="/Pages/template/cdnmain.jsp" %>
</head>
<body>

<style>
    .cheng_card_login_alone {
        margin-top: 100px;
    }
</style>

<div id="loginJsp" class="container cheng_card_login_alone">
    <el-card class="box-card">
        <el-container>
            <el-aside width="50%">
                <div>
                    <img style="max-width: 100%;max-height: inherit"
                         src="${pageContext.request.contextPath}/statics/images/cheng/saber8.jpg"/>
                </div>
            </el-aside>
            <el-main>
                <div class="container" style="padding: 0% 20%;">
                    <el-row>
                        <el-input size="small" class="cheng_top_login"
                                  v-model="loginAloneForm.phone" placeholder="请输入手机号"></el-input>
                    </el-row>
                    <el-row>
                        <el-input size="small" type="password" class="cheng_top_login"
                                  v-model="loginAloneForm.password" placeholder="密码，4-16位数字/字母/特殊字符(空格除外)"></el-input>
                    </el-row>
                    <el-row>
                        <el-col :span="12">
                            <el-input size="small" type="text" class="cheng_top_login"
                                      v-model="loginAloneForm.validCode"
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
                                      v-model="loginAloneForm.DynamicCode" placeholder="验证码"></el-input>
                        </el-col>
                        <el-col :span="12">
                            <el-button type="primary" plain size="small"
                                       style="margin: 5px;width: 100%" @click="getDynamicCodeLoginAlone">
                                免费获取动态密码
                            </el-button>
                        </el-col>
                    </el-row>
                    <el-row style="font-size: 15px">
                        <el-col :span="12" style="padding: 3px;">
                            <el-checkbox v-model="loginAloneForm.checked">
                                <p class="cheng_top_login">已阅读并同意用户注册协议</p>
                            </el-checkbox>
                        </el-col>
                    </el-row>
                    <el-row>
                        <el-col :span="24">
                            <el-button type="primary" size="small" style="width: inherit" @click="handleResiger">注册
                            </el-button>
                        </el-col>
                    </el-row>
                    <el-row style="font-size: 15px;text-align: right">
                        <el-col :span="24">
                            <p>已有账号?
                                <object><a href="${pageContext.request.contextPath}/index.jsp">立即登陆</a></object>
                            </p>
                        </el-col>
                    </el-row>
                </div>
            </el-main>
        </el-container>
    </el-card>
</div>
<script>
    $(function () {
        console.log("ChengGlobal.baseUrl  " + ChengGlobal.baseUrl);
        $("#validCodeId").click(function () {
            //浏览器带有缓存功能，不会多次请求相同数据
            $("#validCodeImg").attr("src", "${pageContext.request.contextPath}/xky/valid/getcode?date=" + new Date());
            return false;
        })
    })
</script>


<script>
    new Vue({
        el: "#loginJsp",
        data: function () {
            return {
                loginAloneForm: {
                    phone: "",
                    password: "",
                    validCode: "",
                    DynamicCode: "",
                    checked: ""
                },
                respDynamicCode: "000002",

            }
        },
        methods: {
            getDynamicCodeLoginAlone: function () {
                //检查是否输入
                var phone = this.loginAloneForm.phone;
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
            // 判断是否为手机号
            isPoneAvailable: function (pone) {
                var myreg = /^[1][3,4,5,7,8][0-9]{9}$/;
                if (!myreg.test(pone)) {
                    return false;
                } else {
                    return true;
                }
            },
            //发送手机验证码
            askPhoneMessqge: function (phone) {
                var that = this;
                // 发送 POST 请求
                let url = ChengGlobal.baseUrl + "/xky/dynamic/msg";
                axios({
                    method: "post",
                    url: url,
                    params: {
                        phone: phone
                    }
                }).then(function (response) {
                    if (response.data.status > 0) {
                        that.respDynamicCode = response.data.code;
                        that.$message.success('验证码已发送，请注意查收');
                        console.log("that.respDynamicCode   " + that.respDynamicCode)
                        console.log(response);
                    } else {
                        that.$message.error('验证码发送失败');
                    }

                }).catch(function (error) {
                    that.$message.error('服务器繁忙');
                });
            },
            handleResiger: function () {
                //检验俩个验证码是否正确
                if (true) {
                    //注册
                    this.registerReq();
                } else {
                    this.$message.error("验证码错误！请检查")
                }
            },
            registerReq: function () {
                var that = this;
                var url = ChengGlobal.baseUrl + "/xky/registe/insert"

                axios({
                    method: "post",
                    url: url,
                    data:  that.loginAloneForm
                }).then(function (response) {
                    that.$message.success("注册成功")
                    if (response.data.res == 1) {
                        that.$message.success("注册成功")
                    } else if (response.data.res == -1) {
                        that.$message.error("注册失败")
                    }
                }).catch(function (error) {
                    that.$message.error('服务器繁忙');
                });

            },
            checkedDynamicCode: function () {
                if (this.respDynamicCode == this.loginAloneForm.DynamicCode) {
                    return true;
                } else {
                    return false;
                }
            },
            //检查图片验证码
            checkedImageCode: function () {
                var that = this;
                var succ = false;
                // 发送 POST 请求
                let url = ChengGlobal.baseUrl + "/xky/valid/checkcode";
                axios({
                    method: "post",
                    url: url,
                    data: {
                        code: this.loginAloneForm.validCode
                    }
                }).then(function (response) {
                    succ = response.data.res
                }).catch(function (error) {
                    that.$message.error('服务器繁忙');
                });
                return succ;
            }
        }
    })
</script>


</body>
</html>
