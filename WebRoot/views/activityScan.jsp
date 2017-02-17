<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/11/9
  Time: 17:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/footer.css">
    <link rel="stylesheet" href="../css/activityScan.css">
    <title>活动预览</title>
</head>
<body>
    <%@ include file="./header.jsp" %>
    <div class="maincontent">
    <%--顶部图片--%>
    <div class="topImage">
        <img src="../images/topPic1.png" class="img-responsive">
    </div>
    <div class="tab">
        <p>活动预览 > 当前活动</p>
    </div>
    <%--时间轴--%>
    <div id="timeLine">
        <img src="../images/line.png" id="timeLiner">
        <div  class="active-1">
            <img src="../images/time1.png" >
            <div class="theme1">院运会</div>
            <div class="time1">2016.10.23</div>
        </div>
        <div class="active-3">
            <img src="../images/time3.png" >
            <div class="theme2">辩论赛</div>
            <div class="time2">2016.10.30</div>
        </div>
        <div class="active-2">
            <img src="../images/time2.png" >
            <div class="theme1">IT决赛</div>
            <div class="time1">2016.11.11</div>
        </div>
        <div class="active-5">
            <img src="../images/time4.png" >
            <div class="theme2 testcontent1">辩论赛<br>决赛</div>
            <div class="time2">2016.11.20</div>
        </div>
        <div class="active-4">
            <img src="../images/time1.png" >
            <div class="theme1">书香节</div>
            <div class="time1">2016.12.25</div>
        </div>
        <div class="active-6">
            <img src="../images/time3.png" >
            <div class="theme2 testcontent">总结大会</div>
            <div class="time2">2016.12.10</div>
        </div>
    </div>
    <%--往期活动--%>
    <div class="tab">
        <p>活动预览 > 往期活动</p>
    </div>
    <div class="oldActivity row">
        <div class="timeInfo col-md-3">
            <p>毕业晚会</p>
            <p>2015.11.20</p>
        </div>
        <div class="activityImage col-md-4">
            <img src="../images/activity1.png" class="img-responsive">
        </div>
        <div class="activitySummary col-md-5">
            <p class="activitySummaryHeader">活动总结</p>
            <p>Lorem ipsum dolor sit amet,consectetur adipiscing elit. Aenean Lorem ipsum dLorem ipsum dolor sit amet,consectetur adipiscing elit. Aenean Lorem ipsum dolor sit amet,consectetur adipisolor sit amet,consectetur adipiscing elit. Aenean Lorem ipsum dolor sit amet,consectetur adipiscing elit. Aenean Lorem ipsum dolor sit amet,consectetur adipiscing elit. Aenean Lorem ipsum dolor sit amet,consectetur adipiscing elit. Aenean Lorem ipsum dolor sit amet,consectetur adipiscing elit. Aenean
            </p>
        </div>
    </div>
    <div class="oldActivity row">
        <div class="timeInfo col-md-3">
            <p>毕业晚会</p>
            <p>2015.11.20</p>
        </div>
        <div class="activityImage col-md-4">
            <img src="../images/activity2.png" class="img-responsive">
        </div>
        <div class="activitySummary col-md-5">
            <p class="activitySummaryHeader">活动总结</p>
            <p>Lum dLoremor si or sit amet,consectetur atetur adipiscing elit. Aenean
            </p>
        </div>
    </div>
    <div class="oldActivity row">
        <div class="timeInfo col-md-3">
            <p>毕业晚会</p>
            <p>2015.11.20</p>
        </div>
        <div class="activityImage col-md-4">
            <img src="../images/activity1.png" class="img-responsive">
        </div>
        <div class="activitySummary col-md-5">
            <p class="activitySummaryHeader">活动总结</p>
            <p>Lorem ipsuum dolor sit amet,conisolor sit amet,consectetur adipiscing elit. Aenean Lorem ipsum dolor sit amet,consectetur adipiscing elit. Aenean Lorem ipsum dolor sit amet,consectetur adipiscing elit. Aenean Lorem ipsum dolor sit amet,consectetur adipiscing elit. Aenean Lorem ipsum dolor sit amet,consectetur adipiscing elit. Aenean
            </p>
        </div>
    </div>
    <div class="oldActivity row">
        <div class="timeInfo col-md-3">
            <p>毕业晚会</p>
            <p>2015.11.20</p>
        </div>
        <div class="activityImage col-md-4">
            <img src="../images/activity3.jpg" class="img-responsive">
        </div>
        <div class="activitySummary col-md-5">
            <p class="activitySummaryHeader">活动总结</p>
            <p>Lorem ipsum dol dolor sit ametsolor sit amet,consectetur adipiscing elit. Aenean Lorem ipsum dolor sit amet,consectetur adipiscing elit. Aenean Lorem ipsum dolor sit amet,consectetur adipiscing elit. Aenean Lorem ipsum dolor sit amet,consectetur adipiscing elit. Aenean Lorem ipsum dolor sit amet,consectetur adipiscing elit. Aenean
            </p>
        </div>
    </div>

    </div>
    <%@ include file="./footer.jsp" %>
    <script src="../js/jquery-1.11.3.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/header.js"></script>
</body>
</html>
