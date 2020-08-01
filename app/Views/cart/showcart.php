<?php 
	require_once "template/header.php" ;

?>
        
        <!--================Home Banner Area =================-->
        <section class="banner_area">
            <div class="banner_inner d-flex align-items-center">
				<div class="container">
					<div class="banner_content text-center">
						<h2>Shopping Cart</h2>
						
					</div>
				</div>
            </div>
        </section>
        <!--================End Home Banner Area =================-->
        
        <!--================Cart Area =================-->
        <section class="cart_area">
        	<div class="container">
        		<div class="cart_inner">
					<div class="table-responsive">
						<table class="table">
							<thead>
								<tr>
									<th scope="col">Product</th>
									<th scope="col">Price</th>
									<th scope="col">Quantity</th>
									<th scope="col">Total</th>
								</tr>
							</thead>
							<tbody>
								<?php 
									if (!empty($cartOrder)) {
										foreach($cartOrder as $item) {
								?>
								<tr>
									<td>
										<div class="media">
											<div class="d-flex">
												<a href="<?php echo $item["url"] ?>"><img src="admin/<?php echo $item["productImage"] ?>" alt=""></a>
											</div>
											<div class="media-body">
												<a href = "<?php echo $item["url"] ?>"><?php echo $item["productName"] ?></a>
											</div>
										</div>
									</td>
									<td>
										<h5>$<?php echo $item["price"] ?></h5>
									</td>
									<td>
										<div class="product_count">
											<input item="<?php echo $item["productID"] ?>" type="text" name="qty" id="<?php echo 'product'.$item['productID'] ?>" maxlength="12" value="<?php echo $item["qty"] ?>" title="Quantity:" class="input-text qty">
											<button onclick="var result = document.getElementById('<?php echo 'product'.$item['productID'] ?>'); var sst = result.value; if( !isNaN( sst )) result.value++;return false;" class="update increase items-count" type="button"><i class="lnr lnr-chevron-up"></i></button>
											<button onclick="var result = document.getElementById('<?php echo 'product'.$item['productID'] ?>'); var sst = result.value; if( !isNaN( sst ) &amp;&amp; sst > 0 ) result.value--;return false;" class="update reduced items-count" type="button"><i class="lnr lnr-chevron-down"></i></button>
										</div>
									</td>
									<td>
										<h5 id = "subTotal_<?php echo $item["productID"] ?>">$<?php echo $item["subTotal"] ?></h5>
									</td>
								</tr>
								<?php
										}
									}
								?>
									<tr><td></td><td></td>
									<td>
										<h5>Subtotal</h5>
									</td>
									<td>
										<h5 id = "total">$<?php if(!empty($_SESSION["cart"]["info"]) ) echo $_SESSION["cart"]["info"]["total"] ?></h5>
									</td>
								</tr>
								<tr class="out_button_area">
									<td></td><td></td><td></td>
									<td>
										<div class="checkout_btn_inner">
											<a class="gray_btn" href="?scope=shop&action=view&id=1">Continue Shopping</a>
											<a class="main_btn" href="?scope=cart&action=view&id=2">Proceed to checkout</a>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
        		</div>
        	</div>
        </section>
        <!--================End Cart Area =================-->
  
<?php require_once "template/footer.php" ?>