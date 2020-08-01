<?php
	require_once "template/header.php";
	$image = explode(",",$product["Image"]);
   
?>
			<div id="loading" style = "display:none" >
        		<img src="admin/public/images/loading.gif" alt="Loading..."/>
   		 	</div>
            <section class="banner_area">
            <div class="banner_inner d-flex align-items-center">
				<div class="container">
					<div class="banner_content text-center">
						<h2>Single Product Page</h2>
					
					</div>
				</div>
            </div>
        </section>
        <!--================Single Product Area =================-->
        <div class="product_image_area">
        	<div class="container">
        		<div class="row s_product_inner">
        			<div class="col-lg-6">
        				<div class="s_product_img">
							<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
								<ol class="carousel-indicators">
								<?php 
										foreach( $image as $key => $value) {
								?>
										<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active">
											<img src="public/img/product/single-product/s-product-s-2.jpg" alt="">
										</li>
								<?php
									}
								?>
								</ol>
								<div class="carousel-inner">
											<div class="carousel-item active">
												<img class="d-block w-100" src="admin/<?php echo $value  ?>" alt="First slide">
											</div>
									<?php 
										foreach( $image as $value) {
									?>
											<div class="carousel-item ">
												<img class="d-block w-100" src="admin/<?php echo $value  ?>" alt="First slide">
											</div>
									<?php
										}
									?>
								</div>
							</div>
        				</div>
        			</div>
        			<div class="col-lg-5 offset-lg-1">
        				<div class="s_product_text">
        					<h3><?php echo $product["Name"] ?></h3>
        					<h2>$<?php echo $product["Price"] ?></h2>
        					<ul class="list">
        						<li><a class="active" href="#"><span>Color</span> : <?php echo $product["Color"] ?></a></li>
        						<li><a href="#"><span>Size</span> : <?php echo $product["Size"] ?></a></li>
        					</ul>
        					<p><?php echo $product["Description"] ?></p>
        					<div class="product_count">
        						<label for="qty">Quantity:</label>
								<input type="text" name="qty" id="sst" maxlength="12" value="1" title="Quantity:" class="input-text qty">
								<button onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst )) result.value++;return false;" class="increase items-count" type="button"><i class="lnr lnr-chevron-up"></i></button>
								<button onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst ) &amp;&amp; sst > 0 ) result.value--;return false;" class="reduced items-count" type="button"><i class="lnr lnr-chevron-down"></i></button>
							</div>
        					<div class="card_area">
        						<span class="btn_add main_btn" item="<?php echo $_GET["productid"] ?>" href="#">Add to Cart</span>
        						<a class="icon_btn"><i class="lnr lnr lnr-diamond"></i></a>
        						<a class="icon_btn"><i class="lnr lnr lnr-heart"></i></a>
        					</div>
        				</div>
        			</div>
        		</div>
        	</div>
        </div>
        <!--================End Single Product Area =================-->
        
        <!--================Product Description Area =================-->
        <section class="product_description_area">
        	<div class="container">
				<ul class="nav nav-tabs" id="myTab" role="tablist">
					<li class="nav-item">
					<a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Product Detail</a>
					</li>
					<li class="nav-item">
					<a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Description</a>
					</li>	
				</ul>
				<div class="tab-content" id="myTabContent">
					<div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                        <?php echo $product["Detail"] ?>
					</div>
					<div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
					<div class="table-responsive">
						<?php echo $product["Description"] ?>
						<hr>
						<table class="table">
								<tbody>
									<tr>
										<td>
											<h5>Color</h5>
										</td>
										<td>
											<h5><?php echo $product["Color"] ?></h5>
										</td>
									</tr>
									<tr>
										<td>
											<h5>Size</h5>
										</td>
										<td>
											<h5><?php echo $product["Size"] ?></h5>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
        	</div>
        </section>
        <!--================End Product Description Area =================-->
        
        <!--================Most Product Area =================-->
        <section class="most_product_area most_p_withoutbox">
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
<?php
    require_once "template/footer.php";
?>