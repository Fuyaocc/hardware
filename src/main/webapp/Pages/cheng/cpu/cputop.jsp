<%--
  Created by IntelliJ IDEA.
  User: 钱黎磊
  Date: 2018/12/22
  Time: 14:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<div class="panel panel-default">
        <!-- Default panel contents -->
        <div class="panel-heading">CPU报价</div>
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
                <div class = "title">CPU系列：</div>
                <div class = "listIM" v-for = "(item,index) in types" :class="{active: flag3 == index}" :key = "index" @click="activeFun3(index)">
                    <a>{{ item.name }}</a>
                </div>
            </li>
            <li class="list-group-item">
                <div class = "title">适用类型：</div>
                <div class = "listIM" v-for = "(item,index) in contains" :class="{active: flag4 == index}" :key = "index" @click="activeFun4(index)">
                         <a>{{ item.name }}</a>
                </div>
            </li>
            <li class="list-group-item">
                <div class = "title">核心数量：</div>
                <div class = "listIM" v-for = "(item,index) in memoryTypes" :class="{active: flag5 == index}" :key = "index" @click="activeFun5(index)">
                    <a>{{ item.name }}</a>
                </div>
            </li>
            <li class="list-group-item">
                <div class = "title">插槽类型：</div>
                <div class = "listIM" v-for = "(item,index) in MHZs" :class="{active: flag6 == index}" :key = "index" @click="activeFun6(index)">
                    <a>{{ item.name }}</a>
                </div>
            </li>
            <li class="list-group-item">
                <div class = "title">&nbsp;&nbsp;&nbsp;线程数量：</div>
                <div class = "listIM" v-for = "(item,index) in aircoolings" :class="{active: flag7 == index}" :key = "index" @click="activeFun7(index)">
                    <a>{{ item.name }}</a>
                </div>
            </li>
        </ul>
    </div>





