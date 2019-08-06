<%--
  Created by IntelliJ IDEA.
  User: 钱黎磊
  Date: 2018/12/22
  Time: 22:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

    <div class = "bar">
        <ul class="nav nav-tabs">
            <li role="presentation" class="active_bar"><a href="#">热门</a></li>
            <li role="presentation" class="active_bar"><a href="#">时间</a></li>
            <li role="presentation" class="active_bar"><a href="#">价格</a></li>
            <li role="presentation" class="active_bar"><a href="#">点评数</a></li>
        </ul>
    </div>
    <div class = "listII" v-for = "item in informations">
        <ul>
            <li>
            <a :href="item.link">
                <image :src = "item.imageUrl" height="140px" width = "140px"></image><br>
                <a :href = "item.link" target="_blank">{{ item.brand }} {{ item.coreCounts }} {{ item.slotType }}</a><br><br>
            </a>
                参考价:    {{ item.price | current }} <br><br>
                <el-rate
                        v-model="item.grade"
                        disabled
                        show-score
                        text-color="#ff9900"
                        score-template="{ value }">
                </el-rate><br>
                <a :href="item.link" target="_blank">
                <el-button type="primary"  size = "small">去购买</el-button>
                </a>
                <el-button size = "mini" >关注</el-button>
            </li>
        </ul>
    </div>


