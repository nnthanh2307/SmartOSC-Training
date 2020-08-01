<?php
    require_once "template/header.php";

?>

<div id="main-content-wp" class="add-cat-page">
    <div class="wrap clearfix">
        <?php require 'template/sidebar.php'; ?>
        <div id="content" class="fl-right">
            <div class="section" id="title-page">
                <div class="clearfix">
                    <h3 id="index" class="fl-left">Update Category</h3>
                </div>
            </div>
            <div class="section" id="detail-page">
                <div class="section-detail">
                    <form method="POST">
                        <label for="categoryname">Category Name</label>
                        <input type="text" name="category_name" id="categoryname" value = "<?php echo $cat["category_name"] ?>" required>
                        <label>Parent category</label>
                        <select name="parent_id">
                            <option value="">-- Chọn danh mục --</option>
                            <?php echo $dequy ?>
                        </select>
                        <button type="submit" name="btn-submit" id="btn-submit">Update Category</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>