/**
 * Created by Administrator on 2016/11/9.
 */
$(function () {
    //动画
    $(".edit").hover(function () {
        this.imageSrc = $(this).attr("src");
        $(this).attr("src","../images/edit_hover.png");
    },function () {
        $(this).attr("src",this.imageSrc);
    });
    $(".del").hover(function () {
        this.imageSrc = $(this).attr("src");
        $(this).attr("src","../images/del_hover.png");
    },function () {
        $(this).attr("src",this.imageSrc);
    }).on("click",function () {
        // confirm("确定删除吗？");
        if(confirm("确定删除吗？")){
            // alert("hell");
            $(this).parents(".summarySection").slideUp(500);
        }
    });
    //日历
    tgl({
        input : 'activityTime',
        clasStyle : 'theme2-pack0-blue',
        shortDay : '3'
    });
    //表单验证
    $("form#submitSummary :input").blur(function () {
        var $parent=$(this).parent();
        $parent.find('.formtips').remove();
        if($(this).is("#activityName")){
            if(this.value==""){
                var errorMsg = "活动名不能为空";
                var $errorTip=$('<span class="formtips onError"><img src="../images/error_tip.png">'+errorMsg+'</span>');
                $parent.append($errorTip);
            }else{
                var okMsg='输入正确';
                var $okTip=$('<span class="formtips onSuccess"><img src="../images/pass_tip.png">'+okMsg+'</span>')
                $parent.append($okTip);
            }
        }
        if($(this).is("#activityTime")){
            if(this.value==""){
                var errorMsg = "时间不能为空";
                var $errorTip=$('<span class="formtips onError"><img src="../images/error_tip.png">'+errorMsg+'</span>');
                $parent.append($errorTip);
            }
        }
        if($(this).is("#activitySummary")){
            if(this.value==""){
                var errorMsg = "活动总结不能为空";
                var $errorTip=$('<span class="formtips onError"><img src="../images/error_tip.png">'+errorMsg+'</span>');
                $parent.append($errorTip);
            }else{
                var okMsg='输入正确';
                var $okTip=$('<span class="formtips onSuccess"><img src="../images/pass_tip.png">'+okMsg+'</span>');
                $parent.append($okTip);
            }
        }
    }).keyup(function () {
        $(this).triggerHandler("blur");
    }).focus(function () {
        $(this).triggerHandler("blur");
    });

    $("#summaryBtn").click(function () {
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


