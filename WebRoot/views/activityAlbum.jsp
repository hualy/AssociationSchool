<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/11/10
  Time: 19:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/footer.css">
    <link rel="stylesheet" href="../css/activityAlbum.css">
    <link rel="stylesheet" href="../css/theme2-pack0-blue.css">
    <link rel="stylesheet" href="../css/ssi-uploader.css">
    <link rel="stylesheet" href="../css/zzsc.css">
    <title>活动相册</title>
</head>
<body>
    <%@ include file="./header.jsp" %>
    <div class="maincontent">
        <%--顶部图片--%>
        <div class="topImage">
            <img src="../images/topPic5.png" class="img-responsive">
        </div>
        <div class="tab">
            <p>活动后 > 正式活动相册</p>
        </div>
        <div class="row createBtn">
            <button data-target="#createModal" data-toggle="modal" ><span><img src="../images/creat_photogra.png"></span>创建活动相册</button>
        </div>



        <div class="zzsc-container">
            <div class="container">
                <div class="col-md-12">
                    <%--<label>选择相册</label>--%>
                    <select>
                        <%--<option>选择相册</option>--%>
                        <option>IT歌手大赛</option>
                        <option>书香节</option>
                        <option>辩论赛</option>
                        <option>院运会</option>
                        <option>院运会</option>
                    </select>
                    <input type="file" multiple id="ssi-upload"/>
                </div>
            </div>
        </div>



        <div class="container album">
            <div class="row">
                <div class="col-md-4">
                    <div class="photoDiv"  data-target="#photoModal" data-toggle="modal"><img src="../images/activity3.jpg"></div>
                    <div class="photoInfo"><p>院运会</p>&nbsp;&nbsp;|&nbsp;&nbsp;<p>2015.11.10</p></div>
                </div>
                <div class="col-md-4">
                    <div class="photoDiv"  data-target="#photoModal" data-toggle="modal"><img src="../images/activity3.jpg"></div>
                    <div class="photoInfo"><p>院运会</p>&nbsp;&nbsp;|&nbsp;&nbsp;<p>2015.11.10</p></div>
                </div>
                <div class="col-md-4">
                    <div class="photoDiv"  data-target="#photoModal" data-toggle="modal"><img src="../images/activity3.jpg"></div>
                    <div class="photoInfo"><p>院运会</p>&nbsp;&nbsp;|&nbsp;&nbsp;<p>2015.11.10</p></div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="photoDiv"  data-target="#photoModal" data-toggle="modal"><img src="../images/activity3.jpg"></div>
                    <div class="photoInfo"><p>院运会</p>&nbsp;&nbsp;|&nbsp;&nbsp;<p>2015.11.10</p></div>
                </div>
                <div class="col-md-4">
                    <div class="photoDiv"  data-target="#photoModal" data-toggle="modal"><img src="../images/activity3.jpg"></div>
                    <div class="photoInfo"><p>院运会</p>&nbsp;&nbsp;|&nbsp;&nbsp;<p>2015.11.10</p></div>
                </div>
                <div class="col-md-4">
                    <div class="photoDiv"  data-target="#photoModal" data-toggle="modal"><img src="../images/activity3.jpg"></div>
                    <div class="photoInfo"><p>院运会</p>&nbsp;&nbsp;|&nbsp;&nbsp;<p>2015.11.10</p></div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="photoDiv"  data-target="#photoModal" data-toggle="modal"><img src="../images/activity3.jpg"></div>
                    <div class="photoInfo"><p>院运会</p>&nbsp;&nbsp;|&nbsp;&nbsp;<p>2015.11.10</p></div>
                </div>
                <div class="col-md-4">
                    <div class="photoDiv"  data-target="#photoModal" data-toggle="modal"><img src="../images/activity3.jpg"></div>
                    <div class="photoInfo"><p>院运会</p>&nbsp;&nbsp;|&nbsp;&nbsp;<p>2015.11.10</p></div>
                </div>
                <div class="col-md-4">
                    <div class="photoDiv"  data-target="#photoModal" data-toggle="modal"><img src="../images/activity3.jpg"></div>
                    <div class="photoInfo"><p>院运会</p>&nbsp;&nbsp;|&nbsp;&nbsp;<p>2015.11.10</p></div>
                </div>
            </div>
        </div>

            <!-- createModal -->
            <div class="modal fade" id="createModal" tabindex="-1" role="dialog" aria-labelledby="myModal" aria-hidden="true">
                <div class="modal-dialog createAblum">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        </div>
                        <div class="modal-body">
                            <form action="" method="post" accept-charset="utf-8" class="modalForm">
                                <div class="info row">
                                    <label  class=""></label>
                                    <input type="text" name="activityName" value="" placeholder="请输入活动名称">
                                    <label  class=""></label>
                                    <input type="text" name="activityTime" id="activityTime" value="" placeholder="请选择活动时间">
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


            <!--上传 photoModal -->
            <div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="myModal" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        </div>
                        <div class="modal-body">

                            <%--<h4 class="modal-title" id="myModal">Modal title</h4>--%>
                            <form action="" method="post" accept-charset="utf-8" class="modalForm">
                                <div class="info row">
                                    <label for="activityName" class="col-md-4"></label>
                                    <input type="text" name="activityName" value="当前相册——院运会" id="activityName" placeholder="">
                                </div>
                                <div class="preview container">
                                    <div class="row previewImage">
                                        <div class="previewImageone"><img src="../images/activity3.jpg">
                                            <img src="../images/del_photo.png" class="del_photo"></div>
                                        <div class="previewImageone"><img src="../images/activity3.jpg">
                                            <img src="../images/del_photo.png" class="del_photo"></div>
                                        <div class="previewImageone"><img src="../images/activity3.jpg">
                                            <img src="../images/del_photo.png" class="del_photo"></div>
                                        <div class="previewImageone"><img src="../images/activity3.jpg">
                                            <img src="../images/del_photo.png" class="del_photo"></div>
                                    </div>
                                    <div class="row previewImage">
                                        <div class="previewImageone"><img src="../images/activity3.jpg">
                                            <img src="../images/del_photo.png" class="del_photo"></div>
                                        <div class="previewImageone"><img src="../images/activity3.jpg">
                                            <img src="../images/del_photo.png" class="del_photo"></div>
                                        <div class="previewImageone"><img src="../images/activity3.jpg">
                                            <img src="../images/del_photo.png" class="del_photo"></div>
                                        <div class="previewImageone"><img src="../images/activity3.jpg">
                                            <img src="../images/del_photo.png" class="del_photo"></div>
                                    </div>
                                    <div class="row uploadImage">
                                        <img src="../images/uploadbig.png">
                                        <p>点击上传图片</p>
                                    </div>
                                </div>
                            </form>

                        </div>
                    </div>
                </div>
            </div>

            <!--查看 Modal -->
            <div class="modal fade" id="photoModal" tabindex="-1" role="dialog" aria-labelledby="myModal" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content" id="ImageBox">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><img src="../images/cancel_2.png"></span></button>
                        </div>
                        <div class="modal-body previewImagebox" >
                            <a href="#" class="last"><img src="../images/last_pg.png"></a>
                            <div class="previewImageboxer">
                                <img src="../images/activity3.jpg">
                            </div>
                            <a href="#" class="next"><img src="../images/next_pg.png"></a>
                            <div class="clearDiv"></div>
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
    <script src="../js/tgl.0.10.min.js"></script>
    <script src="../js/header.js"></script>
    <script src="../js/activityAlum.js"></script>
    <script src="../js/adminJS/ssi-uploader.js"></script>
</body>
</html>
