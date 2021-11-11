
	<!-- Page info -->
	<div class="page-top-info">
    
		<div class="container">

			<h4>PRODUK TERMURAH</h4>

			<div class="site-pagination">
        
				<a href="<?= base_url('') ?>"><i class="fa fa-home"></i> Home</a> /

				<a href="">Produk Termurah</a>
			</div>

		</div>

	</div>

	<!-- Page info end -->


	<!-- Category section -->
	<section class="category-section spad">

		<div class="container">

			<div class="row">

				<div class="col-lg-3 order-2 order-lg-1">

					<div class="filter-widget">

						<h2 class="fw-title">Categories</h2>

						<ul class="category-menu">

              <?php foreach ($kategori as $kate) : ?>

                  <div class="tab1">

                      <div class="place">

                        <li class="sort"><a href="<?= base_url($kate['url_slug_kategori']) ?>"><?= $kate['nama_kategori_produk'] ?></a></li>
                      
                        <div class="clearfix"> </div>
                        
                    </div>

                </div>

              <?php endforeach; ?>

						</ul>

					</div>

                    <div class="filter-widget">

                        <h2 class="fw-title">Filter</h2>

                        <ul class="category-menu">

                            <li class="sort"><a href="<?= base_url('produk/produk-terbaru') ?>">Produk Terbaru</a></li>

                            <div class="clearfix"> </div>

                        </ul>

                        <ul class="category-menu">

                            <li class="sort"><a href="<?= base_url('produk/produk-termurah') ?>">Produk Termurah</a></li>

                            <div class="clearfix"> </div>

                        </ul>

                        <ul class="category-menu">

                            <li class="sort"><a href="<?= base_url('produk/produk-terlaris') ?>">Produk Terlaris</a></li>

                            <div class="clearfix"> </div>
                        </ul>

                        </div>

					<div class="filter-widget mb-0">
						<!-- <h2 class="fw-title">refine by</h2> -->
						<!-- <div class="price-range-wrap">
							<h4>Price</h4>
                <div class="price-range ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content" data-min="10" data-max="270">
								<div class="ui-slider-range ui-corner-all ui-widget-header" style="left: 0%; width: 100%;"></div>
								<span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default" style="left: 0%;">
								</span>
								<span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default" style="left: 100%;">
								</span>
							</div>
							<div class="range-slider">
                                <div class="price-input">
                                    <input type="text" id="minamount">
                                    <input type="text" id="maxamount">
                                </div>
                            </div>
                        </div> -->
					</div>
					<div class="filter-widget mb-0">
						<!-- <h2 class="fw-title">color by</h2>
						<div class="fw-color-choose">
							<div class="cs-item">
								<input type="radio" name="cs" id="gray-color">
								<label class="cs-gray" for="gray-color">
									<span>(3)</span>
								</label>
							</div>
							<div class="cs-item">
								<input type="radio" name="cs" id="orange-color">
								<label class="cs-orange" for="orange-color">
									<span>(25)</span>
								</label>
							</div>
							<div class="cs-item">
								<input type="radio" name="cs" id="yollow-color">
								<label class="cs-yollow" for="yollow-color">
									<span>(112)</span>
								</label>
							</div>
							<div class="cs-item">
								<input type="radio" name="cs" id="green-color">
								<label class="cs-green" for="green-color">
									<span>(75)</span>
								</label>
							</div>
							<div class="cs-item">
								<input type="radio" name="cs" id="purple-color">
								<label class="cs-purple" for="purple-color">
									<span>(9)</span>
								</label>
							</div>
							<div class="cs-item">
								<input type="radio" name="cs" id="blue-color" checked="">
								<label class="cs-blue" for="blue-color">
									<span>(29)</span>
								</label>
							</div>
						</div>
					</div>
					<div class="filter-widget mb-0">
						<h2 class="fw-title">Size</h2>
						<div class="fw-size-choose">
							<div class="sc-item">
								<input type="radio" name="sc" id="xs-size">
								<label for="xs-size">XS</label>
							</div>
							<div class="sc-item">
								<input type="radio" name="sc" id="s-size">
								<label for="s-size">S</label>
							</div>
							<div class="sc-item">
								<input type="radio" name="sc" id="m-size"  checked="">
								<label for="m-size">M</label>
							</div>
							<div class="sc-item">
								<input type="radio" name="sc" id="l-size">
								<label for="l-size">L</label>
							</div>
							<div class="sc-item">
								<input type="radio" name="sc" id="xl-size">
								<label for="xl-size">XL</label>
							</div>
							<div class="sc-item">
								<input type="radio" name="sc" id="xxl-size">
								<label for="xxl-size">XXL</label>
							</div>
						</div> -->
					</div>
					<div class="filter-widget">
						<!-- <h2 class="fw-title">Brand</h2> -->
						<ul class="category-menu">
							<!-- <li><a href="#">Abercrombie & Fitch <span>(2)</span></a></li>
							<li><a href="#">Asos<span>(56)</span></a></li>
							<li><a href="#">Bershka<span>(36)</span></a></li>
							<li><a href="#">Missguided<span>(27)</span></a></li>
							<li><a href="#">Zara<span>(19)</span></a></li> -->

						</ul>

					</div>

				</div>

        <div class="col-lg-9 order-1 order-lg-2 mb-5 mb-lg-0">

          <div class="row">

		  <?php foreach ($produk as $prod) : ?>

				<a href="<?= base_url('user/Home/detail/' . $prod['id_produk']) ?>">

                  <div class="col-lg-4 col-sm-6">

                    <div class="product-item">

                      <div class="pi-pic">

                            <?php if ($prod['foto_produk1'] == null) : ?>

                                <img style="width: contain; height: 250px;" src="<?= base_url() ?>assets/img/default.jpg" class="img-responsive" alt="" />

                            <?php else : ?>

                                <img style="width: contain; height: 250px;" src="<?= base_url() ?>assets/img/produk_penjual/<?= $prod['foto_produk1'] ?>" class="img-responsive" alt="" />

                            <?php endif; ?> 

                          </a>

                            <div class="pi-links">

                            <a href="<?= base_url($prod['url_slug_kategori'] . '/' . $prod['url_slug_produk']) ?>" class="add-card"><i class="far fa-question-circle"></i><span>DETAIL ITEM</span></a>

                            </div>

                        </div>

                        <div class="product-info simpleCart_shelfItem">
                                    <div class="product-info-cust prt_name">
                                <h4><?= substr($prod['nama_produk'], 0, 18) . "...." ?></h4>
                                <!-- <p>Id: <?= $prod['id_produk'] ?></p> -->
                                <p></p>
                                <?php if (isset($prod['harga_promo'])) : ?>
                                    <?php date_default_timezone_set("Asia/Jakarta");
                                    $now = date('Y-m-d H:i:s');
                                    $now = date('Y-m-d H:i:s', strtotime($now));

                                    $mulai = date('Y-m-d H:i:s', strtotime($prod['tgl_mulai']));
                                    $selesai = date('Y-m-d H:i:s', strtotime($prod['tgl_selesai']));

                                    if (($now >= $mulai) && ($now <= $selesai)) { ?>
                                        <span class="item_price">Rp. <s><?= number_format($prod['harga'], 0, ',', '.') ?></s> <?= number_format($prod['harga_promo'], 0, ',', '.') ?></span>
                                    <?php } else { ?>
                                        <span class="item_price">Rp. <?= number_format($prod['harga'], 0, ',', '.') ?></span>
                                    <?php } ?>
                                <?php else : ?>
                                    <span class="item_price">Rp. <?= number_format($prod['harga'], 0, ',', '.') ?></span>
                                <?php endif; ?>
                            </div>
                            <br>

                      <!-- <div class="text-center">

            			      <div class="site-btn">

                          Id: <?= $prod['id_produk'] ?>

                        </div> -->

                      </div>

                    <br>

                  </div>

                </div>

              <?php endforeach; ?>

            </div>

          </div>

				</div>

			</div>

		</div>

	</div>

</section>

	<!-- Category section end -->

  <script type="text/javascript" src="<?= base_url() ?>assets/js/jquery-ui.min.js"></script>

            <link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/css/jquery-ui.css">

            <script type='text/javascript'>

                //<![CDATA[ 

                $(window).load(function() {

                    $("#slider-range").slider({

                        range: true,

                        min: 0,
                        
                        max: 400000,

                        values: [8500, 350000],

                        slide: function(event, ui) {

                            $("#amount").val("$" + ui.values[0] + " - $" + ui.values[1]);
                            
                        }

                    });

                    $("#amount").val("$" + $("#slider-range").slider("values", 0) + " - $" + $("#slider-range").slider("values", 1));

                }); //]]> 
            </script>
            <!---->

