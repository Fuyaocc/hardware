<%--
  Created by IntelliJ IDEA.
  User:
  Date: 2018/12/24
  Time: 16:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="container" id="app">
    <!-- Nav tabs -->
    <ul class="nav nav-tabs" role="tablist">
        <li class="nav-item">
            <a class="nav-link active" data-toggle="tab" href="#home">添加商品</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" data-toggle="tab" href="#menu1">修改商品信息</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" data-toggle="tab" href="#menu2">删除商品</a>
        </li>
    </ul>

    <!-- Tab panes -->
    <div class="tab-content">
        <div id="home" class="container tab-pane active"><br>
            <form class="container">
                <div class="form-group row">
                    <label for="brand" class="col-sm-2 col-form-label">品牌</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="brand" v-model="brand">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="price" class="col-sm-2 col-form-label">价格</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="price" v-model="price">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="cpuSet" class="col-sm-2 col-form-label">CPU系列</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="cpuSet" v-model="cpuSet">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="suitableType" class="col-sm-2 col-form-label">适用类型</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="suitableType" v-model="suitableType">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="coreCounts" class="col-sm-2 col-form-label">核心数量</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="coreCounts" v-model="coreCounts">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="slotType" class="col-sm-2 col-form-label">插槽类型</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="slotType" v-model="slotType">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="threadCounts" class="col-sm-2 col-form-label">线程数量</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="threadCounts" v-model="threadCounts">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="grade" class="col-sm-2 col-form-label">评分</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="grade" v-model="grade">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="link" class="col-sm-2 col-form-label">购买链接</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="link" v-model="link">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="img" class="col-sm-2 col-form-label">图片</label>
                    <div class="col-sm-10">
                        <el-upload
                                ref="upload"
                                action="${pageContext.request.contextPath}/upload/images"
                                :on-remove="handleRemove"
                                :on-success="handleSuccess"
                                :file-list="fileList"
                                list-type="picture-card"
                                :auto-upload="false">
                            <el-button slot="trigger" size="small" type="primary">选取文件</el-button>
                            <el-button style="margin-left: 10px;" size="small" type="success" @click="submitUpload">
                                上传到服务器
                            </el-button>
                        </el-upload>
                        <input type="text" class="form-control" id="img" v-model="imageUrl">
                    </div>
                </div>
                <div class="form-group row" style="margin-left: 50%">
                    <div class="col-auto">
                        <button type="submit" id="insertForm" class="btn btn-primary mb-2">提交</button>
                    </div>
                    <div class="col-auto">
                        <button type="reset" id="handleCancel" class="btn btn-primary mb-2">取消</button>
                    </div>
                </div>
            </form>
        </div>
        <div id="menu1" class="container tab-pane fade"><br>
            <form>
                <div class="form-group row">
                    <label for="brand2" class="col-sm-2 col-form-label">品牌</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="brand2">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="price2" class="col-sm-2 col-form-label">价格</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="price2">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="cpuSet2" class="col-sm-2 col-form-label">试用类型</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="cpuSet2">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="suitableType2" class="col-sm-2 col-form-label">容量描述</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="suitableType2">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="type2" class="col-sm-2 col-form-label">内存类型</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="type2">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="slotType2" class="col-sm-2 col-form-label">内存主频</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="slotType2">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="threadCounts2" class="col-sm-2 col-form-label">散热片</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="threadCounts2">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="img2" class="col-sm-2 col-form-label">图片</label>
                    <div class="col-sm-10">
                        <input type="iamge" class="form-control" id="img2">
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-auto">
                        <button type="submit" class="btn btn-primary mb-2">提交</button>
                    </div>
                    <div class="col-auto">
                        <button type="reset" class="btn btn-primary mb-2">取消</button>
                    </div>
                </div>
            </form>
        </div>
        <div id="menu2" class="container tab-pane fade"><br>
            <template>
                <el-table
                        :data="tableData4"
                        style="width: auto"
                        max-height="250">
                    <el-table-column
                            fixed
                            prop="brand"
                            label="品牌"
                            width="150">
                    </el-table-column>
                    <el-table-column
                            prop="price"
                            label="价格"
                            width="120">
                    </el-table-column>
                    <el-table-column
                            prop="coreCounts"
                            label="核心数量"
                            width="120">
                    </el-table-column>
                    <el-table-column
                            prop="suitableType"
                            label="容量描述"
                            width="120">
                    </el-table-column>
                    <el-table-column
                            prop="slotType"
                            label="适合机型"
                            width="300">
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
            </template>
        </div>
    </div>
