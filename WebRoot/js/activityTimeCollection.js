/**
 * Created by Administrator on 2016/11/17.
 */
$(function () {
    $("table td").click(function () {
        var oldarc =  "../images/unselected.png";
        var newarc = "../images/selected.png";
        var image = $(this).find("img");
        var currentsrc = $(this).find("img").attr("src");
        if(currentsrc==oldarc){
            currentsrc=newarc;
            image.attr("src",currentsrc);
        }else{
            currentsrc=oldarc;
            image.attr("src",currentsrc);
        }
    })
});