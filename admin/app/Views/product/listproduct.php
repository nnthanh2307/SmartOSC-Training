<?php require_once "template/header.php" ?>

    <div id="loading" style = "display:none" >
        <img src="public/images/loading.gif" alt="Loading..."/>
    </div>

<div id="main-content-wp" class="list-product-page">
    <div class="wrap clearfix">

    <?php require_once "template/sidebar.php" ?>

        <div id="content" class="fl-right">
            <div class="section" id="title-page">
                <div class="clearfix">
                    <h3 id="index" class="fl-left">List Product</h3>
                    <a href="?scope=product&action=view&id=3" title="" id="add-new" class="fl-left">Add Product</a>
                </div>
            </div>
            <div class="section" id="detail-page">
                <div class="section-detail">
                    <div class="filter-wp clearfix">
                        <ul class="post-status fl-left">
                            <li class="all"><a href="">All product <span class="count">(<?php echo $numProduct ?>)</span></a></li>
        
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
                                    <td><span class="thead-text">Product ID</span></td>
                                    <td><span class="thead-text">Image</span></td>
                                    <td><span class="thead-text">Product Name</span></td>
                                    <td><span class="thead-text">Price</span></td>
                                    <td><span class="thead-text">Product Color</span></td>
                                    <td><span class="thead-text">Size</span></td>
                                    <td><span class="thead-text">Status</span></td>
                                    <td><span class="thead-text">Created Time</span></td>
                                </tr>
                            </thead>
                            <tbody>
                            <?php
                                if (!empty($product) && is_array($product)) {
                                    foreach($product as $key => $item) {
                            ?>
                                <tr>
                                    <td><input type="checkbox" name="checkItem" class="checkItem"></td>
                                    <td><span class="tbody-text"><?php echo $key + 1 ?></h3></span>
                                    <td><span class="tbody-text"><?php echo $item["product_id"] ?></h3></span>
                                    <td>
                                        <div class="tbody-thumb">
                                            <img src="<?php echo explode(",",$item["Image"])[0] ?>" alt="">
                                        </div>
                                    </td>
                                    <td class="clearfix">
                                        <div class="tb-title fl-left">
                                            <a href="?scope=product&action=view&id=4&product=<?php echo $item["product_id"] ?>" title=""><?php echo $item["Name"] ?></a>
                                        </div>
                                        <ul class="list-operation fl-right">
                                            <li><span href="" title="Xóa" class="delete" action="product" item="<?php echo $item["product_id"] ?>"><i class="fa fa-trash" aria-hidden="true"></i></span></li>
                                        </ul>
                                    </td>
                                    <td><span class="tbody-text"><?php echo $item["Price"] ?></span></td>
                                    <td><span class="tbody-text"><?php echo $item["Color"] ?></span></td>
                                    <td><span class="tbody-text"><?php echo $item["Size"] ?></span></td>
                                    <td><span class="tbody-text"><?php echo $item["product_status"] == 0 ? "Hidden" : "Active" ?></span></td>
                                    <td><span class="tbody-text"><?php echo $item["created_time"] ?></span></td>
                                </tr>
                              
                            <?php
                                    }
                                } 
                            ?>
                                
                        </table>
                    </div>
                </div>
            </div>
            <div class="section" id="paging-wp">
                <div class="section-detail clearfix">
                    <p id="desc" class="fl-left">Chọn vào checkbox để lựa chọn tất cả</p>
                
                    <div class="pagination float-right">
                        <nav aria-label="...">
                        <ul class="pagination ">
                            <li class="page-item disabled">
                                <a class="page-link" href="#" tabindex="-1">Previous</a>
                            </li>
                            <?php 
                                for($i=0; $i<$totalPage; $i++) {
                                    $active = ($i+1 == $page) ? "active" : "";
                            ?>
                                <li class="page-item <?php echo $active ?>">
                                    <a class="page-link" href="?scope=product&action=view&id=1&page=<?php echo $i+1 ?>"><?php echo $i+1 ?></a>
                                </li>
                            <?php
                                }
                            ?>
                            <li>
                                <a class="page-link" href="#">Next</a>
                            </li>
                        </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>