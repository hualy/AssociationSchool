<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/admin_nav.css">
    <link rel="stylesheet" href="../css/register.css">
    <link rel="stylesheet" href="../css/sweet-alert.css">
    <title>部门登录</title>
    <script type="text/javascript">
     <%
     String username = "";
     String password = "";
  	//获取当前站点的所有Cookie
     Cookie[] cookies = request.getCookies();
 	 if(cookies != null){
	 		for (int i = 0; i < cookies.length; i++) {			//对cookies中的数据进行遍历，找到用户名、密码的数据
	         	if ("username".equals(cookies[i].getName())) {
	             	username = cookies[i].getValue();
	        	} else if ("password".equals(cookies[i].getName())) {
	             password = cookies[i].getValue();
	         	}
	     	}	
	 	}
	%>
    </script>
</head>
<body>

<div class="backDiv">
    <div class="backContent">
        <img src="../images/logo_页尾.png">
        <a href="register.jsp">还没有账号？赶紧注册一个</a>
        <a href="register.jsp" class="aButton"><button>注册</button></a>
    </div>
    <div class="formDivLogin">
        <form id="loginForm" action="" method="post">
            <label><input type="email" placeholder="输入邮箱" name="email" class="required" id="email" value="<%= username %>"></label>
            <label><input type="password" placeholder="输入密码" name="password" class="required" id="password" value="<%= password %>"></label>
            <label><input type="text" placeholder="验证码" name="code" class="code required" id="code" ><img src="../universal/createCheckCode?+ Math.random()" class="codeImage" onclick="this.src='../universal/createCheckCode?'+Math.random()"></label>
            <div class="bottomInformation">
                <label class="left"><input type="checkbox" name="rem_password" value="yes"><p>记住密码</p></label>
                <label class="next"><p><a class="forgetPassword">忘记密码</a></p></label>
            </div>
            <label class="finCodeLable"><button class="findCode">点击进行邮箱验证</button></label>
            <button type="submit" id="send">登录</button>
        </form>
    </div>
</div>

<script src="../js/jquery-1.11.3.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/registerLogin/jquery.form.js"></script>
<%--<script src="../js/registerLogin/login.js"></script>--%>
<script src="../js/registerLogin/Loading.js"></script>
<script src="../js/checkjs/loginDepart.js"></script>
<script src="../js/sweet-alert.min.js"></script>
</body>
</html>