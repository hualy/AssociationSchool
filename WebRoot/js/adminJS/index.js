/**
 * Created by Administrator on 2016/11/12.
 */
$(function () {
    var $divElement = $(".divElement");
    var i =0;
    $divElement.each(function () {
        $(".divElement")[i].ondblclick=function () {
            toReplace(this);
        };
        i++;
    });
    $(".headerName").hover(function () {
        $(".changeEmail").show();
    });
    $(".changeEmail").click(function () {
        $(this).hide();
    })


});

// 此函数功能是新建一个input元素替换div
//当input元素失去焦点时又变回原来的div
toReplace = function(divElement) {
    // 创建一个input元素
    var inputElement = document.createElement("textarea");
    // 把obj里面的元素以及文本内容赋值给新建的inputElement
    inputElement.value = divElement.innerHTML;

    // 用新建的inputElement代替原来的oldDivElement元素
    divElement.parentNode.replaceChild(inputElement, divElement);
    // 当inputElement失去焦点时触发下面函数，使得input变成div
    inputElement.onblur = function() {
        //把input的值交给原来的div
        divElement.innerHTML = inputElement.value;
        //用原来的div重新替换inputElement
        inputElement.parentNode.replaceChild(divElement, inputElement);
    }
};