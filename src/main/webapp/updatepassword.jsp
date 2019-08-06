<%--
  Created by IntelliJ IDEA.
  User: lennon
  Date: 2018/12/24
  Time: 10:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改密码</title>
    <%@ include file="/Pages/template/cdnmain.jsp" %>
</head>
<body>

<style>
    .cheng_card_update_pass {
        margin-top: 100px;
    }
</style>


<div id="updatePassword" class="container cheng_card_update_pass">
    <el-card class="box-card">
        <el-container>
            <el-header>
                <el-steps :active="active" finish-status="success">
                    <el-step title="获取验证码"></el-step>
                    <el-step title="修改密码"></el-step>
                    <el-step title="修改成功"></el-step>
                </el-steps>
            </el-header>
            <el-main>
                <div v-if="active==0">
                    <el-input v-model="loginBothForm.phone" placeholder="请输入手机号"></el-input>
                </div>
                <div v-else-if="active==1">
                    <el-row style="font-size: 15px">
                        <el-col :span="12">
                            <el-input size="small" type="text" class="cheng_top_login"
                                      v-model="loginBothForm.dynamicCode"
                                      placeholder="验证码"></el-input>
                        </el-col>
                        <el-col :span="12">
                            <el-button type="primary" plain size="small"
                                       style="margin: 5px;width: 100%" @click="getDynamicCode">
                                获取动态密码
                            </el-button>
                        </el-col>
                    </el-row>
                </div>
                <div v-else>
                    <a href="./index.jsp">返回首页</a></object>
                </div>
            </el-main>
            <el-footer>
                <div>
                    <el-button style="margin-top: 12px;" @click="next">下一步</el-button>
                </div>
            </el-footer>
        </el-container>



    </el-card>
</div>


<script>
    new Vue({
        el: "#updatePassword",
        data: function () {
            return {
                active: 0,
                loginBothForm:{
                    phone:"",
                    dynamicCode: ""
                }
            }
        },
        methods: {
            next() {
                if (this.active++ > 2) this.active = 0;
            },
            getDynamicCode: function () {
                //检查是否输入
                var phone = this.loginBothForm.phone;
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
            isPoneAvailable: function (pone) {
                var myreg = /^[1][3,4,5,7,8][0-9]{9}$/;
                if (!myreg.test(pone)) {
                    return false;
                } else {
                    return true;
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
                    that.$message.success('验证码已发送，请注意查收');
                }).catch(function (error) {
                    that.$message.error('服务器繁忙');
                });
            },
        }
    })
</script>

</body>
</html>
