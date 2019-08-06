<%--
  Created by IntelliJ IDEA.
  User: 钱黎磊
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
                    <label for="suittype" class="col-sm-2 col-form-label">产品类型</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="suittype" v-model="suittype">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="account" class="col-sm-2 col-form-label">存储容量</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="account" v-model="account">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="type" class="col-sm-2 col-form-label">接口类型</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="type" v-model="type">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="MHZ" class="col-sm-2 col-form-label">特性</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="MHZ" v-model="MHZ">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="aircooling" class="col-sm-2 col-form-label">外观颜色</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="aircooling" v-model="aircooling">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="img" class="col-sm-2 col-form-label">图片</label>
                    <div class="col-sm-10">
                        <el-upload
                                ref="upload"
                                action="https://jsonplaceholder.typicode.com/posts/"
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
                        <input type="iamge" class="form-control" id="img">
                    </div>
                </div>
                <div class="form-group row" style="margin-left: 50%">
                    <div class="col-auto">
                        <button  id="insertForm" class="btn btn-primary mb-2">提交</button>
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
                    <label for="suittype2" class="col-sm-2 col-form-label">产品类型</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="suittype2">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="account2" class="col-sm-2 col-form-label">存储容量</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="account2">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="type2" class="col-sm-2 col-form-label">接口类型</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="type2">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="MHZ2" class="col-sm-2 col-form-label">特性</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="MHZ2">
                    </div>
                </div>
                <div class="form-group row">
                    <label for="aircooling2" class="col-sm-2 col-form-label">外观颜色</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="aircooling2">
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
                            prop="suittype"
                            label="产品类型"
                            width="120">
                    </el-table-column>
                    <el-table-column
                            prop="account"
                            label="存储容量"
                            width="120">
                    </el-table-column>
                    <el-table-column
                            prop="type"
                            label="接口类型"
                            width="300">
                    </el-table-column>
                    <el-table-column
                            prop="MHZ"
                            label="特性"
                            width="120">
                    </el-table-column>
                    <el-table-column
                            prop="aircooling"
                            label="外观颜色"
                            width="120">
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
            console.log("aaaa")
            var url = ChengGlobal.baseUrl + "/wang/udisk/add";
            var postData = {
                phone: ChengGlobal.currentUser.phone,
                name: "",
                brand: $("#brand").val(),
                price: $("#price").val(),
                suittype: $("#suittype").val(),
                type: $("#type").val(),
                MHZ: $("#MHZ").val(),
                aircooling: $("#aircooling").val(),
                img: $("#img").val(),
            }
            axios({
                method: "post",
                url: url,
                data: postData
            }).then(function (response) {
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
                brand: "",
                price: "",
                suittype: "",
                account: "",
                type: "",
                MHZ: "",
                aircooling: "",
                img: "",
                fileList: [
                    {
                    name: 'food.jpeg',
                    url: 'https://fuss10.elemecdn.com/3/63/4e7f3a15429bfda99bce42a18cdd1jpeg.jpeg?imageMogr2/thumbnail/360x360/format/webp/quality/100'
                },
                ],
                tableData4: [
                    {
                        brand: "英睿达",
                        price: "459",
                        suittype: "台式机",
                        account: "16GB",
                        type: "DDR3",
                        MHZ: "1600MHZ",
                        aircooling: "带散热片"
                    },
                    {
                        brand: "英睿达",
                        price: "489",
                        suittype: "笔记本",
                        account: "16GB",
                        type: "DDR3",
                        MHZ: "1600MHZ",
                        aircooling: "带散热片"
                    },
                ],
            }
        },
        methods: {
            deleteRow: function (index, rows) {
                rows.splice(index, 1);
            },
            submitUpload: function() {
                this.$refs.upload.submit();
            },
            handleRemove: function(file, fileList) {
                console.log(file, fileList);
            },
            handlePreview: function(file) {
                console.log(file);
            },
            handleSuccess: function(response, file, fileList){
                console.log(response)
            }

        },
    })
</script>




