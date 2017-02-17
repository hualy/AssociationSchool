/**
 * Created by Administrator on 2016/11/15.
 */
$(function () {
    // 忘记密码
    $(".forgetPassword").click(function () {
        $(".finCodeLable").toggle(1000);
    });
    
    //忘记密码点击邮箱验证
    $(".finCodeLable").click(function(){
			swal({
                title: "请输入您的邮箱地址(用户名)",
                type: "input",
				showCancelButton: true,
				closeOnConfirm: false,
				animation: "slide-from-top",
                inputPlaceholder: "请在这输入!"
                }, function(inputValue) {
                	var s =/^\w+((-\w+)|(\.\w+))*\@{1}\w+\.{1}\w{2,4}(\.{0,1}\w{2}){0,1}/ig; 
                     if (inputValue == "") {
                         swal.showInputError("您还没有输入呢!");
                         return false;
                     }else if(inputValue.search(s) == -1){
                    	 swal.showInputError("您输入格式有误，请重新输入!");
                         return false;
                     }else{
          			 	 $.ajax({
							type: "POST",
							url: "/association/universal/sendMailForPassword",
							dataType: "HTML",
							data: {email:inputValue.trim(),identity:"admin"},
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
                     }
              });
			
		return false;
    });
   
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

        if($(this).is("#email")){
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
//        alert("success");
        $.ajax({
			type: "POST",
			url: "/association/member/memberLogin",
			dataType: "HTML",
			data: $("#loginForm").serialize(), 
			success: function(result){
        				if(result == "success"){
        					swal({
							title: "登录成功",  
							text: "You login successfully!",
							type: "success",   
							confirmButtonColor: "#DD6B55",   
							confirmButtonText: "确认",   
							closeOnConfirm: false
							},function(){
								window.location.href = "/association/views/index.jsp";
							});
        				}else if(result == "none"){
        					swal({
							title: "用户名不存在",  
							text: "Your account is not existed!\n" +"Please make sure your account has been registed!",
							type: "error",   
							confirmButtonColor: "#DD6B55",   
							confirmButtonText: "确认",   
							closeOnConfirm: false
							});
        				}else if(result == "error"){
        					swal({
							title: "密码错误",  
							text: "Your password is not correct!\n" +"Please input again!",
							type: "error",   
							confirmButtonColor: "#DD6B55",   
							confirmButtonText: "确认",   
							closeOnConfirm: false
							});
        				}else{
        					swal({
							title: "该用户还没被激活",  
							text: "Your account hasn't been activated!\n" +"Please check your email again!",
							type: "error",   
							confirmButtonColor: "#DD6B55",   
							confirmButtonText: "确认",   
							closeOnConfirm: false
							});
        				}
					}
			
		});
		return false;									//防止页面自动跳转
    });
});