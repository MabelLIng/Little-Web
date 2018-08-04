<%@ page import="com.music.model.User" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/8/2
  Time: 9:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>登陆/注册</title>
    <link href="css/login_register.css" rel="stylesheet" type="text/css">

</head>
<body>

<div class="screen">
    <div id="login_re">
        <div class="lo_re">
            <div>
                <a  id="lo" href="loginRegister.html" class="current" onclick="btnTitle(this.id,'loginBox','re','registerBox')">登陆</a>&nbsp;&nbsp;&nbsp;&nbsp;
                <a id="re" href="#" onclick="btnTitle(this.id,'registerBox','lo','loginBox')">注册</a>&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="index.html" style="color: black;font-size: 15px"> X </a>
            </div>
        </div>
        <div id="loginBox" >
            <%--<%--%>
                <%--User user=new User();--%>
                <%--user.setUsername(request.getParameter("User.username"));--%>
                <%--String username=user.getUsername();--%>
                <%--String username1="";--%>
                <%--if (username!=""&&username!=null){--%>
                    <%--username1=username;--%>
                <%--}--%>
            <%--%>--%>
            <form action="login">
                <ul>
                    <li>用户名：<input type="text" name="User.username" id="username" value=""></li>
                    <li>密&nbsp;&nbsp;&nbsp;码：<input type="text" name="User.password" id="password"></li>
                    <li><button type="submit">登陆</button>&nbsp;&nbsp;&nbsp;&nbsp;<button type="reset">重置</button></li>
                    <li class="lo_re2">还没有注册！请先注册</li>
                </ul>
            </form>
        </div>
        <div id="registerBox" class="hide">
            <form action="register">
                <ul>
                    <li>用&nbsp;&nbsp;户&nbsp;&nbsp;名：<input type="text" name="User.username" id="username0"></li>
                    <li>密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：<input type="text" name="User.password" id="password0"></li>
                    <li>确认密码：<input type="text" name="password" id="password1"></li>
                    <li>邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱：<input type="email" name="User.email" id="email"></li>
                    <li>出生年月：</li>
                    <li><button type="submit">登陆</button>&nbsp;&nbsp;&nbsp;&nbsp;<button type="reset">重置</button></li>
                </ul>
            </form>
        </div>
    </div>
</div>

<script src="js/login_register.js"></script>
</body>
</html>
