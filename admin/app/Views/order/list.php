<?php
     require "template/header.php" ;
    //  echo "<pre>";
    //  print_r($listOrder);
     
     ?>
<div id="main-content-wp" class="list-product-page">
    <div class="wrap clearfix">
    <?php require_once "template/sidebar.php" ?>
        <div id="content" class="fl-right">
            <div class="section" id="title-page">
                <div class="clearfix">
                    <h3 id="index" class="fl-left">Danh sách đơn hàng</h3>
                </div>
            </div>
            <div class="section" id="detail-page">
                <div class="section-detail">
                    <div class="filter-wp clearfix">
                        <ul class="post-status fl-left">
                            <li class="all"><a href="">Tất cả <span class="count">(69)</span></a> |</li>
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
                                 
                                    <td><span class="thead-text">Order ID</span></td>
                                    <td><span class="thead-text">Full Name</span></td>
                                    <td><span class="thead-text">Address</span></td>
                                    <td><span class="thead-text">Email</span></td>
                                    <td><span class="thead-text">Phone</span></td>
                                    <td><span class="thead-text">Total</span></td>
          
                                    <td><span class="thead-text">Detail</span></td>
                                </tr>
                            </thead>
                            <tbody>
                                <?php 
                                    if(!empty($listOrder)) {
                                        foreach($listOrder as $item) {
                                ?>
                                     <tr>
                                        <td><input type="checkbox" name="checkItem" class="checkItem"></td>
                                        <td><span class="tbody-text"><?php echo $item["order_id"] ?></h3></span>
                                        <td><span class="tbody-text"><?php echo $item["full_name"] ?></h3></span>
                                        <td>
                                            <div class="tb-title fl-left">
                                                <a href="" title=""><?php echo $item["address"] ?></a>
                                            </div>
                                            <ul class="list-operation fl-right">
                                                <li><a href="" title="Sửa" class="edit"><i class="fa fa-pencil" aria-hidden="true"></i></a></li>
                                                <li><a href="" title="Xóa" class="delete"><i class="fa fa-trash" aria-hidden="true"></i></a></li>
                                            </ul>
                                        </td>
                                        <td><span class="tbody-text"><?php echo $item["email"] ?></span></td>
                                        <td><span class="tbody-text"><?php echo $item["phone"] ?></span></td>
                                        <td><span class="tbody-text">$<?php echo $item["total"] ?></span></td>
                      
                                        <td><a href="<?php echo "?scope=order&action=view&id=2&order={$item['order_id']}" ?>" title="" class="tbody-text">Detail</a></td>
                                    </tr>
                                <?php
                                        }
                                    }
                                ?>
                               
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
