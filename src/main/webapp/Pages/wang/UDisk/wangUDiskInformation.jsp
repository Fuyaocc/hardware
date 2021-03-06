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
        <div class="panel-heading">U盘报价</div>
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
                <div class = "title">产品类型：</div>
                <div class = "listIM" v-for = "(item,index) in types" :class="{active: flag3 == index}" :key = "index" @click="activeFun3(index)">
                    <a>{{ item.name }}</a>
                </div>
            </li>
            <li class="list-group-item">
                <div class = "title">存储容量：</div>
                <div class = "listIM" v-for = "(item,index) in contains" :class="{active: flag4 == index}" :key = "index" @click="activeFun4(index)">
                         <a>{{ item.name }}</a>
                </div>
            </li>
            <li class="list-group-item">
                <div class = "title">接口类型：</div>
                <div class = "listIM" v-for = "(item,index) in interfacetypes" :class="{active: flag5 == index}" :key = "index" @click="activeFun5(index)">
                    <a>{{ item.name }}</a>
                </div>
            </li>
            <li class="list-group-item">
                <div class = "title">特性：</div>
                <div class = "listIM" v-for = "(item,index) in specials" :class="{active: flag6 == index}" :key = "index" @click="activeFun6(index)">
                    <a>{{ item.name }}</a>
                </div>
            </li>
            <li class="list-group-item">
                <div class = "title">外观颜色：</div>
                <div class = "listIM" v-for = "(item,index) in colors" :class="{active: flag7 == index}" :key = "index" @click="activeFun7(index)">
                    <a>{{ item.name }}</a>
                </div></li>
        </ul>
    </div>





