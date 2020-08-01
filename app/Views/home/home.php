<?php 
	require_once "template/header.php";	
?>
		<div id="loading" style="display:none">
        	<img src="admin/public/images/loading.gif" alt="Loading..."/>
    	</div>
        <!--================Home Banner Area =================-->
        <section class="home_banner_area">
            <div class="banner_inner d-flex align-items-center">
				<div class="container">
					<div class="banner_content row">
						<div class="col-lg-5">
							<h3>Online Shopping<br />UET-VNU!</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation.</p>
							<a class="white_bg_btn" href="#">View Collection</a>
						</div>
						<div class="col-lg-7">
							<div class="halemet_img">
								<img src="public/img/shop.jpg" alt="">
							</div>
						</div>
					</div>
				</div>
            </div>
        </section>
        <!--================End Home Banner Area =================-->
        
        <!--================Feature Product Area =================-->
        <section class="feature_product_area">
        	<div class="main_box">
				<div class="container">
					<div class="row hot_product_inner">
						<div class="col-lg-6">
							<div class="hot_p_item">
								<img class="img-fluid" src="public/img/product/hot-product/hot-p-1.jpg" alt="">
								<div class="product_text">
									<h4>Hot Deals of <br />this Month</h4>
									<a href="#">Shop Now</a>
								</div>
							</div>
						</div>
						<div class="col-lg-6">
							<div class="hot_p_item">
								<img class="img-fluid" src="public/img/product/hot-product/hot-p-2.jpg" alt="">
								<div class="product_text">
									<h4>Hot Deals of <br />this Month</h4>
									<a href="#">Shop Now</a>
								</div>
							</div>
						</div>
					</div>
					<div class="feature_product_inner">
						<div class="main_title">
							<h2>Featured Products</h2>
							<p>Who are in extremely love with eco friendly system.</p>
						</div>
						<div class="feature_p_slider owl-carousel">

							<?php 
								if(!empty($featured)) {
									foreach($featured as $item) {
							?>
							<div class="item">
								<div class="f_p_item">
									<div class="f_p_img">
										<a href="?scope=shop&action=view&id=2&productid=<?php echo $item["product_id"] ?>">
											<img class="img-fluid" src="admin/<?php echo explode(",",$item["Image"])[0] ?>" alt="">
										</a>
										<div class="p_icon">
											<span href="#"><i class="lnr lnr-heart"></i></span>
											<span class="addcart" item="<?php echo $item["product_id"] ?>"><i class="lnr lnr-cart"></i></sp>
										</div>
									</div>
									<a href="?scope=shop&action=view&id=2&productid=<?php echo $item["product_id"] ?>"><h4><?php echo $item["Name"] ?></h4></a>
									<h5>$<?php echo $item["Price"] ?></h5>
								</div>
							</div>
							<?php
									}
								}
							?>
						
						</div>
					</div>
				</div>
        	</div>
        </section>
        <!--================End Feature Product Area =================-->
        
        <!--================Deal Timer Area =================-->
        <section class="timer_area">
        	<div class="container">
        		<div class="main_title">
        			<h2>Exclusive Hot Deal Ends Soon!</h2>
        			<p>Who are in extremely love with eco friendly system.</p>
        			<a class="main_btn" href="#">Shop Now</a>
        		</div>
        		<div class="timer_inner">
					<div id="timer" class="timer">
						<div class="timer__section days">
							<div class="timer__number"></div>
							<div class="timer__label">days</div>
						</div>
						<div class="timer__section hours">
							<div class="timer__number"></div>
							<div class="timer__label">hours</div>
						</div>
						<div class="timer__section minutes">
							<div class="timer__number"></div>
							<div class="timer__label">Minutes</div>
						</div>
						<div class="timer__section seconds">
							<div class="timer__number"></div>
							<div class="timer__label">seconds</div>
						</div>
					</div>
				</div>
        	</div>
        </section>
        <!--================End Deal Timer Area =================-->
        
        <!--================Latest Product Area =================-->
        <section class="feature_product_area latest_product_area">
        	<div class="main_box">
				<div class="container">
					<div class="feature_product_inner">
						<div class="main_title">
							<h2>Latest Products</h2>
							<p>Who are in extremely love with eco friendly system.</p>
						</div>
						<div class="latest_product_inner row">

						<?php 
							if (!empty($lasted)) { 
								foreach ($lasted as $item) {
						?>
							<div class="col-lg-3 col-md-4 col-sm-6">
								<div class="f_p_item">
									<div class="f_p_img">
										<a href="?scope=shop&action=view&id=2&productid=<?php echo $item["product_id"] ?>">
											<img class="img-fluid" src="admin/<?php echo explode(",",$item["Image"])[0] ?>" alt="">
										</a>
										<div class="p_icon">
											<span href="#"><i class="lnr lnr-heart"></i></span>
											<span class="addcart" item="<?php echo $item["product_id"] ?>"><i class="lnr lnr-cart"></i></sp>
										</div>
									</div>
									<a href="?scope=shop&action=view&id=2&productid=<?php echo $item["product_id"] ?>"><h4><?php echo $item["Name"] ?></h4></a>
									<h5>$<?php echo $item["Price"] ?></h5>
								</div>
							</div>
							
						<?php
								}
							} 
						?>
						
						</div>
					</div>
				</div>
        	</div>
        </section>
        <!--================End Latest Product Area =================-->
        
        <!--================Clients Logo Area =================-->
        <section class="clients_logo_area">
        	<div class="container">
        		<div class="main_title">
        			<h2>Top Brands of this Month</h2>
        			<p>Who are in extremely love with eco friendly system.</p>
        		</div>
        		<div class="clients_slider owl-carousel">
        			<div class="item">
        				<img src="public/img/clients-logo/c-logo-1.png" alt="">
        			</div>
        			<div class="item">
        				<img src="public/img/clients-logo/c-logo-2.png" alt="">
        			</div>
        			<div class="item">
        				<img src="public/img/clients-logo/c-logo-3.png" alt="">
        			</div>
        			<div class="item">
        				<img src="public/img/clients-logo/c-logo-4.png" alt="">
        			</div>
        			<div class="item">
        				<img src="public/img/clients-logo/c-logo-5.png" alt="">
        			</div>
        		</div>
        	</div>
        </section>
        <!--================End Clients Logo Area =================-->
        
        <!--================Most Product Area =================-->
        <section class="most_product_area">
        	<div class="main_box">
				<div class="container">
					<div class="main_title">
						<h2>Most Searched Products</h2>
						<p>Who are in extremely love with eco friendly system.</p>
					</div>
					<div class="row most_product_inner">
					<?php 
						if (!empty($mostProduct)) {
							$count = 0;
							for ($i=0; $i<4; $i++) {
					?>
						<div class="col-lg-3 col-sm-6">
							<div class="most_p_list">

						<?php 
							for($j = 0; $j < 3 ; $j++) {
								
						?>
							<div class="media">
									<div class="d-flex">
										<a href="?scope=shop&action=view&id=2&productid=<?php echo $mostProduct[$count]["product_id"]  ?>">
											<img style="width:70px" src="admin/<?php echo explode(",",$mostProduct[$count]["Image"])[0] ?>" alt="">
										</a>
									</div>
									<div class="media-body">
										<a href="?scope=shop&action=view&id=2&productid=<?php echo $mostProduct[$count]["product_id"]  ?>"><h4><?php echo $mostProduct[$count]["Name"] ?></h4></a>
										<h3>$ <?php echo $mostProduct[$count]["Price"] ?></h3>
								</div>
							</div>
						<?php
						$count++;
							}
						?>
							</div>
						</div>
					<?php
							}
						}
					?>
					</div>
				</div>
        	</div>
        </section>
        <!--================End Most Product Area =================-->

<?php
	require_once "template/footer.php";
?>