<?php 
    require_once "template/header.php" ;
?>
<div id="main-content-wp" class="list-post-page">
    <div class="wrap clearfix">

        <?php require_once 'template/sidebar.php'; ?>

        <div id="content" class="fl-right">
            <div class="section" id="title-page">
                <div class="clearfix">
                    <h3 id="index" class="fl-left">List Post</h3>
                    <a href="?scope=post&action=view&id=3" title="" id="add-new" class="fl-left">Add Post</a>
                </div>
            </div>
            <div class="section" id="detail-page">
                <div class="section-detail">
                    <div class="filter-wp clearfix">
                        <ul class="post-status fl-left">
                            <li class="all"><a href="">Tất cả <span class="count">(10)</span></a></li>
                        </ul>
                        <form method="GET" class="form-s fl-right">
                            <input type="text" name="s" id="s">
                            <input type="submit" name="sm_s" value="Tìm kiếm">
                        </form>
                    </div>
                    <div class="table-responsive">
                        <table class="table list-table-wp">
                            <thead>
                                <tr>
                                    <td><input type="checkbox" name="checkAll" id="checkAll"></td>
                                    <td><span class="thead-text">STT</span></td>
                                    <td><span class="thead-text">Post ID</span></td>
                                    <td><span class="thead-text">Post Title</span></td>
                                    <td><span class="thead-text">Post Status</span></td>
                                    <td><span class="thead-text">Creared Time</span></td>
                                </tr>
                            </thead>
                            <tbody>

                            <?php
                                if (!empty($listPost)) {
                                    foreach ($listPost as $key => $item) {
                            ?> 
                                 <tr>
                                    <td><input type="checkbox" name="checkItem" class="checkItem"></td>
                                    <td><span class="tbody-text"><?php echo $key + 1 ?></h3></span>
                                    <td><span class="tbody-text"><?php echo $item["post_id"] ?></span></td>
                                    <td class="clearfix">
                                        <div class="tb-title fl-left">
                                            <a href="" title=""><?php echo $item["post_title"] ?></a>
                                        </div>
                                    </td>
                                    <td><span class="tbody-text"><?php echo ($item["post_status"] == 0) ? "Active" : "Hidden" ?></span></td>
                                    <td><span class="tbody-text"><?php echo $item["created_time"] ?></span></td>
                                </tr>

                            <?php
                                    }
                                }
                            ?>
                               
                            </tfoot>
                        </table>
                    </div>

                </div>
            </div>
            <div class="section" id="paging-wp">
                <div class="section-detail clearfix">
                    <ul id="list-paging" class="fl-right">
                        <li>
                            <a href="" title=""><</a>
                        </li>
                        <li>
                            <a href="" title="">1</a>
                        </li>
                        <li>
                            <a href="" title="">2</a>
                        </li>
                        <li>
                            <a href="" title="">3</a>
                        </li>
                        <li>
                            <a href="" title="">></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>