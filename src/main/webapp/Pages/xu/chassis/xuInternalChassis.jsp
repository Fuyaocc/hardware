<%--
  Created by IntelliJ IDEA.
  User: 钱黎磊
  Date: 2018/12/22
  Time: 14:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/Pages/template/cdnmain.jsp" %>


<div class="panel panel-default">
        <!-- Default panel contents -->
        <div class="panel-heading">机箱报价</div>
        <!-- List group -->
        <ul class="list-group">
            <li class="list-group-item">
                <div class = "title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;品牌：</div>
                <div class = "listIM" v-for = "(item,index) in brands" :class="{active: flag1 == index}" :key = "index" @click="activeFun1(index)">
                    <a>{{ item.name }}</a>
                </div>
            </li>
            <li class="list-group-item">
                <div class = "title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;价格：</div>
                <div class = "listIM" v-for = "(item,index) in prices" :class="{active: flag2 == index}" :key = "index" @click="activeFun2(index)">
                    <a>{{ item.name }}</a>
                </div>
            </li>
            <li class="list-group-item">
                <div class = "title">机箱类型：</div>
                <div class = "listIM" v-for = "(item,index) in type" :class="{active: flag3 == index}" :key = "index" @click="activeFun3(index)">
                    <a>{{ item.name }}</a>
                </div>
            </li>
            <li class="list-group-item">
                <div class = "title">机箱结构：</div>
                <div class = "listIM" v-for = "(item,index) in chassis" :class="{active: flag4 == index}" :key = "index" @click="activeFun4(index)">
                         <a>{{ item.name }}</a>
                </div>
            </li>
            <li class="list-group-item">
                <div class = "title">机箱样式：</div>
                <div class = "listIM" v-for = "(item,index) in style" :class="{active: flag5 == index}" :key = "index" @click="activeFun5(index)">
                    <a>{{ item.name }}</a>
                </div>
            </li>
            <li class="list-group-item">
                <div class = "title">电源类型：</div>
                <div class = "listIM" v-for = "(item,index) in powersupply" :class="{active: flag6 == index}" :key = "index" @click="activeFun6(index)">
                    <a>{{ item.name }}</a>
                </div></li>
            <li class="list-group-item">
                <div class = "title">显卡限长：</div>
                <div class = "listIM" v-for = "(item,index) in gpulimit" :class="{active: flag7 == index}" :key = "index" @click="activeFun7(index)">
                    <a>{{ item.name }}</a>
                </div></li>
        </ul>
    </div>





