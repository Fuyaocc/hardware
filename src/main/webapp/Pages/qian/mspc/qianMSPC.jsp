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
    <title>多串口卡报价</title>
    <%@ include file="/Pages/template/cdnmain.jsp" %>
</head>
<body>
<style>
    .left {
        width: 25%;
        float: left;
        margin-right: 5%;
    }

    .right_top {
        width: auto;
        padding-left: 1%;
    }

    .right_bottom {
        width: auto;
        margin-left: 26%;
        padding-top: 1%;
    }

    .panel-heading {
        height: 30px;
        margin-left: 29%;
        background-color: whitesmoke;
    }

    .listII {
        padding-top: 25px;
        height: auto;
        width: 25%;
        float: left;
        color: #000000;
        font-size: 10pt;
    }

    .listIM {
        padding-left: 10px;
        height: 20px;
        float: left;
        color: #000000;
        font-size: 10pt;
    }

    .listBC {
        width: 50%;
        height: 30px;
        float: left;
        color: #000000;
    }

    .bar {
        background-color: whitesmoke;
        margin-left: 30px;
    }

    .active_bar {
        padding-left: 10px;
    }

    .listII ul li {
        list-style-type: none;
    }

    .title {
        float: left;
        font-size: 8pt;
    }

    .left a:hover {
        background-color: tomato;
        color: #FFFFFF;
    }

    .right_bottom a:hover {
        background-color: dodgerblue;
        color: #000000;
    }

    .left a {
        text-decoration: none;
        color: black;
    }

    .right_top a {
        text-decoration: none;
        color: black;
        cursor: pointer;
    }

    .right_bottom a {
        text-decoration: none;
        color: black;
    }

    .active {
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
            <%@ include file="qianMSPCInformation.jsp" %>
        </div>
        <div class="right_bottom">
            <el-main>
                <%@ include file="./qianImageInformation.jsp" %>
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
                    {name: "不限"},
                    {name: "MOXA"}
                ],
                prices: [
                    {name: "不限"},
                    {name: "1000元以下"},
                    {name: "1000元以上"}
                ],
                flag1: 0,
                flag2: 0,
                informations: [
                    {
                        image: "${pageContext.request.contextPath}/statics/images/qian/MSPC1.jpg",
                        link: "http://detail.zol.com.cn/duochuankouka/index114050.shtml",
                        str: "参考价: ",
                        price: "679",
                        account: "MOXA CP-168U 总线接口:PCI 端口数目:8 端口速度（Kbps）:230.4",
                        value: 8.5
                    },
                    {
                        image: "${pageContext.request.contextPath}/statics/images/qian/MSPC2.jpg",
                        link: "http://detail.zol.com.cn/duochuankouka/index114083.shtml",
                        str: "参考价: ",
                        price: "499",
                        account: "MOXA CP-104UL 总线接口:PCI 端口数目:4 端口速度（Kbps）:230.4",
                        value: 8.5
                    },
                    {
                        image: "${pageContext.request.contextPath}/statics/images/qian/MSPC3.jpg",
                        link: "http://detail.zol.com.cn/duochuankouka/index114111.shtml",
                        str: "参考价: ",
                        price: "2987",
                        account: "MOXA CP-118U(8串口RS-232/422/485) 总线接口:PCI 端口数目:8 ",
                        value: 8.5
                    },
                    {
                        image: "${pageContext.request.contextPath}/statics/images/qian/MSPC4.jpg",
                        link: "http://detail.zol.com.cn/duochuankouka/index267718.shtml",
                        str: "参考价: ",
                        price: "7416",
                        account: "MOXA CP-118U-I(8串口RS-232/422/485) 总线接口:PCI 端口数目:8 ",
                        value: 8.5
                    },
                    {
                        image: "${pageContext.request.contextPath}/statics/images/qian/MSPC5.jpg",
                        link: "http://detail.zol.com.cn/duochuankouka/index213542.shtml",
                        str: "参考价: ",
                        price: "1493",
                        account: "MOXA CP-104EL 总线接口:PCI Express*1 端口数目:4 ",
                        value: 8.5
                    },
                    {
                        image: "${pageContext.request.contextPath}/statics/images/qian/MSPC6.jpg",
                        link: "http://detail.zol.com.cn/duochuankouka/index213545.shtml",
                        str: "参考价: ",
                        price: "1854",
                        account: "MOXA CP-168EL 总线接口:PCI Express*1 端口数目:8",
                        value: 8.5
                    },
                    {
                        image: "${pageContext.request.contextPath}/statics/images/qian/MSPC7.jpg",
                        link: "http://detail.zol.com.cn/duochuankouka/index213547.shtml",
                        str: "参考价: ",
                        price: "1588",
                        account: "MOXA CP-132EL 总线接口:PCI Express*1 端口数目:2",
                        value: 8.5
                    },
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
            }
        },
        filters: {
            current: function (val) {
                return "￥" + val;
            },
        }
    })
</script>

</body>
</html>
