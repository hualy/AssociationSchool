<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/admin_nav.css">
    <link rel="stylesheet" href="../css/register.css">
    <link rel="stylesheet" href="../css/sweet-alert.css">	
    <title>个人注册</title>
</head>
<body>

<div class="backDiv">
    <div class="backContent">
        <img src="../images/logo_页尾.png">
        <a href="registerDepart.jsp">还没有部门？注册一个</a>
        <a href="login.jsp" class="aButton"><button>登录</button></a>
    </div>
    <div class="formDiv">

        <form id="register-form">
            <label><input type="email" placeholder="输入部门邮箱" name="departEmail" id="departEmail" class="required"></label>
            <label><input type="email" placeholder="输入个人邮箱" name="personalEmail" id="personalEmail" class="required"></label>
            <label><input type="text" placeholder="输入姓名" name="name" id="name" class="required"></label>
            <label><input type="password" placeholder="输入密码" name="password" id="password" class="required"></label>
            <label><input type="password" placeholder="确认密码" name="repassword" id="repassword" class="required"></label>
            <label class="addPos"><input type="radio" value="部长" name="position" class="position" ><p>部长</p><input type="radio" value="干事"  name="position" class="position" checked><p>干事</p></label>
            <label><input type="text" placeholder="验证码" name="code" class="code required" id="code"><img src="../universal/createCheckCode?+ Math.random()" class="codeImage" onclick="this.src='../universal/createCheckCode?'+Math.random()"></label>
            <button id="send">注册</button>
        </form>
    </div>
</div>

<script src="../js/jquery-1.11.3.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/registerLogin/Loading.js"></script>
<script src="../js/checkjs/register.js"></script>
<script src="../js/sweet-alert.min.js"></script>
</script>
</body>
</html>