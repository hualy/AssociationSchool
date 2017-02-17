<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/11/12
  Time: 14:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="com.xyz.model.*"%>
<%@page import="com.xyz.serviceimpl.DepartmentServiceImpl"%>
<html>
<head>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/admin_nav.css">
    <link rel="stylesheet" href="../css/admin_index.css">
    <link rel="stylesheet" href="../css/ssi-uploader.css">
    <link rel="stylesheet" href="../css/sweet-alert.css">
    <link rel="stylesheet" href="../css/zzsc.css">
    <title>部门简介</title>
    <%
    	Department d = (Department)session.getAttribute("department");
    %>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="left">
            <%@ include file="./admin_nav.jsp" %>
        </div>
        <div  class="right">
            <div class="header">
                <div><p class="headerName">你好，<%= d.getName() %></p><p>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="../universal/accountLogout?identity='admin'">退出</a></p></div>
                <p class="changeEmail" data-target="#changeEmailModal" data-toggle="modal">修改部门邮箱</p>
            </div>

            <div class="content">
                <div class="contentHeader"><p>部门概况 > 部门文化</p></div>
                <div class="contentPart1"><p>部门职能</p><small>双击可编辑</small></div>
                <form id="introduction" onchange="summit()">
                    <div class="divElement" name="introduction" id="introdiv" ><%= d.getIntroduction() %></div>
                </form>


                <%--图片上传--%>
                <div class="contentPart2"><p>部门图片轮播</p></div>
                <%--<div class="contentImage">--%>

                    <%--<div><img src="../images/activity3.jpg"><button><input type="file">更改图片</button></div>--%>
                <%--</div>--%>
                <%--<div class="contentImage">--%>
                    <%--<div><img src="../images/activity3.jpg"><button>更改图片</button></div>--%>
                <%--</div>--%>
                <%--<div class="contentImage">--%>
                    <%--<div><img src="../images/activity3.jpg"><button>更改图片</button></div>--%>
                <%--</div>--%>
                <div class="zzsc-container">
                    <div class="container">
                        <div class="col-md-12">
                            <%--<h3>基本演示（支持jpg、gif、txt、png和pdf格式文件）</h3>--%>
                            <input type="file" multiple id="ssi-upload" name="file"/>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
<script src="../js/jquery-1.11.3.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/adminJS/edit.js"></script>
<script src="../js/adminJS/admin_nav.js"></script>
<script src="../js/adminJS/ssi-uploader.js"></script>
<script src="../js/sweet-alert.min.js"></script>
<script type="text/javascript">
    $('#ssi-upload').ssi_uploader({url:'../administrator/upLoadPictures',maxFileSize:6,allowed:['jpg','gif','txt','png','pdf']});

	function summit(){
		 $.ajax({
			type: "POST",
			url: "/association/administrator/publishDepartmentCulture",
			dataType: "HTML",
			data: {introduction:$("#introdiv").text()}, 
			success: function(result){
			 			swal({
							title: "修改成功",  
							text: "You has revised the introduction successfully!",
							type: "success",   
							confirmButtonColor: "#DD6B55",   
							confirmButtonText: "确认",   
							closeOnConfirm: false
							});
					}
			});
	}
</script>
</body>
</html>
