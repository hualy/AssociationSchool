<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/11/6
  Time: 12:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="topImage"></div>
<div class="top">
	<p>你好，<span>计算机学生会</span><span class="divide">|</span><a href="personalCenter.jsp" title="">个人中心</a><span class="divide">|</span><a href="../LoginRegister/login.jsp" title="quit">退出</a></p>
</div>
<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navLi">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.jsp"><img src="../images/logo.png"></a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="navLi">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="index.jsp">我的部门</a>
	                <ul class="subli">
	                	<li><a href="index.jsp#departmentIntro" title="">部门介绍</a></li>
	                	<li><a href="index.jsp#departmentMember" title="">部门成员</a></li>
	                </ul>
                </li>
                <li><a href="activityScan.jsp">部门活动</a>
                    <ul class="subli">
                        <li><a href="activityScan.jsp" title="">活动预览</a></li>
                        <li><a href="activityTimeCollection.jsp" title="">时间收集</a></li>
                        <li><a href="activityArrange.jsp" title="">人员安排</a></li>
                        <li><a href="activitySummary.jsp" title="">活动总结</a></li>
                        <li><a href="activityAlbum.jsp" title="">活动相册</a></li>
                        <li><a href="activityReimbursement.jsp" title="">活动报销</a></li>
                    </ul>
                </li>
                <li><a href="meetingRecord.jsp">会议记录</a>
                </li>
                <li><a href="internalConstruction.jsp">内部建设</a>
                    <ul class="subli">
                        <li><a href="internalConstruction.jsp" title="">内部活动</a></li>
                        <li><a href="internalConAlbum.jsp" title="">内建相册</a></li>
                    </ul>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>