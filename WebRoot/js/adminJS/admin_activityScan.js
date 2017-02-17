/**
 * Created by Administrator on 2016/11/13.
 */
$(function () {
    //时间
    tgl({
        input : 'activityTimeLast',
        clasStyle : 'theme2-pack0-blue',
        shortDay : '3'
    });
    tgl({
        input : 'activityTimeNext',
        clasStyle : 'theme2-pack0-blue',
        shortDay : '3'
    });
    //删除活动
    $("#deleteActivity").click(function () {
        var checkboxLength=$("table tbody :checkbox").length;
        var canDeleteLength=checkboxLength-6;
        var checkedBoxLength=$("table tbody :checkbox:checked").length;
        if(checkedBoxLength==0){
            alert("没有选择活动");
        }else if(checkedBoxLength>canDeleteLength){
            alert("活动数目不能小于六项");
        }else {
            $("table tbody :checkbox:checked").parent().parent().remove();
            alert("删除成功");
        }
    });
    //设为当前活动
    $("#setCurrent").click(function () {
        var checkedBoxLength=$("table tbody :checkbox:checked").length;
        if(checkedBoxLength==0){
            alert("没有选择活动");
        }else if(checkedBoxLength>1){
            alert("当前活动只能有一项");
        }else {
            $("table tbody tr").css("backgroundColor","#fff");
            $("table tbody :checkbox:checked").parent().parent().css("backgroundColor","#74d7d7");
            $("table tbody :checkbox:checked").prop("checked",false);
            alert("设置成功");
        }
    });

    $("form :input").blur(function () {
        var $parent=$(this).parent();
        $parent.find('.formtips').remove();
        if($(this).is("#activityName")){
            // $(this).onfocus;
            if(this.value==""){
                var errorMsg = "活动名不能为空";
                // $(this).css('marginBottom','10px');
                var $errorTip=$('<span class="formtips onError"><img src="../images/error_tip.png">'+errorMsg+'</span>');
                $parent.append($errorTip);
            }else{
                // $(this).css('marginBottom','10px');
                var okMsg='输入正确';
                var $okTip=$('<span class="formtips onSuccess"><img src="../images/pass_tip.png">'+okMsg+'</span>')
                $parent.append($okTip);
            }
        }
        if($(this).is("#activityTimeLast")){
            // $(this).focus();
            if(this.value==""){
                var errorMsg = "时间不能为空";
                // $(this).css('marginBottom','10px');
                var $errorTip=$('<span class="formtips onError"><img src="../images/error_tip.png">'+errorMsg+'</span>');
                $parent.append($errorTip);
            }
        }
        if($(this).is("#activityTimeNext")){
            if(this.value==""){
                var errorMsg = "时间不能为空";
                // $(this).css('marginBottom','10px');
                var $errorTip=$('<span class="formtips onError"><img src="../images/error_tip.png">'+errorMsg+'</span>');
                $parent.append($errorTip);
            }else if(this.value!=""&&$("#activityTimeLast").val()!=""){
                var start=$("#activityTimeLast").val();
                var end=this.value;
                var oDate1 = new Date(start);
                var oDate2 = new Date(end);
                if(oDate1.getTime() > oDate2.getTime()){
                    var errorMsg = "时间先后不正确";
                    var $errorTip=$('<span class="formtips onError"><img src="../images/error_tip.png">'+errorMsg+'</span>');
                    $parent.append($errorTip);
                }else{
                    $(this).css('marginBottom','10px');
                    var okMsg='输入正确';
                    var $okTip=$('<span class="formtips onSuccess"><img src="../images/pass_tip.png">'+okMsg+'</span>');
                    $parent.append($okTip);
                }
            }
        }
    }).keyup(function () {
        $(this).triggerHandler("blur");
    }).focus(function () {
        $(this).triggerHandler("blur");
    });

    $("#send").click(function () {
        $("form .required:input").trigger('blur');
        var numError = $("form .onError").length;
        if(numError){
            return false;
        }
        else {
            alert("success");
        }
    })

});