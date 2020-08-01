<?php
    require_once "template/header.php";

?>
    <div id="loading" style = "display:none" >
        <img src="public/images/loading.gif" alt="Loading..."/>
    </div>
<div id="main-content-wp" class="add-cat-page">
    <div class="wrap clearfix">
        <?php require 'template/sidebar.php'; ?>
        <div id="content" class="fl-right">
            <div class="section" id="title-page">
                <div class="clearfix">
                    <h3 id="index" class="fl-left">ADD PRODUCT</h3>
                </div>
                <div id = "alert" class="" role="alert"></div>
            </div>
            <div class="section" id="detail-page">
                <div class="section-detail">
                <form>
                    <div class="form-group">
                        <label for="product_name">Product Name</label>
                        <p class="error" id="error_Name" style="color:red"></p>
                        <input type="text" class="form-control" id="Name" placeholder="Product Name *">
                    </div>

                    <div class="form-group">
                        <label for="price">Price</label>
                        <p class="error" id="error_Price" style="color:red"></p>
                        <input name = "price" type="number" class="form-control" id="Price" placeholder="price *">
                    </div>

                    <div class="form-group">
                        <label for="desc">Product Description</label>
                        <p class="error" id="error_Description" style="color:red"></p>
                        <textarea name = "product_desc" class="form-control" id="Description" rows="3" placeholder = "description *"></textarea>
                    </div>

                    <div class="form-group">
                    <label for="product_detail">Product Detail</label>
                    <p class="error" id="error_Detail" style="color:red"></p>
                        <textarea name="product_detail" id="Detail" class="ckeditor"></textarea>
                    </div>
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label for="color">Color</label>
                                    <p class="error" id="error_Color" style="color:red"></p>
                                    <select name="color" class="form-control" id="color_id" multiple>
                                    <?php
                                    if (!empty($color) && is_array($color)) {
                                        foreach($color as $key => $item) {
                                    ?>
                                        <option value = "<?php echo $item["color_id"] ?>"><?php echo $item["color_name"] ?></option>
                                    <?php
                                        }
                                        }
                                    ?>
                                    </select>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label for="size">Size</label>
                                    <p class="error" id="error_Size" style="color:red"></p>
                                    <select name="size" multiple class="form-control" id="size_id">
                                    <?php
                                    if (!empty($size) && is_array($size)) {
                                        foreach($size as $key => $item) {
                                    ?>
                                        <option value = "<?php echo $item["size_id"] ?>"><?php echo $item["size_name"] ?></option>
                                    <?php
                                        }
                                        }
                                    ?>
                                    </select>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label for="category">Product Category</label>
                                    <p class="error" id="error_Categories" style="color:red"></p>
                                        <select class="form-control" id="Categories" multiple="multiple" name = "categories" required/>
                                        <?php echo $dequy ?>
                                        </select>
                                 </div>
                            </div>
                        </div>
                    </div>
                    <div class="">
                        <label>Select Image</label>
                        <p class="error" id="error_Image" style="color:red"></p>
                        <div id="uploadFile">
                            <input type="file" name="images[]" id="file" multiple="">
                            <input type="button" id="bt_upload" name="bt_upload" value="Upload">
                            <div id="showimage"></div>
                        </div>
                    </div>
                    <button type="button" name="btn-submit" id="btn-submit">Add Product</button>        
                </form>
                </div>
            </div>
        </div>
    </div>
</div>