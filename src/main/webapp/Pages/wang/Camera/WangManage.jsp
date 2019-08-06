<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>数据管理</title>
    <%@ include file="/Pages/template/cdnmain.jsp" %>
</head>
<body>
<style>
    .left {
        width: 25%;
        height: 500px;
        float: left;
        margin-right: 5%;
    }

    .right {
        width: auto;
        height: 700px;
        padding-left: 1%;
    }

    .listBC {
        width: 50%;
        height: 30px;
        float: left;
        color: #000000;
    }

    .active_bar {
        padding-left: 10px;
    }

    .left a:hover {
        background-color: tomato;
        color: #FFFFFF;
    }

    .left a {
        text-decoration: none;
        color: black;
    }

</style>
<div class="container">
    <%@ include file="/Pages/top.jsp" %>
    <div class="left">
        <%@ include file="/Pages/template/main/manageleft.jsp" %>
    </div>

    <div class="right">
        <%@ include file="./WangForm.jsp" %>
    </div>

    <%@ include file="/Pages/bottom.jsp" %>
</div>


</body>
</html>
