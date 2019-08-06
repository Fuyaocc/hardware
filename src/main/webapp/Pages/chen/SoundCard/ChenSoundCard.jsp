<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>声卡报价</title>
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
            <%@ include file="./CSC.jsp" %>
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
                    {name: "创新"},
                    {name: "华硕"},
                    {name: "ZOOM"},
                    {name: "声擎"},
                ],
                prices: [
                    {name: "不限"},
                    {name: "300元以下"},
                    {name: "500元"},
                    {name: "700元"},
                    {name: "900元"}
                ],
                types: [
                    {name: "不限"},
                    {name: "5.1声道"},
                    {name: "7.1声道"},
                    {name: "双声道"},
                ],
                contains: [
                    {name: "不限"},
                    {name: "外置"},
                    {name: "内置"},
  
                ],
                memoryTypes: [
                    {name: "不限"},
                    {name: "PCI"},
                    {name: "PCI-E"},
                    {name: "USB"}
                ],
                MHZs: [
                    {name: "不限"},
                    {name: "家用"},
                    {name: "专业"},

                ],

                flag1: 0,
                flag2: 0,
                flag3: 0,
                flag4: 0,
                flag5: 0,
                flag6: 0,

                informations: [
                    {
                        image: "https://2f.zol-img.com.cn/product/60_220x165/995/ceSz3SwX6wOMw.jpg",
                        link: "http://detail.zol.com.cn/sound_card/index273767.shtml",
                        str: "参考价: ",
                        price: "525",
                        account: "创新Sound Blaster X-Fi Surround 5.1 Pro",
                        value: 8.5
                    },
                    {
                        image: "${pageContext.request.contextPath}/statics/images/qian/Memory2.jpg",
                        link: "http://detail.zol.com.cn/sound_card/index338495.shtml",
                        str: "参考价: ",
                        price: "379",
                        account: "华硕Xonar D-Kara（K歌之王）",
                        value: 8.5
                    },
                    {
                        image: "https://2d.zol-img.com.cn/product/166_220x165/127/cewl2Pb6QRQ.jpg",
                        link: "http://detail.zol.com.cn/sound_card/index1104314.shtml",
                        str: "参考价: ",
                        price: "2669",
                        account: "创新Sound Blaster X7",
                        value: 8.5
                    },
                    {
                        image: "https://timgsa.baidu.com/timg?image&quality=80&size=b10000_10000&sec=1545911801&di=8a4202823204b6efbf4bf4b83320a40e&src=http://igeekbar.com/igeekbar/networks/uploadimgthumb/c60ecd24-b1f8-40fb-96ec-b93489feb942.png",
                        link: "http://detail.zol.com.cn/sound_card/index1173808.shtml",
                        str: "参考价: ",
                        price: "499",
                        account: "屁颠虫S300",
                        value: 8.5
                    },
                    {
                        image: "https://timgsa.baidu.com/timg?image&quality=80&size=b10000_10000&sec=1545913135&di=1a82ecd30a131cbdee888a0888b16df7&src=http://img.smzy.com/imges/2017/0601/20170601090126542.jpg",
                        link: "http://detail.zol.com.cn/sound_card/index378941.shtml",
                        str: "参考价: ",
                        price: "429",
                        account: "创新Sound Blaster Audigy 4 II",
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
