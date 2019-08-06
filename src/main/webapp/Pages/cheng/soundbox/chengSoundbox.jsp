<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>音箱报价</title>
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
            <%@ include file="/Pages/cheng/soundbox/csb.jsp" %>
        </div>
        <div class="right_bottom">
            <el-main>
                <%@ include file="/Pages/cheng/soundbox/chengImageInformation.jsp" %>
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
                    {name: "惠威"},
                    {name: "华为"},
                    {name: "罗技"},
                    {name: "漫步者"},
                ],
                prices: [
                    {name: "不限"},
                    {name: "150元以下"},
                    {name: "150-200元"},
                    {name: "200-300元"},
                    {name: "300-500元"},
                ],
                types: [
                    {name: "不限"},
                    {name: "电脑音箱"},
                    {name: "笔记本音箱"},
                    {name: "HiFi音箱"},
                    {name: "户外音箱"},
                ],
                system: [
                    {name: "不限"},
                    {name: "单声道"},
                    {name: "2.0声道"},
                    {name: "2.1声道"},
                    {name: "5.1声道"},
                ],
                textture: [
                    {name: "不限"},
                    {name: "木质"},
                    {name: "金属"},
                    {name: "塑料"},
                ],
                specialty: [
                    {name: "不限"},
                    {name: "蓝牙"},
                    {name: "U盘直读"},
                    {name: "读卡器"},
                    {name: "FM收音"},
                    {name: "闹钟/时钟"},
                ],
                character: [
                    {name: "不限", id: 1},
                    {name: "触控", id: 2},
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
                        image: "https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=534096082,2850035316&fm=27&gp=0.jpg",
                        link: "http://detail.zol.com.cn/speaker/index1217885.shtml",
                        str: "参考价: ",
                        price: "2999",
                        account: "惠威M80W",
                        value: 8.5
                    },
                    {
                        image: "https://timgsa.baidu.com/timg?image&quality=80&size=b10000_10000&sec=1545913135&di=de82800416196bd166944c5060e5aba6&src=http://d.ifengimg.com/w600/p0.ifengimg.com/pmop/2018/1019/ED53084A89D79C5C72AC7936112B3EA0D7F29ECD_size116_w640_h586.jpeg",
                        link: "http://detail.zol.com.cn/speaker/index1243156.shtml",
                        str: "参考价: ",
                        price: "1999",
                        account: "惠威D1090",
                        value: 8.5
                    },
                    {
                        image: "https://timgsa.baidu.com/timg?image&quality=80&size=b10000_10000&sec=1545913135&di=3e6f45f95223b6c742acf87dc4c79345&src=http://5b0988e595225.cdn.sohucs.com/q_70,c_zoom,w_640/images/20180710/50718e7360e545b6932442ddad75c492.jpeg",
                        link: "http://detail.zol.com.cn/speaker/index1224484.shtml",
                        str: "参考价: ",
                        price: "3980",
                        account: "SONOS Beam",
                        value: 8.5
                    },
                    {
                        image: "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1545928052497&di=2bfe31b072e23f1ff796b76d51e6e9fb&imgtype=0&src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fimages%2F20171018%2Fbdce17faac0b49f5ad347d7fec027295.jpg",
                        link: "http://detail.zol.com.cn/speaker/index1209472.shtml",
                        str: "参考价: ",
                        price: "2999",
                        account: "惠威M300",
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
