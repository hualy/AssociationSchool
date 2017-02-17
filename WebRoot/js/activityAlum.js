/**
 * Created by Administrator on 2016/11/10.
 */
$(function () {
    //查看图片
    $("#ImageBox .last").hover(function () {
        this.imageSrc = $(this).find("img").attr("src");
        $(this).attr("src","../images/last_pg_click.png");
    },function () {
        $(this).attr("src",this.imageSrc);
    });
    $("#ImageBox .next").hover(function () {
        this.imageSrc = $(this).find("img").attr("src");
        $(this).attr("src","../images/next_pg_click.png");
    },function () {
        $(this).attr("src",this.imageSrc);
    });
    //日历
    tgl({
        input : 'activityTime',
        clasStyle : 'theme2-pack0-blue',
        shortDay : '3'
    });
    //上传图片
    $('#ssi-upload').ssi_uploader({url:'#',maxFileSize:6,allowed:['jpg','gif','txt','png','pdf']});

});