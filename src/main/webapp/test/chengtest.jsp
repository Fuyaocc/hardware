<%--
  Created by IntelliJ IDEA.
  User: lennon
  Date: 2018/12/21
  Time: 1:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>chengtest</title>
    <%@ include file="/Pages/template/cdnmain.jsp"%>
</head>
<body>
<%@ include file="/Pages/top.jsp"%>

<script>
    $(document).ready(function(){
        $("button").click(function(){
            $.ajax({
                url: "http://api.douban.com/v2/movie/top250",
                type: "GET",
                dataType: "jsonp", //指定服务器返回的数据类型
                success: function (data) {
                    console.log(data);
                }
            });
        });
    });
</script>

<div class="container">
    <h1>我的第一个 Bootstrap 页面</h1>
    <p>这是一些文本。</p>
    <button>发送一个 HTTP GET 请求并获取返回结果</button>
</div>
<%@ include file="/Pages/bottom.jsp"%>
</body>
</html>

