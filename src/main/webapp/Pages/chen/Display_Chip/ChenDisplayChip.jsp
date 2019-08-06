<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>显示芯片报价</title>
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
            <%@ include file="./DC.jsp" %>
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
                    {name: "NVIDIA"},
                    {name: "AMDI"},
                ],
                prices: [
                    {name: "不限"},
                    {name: "450元"},
                    {name: "600元"},
                    {name: "800元"},
                ],

                flag1: 0,
                flag2: 0,

                informations: [
                    {
                        image: "https://2e.zol-img.com.cn/product/139_220x165/226/ceGNATViCBZrA.jpg",
                        link: "http://detail.zol.com.cn/vga_chip/index383321.shtml",
                        str: "参考价: ",
                        price: "459",
                        account: "NVIDIA GeForce GT 730",
                        value: 8.5
                    },
                    {
                        image: "https://2d.zol-img.com.cn/product/181_220x165/349/ceTmXXEpzKI.jpg",
                        link: "http://detail.zol.com.cn/vga_chip/index1166373.shtml",
                        str: "参考价: ",
                        price: "1899",
                        account: "AMD Radeon RX 580",
                        value: 8.5
                    },
                    {
                        image: "https://2f.zol-img.com.cn/product/177_220x165/883/ceCvq3abAv2OM.jpg",
                        link: "http://detail.zol.com.cn/vga_chip/index1157720.shtml",
                        str: "参考价: ",
                        price: "价格面议",
                        account: "NVIDIA GeForce GTX 1050Ti",
                        value: 8.5
                    },
                    {
                        image: "https://2e.zol-img.com.cn/product/185_220x165/28/cevY8Sj59eeM.jpg",
                        link: "http://detail.zol.com.cn/vga_chip/index1179720.shtml",
                        str: "参考价: ",
                        price: "价格面议",
                        account: "NVIDIA GeForce GTX 1060 3GB",
                        value: 8.5
                    },
                    {
                        image: "https://2f.zol-img.com.cn/product/188_320x240/651/ceEHxX31KWJDg.jpg",
                        link: "http://detail.zol.com.cn/vga_chip/index1205719.shtml",
                        str: "参考价: ",
                        price: "1499",
                        account: "NVIDIA GeForce GTX 1060 5GB",
                        value: 8.5
                    },
                    {
                        image: "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1545921582297&di=36c0d82bb48089f916a91b57a5f5d689&imgtype=0&src=http%3A%2F%2Fpic2.zhimg.com%2F50%2Fv2-905bef905d9453a4cfdb63e28960b2b0_hd.jpg",
                        link: "http://detail.zol.com.cn/vga_chip/index1117250.shtml",
                        str: "参考价: ",
                        price: "价格面议 我是程序员我不会坑你的",
                        account: "AMD Radeon R7 350",
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
