$(document).ready(function () {
    
    $(document).on("click",".pagina" ,function () {
        $(".pagina").removeClass("active");
        $(this).addClass("active");
        let page = $(this).attr("page");
        let data = {page: page};

        $.ajax({
            type: "POST",
            url: "?scope=post&action=pagination",
            data: data,
            dataType: "json",
            success: function (response) {
                $("#content").empty();
                $("#content").append(response.content);
            }
        });
    });
});