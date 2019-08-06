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
    <title>蓝牙适配器报价</title>
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
            <%@ include file="./xuInternalBluetooth.jsp" %>
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
                    { name: "飞利浦"},
                    { name: "惠威"},
                    { name: "声擎"},
                    { name: "水木行"},
                    { name: "奥视通"}
                ],
                prices: [
                    { name: "不限"},
                    { name: "50元以下"},
                    { name: "50-100元"},
                    { name: "100元以上"}
                ],
                flag1: 0,
                flag2: 0,
                informations: [
                    {image: "${pageContext.request.contextPath}/statics/images/xu/bluetooth1.jpg", link: "http://detail.zol.com.cn/bluetooth_adapter/index269342.shtml", str: "参考价: ",
                        price: "68", account: "水木行BT559 设备类型：蓝牙USB适配器 传输功率：Class 1", value:"8.5"},
                    {image: "${pageContext.request.contextPath}/statics/images/xu/bluetooth2.jpg", link: "http://detail.zol.com.cn/bluetooth_adapter/index392676.shtml", str: "参考价: ",
                        price: "280", account: "惠威Q10 设备类型：蓝牙HiFi适配器 接口类型：3.5mm外接AUX", value:"8.5"},
                    {image: "${pageContext.request.contextPath}/statics/images/xu/bluetooth3.jpg", link: "http://detail.zol.com.cn/bluetooth_adapter/index392541.shtml", str: "参考价: ",
                        price: "999", account: "声擎B1 设备类型：蓝牙解码器 有效距离：30米 蓝牙版本", value:"8.5"},
                    {image: "${pageContext.request.contextPath}/statics/images/xu/bluetooth4.jpg", link: "http://detail.zol.com.cn/bluetooth_adapter/index269445.shtml", str: "参考价: ",
                        price: "29", account: " 奥视通OST-108 设备类型：蓝牙USB适配器 传输功率：Class 2", value:"8.5"},
                    {image: "${pageContext.request.contextPath}/statics/images/xu/bluetooth5.jpg", link: "http://detail.zol.com.cn/bluetooth_adapter/index362385.shtml", str: "参考价: ",
                        price: "469", account: "飞利浦AEA2000/93 设备类型：蓝牙USB适配器 接口类型：3.", value:"8.5"}
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
