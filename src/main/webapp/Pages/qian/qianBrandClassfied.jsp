<%--
  Created by IntelliJ IDEA.
  User: 钱黎磊
  Date: 2018/12/22
  Time: 14:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/Pages/template/cdnmain.jsp" %>

    <el-collapse v-model="activeNames" @change="handleChange">
        <el-collapse-item title="装机硬件" name="1">
            <div class = "listBC" v-for = "item in names1">
                <a  :href="item.link" target="_blank">
                    {{ item.name }}
                </a>
            </div>
        </el-collapse-item>
        <el-collapse-item title="硬件外设" name="2">
            <div class = "listBC" v-for = "item in names2">
                <a  :href="item.link" target="_blank">
                {{ item.name }}
                </a>
            </div>
        </el-collapse-item>
        <el-collapse-item title="扩展配件" name="3">
            <div class = "listBC"  v-for = "item in names3">
                <a :href="item.link" target="_blank">
                {{ item.name }}
                </a>
            </div>
        </el-collapse-item>
    </el-collapse>



