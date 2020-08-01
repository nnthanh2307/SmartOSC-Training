$(document).ready(function () {
    $(document).ajaxStart(function() {
        $("#loading").show();
    });
    $(document).ajaxStop(function() {

        window.setTimeout(function() {
            $("#loading").hide();
        },700);
        
    });
    //get product id
    $(document).on("click", ".addcart", function () {
        let qty = null;
        let productID = $(this).attr("item");
        let data = {productID: productID, qty: qty};
        $.ajax({
            type: "POST",
            url: "?scope=cart&action=addCart",
            data: data,
            dataType: "text",
            success: function (response) {
                // alert("Add To Cart Success!");
            }
        });
    });

    //update cart 
    $(document).on("click",".update", function () {
        let qty = $(this).parent().children(".qty").val();
        let productID = $(this).parent().children(".qty").attr("item");
        let data = {productID: productID, qty: qty};
        if (qty == 0) {
            $(this).parent().parent().parent().hide();
        } 

        $.ajax({
            type: "POST",
            url: "?scope=cart&action=updateCart",
            data: data,
            dataType: "json",
            success: function (response) {
                $("#subTotal_"+productID).text("$"+response.subTotal);
                $("#total").text("$"+response.total);
            }
        });
    });

    $(document).on("click",".btn_add", function () {
        let qty = $("#sst").val();
        let productID = $(this).attr("item");
        let data = {productID: productID, qty: qty};
        $.ajax({
            type: "POST",
            url: "?scope=cart&action=addCart",
            data: data,
            dataType: "text",
            success: function (response) {
               
            }
        });
    });
});