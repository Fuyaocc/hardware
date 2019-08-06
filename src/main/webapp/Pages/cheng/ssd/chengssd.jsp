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
    <title>固态硬盘报价</title>
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
            <%@ include file="./chengInternalssd.jsp" %>
        </div>
        <div class="right_bottom">
            <el-main>
                <%@ include file="./chengImageInformation.jsp" %>
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
                brands: [
                    { name: "不限"},
                    { name: "三星"},
                    { name: "东芝"},
                    { name: "闪迪"},
                    { name: "海盗船"},
                    { name: "金士顿"},
                    { name: "镁光"}
                ],
                prices: [
                    { name: "不限"},
                    { name: "300元以下"},
                    { name: "300-500元"},
                    { name: "500-1000元"},
                    { name: "1000-2000元"},
                    { name: "2000-5000元"},
                    { name: "5000元以上"}
                ],
                store_capacity: [
                    { name: "不限"},
                    { name: "1TB以上"},
                    { name: "960GB-1TB"},
                    { name: "480GB-512GB"},
                    { name: "240GB-256GB"}
                ],
                interface_type: [
                    { name: "不限"},
                    { name: "SATA3接口"},
                    { name: "M.2(NGFF)接口"},
                    { name: "Type-C接口"},
                    { name: "USB3.0接口"}
                ],
                flash_memory: [
                    { name: "不限"},
                    { name: "MLC多层单元"},
                    { name: "TLC三层接口"},
                    { name: "SLC单层接口"}
                ],
                flag1: 0,
                flag2: 0,
                flag3: 0,
                flag4: 0,
                flag5: 0,
                informations: [
                    {image: "${pageContext.request.contextPath}/statics/images/cheng/ssd1.jpg", link: "http://detail.zol.com.cn/series/626/23073_1.html", str: "参考价: ",
                        price: "399-6599", account: " 三星860 EVO SATA III 三星860 EVO SATA III系列固态硬盘，是三", value:"8.5"},
                    {image: "${pageContext.request.contextPath}/statics/images/cheng/ssd2.jpg", link: "http://detail.zol.com.cn/series/626/21760_1.html", str: "参考价: ",
                        price: "259-599", account: "金士顿A400 金士顿A400系列固态硬盘，是金士顿推出的固态硬盘，", value:"8.5"},
                    {image: "${pageContext.request.contextPath}/statics/images/cheng/ssd3.jpg", link: "http://detail.zol.com.cn/series/626/19549_1.html", str: "参考价: ",
                        price: "179-559", account: " 影驰铁甲战将 影驰铁甲战将系列固态硬盘，是影驰推出的固态硬盘，", value:"8.5"},
                    {image: "${pageContext.request.contextPath}/statics/images/cheng/ssd4.jpg", link: "http://detail.zol.com.cn/series/626/23867_1.html", str: "参考价: ",
                        price: "169-209", account: "台电极速 S500（120GB） 台电极速 S500（120GB）系列固态硬盘，", value:"8.5"}
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
