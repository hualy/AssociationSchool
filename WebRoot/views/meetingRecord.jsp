<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/11/11
  Time: 22:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/footer.css">
    <link rel="stylesheet" href="../css/meetingRecord.css">
    <link rel="stylesheet" href="../css/theme2-pack0-blue.css">
    <title>会议记录</title>
</head>
<body>

    <%@ include file="./header.jsp" %>
    <div class="maincontent">
        <%--顶部图片--%>
        <div class="topImage">
            <img src="../images/topPic7.png" class="img-responsive">
        </div>
        <div class="tab">
            <p>会议记录</p>
        </div>
        <div class="row createBtn">
            <button data-target="#createModal" data-toggle="modal" ><span><img src="../images/record.png"></span>上传会议记录</button>
        </div>


        <div class="recordContent">
            <div class="recordTip"><p>院运会相关工作第一次会议记录</p><img src="../images/edit.png"   data-target="#createModal" data-toggle="modal" ></div>
            <div class="recordHeader"><p>会议记录内容</p></div>
            <div class="recordContenter">&nbsp;&nbsp;&nbsp;&nbsp;我为能在学生会工作感到荣幸，这或许在其他不在学生会的同学看来没什么，但是在这里面学到的东西在以后的工作中肯定是会用的上的，不能说有决定性的作用，但也是为人处事不可缺少的。要做好事，先学做人！学生会就是这样一个平台，能让人变得更好的平台。虽然有时会有烦恼，有时少不了抱怨，但我还是热爱这份工作。一群心怀梦想的年轻人，一份大学时代的职业，我们的工作是服务与创造，我们的薪水是友情与成长。以奋发向上的木棉精神，携手共进！</div>
            <div class="recordTa"><label>开会时间/地点&nbsp;&nbsp;：</label><p>2016.11.11 东三</p></div>
            <div class="recordTu"><label>记录时间/记录者&nbsp;&nbsp;：</label><p>2016.11.12 红彤彤</p></div>
            <div class="clearDiv"></div>
        </div>
        <div class="recordContent">
                <div class="recordTip"><p>院运会相关工作第一次会议记录</p><img src="../images/edit.png"   data-target="#createModal" data-toggle="modal" ></div>
                <div class="recordHeader"><p>会议记录内容</p></div>
                <div class="recordContenter">&nbsp;&nbsp;&nbsp;&nbsp;我为能在学生会工作感到荣幸，这或许在其他不在学生会的同学看来没什么，但是在这里面学到的东西在以后的工作中肯定是会用的上的，不能说有决定性的作用，但也是为人处事不可缺少的。要做好事，先学做人！学生会就是这样一个平台，能让人变得更好的平台。虽然有时会有烦恼，有时少不了抱怨，但我还是热爱这份工作。一群心怀梦想的年轻人，一份大学时代的职业，我们的工作是服务与创造，我们的薪水是友情与成长。以奋发向上的木棉精神，携手共进！</div>
                <div class="recordTa"><label>开会时间/地点&nbsp;&nbsp;：</label><p>2016.11.11 东三</p></div>
                <div class="recordTu"><label>记录时间/记录者&nbsp;&nbsp;：</label><p>2016.11.12 红彤彤</p></div>
                <div class="clearDiv"></div>
            </div>
        <div class="recordContent">
                <div class="recordTip"><p>院运会相关工作第一次会议记录</p><img src="../images/edit.png"   data-target="#createModal" data-toggle="modal" ></div>
                <div class="recordHeader"><p>会议记录内容</p></div>
                <div class="recordContenter">&nbsp;&nbsp;&nbsp;&nbsp;我为能在学生会工作感到荣幸，这或许在其他不在学生会的同学看来没什么，但是在这里面学到的东西在以后的工作中肯定是会用的上的，不能说有决定性的作用，但也是为人处事不可缺少的。要做好事，先学做人！学生会就是这样一个平台，能让人变得更好的平台。虽然有时会有烦恼，有时少不了抱怨，但我还是热爱这份工作。一群心怀梦想的年轻人，一份大学时代的职业，我们的工作是服务与创造，我们的薪水是友情与成长。以奋发向上的木棉精神，携手共进！</div>
                <div class="recordTa"><label>开会时间/地点&nbsp;&nbsp;：</label><p>2016.11.11 东三</p></div>
                <div class="recordTu"><label>记录时间/记录者&nbsp;&nbsp;：</label><p>2016.11.12 红彤彤</p></div>
                <div class="clearDiv"></div>
            </div>
            <!-- createModal -->
            <div class="modal fade" id="createModal" tabindex="-1" role="dialog" aria-labelledby="myModal" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        </div>
                        <div class="modal-body">

                            <%--<h4 class="modal-title" id="myModal">Modal title</h4>--%>
                            <form action="" method="post" accept-charset="utf-8" class="modalForm">
                                <div class="row">
                                    <label >开会时间</label><input type="text" name="meetingTime" id="meetingTime" value="" placeholder="选择会议时间" class="required">
                                    <label >开会地点</label><input type="text" name="meetingLocation" id="meetingLocation" value="" class="required">
                                    <%--<label >记录者</label><input type="text" name="reimPerson" value="">--%>
                                </div>
                                <div class="row">
                                    <label class="textareaLabel">开会内容</label><textarea id="meetingContent" class="required"></textarea>
                                </div>
                            </form>

                        </div>
                        <div class="modal-footer">
                            <button type="button" class="cancelBtn" data-dismiss="modal">取消</button>
                            <button type="button" class="submitBtn" id="meetingBtn">上传</button>
                        </div>
                    </div>
                </div>
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

    <%@ include file="./footer.jsp" %>
    <script src="../js/jquery-1.11.3.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/header.js"></script>
    <script src="../js/tgl.0.10.min.js"></script>
    <script src="../js/meetingRecord.js"></script>

</body>
</html>
