<%--
  Created by IntelliJ IDEA.
  User: lennon
  Date: 2018/12/22
  Time: 3:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>电子产品报价</title>
    <%@ include file="/Pages/template/cdnmain.jsp" %>

</head>
<body>
<%@ include file="/Pages/top.jsp" %>
<style>

    .nav-tabs .nav-link:focus, .nav-tabs .nav-link.active.show {
        color: black;
        background-color: white;
        border-color: #e9ecef #e9ecef #dee2e6;
        border-right-color: white;
        border-radius: unset;
    }

    .nav-tabs .nav-link:focus, .nav-tabs .nav-link {
        color: #dee2e6;
        background-color: black;
        border-color: #e9ecef #e9ecef #dee2e6;
        border-right-color: white;
        border-radius: unset;
    }

    .breadcrumb {
        display: -ms-flexbox;
        display: flex;
        -ms-flex-wrap: wrap;
        flex-wrap: wrap;
        padding: 0px 0rem;
        list-style: none;
        border-radius: .25rem;
        margin-bottom: 0;
        background-color: inherit;
    }

    .breadcrumb-item :hover {
        color: red;
    }

    .show_red :hover{
        color: red;
    }

    a:hover {
        color: red;
        text-decoration: underline;
    }

    a.cheng_index_head_bar{
        color: black;
    }
    a.cheng_index_head_bar:hover{
        color: red;
    }

     a.show_red {
        color: black;
    }

     a.show_red:hover{
        color: red;
        text-decoration: underline;
    }

    .cheng_item_float {
        margin: 1% 2%;
        width: auto;
        float: left;
        height: auto;
    }

</style>
<div class="container">
    <!--假装模拟广告-->
    <img src="statics/images/ad.png" style="width: 100%;height: auto"/>
    <!--搜索框单做-->
    <div>

    </div>
    <!--主页的内容-->
    <div id="app">
        <!--布局容器，elemnt-ui vue2.0为基础-->
        <el-container id="mianindexsidebar">
            <el-aside width="300px">
                <!-- Nav tabs -->
                <ul class="nav nav-tabs flex-column" role="tablist">
                    <li class="nav-item">
                        <div style="width: auto;height: 42px">
                            <el-row style="background-color: blue">
                                <el-col :span="12" style="padding: 7px;text-align: center; color: white">产品分类</el-col>
                                <el-col :span="12" style="padding: 7px;text-align: center; color: white">拼音索引</el-col>
                            </el-row>

                        </div>
                    </li>
                    <li class="nav-item" style="margin-top:0px">
                        <a data-toggle="tab" class="nav-link" href="#hardware">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><object><a href="">装机硬件</a></object></li>
                                <li class="breadcrumb-item"><object><a href="">硬件外设</a></object></li>
                                <li class="breadcrumb-item"><object><a href="">模拟攒机</a></object></li>
                            </ol>
                        </a>
                    </li>
                    <li class="nav-item" v-for="item in chengsidenavbars">
                        <a data-toggle="tab" class="nav-link" href="#adhome">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><object><a href="">{{ item.level01 }}</a></object></li>
                                <li class="breadcrumb-item"><object><a href="">{{ item.level02 }}</a></object></li>
                                <li class="breadcrumb-item"><object><a href="">{{ item.level03}}</a></object></li>
                            </ol>
                        </a>
                    </li>
                </ul>
            </el-aside>
            <el-container>
                <el-header style="height: 42px;">
                    <ul class="nav">
                        <li class="nav-item" v-for="item in navbars">
                            <a class="nav-link cheng_index_head_bar" href="#">{{ item.name }}</a>
                        </li>
                    </ul>
                    <hr/>
                </el-header>

                <el-main>
                    <el-row>
                        <el-col :span="18">
                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div id="hardware" class="container tab-pane fade"><br>
                                    <div v-for="value in tables" :key="value.index">
                                        <el-container>
                                            <el-aside width="100px" style="padding: 1% 2%;">
                                                <a :href="value.link" class="show_red" target="_blank">{{ value.name }}</a>
                                            </el-aside>
                                            <el-main style="padding: 0px">
                                                <div v-for="item in value.dstincData" :key="item.index" class="cheng_item_float">
                                                    <a :href="item.link" class="show_red" target="_blank">{{ item.name }}</a>
                                                </div>
                                            </el-main>
                                        </el-container>
                                        <hr/>
                                    </div>
                                </div>
                                <div id="adhome" class="container tab-pane active"><br>
                                    <div class="block">
                                        <el-carousel height="200px">
                                            <el-carousel-item v-for="item in upimages" :key="item.index">
                                                <img :src="item.url" style="max-height: 200px;width: 100%;">
                                            </el-carousel-item>
                                        </el-carousel>
                                    </div>
                                    <div class="block">
                                        <el-carousel trigger="click" height="150px">
                                            <el-carousel-item v-for="item in up01images" :key="item.index">
                                                <img :src="item.url" style="max-height: 200px;width: 100%;">
                                            </el-carousel-item>
                                        </el-carousel>
                                    </div>
                                </div>
                            </div>
                        </el-col>
                        <el-col :span="6">
                            <img src="./statics/images/cheng/4IV6GIR(J1L(5P_GD3O14Q6.png" alt="">
                        </el-col>
                    </el-row>
                </el-main>
            </el-container>
        </el-container>
        <img src="./statics/images/cheng/fake01.png" style="width: auto;height: auto">

    </div>
