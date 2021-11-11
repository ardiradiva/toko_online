<!-- Page info -->
<div class="page-top-info">
		<div class="container">
			<h4>Checkout</h4>
			<div class="site-pagination">
				<a href="">Home</a> 
				<a href="">Checkout</a>
			</div>
		</div>
	</div>
	<!-- Page info end -->

  <!-- start content -->
  <!-- Shopping Cart Section Begin -->
  <section class="checkout-section spad">
  <div class="container">
  <form class="checkout-form">
  <div class="cf-title">Formulir Checkout</div>
    </form>
      <form action="<?= base_url('user/order/simpan') ?>" method="post">
            <div class="row">
                <div class="col">
                    <div class="mt-2">
                        <div class="form-row">
                            <div class="form-group col-md-12">
                                <b><label class="ml-2">Nama Lengkap</label></b>
                                <input name="nama_lengkap" type="text" class="form-control" placeholder="Isikan Nama Lengkap" required oninvalid="this.setCustomValidity('Nama Lengkap belum diisi')" oninput="setCustomValidity('')">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-12">
                                <b><label class="ml-2">No Hp</label></b>
                                <input name="no_hp" type="number" class="form-control" placeholder="Isikan No. Hp Anda" required oninvalid="this.setCustomValidity('Nomor HP belum diisi')" oninput="setCustomValidity('')">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-12">
                                <b><label class="ml-2">Email</label>
                                <input name="email" type="email" class="form-control" placeholder="Isikan Alamat Email Anda" required oninvalid="this.setCustomValidity('Email belum sesuai')" oninput="setCustomValidity('')">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-12">
                                <b><label class="ml-2">Provinsi</label>
                                <select name="provinsi" id="prov_tujuan" class="form-control" required oninvalid="this.setCustomValidity('Provinsi belum dipilih')" oninput="setCustomValidity('')">
                                    <option value="" disabled selected hidden>Pilih Provinsi</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-12">
                                <b><label class="ml-2">Kota/Kab</label>
                                <select name="kota_order" id="kota_tujuan" class="form-control" disabled required oninvalid="this.setCustomValidity('Kota belum dipilih')" oninput="setCustomValidity('')">
                                    <option value="" disabled selected hidden>Pilih Kota/Kab</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-12">
                                <b><label class="ml-2">Alamat Lengkap</label>
                                <textarea name="alamat_lengkap" class="form-control" placeholder="Isikan Alamat Lengkap Anda" required oninvalid="this.setCustomValidity('Alamat Lengkap belum diisi')" oninput="setCustomValidity('')"></textarea>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-12">
                                <b><label class="ml-2">Ekspedisi</label>
                                <select name="kurir" id="kurir" class="form-control" disabled required oninvalid="this.setCustomValidity('ekspedisi belum dipilih')" oninput="setCustomValidity('')">
                                    <option value="" disabled selected hidden>Pilih Ekspedisi Pengiriman Produk</option>
                                    <option value="jne">JNE</option>
                                    <option value="tiki">TIKI</option>
                                    <option value="pos">POS Indonesia</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-12">
                                <b><label class="ml-2">Paket Pengiriman</label>
                                <select name="paket_kirim" id="paket_kirim" class="form-control" disabled oninvalid="this.setCustomValidity('layanan pengiriman belum dipilih')" oninput="setCustomValidity('')">
                                    <option value="JNE - REG" ongkir="10000" lama_kirim="2">JNE - REG</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="col-md-12">
                    <div class="checkout-cart">
                            <div class="mt-0">
                                <h3 class="text-center"><strong>INFORMASI PRODUK</strong></h3>
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th scope="col" class="text-center">Produk</th>
                                            <th scope="col" class="text-center">Items</th>
                                            <th scope="col" class="text-center">Berat Bersih/Item</th>
                                            <th scope="col" class="text-center">Total</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php foreach ($cart as $keranjang) : ?>
                                            <tr>
                                                <td class="text-center"><?= ucwords(substr($keranjang['nama_produk'], 0, 15)) ?>..</td>
                                                <td class="text-center"><?= $keranjang['jumlah_produk'] ?> item</td>
                                                <td class="text-center"><?= $keranjang['berat_bersih'] ?> gram</td>
                                                <!-- <td class="text-center"><?= $jumlah_berat ?></td> -->
                                                <td class="text-center">Rp. <?= number_format($keranjang['subtotal_belanja'], 0, ',', '.') ?></td>
                                                <!-- <input type="hidden" value="<?= $jumlah_berat ?>"> -->
                                            </tr>

                                        <?php endforeach; ?>
                                        <tr>
                                        <th scope="col" class="text-center">Ongkir</th>


                                    <td class="text-center" colspan="3"><b><span id="ongkir_tot">Rp. 10.000</span></b></td>
                                        </tr>
                                        <tr>
                                            <td colspan=4>
                                            <input type="hidden" id="nama_provinsi" name="nama_provinsi">

                                                    <input type="hidden" id="nama_kota" name="nama_kota">

                                                    <input type="hidden" value="10000" id="ongkir" name="ongkir">

                                                    <input type="hidden" value="3" id="lama_kirim" name="lama_kirim">

                                                    <input name="total_harga" type="hidden" value="<?= $total[0]['total_harga'] ?>">

                                                    <input name="total_jumlah" type="hidden" value="<?= $total[0]['total_jumlah'] ?>">

                                                    <div class="text-center">

                                                    <button id="btn_beli" type="submit" class="site-btn">Beli</button>

                                                    </div>

                                              </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                                <!-- <div id="tampil"></div> -->
                            </div>
                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </form>
    </div>
