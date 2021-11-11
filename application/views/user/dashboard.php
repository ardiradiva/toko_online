<?php
//$sesi2 = session_id();
$this->load->model('toko_online_model');
$cart = $this->toko_online_model->get_keranjang_belanja(array('keranjang_belanja.id_keranjang_belanja' => $this->session->userdata('id_kpesan')));
$total = $this->toko_online_model->get_total('keranjang_belanja', array('id_keranjang_belanja' => $this->session->userdata('id_kpesan')), 'jumlah_produk', 'subtotal_belanja');
$jumlah = $this->toko_online_model->get_jumlah('keranjang_belanja', array('id_keranjang_belanja' => $this->session->userdata('id_kpesan')), 'jumlah_produk', 'berat_total');
$kategori = $this->toko_online_model->get_table('kategori_produk');
$logo = $this->toko_online_model->get_table('logo');
$sesi = $this->session->userdata('id_kpesan');

function tgl_indo($tanggal)
{
    $bulan = array(
        1 =>   'Januari',
        'Februari',
        'Maret',
        'April',
        'Mei',
        'Juni',
        'Juli',
        'Agustus',
        'September',
        'Oktober',
        'November',
        'Desember'
    );
    $pecahkan = explode('-', $tanggal);

    // variabel pecahkan 2 = tanggal
    // variabel pecahkan 1 = bulan
    // variabel pecahkan 0 = tahun

    return $pecahkan[0] . ' ' . $bulan[(int)$pecahkan[1]] . ' ' . $pecahkan[2];
}


?>

<!DOCTYPE html>

<html lang="zxx">

<head>

  <title><?php echo $title ?></title>

	<meta charset="UTF-8">

    <script type="application/x-javascript">

          addEventListener("load", function() {

              setTimeout(hideURLbar, 0);

          }, false);

          function hideURLbar() {

              window.scrollTo(0, 1);

          }

    </script>

	<meta name="description" content=" Divisima | eCommerce Template">
	<meta name="keywords" content="divisima, eCommerce, creative, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<!-- Favicon -->
	<link href="img/favicon.ico" rel="shortcut icon"/>
    
    <link rel="stylesheet" href="<?= base_url() ?>assets/css/font-awesome.min.css" />

  <!-- Midtrans -->
  <script type="text/javascript" src="http://apps.sandbox.midtrans.com/snap/snap.js" data-client-key="SB-Mid-client-WIXa4ZorDyT_Kxot"></script>

  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>

  <!-- <script type="text/javascript" src="<?= base_url() ?>/asset/js/jquery.fancybox.pack.js"></script> -->

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Josefin+Sans:300,300i,400,400i,700,700i" rel="stylesheet">

    <!--Akun Profile-->
    <link href="<?= base_url() ?>assets/css/akun.css" rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

  <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js"></script>

  <script src="https://kit.fontawesome.com/29e279195e.js" crossorigin="anonymous"></script>
  
  <!-- <script type='text/javascript' src="<?php echo base_url() ?>assets/js/jquery-1.11.1.min.js"></script>

  <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css" /> -->

  <link href='http://fonts.googleapis.com/css?family=Aladin' rel='stylesheet' type='text/css'>

  <link href='http://fonts.googleapis.com/css?family=Montserrat|Raleway:400,200,300,500,600,700,800,900,100' rel='stylesheet' type='text/css'>

  <link href='http://fonts.googleapis.com/css?family=Playfair+Display:400,700,900' rel='stylesheet' type='text/css'>
	
    <!-- Stylesheets -->
    <link rel="stylesheet" href="<?= base_url() ?>assets2/css/bootstrap.min.css"/>

    <link rel="stylesheet" href="<?= base_url() ?>assets2/css/font-awesome.min.css"/>

    <link rel="stylesheet" href="<?= base_url() ?>assets2/css/flaticon.css"/>

    <link rel="stylesheet" href="<?= base_url() ?>assets2/css/slicknav.min.css"/>

    <link rel="stylesheet" href="<?= base_url() ?>assets2/css/jquery-ui.min.css"/>

    <link rel="stylesheet" href="<?= base_url() ?>assets2/css/owl.carousel.min.css"/>

    <link rel="stylesheet" href="<?= base_url() ?>assets2/css/animate.css"/>

    <link rel="stylesheet" href="<?= base_url() ?>assets2/css/style.css"/>

    <link href="<?= base_url() ?>assets/css/form.css" rel="stylesheet" type="text/css" media="all" />

    <link rel="stylesheet" href="<?php echo base_url() ?>assets/css/invoice.css" type='text/css' />

    <link href="<?= base_url() ?>assets/css/produk-detail.css" rel="stylesheet">

    <link href="<?= base_url() ?>sweetalert/sweetalert.css" rel="stylesheet">

    <link href="<?= base_url() ?>assets/css/etalage.css" rel="stylesheet">

    <link href="<?= base_url() ?>assets/css/produk-detail.css" rel="stylesheet">

    <link href="<?= base_url() ?>assets/css/akun.css" rel='stylesheet' type='text/css' />


	<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

