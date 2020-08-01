$(document).ready(function () {
    var size = null;
    var color = null;
    var category = null;
    var sorting = null;
    var page = null;
  
   $(".size").click(function (e) { 
       $(".size").removeClass("active");
       size = $(this).attr("size");
       $(this).addClass("active");
       page =1;
       callAjax();
   });

   $(".color").click(function (e) { 
        $(".color").removeClass("active");
        color = $(this).attr("color");
        $(this).addClass("active");
        page = 1;
        callAjax();
    });
    
    $(".category").click(function (e) { 
        category = $(this).attr("category");
        $(".category").css("color","#222222");
        $(".category").css("font-weight","normal");
        $(".category").css("font-style","normal");
        $(this).css("color","red");
        $(this).css("font-weight","bold");
        $(this).css("font-style","italic");
        page = 1;
        callAjax();
        
    });

    $(".sorting").change(function (e) { 
        sorting = $(".sorting").val();
        page = 1;
        callAjax();
    });

    $(document).on("click",".pagi",function() {
        page = $(this).text();
        callAjax();
        $("li.page-item").removeClass("active");
        $(this).addClass("active");
    })

    function callAjax() {
        let filter = {size_name: size, color_name: color, category_id: category, sorting: sorting, page: page};
        $.ajax({
            type: "POST",
            url: "?scope=shop&action=filterAjax",
            data: filter,
            dataType: "json",
            success: function (response) {
                $("#filter_ajax").empty();
                $("#filter_ajax").append(response.product);
                $(".pagination").empty();
                $(".pagination").append(response.pagination);
            },
            error: function(xhr, ajaxOptions, thrownError) {
                alert(xhr.status);
                alert(thrownError);
            }
            
        });
    }
});