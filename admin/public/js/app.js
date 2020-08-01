$(document).ready(function () {
    $(document).ajaxStart(function() {
        $("#loading").show();
    });
    $(document).ajaxStop(function() {

        window.setTimeout(function() {
            $("#loading").hide();
        },700);
        
    });
    
    $("#alert").hide();
    var  image = null;

    $("#btn-submit").click(function () {
        //----get data form--------
        $(".error").text("");
        $("#showimage").show();
        $("#showimage").empty();
        let Name = $("#Name").val();
        let Price = $("#Price").val();
        let Description = $("#Description").val();
        let Detail = CKEDITOR.instances['Detail'].getData();
        let color_id = $("#color_id").val();
        let size_id = $("#size_id").val();
        let Categories = $("#Categories").val();
        let Color = null;
        let Size = null;
        let flag = false;

        if (color_id != null) {
            Color = $("#color_id option:selected").text().trim();
            Color = Color.split(" ");
        }
        if (size_id != null) {
            Size = $("#size_id option:selected").text().trim();
            Size = Size.split(" ");
        }

        //---------validate client and show error--------
        let data = {Name: Name, Price: Price, Description: Description,
                    Detail: Detail, Color: Color, Size: Size, Categories: Categories, Image:image, color_id: color_id, size_id: size_id };

        $.each(data,function(index,value) {
            if (value === null || value === "") {
                 flag = true;
                 if(index === "Detail") {
                    CKEDITOR.instances['Detail'].focus();
                 }
                 else {
                    $("#"+index).focus();
                 }
                $("#error_"+index).text(index + " not Empty!");
            }
        })

        if (flag == false) {
            clearForm();
            $("#alert").show().removeClass("alert alert-danger").addClass("alert alert-success");
            $("#alert").text("Add Product Success!");
            $.ajax({
                type: "POST",
                url: "?scope=product&action=insert",
                data: data,
                dataType: "text",
                success: function (response) {
                    $("#showimage").show();
                }
            });
        }
        else  {
            $("#alert").show().removeClass("alert alert-success").addClass("alert alert-danger");
            $("#alert").text("Add Product Error!");
        }
    });

    function callAjax(url, data) {
        $.ajax({
            type: "POST",
            url: url,
            data: data,
            dataType: "text",
            success: function (response) {
                // console.log(response);
                // alert("Update Success!");
            }
        });   
    }

    //------------upload Image ajax---------------
    $("#bt_upload").on('click', function() {
        image = null;
        let show = "";
        var inputFile = $('#file');
        var fileToUpload = inputFile[0].files;
        if (fileToUpload.length > 0) {
            var formData = new FormData();
            for (var i = 0; i < fileToUpload.length; i++) {
                var file = fileToUpload[i];
                formData.append('file[]', file, file.name);
            }
            $.ajax({
                url: "?scope=product&action=ajaximage",
                type: 'POST',
                data: formData,
                contentType: false,
                processData: false,
                dataType: 'text',
                success: function(data) {
                  image = data;
                  data = data.split(",");
                  data.forEach(function(index,value) {
                      show += "<img src='" + index+ "'>"
                  })
                  $("#showimage").append(show);
                },
                error: function(xhr, ajaxOptions, thrownError) {
                    alert(xhr.status);
                    alert(thrownError);
                }
            });
        }
        return false;
    });

    function clearForm() {
        image = null;
        $("#showimage").hide();
        $("#Name").val("");
        $("#Price").val("");
        $("#Description").val("");
        $("#color_id").val("");
        $("#size_id").val("");
        $("#Categories").val("");
        CKEDITOR.instances['Detail'].setData("");
    }

    //----------function delete product
    $(".delete").click(function (e) { 
        let item = $(this).attr("item");
        let action = $(this).attr("action");
        let url = "?scope=product&action=delete";
        let data = {act: action, item: item};
        $(this).parent().parent().parent().parent().hide();
        $.ajax({
            type: "POST",
            url: "?scope=product&action=delete",
            data: data,
            dataType: "text",
            success: function (response) {
                // console.log(response);
            }
        });
    });

    //----------Update-------------------

    $("#btn-update").click(function (e) { 

        $("#alert").show().removeClass("alert alert-success").addClass("alert alert-success");
        $("#alert").text("Add Product Success!");
        let Name = $("#Name").val();
        let Price = $("#Price").val();
        let Description = $("#Description").val();
        let Detail = CKEDITOR.instances['Detail'].getData();
        let color_id = $("#color_id").val();
        let size_id = $("#size_id").val();
        let Categories = $("#Categories").val();
        let Color = null;
        let Size = null;
        let flag = false;
        let item = $(this).attr("item")

        if (color_id != null) {
            Color = $("#color_id option:selected").text().trim();
            Color = Color.split(" ");
        }
        if (size_id != null) {
            Size = $("#size_id option:selected").text().trim();
            Size = Size.split(" ");
        }
        let data = {Name: Name, Price: Price, Description: Description,
            Detail: Detail, Color: Color, Size: Size, Categories: Categories, Image:image, color_id: color_id, size_id: size_id, item:item };
            console.log(data);
            let url = "?scope=product&action=updateproduct";
    
        callAjax(url,data);
    });



});