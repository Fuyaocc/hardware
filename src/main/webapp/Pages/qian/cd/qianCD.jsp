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
    <title>光驱报价</title>
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
            <%@ include file="./qianCDInformation.jsp" %>
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
                    {name: "华硕"},
                    {name: "先锋"},
                ],
                prices: [
                    {name: "不限"},
                    {name: "150元以下"},
                    {name: "150-200元"},
                    {name: "200-300元"},
                    {name: "300-500元"}
                ],
                types: [
                    {name: "不限"},
                    {name: "DVD刻录机"},
                    {name: "蓝光刻录机"},
                    {name: "DVD光驱"},
                ],
                installs: [
                    {name: "不限"},
                    {name: "外置"},
                    {name: "内置"},
                ],
                contains: [
                    {name: "不限"},
                    {name: "1MB以下"},
                    {name: "2MB"},
                    {name: "3MB"}
                ],
                interfacetypes: [
                    {name: "不限"},
                    {name: "USB接口"},
                    {name: "SATA接口"},
                ],
                flag1: 0,
                flag2: 0,
                flag3: 0,
                flag4: 0,
                flag5: 0,
                flag6: 0,
                informations: [
                    {
                        image: "${pageContext.request.contextPath}/statics/images/qian/CD1.jpg",
                        link: "http://detail.zol.com.cn/dvdrw/index245954.shtml",
                        str: "参考价: ",
                        price: "287",
                        account: "华硕SDRW-08D2S-U 光驱类型:DVD刻录机 安装方式:外置  ",
                        value: 8.5
                    },
                    {
                        image: "${pageContext.request.contextPath}/statics/images/qian/CD2.jpg",
                        link: "http://detail.zol.com.cn/dvdrw/index245769.shtml",
                        str: "参考价: ",
                        price: "101",
                        account: "LG DH18NS40 光驱类型:DVD-ROM 安装方式:内置（台式机光驱）",
                        value: 8.5
                    },
                    {
                        image: "${pageContext.request.contextPath}/statics/images/qian/CD3.jpg",
                        link: "http://detail.zol.com.cn/dvdrw/index397176.shtml",
                        str: "参考价: ",
                        price: "139",
                        account: "先锋DVR-221CHV 光驱类型:DVD刻录机 安装方式:内置（台式机光驱）",
                        value: 8.5
                    },
                    {
                        image: "${pageContext.request.contextPath}/statics/images/qian/CD4.jpg",
                        link: "http://detail.zol.com.cn/dvdrw/index335790.shtml",
                        str: "参考价: ",
                        price: "220",
                        account: "三星SE-218BB 光驱类型:DVD刻录机 安装方式:外置 ",
                        value: 8.5
                    },
                    {
                        image: "${pageContext.request.contextPath}/statics/images/qian/CD5.jpg",
                        link: "http://detail.zol.com.cn/dvdrw/index204858.shtml",
                        str: "参考价: ",
                        price: "319",
                        account: "SSK SED001 光驱类型:DVD刻录机 安装方式:外置 DVD-R:8X  ",
                        value: 8.5
                    },
                    {
                        image: "${pageContext.request.contextPath}/statics/images/qian/CD6.jpg",
                        link: "http://detail.zol.com.cn/dvdrw/index349892.shtml",
                        str: "参考价: ",
                        price: "109",
                        account: "明基DW24AS 光驱类型:DVD刻录机 安装方式:内置（台式机光驱）",
                        value: 8.5
                    },
                    {
                        image: "${pageContext.request.contextPath}/statics/images/qian/CD7.jpg",
                        link: "http://detail.zol.com.cn/dvdrw/index317850.shtml",
                        str: "参考价: ",
                        price: "99",
                        account: "华硕DVD-E818A9T 光驱类型:DVD光驱 安装方式:内置（台式机光驱）",
                        value: 8.5
                    },
                    {
                        image: "${pageContext.request.contextPath}/statics/images/qian/CD8.jpg",
                        link: "http://detail.zol.com.cn/dvdrw/index397186.shtml",
                        str: "参考价: ",
                        price: "199",
                        account: "先锋DVR-XT11C 光驱类型:DVD刻录机 安装方式:外置 ",
                        value: 8.5
                    },
                    {
                        image: "${pageContext.request.contextPath}/statics/images/qian/CD9.jpg",
                        link: "http://detail.zol.com.cn/dvdrw/index196685.shtml",
                        str: "参考价: ",
                        price: "319",
                        account: "华硕SDR-08B1-U 光驱类型:DVD-ROM 安装方式:外置 ",
                        value: 8.5
                    },
                    {
                        image: "${pageContext.request.contextPath}/statics/images/qian/CD10.jpg",
                        link: "http://detail.zol.com.cn/dvdrw/index290020.shtml",
                        str: "参考价: ",
                        price: "919",
                        account: "华硕BW-12D1S-U 光驱类型:蓝光刻录机 安装方式:外置 ",
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
