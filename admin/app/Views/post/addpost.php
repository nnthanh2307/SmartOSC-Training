<?php require_once "template/header.php" ?>
<div id="loading" style = "display:none" >
        <img src="public/images/loading.gif" alt="Loading..."/>
</div>
<div id="main-content-wp" class="add-cat-page">
    <div class="wrap clearfix">
        <?php require_once 'template/sidebar.php'; ?>

        <div id="content" class="fl-right">
            <div class="section" id="title-page">
                <div class="clearfix">
                    <h3 id="index" class="fl-left">ADD POST</h3>
                    
                </div>
                <div id = "alert" role="alert"></div>
            </div>
            <div class="section" id="detail-page">
                <div class="section-detail">
                    <form method="POST">
                        <label for="title">Post Title</label>
                        <div class="error post_title"></div>
                        <input type="text" name="post_title" id="post_title">
                       
                        
                        <label for="desc">Post Description</label>
                        <div class="error post_description"></div>
                        <textarea name="post_description" id="post_description"></textarea>
                        

                        <label for="detail">Post Detail</label>
                        <div class="error post_detail"></div>
                        <textarea name="post_detail" id="post_detail" class="ckeditor"></textarea>
                       

                        <label>Image</label>
                        <div class="error post_image"></div>
                        <div id="uploadFile">
                            <input type="file" name="file" id="file">
                            <input type="button" name="btn-upload-thumb" value="Upload" id="imagepost">
                            <div id="showimage">
                            
                            </div>
                        
                        </div>
                     
                        <label>Parent Category</label>
                        <div class="error parent_id"></div>
                        <select name="parent_id" id="parent_id">
                            <option value="">-- Select Category --</option>
                            <?php echo $dequy ?>
                        </select>
                        <button type="button" name="btn-submit" id="addpost">Add Post</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>