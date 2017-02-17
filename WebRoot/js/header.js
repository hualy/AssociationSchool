/**
 * Created by Administrator on 2016/11/6.
 */
$(function () {
    var _timeout;
    $("ul.navbar-right > li").hover(function () {
        clearTimeout(_timeout);
        $(this).find("ul.subli").show();
        },function () {
            $(this).find("ul.subli").hide();
    });
    $("ul.subli").hover(function () {
        $(this).show();
    },function () {
        $(this).hide();
    })
});