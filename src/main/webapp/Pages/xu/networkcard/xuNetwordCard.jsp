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
    <title>网卡报价</title>
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
            <%@ include file="./xuInternalNetworkCard.jsp" %>
        </div>
        <div class="right_bottom">
            <el-main>
                <%@ include file="/Pages/xu/xuImageInformation.jsp" %>
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
                    { name: "intel"},
                    { name: "TP-LINK"},
                    { name: "Winyao"},
                    { name: "LR-Link"},
                    { name: "D-Link"},
                    { name: "光润通"},
                    { name: "腾达"}
                ],
                prices: [
                    { name: "不限"},
                    { name: "50元以下"},
                    { name: "50-100元"},
                    { name: "100-400元"},
                    { name: "400-1000元"},
                    { name: "1000元以上"}
                ],
                networktype: [
                    { name: "不限"},
                    { name: "以太网"},
                    { name: "快速以太网"},
                    { name: "千兆以太网"},
                    { name: "万兆以太网"}
                ],
                rate: [
                    { name: "不限"},
                    { name: "10/100Mbps"},
                    { name: "10/100/1000Mbps"},
                    { name: "1000Mbps"},
                    { name: "10000Mbps"}

                ],
                bustype: [
                    { name: "不限"},
                    { name: "PCI"},
                    { name: "PCI-E"},
                    { name: "PCI-X"},
                    { name: "USB"}
                ],
                interfacetype: [
                    { name: "不限", id: 1},
                    { name: "RJ45接口", id: 2},
                    { name: "光纤接口", id: 3}
                ],
                flag1: 0,
                flag2: 0,
                flag3: 0,
                flag4: 0,
                flag5: 0,
                flag6: 0,
                informations: [
                    {image: "${pageContext.request.contextPath}/statics/images/xu/networkcard1.jpg", link: "http://detail.zol.com.cn/net_card/index98041.shtml", str: "参考价: ",
                        price: "45", account: " TP-LINK TG-3269C 适用网络类型：千兆以太网 ", value:"8.5"},
                    {image: "${pageContext.request.contextPath}/statics/images/xu/networkcard2.jpg", link: "http://detail.zol.com.cn/net_card/index203453.shtml", str: "参考价: ",
                        price: "260", account: "Intel 9301CT 适用网络类型：千兆以太网", value:"8.5"},
                    {image: "${pageContext.request.contextPath}/statics/images/xu/networkcard3.jpg", link: "http://detail.zol.com.cn/net_card/index329214.shtml", str: "参考价: ",
                        price: "3370", account: "Intel E10G42BFSR 适用网络类型：万兆以太网", value:"8.5"}
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
           activeFun6: function (index) {
               this.flag6 = index
           },

           filters: {
               current: function (val) {
                   return "￥" + val;
               }
           }
       }
    })
</script>

</body>
</html>
