<%--
  Created by IntelliJ IDEA.
  User: lennon
  Date: 2018/12/21
  Time: 4:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>template</title>
    <%@ include file="/Pages/template/cdnmain.jsp"%>
</head>
<body>
<%@ include file="./../top.jsp"%>

<script>
    $(document).ready(function(){
        $("button").click(function(){
            $.ajax({
                url: "/chengpeople/select/allpeo",
                type: "GET",
                //dataType: "jsonp",
                success: function (data) {
                   console.log(data);
                   //如果返回的数据是String格式，需要使用下面的语句转换
                   //console.log($.parseJSON(data));
                }
            });
        });
    });
</script>

<div class="container">
    <h1>从 mapper 开始到 jsp 示例页面</h1>
    <p>这是一些文本。</p>
    <button>发送一个 HTTP GET 请求并获取返回结果</button>
</div>
<%@ include file="./../bottom.jsp"%>
</body>
</html>
