<?php 

    require_once "template/header.php" ;

?>
		<div id="loading" style = "display:none" >
        	<img src="admin/public/images/loading.gif" alt="Loading..."/>
   		 </div>
        <section class="banner_area">
            <div class="banner_inner d-flex align-items-center">
				<div class="container">
					<div class="banner_content text-center">
						<h2>Shop Category Page</h2>
					</div>
				</div>
            </div>
        </section>
        <!--================End Home Banner Area =================-->
        
        <!--================Category Product Area =================-->
        <section class="cat_product_area p_120">
        	<div class="container">
        		<div class="row flex-row-reverse">
        			<div class="col-lg-9">
        				<div class="product_top_bar">
        					<div class="left_dorp">
								<select class="sorting">
									<option value="1">Sort A-Z</option>
									<option value="2">Sort Z-A</option>
									<option value="3">New</option>
									<option value="4">Lasted</option>
								</select>
        					</div>
        					<div class="right_page ml-auto">
								<nav class="cat_page" aria-label="Page navigation example">
									<ul class="pagination">
										<?php echo $pagination ?>
									</ul>
								</nav>
        					</div>
        				</div>
        				<div class="latest_product_inner row" id ="filter_ajax">
                            <?php 
                                if (!empty($product) && is_array($product)) {
                                    foreach ($product as $key => $item) {
                            ?>
                                <div class="col-lg-4 col-md-4 col-sm-6">
                                    <div class="f_p_item">
                                        <div class="f_p_img">
                                            <a href="?scope=shop&action=view&id=2&productid=<?php echo $item["product_id"] ?>"><img class="img-fluid" src="admin/<?php echo explode(",",$item["Image"])[0] ?>" alt=""></a>
                                            <div class="p_icon">
                                                <span><i class="lnr lnr-heart"></i></span>
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
        			<div class="col-lg-3">
        				<div class="left_sidebar_area">
        					<aside class="left_widgets cat_widgets">
        						<div class="l_w_title">
									<h3>Browse Categories</h3>
								</div>
        						<div class="widgets_inner">
								<?php echo $category ?>
        						</div>
        					</aside>
        					<aside class="left_widgets p_filter_widgets">
        						<div class="l_w_title">
									<h3>Product Filters</h3>
								</div>
        						<div class="widgets_inner">
        							<h4>Color</h4>
									<ul class="list">
                                        <?php if(!empty($color)) {
                                            foreach($color as $item) {
                                        ?>
                                            <li class="color" color="<?php echo trim($item["color_name"])  ?>">
                                                <span href="#" class = "active"><?php echo $item["color_name"] ?></span>
                                        </li>
                                        <?php
                                            }
                                        } 
                                        ?>
									</ul>
        						</div>
        						<div class="widgets_inner">
        							<h4>Size</h4>
        							<ul class="list">
                                    <?php if(!empty($size)) {
                                            foreach($size as $item) {
                                        ?>
                                            <li class = "size" size="<?php echo trim($item["size_name"]) ?>">
                                                <span href="#" class = "">Size <?php echo $item["size_name"] ?></>
                                        	</li>
                                        <?php
                                            }
                                        } 
                                        ?>
									</ul>
        						</div>
        						<!-- <div class="widgets_inner">
        							<h4>Price</h4>
        							<div class="range_item">
        								<div id="slider-range"></div>
										<div class="row m0">
											<label for="amount">Price : </label>
  											<input type="text" id="amount" readonly>
										</div>
									</div>
        						</div> -->
        					</aside>
        				</div>
        			</div>
        		</div>
        	</div>
        </section>
        <!--================End Category Product Area =================-->
        
        <!--================Most Product Area =================-->
        <section class="most_product_area most_p_withoutbox">
			<div class="container">
				<div class="main_title">
					<h2>New Product</h2>
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
										<a href="#"><h4><?php echo $mostProduct[$count]["Name"] ?></h4></a>
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
        </section>
        <!--================End Most Product Area =================-->
        
     

<?php require_once "template/footer.php" ?>