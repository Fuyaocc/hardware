<%--
  Created by IntelliJ IDEA.
  User: lennon
  Date: 2018/12/21
  Time: 3:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    .cheng_top_login {
        margin: 5px 0px;
    }

    .cheng_onhover {
        color: red;
    }
</style>

<nav class="navbar navbar-expand-sm bg-light navbar-light">
    <div class="container">
        <!-- Brand -->
        <a class="navbar-brand" href="${pageContext.request.contextPath}">Logo</a>
        <!-- Links -->
        <ul class="navbar-nav mr-auto">

            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                   aria-haspopup="true" aria-expanded="false">
                    网站导航
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="#">暂无</a>
                    <a class="dropdown-item" href="#">暂无</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">暂无</a>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">产品排行</a>
            </li>
            <li class="nav-item ">
                <a class="nav-link" href="#">产品入库</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">广告联盟</a>
            </li>
        </ul>
        <ul class="navbar-nav mt-2 mt-lg-0">
            <!-- Dropdown -->
            <li class="nav-item">
                <a class="nav-link">
                    <div id="chengTopDropdown" >
                        <div @click="handleLoginClick">
                            {{ login }}
                        </div>
                        <div v-show="hasLogin" @click="loginOut">
                            退出
                        </div>
                    </div>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">
                    <img src="${pageContext.request.contextPath}/statics/images/qq.jpg" width="30" height="30" alt="">
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">
                    <img src="${pageContext.request.contextPath}/statics/images/weixin.jpg" width="30" height="30"
                         alt="">
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">
                    <img src="${pageContext.request.contextPath}/statics/images/weibo.jpg" width="30" height="30"
                         alt="">
                </a>
            </li>

        </ul>
    </div>
</nav>


<script>
    new Vue({
        el: "#chengTopDropdown",
        data: function () {
            return {
                login: "",
                hasLogin : false
            }
        },
        methods: {
            handleLoginClick: function(){
                if(this.hasLogin)
                {
                    location.href="${pageContext.request.contextPath}/Pages/chen/myspace.jsp";
                }else {
                    location.href="${pageContext.request.contextPath}/login.jsp";
                }
            },
            loginOut:function () {
                localStorage.setItem('login', null);
                this.hasLogin = false
                this.login = "登录"
            }
        },

        mounted: function() {
            var reslogin = JSON.parse(localStorage.getItem("login"));
            console.log(reslogin)
            if(reslogin==null)
            {
                this.login = ChengGlobal.currentUser.phone;
            }else {
                this.login = reslogin
                this.hasLogin = true
            }
        }
    })
</script>
<br/>