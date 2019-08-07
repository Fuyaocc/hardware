<%--
  Created by IntelliJ IDEA.
  User: lennon
  Date: 2018/12/28
  Time: 3:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员界面</title>
    <%@ include file="/Pages/template/cdnmain.jsp" %>
</head>
<body>


<style type="text/css">
    img, object {max-width: 100%;}

    body{
        background-attachment: fixed;
        overflow: hidden;
        background-size: cover;
        background-position: 50% 50%;
        background-repeat: no-repeat;
    }
    p{
        font-size:3vw;
    }
    a{
        text-decoration:none;
        font-size:1.5vw;
    }


</style>


<div id="adminManage">
    <el-container>
        <el-header style="text-align: center;border-bottom-color: black"><h1>用户管理</h1></el-header>
        <el-container>
            <el-aside width="200px">
                <el-menu
                        default-active="2"
                        class="el-menu-vertical-demo"
                        @open="handleOpen"
                        @close="handleClose">
                    <el-menu-item index="2">
                        <i class="el-icon-menu"></i>
                        <span slot="title">用户管理</span>
                    </el-menu-item>
                </el-menu>
            </el-aside>
            <el-main>
                <el-table
                        :data="tableData4"
                        max-height="550">
                    <el-table-column
                            fixed
                            prop="phone"
                            label="电话"
                            width="200">
                    </el-table-column>
                    <el-table-column
                            prop="nickname"
                            label="昵称"
                            width="200">
                    </el-table-column>
                    <el-table-column
                            prop="location"
                            label="住址"
                            width="200">
                    </el-table-column>
                    <el-table-column
                            prop="birthday"
                            label="生日"
                            width="120">
                    </el-table-column>
                    <el-table-column
                            prop="email"
                            label="电子邮件"
                            width="200">
                    </el-table-column>
                    <el-table-column
                            prop="sex"
                            label="性别"
                            width="200">
                    </el-table-column>
                    <el-table-column
                            fixed="right"
                            label="操作"
                            width="120">
                        <template slot-scope="scope">
                            <el-button
                                    @click.native.prevent="deleteRow(scope.$index, tableData4)"
                                    type="text"
                                    size="small">
                                移除
                            </el-button>
                        </template>
                    </el-table-column>
                </el-table>
            </el-main>
        </el-container>
    </el-container>
</div>

<script>
    new Vue({
        el: "#adminManage",
        data: function () {
            return {
                tableData4:[

                ],
                reqdata: {
                    phone: "",
                    nickname: "",
                    location: "",
                    birth: "",
                    email: "",
                    sex: ""
                },
            }
        },
        methods: {
            deleteRow: function (index, rows) {
                console.log(rows[index].cpuId)
                var that = this;
                // 发送 POST 请求
                var url = ChengGlobal.baseUrl + "/chen/user/delete";
                axios({
                    method: "post",
                    url: url,
                    params:  {
                        phone : rows[index].phone
                    },
                }).then(function (response) {
                    console.log(response)
                    rows.splice(index, 1);
                    that.$message.success('删除成功');
                }).catch(function (error) {
                    that.$message.error('服务器繁忙');
                });

            },
            handleOpen(key, keyPath) {
                console.log(key, keyPath);
            },
            handleClose(key, keyPath) {
                console.log(key, keyPath);
            },
            sendQuery: function(){
                var that = this;
                // 发送 POST 请求
                var url = ChengGlobal.baseUrl + "/chen/user/select";
                axios({
                    method: "get",
                    url: url,
                }).then(function (response) {
                    that.tableData4 = response.data.list
                }).catch(function (error) {
                    that.$message.error('服务器繁忙');
                });
            }
        },
        mounted: function() {
            this.sendQuery()
        }
    })
</script>

</body>
</html>