</div>


<script>
    //意思是页面加载即执行
    $(document).ready(function () {
        //当点击时执行
        $("#insertForm").click(function () {
            var url = ChengGlobal.baseUrl + "/cheng/cpu/add";
            var postData = {
                phone: localStorage.getItem("login"),
                name: "",
                brand: $("#brand").val(),
                price: $("#price").val(),
                set: $("#cpuSet").val(),
                suitableType: $("#suitableType").val(),
                slotType: $("#slotType").val(),
                threadCounts: $("#threadCounts").val(),
                imageUrl: $("#img").val(),
                grade: $("#grade").val(),
                link: $("#link").val(),
            }

            axios({
                method: "post",
                url: url,
                data: postData
            }).then(function (response) {
                console.log(response)
                that.$message.success('添加商品成功');
            }).catch(function (error) {
                that.$message.error('服务器繁忙');
            });

        });
        $("#handleCancel").click(function () {

        });
    })
</script>

<script>
    new Vue({
        el: '#app',
        data: function () {
            return {
                reqdata: {
                    phone: localStorage.getItem("login"),
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
                brand: "",
                price: "",
                cpuSet: "",
                suitableType: "",
                type: "",
                slotType: "",
                threadCounts: "",
                img: "",
                grade: "",
                link : "",
                imageUrl:"1",
                coreCounts:"",
                fileList: [
                    
                ],
                tableData4: [
                    {
                        imageUrl: "${pageContext.request.contextPath}/statics/images/qian/Memory1.jpg",
                        link: "http://detail.zol.com.cn/memory/index1147009.shtml",
                        str: "参考价: ",
                        price: "459",
                        grade: 8.5,
                        brand: "Interl",
                        coreCounts : "十六核心",
                        slotType : "台式机",
                        cpuId: "1"
                    },
                    {
                        imageUrl: "${pageContext.request.contextPath}/statics/images/qian/Memory1.jpg",
                        link: "http://detail.zol.com.cn/memory/index1147009.shtml",
                        str: "参考价: ",
                        price: "459",
                        grade: 8.5,
                        brand: "Interl",
                        coreCounts : "十六核心",
                        slotType : "台式机",
                        cpuId: "2"
                    },
                    {
                        imageUrl: "${pageContext.request.contextPath}/statics/images/qian/Memory1.jpg",
                        link: "http://detail.zol.com.cn/memory/index1147009.shtml",
                        str: "参考价: ",
                        price: "459",
                        grade: 8.5,
                        brand: "Interl",
                        coreCounts : "十六核心",
                        slotType : "台式机",
                        cpuId: "3"
                    },
                ],
            }
        },
        methods: {
            deleteRow: function (index, rows) {
                console.log(rows[index].cpuId)
                var that = this;
                // 发送 POST 请求
                var url = ChengGlobal.baseUrl + "/cheng/cpu/delete";
                axios({
                    method: "post",
                    url: url,
                    params:  {
                        id : rows[index].cpuId
                    },
                }).then(function (response) {
                    console.log(response)
                    rows.splice(index, 1);
                    that.$message.success('删除成功');
                }).catch(function (error) {
                    that.$message.error('服务器繁忙');
                });

            },
            submitUpload() {
                this.$refs.upload.submit();
            },
            handleRemove(file, fileList) {
                console.log(file, fileList);
            },
            handlePreview(file) {
                console.log(file);
            },
            handleSuccess(response, file, fileList){
                this.imageUrl = response.data[0]
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




