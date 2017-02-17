$(function () {
    //日历
    tgl({
        input : 'meetingTime',
        clasStyle : 'theme2-pack0-blue',
        shortDay : '3'
    });
    //表单验证
    $("form :input").blur(function () {
        var $parent=$(this).parent();
        $parent.find('.formtips').remove();
        var re = /^[0-9]*$/g;
        if($(this).is("#meetingTime")){
            if(this.value==""){
                var errorMsg = "会议时间不能为空";
                var $errorTip=$('<span class="formtips onError"><img src="../images/error_tip.png">'+errorMsg+'</span>');
                $parent.append($errorTip);
            }
        }
        if($(this).is("#meetingLocation")){
            if(this.value==""){
                var errorMsg = "会议地点不能为空";
                var $errorTip=$('<span class="formtips onError"><img src="../images/error_tip.png">'+errorMsg+'</span>');
                $parent.append($errorTip);
            }else{
                var okMsg='输入正确';
                var $okTip=$('<span class="formtips onSuccess"><img src="../images/pass_tip.png">'+okMsg+'</span>')
                $parent.append($okTip);
            }
        }
        if($(this).is("#meetingContent")){
            if(this.value==""){
                var errorMsg = "会议内容不能为空";
                var $errorTip=$('<span class="formtips onError"><img src="../images/error_tip.png">'+errorMsg+'</span>');
                $parent.append($errorTip);
            }else{
                var okMsg='输入正确';
                var $okTip=$('<span class="formtips onSuccess reimContentArea"><img src="../images/pass_tip.png">'+okMsg+'</span>');
                $parent.append($okTip);
            }
        }
    }).keyup(function () {
        $(this).triggerHandler("blur");
    }).focus(function () {
        $(this).triggerHandler("blur");
    });

    $("#meetingBtn").click(function () {
        $("form .required:input").trigger('blur');
        var numError = $("form .onError").length;
        if(numError){
            return false;
        }
        else {
            alert("success");
        }
    })
})