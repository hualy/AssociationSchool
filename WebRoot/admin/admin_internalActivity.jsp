<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/admin_nav.css">
    <link rel="stylesheet" href="../css/admin_internalActivity.css">
    <link rel="stylesheet" href="../css/theme2-pack0-blue.css">
    <title>内建总结</title>
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
                <div class="contentHeader"><p>内部建设 > 活动总结</p></div>
                <button class="edit createOldActivity" data-target="#createActivityModal" data-toggle="modal">添加活动</button>
                <div class="ActivityContent">
                    <div class="activityHeader">
                        <p class="ActivityName">与某某部门联谊</p>
                        <p class="ActivityTime">2016.11.12</p>
                        <p class="ActivityTip">地点</p>
                        <button>删除</button>
                        <button>双击可编辑</button>
                    </div>
                    <div class="divElement">我为能在学生会工作感到荣幸，这或许在其他不在学生会的同学看来没什么，但是在这里面学到的东西在以后的工作中肯定是会用的上的，不能说有决定性的作用，但也是为人处事不可缺少的。要做好事，先学做人！学生会就是这样一个平台，能让人变得更好的平台。虽然有时会有烦恼，有时少不了抱怨，但我还是热爱这份工作。一群心怀梦想的年轻人，一份大学时代的职业，我们的工作是服务与创造，我们的薪水是友情与成长。以奋发向上的木棉精神，携手共进！</div>
                </div>
                <div class="ActivityContent">
                    <div class="activityHeader">
                        <p class="ActivityName">与某某部门联谊</p>
                        <p class="ActivityTime">2016.11.12</p>
                        <p class="ActivityTip">地点</p>
                        <button>删除</button>
                        <button>双击可编辑</button>
                    </div>
                    <div class="divElement">我为能在学生会工作感到荣幸，这或许在其他不在学生会的同学看来没什么，但是在这里面学到的东西在以后的工作中肯定是会用的上的，不能说有决定性的作用，但也是为人处事不可缺少的。要做好事，先学做人！学生会就是这样一个平台，能让人变得更好的平台。虽然有时会有烦恼，有时少不了抱怨，但我还是热爱这份工作。一群心怀梦想的年轻人，一份大学时代的职业，我们的工作是服务与创造，我们的薪水是友情与成长。以奋发向上的木棉精神，携手共进！</div>
                </div>
                <div class="ActivityContent">
                    <div class="activityHeader">
                        <p class="ActivityName">与某某部门联谊</p>
                        <p class="ActivityTime">2016.11.12</p>
                        <p class="ActivityTip">地点</p>
                        <button>删除</button>
                        <button>双击可编辑</button>
                    </div>
                    <div class="divElement">我为能在学生会工作感到荣幸，这或许在其他不在学生会的同学看来没什么，但是在这里面学到的东西在以后的工作中肯定是会用的上的，不能说有决定性的作用，但也是为人处事不可缺少的。要做好事，先学做人！学生会就是这样一个平台，能让人变得更好的平台。虽然有时会有烦恼，有时少不了抱怨，但我还是热爱这份工作。一群心怀梦想的年轻人，一份大学时代的职业，我们的工作是服务与创造，我们的薪水是友情与成长。以奋发向上的木棉精神，携手共进！</div>
                </div>
                <div class="ActivityContent">
                    <div class="activityHeader">
                        <p class="ActivityName">与某某部门联谊</p>
                        <p class="ActivityTime">2016.11.12</p>
                        <p class="ActivityTip">地点</p>
                        <button>删除</button>
                        <button>双击可编辑</button>
                    </div>
                    <div class="divElement">我为能在学生会工作感到荣幸，这或许在其他不在学生会的同学看来没什么，但是在这里面学到的东西在以后的工作中肯定是会用的上的，不能说有决定性的作用，但也是为人处事不可缺少的。要做好事，先学做人！学生会就是这样一个平台，能让人变得更好的平台。虽然有时会有烦恼，有时少不了抱怨，但我还是热爱这份工作。一群心怀梦想的年轻人，一份大学时代的职业，我们的工作是服务与创造，我们的薪水是友情与成长。以奋发向上的木棉精神，携手共进！</div>
                </div>


                <%--分页--%>
                <div class="bottomNav">
                    <nav>
                        <ul class="pagination">
                            <li>
                                <a href="#" aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                </a>
                            </li>
                            <li><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                            <li><a href="#">6</a></li>
                            <li><a href="#">7</a></li>
                            <li><a href="#">8</a></li>
                            <li>
                                <a href="#" aria-label="Next">
                                    <span aria-hidden="true">&raquo;</span>
                                </a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- createActivityModal -->
<div class="modal fade" id="createActivityModal" tabindex="-1" role="dialog" aria-labelledby="myModal" aria-hidden="true">
    <div class="modal-dialog internalDialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body">
                <form action="" method="post" accept-charset="utf-8" class="modalForm">
                    <div class="row editform">
                        <div><label >活动名称</label><input type="text" name="activityName" value="" id="activityName" class="required" ></div>
                        <div><label >活动地点</label><input type="text" name="activityLocation" value="" id="activityLocation" class="required"></div>
                        <div class="timeInput"><label >活动时间</label><input type="text" name="activityTime" value="" class="timeInput" id="activityTimeLast"><p>--</p><input type="text" name="activityTime" value="" class="timeInput" id="activityTimeNext"></div>
                        <div><label >活动总结</label><textarea id="activitySummary" class="required"></textarea></div>

                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="cancelBtn" data-dismiss="modal">取消</button>
                <button type="button" class="submitBtn" id="internalBtn">提交</button>
            </div>
        </div>
    </div>
</div>

<script src="../js/jquery-1.11.3.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/adminJS/edit.js"></script>
<script src="../js/adminJS/admin_nav.js"></script>
<script src="../js/tgl.0.10.min.js"></script>
<script src="../js/adminJS/admin_internalActivity.js"></script>


</body>
</html>
