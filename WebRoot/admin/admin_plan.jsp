<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/11/12
  Time: 14:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/admin_nav.css">
    <link rel="stylesheet" href="../css/admin_plan.css">
    <link rel="stylesheet" href="../css/theme2-pack0-blue.css">

    <title>人员安排</title>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="left">
            <%@ include file="./admin_nav.jsp" %>
        </div>
        <div  class="right">
            <div class="header">
                <div><p class="headerName">你好，宣策部</p><p>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="../LoginRegister/loginDepart.jsp">退出</a></p></div>
                <p class="changeEmail" data-target="#changeEmailModal" data-toggle="modal">修改部门邮箱</p>
            </div>

            <div class="content">
                <div class="contentHeader"><p>部门活动 > 人员安排</p></div>
                <div class="contentPart1"><p>空闲课表</p></div>
                <table class="courseTable">
                    <thead>
                    <tr><th>课表名</th><th>活动名</th><th>活动时间</th><th>将空闲时间课表展示</th></tr>
                    </thead>
                    <tbody>
                    <tr><td>课表一</td><td>院运会</td><td>2016.11.11-2016.11.16</td><td><input type="checkbox" name="course"></td></tr>
                    <tr><td>课表一</td><td>IT歌手</td><td>2016.11.11-2016.11.16</td><td><input type="checkbox" name="course"></td></tr>
                    <tr><td>课表一</td><td>辩论赛</td><td>2016.11.11-2016.11.16</td><td><input type="checkbox" name="course"></td></tr>
                    </tbody>
                </table>
                <button class="edit create" data-target="#createCourseModal" data-toggle="modal">新建课表</button>
                <button class="edit show" id="showCourse">显示课表</button>
                <button class="edit delete" id="deleteCourse">删除课表</button>


                <div class="contentPart2"><p>人员安排</p></div>
                <table class="planTable">
                    <thead>
                    <tr><th>活动名</th><th>时间段（节）</th><th>工作</th><th>人员分配</th><th>将人员安排展示</th></tr>
                    </thead>
                    <tbody>
                    <tr><td>院运会</td><td>1-2</td><td>搬物资</td><td class="memberPlan">红彤彤 红彤彤 红彤彤红彤彤 红彤彤彤 红彤彤 红彤彤红彤彤 红彤彤彤 红彤彤 红彤彤红彤彤 红彤彤 红彤彤红彤彤 红彤彤 红彤彤</td><td><input type="checkbox" name="task"></td></tr>
                    <tr><td>院运会</td><td>1-2</td><td>搬物资</td><td>红彤彤 红彤彤 红彤彤</td><td><input type="checkbox" name="task"></td></tr>
                    <tr><td></td><td></td><td></td><td></td><td><button id="selectAll">全选</button><button id="notSelectAll">全不选</button></td></tr>

                    </tbody>
                </table>
                <button class="edit create" data-target="#createTaskModal" data-toggle="modal">新建任务</button>
                <button class="edit show" id="showTask">显示任务</button>
                <button class="edit delete" id="deleteTask">删除任务</button>
            </div>
        </div>
    </div>
</div>

<!-- createCourseModal -->
<div class="modal fade" id="createCourseModal" tabindex="-1" role="dialog" aria-labelledby="myModal" aria-hidden="true">
    <div class="modal-dialog courseDialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body">
                <form action="" method="post" accept-charset="utf-8" class="modalForm" id="courseForm">
                    <div class="row editform">
                        <div><label >课表名</label><input type="text" name="courseName" value="" class="required" id="courseName" ></div>
                        <div><label >活动名</label>
                            <%--<input type="text" name="activityName" value="">--%>
                            <select>
                                <option>院运会</option>
                                <option>IT歌手大赛</option>
                                <option>辩论赛</option>
                                <option>书香节</option>
                                <option>总结大会</option>
                            </select>
                        </div>
                        <div class="timeInput"><label >活动时间</label><input type="text" name="activityTime" value="" class="timeInput required" id="activityTimeLast"><p>--</p><input type="text" name="activityTime" value="" class="timeInput required" id="activityTimeNext"></div>

                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="cancelBtn" data-dismiss="modal">取消</button>
                <button type="button" class="submitBtn" id="courseBtn">提交</button>
            </div>
        </div>
    </div>
</div>
<%--createTaskModal--%>
<div class="modal fade" id="createTaskModal" tabindex="-1" role="dialog" aria-labelledby="myModal" aria-hidden="true">
    <div class="modal-dialog taskDialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body">
                <form action="" method="post" accept-charset="utf-8" class="modalForm" id="taksForm">
                    <div class="row taskform">
                        <div><label >工作名称</label><input type="text" name="taskName" value="" id="taskName" class="required" ></div>
                        <div><label >工作时间</label>
                            <select>
                                <option>1-2节</option>
                                <option>3-4节</option>
                                <option>5-5节</option>
                                <option>6-7节</option>
                                <option>8-9节</option>
                                <option>10-12节</option>
                            </select>
                        </div>
                        <p>有空闲的人员</p>
                        <table>
                            <thead></thead>
                            <tbody>
                            <tr><td>红彤彤</td><td><input type="checkbox"></td></tr>
                            <tr><td>红彤彤</td><td><input type="checkbox"></td></tr>
                            <tr><td>红彤彤</td><td><input type="checkbox"></td></tr>
                            <tr><td>红彤彤</td><td><input type="checkbox"></td></tr>
                            <tr><td>红彤彤</td><td><input type="checkbox"></td></tr>
                            <tr><td>红彤彤</td><td><input type="checkbox"></td></tr>
                            </tbody>
                        </table>
                        <div class="buttonDiv">
                            <button type="button" class="last">上一页</button>
                            <button type="button" class="next">下一页</button>
                        </div>


                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="cancelBtn" data-dismiss="modal">取消</button>
                <button type="button" class="submitBtn" id="taksBtn">提交</button>
            </div>
        </div>
    </div>
</div>




<script src="../js/jquery-1.11.3.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/adminJS/edit.js"></script>
<script src="../js/adminJS/admin_nav.js"></script>
<script src="../js/tgl.0.10.min.js"></script>
<script src="../js/adminJS/admin_plan.js"></script>
</body>
</html>
