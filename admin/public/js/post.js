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

    //submit post
    $(document).on("click","#addpost", function () {
        $(".error").text("");
        let post_title = $("#post_title").val().trim();
        let post_description = $("#post_description").val().trim();
        let parent_id = $("#parent_id").val().trim();
        let post_detail = CKEDITOR.instances['post_detail'].getData().trim();

        let flag = false;

        let data = {post_title: post_title, post_description: post_description,
                    post_detail: post_detail, parent_id: parent_id, post_image: image}
                    
        $.each(data,function(index,value) {
            if (value == null || value == "") {
                flag = true;
                if (index == "post_detail") {
                    CKEDITOR.instances['post_detail'].focus();
                }
                else {
                    $("#"+index).focus();
                }
                $("."+index).text(index + " not Empty!");
            }
        })

        if(flag == false) {
            clearForm();
            $("#alert").show().removeClass("alert alert-danger").addClass("alert alert-success");
            $("#alert").text("Add Post Success!");
            $.ajax({
                type: "POST",
                url: "?scope=post&action=addpost",
                data: data,
                dataType: "text",
                success: function (response) {
                    $("#showimage").show();
                    $("#showimage").empty();
                    // console.log(response);
                }
            });
        }
        else  {
            $("#alert").show().removeClass("alert alert-success").addClass("alert alert-danger");
            $("#alert").text("Add Post Error!");
        }

        function clearForm() {
            image = null;
            $("#showimage").hide();
            $("#post_title").val("");
            $("#post_description").val("");
            $("#parent_id").val("");
            CKEDITOR.instances['post_detail'].setData("");

        }

    });

    $("#imagepost").on('click', function() {
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
                url: "?scope=post&action=ajaximage",
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
});