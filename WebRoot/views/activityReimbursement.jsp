<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/11/10
  Time: 22:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/footer.css">
    <link rel="stylesheet" href="../css/activityReimbursement.css">
    <link rel="stylesheet" href="../css/theme2-pack0-blue.css">

    <title>活动报销</title>
</head>
<body>
    <%@ include file="./header.jsp" %>
    <div class="maincontent">
    <%--顶部图片--%>
    <div class="topImage">
        <img src="../images/topPic6.png" class="img-responsive">
    </div>
    <div class="tab">
        <p>活动后 > 活动报销</p>
    </div>
    <div class="row createBtn">
        <button  data-target="#createModal" data-toggle="modal" ><span><img src="../images/baoxiao.png"></span>新增报销</button>
    </div>


    <div class="container mainReim">
        <div class="row reimbursementHeader"><p>院运会经费报销</p><img src="../images/edit.png"   data-target="#createModal" data-toggle="modal" ></div>
        <div class="row reimbursementContent">
            <div class="row"><p><span> 1 </span>报销内容</p><p>jdldjfeuroeuijfdskjfkdffdjfkofdskjfkdffdjfkjdkfj</p></div>
            <div class="row"><p><span> 2 </span>报销经费</p><p>jdldjfeuroeuijfdskjfkdffdjfkofdskjfkdffdjfkjdkfj</p></div>
            <div class="row"><p><span> 3 </span>报销人</p><p>jdldjfeuroeuijfdskjfkdffdjfkofdskjfkdffdjfkjdkfj</p></div>
            <div class="row"><p><span> 4 </span>报销时间</p><p>jdldjfeuroeuijfdskjfkdffdjfkofdskjfkdffdjfkjdkfj</p></div>
        </div>
    </div><div class="container mainReim">
        <div class="row reimbursementHeader"><p>院运会经费报销</p><img src="../images/edit.png"   data-target="#createModal" data-toggle="modal" ></div>
        <div class="row reimbursementContent">
            <div class="row"><p><span> 1 </span>报销内容</p><p>jdldjfeuroeuijfdskjfkdffdjfkofdskjfkdffdjfkjdkfj</p></div>
            <div class="row"><p><span> 2 </span>报销经费</p><p>jdldjfeuroeuijfdskjfkdffdjfkofdskjfkdffdjfkjdkfj</p></div>
            <div class="row"><p><span> 3 </span>报销人</p><p>jdldjfeuroeuijfdskjfkdffdjfkofdskjfkdffdjfkjdkfj</p></div>
            <div class="row"><p><span> 4 </span>报销时间</p><p>jdldjfeuroeuijfdskjfkdffdjfkofdskjfkdffdjfkjdkfj</p></div>
        </div>
    </div>
    <div class="container mainReim">
        <div class="row reimbursementHeader"><p>院运会经费报销</p><img src="../images/edit.png"   data-target="#createModal" data-toggle="modal" ></div>
        <div class="row reimbursementContent">
            <div class="row"><p><span> 1 </span>报销内容</p><p>jdldjfeuroeuijfdskjfkdffdjfkofdskjfkdffdjfkjdkfj</p></div>
            <div class="row"><p><span> 2 </span>报销经费</p><p>jdldjfeuroeuijfdskjfkdffdjfkofdskjfkdffdjfkjdkfj</p></div>
            <div class="row"><p><span> 3 </span>报销人</p><p>jdldjfeuroeuijfdskjfkdffdjfkofdskjfkdffdjfkjdkfj</p></div>
            <div class="row"><p><span> 4 </span>报销时间</p><p>jdldjfeuroeuijfdskjfkdffdjfkofdskjfkdffdjfkjdkfj</p></div>
        </div>
    </div>
    <div class="container mainReim">
        <div class="row reimbursementHeader"><p>院运会经费报销</p><img src="../images/edit.png"   data-target="#createModal" data-toggle="modal" ></div>
        <div class="row reimbursementContent">
            <div class="row"><p><span> 1 </span>报销内容</p><p>jdldjfeuroeuijfdskjfkdffdjfkofdskjfkdffdjfkjdkfj</p></div>
            <div class="row"><p><span> 2 </span>报销经费</p><p>jdldjfeuroeuijfdskjfkdffdjfkofdskjfkdffdjfkjdkfj</p></div>
            <div class="row"><p><span> 3 </span>报销人</p><p>jdldjfeuroeuijfdskjfkdffdjfkofdskjfkdffdjfkjdkfj</p></div>
            <div class="row"><p><span> 4 </span>报销时间</p><p>jdldjfeuroeuijfdskjfkdffdjfkofdskjfkdffdjfkjdkfj</p></div>
        </div>
    </div>


    <!-- createModal -->
    <div class="modal fade" id="createModal" tabindex="-1" role="dialog" aria-labelledby="myModal" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                </div>
                <div class="modal-body">

                    <form action="" method="post" accept-charset="utf-8" class="modalForm">
                        <div class="row">
                            <label >报销经费</label><input type="text" name="reimMoney" value="" id="reimMoney" class="required">
                            <label >报销时间</label><input type="text" name="reimTime" id="reimTime" value="" placeholder="选择报销时间" class="required">
                        </div>
                        <div class="row">
                            <label class="textareaLabel" >报销内容</label><textarea id="reimContent" class=""required></textarea>
                        </div>
                    </form>

                </div>
                <div class="modal-footer">
                    <button type="button" class="cancelBtn" data-dismiss="modal">取消</button>
                    <button type="button" class="submitBtn" id="reimBtn">提交</button>
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
    <script src="../js/tgl.0.10.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/header.js"></script>
    <script src="../js/activityReimbursement.js"></script>

</body>
</html>
