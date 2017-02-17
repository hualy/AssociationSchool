<%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/footer.css">

    <link rel="stylesheet" href="../css/index.css">

    <title>首页</title>
  </head>
  <body style="margin: 0">
  <%@ include file="./header.jsp" %>
  <div class="maincontent">
    <div id="carousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#carousel" data-slide-to="0" class="active"></li>
        <li data-target="#carousel" data-slide-to="1"></li>
        <li data-target="#carousel" data-slide-to="2"></li>
      </ol>

      <!-- Wrapper for slides -->
      <div class="carousel-inner" role="listbox">
        <div class="item active">
          <img src="../images/pic1.png" alt="...">
        </div>
        <div class="item">
          <img src="../images/pic2.png" alt="...">
        </div>
        <div class="item">
          <img src="../images/pic3.png" alt="...">
        </div>
      </div>
    </div>
    <div id="divider2">部门介绍</div>
    <p class="tip">Department Introduction</p>
      <div class="logodepartment">
        <img src="../images/department.png" alt="" class="img-responsive">
      </div>
      <p class="departmentName">宣传策划部</p>
      <div class="container">
          <div class="row intro" id="departmentIntro">
              <div class="introheader">
                <p class="introName">部门介绍</p>
              </div>
              <div class="introcontent">
                Lorem ipsum dolor sit amet,consectetur adipiscing elit. Aenean Lorem ipsum dolor sit amet,consectetur adipiscing elit. Aenean Lorem ipsum dolor sit amet,consectetur adipiscing elit. Aenean Lorem ipsum dolor sit amet,consectetur adipiscing elit. Aenean Lorem ipsum dolor sit amet,consectetur adipiscing elit. Aenean Lorem ipsum dolor sit amet,consectetur adipiscing elit. Aenean 
              </div>
          </div>
          <div class="row intro" id="departmentMember">
              <div class="introheader">
                  <p class="introName">部门成员</p>
              </div>
              <div class="introMember">
                  <div class="grade">
                    <p>16级</p>
                  </div>
                  <div class="gradeContent">
                      <div class="row card">
                          <div class="col-md-3">
                              <img src="../images/activity3.jpg" class="peopleImage img-responsive">
                              <div class="information">
                                  <p class="memberName">红彤彤</p>
                                  <p class="menberClass">16级网络1班</p>
                              </div>
                              <div class="detailInformation">
                                  <p><span><img src="../images/phone.png"></span>12345678909</p>
                                  <p><span><img src="../images/QQ.png"></span>213242243</p>
                                  <p><span><img src="../images/home.png"></span>西二302</p>
                              </div>
                          </div>
                          <div class="col-md-3">
                              <img src="../images/people.png" class="peopleImage img-responsive">
                              <div class="information">
                                  <p class="memberName">红彤彤</p>
                                  <p class="menberClass">16级网络1班</p>
                              </div>
                              <div class="detailInformation">
                                  <p><span><img src="../images/phone.png" ></span>12345678909</p>
                                  <p><span><img src="../images/QQ.png"  ></span>213242243</p>
                                  <p><span><img src="../images/home.png" ></span>西二302</p>
                              </div>
                          </div>
                          <div class="col-md-3">
                              <img src="../images/people.png" class="peopleImage img-responsive">
                              <div class="information">
                                  <p class="memberName">红彤彤</p>
                                  <p class="menberClass">16级网络1班</p>
                              </div>
                              <div class="detailInformation">
                                  <p><span><img src="../images/phone.png"></span>12345678909</p>
                                  <p><span><img src="../images/QQ.png" ></span>213242243</p>
                                  <p><span><img src="../images/home.png"></span>西二302</p>
                              </div>
                          </div>
                          <div class="col-md-3">
                              <img src="../images/people.png" class="peopleImage img-responsive">
                              <div class="information">
                                  <p class="memberName">红彤彤</p>
                                  <p class="menberClass">16级网络1班</p>
                              </div>
                              <div class="detailInformation">
                                  <p><span><img src="../images/phone.png"></span>12345678909</p>
                                  <p><span><img src="../images/QQ.png" ></span>213242243</p>
                                  <p><span><img src="../images/home.png"></span>西二302</p>
                              </div>
                          </div>
                      </div>
                      <div class="row card">
                          <div class="col-md-3">
                              <img src="../images/people.png" class="peopleImage img-responsive">
                              <div class="information">
                                  <p class="memberName">红彤彤</p>
                                  <p class="menberClass">16级网络1班</p>
                              </div>
                              <div class="detailInformation">
                                  <p><span><img src="../images/phone.png"></span>12345678909</p>
                                  <p><span><img src="../images/QQ.png" ></span>213242243</p>
                                  <p><span><img src="../images/home.png"></span>西二302</p>
                              </div>
                          </div>
                          <div class="col-md-3">
                              <img src="../images/people.png" class="peopleImage img-responsive">
                              <div class="information">
                                  <p class="memberName">红彤彤</p>
                                  <p class="menberClass">16级网络1班</p>
                              </div>
                              <div class="detailInformation">
                                  <p><span><img src="../images/phone.png"></span>12345678909</p>
                                  <p><span><img src="../images/QQ.png" ></span>213242243</p>
                                  <p><span><img src="../images/home.png"></span>西二302</p>
                              </div>
                          </div>
                          <div class="col-md-3">
                              <img src="../images/people.png" class="peopleImage img-responsive">
                              <div class="information">
                                  <p class="memberName">红彤彤</p>
                                  <p class="menberClass">16级网络1班</p>
                              </div>
                              <div class="detailInformation">
                                  <p><span><img src="../images/phone.png"></span>12345678909</p>
                                  <p><span><img src="../images/QQ.png" ></span>213242243</p>
                                  <p><span><img src="../images/home.png"></span>西二302</p>
                              </div>
                          </div>
                          <div class="col-md-3">
                              <img src="../images/people.png" class="peopleImage img-responsive">
                              <div class="information">
                                  <p class="memberName">红彤彤</p>
                                  <p class="menberClass">16级网络1班</p>
                              </div>
                              <div class="detailInformation">
                                  <p><span><img src="../images/phone.png"></span>12345678909</p>
                                  <p><span><img src="../images/QQ.png" ></span>213242243</p>
                                  <p><span><img src="../images/home.png"></span>西二302</p>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="introMember">
                  <div class="grade">
                      <p>15级</p>
                  </div>
                  <div class="gradeContent">
                      <div class="row card">
                          <div class="col-md-3">
                              <img src="../images/activity3.jpg" class="peopleImage img-responsive">
                              <div class="information">
                                  <p class="memberName">红彤彤</p>
                                  <p class="menberClass">16级网络1班</p>
                              </div>
                              <div class="detailInformation">
                                  <p><span><img src="../images/phone.png"></span>12345678909</p>
                                  <p><span><img src="../images/QQ.png"></span>213242243</p>
                                  <p><span><img src="../images/home.png"></span>西二302</p>
                              </div>
                          </div>
                          <div class="col-md-3">
                              <img src="../images/people.png" class="peopleImage img-responsive">
                              <div class="information">
                                  <p class="memberName">红彤彤</p>
                                  <p class="menberClass">16级网络1班</p>
                              </div>
                              <div class="detailInformation">
                                  <p><span><img src="../images/phone.png" ></span>12345678909</p>
                                  <p><span><img src="../images/QQ.png"  ></span>213242243</p>
                                  <p><span><img src="../images/home.png" ></span>西二302</p>
                              </div>
                          </div>
                          <div class="col-md-3">
                              <img src="../images/people.png" class="peopleImage img-responsive">
                              <div class="information">
                                  <p class="memberName">红彤彤</p>
                                  <p class="menberClass">16级网络1班</p>
                              </div>
                              <div class="detailInformation">
                                  <p><span><img src="../images/phone.png"></span>12345678909</p>
                                  <p><span><img src="../images/QQ.png" ></span>213242243</p>
                                  <p><span><img src="../images/home.png"></span>西二302</p>
                              </div>
                          </div>
                          <div class="col-md-3">
                              <img src="../images/people.png" class="peopleImage img-responsive">
                              <div class="information">
                                  <p class="memberName">红彤彤</p>
                                  <p class="menberClass">16级网络1班</p>
                              </div>
                              <div class="detailInformation">
                                  <p><span><img src="../images/phone.png"></span>12345678909</p>
                                  <p><span><img src="../images/QQ.png" ></span>213242243</p>
                                  <p><span><img src="../images/home.png"></span>西二302</p>
                              </div>
                          </div>
                      </div>
                  </div>

              </div>
              <div class="introMember">
                  <div class="grade">
                      <p>14级</p>
                  </div>
                  <div>
                      <div class="row card">
                          <div class="col-md-3">
                              <img src="../images/activity3.jpg" class="peopleImage img-responsive">
                              <div class="information">
                                  <p class="memberName">红彤彤</p>
                                  <p class="menberClass">16级网络1班</p>
                              </div>
                              <div class="detailInformation">
                                  <p><span><img src="../images/phone.png"></span>12345678909</p>
                                  <p><span><img src="../images/QQ.png"></span>213242243</p>
                                  <p><span><img src="../images/home.png"></span>西二302</p>
                              </div>
                          </div>
                          <div class="col-md-3">
                              <img src="../images/people.png" class="peopleImage img-responsive">
                              <div class="information">
                                  <p class="memberName">红彤彤</p>
                                  <p class="menberClass">16级网络1班</p>
                              </div>
                              <div class="detailInformation">
                                  <p><span><img src="../images/phone.png" ></span>12345678909</p>
                                  <p><span><img src="../images/QQ.png"  ></span>213242243</p>
                                  <p><span><img src="../images/home.png" ></span>西二302</p>
                              </div>
                          </div>
                          <div class="col-md-3">
                              <img src="../images/people.png" class="peopleImage img-responsive">
                              <div class="information">
                                  <p class="memberName">红彤彤</p>
                                  <p class="menberClass">16级网络1班</p>
                              </div>
                              <div class="detailInformation">
                                  <p><span><img src="../images/phone.png"></span>12345678909</p>
                                  <p><span><img src="../images/QQ.png" ></span>213242243</p>
                                  <p><span><img src="../images/home.png"></span>西二302</p>
                              </div>
                          </div>
                          <div class="col-md-3">
                              <img src="../images/people.png" class="peopleImage img-responsive">
                              <div class="information">
                                  <p class="memberName">红彤彤</p>
                                  <p class="menberClass">16级网络1班</p>
                              </div>
                              <div class="detailInformation">
                                  <p><span><img src="../images/phone.png"></span>12345678909</p>
                                  <p><span><img src="../images/QQ.png" ></span>213242243</p>
                                  <p><span><img src="../images/home.png"></span>西二302</p>
                              </div>
                          </div>
                      </div>
                  </div>

              </div>
              <div class="introMember">
                  <div class="grade">
                      <p>13级</p>
                  </div>
                  <div class="gradeContent">
                      <div class="row card">
                          <div class="col-md-3">
                              <img src="../images/activity3.jpg" class="peopleImage img-responsive">
                              <div class="information">
                                  <p class="memberName">红彤彤</p>
                                  <p class="menberClass">16级网络1班</p>
                              </div>
                              <div class="detailInformation">
                                  <p><span><img src="../images/phone.png"></span>12345678909</p>
                                  <p><span><img src="../images/QQ.png"></span>213242243</p>
                                  <p><span><img src="../images/home.png"></span>西二302</p>
                              </div>
                          </div>
                          <div class="col-md-3">
                              <img src="../images/people.png" class="peopleImage img-responsive">
                              <div class="information">
                                  <p class="memberName">红彤彤</p>
                                  <p class="menberClass">16级网络1班</p>
                              </div>
                              <div class="detailInformation">
                                  <p><span><img src="../images/phone.png" ></span>12345678909</p>
                                  <p><span><img src="../images/QQ.png"  ></span>213242243</p>
                                  <p><span><img src="../images/home.png" ></span>西二302</p>
                              </div>
                          </div>
                          <div class="col-md-3">
                              <img src="../images/people.png" class="peopleImage img-responsive">
                              <div class="information">
                                  <p class="memberName">红彤彤</p>
                                  <p class="menberClass">16级网络1班</p>
                              </div>
                              <div class="detailInformation">
                                  <p><span><img src="../images/phone.png"></span>12345678909</p>
                                  <p><span><img src="../images/QQ.png" ></span>213242243</p>
                                  <p><span><img src="../images/home.png"></span>西二302</p>
                              </div>
                          </div>
                          <div class="col-md-3">
                              <img src="../images/people.png" class="peopleImage img-responsive">
                              <div class="information">
                                  <p class="memberName">红彤彤</p>
                                  <p class="menberClass">16级网络1班</p>
                              </div>
                              <div class="detailInformation">
                                  <p><span><img src="../images/phone.png"></span>12345678909</p>
                                  <p><span><img src="../images/QQ.png" ></span>213242243</p>
                                  <p><span><img src="../images/home.png"></span>西二302</p>
                              </div>
                          </div>
                      </div>
                  </div>

              </div>
          </div>
      </div>
  </div>
  <%@ include file="./footer.jsp" %>

  <script src="../js/jquery-1.11.3.min.js"></script>
  <script src="../js/bootstrap.min.js"></script>
  <script src="../js/header.js"></script>
  <script src="../js/index.js"></script>
  </body>
</html>