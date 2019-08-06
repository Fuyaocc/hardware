<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/Pages/template/cdnmain.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>更新用户信息</title>
</head>
<body>
<%@ include file="/Pages/top.jsp"%>
	<center>
<!-- 	http://localhost:8080/hardware/Pages/chen/updateusers -->
	<form action = "Judge.jsp" method="post">
		<table>
			<tr>
				<td>昵称：</td><td><input type="text" name="nickname"></td>
			</tr>
			<tr>
				<td>地址：</td><td><input type="text" name="location"></td>
			</tr>
			<tr>
				<td>出生日期：</td><td><input type="text" name="birth"></td>
			</tr>
			<tr>
				<td>邮箱：</td><td><input type="text" name="email"></td>
			</tr>
			<tr>
				<td>性别：</td><td><input type="radio" value="1" name="male">男
					<input type="radio" value="0" name="female">女</td>
			</tr>
			<tr>
				<td><input type="submit" value="提交" onclick = "upload()"></td>
				<td><input type="reset" value="重置"></td>
			</tr>
		</table>
		</form>
	</center>
	<script>
	
	</script>
	<%@ include file="/Pages/bottom.jsp"%>
</body>
</html>