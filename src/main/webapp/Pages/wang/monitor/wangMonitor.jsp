<%--
  Created by IntelliJ IDEA.
  User: 钱黎磊
  Date: 2018/12/23
  Time: 1:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>显示屏报价</title>
    <%@ include file="/Pages/template/cdnmain.jsp" %>
</head>
<body>
<style>
.left{
    width: 25%;
    float: left;
    margin-right: 5%;
}
.right_top{
    width: auto;
    padding-left: 1%;
}
.right_bottom{
    width: auto;
    margin-left: 26%;
    padding-top: 1%;
}
.panel-heading{
    height: 30px;
    margin-left: 29%;
    background-color: whitesmoke;
}
.listII{
    padding-top: 25px;
    height: auto;
    width: 25%;
    float: left;
    color: #000000;
    font-size: 10pt;
}
.listIM{
    padding-left: 10px;
    height: 20px;
    float: left;
    color: #000000;
    font-size: 10pt;
}
.listBC{
    width: 50%;
    height: 30px;
    float: left;
    color: #000000;
}
.bar{
    background-color: whitesmoke;
    margin-left: 30px;
}
.active_bar{
    padding-left: 10px;
}
.listII ul li{
    list-style-type: none;
}
.title{
    float: left;
    font-size: 8pt;
}
.left a:hover{
    background-color: tomato;
    color: #FFFFFF;
}
.right_bottom  a:hover{
    background-color: dodgerblue;
    color: #000000;
}
.left a{
    text-decoration: none;
    color: black;
}
.right_top a{
    text-decoration: none;
    color: black;
    cursor: pointer;
}
.right_bottom a{
    text-decoration: none;
    color: black;
}
.active{
    background-color: tomato;
    color: white;
}
</style>
<%@ include file="/Pages/top.jsp" %>
<div class="container">
    <div class="left">
        <%@ include file="/Pages/template/main/mainleft.jsp" %>
    </div>
    <div id="app">
        <div class="right_top">
            <%@ include file="./wangInternalMonitor.jsp" %>
        </div>
        <div class="right_bottom">
            <el-main>
                <%@ include file="./wangImageInformation.jsp" %>
            </el-main>
        </div>
        <el-footer>
            <%@ include file="/Pages/bottom.jsp" %>
        </el-footer>
    </div>
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
                brands: [
                    { name: "不限"},
                    { name: "三星"},
                    { name: "HKC"},
                    { name: "AOC"},
                    { name: "明基"},
                    { name: "飞利浦"},
                    { name: "华硕"},
                    { name: "Acer宏基"}
                ],
                prices: [
                    { name: "不限"},
                    { name: "499"},
                    { name: "500-799元"},
                    { name: "800-999元"},
                    { name: "1000-1499元"},
                    { name: "1500-2499元"},
                    { name: "2500-4999元"},
                    { name: "5000元以上"}
                ],
                size: [
                    { name: "不限"},
                    { name: "30英寸以上"},
                    { name: "27-30英寸"},
                    { name: "23-26英寸"},
                    { name: "20-22英寸"},
                    { name: "20英寸以下"}
                ],
                resolution: [
                    { name: "不限"},
                    { name: "16GB"},
                    { name: "8GB"},
                    { name: "4GB"},
                    { name: "2GB"},
                    { name: "16GB*2"},
                    { name: "8GB*2"},
                    { name: "4GB*2"},
                    { name: "2GB*2"}
                ],
                proportion: [
                    { name: "不限"},
                    { name: "宽屏16:10"},
                    { name: "宽屏16:9"},
                    { name: "超宽屏21:9"},
                    { name: "普屏4:3"}
                ],
                flag1: 0,
                flag2: 0,
                flag3: 0,
                flag4: 0,
                flag5: 0,
                informations: [
                    {image: "${pageContext.request.contextPath}/statics/images/wang/monitor1.jpg", link: "http://detail.zol.com.cn/lcd/index1181241.shtml", str: "参考价: ",
                        price: "5999", account: "AOC AG273QCG 178°广视角，165Hz刷新率，2K细腻", value:"8.5"},
                    {image: "${pageContext.request.contextPath}/statics/images/wang/monitor2.jpg", link: "http://detail.zol.com.cn/lcd/index1210106.shtml", str: "参考价: ",
                        price: "2699", account: "航嘉X3481CK 1800R曲率，4K高清，游戏模式一键切", value:"8.5"},
                    {image: "${pageContext.request.contextPath}/statics/images/wang/monitor3.jpg", link: "http://detail.zol.com.cn/lcd/index1227546.shtml", str: "参考价: ",
                        price: "4599", account: "优派VP2768-4K 产品类型：LED显示器，广视角显示", value:"8.5"},
                    {image: "${pageContext.request.contextPath}/statics/images/wang/monitor4.jpg", link: "http://detail.zol.com.cn/lcd/index1230514.shtml", str: "参考价: ",
                        price: "1199", account: "飞利浦242M7 曲面显示屏，SmartImage游戏模式，", value:"8.5"},
                ],
            }
        },
       methods: {
           handleChange: function (val) {
               console.log(val);
           },
           activeFun1: function (index) {
               this.flag1 = index
           },
           activeFun2: function (index) {
               this.flag2 = index
           },
           activeFun3: function (index) {
               this.flag3 = index
           },
           activeFun4: function (index) {
               this.flag4 = index
           },
           activeFun5: function (index) {
               this.flag5 = index
           },
           filters: {
               current: function (val) {
                   return "￥" + val;
               },
           }
       }
    })
</script>

</body>
</html>
