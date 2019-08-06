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
    <title>U盘报价</title>
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
            <%@ include file="./wangUDiskInformation.jsp" %>
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
                brands: [
                    {name: "不限"},
                    {name: "闪迪"},
                    {name: "东芝"},
                    {name: "三星"}
                ],
                prices: [
                    {name: "不限"},
                    {name: "50元以下"},
                    {name: "50-80元"},
                    {name: "80-100元"},
                    {name: "100-300元"}
                ],
                types: [
                    {name: "不限"},
                    {name: "普通U盘"},
                    {name: "创意U盘"}
                ],
                contains: [
                    {name: "不限"},
                    {name: "128GB"},
                    {name: "64GB"},
                    {name: "16GB"}
                ],
                interfacetypes: [
                    {name: "不限"},
                    {name: "USB3.1"},
                    {name: "USB3.0"},
                    {name: "USB2.0"}
                ],
                specials: [
                    {name: "不限"},
                    {name: "金属"},
                    {name: "防水防震"},
                    {name: "备份U盘"}
                ],
                colors: [
                    {name: "不限"},
                    {name: "白色"},
                    {name: "黑色"},
                ],
                flag1: 0,
                flag2: 0,
                flag3: 0,
                flag4: 0,
                flag5: 0,
                flag6: 0,
                flag7: 0,
                informations: [
                    {
                        image: "${pageContext.request.contextPath}/statics/images/qian/Mouse1.jpg",
                        link: "http://detail.zol.com.cn/Ergonomics_mouse/index1222008.shtml",
                        str: "参考价: ",
                        price: "399",
                        account: "雷柏VT950电竞游戏鼠标 16000DPI,七档可调，PMW3389引擎",
                        value: 8.5
                    },
                    {
                        image: "${pageContext.request.contextPath}/statics/images/qian/Mouse2.jpg",
                        link: "http://detail.zol.com.cn/Ergonomics_mouse/index1173305.shtml",
                        str: "参考价: ",
                        price: "859",
                        account: "罗技G903无线鼠标 支持无线充电，拥有最新LIGHTSPEED技术",
                        value: 8.5
                    },
                    {
                        image: "${pageContext.request.contextPath}/statics/images/qian/Mouse3.jpg",
                        link: "http://detail.zol.com.cn/Ergonomics_mouse/index1245463.shtml",
                        str: "参考价: ",
                        price: "399",
                        account: "达尔优EM945游戏有线鼠标 适用类型:竞技游戏 鼠标大小:普通鼠 ",
                        value: 8.5
                    },
                    {
                        image: "${pageContext.request.contextPath}/statics/images/qian/Mouse4.jpg",
                        link: "http://detail.zol.com.cn/Ergonomics_mouse/index1206561.shtml",
                        str: "参考价: ",
                        price: "185",
                        account: "血手幽灵J95双枪侠RGB彩漫游戏鼠标 人体工学右手设计",
                        value: 8.5
                    },
                    {
                        image: "${pageContext.request.contextPath}/statics/images/qian/Mouse5.jpg",
                        link: "http://detail.zol.com.cn/Ergonomics_mouse/index376861.shtml",
                        str: "参考价: ",
                        price: "359",
                        account: "罗技G502游戏鼠标 11个可编程按键，Micro Gear双模式滚轮",
                        value: 8.5
                    },
                    {
                        image: "${pageContext.request.contextPath}/statics/images/qian/Mouse6.jpg",
                        link: "detail.zol.com.cn/Ergonomics_mouse/index1223993.shtml",
                        str: "参考价: ",
                        price: "499",
                        account: "Razer 曼巴眼镜蛇精英版有线电竞游戏鼠标 16000DPI，右手设计",
                        value: 8.5
                    },
                    {
                        image: "${pageContext.request.contextPath}/statics/images/qian/Mouse7.jpg",
                        link: "http://detail.zol.com.cn/Ergonomics_mouse/index346240.shtml",
                        str: "参考价: ",
                        price: "150",
                        account: "血手幽灵V8M游戏鼠标 多核左三枪，微精校准技术，3种点击模式",
                        value: 8.5
                    },
                    {
                        image: "${pageContext.request.contextPath}/statics/images/qian/Mouse8.jpg",
                        link: "http://detail.zol.com.cn/Ergonomics_mouse/index1173521.shtml",
                        str: "参考价: ",
                        price: "699",
                        account: "Alienware Elite AW958精英版游戏鼠标 支持surface calibration",
                        value: 8.5
                    },
                    {
                        image: "${pageContext.request.contextPath}/statics/images/qian/Mouse9.jpg",
                        link: "http://detail.zol.com.cn/Ergonomics_mouse/index1170081.shtml",
                        str: "参考价: ",
                        price: "399",
                        account: "海盗船GLAIVE RGB游戏鼠标 可更换握边设计，人体工程学外形",
                        value: 8.5
                    },
                    {
                        image: "${pageContext.request.contextPath}/statics/images/qian/Mouse10.jpg",
                        link: "http://detail.zol.com.cn/Ergonomics_mouse/index1228121.shtml",
                        str: "参考价: ",
                        price: "129",
                        account: "达尔优LM128B双模无线鼠标 三段DPI调节，",
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
