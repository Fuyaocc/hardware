<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "site.suimu.controller.*" import = "site.suimu.pojo.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>判断修改</title>
</head>
<body>
	<%
		String nickname=request.getParameter("nickname");
		String location=request.getParameter("location");
		String birth=request.getParameter("birth");
		String email=request.getParameter("email");
		String sex="男";
		
		ChenUser cu=new ChenUser();
		cu.setBirth(birth);
		cu.setEmail(email);
		cu.setLocation(location);
		cu.setNickname(nickname);
		cu.setPhone("123");
		cu.setSex(sex);
		ChenUserController cuc = new ChenUserController();
		if(cuc.Update(cu).equals("UPDATE_SUCCESS"))
			out.println("修改成功");
		else
			out.println("修改失败");
		out.println(nickname);
		out.println(location);
		out.println(birth);
		out.println(email);
	%>
</body>
</html>