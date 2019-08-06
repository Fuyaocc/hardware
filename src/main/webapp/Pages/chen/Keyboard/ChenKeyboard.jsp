<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>键盘报价</title>
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
            <%@ include file="./CKB.jsp" %>
        </div>
        <div class="right_bottom">
            <el-main>
                <%@ include file="./ChenImageInformation.jsp" %>
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
                    {name: "双飞燕"},
                    {name: "罗技"},
                    {name: "雷神"},
                    {name: "海盗船"},
                ],
                prices: [
                    {name: "不限"},
                    {name: "150元"},
                    {name: "500元"},
                    {name: "1000元"},
                    {name: "1500元"}
                ],
                types: [
                    {name: "不限"},
                    {name: "机械键盘"},
                    {name: "多功能键盘"},
                    {name: "办公键盘"},
                ],
                contains: [
                    {name: "不限"},
                    {name: "有线"},
                    {name: "无线"},
                    {name: "蓝牙"},
                   
                ],
                memoryTypes: [
                    {name: "不限"},
                    {name: "USB接口"},
                    {name: "PS/2接口"},

                ],
                MHZs: [
                    {name: "不限"},
                    {name: "青轴"},
                    {name: "茶轴"},
                    {name: "银轴"},
                    {name: "白轴"},
                    {name: "黑轴"},
                    {name: "红轴"},
                ],
                aircoolings: [
                    {name: "多色背光", id: 1},
                    {name: "单色背光", id: 2},
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
                        image: "https://timgsa.baidu.com/timg?image&quality=80&size=b10000_10000&sec=1545911683&di=fd6235c869038a13e4ddc23b10be47f5&src=http://5b0988e595225.cdn.sohucs.com/images/20171107/2a227ba60ef7440f9f8dbe3fc161ac02.jpeg",
                        link: "http://detail.zol.com.cn/ergonomic_keyboard/index1224427.shtml",
                        str: "参考价: ",
                        price: "1459",
                        account: "海盗船K70 RGB MK.2游戏机械键盘",
                        value: 8.5
                    },
                    {
                        image: "https://timgsa.baidu.com/timg?image&quality=80&size=b10000_10000&sec=1545911683&di=0755ce1f26e535b84754ead7ae772d83&src=http://5b0988e595225.cdn.sohucs.com/q_70,c_zoom,w_640/images/20180729/28af977aeeb44e5ca9048a8dc1ce5938.jpeg",
                        link: "http://detail.zol.com.cn/ergonomic_keyboard/index1173509.shtml",
                        str: "参考价: ",
                        price: "1569",
                        account: "Alienware Advanced Gaming AW568机械键盘",
                        value: 8.5
                    },
                    {
                        image: "https://timgsa.baidu.com/timg?image&quality=80&size=b10000_10000&sec=1545911801&di=6e40634ba38bacc8456c1a919ef9cc48&src=http://img01.sogoucdn.com/app/a/200654/153301483512839.jpeg",
                        link: "http://detail.zol.com.cn/ergonomic_keyboard/index1173514.shtml",
                        str: "参考价: ",
                        price: "1299",
                        account: "Alienware Pro Gaming AW768机械键盘",
                        value: 8.5
                    },
                    {
                        image: "https://timgsa.baidu.com/timg?image&quality=80&size=b10000_10000&sec=1545911801&di=9885984634c601163f5ac52696565584&src=http://img.mp.itc.cn/upload/20170408/477019d7bc0c423db562f760b3eb5196_th.jpeg",
                        link: "http://detail.zol.com.cn/keyboard/index395573.shtml",
                        str: "参考价: ",
                        price: "179",
                        account: "达尔优机械合金版机械键盘（108键）",
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
