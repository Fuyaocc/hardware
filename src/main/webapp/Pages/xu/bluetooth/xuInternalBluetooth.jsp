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
        <div class="panel-heading">蓝牙报价</div>
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
        </ul>
    </div>





