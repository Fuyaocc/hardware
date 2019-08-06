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
    <title>主板报价</title>
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
            <%@ include file="./xuInternalMotherBoard.jsp" %>
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
                    { name: "华硕"},
                    { name: "技嘉"},
                    { name: "微星"},
                    { name: "七彩虹"},
                    { name: "蓝宝石"}
                ],
                prices: [
                    { name: "不限"},
                    { name: "400元以下"},
                    { name: "400-500元"},
                    { name: "500-600元"},
                    { name: "600-800元"},
                    { name: "800-1000元"},
                    { name: "1000-1500元"}
                ],
                chips: [
                    { name: "不限"},
                    { name: "Intel"},
                    { name: "Z390"},
                    { name: "H370"}
                ],
                cpuslot: [
                    { name: "不限"},
                    { name: "LGA 2066"},
                    { name: "LGA 1151"}

                ],
                version: [
                    { name: "不限"},
                    { name: "ATX (标准型)"},
                    { name: "M-ATX (紧凑型)"},
                    { name: "Mini-ITX (迷你型)"}
                ],
                memorytype: [
                    { name: "不限"},
                    { name: "DDR4"},
                    { name: "DDR3"}
                ],
                characteristic: [
                    { name: "不限", id: 1},
                    { name: "SLI技术", id: 2},
                    { name: "CressFire技术", id: 3},
                    { name: "支持超频", id: 4},
                    { name: "Type-c接口", id: 5},
                ],
                flag1: 0,
                flag2: 0,
                flag3: 0,
                flag4: 0,
                flag5: 0,
                flag6: 0,
                flag7: 0,
                informations: [
                    {image: "${pageContext.request.contextPath}/statics/images/xu/motherboard1.jpg", link: "http://detail.zol.com.cn/motherboard/index1222920.shtml", str: "参考价: ",
                        price: "879", account: "华硕TUF B360M-PLUS GAMING S 强化型7相供电，板载3个M.2接口", value:"8.5"},
                    {image: "${pageContext.request.contextPath}/statics/images/xu/motherboard2.jpg", link: "http://detail.zol.com.cn/motherboard/index1226469.shtml", str: "参考价: ",
                        price: "999", account: "微星B450M MORTAR 7相数字供电，双M.2，全面支持storeMI", value:"8.5"},
                    {image: "${pageContext.request.contextPath}/statics/images/xu/motherboard3.jpg", link: "http://detail.zol.com.cn/motherboard/index1216856.shtml", str: "参考价: ",
                        price: "599", account: "七彩虹战斧C.B360M-PLUS V20 战斧专属供电散热装甲，7相数字供电，4", value:"8.5"},
                    {image: "${pageContext.request.contextPath}/statics/images/xu/motherboard4.jpg", link: "http://detail.zol.com.cn/motherboard/index1223633.shtml", str: "参考价: ",
                        price: "799", account: "技嘉B450M DS3H AMD新品B450，耐久系列主板，4+3相供电设计，高速M.", value:"8.5"},

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
           activeFun7: function (index) {
               this.flag7 = index
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
