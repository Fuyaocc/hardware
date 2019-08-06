<%--
  Created by IntelliJ IDEA.
  User: 钱黎磊
  Date: 2018/12/24
  Time: 16:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>数据管理</title>
    <%@ include file="/Pages/template/cdnmain.jsp" %>
</head>
<body>
<style>
    .left{
        width: 25%;
        height: 500px;
        float: left;
        margin-right: 5%;
    }
    .right{
        width: auto;
        height: 700px;
        padding-left: 1%;
    }
    .listBC{
        width: 50%;
        height: 30px;
        float: left;
        color: #000000;
    }
    .active_bar{
        padding-left: 10px;
    }
    .left a:hover{
        background-color: tomato;
        color: #FFFFFF;
    }
    .left a{
        text-decoration: none;
        color: black;
    }

</style>
<div class = "container" id = "app">
    <%@ include file="/Pages/top.jsp" %>
    <div class = "left"> <%@ include file="/Pages/qian/qianBrandClassfied.jsp" %></div>
    <div class = "right"> <%@ include file="/Pages/xu/xuForm.jsp" %></div>
    <%@ include file="/Pages/bottom.jsp" %>
</div>
<script>
    new Vue({
        el: '#app',
        data: function () {
            return {
                activeNames: ['1'],
                names1:[
                    {
                        name: '主板', link: '#'
                    },
                    {
                        name: '显卡', link:'#'
                    },
                    {
                        name: 'CPU', link:'#'
                    },
                    {
                        name: '内存', link:'#'
                    },
                    {
                        name:  '硬盘', link:'#'
                    },
                    {
                        name: '机箱', link:'#'
                    },
                    {
                        name:  '电源', link:'#'
                    },
                    {
                        name:  '固态硬盘', link:'#'
                    },
                    {
                        name:  '光驱', link:'#'
                    },
                    {
                        name:  '声卡', link:'#'
                    },
                    {
                        name:  '网卡', link:'#'
                    },
                    {
                        name:   '液晶显示器', link:'#'
                    }
                ],
                names2:[
                    {
                        name:   '音箱', link:'#'
                    },
                    {
                        name:  '鼠标', link:'#'
                    },
                    {
                        name:   '键盘', link:'#'
                    },
                    {
                        name:   '键鼠配件', link:'#'
                    },
                    {
                        name:  '音箱配件', link:'#'
                    },
                    {
                        name:   '移动硬盘', link:'#'
                    },
                    {
                        name:   'U盘', link:'#'
                    },
                    {
                        name:   '摄像头', link:'#'
                    }
                ],
                names3:[
                    {
                        name:  '蓝牙适配器', link:'#'
                    },
                    {
                        name:   '硬盘/光驱盒', link:'#'
                    },
                    {
                        name:   '连接线转接卡', link:'#'
                    },
                    {
                        name:    '多串口卡', link:'#'
                    },
                    {
                        name:   '显示芯片', link:'#'
                    },
                ],
                tableData4: [
                    {brand: "英睿达", price: "459", suittype: "台式机", account: "16GB", type:"DDR3", MHZ:"1600MHZ", aircooling: "带散热片"},
                    {brand: "英睿达", price: "489", suittype: "笔记本", account: "16GB", type:"DDR3", MHZ:"1600MHZ", aircooling: "带散热片"},

                ]
            }
        },
        methods: {
            deleteRow: function(index, rows) {
                rows.splice(index, 1);
            },
        },
    })
</script>

</body>
</html>
