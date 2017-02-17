<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/11/12
  Time: 12:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/footer.css">
    <link rel="stylesheet" href="../css/personCenter.css">
    <title>个人中心</title>
</head>
<body>
    <%@ include file="./header.jsp" %>
    <div class="maincontent">
    <%--顶部图片--%>
    <div class="topImage">
        <img src="../images/topPic9.png" class="img-responsive">
    </div>
    <div class="tab">
        <p>个人中心</p>
    </div>
    <div class="personCenter">
            <img src="../images/editperson.png" class="edit" data-target="#createModal" data-toggle="modal" >
            <div class="personImage">
                <img src="../images/avatar.png">
                <div class="personName"><p>红彤彤</p></div>

            </div>
            <div class="personInfo">
                <div class="personInformation">
                    <span>
                        <img src="../images/card.png">
                        <p>软件工程3班</p>
                    </span>
                    <%--<span>--%>
                        <%--<img src="../images/stu_no.png">--%>
                        <%--<p>3114000000</p>--%>
                    <%--</span>--%>
                    <span>
                        <img src="../images/phone_w.png">
                        <p>11111111111</p>
                    </span>
                    <span>
                        <img src="../images/QQ_w.png">
                        <p>123123</p>
                    </span>
                    <span>
                        <img src="../images/location.png">
                        <p>西三747</p>
                    </span>
                </div>
            </div>
            
        </div>

        <!-- editModal -->
        <div class="modal fade" id="createModal" tabindex="-1" role="dialog" aria-labelledby="myModal" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    </div>
                    <div class="modal-body">

                        <%--<h4 class="modal-title" id="myModal">Modal title</h4>--%>
                        <form action="" method="post" accept-charset="utf-8" class="modalForm">
                            <div class="row editform">
                                <div class="col-md-6">
                                    <label>头像</label>
                                    <img src="../images/avatar.png">
                                    <img src="../images/uploadbig.png">
                                    <p class="changeImage">更换头像</p>
                                </div>
                                <div class="col-md-6">
                                    <div><label >年级</label><input type="text" name="reimGrade" value=""></div>
                                    <div><label >专业</label><input type="text" name="reimMajor" value=""></div>
                                    <div><label >班级</label><input type="text" name="reimClass" value=""></div>
                                    <div><label >手机号</label><input type="text" name="reimMoney" value=""></div>
                                    <div><label >QQ号</label><input type="text" name="reimTime" value=""></div>
                                    <div><label >宿舍号</label><input type="text" name="reimPerson" value=""></div>
                                </div>
                            </div>
                        </form>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="cancelBtn" data-dismiss="modal">取消</button>
                        <button type="button" class="submitBtn">提交</button>
                    </div>
                </div>
            </div>
        </div>




    </div>
    <%@ include file="./footer.jsp" %>
    <script src="../js/jquery-1.11.3.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/header.js"></script>
</body>
</html>
