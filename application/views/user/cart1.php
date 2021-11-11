<!-- Page info -->
<div class="page-top-info">
		<div class="container">
    <?= $this->session->flashdata('message'); ?>
			<h4>Your cart</h4>
			<div class="site-pagination">
				<a href="<?= base_url('user/Home') ?>">Home</a> /
				<a href="">Your cart</a>
			</div>
		</div>
	</div>
	<!-- Page info end -->

	<?php

        if ($this->session->flashdata('cart')) {

            $msg = $this->session->flashdata('cart');

            echo $msg;
        }

        ?>

	<!-- cart section end -->
	<section class="cart-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<div class="cart-table">
						<h3>Your Cart</h3>
						<div class="cart-table-warp">
							<table>
							<thead>
								<tr>
									<th class="product-th">Product(<?php if ($total[0]['total_jumlah'] == null) {
                                                                            echo '0';
                                                                            } else {

                                                                            echo $total[0]['total_jumlah'];
                                                                            } ?>)</th>
									<th class="quy-th">Quantity</th>
									<th class="size-th">Update Keranjang</th>
									<th class="total-th">Hapus</th>
								</tr>
							</thead>
			<tbody>
            <?php foreach ($cart as $ca) : ?>
			<tr>
			<td class="product-col">
                    <?php if ($ca['foto_produk1'] == null) : ?>

                    <img src="<?= base_url() ?>assets/img/default.jpg" />

                    <?php else : ?>

                    <img src="<?= base_url() ?>assets/img/produk_penjual/<?= $ca['foto_produk1'] ?>" />

                    <?php endif; ?>

				<div class="pc-title">
						<h4><?= ucwords($ca['nama_produk']) ?></h4>
                     	<p>ID: <?= $ca['id_produk'] ?></p>
                         <?php if (isset($prod['harga_promo'])) : ?>
                                <?php date_default_timezone_set("Asia/Jakarta");
                                $now = date('Y-m-d H:i:s');
                                $now = date('Y-m-d H:i:s', strtotime($now));

                                $mulai = date('Y-m-d H:i:s', strtotime($prod['tgl_mulai']));
                                $selesai = date('Y-m-d H:i:s', strtotime($prod['tgl_selesai']));

                                if (($now >= $mulai) && ($now <= $selesai)) { ?>
                                    <h4><span>Rp. </span><s><?= number_format($ca['harga'], 0, ',', '.') ?></s> <?= number_format($ca['harga_promo'], 0, ',', '.') ?></h4>
                                <?php } else { ?>
                                    <h4><span>Rp. </span><?= number_format($ca['harga'], 0, ',', '.') ?></h4>
                                <?php } ?>
                            <?php else : ?>
                                <h4><span>Rp. </span><?= number_format($ca['harga'], 0, ',', '.') ?></h4>
                            <?php endif; ?>

				</div>
				</td>
					<form action="<?= base_url() ?>user/home/update_keranjang_belanja?>" method="POST">
                        <input type="hidden" name="id_keranjang_belanja" value="<?= $ca['id_keranjang_belanja'] ?>">
                        <input type="hidden" name="id_produk" value="<?= $ca['id_produk'] ?>">
				<td class="quy-col">			
				<div class="quantity">
                        <input type="number" class="pro-qty" name="quantity" value="<?= $ca['jumlah_produk'] ?>" min="1">
                </div>
						</td>
						<td class="size-col"><button type="submit" class="btn btn-primary">Update Keranjang</button></td>
						<td class="total-col">
								<a href="<?php echo base_url() ?>user/home/remove_keranjang_belanja/<?php echo $ca['id'] ?>"><i class="fa fa-trash"></i></a>
						</td>
            	</form>
				</tr>
                <div class="clearfix"></div>
                <?php endforeach; ?>
			</tbody>
		</table>
	</div>
						<div class="total-cost">
							<h6>Total <span>Rp. <?= number_format($total[0]['total_harga'], 0, ',', '.') ?></span></h6>
						</div>
					</div>
				</div>
				<div class="col-lg-4 card-right">
					<form class="promo-code-form">
						<!-- <input type="text" placeholder="Enter promo code">
						<button>Submit</button> -->
					</form>
					<a href="<?= base_url('user/Home/checkout') ?>" class="site-btn">Proceed to checkout</a>
					<!-- <a href="" class="site-btn sb-dark">Continue shopping</a> -->
				</div>
			</div>
		</div>
	</div>
	</section>
	<!-- cart section end -->

	