</div>
<script>
    new Vue({
        el: '#app',
        data: function () {
            return {
                upimages: [
                    {
                        url: "./statics/images/cheng/1Carousel.jpg",
                        name: "1Carousel.jpg"
                    },
                    {
                        url: "./statics/images/cheng/2Carousel.jpg",
                        name: "2Carousel.jpg"
                    },
                    {
                        url: "./statics/images/cheng/3Carousel.jpg",
                        name: "3Carousel.jpg"
                    },
                    {
                        url: "./statics/images/cheng/4Carousel.jpg",
                        name: "4Carousel.jpg"
                    },
                    {
                        url: "./statics/images/cheng/5Carousel.jpg",
                        name: "5Carousel.jpg"
                    },
                ],
                up01images: [
                    {
                        url: "./statics/images/cheng/up01images01.png",
                        name: "up01images01.png"
                    },
                    {
                        url: "./statics/images/cheng/up01images02.png",
                        name: "up01images02.png"
                    },
                ],
                navbars: [
                    {name: "Z商城"},
                    {name: "视频"},
                    {name: "图解"},
                    {name: "模拟攒机"},
                    {name: "论坛"},
                    {name: "问答"},
                    {name: "试用"},
                    {name: "排行榜"},
                    {name: "企业采购"},
                    {name: "超惠买"}
                ],
                chengsidenavbars: [
                    {level01: "手机", level02: "智能产品", level03: "通讯产品"},
                    {level01: "笔记本", level02: "超极本", level03: "台式电脑"},
                    {level01: "平板电脑", level02: "智能穿戴", level03: "智能家居"},
                    {level01: "数码相机", level02: "单反", level03: "数码摄像机"},
                    {level01: "数码产品", level02: "MP3", level03: "移动电源"},
                    {level01: "大家电", level02: "影音电视", level03: "游戏机"},
                    {level01: "厨卫电器", level02: "小家电", level03: "生活家电"},
                    {level01: "办公打印", level02: "投影", level03: "监控"},
                    {level01: "服务器", level02: "网络", level03: "无限"},
                    {level01: "汽车电子", level02: "安全自驾", level03: "电动车"}
                ],
                //一个navbar对应的值
                tables: [
                    {
                        name: "装机硬件",
                        link: "${pageContext.request.contextPath}/Pages/qian/memory/qianMemory.jsp",
                        dstincData: [
                            { name: "主板" , link :"${pageContext.request.contextPath}/Pages/xu/motherboard/xuMotherBoard.jsp"},
                            { name: "显卡" , link :"#"},
                            { name: "CPU" , link :"${pageContext.request.contextPath}/Pages/cheng/cpu/cpumemory.jsp"},
                            { name: "内存" , link :"${pageContext.request.contextPath}/Pages/qian/memory/qianMemory.jsp"},
                            { name: "硬盘" , link :"${pageContext.request.contextPath}/Pages/chen/Disk/ChenDisk.jsp"},
                            { name: "机箱" , link :"${pageContext.request.contextPath}/Pages/xu/chassis/xuChassis.jsp"},
                            { name: "电源" , link :"#"},
                            { name: "固态硬盘" , link :"${pageContext.request.contextPath}/Pages/cheng/ssd/chengssd.jsp"},
                            { name: "光驱" , link :"${pageContext.request.contextPath}/Pages/qian/cd/qianCD.jsp"},
                            { name: "声卡" , link :"${pageContext.request.contextPath}/Pages/chen/SoundCard/ChenSoundCard.jsp"},
                            { name: "网卡" , link :"${pageContext.request.contextPath}/Pages/xu/networkcard/xuNetwordCard.jsp"},
                            { name: "液晶显示器" , link :"#"},
                        ]
                    },
                    {
                        name: "硬件外设",
                        link: "${pageContext.request.contextPath}/Pages/qian/memory/qianMemory.jsp",
                        dstincData: [
                            { name: "音箱" , link :"${pageContext.request.contextPath}Pages/cheng/soundbox/chengSoundbox.jsp"},
                            { name: "鼠标" , link :"${pageContext.request.contextPath}/Pages/qian/mouse/qianMouse.jsp"},
                            { name: "键盘" , link :"${pageContext.request.contextPath}Pages/chen/Keyboard/ChenKeyboard.jsp"},
                            { name: "鼠标配件" , link :"#"},
                            { name: "音箱配件" , link :"#"},
                            { name: "移动硬盘" , link :"#"},
                            { name: "U盘" , link :"${pageContext.request.contextPath}/Pages/wang/UDisk/wangUDisk.jsp"},
                            { name: "摄像头" , link :"${pageContext.request.contextPath}Pages/wang/Camera/WangCamera.jsp"},
                        ]
                    },
                    {
                        name: "扩展配件",
                        link: "${pageContext.request.contextPath}/Pages/qian/memory/qianMemory.jsp",
                        dstincData: [
                            { name: "蓝牙适配器" , link :"${pageContext.request.contextPath}Pages/xu/bluetooth/xuBluetooth.jsp"},
                            { name: "硬盘/光驱盒" , link :"#"},
                            { name: "连接线转接卡" , link :"#"},
                            { name: "多口串卡" , link :"${pageContext.request.contextPath}/Pages/qian/mspc/qianMspc.jsp"},
                            { name: "显示芯片" , link :"${pageContext.request.contextPath}/Pages/chen/Display_Chip/ChenDisplayChip.jsp"},
                        ]
                    },
                ]
            }
        },

    })
</script>
<%@ include file="/Pages/bottom.jsp" %>
</body>
</html>
