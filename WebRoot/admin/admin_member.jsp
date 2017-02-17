<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*,com.xyz.model.*"%>
<html>
<head>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/admin_nav.css">
    <%--<link rel="stylesheet" href="../css/admin_index.css">--%>
    <link rel="stylesheet" href="../css/admin_member.css">
    <title>部门成员</title>
    <%
    	Set<Member> members  = (Set<Member>)session.getAttribute("members");
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
                <div class="contentHeader"><p>部门概况 > 成员介绍</p></div>
                <table>
                    <thead>
                        <tr><th>姓名</th><th>年级专业班级</th><th>手机</th><th>QQ</th><th>宿舍号</th><th>添加到首页成员展示</th></tr>
                    </thead>
                    <tbody>
                    <%
                    	if(members != null){
                    		for(Member m : members){
                    			if(m.getOnshow() == 0){			//判断是否已经在展示
                   	%>
                            <tr><td><%= m.getName() %>></td><td><%= m.getGrade()+m.getMajor()+m.getClasses() %></td><td><%= m.getPhoneNumber() %></td><td><%= m.getQq() %></td><td><%= m.getDormitory() %></td><td><input type="checkbox" name="show" value="<%= m.getId() %>" id="notshow"></td></tr>
                    <%	
                    			}else{
                    %> 				
                    		<tr><td><%= m.getName() %>></td><td><%= m.getGrade()+m.getMajor()+m.getClasses() %></td><td><%= m.getPhoneNumber() %></td><td><%= m.getQq() %></td><td><%= m.getDormitory() %></td><td><input type="checkbox" name="show" value="<%= m.getId() %>" id="showed" checked="checked"></td></tr>
                   	<%
                    			}
                    		}
                    	}
                    %>
                    
                    <tr><td></td><td></td><td></td><td></td><td></td><td><button id="selectAll">全选</button><button id="notSelectAll">全不选</button></td></tr>
                    </tbody>
                </table>
                    <button class="edit" id="showMember">添加展示</button>
                    <button class="edit cancel" id="cancelMember">取消展示</button>
            </div>
        </div>
    </div>
</div>



<script src="../js/jquery-1.11.3.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<%--<script src="../js/adminJS/index.js"></script>--%>
<script src="../js/adminJS/admin_nav.js"></script>
<script src="../js/adminJS/admin_member.js"></script>
</body>
</html>
