<%--
  Created by IntelliJ IDEA.
  User: lennon
  Date: 2018/12/28
  Time: 3:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>后台管理</title>
    <%@ include file="/Pages/template/cdnmain.jsp" %>
</head>
<body>

<style type="text/css">
    img, object {max-width: 100%;}

    body{
        background-image: url(${pageContext.request.contextPath}/statics/images/login-bg.jpg);
        background-attachment: fixed;
        overflow: hidden;
        background-size: cover;
        background-position: 50% 50%;
        background-repeat: no-repeat;
    }
    p{
        font-size:3vw;
    }
    a{
        text-decoration:none;
        font-size:1.5vw;
    }

    .admin_form{
        width: 80%;
    }

</style>

<div id="admin" class="container" style="width: 400px;height: 180px;margin-top: 350px;margin-left: 70%">
    <el-card class="box-card" shadow="hover" class="container">
        <div slot="header">
            <span style="text-align: center"><h1>管理员登录</h1></span>
            <el-button style="float: right; padding: 3px 0" type="text"></el-button>
        </div>
        <el-form label-position="right" label-width="80px" :model="adminForm" style="margin-top: 20px; margin-left: 10px">
            <el-form-item label="用户名"  class="admin_form">
                <el-input v-model="adminForm.name"></el-input>
            </el-form-item>
            <el-form-item label="密码" class="admin_form">
                <el-input type="password" v-model="adminForm.password"></el-input>
            </el-form-item>
            <el-form-item>
                <el-button type="primary" @click="handlAdminLogin" style="width: 150px;margin-left: 10px;">登录</el-button>
            </el-form-item>
        </el-form>
    </el-card>
</div>

<script>
    new Vue({
        el: "#admin",
        data: function () {
            return {
                adminForm: {
                    name: "",
                    password: ""
                }
            }
        },
        methods: {
            handlAdminLogin: function () {
                var that = this;
                var url = ChengGlobal.baseUrl + '/xky/login/checkall';
                // 发送 POST 请求
                axios({
                    method: "post",
                    url: url,
                    params: {
                        phone: that.adminForm.name,
                        password: that.adminForm.password,
                        isauto: false
                    }
                }).then(function (response) {
                    if (response.data.result < 0) {
                        that.$message.error('用户名或密码错误');
                    }
                    if (response.data.result > 0) {
                        location.href = "${pageContext.request.contextPath}/admin/manage.jsp";
                    }
                }).catch(function (error) {
                    that.$message.error('密码验证服务器繁忙');
                })
            }
        }
    })
</script>


</body>
</html>
