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
    <title>内存报价</title>
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
<div class = "container" id = "app">
    <div class = "left"> <%@ include file="/Pages/qian/qianBrandClassfied.jsp" %></div>
    <div class = "right_top"> <%@ include file="/Pages/qian/qianInternalMemory.jsp" %></div>
    <div class = "right_bottom"><el-main><%@ include file="/Pages/qian/qianImageInformation.jsp" %></el-main></div>
    <el-footer><%@ include file="/Pages/bottom.jsp" %></el-footer>
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
                        name:  '硬盘', link:'Pages/chen/Disk/ChenDisk.jsp'
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
                        name:  '声卡', link:'Pages/chen/SoundCard/ChenSoundCard.jsp'
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
                        name:   '音箱', link:'/Pages/cheng/Soundbox/chengSoundbox.jsp'
                    },
                    {
                        name:  '鼠标', link:'#'
                    },
                    {
                        name:   '键盘', link:'Pages/chen/Keyboard/ChenKeyboard.jsp'
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
                        name:   '摄像头', link:'/Pages/wang/Camera/WangCamera.jsp'
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
                        name:   '显示芯片', link:'Pages/chen/Display_Chip/ChenDisplayChip.jsp'
                    },

                ],
                brands: [
                    { name: "不限"},
                    { name: "英睿达"},
                ],
                prices: [
                    { name: "不限"},
                    { name: "150元以下"},
                    { name: "150-200元"},
                    { name: "200-300元"},
                    { name: "300-500元"}
                ],
                types: [
                    { name: "不限"},
                    { name: "台式机"},
                    { name: "笔记本"}
                ],
                contains: [
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
                memoryTypes: [
                    { name: "不限"},
                    { name: "DDR4"},
                    { name: "DDR3"},
                    { name: "DDR2"}
                ],
                MHZs: [
                    { name: "不限"},
                    { name: "1333MHz"},
                    { name: "1600MHz"},
                    { name: "1866MHz"},
                    { name: "2133MHz"},
                    { name: "2400MHz"},
                    { name: "2666MHz"},
                    { name: "2800MHz"},
                ],
                aircoolings: [
                    { name: "不限", id: 1},
                    { name: "带散热片", id: 2},
                ],
                flag1: 0,
                flag2: 0,
                flag3: 0,
                flag4: 0,
                flag5: 0,
                flag6: 0,
                flag7: 0,
                informations: [
                    {image: "${pageContext.request.contextPath}/statics/images/qian/Memory1.jpg", link: "http://detail.zol.com.cn/memory/index1147009.shtml", str: "参考价: ",
                        price: "459", account: "影驰GAMER 8GB DDR4 2400 适用类型:台式机 容量描述:单条（8GB） 内", value:"8.5"},
                    {image: "${pageContext.request.contextPath}/statics/images/qian/Memory2.jpg", link: "http://detail.zol.com.cn/memory/index1147009.shtml", str: "参考价: ",
                        price: "569", account: "影驰GAMER 8GB DDR4 2400 适用类型:台式机 容量描述:单条（8GB） 内", value:"8.5"},
                    {image: "${pageContext.request.contextPath}/statics/images/qian/Memory3.jpg", link: "http://detail.zol.com.cn/memory/index1115558.shtml", str: "参考价: ",
                        price: "469", account: "影驰GAMER 8GB DDR4 2400 适用类型:台式机 容量描述:单条（8GB） 内", value:"8.5"},
                    {image: "${pageContext.request.contextPath}/statics/images/qian/Memory4.jpg", link: "http://detail.zol.com.cn/memory/index1231509.shtml", str: "参考价: ",
                        price: "639", account: "超频三超神Super God 8GB DDR4 3200 RGB 适用类型:台式机 容量描述:单", value:"8.5"},
                    {image: "${pageContext.request.contextPath}/statics/images/qian/Memory5.jpg", link: "http://detail.zol.com.cn/memory/index327538.shtml", str: "参考价: ",
                        price: "199", account: "金士顿4GB DDR3 1600（KVR16N11/4） 4GB/单条（4GB）/1600MHz主频", value:"8.5"},
                    {image: "${pageContext.request.contextPath}/statics/images/qian/Memory6.jpg", link: "http://detail.zol.com.cn/memory/index1165516.shtml", str: "参考价: ",
                        price: "459", account: "海盗船复仇者LPX 8GB DDR4 3000（CMK8GX4M2B3000C15） 适用类", value:"8.5"},
                    {image: "${pageContext.request.contextPath}/statics/images/qian/Memory7.jpg", link: "http://detail.zol.com.cn/memory/index328918.shtml", str: "参考价: ",
                        price: "439", account: "金士顿8GB DDR3 1600（KVR16N11/8） 8GB/单条（8GB）/1600MHz主频", value:"8.5"},
                    {image: "${pageContext.request.contextPath}/statics/images/qian/Memory8.jpg", link: "http://detail.zol.com.cn/memory/index1149796.shtml", str: "参考价: ",
                        price: "459", account: "金士顿骇客神条FURY 16GB DDR4 2400（HX424C15FB/16） 适用类型:台", value:"8.5"},
                    {image: "${pageContext.request.contextPath}/statics/images/qian/Memory9.jpg", link: "http://detail.zol.com.cn/memory/index1185159.shtml", str: "参考价: ",
                        price: "499", account: "影驰GAMER 极光RGB 8GB DDR4 2400 适用类型:台式机 容量描述:单条（8", value:"8.5"},
                    {image: "${pageContext.request.contextPath}/statics/images/qian/Memory10.jpg", link: "http://detail.zol.com.cn/memory/index1164617.shtml", str: "参考价: ",
                        price: "2699", account: "芝奇Trident Z RGB 32GB DDR4 3200（F4-3200C16Q-32GTZR）", value:"8.5"},
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
