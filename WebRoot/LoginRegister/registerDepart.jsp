<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/admin_nav.css">
    <link rel="stylesheet" href="../css/register.css">
	<link rel="stylesheet" href="../css/sweet-alert.css">	
    <title>部门注册</title>
</head>
<body>

<div class="backDiv">
    <div class="backContent">
        <img src="../images/logo_页尾.png">
        <a href="login.jsp">已有部门账号，马上登录</a>
        <a href="loginDepart.jsp" class="aButton"><button>登录</button></a>
    </div>
    <div class="formDivdepart">
        <form id="register-form">

            <label><input type="text" placeholder="输入学校" name="school" id="school" class="required"></label>
            <label><input type="text" placeholder="输入学院" name="college" id="college" class="required"></label>
            <label><input type="email" placeholder="输入部门邮箱" name="departEmail" id="departEmail" class="required"></label>
            <label><input type="email" placeholder="输入部门名称" name="departName" id="departName" class="required"></label>
            <label><input type="password" placeholder="输入密码" name="password" id="password" class="required"></label>
            <label><input type="password" placeholder="确认密码" name="repassword" id="repassword" class="required"></label>
            <label><input type="text" placeholder="验证码" name="code" class="code required" id="code" ><img src="../universal/createCheckCode?+ Math.random()" class="codeImage" onclick="this.src='../universal/createCheckCode?'+Math.random()"></label>
            <button id="summitbutton">注册</button>
        </form>
    </div>
</div>

<script src="../js/jquery-1.11.3.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/registerLogin/Loading.js"></script>
<script src="../js/checkjs/registerDepart.js"></script>
<script src="../js/sweet-alert.min.js"></script>
</body>
</html>