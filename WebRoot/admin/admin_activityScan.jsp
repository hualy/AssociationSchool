<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*,com.xyz.model.*"%>
<html>
<head>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/admin_nav.css">
    <link rel="stylesheet" href="../css/admin_activityScan.css">
    <link rel="stylesheet" href="../css/theme2-pack0-blue.css">
    <title>活动预览</title>
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
                <div class="contentHeader"><p>部门活动 > 活动预览</p></div>
                <table>
                    <thead>
                    <tr><th>活动名称</th><th>活动时间</th><th>添加到首页活动预览展示</th></tr>
                    </thead>
                    <tbody>
                    <tr><td>院运会</td><td>2016.11.17</td><td><input type="checkbox"></td></tr>
                    <tr><td>院运会</td><td>2016.11.17</td><td><input type="checkbox"></td></tr>
                    <tr><td>院运会</td><td>2016.11.17</td><td><input type="checkbox"></td></tr>
                    <tr><td>院运会</td><td>2016.11.17</td><td><input type="checkbox"></td></tr>
                    <tr><td>院运会</td><td>2016.11.17</td><td><input type="checkbox"></td></tr>
                    <tr><td>院运会</td><td>2016.11.17</td><td><input type="checkbox"></td></tr>
                    <tr><td>院运会</td><td>2016.11.17</td><td><input type="checkbox"></td></tr>
                    <tr><td>院运会</td><td>2016.11.17</td><td><input type="checkbox"></td></tr>
                    <tr><td>院运会</td><td>2016.11.17</td><td><input type="checkbox"></td></tr>
                    </tbody>

                </table>
                <button class="edit setCurrent" id="setCurrent">设为当前活动</button>
                <button class="edit create" data-target="#createActivityModal" data-toggle="modal">添加活动</button>
                <button class="edit delete" id="deleteActivity">删除活动</button>
            </div>
        </div>
    </div>
</div>

<!-- createActivityModal -->
<div class="modal fade" id="createActivityModal" tabindex="-1" role="dialog" aria-labelledby="myModal" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body">
                <form action="" method="post" accept-charset="utf-8" class="modalForm">
                    <div class="row editform">
                        <div><label >活动名</label><input type="text" name="activityName" value="" class="required" id="activityName"></div>
                        <div class="timeInput"><label >活动时间</label><input type="text" name="activityTime" value="" class="timeInput required" id="activityTimeLast"><p>--</p><input type="text" name="activityTime" value="" class="timeInput required" id="activityTimeNext"></div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="cancelBtn" data-dismiss="modal">取消</button>
                <button type="button" class="submitBtn" id="send">提交</button>
            </div>
        </div>
    </div>
</div>

<script src="../js/jquery-1.11.3.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/adminJS/admin_nav.js"></script>
<script src="../js/tgl.0.10.min.js"></script>
<script src="../js/adminJS/admin_activityScan.js"></script>

</body>
</html>
