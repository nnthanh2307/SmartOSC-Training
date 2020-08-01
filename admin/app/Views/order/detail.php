<?php 
require_once "template/header.php" ;
// echo "<pre>";
// print_r($order);
?>
<div id="main-content-wp" class="list-product-page">
    <div class="wrap clearfix">
        <?php require_once "template/sidebar.php" ?>
        <div id="content" class="detail-exhibition fl-right">
            <div class="section" id="info">
                <div class="section-head">
                    <h3 class="section-title">Order Infomation</h3>
                </div>
                <ul class="list-item">
                    <li>
                        <h3 class="title">Order Code</h3>
                        <span class="detail"><?php echo $order["order_id"] ?></span>
                    </li>
                    <li>
                        <h3 class="title">Địa chỉ nhận hàng</h3>
                        <span class="detail"><?php echo $order["address"] ?></span>
                    </li>
                    <li>
                        <h3 class="title">Email | Phone</h3>
                        <span class="detail"><?php echo $order["email"]?> | <?php echo $order["phone"] ?></span>
                    </li>
    
                </ul>
            </div>
            <div class="section">
                <div class="section-head">
                    <h3 class="section-title">Sản phẩm đơn hàng</h3>
                </div>
                <div class="table-responsive">
                    <table class="table info-exhibition">
                        <thead>
                            <tr>
                                <td class="thead-text">STT</td>
                                <td class="thead-text">Image</td>
                                <td class="thead-text">Product Name</td>
                                <td class="thead-text">Price</td>
                                <td class="thead-text">Quantity</td>
                                <td class="thead-text">Total</td>
                            </tr>
                        </thead>
                        <tbody>

                        <?php 
                            if(!empty($listProduct)) {
                                foreach ($listProduct as $key => $item) {
                        ?>
                            <tr>
                                <td class="thead-text"><?php echo $key + 1 ?></td>
                                <td class="thead-text">
                                    <div class="thumb">
                                        <img src="<?php echo explode(",",$item["Image"])[0] ?>" alt="">
                                    </div>
                                </td>
                                <td class="thead-text"><?php echo $item["Name"] ?></td>
                                <td class="thead-text">$<?php echo $item["Price"] ?></td>
                                <td class="thead-text"><?php echo $item["quantity"] ?></td>
                                <td class="thead-text">$<?php echo $item["sub_total"] ?></td>
                            </tr>
                        <?php
                                }
                            }
                        ?>
                            
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="section">
                <h3 class="section-title">Giá trị đơn hàng</h3>
                <div class="section-detail">
                    <ul class="list-item clearfix">
                        <li>
                            <span class="total-fee">Total Quantity</span>
                            <span class="total">Total</span>
                        </li>
                        <li>
                            <span class="total-fee"><?php echo $order["num_order"] ?></span>
                            <span class="total">$<?php echo $order["total"] ?></span>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
</div>