  <?php 
    require_once "template/header.php" ;
  ?>
  <!--================Home Banner Area =================-->
  <section class="banner_area">
            <div class="banner_inner d-flex align-items-center">
				<div class="container">
					<div class="banner_content text-center">
						<h2>Product Checkout</h2>
					</div>
				</div>
            </div>
        </section>
        <!--================End Home Banner Area =================-->
        
        <!--================Checkout Area =================-->
        <section class="checkout_area p_120">
        	<div class="container">
            <form class="row contact_form" method="POST" >
        		<div class="billing_details">
        			<div class="row">
        				<div class="col-lg-7">
        					<h3>Billing Details</h3>
        					<!-- <form class="row contact_form" method="post" > -->
								<div class="col-md-12 form-group p_star">
									<input type="text" class="form-control" id="last" name="full_name" placeholder="Full Name *" required>
								</div>
								<div class="col-md-12 form-group">
									<input type="email" class="form-control" id="email" name="email" placeholder="Email *" required>
								</div>
								<div class="col-md-12 form-group p_star">
									<input type="text" class="form-control" id="address" name="address" placeholder="Address *" required>
								</div>
								<div class="col-md-12 form-group p_star">
									<input type="text" class="form-control" id="phone" name="phone" placeholder="Phone *" required>
								</div>
								<!-- <div class="col-md-12 form-group p_star">
									<select class="country_select">
										<option value="1">Country</option>
										<option value="2">Country</option>
										<option value="4">Country</option>
									</select>
								</div> -->
								<div class="col-md-12 form-group">
									<div class="creat_account">
										<h3>Shipping Details</h3>
										<!-- <input type="checkbox" id="f-option3" name="selector"> -->
										<label for="f-option3">Ship to a different address?</label>
									</div>
									<textarea class="form-control" name="message" id="message" rows="1" placeholder="Order Notes"></textarea>
                                </div>
							<!-- </form> -->
        				</div>
        				<div class="col-lg-5">
        					<div class="order_box">
        						<h2>Your Order</h2>
        						<ul class="list">
                                    <li><a href="#">Product <span>Total</span></a></li>
                                        <?php 
                                            if(!empty($listOrder)) {
                                                foreach($listOrder as $item) {
                                        ?>
                                            <li>
                                                <a href="<?php echo $item["url"] ?>"><?php echo $item["productName"] ?> 
                                                    <span class="middle">x <?php echo $item["qty"] ?></span> 
                                                    <span class="last">$<?php echo $item["subTotal"] ?></span>
                                                </a>
                                            </li>
                                        <?php
                                                }
                                            }
                                        ?>
        						</ul>
        						<ul class="list list_2">
        							<li><a href="#">Total <span>$<?php if(!empty($orderInfo["total"])) echo $orderInfo["total"] ?></span></a></li>
        						</ul>
        						<div class="payment_item">
        							<div class="radion_btn">
										<!-- <input type="radio" id="f-option5" name="selector"> -->
										<label for="f-option5">Check payments</label>
										<div class="check"></div>
        							</div>
        							<p>Please send a check to Store Name, Store Street, Store Town, Store State / County, Store Postcode.</p>
        						</div>
        						<div class="payment_item active">
        							<div class="radion_btn">
										<!-- <input type="radio" id="f-option6" name="selector"> -->
										<label for="f-option6">Paypal </label>
										<img src="img/product/single-product/card.jpg" alt="">
										<div class="check"></div>
        							</div>
        							<p>Please send a check to Store Name, Store Street, Store Town, Store State / County, Store Postcode.</p>
        						</div>
        						<div class="creat_account">
									<!-- <input type="checkbox" id="f-option4" name="selector"> -->
									<label for="f-option4">I’ve read and accept the </label>
									<a href="#">terms & conditions*</a>
								</div>
								<input type="submit" class="main_btn" value="Proceed to Paypal">
       							<!-- <a class="main_btn" href="#">Proceed to Paypal</a> -->
        					</div>
        				</div>
        			</div>
                </div>
            </form>
        	</div>
        </section>
        <!--================End Checkout Area =================-->
        <?php require_once "template/footer.php" ?>