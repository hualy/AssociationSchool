/**
 * Created by Administrator on 2016/11/16.
 */
$(function () {
    $("#selectAll").click(function () {
        $("table tbody :checkbox").prop("checked",true);
    });
    $("#notSelectAll").click(function () {
        $("table tbody :checkbox").prop("checked",false);
    });
    $("#showMember").click(function () {
        var checkboxlength = $("table tbody :checkbox:checked").length;
        if(checkboxlength==0){
            alert("选择不能为空");

        }else {
            alert("总共展示了"+checkboxlength+"位成员");
            $("table tbody :checkbox:checked").parent().parent().css("backgroundColor","#74d7d7");
            $("table tbody :checked:checked").prop("checked",false);
        }
    });
    $("#cancelMember").click(function () {
        $("table tbody :checkbox:checked").parent().parent().css("backgroundColor","#fff");
        $("table tbody :checkbox:checked").prop("checked",false);

    })
});