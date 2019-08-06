<%--
  Created by IntelliJ IDEA.
  User: lennon
  Date: 2018/12/24
  Time: 16:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<form action="${pageContext.request.contextPath}/" enctype="multipart/form-data" method="post">
    上传文件1：<input type="file" name="点击上传"><br/>
    <input type="submit" value="提交">
</form>
