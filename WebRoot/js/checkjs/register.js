/**
 * Created by Administrator on 2016/11/15.
 */
$(function () {
    // 表单验证
    $("form :input.required").each(function () {
        var $required = $("<strong class='high'>*</strong>");
        $(this).parent().append($required);
    });

    $("form :input").blur(function () {
        //alert("hello");
        //验证密码
        var re=/^\?(.*)(select%20|insert%20|delete%20from%20|count\(|drop%20table|update%20truncate%20|asc\(|mid\(|char\(|xp_cmdshell|exec%20master|net%20localgroup%20administrators|\"|:|net%20user|\|%20or%20)(.*)$/gi;
        var $parent=$(this).parent();
        $parent.find('.formtips').remove();
        if($(this).is("#departEmail")){
            if(re.test(this.value)){
                var errorMsg = "含有非法字符";
                $(this).css('marginBottom','10px');
                var $errorTip=$('<span class="formtips onError"><img src="../images/error_tip.png">'+errorMsg+'</span>');
                $parent.append($errorTip);
            }else if(this.value==""||(this.value!=""&&!/(^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+\.[a-zA-Z0-9_-]+$)|(^$)/.test(this.value))){
                var errorMsg = "请输入正确的邮箱地址";
                $(this).css('marginBottom','10px');
                var $errorTip=$('<span class="formtips onError"><img src="../images/error_tip.png">'+errorMsg+'</span>');
                $parent.append($errorTip);
            }else{
//                $(this).css('marginBottom','10px');
//                var okMsg='输入正确';
//                var $okTip=$('<span class="formtips onSuccess"><img src="../images/pass_tip.png">'+okMsg+'</span>')
//                $parent.append($okTip);
                $.ajax({
					type: "POST",
					url: "/association/universal/checkEmail",
					dataType: "HTML",
					data: {"departEmail":$("#departEmail").val()},					//获取文本框里的值
					success: function(result){
						if(result == "none"){										//邮箱不存在(提示要注册)
							var errorMsg = "该邮箱地址没被注册,请部门负责人注册该部门！";
               			    $(this).css('marginBottom','10px');
               			    var $errorTip=$('<span class="formtips onError"><img src="../images/error_tip.png">'+errorMsg+'</span>');
                			$parent.append($errorTip);
						}else if(result == "exists"){								//邮箱已存在(正确)
//							alert(result);
							var okMsg = "该部门邮箱正确！";
                			$(this).css('marginBottom','10px');
                		    var $okTip=$('<span class="formtips onSuccess"><img src="../images/pass_tip.png">'+okMsg+'</span>')
                			$parent.append($okTip);
						}
					}
				});
            }
        }
        if($(this).is("#personalEmail")){
            if(re.test(this.value)){
                var errorMsg = "含有非法字符";
                $(this).css('marginBottom','10px');
                var $errorTip=$('<span class="formtips onError"><img src="../images/error_tip.png">'+errorMsg+'</span>');
                $parent.append($errorTip);
            }else if(this.value==""||(this.value!=""&&!/(^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+\.[a-zA-Z0-9_-]+$)|(^$)/.test(this.value))){
                var errorMsg = "请输入正确的邮箱地址";
                $(this).css('marginBottom','10px');
                var $errorTip=$('<span class="formtips onError"><img src="../images/error_tip.png">'+errorMsg+'</span>');
                $parent.append($errorTip);
            }else{
//                $(this).css('marginBottom','10px');
//                var okMsg='输入正确';
//                var $okTip=$('<span class="formtips onSuccess"><img src="../images/pass_tip.png">'+okMsg+'</span>')
//                $parent.append($okTip);
                $.ajax({
					type: "POST",
					url: "/association/universal/checkEmail",
					dataType: "HTML",
					data: {"personalEmail":$("#personalEmail").val()},					//获取文本框里的值
					success: function(result){
						if(result == "none"){											//邮箱不存在(提示可以使用)
//							alert(result);
							var okMsg = "该邮箱没有被注册，可以使用！";
                			$(this).css('marginBottom','10px');
                		    var $okTip=$('<span class="formtips onSuccess"><img src="../images/pass_tip.png">'+okMsg+'</span>')
                			$parent.append($okTip);
						}else if(result == "exists"){									//邮箱已存在(要添加提示，提示该邮箱已被注册)
//							alert(result);
							var errorMsg = "该邮箱地址已被注册,请换个邮箱注册！";
               			    $(this).css('marginBottom','10px');
               			    var $errorTip=$('<span class="formtips onError"><img src="../images/error_tip.png">'+errorMsg+'</span>');
                			$parent.append($errorTip);
						}
					}
				});
            }
        }
        if($(this).is("#name")){
            if(re.test(this.value)){
                var errorMsg = "含有非法字符";
                $(this).css('marginBottom','10px');
                var $errorTip=$('<span class="formtips onError"><img src="../images/error_tip.png">'+errorMsg+'</span>');
                $parent.append($errorTip);
            }else if(this.value==""|| (this.value!=""&&!/[\u4E00-\u9FA5]{2,5}(?:·[\u4E00-\u9FA5]{2,5})*/.test(this.value))){
                var errorMsg = "请输入正确的名字";
                $(this).css('marginBottom','10px');
                var $errorTip=$('<span class="formtips onError"><img src="../images/error_tip.png">'+errorMsg+'</span>');
                $parent.append($errorTip);
            }else{
                $(this).css('marginBottom','10px');
                var okMsg='输入正确';
                var $okTip=$('<span class="formtips onSuccess"><img src="../images/pass_tip.png">'+okMsg+'</span>')
                $parent.append($okTip);
            }
        }
        if($(this).is("#password")){
            if(re.test(this.value)){
                var errorMsg = "含有非法字符";
                $(this).css('marginBottom','10px');
                var $errorTip=$('<span class="formtips onError"><img src="../images/error_tip.png">'+errorMsg+'</span>');
                $parent.append($errorTip);
            }else if(this.value.length<6||this.value.length>16){
                var errorMsg = "密码的长度应为6~16之间";
                $(this).css('marginBottom','10px');
                var $errorTip=$('<span class="formtips onError"><img src="../images/error_tip.png">'+errorMsg+'</span>');
                $parent.append($errorTip);
            }else{
                $(this).css('marginBottom','10px');
                var okMsg='输入正确';
                var $okTip=$('<span class="formtips onSuccess"><img src="../images/pass_tip.png">'+okMsg+'</span>')
                $parent.append($okTip);
            }
        }
        if($(this).is("#repassword")){
            if(re.test(this.value)){
                var errorMsg = "含有非法字符";
                $(this).css('marginBottom','10px');
                var $errorTip=$('<span class="formtips onError"><img src="../images/error_tip.png">'+errorMsg+'</span>');
                $parent.append($errorTip);
            }else if(this.value.length<6||this.value.length>16){
                var errorMsg = "密码的长度应为6~16之间";
                $(this).css('marginBottom','10px');
                var $errorTip=$('<span class="formtips onError"><img src="../images/error_tip.png">'+errorMsg+'</span>');
                $parent.append($errorTip);
            }else if(this.value!==$("#password").val()){
                var errorMsg = "密码不一致";
                $(this).css('marginBottom','10px');
                var $errorTip=$('<span class="formtips onError"><img src="../images/error_tip.png">'+errorMsg+'</span>');
                $parent.append($errorTip);
            }else{
                $(this).css('marginBottom','10px');
                var okMsg='输入正确';
                var $okTip=$('<span class="formtips onSuccess"><img src="../images/pass_tip.png">'+okMsg+'</span>')
                $parent.append($okTip);
            }
        }
        if($(this).is("#code")){
            if(re.test(this.value)){
                var errorMsg = "含有非法字符";
                $(this).css('marginBottom','10px');
                var $errorTip=$('<span class="formtips onError"><img src="../images/error_tip.png">'+errorMsg+'</span>');
                $parent.append($errorTip);
            }else if(this.value==""){
                var errorMsg = "不能为空";
                $(this).css('marginBottom','10px');
                var $errorTip=$('<span class="formtips onError"><img src="../images/error_tip.png">'+errorMsg+'</span>');
                $parent.append($errorTip);
            }else{
                $.ajax({
						type: "POST",
						url: "../universal/checkCodeValidate?"+ Math.random(),
						dataType: "HTML",
						data: {'code':$("#code").val()},   
						success:function(result){
									if(result == "success"){
										$(this).css('marginBottom','10px');
						                var okMsg='验证码输入正确';
						                var $okTip=$('<span class="formtips onSuccess"><img src="../images/pass_tip.png">'+okMsg+'</span>')
						                $parent.append($okTip);
									}else{
										var errorMsg = "验证码输入错误";
						                $(this).css('marginBottom','10px');
						                var $errorTip=$('<span class="formtips onError"><img src="../images/error_tip.png">'+errorMsg+'</span>');
						                $parent.append($errorTip);
									}
								}
				});
            }
        }
    }).keyup(function () {
        $(this).triggerHandler("blur");
    }).focus(function () {
        $(this).triggerHandler("blur");
    });


    $("#send").click(function () {
        $("form .required:input").css("marginBottom","20px");
        $("form .required:input").trigger('blur');
        var numError = $("form .onError").length;
        if(numError){
            // alert("error");
            return false;
        }
        $.ajax({
			type: "POST",
			url: "/association/member/memberRegister",
			dataType: "HTML",
			data: $("#register-form").serialize(),
			beforeSend:function(){
        		$.Loading({type:"html",speed:200,loadPicNum:2,autoHide:false});
			},
			success: function(result){
						var loadingbox = document.getElementById('loadingbox');
						document.body.removeChild(loadingbox);
						swal({
							title: "注册成功",  
							text: "Your account has been saved successfully!\n" +
									"Please check your email and activate your account!",
							type: "success",   
							confirmButtonColor: "#DD6B55",   
							confirmButtonText: "确认",   
							closeOnConfirm: false
							},function(){
								window.location.href = "login.jsp";
							}
						);
					}
			
		});
		return false;									//防止页面自动跳转
    });
});