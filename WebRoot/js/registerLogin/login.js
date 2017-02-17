/**
 * Created by Administrator on 2016/11/12.
 */
$(function () {
    // 忘记密码
    $(".forgetPassword").click(function () {
        $(".finCodeLable").toggle(1000);
    });



    // 表单验证
    $("form :input.required").each(function () {
        var $required = $("<strong class='high'>*</strong>");
        $(this).parent().append($required);
    });
    /*
    ajax 提交表单，使用jquery.form.js 插件
     */
    var options = {
        target : '#loginForm',
        beforeSubmit : showRequest,
        success : showResponse,
        url : url,
        type : type,
        dataType :'json',
        clearForm :true,
        resetFrom :true,
        timeout :3000
    };
    $("#loginForm").ajaxForm(options);
    //函数定义
    function showRequest(formData,jqForm,options) {
        alert("alert");
        //提交之前的表单验证
        var userEmailValue = $('input[name=email]').fieldValue();
        var userpasswordValue = $('input[name=password]').fieldValue();
        if(!userEmailValue[0]||!userpasswordValue[0]){
            alert("null");
            return false;
        }
        //成功提交
        var queryString = $.param(formData);
        return true;
    }
    function showResponse(responseText,statusText,xhr,$form) {
        alert("状态"+statusText+"\n返回的数据"+responseText);
    }
});