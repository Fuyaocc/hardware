<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>摄像头报价</title>
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
            <%@ include file="./WC.jsp" %>
        </div>
        <div class="right_bottom">
            <el-main>
                <%@ include file="./WangImageInformation.jsp" %>
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
                    {name: "罗技"},
                    {name: "中兴"},
                    {name: "纽曼"},
                ],
                prices: [
                    {name: "不限"},
                    {name: "500元以下"},
                    {name: "500元"},
                    {name: "600元"},
                    {name: "700元"},
                    {name: "800元以上"},
                ],
                types: [
                    {name: "不限"},
                    {name: "无线摄像头"},
                    {name: "高清摄像头"},
                ],
                pixel: [
                    {name: "不限"},
                    {name: "800万"},
                    {name: "500万"},
                    {name: "400万"},
                    {name: "130万"},
                ],
                flag1: 0,
                flag2: 0,
                flag3: 0,
                flag4: 0,
                informations: [
                    {
                        image: "https://2c.zol-img.com.cn/product/80_320x240/798/cewGyZOWXWA1.jpg",
                        link: "http://detail.zol.com.cn/webcams/index311789.shtml",
                        str: "参考价: ",
                        price: "736",
                        account: "罗技Pro C920",
                        value: 8.5
                    },
                    {
                        image: "https://2c.zol-img.com.cn/product/70_220x165/624/ce0TKfq0TLrwU.jpg",
                        link: "http://detail.zol.com.cn/webcams/index292403.shtml",
                        str: "参考价: ",
                        price: "204",
                        account: "微软HD-3000高清摄像头",
                        value: 8.5
                    },
                    {
                        image: "https://2c.zol-img.com.cn/product/146_220x165/858/ce5jB2oAU9MB.jpg",
                        link: "http://detail.zol.com.cn/webcams/index393982.shtml",
                        str: "参考价: ",
                        price: "469",
                        account: "中兴小兴看看C520",
                        value: 8.5
                    },
                    {
                        image: "https://2c.zol-img.com.cn/product/48_220x165/472/ceSfIlNfOSAFw.jpg",
                        link: "http://detail.zol.com.cn/webcams/index233816.shtml",
                        str: "参考价: ",
                        price: "174",
                        account: "蓝色妖姬M2200暮色",
                        value: 8.5
                    },
                    {
                        image: "https://2b.zol-img.com.cn/product/173_220x165/441/ceR6opzTDwhp2.jpg",
                        link: "http://detail.zol.com.cn/webcams/index1146125.shtml",
                        str: "参考价: ",
                        price: "229",
                        account: "联想看家宝Snowman",
                        value: 8.5
                    },
                    {
                        image: "https://2b.zol-img.com.cn/product/154_220x165/903/ce3iuTeOzburY.jpg",
                        link: "http://detail.zol.com.cn/webcams/index402763.shtml",
                        str: "参考价: ",
                        price: "599",
                        account: "Wulian 随便看720p摄像头",
                        value: 8.5
                    },
                    {
                        image: "https://2a.zol-img.com.cn/product/148_220x165/458/ceg3WmoIKl64I.jpg",
                        link: "http://detail.zol.com.cn/webcams/index396895.shtml",
                        str: "参考价: ",
                        price: "699",
                        account: "罗技C930e",
                        value: 8.5
                    },
                    {
                        image: "https://2a.zol-img.com.cn/product/121_220x165/56/ceNaBEOJIlVqY.jpg",
                        link: "http://detail.zol.com.cn/webcams/index364429.shtml",
                        str: "参考价: ",
                        price: "1599",
                        account: "罗技BCC950",
                        value: 8.5
                    },
                    {
                        image: "https://2c.zol-img.com.cn/product/52_220x165/526/ceYkdI9PkQG.jpg",
                        link: "http://detail.zol.com.cn/webcams/index256972.shtml",
                        str: "参考价: ",
                        price: "147",
                        account: "罗技C270",
                        value: 8.5
                    },
                    {
                        image: "https://2e.zol-img.com.cn/product/181_220x165/232/ceCwWTRBkHgHk.jpg",
                        link: "http://detail.zol.com.cn/webcams/index1166726.shtml",
                        str: "参考价: ",
                        price: "599",
                        account: "罗技C925e",
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
