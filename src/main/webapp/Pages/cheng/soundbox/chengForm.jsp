<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="container">
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
            <form>
                <div class="form-group row">
                    <label for="brand" class="col-sm-2 col-form-label">品牌</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="brand" >
                    </div>
                </div>
                <div class="form-group row">
                    <label for="price" class="col-sm-2 col-form-label">价格</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="price" >
                    </div>
                </div>
                <div class="form-group row">
                    <label for="type" class="col-sm-2 col-form-label">音箱类型</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="type" >
                    </div>
                </div>
                <div class="form-group row">
                    <label for="system" class="col-sm-2 col-form-label">音箱系统</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="system" >
                    </div>
                </div>
                <div class="form-group row">
                    <label for="texttype" class="col-sm-2 col-form-label">音箱材质</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="textture" >
                    </div>
                </div>
                <div class="form-group row">
                    <label for="specialty" class="col-sm-2 col-form-label">特点</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="specialty" >
                    </div>
                </div>
                <div class="form-group row">
                    <label for="character" class="col-sm-2 col-form-label">特性</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="character" >
                    </div>
                </div>
                <div class="form-group row">
                    <label for="img" class="col-sm-2 col-form-label">图片</label>
                    <div class="col-sm-10">
                        <input type="iamge" class="form-control" id="img" >
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
        <div id="menu1" class="container tab-pane fade"><br>
            <form>
                <div class="form-group row">
                    <label for="brand2" class="col-sm-2 col-form-label">品牌</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="brand2" >
                    </div>
                </div>
                <div class="form-group row">
                    <label for="price2" class="col-sm-2 col-form-label">价格</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="price2" >
                    </div>
                </div>
                <div class="form-group row">
                    <label for="suittype2" class="col-sm-2 col-form-label">音箱类型</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="suittype2" >
                    </div>
                </div>
                <div class="form-group row">
                    <label for="account2" class="col-sm-2 col-form-label">音箱系统</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="account2" >
                    </div>
                </div>
                <div class="form-group row">
                    <label for="type2" class="col-sm-2 col-form-label">音箱材质</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="type2" >
                    </div>
                </div>
                <div class="form-group row">
                    <label for="MHZ2" class="col-sm-2 col-form-label">特点</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="MHZ2" >
                    </div>
                </div>
                <div class="form-group row">
                    <label for="aircooling2" class="col-sm-2 col-form-label">特性</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="aircooling2" >
                    </div>
                </div>
                <div class="form-group row">
                    <label for="img2" class="col-sm-2 col-form-label">图片</label>
                    <div class="col-sm-10">
                        <input type="iamge" class="form-control" id="img2" >
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
                            prop="type"
                            label="音箱类型"
                            width="120">
                    </el-table-column>
                    <el-table-column
                            prop="system"
                            label="音箱系统"
                            width="120">
                    </el-table-column>
                    <el-table-column
                            prop="textture"
                            label="音箱材质"
                            width="300">
                    </el-table-column>
                    <el-table-column
                            prop="specialty"
                            label="特点"
                            width="120">
                    </el-table-column>
                    <el-table-column
                            prop="character"
                            label="特性"
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

