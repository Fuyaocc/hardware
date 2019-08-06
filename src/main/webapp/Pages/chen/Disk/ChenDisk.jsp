<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>硬盘报价</title>
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
            <%@ include file="./CD.jsp" %>
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
                    {name: "西部数据"},
                    {name: "东芝"},
                    {name: "HGST"},
                ],
                prices: [
                    {name: "不限"},
                    {name: "400元以下"},
                    {name: "600元"},
                    {name: "800元"},
                    {name: "800以上"}
                ],
                types: [
                    {name: "不限"},
                    {name: "台式机"},
                    {name: "笔记本"}
                ],
                contains: [
                    {name: "不限"},
                    {name: "3TB"},
                    {name: "2TB"},
                    {name: "1TB"},
                    {name: "512GB"},
                    {name: "128GB"},
                ],
                memoryTypes: [
                    {name: "不限"},
                    {name: "128MB"},
                    {name: "512MB"},
                    {name: "64MB"}
                ],
                MHZs: [
                    {name: "不限"},
                    {name: "7200"},
                    {name: "5400"},

                ],
                aircoolings: [
                    {name: "不限", id: 1},
                    {name: "SATA3.0", id: 2},
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
                        image: "https://2f.zol-img.com.cn/product/109_220x165/197/cegporVtoCK.jpg",
                        link: "http://detail.zol.com.cn/hard_drives/index305156.shtml",
                        str: "参考价: ",
                        price: "597",
                        account: "希捷Barracuda 1TB 7200转 64MB 单碟（ST1000DM003）",
                        value: 8.5
                    },
                    {
                        image: "https://2f.zol-img.com.cn/product/179_220x165/315/cehtFC1qwwkE.jpg",
                        link: "http://detail.zol.com.cn/hard_drives/index330566.shtml",
                        str: "参考价: ",
                        price: "299",
                        account: "西部数据1TB 7200转 64MB SATA3 蓝盘（WD10EZEX）",
                        value: 8.5
                    },
                    {
                        image: "https://2e.zol-img.com.cn/product/177_220x165/724/ceROp8u8Zsx8.jpg",
                        link: "http://detail.zol.com.cn/hard_drives/index1158643.shtml",
                        str: "参考价: ",
                        price: "549",
                        account: "希捷Barracuda 3TB 7200转 64MB SATA3（ST3000DM008）",
                        value: 8.5
                    },
                    {
                        image: "https://2c.zol-img.com.cn/product/108_220x165/96/ceE5L2Dt7zrNE.jpg",
                        link: "http://detail.zol.com.cn/hard_drives/index348246.shtml",
                        str: "参考价: ",
                        price: "279",
                        account: "东芝1TB 7200转 32MB（DT01ACA100）",
                        value: 8.5
                    },
                    {
                        image: "https://2d.zol-img.com.cn/product/112_220x165/895/ceCvMIElc30o.jpg",
                        link: "http://detail.zol.com.cn/hard_drives/index353086.shtml",
                        str: "参考价: ",
                        price: "369",
                        account: "HGST 7K1000 1TB 7200转 32MB SATA3（HTS721010A9E630）",
                        value: 8.5
                    },
                    {
                        image: "https://2c.zol-img.com.cn/product/108_220x165/182/ceKJiRe8KbvZE.jpg",
                        link: "http://detail.zol.com.cn/hard_drives/index300593.shtml",
                        str: "参考价: ",
                        price: "459",
                        account: "希捷Barracuda 500GB 7200转 16MB SATA3（ST500DM002）",
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
