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
    <title>CPU报价</title>
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
            <%@ include file="./cputop.jsp" %>
        </div>
        <div class="right_bottom">
            <el-main>
                <%@ include file="./cpuImageInformation.jsp" %>
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
                reqdata: {
                    phone: ChengGlobal.currentUser.phone,
                    name: "",
                    brand: "",
                    price: "",
                    set: "",
                    suitableType: "",
                    slotType: "",
                    threadCounts: "",
                    imageUrl: "",
                    grade: "",
                    link: "",
                },
                brands: [
                    {name: "不限"},
                    {name: "Inter"},
                    {name: "AMD"},
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
                    {name: "酷睿i9"},
                    {name: "酷睿i7"},
                    {name: "酷睿i5"},
                    {name: "酷睿i3"},
                    {name: "奔腾"},
                    {name: "赛扬"},
                    {name: "凌动"},
                    {name: "Ryzen Threadripper"},
                    {name: "Ryzen 7"},
                    {name: "Ryzen 5"},
                    {name: "Ryzen 3"},
                    {name: "APU"},
                ],
                contains: [
                    {name: "不限"},
                    {name: "台式机"},
                    {name: "笔记本"},
                    {name: "手机/平板"},
                ],
                memoryTypes: [
                    {name: "不限"},
                    {name: "十六核心"},
                    {name: "十二核心"},
                    {name: "十核心"},
                ],
                MHZs: [
                    {name: "不限"},
                    {name: "Socket TR4"},
                    {name: "LGA 2066"},
                    {name: "LGA 2011-v3"},
                    {name: "LGA 1151"},
                ],
                aircoolings: [
                    {name: "不限", id: 1},
                    {name: "二十三线程", id: 2},
                    {name: "二十四线程", id: 2},
                    {name: "十六线程", id: 2},
                    {name: "十二", id: 2},
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
                        imageUrl: "${pageContext.request.contextPath}/statics/images/qian/Memory1.jpg",
                        link: "http://detail.zol.com.cn/memory/index1147009.shtml",
                        str: "参考价: ",
                        price: "459",
                        grade: 8.5,
                        brand: "Interl",
                        coreCounts : "十六核心",
                        slotType : "台式机"
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
                this.reqdata.brand = this.brands[index].name
                this.sendQuery()
            },
            activeFun2: function (index) {
                this.flag2 = index
                this.reqdata.price = this.prices[index].name
                this.sendQuery()
            },
            activeFun3: function (index) {
                this.flag3 = index
                this.reqdata.types = this.types[index].name
                this.sendQuery()
            },
            activeFun4: function (index) {
                this.flag4 = index
                this.reqdata.contains = this.contains[index].name
                this.sendQuery()
            },
            activeFun5: function (index) {
                this.flag5 = index
                this.reqdata.memoryTypes = this.memoryTypes[index].name
                this.sendQuery()
            },
            activeFun6: function (index) {
                this.flag6 = index
                this.reqdata.MHZs = this.MHZs[index].name
                this.sendQuery()
            },
            activeFun7: function (index) {
                this.flag7 = index
                this.reqdata.aircoolings = this.aircoolings[index].name
                this.sendQuery()
            },
            sendQuery: function(){
                var that = this;
                // 发送 POST 请求
                var url = ChengGlobal.baseUrl + "/cheng/cpu/select";
                axios({
                    method: "post",
                    url: url,
                    data:  this.reqdata
                }).then(function (response) {
                    console.log(response)
                    for(var i=0;i<response.data.list.length;i++)
                    {
                        response.data.list[i].grade = Number(response.data.list[i].grade)
                    }
                    that.informations = response.data.list
                }).catch(function (error) {
                    that.$message.error('服务器繁忙');
                });
            }
        },
        filters: {
            current: function(val) {
                return "￥" + val;
            },
            gradeNumber: function(val){
                return Number(val)
            },

        },
        mounted: function(){
            this.sendQuery()
        }
    })
</script>

</body>
</html>
