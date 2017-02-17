/**
 * Created by Administrator on 2016/11/12.
 */
// $(function () {
//     $('.parentUl li ul a li').eq(0).addClass("active");
//     $('.parentUl li ul a li').each(function () {
//         $(this).click(function () {
//             $(this).addClass("active")
//                 .parent().siblings().find("li").removeClass("active")
//
//
//         })
//     });
// });

jQuery(document).ready(function($) {
    var currenturl = window.location.href;
    var aurl=$('.parentUl li ul a');
    // alert(aurl.length);
    for (var i = 0; i < aurl.length; i++) {
        var url = aurl.eq(i).prop('href'); /*获取链接的href值*/
        if (currenturl.indexOf(url) != -1) { /*如果链接的href值在当前页面地址中有匹配*/
            aurl.eq(i).find("li").addClass('active');
        }
    }
    $(".headerName").hover(function () {
        $(".changeEmail").show();
    });
    
    $(".changeEmail").click(function () {
        $(this).hide();
    }).mouseleave(function () {
        $(this).hide();
    });
    
    
});