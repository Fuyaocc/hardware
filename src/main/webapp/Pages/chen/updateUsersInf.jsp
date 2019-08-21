<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <%@ include file="/Pages/template/cdnmain.jsp" %>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>更新用户信息</title>
</head>
<body>
<%@ include file="/Pages/top.jsp" %>
<center>
    <!-- 	http://localhost:8080/hardware/Pages/chen/update -->
    <form action="Judge.jsp" method="post">
        <table>
            <tr>
                <td>昵称：</td>
                <td><input type="text" id="nickname"></td>
            </tr>
            <tr>
                <td>地址：</td>
                <td><input type="text" id="location"></td>
            </tr>
            <tr>
                <td>出生日期：</td>
                <td><input type="text" id="birth"></td>
            </tr>
            <tr>
                <td>邮箱：</td>
                <td><input type="text" id="email"></td>
            </tr>
            <tr>
                <td>性别：</td>
                <td>
                    <input type="radio" value="1" name="sex">男
                    <input type="radio" value="0" name="sex">女
                </td>
            </tr>
            <tr>
                <td><input type="button" id="submit" value="提交" onclick="upload()"></td>
                <td><input type="reset" value="重置"></td>
            </tr>
        </table>
    </form>
</center>
<script>
    function upload() {
        var url = ChengGlobal.baseUrl + "/chen/user/update";
        var postData = {
			phone:localStorage.getItem("login"),
        	nickname: $('#nickname').val(),
			location: $('#location').val(),
			birth: $('#birth').val(),
			email: $('#email').val(),
            radio: $('input:radio:checked').val()
        }
        console.log(postData);
		var that = this;
        axios({
            method: "post",
            url: url,
            data: postData
        }).then(function (response) {
            console.log(response);
            this.$message.success('用户信息更新成功');
        }).catch(function (error) {
            this.$message.error('服务器繁忙');
        });
    }

</script>
<%@ include file="/Pages/bottom.jsp" %>
</body>
</html>