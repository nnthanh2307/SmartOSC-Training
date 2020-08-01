<?php require_once 'template/header.php'; ?>
<div id="main-content-wp" class="list-cat-page">
    <div class="wrap clearfix">
        <?php require_once 'template/sidebar.php'; ?>
        <div id="content" class="fl-right">
            <div class="section" id="title-page">
                <div class="clearfix">
                    <h3 id="index" class="fl-left">List Category</h3>
                    <a href="?scope=post&action=addpostcat" title="" id="add-new" class="fl-left">Create</a>
                </div>
            </div>
            <div class="section" id="detail-page">
                <div class="section-detail">
                    <div class="table-responsive">
                        <table class="table list-table-wp">
                            <thead>
                                <tr>
                                    <td><input type="checkbox" name="checkAll" id="checkAll"></td>
                                    <td><span class="thead-text">Category ID</span></td>
                                    <td><span class="thead-text">Category Name</span></td>
                                    <td><span class="thead-text">Parent ID</span></td>
                                    <td><span class="thead-text">Status</span></td>
                                    <td><span class="thead-text">Created Time</span></td>
                                </tr>
                            </thead>
                            <tbody>
                                <?php echo $dequy ?>
                            </tbody>
                                
                        </table>
                    </div>
                </div>
            </div>
            <div class="section" id="paging-wp">
                <div class="section-detail clearfix">
                    <p id="desc" class="fl-left">Chọn vào checkbox để lựa chọn tất cả</p>
                </div>
            </div>
        </div>
    </div>
</div>