</section>
<script type="text/javascript">
    function getLokasi() {

        var $op = $("#prov_asal"),

            $op1 = $("#prov_tujuan");



        $.getJSON("<?php echo base_url() ?>provinsi", function(data) {

            $.each(data, function(i, field) {



                $op.append('<option value="' + field.province_id + '">' + field.province_id + '</option>');

                $op1.append('<option value="' + field.province_id + '" nama_provinsi="' + field.province + '">' + field.province + '</option>');

            });



        });





    }



    getLokasi();



    $("#prov_tujuan").on("change", function(e) {

        e.preventDefault();

        var option = $('option:selected', this).val();

        var nama_prov = $('option:selected', this).attr('nama_provinsi');

        $('#kota_tujuan option:gt(0)').remove();

        // $('#kurir').val('');



        if (option === '') {

            alert('null');

            $("#kota_tujuan").prop("disabled", true);

            //$("#kurir").prop("disabled", true);

        } else {

            $("#kota_tujuan").prop("disabled", false);

            getKota(option);

            document.getElementById("nama_provinsi").value = nama_prov;

        }

    });



    function getKota(idpro) {

        var $op = $("#kota_tujuan");



        $.getJSON("<?php echo base_url() ?>kota/" + idpro, function(data) {

            $.each(data, function(i, field) {





                $op.append('<option value="' + field.city_id + '" nama_kota="' + field.type + ' ' + field.city_name + '">' + field.type + ' ' + field.city_name + '</option>');



            });



        });



    }



    $("#kota_tujuan").on("change", function(e) {

        e.preventDefault();

        var option = $('option:selected', this).val();

        var nama_kota = $('option:selected', this).attr('nama_kota');

        $('#kurir').val('');



        if (option === '') {

            alert('null');

            $("#kurir").prop("disabled", true);

        } else {

            $("#kurir").prop("disabled", false);

            document.getElementById("nama_kota").value = nama_kota;

        }

    });



    <?php foreach ($konten as $kon) : ?>



        <?php $kota_asal = $kon['id_kota'] ?>



        $("#kurir").on("change", function(e) {

            e.preventDefault();

            var option = $('option:selected', this).val();

            $('#paket_kirim option:gt(0)').remove();

            $('#paket_kirim').val('');



            var origin = '<?php echo $kota_asal ?>';

            var des = $("#kota_tujuan").val();

            var qty = '<?= $jumlah[0]['total_berat'] ?>';


            if (qty === '0' || qty === '') {

                alert('berat kosong');

            } else if (option === '') {

                alert('null');

                $("#paket_kirim").prop("disabled", true);

            } else {

                getOrigin(origin, des, qty, option);

                $("#paket_kirim").prop("disabled", false);

                // document.getElementById("nama_ekspedisi").value = option;

            }

        });



    <?php endforeach ?>





    function getOrigin(origin, des, qty, cour) {

        var $op = $("#paket_kirim");

        var $opt = $("#tampil");

        var i, n, x, y = "";


        $.getJSON("<?php echo base_url() ?>user/Rajaongkir/tarif/" + origin + "/" + des + "/" + qty + "/" + cour, function(data) {


            $.each(data, function(i, field) {


                for (i in field.costs) {



                    for (n in field.costs[i].cost) {



                        x += '<option value="' + field.costs[i].service + ' - ' + field.costs[i].description + '" ongkir="' + field.costs[i].cost[n].value + '" lama_kirim="' + field.costs[i].cost[n].etd + '">' + field.costs[i].service + ' - ' + field.costs[i].description + ' - Rp.' + field.costs[i].cost[n].value + ' - ' + field.costs[i].cost[n].etd + ' Hari' + '</option > ';



                        y += "<p class='mb-0'><b>" + field.costs[i].service + "</b> : " + field.costs[i].description + "</p>";



                        y += "Biaya Ongkir : Rp. " + field.costs[i].cost[n].value;

                        y += "<br> Waktu Pengiriman : " + field.costs[i].cost[n].etd + " hari"

                    }



                }



                $op.append(x);



                $opt.html(y);



            });

        });

    }





    $("#paket_kirim").on("change", function(e) {

        e.preventDefault();

        var option = $('option:selected', this).val();

        var ongkir = $('option:selected', this).attr('ongkir');

        var lama_kirim = $('option:selected', this).attr('lama_kirim');

        if (option === '') {

            alert('null');

        } else {

            document.getElementById("ongkir").value = ongkir;

            document.getElementById("lama_kirim").value = lama_kirim;


            $('#ongkir_tot').html(to_rupiah(ongkir));

        }

    });

    function to_rupiah(angka) {
        var rev = parseInt(angka, 10).toString().split('').reverse().join('');
        var rev2 = '';
        for (var i = 0; i < rev.length; i++) {
            rev2 += rev[i];
            if ((i + 1) % 3 === 0 && i !== (rev.length - 1)) {
                rev2 += '.';
            }
        }
        return 'Rp. ' + rev2.split('').reverse().join('') + ',-';
    }
</script>



<script src="<?php echo base_url('assets/jquery/jquery-1.12.0.js'); ?>"></script>

<script src="<?php echo base_url('assets/jquery/jquery.chained.js'); ?>"></script>

<script src="<?php echo base_url('assets/bootstrap/dist/js/bootstrap.js'); ?>"></script>