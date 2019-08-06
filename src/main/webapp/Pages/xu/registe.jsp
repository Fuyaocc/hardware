<%--
  Created by IntelliJ IDEA.
  User: 17398
  Date: 2018/12/22
  Time: 14:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@ include file="/Pages/template/cdnmain.jsp" %>
    <div align="center">
    <body class="login_bg">
    <section class="loginBox">
    <section class="loginCont">
        <form class="loginForm" action="login"  name="actionForm" id="actionForm"  method="post" >
            <br />
            <div class="info" style="color:red">${message }</div>
            <div>
                <label for="userCode"></label>
                <input type="text" class="input-text" id="userCode" name="loginName" placeholder="请输入用户名" required/>
            </div>
            <br />
            <div>
                <label for="userPassword"></label>
                <input type="password" id="userPassword" name="loginPwd" placeholder="请输入密码" required/>
            </div>
            <br />
            <div>
                <input type="submit" style="background: deepskyblue;width:175px"   value="注册"/>
            </div>
        </form>
    </section>
    </section>
    </body>
    </div>
</html>
