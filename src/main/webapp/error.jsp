<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style type="text/css">
        body, div, h3, h4, li, ol {
            margin: 0;
            padding: 0;
        }
 
        body {
            font: 14px/1.5 'Microsoft YaHei','微软雅黑',Helvetica,Sans-serif;
            min-width: 1300px;
            background:black;
            
        }
 
        :focus {
            outline: 0;
        }
 
        h3, h4, strong {
            font-weight: 700;
        }
 
        a {
            color: white;
            text-decoration: none;
        }
 
            a:hover {
                text-decoration: underline;
            }
 
        
 
        .error-page-container {
            position: relative;
            z-index: 1;
        }
 
        .error-page-main {
            position: relative;
          
            margin: 0 auto;
            width:1000px;
            
            padding: 200px 200px 100px;
        }
 
            .error-page-main:before {
               
               
                height: 1200px;
                position: absolute;
                top: 400px;
                width: 100%;
                left: 0;
            }
 
            .error-page-main h3 {
                font-size: 6vw;
                font-weight: 400;
             
            }
 
               
 
            .error-page-main h4 {
                font-size: 2.4vw;
                font-weight: 500;
                color: white;
            }
 
        .error-page-actions {
            font-size: 0;
          
        }
 
            .error-page-actions div {
                font-size: 2vw;
                display: inline-block;
                padding: 30px 0 0 55px;
                width:400px;
              
   
                box-sizing: border-box;
                color: white;
            }
 
           
            .error-page-actions li {
                line-height: 2.5em;
                font-size: 1.4vw;
                text-decoration:none;
                position:absolute;
                text-decoration-color: white;
            }
 
           
           
    </style>
</head>
<body>
<div class="error-page">
        <div class="error-page-container">
            <div class="error-page-main">
                <h3 style="color:white">
                     404 Not  Found！
                </h3>
                <div class="error-page-actions">
                    <div>
                        <h4>可能原因：</h4>
                        <ul>
                            <li>网络信号差不稳定</li>
                        </ul>
                    </div>
                    <div>
                        <h4>可以尝试：</h4>
                        <ul>
                            <li><a href="${pageContext.request.contextPath}/index.jsp">返回首页</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>