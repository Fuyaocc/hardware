<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
  <head>
    <title>文件上传</title>
  </head>
  
  <body>
    <form action="${pageContext.request.contextPath}/upload/images" enctype="multipart/form-data" method="post">
        <input type="file" name="file1"><br/>
        <input type="submit" value="点此上传到服务器">
    </form>
  </body>
</html>