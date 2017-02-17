/**
 * Created by Administrator on 2016/11/13.
 */
$(function () {
    //日历
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
    //显示课表
    $("#showCourse").click(function () {
        var checkedBoxLength=$("table tbody [name=course]:checkbox:checked").length;
        if(checkedBoxLength==0){
            alert("没有选择课表");
        }else if(checkedBoxLength>1){
            alert("只能有一项课表");
        }else {
            $("table tbody tr").css("backgroundColor","#fff");
            $("table tbody [name=course]:checkbox:checked").parent().parent().css("backgroundColor","#74d7d7");
            $("table tbody [name=course]:checkbox:checked").prop("checked",false);
            //alert("设置成功");
        }
    });
    //删除课表
    $("#deleteCourse").click(function () {
        var checkboxLength=$("table tbody [name=course]:checkbox").length;
        var canDeleteLength=checkboxLength-1;
        var checkedBoxLength=$("table tbody [name=course]:checkbox:checked").length;
        if(checkedBoxLength==0){
            alert("没有选择课表");
        }else if(checkedBoxLength>canDeleteLength){
            alert("课表数目不能小于一项");
        }else {
            $("table tbody [name=course]:checkbox:checked").parent().parent().remove();
            //alert("删除成功");
        }
    });
    //全选与全不选
    $("#selectAll").click(function () {
        $("table tbody [name=task]:checkbox").prop("checked",true);
    });
    $("#notSelectAll").click(function () {
        $("table tbody [name=task]:checkbox").prop("checked",false);
    });
    //显示任务
    $("#showTask").click(function () {
        var checkedBoxLength=$("table tbody [name=task]:checkbox:checked").length;
        if(checkedBoxLength==0){
            alert("没有选择任务");
        }else {
            // $("table tbody tr").css("backgroundColor","#fff");
            $("table tbody [name=task]:checkbox:checked").parent().parent().css("backgroundColor","#74d7d7");
            $("table tbody [name=task]:checkbox:checked").prop("checked",false);
            //alert("设置成功");
        }
    });
    //删除任务
    $("#deleteTask").click(function () {
        //var checkboxLength=$("table tbody [name=task]:checkbox").length;
        //var canDeleteLength=checkboxLength-1;
        var checkedBoxLength=$("table tbody [name=task]:checkbox:checked").length;
        if(checkedBoxLength==0){
            alert("没有选择课表");
        }else {
            $("table tbody [name=task]:checkbox:checked").parent().parent().remove();
            //alert("删除成功");
        }
    });

    $("#courseForm :input").blur(function () {
        var $parent=$(this).parent();
        $parent.find('.formtips').remove();
        if($(this).is("#courseName")){
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
    $("#courseBtn").click(function () {
        $("form .required:input").trigger('blur');
        var numError = $("form .onError").length;
        if(numError){
            return false;
        }
        else {
            alert("success");
        }
    });
    $("#taksForm :input").blur(function () {
        var $parent=$(this).parent();
        $parent.find('.formtips').remove();
        if($(this).is("#taskName")){
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
    }).keyup(function () {
        $(this).triggerHandler("blur");
    }).focus(function () {
        $(this).triggerHandler("blur");
    });
    $("#taksBtn").click(function () {
        $("form .required:input").trigger('blur');
        var numError = $("form .onError").length;
        if(numError){
            return false;
        }
        else {
            alert("success");
        }
    });





});