</head>

<body>
  
	<!-- Page Preloder -->

	<div id="preloder">

		<div class="loader"></div>

	</div>

	<!-- Header section -->
	<header class="header-section">

		<div class="header-top">

			<div class="container">

				<div class="row">

					<div class="col-lg-2 text-center text-lg-left">

						<!-- logo -->
						<a href="./index.html" class="site-logo">

                        <a href="<?= base_url('user/Home') ?>"><img src="<?= base_url() ?>assets/img/<?= $logo[0]['logo'] ?>" alt="" /></a>

						</a>

					</div>

					<div class="col-xl-6 col-lg-5">

                        <form class="header-search-form action=" method="post" <?php echo base_url('user/Home/cari_produk') ?>>

							<input type="text" placeholder="Search on divisima ....">

							<button><i class="flaticon-search"></i></button>

						</form>

					</div>

					<div class="col-xl-4 col-lg-5">

						<div class="user-panel">

							<div class="up-item">

								<a>

                <?php if ($this->session->userdata('nama_member') == "") { ?>

                        <div class="bl-flex-item">

                            <div class="bl-flex-container align-items-center">

                                <!-- <a href="<?php echo base_url('register') ?>" rel="nofollow" class="pr-4 sigil-header__nav bl-link is-hide-underline"><p class="pr-4 sigil-header__nav-action bl-text bl-text--body-small bl-text--semi-bold" style="color:white;">Daftar</p></a>  -->

                                <a href="<?php echo base_url('login') ?>" rel="nofollow" class="sigil-header__nav te-header-login">

                                <i class="flaticon-profile"></i></span>

                                <b><p class="up-item" style="color:black;">Login or Sign Up</p></b>

                                </a>

                            </div>

                        </div>

                        <?php } else { ?>

                        <li class="navbar__link navbar__link--tappable navbar__link--hoverable navbar__link--account">

                            <div class="stardust-popover">

                                <a href="<?php echo base_url('user/home/akun') ?>" aria-describedby="stardust-popover4" class="stardust-popover__target">

                                    <div class="navbar__link--account__container">

                                        <div class="shopee-avatar">

                                            <div class="shopee-avatar__placeholder">

                                                <svg enable-background="new 0 0 15 15" viewBox="0 0 15 15" x="0" y="0" class="shopee-svg-icon icon-headshot">

                                                    <g>

                                                        <circle cx="7.5" cy="4.5" fill="none" r="3.8" stroke-miterlimit="10"></circle>

                                                        <path d="m1.5 14.2c0-3.3 2.7-6 6-6s6 2.7 6 6" fill="none" stroke-linecap="round" stroke-miterlimit="10"></path>

                                                    </g>

                                                </svg>

                                            </div>

                                        </div>

                                        <div class="navbar__username"><?php echo $this->session->userdata('nama_member') ?></div>

                                    </div>

                                </a>

                            </div>

                        </li>

                    <?php } ?>
                    
							</div>

							<div class="up-item">

								<div class="shopping-card">

                <div class="cart box_1">

                    <a href="<?= base_url('cart') ?>">

                        <h3>(<span id="simpleCart_quantity"></span> items)<img src="<?= base_url() ?>assets/img/bag.png" alt=""></h3>
                        
                    </a>

                    <?php if ($cart != null) : ?>

                        <p><a href="<?php echo base_url() ?>user/home/empty_keranjang_belanja/" class="simpleCart_empty">Empty cart</a></p>

                        <!-- <p><a href="<?php echo base_url() ?>user/home/remove_keranjang_belanja/<?= $cart[0]['id'] ?>" class="simpleCart_empty">Empty cart</a></p> -->

                    <?php endif; ?>

                    <div class="clearfix"> </div>

                </div>

            </div>

          <div class="clearfix"></div>

            </div>

              </div>

                </div>

                  </div>

                    </div>
                    <nav class="main-navbar">

                    <div class="container">
                        <!-- menu -->
                        <ul class="main-menu">

                            <li><?php if (!isset($nav)) {
                                $nav = 0;
                            } ?>
                            <?php if ($nav == 1) { ?>
                                <li class="active grid"><a class="color2" href="<?= base_url('') ?>">Home</a></li>
                            <?php } else { ?>
                                <li class="grid"><a class="color2" href="<?= base_url('') ?>">Home</a></li>
                            <?php } ?>
                            </li>
                            <li><?php if ($nav == 2) { ?>

                                <li class="active grid"><a class="color2" href="#">Produk</a>

                                <?php } else { ?>

                                <li class="grid"><a class="color2" href="#">Produk</a>

                                <?php } ?>

                                <ul class="sub-menu">
                                    <li>
                                <?php foreach ($kategori as $result) : ?>
                                    <div class="col2">
                                        <div class="h_nav" data-toogle="tooltip" data-placement="top" title="<?= strtoupper($result['nama_kategori_produk']) ?>">
                                            <a href="<?= base_url($result['url_slug_kategori']) ?>"><?= substr($result['nama_kategori_produk'], 0, 30) ?></a>
                                        </div>
                                    </div>
                                <?php endforeach; ?>
                                </li>
                                </ul>
                            </li>                            
                            <li><?php if ($nav == 6) { ?>
                            <li class="active grid"><a class="color2" href="<?= base_url('promo') ?>">Promo</a></li>
                                <?php } else { ?>
                                    <li class="grid"><a class="color2" href="<?= base_url('promo') ?>">Promo</a></li>
                                <?php } ?>
                            </li>
                            <li>
                            <?php if ($nav == 3) : ?>
                            <li class="active grid"><a class="color2" href="<?= base_url('cara-belanja') ?>">Cara Belanja</a></li>
                                <?php else : ?>
                                    <li class="grid"><a class="color2" href="<?= base_url('cara-belanja') ?>">Cara Belanja</a></li>
                                <?php endif; ?>
                            </li>
                            <li>
                            <?php if ($nav == 4) { ?>
                            <li class="active grid"><a class="color2" href="<?= base_url('order') ?>">Konfirmasi Pembayaran</a></li>
                                <?php } else { ?>
                                    <li class="grid"><a class="color2" href="<?= base_url('order') ?>">Konfirmasi Pembayaran</a></li>
                                <?php } ?>
                            </li>
                            <li>
                            <?php if ($nav == 5) : ?>
                            <li class="active grid"><a class="color2" href="<?= base_url('kontak-kami') ?>">About</a></li>
                                <?php else : ?>
                                    <li class="grid"><a class="color2" href="<?= base_url('kontak-kami') ?>">About</a></li>
                                <?php endif; ?>
                                </li>
                        </ul>
                    </div>
		</nav>

	              </header>

	<!-- Header section end -->

    <!-- Main Content -->

    <!-- <?php echo 'sess' . $this->session->userdata("admin_username") ?> -->

    <?php $this->load->view($content); ?>

    <!-- End Main Content -->

	<!-- Footer section -->
	<section class="footer-section">

		<div class="container">

			<div class="footer-logo text-center">

				<a href="index.html"><img src="./img/logo-light.png" alt=""></a>

			</div>

			<div class="row">

				<div class="col-lg-3 col-sm-6">

					<div class="footer-widget about-widget">

						<h2>About</h2>

						<p>Donec vitae purus nunc. Morbi faucibus erat sit amet congue mattis. Nullam frin-gilla faucibus urna, id dapibus erat iaculis ut. Integer ac sem.</p>

						<img src="img/cards.png" alt="">

					</div>

				</div>
        
				<div class="col-lg-3 col-sm-6">

					<div class="footer-widget about-widget">

						<h2>Questions</h2>

						<ul>
              
							<li><a href="">About Us</a></li>

							<li><a href="">Track Orders</a></li>

							<li><a href="">Returns</a></li>

							<li><a href="">Jobs</a></li>

							<li><a href="">Shipping</a></li>

							<li><a href="">Blog</a></li>

						</ul>

						<ul>

							<li><a href="">Partners</a></li>

							<li><a href="">Bloggers</a></li>
              
							<li><a href="">Support</a></li>

							<li><a href="">Terms of Use</a></li>

							<li><a href="">Press</a></li>

						</ul>

					</div>

				</div>

				<div class="col-lg-3 col-sm-6">

					<div class="footer-widget about-widget">

						<h2>Questions</h2>

						<div class="fw-latest-post-widget">

							<div class="lp-item">

								<div class="lp-thumb set-bg" data-setbg="img/blog-thumbs/1.jpg"></div>

								<div class="lp-content">

									<h6>what shoes to wear</h6>

									<span>Oct 21, 2018</span>

									<a href="#" class="readmore">Read More</a>

								</div>

							</div>
              
							<div class="lp-item">

								<div class="lp-thumb set-bg" data-setbg="img/blog-thumbs/2.jpg"></div>

								<div class="lp-content">
                  
									<h6>trends this year</h6>

									<span>Oct 21, 2018</span>

									<a href="#" class="readmore">Read More</a>

								</div>

							</div>

						</div>

					</div>

				</div>

				<div class="col-lg-3 col-sm-6">

					<div class="footer-widget contact-widget">

						<h2>Questions</h2>

						<div class="con-info">

							<span>C.</span>

							<p>Your Company Ltd </p>

						</div>

						<div class="con-info">

							<span>B.</span>

							<p>1481 Creekside Lane  Avila Beach, CA 93424, P.O. BOX 68 </p>

						</div>

						<div class="con-info">

							<span>T.</span>

							<p>+53 345 7953 32453</p>

						</div>

						<div class="con-info">

							<span>E.</span>

							<p>office@youremail.com</p>

						</div>

					</div>

				</div>

			</div>

		</div>

		<div class="social-links-warp">

			<div class="container">

				<div class="social-links">

					<a href="" class="instagram"><i class="fa fa-instagram"></i><span>instagram</span></a>
					<a href="" class="google-plus"><i class="fa fa-google-plus"></i><span>g+plus</span></a>
					<a href="" class="pinterest"><i class="fa fa-pinterest"></i><span>pinterest</span></a>
					<a href="" class="facebook"><i class="fa fa-facebook"></i><span>facebook</span></a>
					<a href="" class="twitter"><i class="fa fa-twitter"></i><span>twitter</span></a>

					<a href="" class="youtube"><i class="fa fa-youtube"></i><span>youtube</span></a>

					<a href="" class="tumblr"><i class="fa fa-tumblr-square"></i><span>tumblr</span></a>

        </div>

			</div>

		</div>

	</section>
	<!-- Footer section end -->



	<!--====== Javascripts & Jquery ======-->
	<script src="<?= base_url() ?>assets2/js/jquery-3.2.1.min.js"></script>

	<script src="<?= base_url() ?>assets2/js/bootstrap.min.js"></script>

	<script src="<?= base_url() ?>assets2/js/jquery.slicknav.min.js"></script>

	<script src="<?= base_url() ?>assets2/js/owl.carousel.min.js"></script>

	<script src="<?= base_url() ?>assets2/js/jquery.nicescroll.min.js"></script>

	<script src="<?= base_url() ?>assets2/js/jquery.zoom.min.js"></script>

	<script src="<?= base_url() ?>assets2/js/jquery-ui.min.js"></script>

	<script src="<?= base_url() ?>assets2/js/main.js"></script>

  <script src="<?= base_url() ?>assets/js/menu_jquery.js"></script>

  <script src="<?= base_url() ?>assets/js/simpleCart.min.js"> </script>

  <script src="<?= base_url() ?>assets/js/responsiveslides.min.js"></script>

  <script src="<?= base_url() ?>assets/js/jquery.etalage.min.js"></script>
  
  <script src="<?= base_url(); ?>sweetalert/sweetalert.min.js"></script>

  <script src="<?php echo base_url() ?>assets/bootstrap/dist/js/bootstrap.js"></script>

  <script src="<?php echo base_url() ?>assets/jquery/jquery-1.12.0.js"></script>

  <script src="<?php echo base_url() ?>assets/jquery/jquery.chained.js"></script>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 

  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script> 

  <script type="text/javascript" src="<?= base_url() ?>assets/js/megamenu.js"></script>
    <script>
        $(document).ready(function() {
            $(".megamenu").megamenu();
        });
    </script>
    <script>
        var link = "<?php echo site_url('user/home') ?>";
        var acak = '<?php echo $this->session->userdata("id_kpesan"); ?>';
        console.log('acak', acak);

        $(document).ready(function() {
            cek();
        });

        function cek() {
            $.ajax({
                url: link + "/cek_pesan",
                cache: false,
                success: function(msg) {
                    ///console.log('msg',msg);    
                    // var idk = '<?php $idk = $this->session->userdata('id_kpesan');
                                    if ($idk != "") {
                                        echo $this->session->userdata("id_kpesan");
                                    } else {
                                        echo "0";
                                    } ?>';  
                    if (msg == 0) {
                        $('#simpleCart_quantity').html(0);
                        //  document.getElementById("notifikasie").className = "";
                    } else {
                        //document.getElementById("notifikasi").className = "data-notify='2'";
                        $('#simpleCart_quantity').html(msg);
                        // document.getElementById("notifikasie").className = "data-notify='2'";
                        // $('#notifikasie').html(msg);
                        // $('#notife').html('"'+msg+'"');
                    }
                }
            });
            //var waktu = setTimeout("cek()",4000);
        }
    </script>
</body>

</html>

