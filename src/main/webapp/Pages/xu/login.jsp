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
    <%@ include file="/Pages/template/cdnmain.jsp"%>
    <script>
        $("#sub").ready(function(){
            $("button").click(function(){
                $.ajax({
                    url: "/xky/login/dynamic",
                    type: "POST",
                    dataType: "json", //指定服务器返回的数据类型
                    data:{"phone":$("#phone").val(),"password":$("#password").val()},
                    success: function (data) {
                        //console.log(data);
                        //alert("登陆成功");
                        //如果返回的数据是String格式，需要使用下面的语句转换
                        //console.log($.parseJSON(data));
                        if(data.result=="success"){
                            window.location.href='success';
                        }else
                            alert("密码错误");
                    },
                    error : function(){
                        alert("登陆失败");
                    }

                });
            });
        });
    </script>

</html>
