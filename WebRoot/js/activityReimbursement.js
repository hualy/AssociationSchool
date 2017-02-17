$(function () {
    //日历
    tgl({
        input : 'reimTime',
        clasStyle : 'theme2-pack0-blue',
        shortDay : '3'
    });
    //表单验证
    $("form :input").blur(function () {
        var $parent=$(this).parent();
        $parent.find('.formtips').remove();
        var re = /\d{1,10}(\.\d{1,2})?$/g;
        if($(this).is("#reimMoney")){
            if(this.value==""){
                var errorMsg = "活动报销不能为空";
                var $errorTip=$('<span class="formtips onError"><img src="../images/error_tip.png">'+errorMsg+'</span>');
                $parent.append($errorTip);
            }else if(!re.test(this.value)){
                var errorMsg = "请输入数字";
                var $errorTip=$('<span class="formtips onError"><img src="../images/error_tip.png">'+errorMsg+'</span>');
                $parent.append($errorTip);
            }else{
                var okMsg='输入正确';
                var $okTip=$('<span class="formtips onSuccess"><img src="../images/pass_tip.png">'+okMsg+'</span>')
                $parent.append($okTip);
            }
        }
        if($(this).is("#reimTime")){
            if(this.value==""){
                var errorMsg = "时间不能为空";
                var $errorTip=$('<span class="formtips onError"><img src="../images/error_tip.png">'+errorMsg+'</span>');
                $parent.append($errorTip);
            }
        }
        if($(this).is("#reimContent")){
            if(this.value==""){
                var errorMsg = "报销内容不能为空";
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

    $("#reimBtn").click(function () {
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