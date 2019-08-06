<%--
  Created by IntelliJ IDEA.
  User: lennon
  Date: 2018/12/21
  Time: 9:52
  To change this template use File | Settings | File Templates.
  页面说明： 此界面统一维护所有的 cdn 链接.
  已导入的：    bootstrap
                jquery
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<meta name="viewport" content="width=device-width, initial-scale=1">

<!--全局的属性-->
<script src="${pageContext.request.contextPath}/statics/js/global.js"></script>


<input type="hidden" id="globalContextPath" name="contextPath" value=<%= request.getContextPath() %> >


<!--bootstrap and jquery cdn link ，bootstrap 需要 jquery 的支持，所以就一起导入了-->
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/js/bootstrap.min.js"></script>

<!-- axios 库引入 -->
<script src="https://cdn.bootcss.com/axios/0.19.0-beta.1/axios.js"></script>

<!--导入全局样式文件-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/global.css">

<!-- import Vue before Element -->
<script src="https://cdn.bootcss.com/vue/2.5.21/vue.js"></script>
<!-- 引入样式 -->
<link href="https://cdn.bootcss.com/element-ui/2.4.10/theme-chalk/index.css" rel="stylesheet">
<!-- 引入组件库 -->
<script src="https://cdn.bootcss.com/element-ui/2.4.11/index.js"></script>


<script>
    ChengGlobal.baseUrl =  $("#globalContextPath").val();
    ChengGlobal.currentUser.phone
</script>