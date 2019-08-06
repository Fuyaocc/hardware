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
    <title>机箱报价</title>
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
            <%@ include file="./xuInternalChassis.jsp" %>
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
                    { name: "嘉航"},
                    { name: "鑫谷"},
                    { name: "aigo"},
                    { name: "酷冷至尊"},
                    { name: "海盗船"},
                    { name: "游戏悍将"},
                    { name: "昂达"}
                ],
                prices: [
                    { name: "不限"},
                    { name: "150元以下"},
                    { name: "150-200元"},
                    { name: "200-300元"},
                    { name: "300-500元"},
                    { name: "500-1000元"},
                    { name: "1000元以上"}
                ],
                type: [
                    { name: "不限"},
                    { name: "mini"},
                    { name: "全塔"},
                    { name: "中塔"},
                    { name: "开放式"},
                    { name: "HTPC机箱"},
                    { name: "游戏机箱"}
                ],
                chassis: [
                    { name: "不限"},
                    { name: "ATX"},
                    { name: "MATX"},
                    { name: "ITX"},
                    { name: "RTX"}

                ],
                style: [
                    { name: "不限"},
                    { name: "立式"},
                    { name: "卧式"},
                    { name: "立卧两式"}
                ],
                powersupply: [
                    { name: "不限"},
                    { name: "标配电源"},
                    { name: "选配电源"}
                ],
                gpulimit: [
                    { name: "不限", id: 1},
                    { name: "400mm以上", id: 2},
                    { name: "300-400mm", id: 3},
                    { name: "200-300mm", id: 4},
                    { name: "200mm以下", id: 5},
                ],
                flag1: 0,
                flag2: 0,
                flag3: 0,
                flag4: 0,
                flag5: 0,
                flag6: 0,
                flag7: 0,
                informations: [
                    {image: "${pageContext.request.contextPath}/statics/images/xu/chassis1.jpg", link: "http://detail.zol.com.cn/case/index1242447.shtml", str: "参考价: ",
                        price: "1699", account: " 鑫谷沙漠之鹰MAX 机箱类型：台式机箱（mini），游戏机箱", value:"8.5"},
                    {image: "${pageContext.request.contextPath}/statics/images/xu/chassis2.jpg", link: "http://detail.zol.com.cn/case/index382067.shtml", str: "参考价: ",
                        price: "1159", account: "海盗船780T 140mm静音风扇，360mm水冷排，开关式设计防尘网", value:"8.5"},
                    {image: "${pageContext.request.contextPath}/statics/images/xu/chassis3.jpg", link: "http://detail.zol.com.cn/case/index1233933.shtml", str: "参考价: ",
                        price: "1999", account: "Tt Level 20 GT RGB Plus 机箱类型：台式机箱（全塔）", value:"8.5"},
                    {image: "${pageContext.request.contextPath}/statics/images/xu/chassis4.jpg", link: "http://detail.zol.com.cn/case/index1167462.shtml", str: "参考价: ",
                        price: "1599", account: "安钛克CUBE雷蛇版 机箱类型：游戏机箱 机箱结构：ITX", value:"8.5"},
                    {image: "${pageContext.request.contextPath}/statics/images/xu/chassis5.jpg", link: "http://detail.zol.com.cn/case/index1163737.shtml", str: "参考价: ",
                        price: "2999", account: "九州风神QUADSTELLAR 机箱类型：游戏机箱 机箱结构：", value:"8.5"}
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
