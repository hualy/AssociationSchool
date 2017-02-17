<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/11/12
  Time: 14:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="adNav">
    <img src="../images/logo_页尾.png" class="img-responsive">
    <h1>后台管理</h1>
    <div class="leftNav">
        <ul class="parentUl">
            <li><p>部门概况</p>
                <ul>
                    <a href="admin_index.jsp"><li>修改发布部门文化</li></a>
                    <a href="admin_member.jsp"><li>修改发布成员介绍</li></a>
                </ul>
            </li>
            <li><p>部门活动</p>
                <ul>
                    <a href="admin_activityScan.jsp"><li>修改发布活动预览</li></a>
                    <a href="admin_plan.jsp"><li>修改发布人员安排</li></a>
                    <a href="admin_summary.jsp"><li>修改发布正式活动总结</li></a>
                </ul>
            </li>
            <li><p>内部建设</p>
                <ul>
                    <a href="admin_internalActivity.jsp"><li>修改发布娱乐活动总结</li></a>
                </ul>
            </li>
        </ul>
    </div>
</div>


<!-- changeEmail -->
<div class="modal fade" id="changeEmailModal" tabindex="-1" role="dialog" aria-labelledby="myModal" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body">
                <form action="" method="post" accept-charset="utf-8" class="modalFormemail">
                    <div class="row editformemail">
                        <div><label >旧邮箱</label><input type="email" name="oldEmail" value=""></div>
                        <div><label >新邮箱</label><input type="email" name="newEmail" value=""></div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="cancelBtn" data-dismiss="modal">取消</button>
                <button type="button" class="submitBtn">邮箱验证</button>
            </div>
        </div>
    </div>
</div>
