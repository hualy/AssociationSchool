<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>激活结果页面</title>
	<link rel="stylesheet" href="../css/result.css">
  </head>
  <body>
   		<div id="js-alert-box" class="alert-box"> <svg class="alert-circle" width="234" height="234">
  <circle cx="117" cy="117" r="108" fill="#FFF" stroke="#43AEFA" stroke-width="17"></circle>
  <circle id="js-sec-circle" class="alert-sec-circle" cx="117" cy="117" r="108" fill="transparent" stroke="#F4F1F1" stroke-width="18" transform="rotate(-90 117 117)"></circle>
  <text class="alert-sec-unit" x="82" y="172" fill="#BDBDBD">secs</text>
  </svg>
  <div id="js-sec-text" class="alert-sec-text"></div>
  <div class="alert-body">
    <div id="js-alert-head" class="alert-head"></div>
    <div class="alert-concent">
      <p>恭喜你,激活成功,请登录你的帐号!</p>
    </div>
    <a id="js-alert-btn" class="alert-btn" href="http://localhost:8080/association/LoginRegister/login.jsp">立即前往登录</a> </div>
  <div class="alert-footer clearfix"> <svg width="46px" height="42px" class="alert-footer-icon">
    <circle fill-rule="evenodd" clip-rule="evenodd" fill="#7B7B7B" stroke="#DEDFE0" stroke-width="2" stroke-miterlimit="10" cx="21.917" cy="21.25" r="17"/>
    <path fill="#FFF" d="M22.907,27.83h-1.98l0.3-2.92c-0.37-0.22-0.61-0.63-0.61-1.1c0-0.71,0.58-1.29,1.3-1.29s1.3,0.58,1.3,1.29 c0,0.47-0.24,0.88-0.61,1.1L22.907,27.83z M18.327,17.51c0-1.98,1.61-3.59,3.59-3.59s3.59,1.61,3.59,3.59v2.59h-7.18V17.51z M27.687,20.1v-2.59c0-3.18-2.59-5.76-5.77-5.76s-5.76,2.58-5.76,5.76v2.59h-1.24v10.65h14V20.1H27.687z"/>
    <circle fill-rule="evenodd" clip-rule="evenodd" fill="#FEFEFE" cx="35.417" cy="10.75" r="6.5"/>
    <polygon fill="#7B7B7B" stroke="#7B7B7B" stroke-linecap="round" stroke-linejoin="round" stroke-miterlimit="10" points="35.417,12.16 32.797,9.03 31.917,10.07 35.417,14.25 42.917,5.29 42.037,4.25 "/>
    </svg>
    <div class="alert-footer-text">
      <p>secure</p>安全加密 </div>
  </div>
</div>
   	<script>
		function alertSet(e) {
		    document.getElementById("js-alert-box").style.display = "block",
		    document.getElementById("js-alert-head").innerHTML = e;
		    var t = 10,
		    n = document.getElementById("js-sec-circle");
		    document.getElementById("js-sec-text").innerHTML = t,
		    setInterval(function() {
		        if (0 == t){
					location.href="http://localhost:8080/association/LoginRegister/login.jsp";
				}else {
		            t -= 1,
		            document.getElementById("js-sec-text").innerHTML = t;
		            var e = Math.round(t / 10 * 735);
		            n.style.strokeDashoffset = e - 735
		        }
		    },
		    970);
		}
 </script>
  <center>
  <span style="font-size:15px; font-weight:bold; text-align:center; line-height:25px; color:#000; width:100%"><br />
 </span>
</center>
  </body>
</html>
<script>alertSet('');</script>
