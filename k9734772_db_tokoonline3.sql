/*
Navicat MySQL Data Transfer

Source Server         : tokoonline3
Source Server Version : 50735
Source Host           : elecompindonesia.com:3306
Source Database       : k9734772_db_tokoonline3

Target Server Type    : MYSQL
Target Server Version : 50735
File Encoding         : 65001

Date: 2021-11-11 09:23:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `admin_nama` varchar(50) DEFAULT NULL,
  `admin_username` varchar(100) DEFAULT NULL,
  `admin_password` varchar(32) DEFAULT NULL,
  `admin_view_password` varchar(32) DEFAULT NULL,
  `admin_level` char(2) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'ses', 'admin', '827ccb0eea8a706c4c34a16891f84e7b', '12345', '1');

-- ----------------------------
-- Table structure for data_bank
-- ----------------------------
DROP TABLE IF EXISTS `data_bank`;
CREATE TABLE `data_bank` (
  `id_data` int(11) NOT NULL AUTO_INCREMENT,
  `jenis_bank` varchar(255) NOT NULL,
  `atas_nama_bank` varchar(255) NOT NULL,
  `no_rekening` varchar(255) NOT NULL,
  PRIMARY KEY (`id_data`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of data_bank
-- ----------------------------
INSERT INTO `data_bank` VALUES ('1', 'BRI', 'blonjobu', '083747436882');
INSERT INTO `data_bank` VALUES ('2', 'BNI', 'blonjobu', '3548329012765');
INSERT INTO `data_bank` VALUES ('3', 'Mandiri', 'blonjobu', '836975162592');
INSERT INTO `data_bank` VALUES ('4', 'OVO', 'blonjobu.com', '085607034927');
INSERT INTO `data_bank` VALUES ('5', 'Go Pay', 'blonjobu.com', '085607283736');

-- ----------------------------
-- Table structure for data_refund
-- ----------------------------
DROP TABLE IF EXISTS `data_refund`;
CREATE TABLE `data_refund` (
  `id_refund` int(11) NOT NULL AUTO_INCREMENT,
  `id_detail_order` int(11) NOT NULL,
  `no_rekening` varchar(50) NOT NULL,
  `ATM` varchar(50) NOT NULL,
  `nama_penerima` varchar(50) NOT NULL,
  `status_kirim` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_refund`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of data_refund
-- ----------------------------

-- ----------------------------
-- Table structure for detail_alamat
-- ----------------------------
DROP TABLE IF EXISTS `detail_alamat`;
CREATE TABLE `detail_alamat` (
  `id_detail_alamat` int(11) NOT NULL AUTO_INCREMENT,
  `id_member` int(11) DEFAULT NULL,
  `nama_lengkap` varchar(255) DEFAULT NULL,
  `no_telp` char(20) DEFAULT NULL,
  `alamat` text,
  `kec_id` int(11) DEFAULT NULL,
  `kecamatan` varchar(225) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `kota` varchar(255) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `provinsi` varchar(255) DEFAULT NULL,
  `kode_pos` char(30) DEFAULT NULL,
  `sts` char(1) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_detail_alamat`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of detail_alamat
-- ----------------------------
INSERT INTO `detail_alamat` VALUES ('1', '6', 'edwin yordan laksono', '086786576465', 'Jalan Tumbal Negara', null, null, '154', 'Kota Jakarta Timur', '6', 'DKI Jakarta', '64181', 'U', 'edwin@gmail.com');
INSERT INTO `detail_alamat` VALUES ('2', '6', 'Ahmad', '086786576465', 'Jalan Turus Gurah', null, '', '154', 'Kota Jakarta Timur', '6', 'DKI Jakarta', '64181', 'U', 'ahmad@gmail.com');
INSERT INTO `detail_alamat` VALUES ('3', '8', 'Dhafiza', '085755449896', 'Jl. Letjen Sutoyo 4 32I', null, null, '256', 'Kota Malang', '11', 'Jawa Timur', '65141', 'R', null);
INSERT INTO `detail_alamat` VALUES ('4', '10', 'dimas', '0854324465763', 'sajdsgadhgsa', null, null, '39', 'Kabupaten Bantul', '5', 'DI Yogyakarta', '62312', 'R', null);
INSERT INTO `detail_alamat` VALUES ('5', null, 'Diva', '081216687189', 'bantul timur', null, null, '39', 'Kabupaten Bantul', '5', 'DI Yogyakarta', '9282', 'R', null);
INSERT INTO `detail_alamat` VALUES ('6', '11', 'Ardira Diva', '081216687189', 'bantul', null, null, '39', 'Kabupaten Bantul', '5', 'DI Yogyakarta', '12345', 'R', null);

-- ----------------------------
-- Table structure for detail_order
-- ----------------------------
DROP TABLE IF EXISTS `detail_order`;
CREATE TABLE `detail_order` (
  `id_detail_order` int(11) NOT NULL AUTO_INCREMENT,
  `id_order` varchar(20) DEFAULT NULL,
  `id_penjual` varchar(50) DEFAULT NULL,
  `id_ongkir_pembeli` int(11) DEFAULT NULL,
  `id_produk` varchar(15) DEFAULT NULL,
  `id_jadwal` int(11) DEFAULT NULL,
  `jumlah_produk` int(11) DEFAULT NULL,
  `berat_produk` double DEFAULT NULL,
  `harga` double DEFAULT NULL,
  `harga_pajak` double DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `subtotal_pajak` double DEFAULT NULL,
  `no_resi` varchar(50) DEFAULT NULL,
  `pembayaran` double DEFAULT NULL,
  `tagihan` double DEFAULT NULL,
  `status_kirim` int(1) DEFAULT NULL,
  `status_detail_komplain` int(11) NOT NULL DEFAULT '0',
  `status_bayar` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_detail_order`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of detail_order
-- ----------------------------
INSERT INTO `detail_order` VALUES ('1', 'T210824001', 'Admin', null, '2004280004', null, '1', '1000', '13500', null, '13500', null, null, null, null, null, '0', '0');
INSERT INTO `detail_order` VALUES ('2', 'T210824002', 'Admin', null, '2004280004', null, '1', '1000', '13500', null, '13500', null, null, null, null, null, '0', '0');
INSERT INTO `detail_order` VALUES ('3', 'T210826001', 'Admin', null, '2004280004', null, '1', '1000', '13500', null, '13500', null, null, null, null, null, '0', '0');
INSERT INTO `detail_order` VALUES ('4', 'T210911001', 'Admin', null, '2004280004', null, '4', '4000', '13500', null, '54000', null, null, null, null, null, '0', '0');
INSERT INTO `detail_order` VALUES ('5', 'T210911002', 'Admin', null, '2004280004', null, '2', '2000', '13500', null, '27000', null, null, null, null, null, '0', '0');
INSERT INTO `detail_order` VALUES ('6', 'T210912001', 'Admin', null, '2004280006', null, '2', '0', '10000', null, '20000', null, null, null, null, null, '0', '0');
INSERT INTO `detail_order` VALUES ('7', 'T210912001', 'Admin', null, '2004280004', null, '2', '2000', '13500', null, '27000', null, null, null, null, null, '0', '0');
INSERT INTO `detail_order` VALUES ('8', 'T210913001', 'Admin', null, '2004280004', null, '1', '1000', '13500', null, '13500', null, null, null, null, null, '0', '0');
INSERT INTO `detail_order` VALUES ('9', 'T210915001', 'Admin', null, '2004280004', null, '1', '1000', '13500', null, '13500', null, null, null, null, null, '0', '0');
INSERT INTO `detail_order` VALUES ('10', 'T210915002', 'Admin', null, '2004280004', null, '1', '1000', '13500', null, '13500', null, null, null, null, null, '0', '0');
INSERT INTO `detail_order` VALUES ('11', 'T210915002', 'Admin', null, '2004280010', null, '1', '0', '3000', null, '3000', null, null, null, null, null, '0', '0');
INSERT INTO `detail_order` VALUES ('12', 'T211011003', 'Admin', null, '2004280013', null, '5', '0', '12500', null, '62500', null, null, null, null, null, '0', '0');
INSERT INTO `detail_order` VALUES ('13', 'T211011004', 'Admin', null, '2004280013', null, '5', '0', '12500', null, '62500', null, null, null, null, null, '0', '0');
INSERT INTO `detail_order` VALUES ('14', 'T211011004', 'Admin', null, '2004280004', null, '1', '1000', '13500', null, '13500', null, null, null, null, null, '0', '0');
INSERT INTO `detail_order` VALUES ('15', 'T211011005', 'Admin', null, '2004280004', null, '25', '25000', '13500', null, '337500', null, null, null, null, null, '0', '0');
INSERT INTO `detail_order` VALUES ('16', 'T211011005', 'Admin', null, '2004280010', null, '126', '0', '3000', null, '378000', null, null, null, null, null, '0', '0');
INSERT INTO `detail_order` VALUES ('17', 'T211025001', 'Admin', null, '2004280004', null, '1', '1000', '13500', null, '13500', null, null, null, null, null, '0', '0');
INSERT INTO `detail_order` VALUES ('18', 'T211025001', 'Admin', null, '2004280006', null, '1', '0', '10000', null, '10000', null, null, null, null, null, '0', '0');
INSERT INTO `detail_order` VALUES ('19', 'T211026001', 'Admin', null, '2004280004', null, '1', '1000', '13500', null, '13500', null, null, null, null, null, '0', '0');
INSERT INTO `detail_order` VALUES ('20', 'T211027003', 'Admin', null, '2004280012', null, '1', '0', '90000', null, '90000', null, null, null, null, null, '0', '0');
INSERT INTO `detail_order` VALUES ('21', 'T211027003', 'Admin', null, '2004280004', null, '2', '2000', '13500', null, '27000', null, null, null, null, null, '0', '0');
INSERT INTO `detail_order` VALUES ('22', 'T211027004', 'Admin', null, '2004280004', null, '1', '1000', '13500', null, '13500', null, null, null, null, null, '0', '0');
INSERT INTO `detail_order` VALUES ('23', 'T211027005', 'Admin', null, '2004280004', null, '4', '4000', '13500', null, '54000', null, null, null, null, null, '0', '0');
INSERT INTO `detail_order` VALUES ('24', 'T211028001', 'Admin', null, '1', null, '4', '4000', '13500', null, '54000', null, null, null, null, null, '0', '0');
INSERT INTO `detail_order` VALUES ('25', 'T211028002', 'Admin', null, '2', null, '6', '0', '6400', null, '38400', null, null, null, null, null, '0', '0');
INSERT INTO `detail_order` VALUES ('26', 'T211028002', 'Admin', null, '1', null, '3', '3000', '13500', null, '40500', null, null, null, null, null, '0', '0');
INSERT INTO `detail_order` VALUES ('27', 'T211028003', 'Admin', null, '1', null, '2', '2000', '13500', null, '27000', null, null, null, null, null, '0', '0');
INSERT INTO `detail_order` VALUES ('28', 'T211028003', 'Admin', null, '9', null, '1', '0', '90000', null, '90000', null, null, null, null, null, '0', '0');
INSERT INTO `detail_order` VALUES ('29', 'T211102001', 'Admin', null, '3', null, '1', '0', '10000', null, '10000', null, null, null, null, null, '0', '0');
INSERT INTO `detail_order` VALUES ('30', 'T211102001', 'Admin', null, '1', null, '8', '8000', '13500', null, '108000', null, null, null, null, null, '0', '0');
INSERT INTO `detail_order` VALUES ('31', 'T211108001', 'Admin', null, '1', null, '7', '7000', '12000', null, '84000', null, null, null, null, null, '0', '0');
INSERT INTO `detail_order` VALUES ('32', 'T211108005', 'Admin', null, '1', null, '8', '8000', '12000', null, '96000', null, null, null, null, null, '0', '0');
INSERT INTO `detail_order` VALUES ('33', 'T211109001', 'Admin', null, '1', null, '3', '3000', '12000', null, '36000', null, null, null, null, null, '0', '0');
INSERT INTO `detail_order` VALUES ('34', 'T211109001', 'Admin', null, '8', null, '1', '0', '10000', null, '10000', null, null, null, null, null, '0', '0');
INSERT INTO `detail_order` VALUES ('35', 'T211109001', 'Admin', null, '9', null, '1', '0', '90000', null, '90000', null, null, null, null, null, '0', '0');
INSERT INTO `detail_order` VALUES ('36', 'T211109001', 'Admin', null, '4', null, '1', '0', '6000', null, '6000', null, null, null, null, null, '0', '0');
INSERT INTO `detail_order` VALUES ('37', 'T211110001', 'Admin', null, '1', null, '1', '1000', '13500', null, '13500', null, null, null, null, null, '0', '0');
INSERT INTO `detail_order` VALUES ('38', 'T211110001', 'Admin', null, '4', null, '2', '0', '5000', null, '10000', null, null, null, null, null, '0', '0');
INSERT INTO `detail_order` VALUES ('39', 'T211110002', 'Admin', null, '1', null, '1', '1000', '12000', null, '12000', null, null, null, null, null, '0', '0');
INSERT INTO `detail_order` VALUES ('40', 'T211110003', 'Admin', null, '2', null, '2', '0', '6400', null, '12800', null, null, null, null, null, '0', '0');
INSERT INTO `detail_order` VALUES ('41', 'T211110003', 'Admin', null, '1', null, '1', '1000', '12000', null, '12000', null, null, null, null, null, '0', '0');
INSERT INTO `detail_order` VALUES ('42', 'T211110004', 'Admin', null, '1', null, '1', '1000', '12000', null, '12000', null, null, null, null, null, '0', '0');
INSERT INTO `detail_order` VALUES ('43', 'T211110005', 'Admin', null, '1', null, '1', '1000', '12000', null, '12000', null, null, null, null, null, '0', '0');
INSERT INTO `detail_order` VALUES ('44', 'T211110005', 'Admin', null, '5', null, '2', '0', '7500', null, '15000', null, null, null, null, null, '0', '0');
INSERT INTO `detail_order` VALUES ('45', 'T211110006', 'Admin', null, '1', null, '1', '1000', '12000', null, '12000', null, null, null, null, null, '0', '0');
INSERT INTO `detail_order` VALUES ('46', 'T211110007', 'Admin', null, '1', null, '3', '3000', '12000', null, '36000', null, null, null, null, null, '0', '0');

-- ----------------------------
-- Table structure for detail_pengiriman
-- ----------------------------
DROP TABLE IF EXISTS `detail_pengiriman`;
CREATE TABLE `detail_pengiriman` (
  `id_detail_pengiriman` int(11) NOT NULL AUTO_INCREMENT,
  `id_detail_order` int(11) NOT NULL,
  `tanggal_konfirmasi` date NOT NULL,
  `tanggal_kirim` date DEFAULT NULL,
  `status_kadaluarsa` int(1) NOT NULL,
  PRIMARY KEY (`id_detail_pengiriman`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of detail_pengiriman
-- ----------------------------
INSERT INTO `detail_pengiriman` VALUES ('10', '59', '2021-06-17', '2021-06-17', '0');
INSERT INTO `detail_pengiriman` VALUES ('11', '46', '2021-06-17', '2021-06-17', '0');
INSERT INTO `detail_pengiriman` VALUES ('12', '50', '2021-06-17', '2021-06-17', '0');
INSERT INTO `detail_pengiriman` VALUES ('13', '63', '2021-06-17', '2021-06-17', '0');
INSERT INTO `detail_pengiriman` VALUES ('14', '54', '2021-06-17', '2021-07-08', '1');
INSERT INTO `detail_pengiriman` VALUES ('15', '64', '2021-06-21', '2021-06-21', '0');
INSERT INTO `detail_pengiriman` VALUES ('16', '45', '2021-07-08', '2021-07-08', '0');
INSERT INTO `detail_pengiriman` VALUES ('17', '85', '2021-07-08', '2021-07-08', '0');
INSERT INTO `detail_pengiriman` VALUES ('18', '107', '2021-08-03', '2021-08-03', '0');
INSERT INTO `detail_pengiriman` VALUES ('19', '108', '2021-08-03', '2021-08-03', '0');
INSERT INTO `detail_pengiriman` VALUES ('20', '106', '2021-08-03', null, '0');

-- ----------------------------
-- Table structure for history_status_order
-- ----------------------------
DROP TABLE IF EXISTS `history_status_order`;
CREATE TABLE `history_status_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_order` varchar(30) DEFAULT NULL,
  `status_order` char(1) DEFAULT NULL,
  `waktu_status` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of history_status_order
-- ----------------------------
INSERT INTO `history_status_order` VALUES ('1', 'T210812001', '1', '2021-08-23 11:29:35');

-- ----------------------------
-- Table structure for jadwal
-- ----------------------------
DROP TABLE IF EXISTS `jadwal`;
CREATE TABLE `jadwal` (
  `id_jadwal` int(11) NOT NULL AUTO_INCREMENT,
  `tgl_berangkat` varchar(100) NOT NULL,
  `tgl_pulang` varchar(100) NOT NULL,
  `id_produk` int(11) NOT NULL,
  PRIMARY KEY (`id_jadwal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of jadwal
-- ----------------------------

-- ----------------------------
-- Table structure for jam_kirim
-- ----------------------------
DROP TABLE IF EXISTS `jam_kirim`;
CREATE TABLE `jam_kirim` (
  `id_jam` int(11) NOT NULL AUTO_INCREMENT,
  `jam_kirim` time NOT NULL,
  `keterangan` varchar(225) NOT NULL,
  PRIMARY KEY (`id_jam`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of jam_kirim
-- ----------------------------
INSERT INTO `jam_kirim` VALUES ('1', '05:00:00', 'Pagi');
INSERT INTO `jam_kirim` VALUES ('2', '13:00:00', 'Siang');
INSERT INTO `jam_kirim` VALUES ('6', '19:00:00', 'Malam');
INSERT INTO `jam_kirim` VALUES ('10', '17:25:00', 'Siang');
INSERT INTO `jam_kirim` VALUES ('12', '22:06:00', 'malam');

-- ----------------------------
-- Table structure for kategori_produk
-- ----------------------------
DROP TABLE IF EXISTS `kategori_produk`;
CREATE TABLE `kategori_produk` (
  `id_kategori_produk` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kategori_produk` varchar(100) NOT NULL,
  `aktif_kategori_produk` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `title_kategori_produk` varchar(50) NOT NULL,
  `meta_description_kategori_produk` varchar(100) NOT NULL,
  `meta_keywords_kategori_produk` varchar(100) NOT NULL,
  `url_slug_kategori` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id_kategori_produk`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kategori_produk
-- ----------------------------
INSERT INTO `kategori_produk` VALUES ('6', 'Sayur Segar & Bumbu', '1', '0', 'Sayur Segar & Bumbu', 'Sayur Segar & Bumbu', 'Sayur Segar & Bumbu', 'sayur-segar-dan-bumbu');
INSERT INTO `kategori_produk` VALUES ('8', 'Kue dan daging', '1', '0', 'Kue dan daging', 'Kue dan daging', 'Kue dan daging', 'kue-dan-daging');
INSERT INTO `kategori_produk` VALUES ('9', 'Fashion', '1', '1', 'Fashion', 'Fashion', 'Fashion', 'fashion');
INSERT INTO `kategori_produk` VALUES ('10', 'Health Care & Cosmetic', '1', '0', 'Health Care & Cosmetic', 'Health Care & Cosmetic', 'Health Care & Cosmetic', 'health-care-dan-cosmetic');
INSERT INTO `kategori_produk` VALUES ('11', 'Makanan dan minuman', '1', '0', 'Makanan dan minuman segar', 'Makanan dan minuman', 'Makanan dan minuman', 'makanan-dan-minuman');
INSERT INTO `kategori_produk` VALUES ('12', 'sabun dan pembersih', '1', '0', 'sabun dan pembersih', 'sabun dan pembersih', 'sabun dan pembersih', 'sabun-dan-pembersih');
INSERT INTO `kategori_produk` VALUES ('13', 'susu bubuk dan minuman', '0', '0', 'susu bubuk dan minuman', 'susu bubuk dan minuman', 'susu bubuk dan minuman', 'susu-bubuk-dan-minuman');
INSERT INTO `kategori_produk` VALUES ('14', 'skin care', '0', '0', 'skin care', 'skin care', 'skin', 'skin-care');

-- ----------------------------
-- Table structure for kecamatan
-- ----------------------------
DROP TABLE IF EXISTS `kecamatan`;
CREATE TABLE `kecamatan` (
  `id_kecamatan` int(11) NOT NULL AUTO_INCREMENT,
  `id_kota_fk` int(11) NOT NULL,
  `nama_kecamatan` varchar(60) NOT NULL,
  PRIMARY KEY (`id_kecamatan`),
  KEY `id_kota_fk` (`id_kota_fk`),
  CONSTRAINT `kecamatan_ibfk_1` FOREIGN KEY (`id_kota_fk`) REFERENCES `kota` (`id_kota`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kecamatan
-- ----------------------------
INSERT INTO `kecamatan` VALUES ('1', '1', 'Karangrejo');
INSERT INTO `kecamatan` VALUES ('2', '1', 'Kartoharjo');
INSERT INTO `kecamatan` VALUES ('3', '2', 'Manguharjo');
INSERT INTO `kecamatan` VALUES ('4', '2', 'Klegen');
INSERT INTO `kecamatan` VALUES ('5', '1', 'barat');
INSERT INTO `kecamatan` VALUES ('6', '5', 'Sawojajar');
INSERT INTO `kecamatan` VALUES ('7', '9', 'Sumber Rejo');

-- ----------------------------
-- Table structure for keranjang_belanja
-- ----------------------------
DROP TABLE IF EXISTS `keranjang_belanja`;
CREATE TABLE `keranjang_belanja` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_keranjang_belanja` char(60) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `harga_produk` double DEFAULT NULL,
  `berat_bersih` int(11) DEFAULT NULL,
  `berat_kotor` int(11) NOT NULL,
  `jumlah_produk` int(11) NOT NULL,
  `berat_total` int(11) NOT NULL,
  `subtotal_belanja` double NOT NULL,
  `id_jadwal` int(11) DEFAULT NULL,
  `potongan` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2129656433 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of keranjang_belanja
-- ----------------------------
INSERT INTO `keranjang_belanja` VALUES ('185428159', 'IKP_211109_001', '2', '6400', null, '0', '1', '0', '6400', null, '0');
INSERT INTO `keranjang_belanja` VALUES ('868267501', 'IKP_211110_001', '1', '12000', null, '1000', '2', '2000', '24000', null, '0');
INSERT INTO `keranjang_belanja` VALUES ('1226841644', 'MBR_211110_001', '1', '12000', null, '1000', '1', '5000', '12000', null, '0');
INSERT INTO `keranjang_belanja` VALUES ('1846675002', 'IKP_211110_002', '7', '3000', null, '0', '1', '0', '3000', null, '0');
INSERT INTO `keranjang_belanja` VALUES ('2080620209', 'IKP_211109_001', '1', '13500', null, '1000', '1', '2000', '13500', null, '0');

-- ----------------------------
-- Table structure for klaim_detail_order
-- ----------------------------
DROP TABLE IF EXISTS `klaim_detail_order`;
CREATE TABLE `klaim_detail_order` (
  `id_detail_order` int(11) NOT NULL AUTO_INCREMENT,
  `id_order` varchar(20) NOT NULL,
  `id_penjual` varchar(50) NOT NULL,
  `id_produk` varchar(15) NOT NULL,
  `jumlah_produk` int(11) NOT NULL,
  `berat_produk` double NOT NULL,
  `harga` double NOT NULL,
  `harga_pajak` double NOT NULL,
  `subtotal` double NOT NULL,
  `subtotal_pajak` double NOT NULL,
  `no_resi` varchar(50) NOT NULL,
  `pembayaran` double NOT NULL,
  `tagihan` double NOT NULL,
  `status_kirim` int(1) NOT NULL,
  `keterangan` text NOT NULL,
  `id_ongkir_pembeli` varchar(255) NOT NULL,
  `status_detail_komplain` int(11) NOT NULL,
  PRIMARY KEY (`id_detail_order`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of klaim_detail_order
-- ----------------------------

-- ----------------------------
-- Table structure for komplain_barang
-- ----------------------------
DROP TABLE IF EXISTS `komplain_barang`;
CREATE TABLE `komplain_barang` (
  `id_komplain` int(11) NOT NULL AUTO_INCREMENT,
  `id_detail_order` varchar(50) NOT NULL,
  `id_penjual` varchar(50) DEFAULT NULL,
  `pesan_komplain` text NOT NULL,
  `bukti_komplain` varchar(50) NOT NULL,
  `jumlah_produk_komplain` int(11) NOT NULL,
  `jenis_komplain` varchar(255) NOT NULL,
  `status_komplain` varchar(50) NOT NULL DEFAULT 'Belum Ditangani',
  `tgl_komplain` date NOT NULL,
  `status_dana_kembali` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_komplain`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of komplain_barang
-- ----------------------------
INSERT INTO `komplain_barang` VALUES ('5', '59', null, 'Barang tidak sesuai', 'foto_bukti_59_png.png', '1', 'Pergantian Produk', 'Disetujui dan Dalam Proses Pengiriman', '2021-06-17', '0');
INSERT INTO `komplain_barang` VALUES ('6', '64', null, 'Barang tidak sesuai', 'foto_bukti_64_png.png', '1', 'Pergantian Produk', 'Disetujui dan Dalam Proses Pengiriman', '2021-06-21', '0');
INSERT INTO `komplain_barang` VALUES ('7', '107', null, 'wqdqqqqqqq', 'foto_bukti_107_jpg.jpg', '1', 'Pergantian Produk', 'Disetujui dan Dalam Proses Pengiriman', '2021-08-03', '0');
INSERT INTO `komplain_barang` VALUES ('8', '108', null, 'ef', 'foto_bukti_108_', '1', 'Pergantian Produk', 'Disetujui', '2021-08-03', '0');

-- ----------------------------
-- Table structure for konfirmasi_bayar
-- ----------------------------
DROP TABLE IF EXISTS `konfirmasi_bayar`;
CREATE TABLE `konfirmasi_bayar` (
  `id_konfirmasi` int(11) NOT NULL AUTO_INCREMENT,
  `tgl_konfirmasi` date NOT NULL,
  `id_order` varchar(255) NOT NULL,
  `jumlah_bayar` int(11) NOT NULL,
  `bank_bayar` varchar(20) NOT NULL,
  `rekening_bayar` varchar(30) NOT NULL,
  `nama_bayar` varchar(30) NOT NULL,
  `foto` varchar(225) CHARACTER SET utf8mb4 NOT NULL,
  PRIMARY KEY (`id_konfirmasi`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of konfirmasi_bayar
-- ----------------------------
INSERT INTO `konfirmasi_bayar` VALUES ('17', '2021-06-15', 'T210615001', '25200', 'Bank BRI', '987877676', 'dimas', '');
INSERT INTO `konfirmasi_bayar` VALUES ('18', '2021-06-15', 'T210616001', '14700', 'Bank BRI', '39839898492', 'dimas', '');
INSERT INTO `konfirmasi_bayar` VALUES ('19', '2021-06-16', 'T210616002', '10001', 'Bank BRI', '7565435456789', 'jghfcgvhbj', '');
INSERT INTO `konfirmasi_bayar` VALUES ('20', '2021-06-16', 'T210616003', '29000', 'Bank BRI', '083747436882', 'dimas', '');
INSERT INTO `konfirmasi_bayar` VALUES ('21', '2021-06-16', 'T210616004', '12000', 'Bank BRI', '4234', 'jkdf,s', '');
INSERT INTO `konfirmasi_bayar` VALUES ('22', '2021-06-16', 'T210616005', '26000', 'Bank BRI', '083747436882', 'hbkasda', '');
INSERT INTO `konfirmasi_bayar` VALUES ('23', '2021-06-16', 'T210616006', '12000', 'Bank BRI', '083747436882', '33333333333', '');
INSERT INTO `konfirmasi_bayar` VALUES ('24', '2021-06-16', 'T210616007', '25200', 'Bank BRI', '8732462839439', 'dimas', '');
INSERT INTO `konfirmasi_bayar` VALUES ('25', '2021-06-16', 'T210616008', '30000', 'Bank BRI', '083747436882', 'dimas', '');
INSERT INTO `konfirmasi_bayar` VALUES ('26', '2021-06-16', 'T210616009', '20000', 'Bank BRI', '083747436882', 'dimas', 'bukti_transfer_T210616009_');
INSERT INTO `konfirmasi_bayar` VALUES ('27', '2021-06-16', 'T210616010', '15500', 'Bank BRI', '083747436882', 'dimas', 'bukti_transfer_T210616010_');
INSERT INTO `konfirmasi_bayar` VALUES ('28', '2021-06-16', 'T210616011', '10001', 'Bank BRI', '083747436882', 'dimas', 'bukti_transfer_T210616011_jpg.jpg');
INSERT INTO `konfirmasi_bayar` VALUES ('29', '2021-06-17', 'T210617001', '34500', 'Bank BRI', '4363235465', 'dimas', 'bukti_transfer_T210617001_png.png');
INSERT INTO `konfirmasi_bayar` VALUES ('30', '2021-06-17', 'T210617002', '10001', 'Bank BRI', '45433462564', 'dimas', 'bukti_transfer_T210617002_png.png');
INSERT INTO `konfirmasi_bayar` VALUES ('31', '2021-06-17', 'T210617005', '15500', 'Bank BRI', '083747436882', 'dimas', 'bukti_transfer_T210617005_png.png');
INSERT INTO `konfirmasi_bayar` VALUES ('32', '2021-06-21', 'T210621001', '122500', 'BNI', '083747436882', 'dimas', 'bukti_transfer_T210621001_png.png');
INSERT INTO `konfirmasi_bayar` VALUES ('33', '2021-07-08', 'T210708006', '4201', 'BRI', '326947326', ',dgshfjask', 'bukti_transfer_T210708006_png.png');
INSERT INTO `konfirmasi_bayar` VALUES ('34', '2021-07-08', 'T210708042', '1001', 'BNI', '13248762137291', 'Dimas', 'bukti_transfer_T210708042_png.png');
INSERT INTO `konfirmasi_bayar` VALUES ('35', '2021-08-03', 'T210803006', '103000', 'BNI', '34321', 'egidead', 'bukti_transfer_T210803006_jpg.jpg');
INSERT INTO `konfirmasi_bayar` VALUES ('36', '2021-08-03', 'T210803007', '75500', 'BNI', '324523423', 'dsfcdsf', 'bukti_transfer_T210803007_jpg.jpg');
INSERT INTO `konfirmasi_bayar` VALUES ('37', '2021-08-03', 'T210803008', '29500', 'Mandiri', '32942', 'edegee', 'bukti_transfer_T210803008_jpg.jpg');

-- ----------------------------
-- Table structure for konfirmasi_penerimaan
-- ----------------------------
DROP TABLE IF EXISTS `konfirmasi_penerimaan`;
CREATE TABLE `konfirmasi_penerimaan` (
  `id_penerimaan` int(11) NOT NULL AUTO_INCREMENT,
  `id_order` int(11) NOT NULL,
  `id_penjual` varchar(50) NOT NULL,
  `tanggal_penerimaan` date NOT NULL,
  `foto_bukti` varchar(100) NOT NULL,
  PRIMARY KEY (`id_penerimaan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of konfirmasi_penerimaan
-- ----------------------------

-- ----------------------------
-- Table structure for konfirmasi_pengembalian_produk
-- ----------------------------
DROP TABLE IF EXISTS `konfirmasi_pengembalian_produk`;
CREATE TABLE `konfirmasi_pengembalian_produk` (
  `id_konfirmasi_pengembalian_produk` int(11) NOT NULL AUTO_INCREMENT,
  `id_komplain_barang` int(11) NOT NULL,
  `id_detail_order` int(11) NOT NULL,
  `id_order` varchar(255) NOT NULL,
  `no_resi_pengembalian` varchar(255) DEFAULT NULL,
  `no_rek` varchar(255) NOT NULL,
  `nama_rek` varchar(255) NOT NULL,
  `jenis_bank` varchar(255) NOT NULL,
  `status_sampai` int(11) NOT NULL DEFAULT '0',
  `no_resi_ganti` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_konfirmasi_pengembalian_produk`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of konfirmasi_pengembalian_produk
-- ----------------------------
INSERT INTO `konfirmasi_pengembalian_produk` VALUES ('3', '5', '59', 'T210617001', null, '32532132', 'dimas', 'Bank Nasional BRI', '1', null);
INSERT INTO `konfirmasi_pengembalian_produk` VALUES ('4', '6', '64', 'T210621001', null, '32532132', 'dimas', 'BRI', '1', null);
INSERT INTO `konfirmasi_pengembalian_produk` VALUES ('5', '7', '107', 'T210803007', null, '21321321', '461258792', '222wqd32', '1', null);

-- ----------------------------
-- Table structure for konten
-- ----------------------------
DROP TABLE IF EXISTS `konten`;
CREATE TABLE `konten` (
  `id_konten` int(11) NOT NULL,
  `tentang` text NOT NULL,
  `aturan` text NOT NULL,
  `alamat` text NOT NULL,
  `nama_provinsi` varchar(255) NOT NULL,
  `nama_kota` varchar(255) NOT NULL,
  `provinsi` varchar(60) NOT NULL,
  `id_kota` int(11) NOT NULL,
  `kota` varchar(60) NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `panduan` text NOT NULL,
  PRIMARY KEY (`id_konten`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of konten
-- ----------------------------
INSERT INTO `konten` VALUES ('1', '<article helvetica=\"\" style=\"box-sizing: border-box; color: rgb(128, 128, 128); font-family: \">\r\n	<p style=\"box-sizing: border-box; margin: 0px 0px 15px;\">\r\n		BlonjoSam merupakan salah satu&nbsp;<strong style=\"box-sizing: border-box;\"><em style=\"box-sizing: border-box;\">online marketplace</em>&nbsp;terkemuka di Indonesia</strong>. Seperti halnya situs layanan jual-beli menyediakan sarana jual-beli dari konsumen ke konsumen. Siapa pun dapat membuka toko online di BlonjoBu dan melayani pembeli dari seluruh Indonesia untuk transaksi satuan maupun banyak.....</p>\r\n	<p style=\"box-sizing: border-box; margin: 0px 0px 15px;\">\r\n		&nbsp;</p>\r\n	<div>\r\n		&nbsp;</div>\r\n</article>\r\n', '<div class=\"anchor js-instafilta--section\" helvetica=\"\" id=\"general-terms\" style=\"box-sizing: border-box; margin-bottom: 25px; color: rgb(128, 128, 128); font-family: \">\n	<h6 style=\"box-sizing: border-box; margin: 0px 0px 15px; font-size: 14px; line-height: 1.45em;\">\n		&nbsp;<strong style=\"font-size: 12px;\">Informasi Umum</strong></h6>\n	<p>\n		&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jevera sebagai sarana penunjang bisnis berusaha menyediakan berbagai fitur dan layanan untuk menjamin keamanan dan kenyamanan para penggunanya.</p>\n	<p>\n		&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jevera tidak berperan sebagai Pelapak barang, melainkan sebagai perantara antara Pelapak dan Pembeli, untuk mengamankan setiap transaksi yang berlangsung di dalam&nbsp;<em>platform</em>&nbsp;Jevera&nbsp;melalui mekanisme BL Payment System. Adanya biaya ekstra (termasuk pajak dan biaya lainnya) atas segala transaksi yang terjadi di Jevera berada di luar kewenangan Jevera sebagai perantara, dan akan diurus oleh pihak-pihak yang bersangkutan (baik Pelapak atau pun Pembeli) sesuai ketentuan yang berlaku di Indonesia.</p>\n	<p>\n		&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jevera hanya mengizinkan jual beli barang yang bisa dikirim melalui jasa pengiriman (jasa ekspedisi), sehingga jasa dan kerjasama dagang (<em>franchise</em>) tidak dapat diperdagangkan melalui Jevera terkecuali ada kerja sama resmi dengan pihak Jevera&nbsp;.</p>\n	<p>\n		&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Barang-barang yang dapat diperdagangkan di Jevera&nbsp;merupakan barang yang tidak tercantum di daftar &ldquo;Barang Terlarang&rdquo;.</p>\n	<p>\n		&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jevera tidak bertanggung jawab atas kualitas barang, proses pengiriman, rusaknya reputasi pihak lain, dan/atau segala bentuk perselisihan yang dapat terjadi antar Pengguna.</p>\n	<p>\n		&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jevera memiliki kewenangan untuk mengambil tindakan yang dianggap perlu terhadap akun yang diduga dan/atau terindikasi melakukan penyalahgunaan, memanipulasi, dan/atau melanggar Aturan Penggunaan di Jevera&nbsp;, mulai dari melakukan moderasi, menghentikan layanan &ldquo;Jual Barang&rdquo;, membatasi jumlah pembuatan akun, membatasi atau mengakhiri hak setiap Pengguna untuk menggunakan layanan, maupun menutup akun tersebut tanpa memberikan pemberitahuan atau informasi terlebih dahulu kepada pemilik akun yang bersangkutan.</p>\n	<p>\n		&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jevera memiliki kewenangan untuk mengambil tindakan yang dianggap perlu terhadap akun Pengguna, mulai dari melakukan moderasi, menghentikan layanan &ldquo;Jual Barang&rdquo;, membatasi jumlah pembuatan akun, membatasi atau mengakhiri hak setiap Pengguna untuk menggunakan layanan, maupun menutup akun tersebut tanpa memberikan pemberitahuan atau informasi terlebih dahulu kepada pemilik akun yang bersangkutan.</p>\n	<p>\n		&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jevera memiliki kewenangan untuk mengambil keputusan atas permasalahan yang terjadi pada setiap transaksi.</p>\n	<p>\n		&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jika Pengguna gagal untuk mematuhi setiap ketentuan dalam Aturan Penggunaan di Jevera ini, maka Jevera berhak untuk mengambil tindakan yang dianggap perlu termasuk namun tidak terbatas pada melakukan moderasi, menghentikan layanan &ldquo;Jual Barang&rdquo;, menutup akun dan/atau mengambil langkah hukum selanjutnya.</p>\n	<p>\n		&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; BL Payment System bersifat mengikat Pengguna Jevera dan hanya menjamin dana Pembeli tetap aman jika proses transaksi dilakukan dengan Pelapak yang terdaftar di dalam sistem Jevera. Kerugian yang diakibatkan keterlibatan pihak lain di luar Pembeli, Pelapak, dan Jevera, tidak menjadi tanggung jawab Jevera.</p>\n	<p>\n		&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jevera berhak meminta data-data pribadi Pengguna jika diperlukan.</p>\n	<p>\n		&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Aturan Penggunaan Jevera dapat berubah sewaktu-waktu dan/atau diperbaharui dari waktu ke waktu tanpa pemberitahuan terlebih dahulu. Dengan mengakses Jevera, Pengguna dianggap menyetujui perubahan-perubahan dalam Aturan Penggunaan Jevera.</p>\n	<p>\n		&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Aturan Penggunaan Jevera pada Situs Jevera berlaku mutatis mutandis untuk penggunaan Aplikasi Jevera.</p>\n	<p>\n		&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hati-hati terhadap penipuan yang mengatasnamakan Jevera. Untuk informasi dan pengaduan, silakan hubungi cs@Jevera.com.</p>\n	<p>\n		<strong>Pengguna</strong></p>\n	<p style=\"margin-left:21.0pt;\">\n		1.&nbsp;&nbsp;&nbsp;&nbsp; Pengguna wajib mengisi data pribadi secara lengkap dan jujur di halaman akun (profil).</p>\n	<p style=\"margin-left:21.0pt;\">\n		2.&nbsp;&nbsp;&nbsp;&nbsp; Pengguna dilarang mencantumkan alamat, nomor kontak, e-mail, situs, forum, dan media sosial di lapak, termasuk di foto profil, foto header lapak, nama akun (<em>username</em>), nama lapak, dan deskripsi lapak.</p>\n	<p style=\"margin-left:21.0pt;\">\n		3.&nbsp;&nbsp;&nbsp;&nbsp; Pengguna bertanggung jawab atas keamanan dari akun termasuk penggunaan e-mail dan&nbsp;<em>password</em>.</p>\n	<p style=\"margin-left:21.0pt;\">\n		4.&nbsp;&nbsp;&nbsp;&nbsp; Pengguna wajib mengisi data bank pribadi (<em>bank account</em>) untuk kepentingan bertransaksi di Jevera.</p>\n	<p style=\"margin-left:21.0pt;\">\n		5.&nbsp;&nbsp;&nbsp;&nbsp; Penggunaan fasilitas apapun yang disediakan oleh Jevera mengindikasikan bahwa Pengguna telah memahami dan menyetujui segala aturan yang diberlakukan oleh Jevera.</p>\n	<p style=\"margin-left:21.0pt;\">\n		6.&nbsp;&nbsp;&nbsp;&nbsp; Selama berada dalam platform Jevera, Pengguna dilarang keras menyampaikan setiap jenis konten apapun yang menyesatkan, memfitnah, atau mencemarkan nama baik, mengandung atau bersinggungan dengan unsur SARA, diskriminasi, dan/atau menyudutkan pihak lain.</p>\n	<p style=\"margin-left:21.0pt;\">\n		7.&nbsp;&nbsp;&nbsp;&nbsp; Pengguna tidak diperbolehkan menggunakan Jevera untuk melanggar peraturan yang ditetapkan oleh hukum di Indonesia maupun di negara lainnya.</p>\n	<p style=\"margin-left:21.0pt;\">\n		8.&nbsp;&nbsp;&nbsp;&nbsp; Pengguna bertanggung jawab atas segala risiko yang timbul di kemudian hari atas informasi yang diberikannya ke dalam Jevera, termasuk namun tidak terbatas pada hal-hal yang berkaitan dengan hak cipta, merek, desain industri, desain tata letak industri dan hak paten atas suatu produk.</p>\n	<p style=\"margin-left:21.0pt;\">\n		9.&nbsp;&nbsp;&nbsp;&nbsp; Pengguna diwajibkan menghargai hak-hak Pengguna lainnya dengan tidak memberikan informasi pribadi ke pihak lain tanpa izin pihak yang bersangkutan.</p>\n	<p style=\"margin-left:21.0pt;\">\n		10.&nbsp;&nbsp; Pengguna tidak diperkenankan mengirimkan e-mail&nbsp;<em>spam</em>&nbsp;dengan merujuk ke bagian apapun dari Jevera.</p>\n	<p style=\"margin-left:21.0pt;\">\n		11.&nbsp;&nbsp; Administrator Jevera berhak menyesuaikan dan/atau menghapus informasi barang, dan menonaktifkan akun Pengguna.</p>\n	<p style=\"margin-left:21.0pt;\">\n		12.&nbsp;&nbsp; Jevera memiliki hak untuk memblokir penggunaan sistem terhadap Pengguna yang melanggar peraturan perundang-undangan yang berlaku di wilayah Indonesia.</p>\n	<p style=\"margin-left:21.0pt;\">\n		13.&nbsp;&nbsp; Pengguna akan mendapatkan beragam informasi promo terbaru dan penawaran eksklusif. Namun, Pengguna dapat berhenti berlangganan (<em>unsubscribe</em>) jika tidak ingin menerima informasi tersebut.</p>\n	<p style=\"margin-left:21.0pt;\">\n		14.&nbsp;&nbsp; Pengguna dilarang menggunakan logo Jevera di foto profil (avatar).</p>\n	<p style=\"margin-left:21.0pt;\">\n		15.&nbsp;&nbsp; Pengguna dilarang menggunakan kata-kata kasar yang tidak sesuai norma, baik saat berdiskusi di fitur kirim pesan atau chat maupun kolom diskusi retur. Jika ditemukan pelanggaran, Jevera berhak memberikan sanksi seperti menonaktifkan sementara fitur pesan, dan membekukan atau menonaktifkan akun Pengguna.</p>\n	<p style=\"margin-left:21.0pt;\">\n		16.&nbsp;&nbsp; Pengguna dilarang menggunakan fitur kirim pesan atau chat sebagai iklan promosi barang dagangan di Jevera maupun di platform atau situs lain yang dapat mengganggu Pengguna lainnya. Jika ditemukan pelanggaran, Jevera berhak memberikan sanksi seperti menonaktifkan fitur pesan dan/atau akun Pengguna.</p>\n	<p style=\"margin-left:21.0pt;\">\n		17.&nbsp;&nbsp; Pengguna dilarang menggunakan fitur kirim pesan atau chat sebagai sarana penelitian, kuesioner, atau&nbsp;<em>survey</em>. Jika ditemukan pelanggaran, Jevera berhak memberikan sanksi seperti menonaktifkan fitur pesan dan/atau akun Pengguna.</p>\n	<p style=\"margin-left:21.0pt;\">\n		18.&nbsp;&nbsp; Pengguna dilarang melakukan transfer atau menjual akun Pengguna ke Pengguna lain atau ke pihak lain tanpa persetujuan dari Jevera.</p>\n	<p style=\"margin-left:21.0pt;\">\n		19.&nbsp;&nbsp; Pengguna dengan ini menyatakan bahwa Pengguna telah mengetahui seluruh peraturan perundang- undangan yang berlaku di wilayah Republik Indonesia dalam setiap transaksi di Jevera, dan tidak akan melakukan tindakan apapun yang mungkin melanggar peraturan perundang-undangan yang berlaku di wilayah Republik Indonesia.</p>\n	<p style=\"margin-left:21.0pt;\">\n		20.&nbsp;&nbsp; Pengguna dilarang membuat salinan, modifikasi, turunan atau distribusi konten atau mempublikasikan tampilan yang berasal dari Jevera yang dapat melanggar Hak Kekayaan Intelektual Jevera.</p>\n	<p style=\"margin-left:21.0pt;\">\n		21.&nbsp;&nbsp; Pengguna dilarang membuat akun Jevera dengan tujuan menghindari batasan pembelian, penyalahgunaan voucher atau konsekuensi kebijakan Aturan Penggunaan Jevera lainnya.</p>\n	<p>\n		<strong>Jual barang</strong></p>\n	<p style=\"margin-left:21.0pt;\">\n		1.&nbsp;&nbsp;&nbsp;&nbsp; Pelapak bertanggung jawab secara penuh atas segala risiko yang timbul di kemudian hari terkait dengan informasi yang dibuatnya, termasuk, namun tidak terbatas pada hal-hal yang berkaitan dengan hak cipta, merek, desain industri, desain tata letak sirkuit, hak paten dan/atau izin lain yang telah ditetapkan atas suatu produk menurut hukum yang berlaku di Indonesia.</p>\n	<p style=\"margin-left:21.0pt;\">\n		2.&nbsp;&nbsp;&nbsp;&nbsp; Pelapak hanya diperbolehkan menjual barang-barang yang tidak tercantum di daftar &ldquo;Barang Terlarang&rdquo;.</p>\n	<p style=\"margin-left:21.0pt;\">\n		3.&nbsp;&nbsp;&nbsp;&nbsp; Pelapak wajib menempatkan barang dagangan sesuai dengan kategori dan subkategorinya.</p>\n	<p style=\"margin-left:21.0pt;\">\n		4.&nbsp;&nbsp;&nbsp;&nbsp; Pelapak wajib mengisi nama atau judul barang dengan jelas, singkat dan padat.</p>\n	<p style=\"margin-left:21.0pt;\">\n		5.&nbsp;&nbsp;&nbsp;&nbsp; Pelapak wajib menampilkan gambar barang yang sesuai dengan deskripsi barang yang dijual dan tidak mencantumkan logo ataupun alamat situs jual-beli lain pada gambar. Dianjurkan foto atau gambar memperlihatkan 3 bagian (depan, samping dan belakang) dengan resolusi minimal 300px.</p>\n	<p style=\"margin-left:21.0pt;\">\n		6.&nbsp;&nbsp;&nbsp;&nbsp; Pelapak wajib mengisi harga yang sesuai dengan harga sebenarnya.</p>\n	<p style=\"margin-left:21.0pt;\">\n		7.&nbsp;&nbsp;&nbsp;&nbsp; Pelapak tidak diperkenankan mencantumkan alamat (e-mail, situs, forum, dan&nbsp;<em>social network</em>), nomor kontak, ID / PIN /&nbsp;<em>username social media</em>, dan nomor rekening bank selain pada kolom yang disediakan.</p>\n	<p style=\"margin-left:21.0pt;\">\n		8.&nbsp;&nbsp;&nbsp;&nbsp; Pelapak dilarang menjual barang yang identik sama (<em>multiple posting</em>) dengan yang sudah ada di lapaknya.</p>\n	<p style=\"margin-left:21.0pt;\">\n		9.&nbsp;&nbsp;&nbsp;&nbsp; Pelapak dilarang melakukan duplikasi penjualan barang dengan menyalin atau menggunakan gambar dari lapak Pelapak lain.</p>\n	<p style=\"margin-left:21.0pt;\">\n		10.&nbsp;&nbsp; Pelapak tidak perkenankan memberikan informasi alamat (e-mail, situs, forum, dan&nbsp;<em>social network</em>), nomor kontak, ID / PIN /&nbsp;<em>username social media</em>&nbsp;melalui fitur pesan.</p>\n	<p style=\"margin-left:21.0pt;\">\n		11.&nbsp;&nbsp; Pelapak wajib memperbarui (<em>update</em>) ketersediaan dan status barang yang dijual.</p>\n	<p style=\"margin-left:21.0pt;\">\n		12.&nbsp;&nbsp; Catatan Pelapak diperuntukkan bagi Pelapak yang ingin memberikan catatan tambahan yang tidak terkait dengan deskripsi barang kepada calon Pembeli. Catatan Pelapak tetap tunduk terhadap Aturan Penggunaan Jevera.</p>\n	<p style=\"margin-left:21.0pt;\">\n		13.&nbsp;&nbsp; Pelapak wajib mengisi kolom Deskripsi Barang sesuai dengan Aturan Penggunaan di Jevera.</p>\n	<p style=\"margin-left:21.0pt;\">\n		14.&nbsp;&nbsp; Pelapak dilarang membuat transaksi fiktif atau palsu demi kepentingan menaikkan&nbsp;<em>feedback</em>. Jevera berhak mengambil tindakan seperti pemblokiran akun atau tindakan lainnya apabila ditemukan tindakan kecurangan.</p>\n	<p style=\"margin-left:21.0pt;\">\n		15.&nbsp;&nbsp; Pelapak wajib mengirimkan barang menggunakan jasa ekspedisi sesuai dengan yang dipilih oleh Pembeli pada saat melakukan transaksi di dalam sistem Jevera.</p>\n	<p style=\"margin-left:21.0pt;\">\n		16.&nbsp;&nbsp; Apabila Pelapak menggunakan jasa ekspedisi yang berbeda dengan jasa dan/atau jenis jasa ekspedisi yang dipilih oleh Pembeli pada saat melakukan transaksi di dalam sistem Jevera maka Pelapak bertanggung jawab atas segala hal selama proses pengiriman yang disebabkan oleh penggunaan jasa dan/atau jenis jasa ekspedisi yang berbeda tersebut.</p>\n	<p style=\"margin-left:21.0pt;\">\n		17.&nbsp;&nbsp; Pelapak memahami dan menyetujui bahwa kekurangan dana biaya kirim yang disebabkan oleh penggunaan jasa dan/atau jenis jasa yang berbeda dari pilihan Pembeli pada saat melakukan transaksi di dalam sistem Jevera merupakan tanggung jawab Pelapak terkecuali perbedaan tersebut atas permintaan Pembeli.</p>\n	<p style=\"margin-left:21.0pt;\">\n		18.&nbsp;&nbsp; Pembeli berhak atas kelebihan dana dari biaya kirim yang diakibatkan perbedaan penggunaan jasa dan/atau jenis jasa ekspedisi oleh Pelapak dari pilihan Pembeli pada saat melakukan transaksi di dalam sistem Jevera.</p>\n	<p style=\"margin-left:21.0pt;\">\n		19.&nbsp;&nbsp; Pelapak wajib memenuhi ketentuan yang sudah ditetapkan oleh pihak jasa ekspedisi berkaitan dengan&nbsp;<em>packing</em>&nbsp;barang yang aman serta menggunakan asuransi dan/atau&nbsp;<em>packing</em>&nbsp;kayu pada barang-barang tertentu sehingga apabila barang rusak atau hilang Pelapak dapat mengajukan klaim ke pihak jasa ekspedisi.</p>\n	<p>\n		<strong>Transaksi</strong></p>\n	<p style=\"margin-left:21.0pt;\">\n		1.&nbsp;&nbsp;&nbsp;&nbsp; Demi keamanan dan kenyamanan para Pengguna, setiap transaksi jual-beli di Jevera diwajibkan untuk menggunakan BL Payment System. Untuk informasi mengenai penggunaan BL Payment System dapat dipelajari di&nbsp;<a href=\"https://panduan.bukalapak.com/\">Panduan Jevera</a></p>\n	<p style=\"margin-left:21.0pt;\">\n		2.&nbsp;&nbsp;&nbsp;&nbsp; Pembeli wajib transfer sesuai dengan nominal total belanja dari transaksi dalam waktu 1x10 jam (dengan asumsi Pembeli telah mempelajari informasi barang yang telah dipesannya). Jika dalam waktu 1x10 jam barang dipesan tetapi Pembeli tidak mentransfer dana maka transaksi akan dibatalkan secara otomatis.</p>\n	<p style=\"margin-left:21.0pt;\">\n		3.&nbsp;&nbsp;&nbsp;&nbsp; Setiap transaksi di Jevera yang menggunakan metode transfer akan dikenakan biaya operasional dalam bentuk kode unik pembayaran yang ditanggung oleh Pembeli.</p>\n	<p style=\"margin-left:21.0pt;\">\n		4.&nbsp;&nbsp;&nbsp;&nbsp; Pembeli tidak dapat membatalkan transaksi setelah melunasi pembayaran.</p>\n	<p style=\"margin-left:21.0pt;\">\n		5.&nbsp;&nbsp;&nbsp;&nbsp; Pelapak wajib mengirimkan barang dan mendaftarkan nomor resi pengiriman yang benar dan asli setelah status transaksi &ldquo;Dibayar&rdquo;. Satu nomor resi hanya berlaku untuk satu nomor transaksi di Jevera.</p>\n	<p style=\"margin-left:21.0pt;\">\n		6.&nbsp;&nbsp;&nbsp;&nbsp; Jika Pelapak tidak mengirimkan barang dalam batas waktu pengiriman sejak pembayaran (2x24 jam kerja untuk biaya pengiriman reguler atau 2x24 jam untuk biaya pengiriman kilat), maka Pelapak dianggap telah menolak pesanan. Sehingga, sistem secara otomatis memberikan&nbsp;<em>feedback</em>&nbsp;negatif dan reputasi tolak pesanan, serta mengembalikan seluruh dana (<em>refund</em>) ke Pembeli.</p>\n	<p style=\"margin-left:21.0pt;\">\n		7.&nbsp;&nbsp;&nbsp;&nbsp; Pengembalian dana transaksi dilakukan dengan menambahkan saldo BukaDompet ke Pembeli. Untuk pembayaran dengan menggunakan kartu kredit, dana transaksi akan dikembalikan langsung ke kartu kredit. Pengembalian dana dilakukan dengan memberikan pengurangan biaya pada kartu kredit Pembeli dalam waktu&nbsp;<strong>maksimal 14 hari kerja</strong>&nbsp;setelah pembayaran.</p>\n	<p style=\"margin-left:21.0pt;\">\n		8.&nbsp;&nbsp;&nbsp;&nbsp; Fitur Item Replacement Jevera akan otomatis mencarikan barang yang sama jika transaksi ditolak oleh Pelapak. Jika barang yang sama tidak ditemukan, maka dana akan dikembalikan ke BukaDompet pembeli.</p>\n	<p style=\"margin-left:21.0pt;\">\n		9.&nbsp;&nbsp;&nbsp;&nbsp; Jevera akan mengirimkan email konfirmasi pencarian barang pengganti melalui fitur Item Replacement jika transaksi diabaikan oleh Pelapak. Apabila Pembeli tidak melakukan konfirmasi dalam waktu 1x6 jam, maka fitur Item Replacement Jevera akan otomatis mencarikan barang pengganti.</p>\n	<p style=\"margin-left:21.0pt;\">\n		10.&nbsp;&nbsp; Jika Pembeli melakukan konfirmasi bahwa tidak berkenan untuk dicarikan barang pengganti melalui email yang dikirim Jevera, maka fitur Item Replacement Jevera akan otomatis mengembalikan dana ke BukaDompet.</p>\n	<p style=\"margin-left:21.0pt;\">\n		11.&nbsp;&nbsp; Untuk Pembeli yang memiliki akun di Jevera, apabila terdapat selisih harga barang pengganti, maka dana selisih akan ditanggung oleh Jevera jika harga barang pengganti lebih mahal dan selisih harga akan dikembalikan ke BukaDompet jika harga barang pengganti lebih murah setelah transaksi selesai.</p>\n	<p style=\"margin-left:21.0pt;\">\n		12.&nbsp;&nbsp; Untuk Pembeli yang tidak memiliki akun di Jevera, apabila terdapat selisih harga barang pengganti, maka dana selisih akan ditanggung oleh Jevera jika harga barang pengganti lebih mahal dan jika harga barang pengganti lebih murah maka selisih harga akan hangus.</p>\n	<p style=\"margin-left:21.0pt;\">\n		13.&nbsp;&nbsp; Transaksi yang menggunakan metode pembayaran kartu kredit dan Kredivo tidak akan diproses oleh fitur Item Replacement apabila transaksi ditolak atau diabaikan oleh Pelapak.</p>\n	<p style=\"margin-left:21.0pt;\">\n		14.&nbsp;&nbsp; Sistem Jevera secara otomatis mengecek status pengiriman barang melalui nomor resi yang diberikan Pelapak. Seluruh dana akan dikembalikan ke Pembeli apabila nomor resi terdeteksi tidak valid dan Pelapak tidak melakukan ubah resi valid dalam 1x24 jam. Jika Pelapak memasukkan nomor resi tidak valid lebih dari satu kali maka Jevera akan mengembalikan seluruh dana transaksi kepada Pembeli dan Pelapak mendapatkan&nbsp;<em>feedback</em>&nbsp;negatif.</p>\n	<p style=\"margin-left:21.0pt;\">\n		15.&nbsp;&nbsp; Jika Pembeli tidak memberikan konfirmasi penerimaan barang dalam waktu 2x24 jam sejak barang diterima yang dinyatakan di sistem&nbsp;<em>tracking</em>&nbsp;jasa pengiriman, Jevera akan mentransfer dana langsung ke BukaDompet Pelapak tanpa memberikan konfirmasi ke Pembeli.</p>\n	<p style=\"margin-left:21.0pt;\">\n		16.&nbsp;&nbsp; Sistem secara otomatis memberikan&nbsp;<em>feedback</em>&nbsp;(rekomendasi) positif dan mentransfer dana pembayaran ke BukaDompet Pelapak jika status resi menunjukkan &lsquo;Barang diterima&rsquo; dan Pembeli telah melewati batas waktu untuk konfirmasi.</p>\n	<p style=\"margin-left:21.0pt;\">\n		17.&nbsp;&nbsp; Pembeli dapat memperbarui&nbsp;<em>feedback</em>&nbsp;maksimal 3x24 jam setelah transaksi dinyatakan selesai oleh sistem Jevera.</p>\n	<p style=\"margin-left:21.0pt;\">\n		18.&nbsp;&nbsp; Retur (pengembalian barang) hanya diperbolehkan jika kesalahan dilakukan oleh Pelapak dan barang tidak sesuai deskripsi.</p>\n	<p style=\"margin-left:21.0pt;\">\n		19.&nbsp;&nbsp; Retur tidak dapat dilakukan setelah transaksi selesai menurut sistem general tracking Jevera atau Pembeli telah melakukan konfirmasi barang diterima dan tidak memilih retur.</p>\n	<p style=\"margin-left:21.0pt;\">\n		20.&nbsp;&nbsp; Langkah-langkah melakukan retur bisa dibaca pada&nbsp;<a href=\"http://www.bukalapak.com/faqs/24\">halaman ini</a></p>\n	<p style=\"margin-left:21.0pt;\">\n		21.&nbsp;&nbsp; Jevera akan menahan dana hingga ada kesepakatan (antara Pembeli dan Pelapak) apakah akan dilakukan pengembalian barang ke Pelapak atau tidak.</p>\n	<p style=\"margin-left:21.0pt;\">\n		22.&nbsp;&nbsp; Jevera akan mengembalikan dana transaksi ke Pembeli jika dalam waktu 5x24 jam Pelapak tidak merespon pesan permintaan retur dari Pembeli di halaman detail transaksi. Selanjutnya, Pembeli wajib mengirimkan barang tersebut ke kantor Jevera.</p>\n	<p style=\"margin-left:21.0pt;\">\n		23.&nbsp;&nbsp; Jevera tidak bertanggung jawab terhadap barang retur di kantor Jevera apabila Pelapak tidak melakukan pengaduan kepemilikan barang dalam waktu 30 hari sejak barang diterima di kantor Jevera.</p>\n	<p style=\"margin-left:21.0pt;\">\n		24.&nbsp;&nbsp; Pembeli wajib mengirimkan barang ke Pelapak dan menginformasikan nomor resi ke Jevera jika ada kesepakatan retur dengan Pelapak.</p>\n	<p style=\"margin-left:21.0pt;\">\n		25.&nbsp;&nbsp; Jevera hanya memantau retur sampai barang diterima kembali oleh Pelapak.</p>\n	<p style=\"margin-left:21.0pt;\">\n		26.&nbsp;&nbsp; Jevera berhak melakukan&nbsp;<em>refund</em>&nbsp;dana ke Pembeli jika barang retur telah sampai di kantor Jevera dan berdasarkan pengecekan sesuai dengan yang dikeluhkan Pembeli.</p>\n	<p style=\"margin-left:21.0pt;\">\n		27.&nbsp;&nbsp; Jevera atas kebijakannya sendiri dapat melakukan penahanan atau pembekuan BukaDompet untuk melakukan perlindungan terhadap segala risiko dan kerugian yang timbul, jika Jevera menyimpulkan bahwa tindakan Pengguna, baik Pelapak maupun Pembeli terindikasi melakukan kecurangan-kecurangan atau penyalahgunaan dalam bertransaksi dan/atau pelanggaran terhadap Aturan Penggunaan Jevera dan jika akun Pengguna diduga atau terindikasi telah diakses oleh pihak lain.</p>\n	<p>\n		<strong>Penggunaan Voucher</strong></p>\n	<p style=\"margin-left:21.0pt;\">\n		1.&nbsp;&nbsp;&nbsp;&nbsp; Voucher hanya berlaku untuk transaksi dengan pengiriman yang menggunakan jasa ekspedisi yang tersedia di Jevera.</p>\n	<p style=\"margin-left:21.0pt;\">\n		2.&nbsp;&nbsp;&nbsp;&nbsp; Jevera berhak melakukan tindakan-tindakan yang diperlukan tanpa pemberitahuan sebelumnya. Tindakan tersebut seperti pembatalan transaksi, pembatalan voucher, pemblokiran akun Pengguna, atau tindakan lainnya apabila ditemukan kecurangan dari Pengguna.</p>\n	<p style=\"margin-left:21.0pt;\">\n		3.&nbsp;&nbsp;&nbsp;&nbsp; Jevera berhak melakukan pembatalan transaksi atau membatalkan penggunaan voucher sewaktu-waktu tanpa pemberitahuan terlebih dahulu kepada Pengguna.</p>\n	<p style=\"margin-left:21.0pt;\">\n		4.&nbsp;&nbsp;&nbsp;&nbsp; Jevera berhak mengubah syarat dan ketentuan sewaktu-waktu tanpa pemberitahuan terlebih dahulu kepada Pengguna.</p>\n	<p>\n		<strong>Barang Terlarang</strong></p>\n	<p>\n		Jevera telah dan akan terus melakukan hal-hal sebagaimana dipersyaratkan oleh peraturan perundang-undangan untuk mencegah terjadinya perdagangan barang-barang yang melanggar ketentuan hukum yang berlaku dan/atau hak pribadi pihak ketiga. Berkenaan dengan hal tersebut, berikut adalah barang-barang yang dilarang untuk diperjualbelikan melalui Jevera:</p>\n	<p style=\"margin-left:21.0pt;\">\n		1.&nbsp;&nbsp;&nbsp;&nbsp; Segala bentuk tulisan yang dapat berpengaruh negatif terhadap Jevera</p>\n	<p style=\"margin-left:21.0pt;\">\n		2.&nbsp;&nbsp;&nbsp;&nbsp; Narkotika, obat-obat tidak terdaftar di Dinkes dan/atau BPOM</p>\n	<p style=\"margin-left:21.0pt;\">\n		3.&nbsp;&nbsp;&nbsp;&nbsp; Senjata api, kelengkapan senjata api, replika senjata api, airsoft gun, air gun, dan peluru atau sejenis peluru, senjata tajam, serta jenis senjata lainnya</p>\n	<p style=\"margin-left:21.0pt;\">\n		4.&nbsp;&nbsp;&nbsp;&nbsp; Dokumen pemerintahan dan perjalanan</p>\n	<p style=\"margin-left:21.0pt;\">\n		5.&nbsp;&nbsp;&nbsp;&nbsp; Bagian/organ manusia</p>\n	<p style=\"margin-left:21.0pt;\">\n		6.&nbsp;&nbsp;&nbsp;&nbsp; Mailing list dan informasi pribadi</p>\n	<p style=\"margin-left:21.0pt;\">\n		7.&nbsp;&nbsp;&nbsp;&nbsp; Barang-barang yang melecehkan pihak/ras tertentu atau dapat menyinggung perasaan orang lain</p>\n	<p style=\"margin-left:21.0pt;\">\n		8.&nbsp;&nbsp;&nbsp;&nbsp; Barang yang berhubungan dengan kepolisian</p>\n	<p style=\"margin-left:21.0pt;\">\n		9.&nbsp;&nbsp;&nbsp;&nbsp; Barang yang belum tersedia (<em>pre order</em>) terkecuali sanggup kirim barang dalam waktu 2x24 jam kerja sejak transaksi terbayar</p>\n	<p style=\"margin-left:21.0pt;\">\n		10.&nbsp;&nbsp; Barang curian</p>\n	<p style=\"margin-left:21.0pt;\">\n		11.&nbsp;&nbsp; Barang mistis</p>\n	<p style=\"margin-left:21.0pt;\">\n		12.&nbsp;&nbsp; Pembuka kunci dan segala aksesori penunjang tindakan perampokan/pencurian</p>\n	<p style=\"margin-left:21.0pt;\">\n		13.&nbsp;&nbsp; Barang yang dapat dan atau mudah meledak, menyala atau terbakar sendiri</p>\n	<p style=\"margin-left:21.0pt;\">\n		14.&nbsp;&nbsp; Pornografi,&nbsp;<em>sex toys</em>, alat untuk memperbesar organ vital pria, maupun barang asusila lainnya</p>\n	<p style=\"margin-left:21.0pt;\">\n		15.&nbsp;&nbsp; Barang cetakan/rekaman yang isinya dapat mengganggu keamanan &amp; ketertiban serta stabilitas nasional</p>\n	<p style=\"margin-left:21.0pt;\">\n		16.&nbsp;&nbsp; <em>E-Book</em>, CD, DVD, dan&nbsp;<em>Software</em>&nbsp;bajakan</p>\n	<p style=\"margin-left:21.0pt;\">\n		17.&nbsp;&nbsp; Segala jenis binatang atau hewan peliharaan</p>\n	<p style=\"margin-left:21.0pt;\">\n		18.&nbsp;&nbsp; Jasa, donasi, sewa menyewa, promo&nbsp;<em>event</em>&nbsp;dan sejenisnya terkecuali ada kerja sama resmi dengan pihak Jevera</p>\n	<p style=\"margin-left:21.0pt;\">\n		19.&nbsp;&nbsp; Merek dagang</p>\n	<p style=\"margin-left:21.0pt;\">\n		20.&nbsp;&nbsp; Otomotif (Mobil dan Motor) terkecuali ada kerja sama resmi dengan pihak Jevera</p>\n	<p style=\"margin-left:21.0pt;\">\n		21.&nbsp;&nbsp; Velg Mobil</p>\n	<p style=\"margin-left:21.0pt;\">\n		22.&nbsp;&nbsp; Properti (Rumah, Tanah, dan lain-lain)</p>\n	<p style=\"margin-left:21.0pt;\">\n		23.&nbsp;&nbsp; Pulsa elektrik maupun pulsa fisik/voucher, voucher kuota internet, voucher game, voucher aplikasi, steam wallet, dan lainnya; terkecuali ada kerja sama resmi dengan pihak Jevera</p>\n	<p style=\"margin-left:21.0pt;\">\n		24.&nbsp;&nbsp; Produk yang bukan produk asli dengan merek, atau berkaitan dengan merek terdaftar.</p>\n	<p style=\"margin-left:21.0pt;\">\n		25.&nbsp;&nbsp; Gadget (ponsel, tablet, phablet,&nbsp;<em>smartwatch</em>, dan sejenisnya) replika atau berasal dari pasar gelap (<em>black market</em>)</p>\n	<p style=\"margin-left:21.0pt;\">\n		26.&nbsp;&nbsp; Barang-barang lain yang dilarang untuk diperjualbelikan secara bebas berdasarkan hukum yang berlaku di Indonesia</p>\n	<p>\n		<strong>Sanksi</strong></p>\n	<p>\n		Segala tindakan yang melanggar peraturan di Jevera akan dikenakan sanksi berupa termasuk namun tidak terbatas pada:</p>\n	<p style=\"margin-left:21.0pt;\">\n		1.&nbsp;&nbsp;&nbsp;&nbsp; Pelapak mendapatkan 1&nbsp;<em>feedback</em>&nbsp;negatif apabila tidak mengirimkan barang dalam batas waktu pengiriman sejak pembayaran (2x24 jam kerja untuk biaya pengiriman reguler atau 2x24 jam untuk biaya pengiriman kilat).</p>\n	<p style=\"margin-left:21.0pt;\">\n		2.&nbsp;&nbsp;&nbsp;&nbsp; Pelapak mendapatkan 1&nbsp;<em>feedback</em>&nbsp;negatif jika sudah 5 kali menolak pesanan.</p>\n	<p style=\"margin-left:21.0pt;\">\n		3.&nbsp;&nbsp;&nbsp;&nbsp; Pelapak mendapatkan 3&nbsp;<em>feedback</em>&nbsp;negatif jika sudah memroses pesanan namun tidak kirim barang dalam batas waktu pengiriman sejak pembayaran (2x24 jam kerja untuk pengiriman reguler atau 2x24 jam untuk pengiriman kilat).</p>\n	<p style=\"margin-left:21.0pt;\">\n		4.&nbsp;&nbsp;&nbsp;&nbsp; Akun dibekukan.</p>\n	<p style=\"margin-left:21.0pt;\">\n		5.&nbsp;&nbsp;&nbsp;&nbsp; Akun dinonaktifkan. Dan jika ada Paket Push di akun maka Paket Push hangus.</p>\n	<p style=\"margin-left:21.0pt;\">\n		6.&nbsp;&nbsp;&nbsp;&nbsp; Pelaporan ke pihak terkait (Kepolisian, dll).</p>\n	<p>\n		<strong>Pembatasan Tanggung Jawab</strong></p>\n	<p style=\"margin-left:21.0pt;\">\n		1.&nbsp;&nbsp;&nbsp;&nbsp; Jevera tidak bertanggung jawab atas segala risiko dan kerugian yang timbul dari dan dalam kaitannya dengan informasi yang dituliskan oleh pengguna Jevera.</p>\n	<p style=\"margin-left:21.0pt;\">\n		2.&nbsp;&nbsp;&nbsp;&nbsp; Jevera tidak bertanggung jawab atas segala pelanggaran hak cipta, merek, desain industri, desain tata letak sirkuit, hak paten atau hak-hak pribadi lain yang melekat atas suatu barang, berkenaan dengan segala informasi yang dibuat oleh Pelapak. Untuk melaporkan pelanggaran hak cipta, merek, desain industri, desain tata letak sirkuit, hak paten atau hak-hak pribadi lain,&nbsp;<a href=\"https://www.bukalapak.com/supports/contact_us\">klik di sini</a></p>\n	<p style=\"margin-left:21.0pt;\">\n		3.&nbsp;&nbsp;&nbsp;&nbsp; Jevera tidak bertanggung jawab atas segala risiko dan kerugian yang timbul berkenaan dengan penggunaan barang yang dibeli melalui Jevera, dalam hal terjadi pelanggaran peraturan perundang-undangan.</p>\n	<p style=\"margin-left:21.0pt;\">\n		4.&nbsp;&nbsp;&nbsp;&nbsp; Jevera tidak bertanggung jawab atas segala risiko dan kerugian yang timbul berkenaan dengan diaksesnya akun Pengguna oleh pihak lain.</p>\n	<p style=\"margin-left:21.0pt;\">\n		5.&nbsp;&nbsp;&nbsp;&nbsp; Jevera tidak bertanggung jawab atas segala risiko dan kerugian yang timbul akibat transaksi di luar BL Payment System.</p>\n	<p style=\"margin-left:21.0pt;\">\n		6.&nbsp;&nbsp;&nbsp;&nbsp; Jevera tidak bertanggung jawab atas segala risiko dan kerugian yang timbul akibat kesalahan atau perbedaan nominal yang seharusnya ditransfer ke rekening atas nama PT.Jevera.com.</p>\n	<p style=\"margin-left:21.0pt;\">\n		7.&nbsp;&nbsp;&nbsp;&nbsp; Jevera tidak bertanggung jawab atas segala risiko dan kerugian yang timbul apabila transaksi telah selesai secara sistem (dana telah masuk ke BukaDompet Pelapak ataupun Pembeli).</p>\n	<p style=\"margin-left:21.0pt;\">\n		8.&nbsp;&nbsp;&nbsp;&nbsp; Jevera tidak bertanggung jawab atas segala risiko dan kerugian yang timbul akibat kehilangan barang ketika proses transaksi berjalan dan/atau selesai.</p>\n	<p style=\"margin-left:21.0pt;\">\n		9.&nbsp;&nbsp;&nbsp;&nbsp; Jevera tidak bertanggung jawab atas segala risiko dan kerugian yang timbul akibat kesalahan Pengguna ataupun pihak lain dalam transfer dana ke rekening PT.Jevera.com.</p>\n	<p style=\"margin-left:21.0pt;\">\n		10.&nbsp;&nbsp; Jevera tidak bertanggung jawab atas segala risiko dan kerugian yang timbul apabila akun dalam keadaan dibekukan dan/atau dinonaktifkan.</p>\n	<p style=\"margin-left:21.0pt;\">\n		11.&nbsp;&nbsp; Dalam keadaan apapun, Pengguna akan membayar kerugian Jevera dan/atau menghindarkan Jevera (termasuk petugas, direktur, karyawan, agen, dan lainnya) dari setiap biaya kerugian apapun, kehilangan, pengeluaran atau kerusakan yang berasal dari tuntutan atau klaim Pihak ke-tiga yang timbul dari pelanggaran Pengguna terhadap Aturan Penggunaan Jevera, dan/atau pelanggaran terhadap hak dari pihak ke-tiga.</p>\n	<p>\n		<strong>Hukum yang Berlaku dan Penyelesaian Sengketa</strong></p>\n	<p>\n		&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Aturan Penggunaan ini dilaksanakan dan tunduk pada Peraturan Perundang- udangan Republik Indonesia.</p>\n	<p>\n		&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Apabila terjadi perselisihan, sebelum beralih ke alternatif lain, Pengguna wajib terlebih dahulu menghubungi Jevera secara langsung agar dapat melakukan perundingan atau musyawarah untuk mencapai resolusi bagi kedua belah pihak.</p>\n	<p>\n		&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sebelum menghubungi Jevera secara langsung untuk melakukan perundingan penyelesaian masalah atau sengketa, Pengguna setuju untuk tidak mengumumkan, membuat tulisan-tulisan di media online maupun cetak terkait permasalahan aquo yang dapat menyudutkan Jevera (termasuk petugas, direktur, karyawan dan agen).</p>\n	<p>\n		&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Apabila dalam waktu 1 (satu) bulan setelah dimulainya perundingan atau musyawarah tidak mencapai resolusi, maka PARA PIHAK akan menyelesaikan perselisihan tersebut melalui Pengadilan Negeri Jakarta Selatan.</p>\n	<p>\n		&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Selama perselisihan dalam proses penyelesaian, Pengguna wajib untuk tetap melaksanakan kewajiban-kewajiban lainnya menurut Aturan Penggunaan Jevera.</p>\n	<p>\n		&nbsp;</p>\n</div>\n<p>\n	&nbsp;</p>\n', 'Jln Blimbing no 34 Malang Jawa Timur', 'Jawa Timur', 'Kota Malang', '11', '256', '256', '08994278282', 'mail@jevera.com', '<p>\r\n	1. Pilih produk yang akan dibeli</p>\r\n<p>\r\n	2. Setelah memilih produk yang dibeli lakukan checkout dengan menekan keranjang belanja yang ada di kanan atas</p>\r\n<p>\r\n	3. Lakukan pembayaran</p>\r\n<p>\r\n	3. Kemudian isi form konfirmasi pembayaran</p>\r\n<p>\r\n	&nbsp;</p>\r\n');

-- ----------------------------
-- Table structure for kota
-- ----------------------------
DROP TABLE IF EXISTS `kota`;
CREATE TABLE `kota` (
  `id_kota` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kota` varchar(50) NOT NULL,
  PRIMARY KEY (`id_kota`),
  UNIQUE KEY `nama_kota` (`nama_kota`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of kota
-- ----------------------------
INSERT INTO `kota` VALUES ('5', 'Kabupaten Malang');
INSERT INTO `kota` VALUES ('10', 'Kota Malang');
INSERT INTO `kota` VALUES ('8', 'Kota Nganjuk');
INSERT INTO `kota` VALUES ('2', 'Madiun');
INSERT INTO `kota` VALUES ('9', 'Magelang');
INSERT INTO `kota` VALUES ('1', 'Magetan');

-- ----------------------------
-- Table structure for log_aktivitas
-- ----------------------------
DROP TABLE IF EXISTS `log_aktivitas`;
CREATE TABLE `log_aktivitas` (
  `id_log` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` varchar(255) NOT NULL,
  `aktivitas` text NOT NULL,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of log_aktivitas
-- ----------------------------
INSERT INTO `log_aktivitas` VALUES ('30', '0', 'Mengkonfirmasi pembayaran order dengan ID order T210617001');
INSERT INTO `log_aktivitas` VALUES ('31', '0', 'Mengkonfirmasi pembayaran order dengan ID order T210616001');
INSERT INTO `log_aktivitas` VALUES ('32', '0', 'Mengkonfirmasi pembayaran order dengan ID order T210616005');
INSERT INTO `log_aktivitas` VALUES ('33', '0', 'Mengkonfirmasi pembayaran order dengan ID order T210617005');
INSERT INTO `log_aktivitas` VALUES ('34', '0', 'Mengkonfirmasi pembayaran order dengan ID order T210616009');
INSERT INTO `log_aktivitas` VALUES ('35', '0', 'Mengkonfirmasi pembayaran order dengan ID order T210621001');
INSERT INTO `log_aktivitas` VALUES ('36', '0', 'Mengkonfirmasi pembayaran order dengan ID order T210708006');
INSERT INTO `log_aktivitas` VALUES ('37', '0', 'Mengkonfirmasi pembayaran order dengan ID order T210615001');
INSERT INTO `log_aktivitas` VALUES ('38', '0', 'Mengkonfirmasi pembayaran order dengan ID order T210708042');
INSERT INTO `log_aktivitas` VALUES ('39', '0', 'Mengkonfirmasi pembayaran order dengan ID order T210803007');
INSERT INTO `log_aktivitas` VALUES ('40', '0', 'Mengkonfirmasi pembayaran order dengan ID order T210803008');
INSERT INTO `log_aktivitas` VALUES ('41', '0', 'Mengkonfirmasi pembayaran order dengan ID order T210803006');

-- ----------------------------
-- Table structure for logo
-- ----------------------------
DROP TABLE IF EXISTS `logo`;
CREATE TABLE `logo` (
  `id_logo` int(11) NOT NULL AUTO_INCREMENT,
  `logo` varchar(256) NOT NULL,
  PRIMARY KEY (`id_logo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of logo
-- ----------------------------
INSERT INTO `logo` VALUES ('1', 'logo_1626198027.png');

-- ----------------------------
-- Table structure for mainmenu
-- ----------------------------
DROP TABLE IF EXISTS `mainmenu`;
CREATE TABLE `mainmenu` (
  `seq` int(11) NOT NULL AUTO_INCREMENT,
  `idmenu` int(11) NOT NULL,
  `nama_menu` varchar(50) NOT NULL,
  `active_menu` varchar(50) NOT NULL,
  `icon_class` varchar(50) NOT NULL,
  `link_menu` varchar(50) NOT NULL,
  `menu_akses` varchar(12) NOT NULL,
  `entry_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `entry_user` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`seq`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mainmenu
-- ----------------------------
INSERT INTO `mainmenu` VALUES ('1', '1', 'Dashboard', '', 'menu-icon fa fa-tachometer', 'Home', '', '2017-10-17 12:28:54', null);
INSERT INTO `mainmenu` VALUES ('2', '2', 'Produk', '', 'menu-icon fa fa-newspaper-o', 'Produk', '', '2018-09-24 10:17:43', null);
INSERT INTO `mainmenu` VALUES ('19', '3', 'Order', '', 'menu-icon fa fa-newspaper-o', 'Order', '', '2018-09-24 13:03:55', null);
INSERT INTO `mainmenu` VALUES ('20', '4', 'About', '', 'menu-icon fa fa-newspaper-o', 'About', '', '2018-09-24 15:26:04', null);
INSERT INTO `mainmenu` VALUES ('21', '5', 'Kontak', '', 'menu-icon fa fa-newspaper-o', 'Kontak', '', '2018-09-24 15:37:07', null);

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `id_member` int(11) NOT NULL AUTO_INCREMENT,
  `kode_member` char(30) DEFAULT NULL,
  `username` char(80) DEFAULT NULL,
  `nama_member` varchar(225) DEFAULT NULL,
  `email` char(40) DEFAULT NULL,
  `no_telp` char(19) DEFAULT NULL,
  `jenis_kelamin` char(1) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `password` text,
  `view_password` text,
  `foto_profil` text,
  PRIMARY KEY (`id_member`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES ('6', 'MBR_210813_001', 'edwin', 'Sese', 'edwinlaksono12@gmail.com', '', null, '2021-08-19', '827ccb0eea8a706c4c34a16891f84e7b', '12345', 'Wahyu-11629260830.jpg');
INSERT INTO `member` VALUES ('7', 'MBR_210911_001', null, 'ti.ardira01@gmail.com', '', null, null, null, '8cdda30ea60d343954b0e563fd3d95fc', null, null);
INSERT INTO `member` VALUES ('8', 'MBR_211028_001', null, 'dhafiza', 'admin@dhafiza.com', null, null, null, 'bda63b540a68a0f497a71e2cd49d2f0b', null, null);
INSERT INTO `member` VALUES ('9', 'MBR_211101_001', null, '', '', null, null, null, 'd41d8cd98f00b204e9800998ecf8427e', null, null);
INSERT INTO `member` VALUES ('10', 'MBR_211103_001', null, 'dimas', 'dimas@gmail.com', null, null, null, '827ccb0eea8a706c4c34a16891f84e7b', null, null);
INSERT INTO `member` VALUES ('11', 'MBR_211110_001', 'admin', 'Diva', 'edwinlaksono12@gmail.com', '081216687189', 'P', '2021-11-10', 'fcea920f7412b5da7be0cf42b8c93759', null, 'Diva-11636526034.jpg');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL AUTO_INCREMENT,
  `nama_menu` varchar(50) NOT NULL,
  `foto_menu` varchar(100) NOT NULL,
  `title_menu` varchar(50) NOT NULL,
  `meta_description_menu` varchar(100) NOT NULL,
  `meta_keywords_menu` varchar(100) NOT NULL,
  `aktif_menu` int(11) NOT NULL,
  PRIMARY KEY (`id_menu`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', 'Umroh', 'Jual_Beli_Property_foto.jpg', 'Umroh', 'Umroh', 'Umroh', '1');
INSERT INTO `menu` VALUES ('2', 'Menu Baru', 'Menu_Baru_foto.jpg', 'Baru', 'Baru', 'Baru', '0');
INSERT INTO `menu` VALUES ('4', 'Foods', 'Makanan_foto.jpg', 'Foods', 'Foods', 'Foods', '0');
INSERT INTO `menu` VALUES ('5', 'Seasoning', 'Seasoning.jpg', 'Seasoning', 'Seasoning', 'Seasoning', '0');
INSERT INTO `menu` VALUES ('6', 'Electronics', 'Electronics_foto.jpg', 'Electronics', 'Electronics', 'Electronics', '0');
INSERT INTO `menu` VALUES ('7', 'Menu 1002', 'Menu_100_foto.jpg', '001 uneM2', 'Menu 1002', '001 uneM2', '0');
INSERT INTO `menu` VALUES ('8', 'Menu 10', 'Menu_10_foto.jpg', '01 uneM', 'Menu 10', '01 uneM', '0');

-- ----------------------------
-- Table structure for ongkir_pembeli
-- ----------------------------
DROP TABLE IF EXISTS `ongkir_pembeli`;
CREATE TABLE `ongkir_pembeli` (
  `id_ongkir` int(11) NOT NULL AUTO_INCREMENT,
  `ongkir` varchar(50) NOT NULL,
  `id_order` varchar(50) NOT NULL,
  `id_penjual` varchar(50) NOT NULL,
  `tagihan_admin` int(11) NOT NULL DEFAULT '0',
  `pembayaran` int(11) NOT NULL DEFAULT '0',
  `jasa_pengiriman` varchar(255) NOT NULL,
  PRIMARY KEY (`id_ongkir`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ongkir_pembeli
-- ----------------------------
INSERT INTO `ongkir_pembeli` VALUES ('89', '0', 'T210615001', 'Admin', '0', '0', '0');
INSERT INTO `ongkir_pembeli` VALUES ('90', '0', 'T210616001', 'Admin', '0', '0', '0');
INSERT INTO `ongkir_pembeli` VALUES ('91', '0', 'T210616002', 'Admin', '0', '0', '0');
INSERT INTO `ongkir_pembeli` VALUES ('92', '0', 'T210616003', 'Admin', '0', '0', '0');
INSERT INTO `ongkir_pembeli` VALUES ('93', '0', 'T210616004', 'Admin', '0', '0', '0');
INSERT INTO `ongkir_pembeli` VALUES ('94', '0', 'T210616005', 'Admin', '0', '0', '0');
INSERT INTO `ongkir_pembeli` VALUES ('95', '0', 'T210616006', 'Admin', '0', '0', '0');
INSERT INTO `ongkir_pembeli` VALUES ('96', '0', 'T210616007', 'Admin', '0', '0', '0');
INSERT INTO `ongkir_pembeli` VALUES ('97', '0', 'T210616008', 'Admin', '0', '0', '0');
INSERT INTO `ongkir_pembeli` VALUES ('98', '0', 'T210616009', 'Admin', '0', '0', '0');
INSERT INTO `ongkir_pembeli` VALUES ('99', '0', 'T210616010', 'Admin', '0', '0', '0');
INSERT INTO `ongkir_pembeli` VALUES ('100', '0', 'T210616011', 'Admin', '0', '0', '0');
INSERT INTO `ongkir_pembeli` VALUES ('101', '0', 'T210616012', 'Admin', '0', '0', '0');
INSERT INTO `ongkir_pembeli` VALUES ('102', '0', 'T210616013', 'Admin', '0', '0', '0');
INSERT INTO `ongkir_pembeli` VALUES ('103', '0', 'T210617001', 'Admin', '0', '0', '0');
INSERT INTO `ongkir_pembeli` VALUES ('104', '0', 'T210617002', 'Admin', '0', '0', '0');
INSERT INTO `ongkir_pembeli` VALUES ('105', '0', 'T210617003', 'Admin', '0', '0', '0');
INSERT INTO `ongkir_pembeli` VALUES ('106', '0', 'T210617004', 'Admin', '0', '0', '0');
INSERT INTO `ongkir_pembeli` VALUES ('107', '0', 'T210617005', 'Admin', '0', '0', '0');
INSERT INTO `ongkir_pembeli` VALUES ('108', '0', 'T210621001', 'Admin', '0', '0', '0');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id_order` varchar(11) NOT NULL,
  `tgl_order` datetime NOT NULL,
  `total_order` int(11) NOT NULL,
  `jumlah_order` int(11) NOT NULL,
  `id_jadwal` int(11) DEFAULT NULL,
  `status_order` varchar(30) NOT NULL DEFAULT '1' COMMENT 'transaksi belum bayar,menunggu konfirmasi, sudah bayar',
  `nama_order` varchar(30) NOT NULL,
  `alamat_order` text NOT NULL,
  `tlp_order` varchar(20) NOT NULL,
  `email_order` varchar(60) DEFAULT NULL,
  `provinsi` varchar(50) NOT NULL,
  `kota` varchar(50) NOT NULL,
  `ongkir` int(11) NOT NULL,
  `status_bayar` int(11) DEFAULT '0',
  `kurir` varchar(50) NOT NULL,
  `paket_kirim` varchar(50) NOT NULL,
  `lama_kirim` varchar(50) NOT NULL,
  `kode_member` char(30) DEFAULT NULL,
  `subtotal_order` double DEFAULT NULL,
  `batas_bayar` datetime DEFAULT NULL,
  PRIMARY KEY (`id_order`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('T210824001', '2021-08-24 14:54:03', '37500', '1', null, '1', 'edwin yordan laksono', '', '086786576465', 'edwin@gmail.com', 'DKI Jakarta', 'Kota Jakarta Timur', '12000', '0', 'jne', 'JNE - OKE', '2-3', 'MBR_210813_001', null, null);
INSERT INTO `order` VALUES ('T210824002', '2021-08-24 15:21:18', '37500', '1', null, '1', 'Ahmad', 'Jalan Turus Gurah', '086786576465', 'ahmad@gmail.com', 'DKI Jakarta', 'Kota Jakarta Timur', '12000', '0', 'jne', 'JNE - OKE', '2-3', 'MBR_210813_001', null, null);
INSERT INTO `order` VALUES ('T210826001', '2021-08-26 11:06:55', '37500', '1', null, '1', 'edwin yordan laksono', '', '086786576465', 'edwin@gmail.com', 'DKI Jakarta', 'Kota Jakarta Timur', '12000', '0', 'jne', 'JNE - OKE', '2-3', 'MBR_210813_001', '13500', null);
INSERT INTO `order` VALUES ('T210911001', '2021-09-11 11:41:33', '150000', '4', null, '1', 'edwin yordan laksono', '', '086786576465', 'edwin@gmail.com', 'DKI Jakarta', 'Kota Jakarta Timur', '48000', '0', 'jne', 'JNE - OKE', '2-3', 'MBR_210813_001', '54000', '2021-09-13 11:41:33');
INSERT INTO `order` VALUES ('T210911002', '2021-09-11 11:53:10', '41000', '2', null, '1', 'Chenle', 'batu', '081217176228', 'reta12@gmail.com', 'Jawa Timur', 'Kota Batu', '14000', '0', 'jne', 'REG - Layanan Reguler', '2-3', null, null, '2021-09-13 11:53:10');
INSERT INTO `order` VALUES ('T210912001', '2021-09-12 22:17:04', '61000', '4', null, '1', 'Fabryzal', 'R.E. Martadinata', '08', 'admin@e', 'Jawa Timur', 'Kabupaten Bondowoso', '14000', '0', 'jne', 'OKE - Ongkos Kirim Ekonomis', '2-3', null, null, '2021-09-14 22:17:04');
INSERT INTO `order` VALUES ('T210913001', '2021-09-13 11:38:06', '21500', '1', null, '1', 'dimas', 'dahfbahsfhsbfhb', '089444232332', 'dimas@gmail.com', 'Jawa Timur', 'Kota Kediri', '8000', '0', 'jne', 'REG - Layanan Reguler', '1-2', null, null, '2021-09-15 11:38:06');
INSERT INTO `order` VALUES ('T210915001', '2021-09-15 10:03:11', '58500', '1', null, '1', 'Fabryzal', 'R.E. Martadinata', '87832165981', 'admin@siapmas.com', 'Kalimantan Barat', 'Kota Singkawang', '45000', '0', 'jne', 'OKE - Ongkos Kirim Ekonomis', '5-7', null, null, '2021-09-17 10:03:11');
INSERT INTO `order` VALUES ('T210915002', '2021-09-15 10:19:16', '40500', '2', null, '1', 'edwin yordan laksono', 'Jalan Tumbal Negara', '086786576465', 'edwin@gmail.com', 'DKI Jakarta', 'Kota Jakarta Timur', '12000', '0', 'jne', 'JNE - OKE', '2-3', 'MBR_210813_001', '16500', '2021-09-17 10:19:16');
INSERT INTO `order` VALUES ('T211011001', '2021-10-11 11:16:49', '91000', '6', null, '1', 'edwin yordan laksono', '', '086786576465', 'edwin@gmail.com', 'DKI Jakarta', 'Kota Jakarta Timur', '15000', '0', 'jne', 'JNE - REG', '1-2', 'MBR_210813_001', '76000', '2021-10-13 11:16:49');
INSERT INTO `order` VALUES ('T211011002', '2021-10-11 11:23:26', '106000', '6', null, '1', 'edwin yordan laksono', '', '086786576465', 'edwin@gmail.com', 'DKI Jakarta', 'Kota Jakarta Timur', '15000', '0', 'jne', 'JNE - REG', '1-2', 'MBR_210813_001', '76000', '2021-10-13 11:23:26');
INSERT INTO `order` VALUES ('T211011003', '2021-10-11 11:23:43', '106000', '6', null, '1', 'edwin yordan laksono', '', '086786576465', 'edwin@gmail.com', 'DKI Jakarta', 'Kota Jakarta Timur', '15000', '0', 'jne', 'JNE - REG', '1-2', 'MBR_210813_001', '76000', '2021-10-13 11:23:43');
INSERT INTO `order` VALUES ('T211011004', '2021-10-11 11:23:56', '106000', '6', null, '1', 'edwin yordan laksono', '', '086786576465', 'edwin@gmail.com', 'DKI Jakarta', 'Kota Jakarta Timur', '15000', '0', 'jne', 'JNE - REG', '1-2', 'MBR_210813_001', '76000', '2021-10-13 11:23:56');
INSERT INTO `order` VALUES ('T211011005', '2021-10-11 11:32:38', '1890500', '151', null, '1', 'mamad', 'mamad disini', '22323232323', 'dioseptian316@gmail.com', 'Sumatera Utara', 'Kabupaten Asahan', '1175000', '0', 'jne', 'OKE - Ongkos Kirim Ekonomis', '3-6', null, null, '2021-10-13 11:32:38');
INSERT INTO `order` VALUES ('T211025001', '2021-10-25 22:19:13', '30500', '2', null, '1', 'Dimas AFrilliyan Purnama', 'Kartoharjo', '0896618173562', 'dimasafpurn@gmail.com', 'Jawa Timur', 'Kabupaten Magetan', '7000', '0', 'jne', 'OKE - Ongkos Kirim Ekonomis', '2-3', null, null, '2021-10-27 22:19:13');
INSERT INTO `order` VALUES ('T211026001', '2021-10-26 22:29:39', '52500', '1', null, '1', 'hjfhfhhgh', 'jkhfjkbnk', '0898767563447', 'hjfgjfh@ghf.com', 'Kalimantan Barat', 'Kota Pontianak', '39000', '0', 'jne', 'OKE - Ongkos Kirim Ekonomis', '3-5', null, null, '2021-10-28 22:29:39');
INSERT INTO `order` VALUES ('T211027001', '2021-10-27 19:22:48', '13500', '1', null, '1', 'Diva', 'kediri', '085851446077', 'ardira1701@gmail.com', 'Jawa Timur', 'Kabupaten Kediri', '7000', '0', 'jne', 'OKE - Ongkos Kirim Ekonomis', '2-3', null, null, '2021-10-29 19:22:48');
INSERT INTO `order` VALUES ('T211027002', '2021-10-27 19:34:03', '54000', '4', null, '1', 'Chenle', 'hhjkjkj', '085851446077', 'ardira1701@gmail.com', 'Kalimantan Tengah', 'Kabupaten Pulang Pisau', '43000', '0', 'tiki', 'ECO - Economy Service', '4', null, null, '2021-10-29 19:34:03');
INSERT INTO `order` VALUES ('T211027003', '2021-10-27 21:55:03', '133000', '3', null, '1', 'Diva', 'mojo', '085677088999', 'emailcontoh@gmail.com', 'Jawa Timur', 'Kabupaten Kediri', '16000', '0', 'jne', 'REG - Layanan Reguler', '1-2', null, null, '2021-10-29 21:55:03');
INSERT INTO `order` VALUES ('T211027004', '2021-10-27 22:39:49', '50500', '1', null, '1', 'mgsyu', 'jambi', '0897654', 'hana88@gmail.com', 'Jambi', 'Kota Jambi', '37000', '0', 'jne', 'OKE - Ongkos Kirim Ekonomis', '2-3', null, null, '2021-10-29 22:39:49');
INSERT INTO `order` VALUES ('T211027005', '2021-10-27 23:29:13', '68000', '4', null, '1', 'Diva', 'mojo', '085851446077', 'ardira1701@gmail.com', 'Jawa Timur', 'Kota Kediri', '14000', '0', 'jne', 'OKE - Ongkos Kirim Ekonomis', '2-3', null, null, '2021-10-29 23:29:13');
INSERT INTO `order` VALUES ('T211028001', '2021-10-28 11:50:48', '70000', '4', null, '1', 'Diva', 'mojo', '081217176228', 'ardira1701@gmail.com', 'Jawa Timur', 'Kabupaten Lumajang', '16000', '0', 'tiki', 'ECO - Economy Service', '5', null, null, '2021-10-30 11:50:48');
INSERT INTO `order` VALUES ('T211028002', '2021-10-28 12:01:37', '120900', '9', null, '1', 'Diva', 'mojo', '085851446077', 'ardira1701@gmail.com', 'Jawa Timur', 'Kota Kediri', '42000', '0', 'jne', 'YES - Yakin Esok Sampai', '1-1', null, null, '2021-10-30 12:01:37');
INSERT INTO `order` VALUES ('T211028003', '2021-10-28 13:46:09', '157000', '3', null, '1', 'mamat', 'kasin gang 7', '2323232', 'mamamia@gmail.com', 'Bali', 'Kabupaten Badung', '40000', '0', 'jne', 'OKE - Ongkos Kirim Ekonomis', '3-6', null, null, '2021-10-30 13:46:09');
INSERT INTO `order` VALUES ('T211102001', '2021-11-02 18:48:06', '310000', '9', null, '1', 'edwin yordan laksono', '', '086786576465', 'edwin@gmail.com', 'DKI Jakarta', 'Kota Jakarta Timur', '96000', '0', 'tiki', 'TIKI - ECO', '4', 'MBR_210813_001', '118000', '2021-11-04 18:48:06');
INSERT INTO `order` VALUES ('T211108001', '2021-11-08 23:15:13', '94000', '7', null, '1', 'dajsfaks', 'jaksfsahdshbd', '092613857621', 'sjadsj@gmail.com', 'DI Yogyakarta', 'Kabupaten Gunung Kidul', '10000', '0', 'tiki', 'JNE - REG', 'undefined', null, null, '2021-11-10 23:15:13');
INSERT INTO `order` VALUES ('T211108002', '2021-11-08 23:25:51', '96000', '8', null, '1', 'sandvcasvdbjsa', 'jskagdsajdhsa', '0879765435678', 'sasafgigu@gmail.com', 'Maluku', 'Kabupaten Maluku Tenggara', '10000', '0', 'jne', 'JNE - REG', 'undefined', null, null, '2021-11-10 23:25:51');
INSERT INTO `order` VALUES ('T211108003', '2021-11-08 23:26:09', '96000', '8', null, '1', 'sandvcasvdbjsa', 'jskagdsajdhsa', '0879765435678', 'sasafgigu@gmail.com', 'Maluku', 'Kabupaten Maluku Tenggara', '10000', '0', 'jne', 'JNE - REG', 'undefined', null, null, '2021-11-10 23:26:09');
INSERT INTO `order` VALUES ('T211108004', '2021-11-08 23:26:13', '96000', '8', null, '1', 'sandvcasvdbjsa', 'jskagdsajdhsa', '0879765435678', 'sasafgigu@gmail.com', 'Maluku', 'Kabupaten Maluku Tenggara', '10000', '0', 'jne', 'JNE - REG', 'undefined', null, null, '2021-11-10 23:26:13');
INSERT INTO `order` VALUES ('T211108005', '2021-11-08 23:26:26', '106000', '8', null, '1', 'sandvcasvdbjsa', 'jskagdsajdhsa', '0879765435678', 'sasafgigu@gmail.com', 'Maluku', 'Kabupaten Maluku Tenggara', '10000', '0', 'jne', 'JNE - REG', 'undefined', null, null, '2021-11-10 23:26:26');
INSERT INTO `order` VALUES ('T211109001', '2021-11-09 14:37:48', '152000', '6', null, '1', 'Ardira Diva', 'bantul', '01871', 'ardira1701@gmail.com', 'DI Yogyakarta', 'Kabupaten Bantul', '10000', '0', 'jne', 'JNE - REG', '2', null, null, '2021-11-11 14:37:48');
INSERT INTO `order` VALUES ('T211110001', '2021-11-10 12:18:15', '33500', '3', null, '1', 'Chenle', 'mnnnmc', '081217176228', 'ardira1701@gmail.com', 'Kalimantan Selatan', 'Kabupaten Tabalong', '10000', '0', 'jne', 'JNE - REG', '2', null, null, '2021-11-12 12:18:15');
INSERT INTO `order` VALUES ('T211110002', '2021-11-10 12:20:31', '22000', '1', null, '1', 'Diva', 'mojo', '081217176228', 'ardira1701@gmail.com', 'Jawa Timur', 'Kota Kediri', '10000', '0', 'jne', 'JNE - REG', '2', null, null, '2021-11-12 12:20:31');
INSERT INTO `order` VALUES ('T211110003', '2021-11-10 12:48:20', '34800', '3', null, '1', 'Chenle', 'njnjnj', '081217176228', 'ti.ardira01@gmail.com', 'Jawa Timur', 'Kabupaten Lamongan', '10000', '0', 'jne', 'JNE - REG', '2', null, null, '2021-11-12 12:48:20');
INSERT INTO `order` VALUES ('T211110004', '2021-11-10 12:51:17', '22000', '1', null, '1', 'Chenle', 'mkj', '085851446077', 'ardira1701@gmail.com', 'DI Yogyakarta', 'Kabupaten Bantul', '10000', '0', 'jne', 'JNE - REG', '2', null, null, '2021-11-12 12:51:17');
INSERT INTO `order` VALUES ('T211110005', '2021-11-10 12:53:39', '37000', '3', null, '1', 'Diva', 'eoiedij', '081217176228', 'ti.ardira01@gmail.com', 'Jawa Timur', 'Kota Kediri', '10000', '0', 'jne', 'JNE - REG', '2', null, null, '2021-11-12 12:53:39');
INSERT INTO `order` VALUES ('T211110006', '2021-11-10 12:58:52', '22000', '1', null, '1', 'Diva', 'mojo', '085851446077', 'ardira1701@gmail.com', 'Jawa Timur', 'Kota Kediri', '10000', '0', 'jne', 'JNE - REG', '2', null, null, '2021-11-12 12:58:52');
INSERT INTO `order` VALUES ('T211110007', '2021-11-10 12:59:53', '46000', '3', null, '1', 'Chenle', 'ijij', '085851446077', 'ardira1701@gmail.com', 'Jawa Timur', 'Kota Madiun', '10000', '0', 'jne', 'JNE - REG', '2', null, null, '2021-11-12 12:59:53');

-- ----------------------------
-- Table structure for pemasukan
-- ----------------------------
DROP TABLE IF EXISTS `pemasukan`;
CREATE TABLE `pemasukan` (
  `id_pemasukan` int(11) NOT NULL AUTO_INCREMENT,
  `id_detail_order` int(11) NOT NULL,
  `jumlah_pemasukan` int(11) NOT NULL,
  PRIMARY KEY (`id_pemasukan`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pemasukan
-- ----------------------------

-- ----------------------------
-- Table structure for produk
-- ----------------------------
DROP TABLE IF EXISTS `produk`;
CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` varchar(50) NOT NULL DEFAULT 'Admin',
  `kode_produk` varchar(20) DEFAULT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `id_menu` int(11) NOT NULL DEFAULT '1',
  `kategori_produk` int(11) NOT NULL,
  `harga` int(255) NOT NULL,
  `berat_kotor` int(11) NOT NULL,
  `berat_bersih` int(11) NOT NULL,
  `stok_produk` varchar(20) DEFAULT NULL,
  `ket` text,
  `deskripsi` text NOT NULL,
  `foto_produk1` varchar(50) DEFAULT NULL,
  `foto_produk2` varchar(50) NOT NULL,
  `foto_produk3` varchar(50) NOT NULL,
  `jumlah_stok` int(11) NOT NULL,
  `jumlah_terjual` int(11) DEFAULT NULL,
  `provinsi` int(11) NOT NULL DEFAULT '11',
  `kota` int(11) NOT NULL DEFAULT '255',
  `validasi` tinyint(1) NOT NULL DEFAULT '0',
  `pajak` double NOT NULL DEFAULT '5',
  `url_slug_produk` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_produk`)
) ENGINE=MyISAM AUTO_INCREMENT=2107300003 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of produk
-- ----------------------------
INSERT INTO `produk` VALUES ('1', 'Admin', 'H222', 'Sayur Kol (1 kg)', '1', '6', '13500', '1000', '1000', 'Ada', '', 'Kubis atau kol merupakan salah satu jenis sayuran yang cukup akrab di lidah masyarakat Indonesia. Memiliki tekstur renyah dan rasa yang ringan. Karena itulah, sayuran yang memiliki nama ilmiah Brassica oleracea var. capitata ini sering diolah menjadi beragam hidangan lezat; seperti sup, bakwan, hingga siomay.', 'sayurkol.jpg', '', '', '95', '5', '11', '255', '1', '0', 'sayur-kol-satu-kg');
INSERT INTO `produk` VALUES ('2', 'Admin', '', 'Eden Farm Oyong (500 g)', '1', '6', '6400', '0', '0', '', '', 'Gambas atau oyong (Luffa acutangula, suku labu-labuan atau Cucurbitaceae), adalah komoditas sayuran minor. Penanamannya biasanya dilakukan di pekarangan atau bagian ladang yang tidak digunakan untuk tanaman lain. Gambas dipanen buahnya ketika masih muda dan diolah sebagai sayur.', 'oyong.jpg', '', '', '100', '0', '11', '255', '1', '0', 'eden-farm-oyong-500-g');
INSERT INTO `produk` VALUES ('3', 'Admin', '', 'Selada Keriting Hijau (500 g)', '1', '6', '10000', '0', '0', 'Kosong', '', 'Selada Keriting Hijau Dapat ditanam di dataran rendah sampai tinggi. Merupakan jenis tanaman sayuran dengan bentuk daun bergelombang berwarna hijau kekuningan. Tekstur daun renyah dan tahan penyakit busuk lunak. Selada sering dikonsumsi mentah sebagai lalapan maupun sebagai bahan pelengkap masakan lain. Umur panen ± 45 hari setelah pindah tanam. Kebutuhan benih 160 – 200 g/Ha.', 'seladakeriting.jpg', '', '', '99', '1', '11', '255', '1', '0', 'selada-keriting-hijau-500-g');
INSERT INTO `produk` VALUES ('4', 'Admin', '', 'Labu Siam Besar (1 kg)', '1', '6', '6000', '0', '0', '', '', 'Labu siam atau jipang (Sechium edule, bahasa Inggris: chayote) adalah tumbuhan suku labu-labuan (Cucurbitaceae) yang dapat dimakan buah dan pucuk mudanya. Tumbuhan ini merambat di tanah atau agak memanjat dan biasa dibudidayakan di pekarangan, biasanya di dekat kolam. Buah menggantung dari tangkai. Daunnya berbentuk mirip segitiga dan permukaannya berbulu.', 'labusiam.jpg', '', '', '100', '0', '11', '255', '1', '0', 'labu-siam-besar-1-kg');
INSERT INTO `produk` VALUES ('5', 'Admin', '', 'Tomat (500 g)', '1', '6', '7500', '0', '0', 'Kosong', '', 'Tomat (Solanum lycopersicum syn. Lycopersicum esculentum) adalah tumbuhan dari keluarga Solanaceae, tumbuhan asli Amerika Tengah dan Selatan, dari Meksiko sampai Peru. Tomat merupakan tumbuhan siklus hidup singkat, dapat tumbuh setinggi 1 sampai 3 meter. Tumbuhan ini memiliki buah berawarna hijau, kuning, dan merah yang biasa dipakai sebagai sayur dalam masakan atau dimakan secara langsung tanpa diproses. Tomat memiliki batang dan daun yang tidak dapat dikonsumsi karena masih sekeluarga dengan kentang dan Terung yang mengadung Alkaloid.', 'tomat.jpg', '', '', '100', '0', '11', '255', '1', '0', 'tomat-500-g');
INSERT INTO `produk` VALUES ('6', 'Admin', '', 'Bumbu Racik Nasi Goreng [20 g]', '1', '8', '2125', '0', '0', '', '', 'Sekarang ini urusan dapur pun jadi serba mudah dan praktis karena tidak sedikit ibu memilih masak dengan menggunakan bumbu instan. Terlepas dari aman atau tidaknya cara ini yang jelas proses memasak jelas akan lebih cepat dan ekonomis. Adapun soal rasa juga tidak jauh beda dengan bumbu racikan sendiri, bahkan ada yang menyebutkan jika memasak dengan bumbu instan itu jauh lebih gurih dan berasa.\r\n', 'bumburacik.jpg', '', '', '0', '100', '11', '255', '1', '0', 'bumbu-racik-nasi-goreng-20-g');
INSERT INTO `produk` VALUES ('7', 'Admin', '', 'Lengkuas Bubuk Bumbu Masak [22 g]\r\n', '1', '8', '3000', '0', '0', '', '', 'Koepoe-koepoe Lengkuas Bubuk Bumbu Masak Instan [22 g], bumbu masak instan yang diproses dan dikemas secara higienis serta tidak mengandung pengawet sehingga dapat bertahan lama. Ideal untuk melengkapi bumbu dapur Anda.\r\n', 'lengkuasbubuk.jpg', '', '', '100', '0', '11', '255', '1', '0', 'lengkuas-bubuk-bumbu-masak-22-g');
INSERT INTO `produk` VALUES ('8', 'Admin', '', 'Lada Putih Bubuk Bumbu Masak [38 g]\r\n', '1', '8', '10000', '0', '0', '', '', 'Selain dikenal karena kearifan lokalnya ternyata Indonesia juga diperkaya dengan rempah-rempah, serta bumbu-bumbu khas nusantara yang disiap membuat olahan masakan menjadi semakin lezat dan sedap. Karena hal itu, banyak orang berbondong-bondong datang ke tanah air agar bisa mendapatkan rempah-rempah asli Indonesia. Ada banyak macam bumbu yang tentu sering dijadikan resep andalan untuk memasak, seperti halnya Bawang Merah, Bawang Putih, Jahe, Pala, Merica, Kencur, Kunyit, Cengkeh, Lada, Lengkuas, Cabai, Asam Jawa, Kemiri, Kayu Manis, Santan Kelapa, dll. Yang semua jenis bumbu dapur itu belum tentu ditemukan di luar Indonesia.\r\n', 'ladaputihbubuk.jpg', '', '', '100', '0', '11', '255', '1', '0', 'lada-putih-bubuk-bumbu-masak-38-g');
INSERT INTO `produk` VALUES ('9', 'Admin', '', 'Kencur Super Bumbu Dapur [1 kg]\r\n', '1', '8', '90000', '0', '0', 'Kosong', '', 'Kencur Super Bumbu Dapur [1 kg] adalah salah satu jenis bumbu dapur yang memiliki aroma khas yang segar dan menyeruak. Selain digunakan sebagai penambah cita rasa dalam masakan, manfaat kencur juga sudah lama dikenal sebagai obat alami. Netto 1 kg.\r\n', 'kencursuperbumbudapur.jpg', '', '', '100', '0', '11', '255', '1', '0', 'kencur-super-bumbu-dapur-1-kg');
INSERT INTO `produk` VALUES ('10', 'Admin', '', 'Italian Grill Bumbu Peredam Daging Khas Italia\r\n', '1', '8', '12500', '0', '0', 'Kosong', '', 'Jay\'s Kitchen Grillmaster Italian Grill Bumbu Peredam Daging Khas Italia merupakan bumbu perendam barbeque dengan paduan bahan  bawang putih, bawang bombay, dan paprika dengan sentuhan rempah-rempah. Cocok untuk semua jenis daging sapi, ayam, dan seafood. Dikemas dalam kemasan yang praktis, Anda kini dapat menyajikan masakan favorit Anda hanya dalam waktu 10 menit. Jay\'s Grill Master dibuat dari bahan-bahan pilihan tanpa MSG, yang tentunya membuat hidangan barbeque Anda lezat.\r\n', 'italiangrillbumbuperedamdagingkhasitalia.jpg', '', '', '100', '0', '11', '255', '1', '0', 'italian-grill-bumbu-peredam-daging-khas-italia');

-- ----------------------------
-- Table structure for produk_copy
-- ----------------------------
DROP TABLE IF EXISTS `produk_copy`;
CREATE TABLE `produk_copy` (
  `id_produk` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` varchar(50) NOT NULL DEFAULT 'Admin',
  `kode_produk` varchar(20) DEFAULT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `id_menu` int(11) NOT NULL DEFAULT '1',
  `kategori_produk` int(11) NOT NULL,
  `harga` int(255) NOT NULL,
  `berat_kotor` int(11) NOT NULL,
  `berat_bersih` int(11) NOT NULL,
  `stok_produk` varchar(20) DEFAULT NULL,
  `ket` text,
  `deskripsi` text NOT NULL,
  `foto_produk1` varchar(50) DEFAULT NULL,
  `foto_produk2` varchar(50) NOT NULL,
  `foto_produk3` varchar(50) NOT NULL,
  `jumlah_stok` int(11) NOT NULL,
  `jumlah_terjual` int(11) DEFAULT NULL,
  `provinsi` int(11) NOT NULL DEFAULT '11',
  `kota` int(11) NOT NULL DEFAULT '255',
  `validasi` tinyint(1) NOT NULL DEFAULT '0',
  `pajak` double NOT NULL DEFAULT '5',
  `url_slug_produk` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_produk`)
) ENGINE=MyISAM AUTO_INCREMENT=2107300003 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of produk_copy
-- ----------------------------
INSERT INTO `produk_copy` VALUES ('2004280004', 'Admin', 'H222', 'Sayur Kol (1 kg)', '1', '6', '13500', '1000', '0', 'Ada', '', 'Kubis atau kol merupakan salah satu jenis sayuran yang cukup akrab di lidah masyarakat Indonesia. Memiliki tekstur renyah dan rasa yang ringan. Karena itulah, sayuran yang memiliki nama ilmiah Brassica oleracea var. capitata ini sering diolah menjadi beragam hidangan lezat; seperti sup, bakwan, hingga siomay.', 'sayurkol.jpg', '', '', '95', '5', '11', '255', '1', '0', null);
INSERT INTO `produk_copy` VALUES ('2004280005', 'Admin', '', 'Eden Farm Oyong (500 g)', '1', '6', '6400', '0', '0', '', '', 'Gambas atau oyong (Luffa acutangula, suku labu-labuan atau Cucurbitaceae), adalah komoditas sayuran minor. Penanamannya biasanya dilakukan di pekarangan atau bagian ladang yang tidak digunakan untuk tanaman lain. Gambas dipanen buahnya ketika masih muda dan diolah sebagai sayur.', 'oyong.jpg', '', '', '100', '0', '11', '255', '1', '0', null);
INSERT INTO `produk_copy` VALUES ('2004280006', 'Admin', '', 'Selada Keriting Hijau (500 g)', '1', '6', '10000', '0', '0', 'Kosong', '', 'Selada Keriting Hijau Dapat ditanam di dataran rendah sampai tinggi. Merupakan jenis tanaman sayuran dengan bentuk daun bergelombang berwarna hijau kekuningan. Tekstur daun renyah dan tahan penyakit busuk lunak. Selada sering dikonsumsi mentah sebagai lalapan maupun sebagai bahan pelengkap masakan lain. Umur panen ± 45 hari setelah pindah tanam. Kebutuhan benih 160 – 200 g/Ha.', 'seladakeriting.jpg', '', '', '99', '1', '11', '255', '1', '0', null);
INSERT INTO `produk_copy` VALUES ('2004280007', 'Admin', '', 'Labu Siam Besar (1 kg)', '1', '6', '6000', '0', '0', '', '', 'Labu siam atau jipang (Sechium edule, bahasa Inggris: chayote) adalah tumbuhan suku labu-labuan (Cucurbitaceae) yang dapat dimakan buah dan pucuk mudanya. Tumbuhan ini merambat di tanah atau agak memanjat dan biasa dibudidayakan di pekarangan, biasanya di dekat kolam. Buah menggantung dari tangkai. Daunnya berbentuk mirip segitiga dan permukaannya berbulu.', 'labusiam.jpg', '', '', '100', '0', '11', '255', '1', '0', null);
INSERT INTO `produk_copy` VALUES ('2004280008', 'Admin', '', 'Tomat (500 g)', '1', '6', '7500', '0', '0', 'Kosong', '', 'Tomat (Solanum lycopersicum syn. Lycopersicum esculentum) adalah tumbuhan dari keluarga Solanaceae, tumbuhan asli Amerika Tengah dan Selatan, dari Meksiko sampai Peru. Tomat merupakan tumbuhan siklus hidup singkat, dapat tumbuh setinggi 1 sampai 3 meter. Tumbuhan ini memiliki buah berawarna hijau, kuning, dan merah yang biasa dipakai sebagai sayur dalam masakan atau dimakan secara langsung tanpa diproses. Tomat memiliki batang dan daun yang tidak dapat dikonsumsi karena masih sekeluarga dengan kentang dan Terung yang mengadung Alkaloid.', 'tomat.jpg', '', '', '100', '0', '11', '255', '1', '0', null);
INSERT INTO `produk_copy` VALUES ('2004280009', 'Admin', '', 'Bumbu Racik Nasi Goreng [20 g]', '1', '7', '2125', '0', '0', '', '', 'Sekarang ini urusan dapur pun jadi serba mudah dan praktis karena tidak sedikit ibu memilih masak dengan menggunakan bumbu instan. Terlepas dari aman atau tidaknya cara ini yang jelas proses memasak jelas akan lebih cepat dan ekonomis. Adapun soal rasa juga tidak jauh beda dengan bumbu racikan sendiri, bahkan ada yang menyebutkan jika memasak dengan bumbu instan itu jauh lebih gurih dan berasa.\r\n', 'bumburacik.jpg', '', '', '0', '100', '11', '255', '1', '0', null);
INSERT INTO `produk_copy` VALUES ('2004280010', 'Admin', '', 'Lengkuas Bubuk Bumbu Masak [22 g]\r\n', '1', '7', '3000', '0', '0', '', '', 'Koepoe-koepoe Lengkuas Bubuk Bumbu Masak Instan [22 g], bumbu masak instan yang diproses dan dikemas secara higienis serta tidak mengandung pengawet sehingga dapat bertahan lama. Ideal untuk melengkapi bumbu dapur Anda.\r\n', 'lengkuasbubuk.jpg', '', '', '100', '0', '11', '255', '1', '0', null);
INSERT INTO `produk_copy` VALUES ('2004280011', 'Admin', '', 'Lada Putih Bubuk Bumbu Masak [38 g]\r\n', '1', '7', '10000', '0', '0', '', '', 'Selain dikenal karena kearifan lokalnya ternyata Indonesia juga diperkaya dengan rempah-rempah, serta bumbu-bumbu khas nusantara yang disiap membuat olahan masakan menjadi semakin lezat dan sedap. Karena hal itu, banyak orang berbondong-bondong datang ke tanah air agar bisa mendapatkan rempah-rempah asli Indonesia. Ada banyak macam bumbu yang tentu sering dijadikan resep andalan untuk memasak, seperti halnya Bawang Merah, Bawang Putih, Jahe, Pala, Merica, Kencur, Kunyit, Cengkeh, Lada, Lengkuas, Cabai, Asam Jawa, Kemiri, Kayu Manis, Santan Kelapa, dll. Yang semua jenis bumbu dapur itu belum tentu ditemukan di luar Indonesia.\r\n', 'ladaputihbubuk.jpg', '', '', '100', '0', '11', '255', '1', '0', null);
INSERT INTO `produk_copy` VALUES ('2004280012', 'Admin', '', 'Kencur Super Bumbu Dapur [1 kg]\r\n', '1', '7', '90000', '0', '0', 'Kosong', '', 'Kencur Super Bumbu Dapur [1 kg] adalah salah satu jenis bumbu dapur yang memiliki aroma khas yang segar dan menyeruak. Selain digunakan sebagai penambah cita rasa dalam masakan, manfaat kencur juga sudah lama dikenal sebagai obat alami. Netto 1 kg.\r\n', 'kencursuperbumbudapur.jpg', '', '', '100', '0', '11', '255', '1', '0', null);
INSERT INTO `produk_copy` VALUES ('2004280013', 'Admin', '', 'Italian Grill Bumbu Peredam Daging Khas Italia\r\n', '1', '7', '12500', '0', '0', 'Kosong', '', 'Jay\'s Kitchen Grillmaster Italian Grill Bumbu Peredam Daging Khas Italia merupakan bumbu perendam barbeque dengan paduan bahan  bawang putih, bawang bombay, dan paprika dengan sentuhan rempah-rempah. Cocok untuk semua jenis daging sapi, ayam, dan seafood. Dikemas dalam kemasan yang praktis, Anda kini dapat menyajikan masakan favorit Anda hanya dalam waktu 10 menit. Jay\'s Grill Master dibuat dari bahan-bahan pilihan tanpa MSG, yang tentunya membuat hidangan barbeque Anda lezat.\r\n', 'italiangrillbumbuperedamdagingkhasitalia.jpg', '', '', '100', '0', '11', '255', '1', '0', null);
INSERT INTO `produk_copy` VALUES ('2004280014', 'Admin', '', 'Bagelen Sisir Kue Kering [125 g]\r\n', '1', '8', '15500', '0', '0', '', '', 'Moessy Snack Bagelen Sisir Kue Kering [125 g], kue kering yang terbuat dari bahan pilihan dan berkualitas. Bentuknya lucu, seperti roti tawar dalam bentuk mini. Rasa manis harum enak, gurih, renyah dan nikmat. Sangat cocok untuk acara santai bersama teman dan keluarga. Sudah terdapat ijin PIRT, merk terdaftar.\r\n', 'BagelenSisirKueKering.jpg', '', '', '99', '1', '11', '255', '1', '0', null);
INSERT INTO `produk_copy` VALUES ('2004280015', 'Admin', '', 'Pang Pang Makanan Ringan [500 g]\r\n', '1', '8', '25000', '0', '0', '', '', 'Juara Snack Pang Pang Makanan Ringan [500 g] merupakan pang-pang atau disebut sebagai kue bantal, memiliki ukuran yang kecil dengan rasa yang enak, gurih dan renyah. Pang Pang dibuat dengan cara digoreng. Snack ini sangat disukai oleh masyarakat di Indonesia. Dikemas dengan plastik zipper sehingga mutunya tetap terjaga dengan baik.\r\n', 'PangPangMakananRingan.jpg', '', '', '100', '0', '11', '255', '1', '0', null);
INSERT INTO `produk_copy` VALUES ('2004280016', 'Admin', '', 'Rasa Vanilla Cemilan Kuping Gajah Kue Kering [75 g/ Mini]\r\n', '1', '8', '16000', '0', '0', '', '', 'Josh Food Rasa Vanilla Cemilan Kuping Gajah Kue Kering [75 g/ Mini] merupakan salah satu makanan kering khas Indonesia yang banyak digemari oleh berbagai kalangan. Cemilan dengan nama yang unik ini memiliki rasa yang khas dan begitu nikmat ketika disantap. Kue kuping gajah bisa dinikmati sewaktu santai bersama dengan keluarga atau menjadi cemilan sewaktu menonton televisi. Cemilan yang telah ada sejak dahulu ini telah dihadirkan dengan inovasi baru yang tidak membosankan, yaitu Josh Food Cemilan Kuping Gajah Mini. Varian Rasa yang Menggugah Selera Cemilan tradisional khas Indonesia ini hadir dengan berbagai varian rasa yang menggugah selera, yakni pandan, strawberry, durian, blueberry, cokelat, vanilla, moka dan teh hijau. Memiliki bentuk mini atau bite size menjadikannya semakin terlihat unik. Sementara pembuatannya diproses secara higienis dengan standard mutu dan kualitas terbaik. Kini saatnya sebarkan cinta akan cemilan tradisional dengan sentuhan modern serta rasakan ke ajaiban di setiap gigitan kuping gajah mini josh.\r\n', 'RasaVanillaKupingGajahKueKering.jpg', '', '', '96', '4', '11', '255', '1', '0', null);
INSERT INTO `produk_copy` VALUES ('2004280017', 'Admin', '', 'Gatito Kue Lidah Kucing Sandwich Cokelat [10 Sachet/ Kotak]\r\n', '1', '8', '19000', '0', '0', '', '', 'Gatito merupkan brand makanan ringan berupa kue lidah kucing sandwich pasta cokelat. Dikemas 1 kotak berisi 10 sachet dgn netto 32gr/sachet. Produksi PT. Kaldu Nabati Sari - Bandung, perusahaan multi konsumen produk yang merajai pasar lokal khususnya jawa barat hingga terkenal se nusantara. Nabati sebenarnya sudah sangat merambah lini jualan yang beragam. Mulai dari snack yang utama hingga konsorsium pemilik brand snack sarat penghargaan bergensi nasional hingga jaringan resto. Dan salah satu produk yang mereka punya adalah Gatito.\r\n', 'GatitoKueLidahKucingSandwichCoklat.jpg', '', '', '100', '0', '11', '255', '1', '0', null);
INSERT INTO `produk_copy` VALUES ('2004280018', 'Admin', '', 'Blackmond Camilan Sehat\r\n', '1', '8', '37500', '0', '0', '', '', 'Ladang Lima Blackmond Camilan Sehat, Cemilan sehat tanpa rasa bersalah. Kue kering bebas gluten, perpaduan dark coklat dan kacang almond, buat kamu yang pengen cemilan sehat. \r\n', 'BlackmondCamilanSehat.jpg', '', '', '98', '3', '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2004280019', 'Admin', '', 'Boss Topi Wanita\r\n', '1', '9', '650000', '0', '0', '', '', 'Import Fashion Boss Topi Wanita merupakan topi yang terbuat dari bahan berkualitas yang didesain trendy dengan embroidery pada bagian depan dan adjustrable strap pada bagian belakang sehingga dapat disesuaikan dengan ukuran kepala Anda. Diameter 19cm. Dimensi : 28 x 14 x 15 cm\r\n', 'BossTopiWanita.jpg', '', '', '100', '0', '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2004280020', 'Admin', '', 'Tas Ransel Wanita\r\n', '1', '9', '55000', '0', '0', '', '', 'Tas Ransel Wanita merupakan backpack berbahan kulit sintetis yang didesain trendy. Kompartemen utama berdetail resleting, inner zipper pockets, front pocket, side pockets, handle strap, dan adjustable shoulder strap. Tas bisa digunakan sebagai backpack ataupun shoulder bag. Dimensi : 26 x 14 x 34 cm.\r\n', 'TasRanselWanita.jpg', '', '', '100', '0', '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2004280021', 'Admin', '', 'Casual Sepatu Slip On Pria\r\n', '1', '9', '185000', '0', '0', 'Kosong', '', 'Fashion Casual Sepatu Slip On Pria merupakan slip on shoes berbahan kanvas yang didesain trendy dengan detail neat stitching dan TPR outsole sehingga nyaman ketika digunakan.\r\n', 'CasualSepatuSlipOnPria.jpg', '', '', '100', '0', '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2004280022', 'Admin', '', 'Tas Selempang Pria + Free Kabel USB\r\n', '1', '9', '67500', '0', '0', '', '', 'Fashion Tas Selempang Pria + Free Kabel USB, sling bag berbahan kulit sintetis (water resistant) yang didesain trendy dengan kompartemen utama berdetail zipper opening, front zipper pocket dan adjustable strap. Ukuran : 18 x 9 x 34 cm. Terdapat 2 port USB dan earphone. Free kabel port USB\r\n', 'TasSelempangPria+FreeKabelUSB.jpg', '', '', '100', '0', '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2004280023', 'Admin', '', 'Polos Kaos Polo Pria\r\n', '1', '9', '56000', '0', '0', 'Kosong', '', 'Polos Kaos Polo Pria merupakan short sleeves polo shirt berbahan lacost PE yang didesain trendy dengan pointed collar dan front half button opening, sehingga sangat nyaman pada saat digunakan.\r\n', 'PolosKaosPoloPria.jpg', '', '', '100', '0', '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2004280024', 'Admin', '', 'Care Health Hand Sanitizer\r\n', '1', '10', '45000', '0', '0', 'Kosong', '', 'Care Health Hand Sanitizer, hand sanitizer dengan kadar alkohol 70% jadi sangat efektif membunuh kuman, bakteri dan virus dibanding yg 65%. Walau kadar alkohol tinggi tidak membuat tangan kering, gatal-gatal karena mengandung pelembab. Lebih irit dibandingkan model spray, karna hanya butuh 5 tetes bisa untuk bilas tangan keseluruhan. Bentuknya gel yang mengandung pelembab, sehingga tidak membuat tangan Kering.\r\n', 'CareHealthHandSanitizer.jpg', '', '', '100', '0', '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2004280025', 'Admin', '', 'Hazmat / APD / Alat Pelindung Diri / Coverall - Putih\r\n', '1', '10', '300000', '0', '0', 'Kosong', '', 'ENVIDE Suit Protector yang merupakan produk solusi kesehatan. Bahan yang kami gunakan untuk memproduksi ENVIDE Suit Protector adalah 100% POLYESTER non WOVEN, penggunaan dan klasifikasi bahan tersebut diantaranya digunakan untuk perlengkapan medis dan kesehatan, pakaian bedah, pakaian pelindung dan kain disinfektan\r\n', 'AlatPelindungDiri.jpg', '', '', '100', '0', '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2004280026', 'Admin', '', 'Face shield / APD covid-19\r\n', '1', '10', '10000', '0', '0', 'Kosong', '', 'Dengan memegang masker tersebut khususnya melalui tangan yang kotor, maka risiko terjangkit penyakit pun semakin besar. “Berbeda dengan face shield yang terpasang seperti topi di kepala kita, saat bergerak tidak akan menjadi masalah dan tetap nyaman. Kebiasaan menyentuh wajah pasti jadi terhalang juga lantaran bentuknya yang tidak memungkinkan untuk kita sentuh,” katanya. Meski begitu, face shield lebih baik jika dipakai oleh tenaga medis dan mereka yang intensitas bertemu dengan banyak orangnya tinggi. Misalnya super bus atau kasir di pasar swalayan. “Karena mereka yang paling berisiko untuk berbicara dengan orang sehingga lebih penting untuk memblokir penyebaran tetesan yang dapat mengenai wajah,” katanya.\r\n', 'Faceshield.jpg', '', '', '100', '0', '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2004280027', 'Admin', '', 'Health Care Car Air Ion Counter Tester\r\n', '1', '10', '562000', '0', '0', 'Kosong', '', 'Health Care Car Air Ion Tester adalah alat untuk menguji ion negatif dan positif di suatu ruangan atau di mobil Anda. Memiliki bentuk yang kecil dan ringan.\r\n', 'HealthCareCarAirIonCounterTester.jpg', '', '', '100', '0', '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005080001', 'Admin', '1', 'AGEO-1134000159', '1', '9', '1', '1', '0', 'Ada', '0', ' -', 'foto_2005080001_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005080002', 'Admin', '2', 'ANNABETH MPD-1314090190', '1', '9', '1', '1', '0', 'Ada', '0', ' -', 'foto_2005080002_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005080003', 'Admin', '3', 'B508.1-6182020288', '1', '9', '1', '1', '0', 'Ada', '0', ' -', 'foto_2005080003_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005080004', 'Admin', '4', 'BEATRICA-1313840170', '1', '9', '1', '1', '0', 'Ada', '0', ' -', 'foto_2005080004_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005080005', 'Admin', '5', 'BO 1177 C JEANS HS STRIPES-2220350193', '1', '9', '1', '1', '0', 'Ada', '0', ' -', 'foto_2005080005_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005080006', 'Admin', '6', 'CL 3660 JOGGER PWM-2520030963', '1', '9', '1', '1', '0', 'Ada', '0', ' -', 'foto_2005080006_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005080007', 'Admin', '7', 'CL 3671 JOGGER HSHL-2520031132', '1', '9', '1', '1', '0', 'Ada', '0', ' -', 'foto_2005080007_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005080008', 'Admin', '8', 'CLARINTA DRESS-6024510121', '1', '9', '1', '1', '0', 'Ada', '0', ' -', 'foto_2005080008_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005080009', 'Admin', '9', 'CLARINTA DRESS-6024510143', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005080009_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005080010', 'Admin', '10', 'CODE MALE-4091040620', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005080010_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005080011', 'Admin', '11', 'CODE MALE-4091050158', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005080011_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005080012', 'Admin', '12', 'CROSSBROW-4092540106', '1', '9', '1', '1', '0', 'Ada', '0', '-', 'foto_2005080012_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005080013', 'Admin', '13', 'DISA-6034060190', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005080013_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005080014', 'Admin', '14', 'FATHY-8704030101', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005080014_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005080015', 'Admin', '15', 'HAYDEN-4111610701', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005080015_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005080016', 'Admin', '16', 'INDITRO ONE-1132980151', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005080016_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005080017', 'Admin', '17', 'INDRITO TWO-1122970251', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005080017_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005080018', 'Admin', '18', 'JACEY-5031522970', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005080018_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005080019', 'Admin', '19', 'JKN 276-4091040572', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005080019_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005080020', 'Admin', '20', 'LOI-8600050212', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005080020_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005080021', 'Admin', '21', 'MILENA-1314310129', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005080021_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005080022', 'Admin', '22', 'NUVARE TWO-1127780339', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005080022_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005080023', 'Admin', '23', 'PALETTO TWO-6331051872', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005080023_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005080024', 'Admin', '24', 'PRENOWAR-6172050197', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005080024_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005080025', 'Admin', '25', 'REZIM-6330520561', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005080025_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005080026', 'Admin', '26', 'THEODORE-8702220252', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005080026_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005080027', 'Admin', '27', 'TROSIC-6202230211', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005080027_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005080028', 'Admin', '28', 'TROSIC-6202230311', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005080028_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005080029', 'Admin', '29', 'TS 1216 POLO PMW-3620020611', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005080029_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005080030', 'Admin', '30', 'TS 1221 C OBL HSHL-3721024011', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005080030_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005080031', 'Admin', '31', 'ZHAFAAR TWO-1024610139', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005080031_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005080032', 'Admin', '32', 'ZHAFAR TWO-1024630101', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005080032_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005080033', 'Admin', '33', 'ZHEVOY TWO-1129350195', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005080033_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005080034', 'Admin', '34', 'AGEO-1134000159', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005080034_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005080035', 'Admin', '35', 'B507.1-61711120820', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005080035_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005080036', 'Admin', '36', 'B507.4-6172750135', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005080036_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005080037', 'Admin', '37', 'B507.4-6172750139', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005080037_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005080038', 'Admin', '38', 'B508.1-6182020288', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005080038_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005080039', 'Admin', '39', 'B508B.2-6180520120', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005080039_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005080040', 'Admin', '40', 'BD 1174 C COTT HSHL-2220830221', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005080040_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005080041', 'Admin', '41', 'CL 3671 JOGGER HSHL-2520031132', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005080041_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005080042', 'Admin', '42', 'CONY-4022100157', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005080042_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005080043', 'Admin', '43', 'FATHY-8704020122', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005080043_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005080044', 'Admin', '44', 'FATHY-8704030101', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005080044_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005080045', 'Admin', '45', 'FATHY-8704040143', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005080045_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005080046', 'Admin', '46', 'FATHY-8704050122', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005080046_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005080047', 'Admin', '47', 'HARITH-6172260120', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005080047_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005080048', 'Admin', '48', 'HAYDEN-4111610701', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005080048_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005080049', 'Admin', '49', 'IDINTRO TWO-1122970251', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005080049_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005080050', 'Admin', '50', 'JK 191 C SWEATER PWM-4420030911', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005080050_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090001', 'Admin', '51', 'JK 192 C SWEATER PWM-4420031031', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090001_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090002', 'Admin', '52', 'JKN 276-4091040572', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090002_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090003', 'Admin', '53', 'JONAS GOLD TWO-1121910101', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090003_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090004', 'Admin', '54', 'JOVINO-4021840259', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090004_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090005', 'Admin', '55', 'PHILOES-1133990194', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090005_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090006', 'Admin', '56', 'PJ 2678 DENIM DREAMBIG-1110080592', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090006_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090007', 'Admin', '57', 'PJ 2711 C POLOS HSHL-1121616121', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090007_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090008', 'Admin', '58', 'PRENOWAR-6172050197', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090008_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090009', 'Admin', '59', 'THEODORE-8702220252', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090009_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090010', 'Admin', '60', 'THEODORE-8702260228', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090010_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090011', 'Admin', '61', 'TROSIC-6172130171', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090011_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090012', 'Admin', '62', 'TROSIC-6202230271', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090012_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090013', 'Admin', '63', 'TROSIC-6202230336', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090013_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090014', 'Admin', '64', 'TS 1216 POLO PWM-3620020611', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090014_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090015', 'Admin', '65', 'TS 1218 C OBL PJG HSHL-3720024663', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090015_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090016', 'Admin', '66', 'TS 1230 OBL PJ HSSTRIPES-3720025301', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090016_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090017', 'Admin', '67', 'ZHAFAR TWO-1024630101', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090017_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090018', 'Admin', '68', 'ADISTY-2202270101', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090018_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090019', 'Admin', '69', 'ALBANI-1642100129', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090019_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090020', 'Admin', '70', 'ANINDITA-1314480118', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090020_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090021', 'Admin', '71', 'ANNABETH MPD-1314090190', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090021_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090022', 'Admin', '72', 'B508.2-6180460438', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090022_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090023', 'Admin', '73', 'BEATRICA-1313840118', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090023_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090024', 'Admin', '74', 'BREACHER-1139500150', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090024_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090025', 'Admin', '75', 'CARLEN-1130620401', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090025_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090026', 'Admin', '76', 'CEISYA GAMIS-6020110156', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090026_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090027', 'Admin', '77', 'CHER-1313820116', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090027_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090028', 'Admin', '78', 'CODE MALE-4091050158', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090028_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090029', 'Admin', '79', 'DISSA-6034060190', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090029_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090030', 'Admin', '80', 'ENEAS ONE-1080030131', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090030_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090031', 'Admin', '81', 'ERDO-2070061939', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090031_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090032', 'Admin', '82', 'ESHAL-1314420170', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090032_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090033', 'Admin', '83', 'JACEY-5031522918', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090033_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090034', 'Admin', '84', 'JACEY-5031522970', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090034_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090035', 'Admin', '85', 'JANE-5010110427', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090035_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090036', 'Admin', '86', 'MILENA-1314310129', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090036_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090037', 'Admin', '87', 'NUVARE TWO-1127780339', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090037_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090038', 'Admin', '88', 'PALETTO TWO-6331051872', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090038_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090039', 'Admin', '89', 'PIERO-1640760144', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090039_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090040', 'Admin', '90', 'REBEL-6172060189', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090040_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090041', 'Admin', '91', 'REZIM-6330520561', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090041_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090042', 'Admin', '92', 'SARITA-5033300118', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090042_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090043', 'Admin', '93', 'TROSIC-6202230227', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090043_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090044', 'Admin', '94', 'TROYES-6202100111', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090044_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090045', 'Admin', '95', 'TROYES-6202100130', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090045_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090046', 'Admin', '96', 'ZHEVOY TWO-1129350195', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090046_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090047', 'Admin', '97', 'ZIKON-3010016906', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090047_1.jpg', '', '', '4', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090048', 'Admin', '98', 'ZION-1640820127', '1', '9', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090048_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090049', 'Admin', '001', 'Bawang Putih', '1', '6', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090049_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090050', 'Admin', '002', 'Brambang Goreng', '1', '6', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090050_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090051', 'Admin', '003', 'Bumbu Crispy Kobe', '1', '6', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090051_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090052', 'Admin', '004', 'Kentang Goreng', '1', '6', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090052_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090053', 'Admin', '005', 'merk bamboo', '1', '6', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090053_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090054', 'Admin', '006', 'sasa crispy', '1', '6', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090054_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090055', 'Admin', '007', 'sasa pisang goreng', '1', '6', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090055_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090056', 'Admin', '008', 'sasa serbaguna', '1', '6', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090056_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090057', 'Admin', '009', 'tempe sambal goreng', '1', '6', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090057_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090058', 'Admin', '010', 'kecap bango refill', '1', '6', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090058_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090059', 'Admin', '011', 'kecap cap sate', '1', '6', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090059_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090060', 'Admin', '012', 'kecap sedap refill', '1', '6', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090060_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090061', 'Admin', '013', 'mayonese dan tomat refill', '1', '6', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090061_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090062', 'Admin', '014', 'tomat abc,kechup,sambal botol', '1', '6', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090062_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090063', 'Admin', '015', 'beras 5 kg lahap', '1', '6', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090063_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090064', 'Admin', '016', 'beras bintang 5 kg', '1', '6', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090064_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090065', 'Admin', 'E001', 'bodi lotion', '1', '10', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090065_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090066', 'Admin', 'E002', 'Hanasui-Animal-Mask', '1', '10', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090066_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090067', 'Admin', 'E003', 'Hanasui-Anti-Acne', '1', '10', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090067_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090068', 'Admin', 'E004', 'Hanasui-Bar-Soap', '1', '10', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090068_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090069', 'Admin', 'E005', 'Hanasui-Body-Series', '1', '10', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090069_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090070', 'Admin', 'E006', 'Hanasui-Body-Spa', '1', '10', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090070_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090071', 'Admin', 'E007', 'Hanasui-Egg-White', '1', '10', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090071_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090072', 'Admin', 'E008', 'Hanasui-Gold', '1', '10', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090072_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090073', 'Admin', 'E009', 'Hanasui-Gold-Mask', '1', '10', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090073_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090074', 'Admin', 'E010', 'Hanasui-Naturgo', '1', '10', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090074_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090075', 'Admin', 'E011', 'Hanasui-Vitamin-C- gold', '1', '10', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090075_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090076', 'Admin', 'E012', 'Hanasui-Vitamin-CCollagen', '1', '10', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090076_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090077', 'Admin', 'E013', 'Hanasui-Xbeinoi', '1', '10', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090077_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090078', 'Admin', 'E014', 'lightening', '1', '10', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090078_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090079', 'Admin', 'E015', 'masker', '1', '10', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090079_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090080', 'Admin', 'C001', 'kue lumpur', '1', '8', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090080_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090081', 'Admin', 'C002', 'kue tok', '1', '8', '1', '1', '0', 'Kosong', '0', ' ', 'foto_2005090081_1.jpg', '', '', '0', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090082', 'Admin', 'C003', 'onde onde', '1', '8', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090082_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090083', 'Admin', '001', 'asparagus kaleng', '1', '11', '1', '1', '0', 'Kosong', '0', ' ', 'foto_2005090083_1.jpg', '', '', '0', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090084', 'Admin', '002', 'bear nestle', '1', '11', '1', '1', '0', 'Kosong', '0', ' ', 'foto_2005090084_1.jpg', '', '', '-2', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090085', 'Admin', '003', 'carnation kaleng', '1', '11', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090085_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090086', 'Admin', '004', 'enak susu coklat', '1', '11', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090086_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090087', 'Admin', '005', 'green feas Ma Ling', '1', '11', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090087_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090088', 'Admin', '006', 'indomilk coklat kaleng', '1', '11', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090088_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090089', 'Admin', '007', 'jagung manis kaleng', '1', '11', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090089_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090090', 'Admin', '008', 'jamur kunci kalengamarcucuss', '1', '11', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090090_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090091', 'Admin', '009', 'kara', '1', '11', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090091_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090092', 'Admin', '010', 'kornet pronas', '1', '11', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090092_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090093', 'Admin', '011', 'kornet sopini', '1', '11', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090093_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090094', 'Admin', '012', 'leci kaleng', '1', '11', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090094_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090095', 'Admin', '013', 'mandarin orange kaleng', '1', '11', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090095_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090096', 'Admin', '014', 'nata decoco kara', '1', '11', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090096_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090097', 'Admin', '015', 'sarden botan', '1', '11', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090097_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090098', 'Admin', '016', 'sosis kimbo', '1', '11', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090098_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090099', 'Admin', '017', 'mi sua', '1', '11', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090099_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090100', 'Admin', '017', 'minyak gor bimoli reguler dan special', '1', '6', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090100_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090101', 'Admin', '018', 'minyak goreng filma', '1', '6', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090101_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090102', 'Admin', '019', 'minyak goreng tropical botol', '1', '6', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090102_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090103', 'Admin', '020', 'beras bintang 5 kg', '1', '6', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090103_1.jpg', '', '', '3', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090104', 'Admin', '021', 'beras hitam', '1', '6', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090104_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090105', 'Admin', '022', 'beras jagung', '1', '6', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090105_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090106', 'Admin', '023', 'beras ketan', '1', '6', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090106_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090107', 'Admin', '024', 'beras lahap 5 kg', '1', '6', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090107_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090108', 'Admin', '025', 'beras merah', '1', '6', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090108_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090109', 'Admin', '026', 'energen saset per renteng isi 10', '1', '6', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090109_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090110', 'Admin', '027', 'kacang hijau', '1', '6', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090110_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090111', 'Admin', '252', 'kacang tanah', '1', '6', '29200', '1000', '0', 'Ada', '0', ' harga per kg', 'foto_2005090111_1.jpg', '', '', '10000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090112', 'Admin', '418', 'bayclin galon', '1', '12', '1', '1', '0', 'Ada', '0', ' kosong', 'foto_2005090112_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090113', 'Admin', '417', 'byclin pemutih(botol)', '1', '12', '16000', '1000', '0', 'Ada', '0', ' perbotol plastik', 'foto_2005090113_1.jpg', '', '', '9999', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090114', 'Admin', '416', 'detergen ekonomi 5. kg', '1', '12', '56300', '5000', '0', 'Ada', '0', ' per kaleng 5 kg', 'foto_2005090114_1.jpg', '', '', '50000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090115', 'Admin', '415', 'softener molto', '1', '6', '14200', '1000', '0', 'Ada', '0', ' per sachet isi ulanh', 'foto_2005090115_1.jpg', '', '', '10000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090116', 'Admin', '414', 'molto pewangi', '1', '12', '12200', '1000', '0', 'Ada', '0', ' per sachet isi ulang', 'foto_2005090116_1.jpg', '', '', '10000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090117', 'Admin', '413', 'pemutih porselen Vixal', '1', '12', '15200', '1000', '0', 'Ada', '0', ' botol plastik', 'foto_2005090117_1.jpg', '', '', '9999', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090118', 'Admin', '412', 'pemutih porselen Wpo', '1', '6', '1', '1', '0', 'Ada', '0', ' kosong', 'foto_2005090118_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090119', 'Admin', '411', 'pemutih vanish', '1', '12', '20000', '1000', '0', 'Ada', '0', ' harga per sachet', 'foto_2005090119_1.jpg', '', '', '10000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090120', 'Admin', '410', 'porsteg', '1', '12', '18700', '1000', '0', 'Ada', '0', 'harga per sachet isi ulang ', 'foto_2005090120_1.jpg', '', '', '10000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090121', 'Admin', '409', 'sabun cair lifeboy refill', '1', '12', '24500', '1000', '0', 'Ada', '0', ' per sachet isi ulang', 'foto_2005090121_1.jpg', '', '', '9999', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090122', 'Admin', '408', 'sabun cair refill lux', '1', '12', '24500', '1000', '0', 'Ada', '0', ' harga per sachet isi ulang', 'foto_2005090122_1.jpg', '', '', '10000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090123', 'Admin', '407', 'sabun cuci piring sunlight ', '1', '12', '15700', '1000', '0', 'Ada', '0', ' per sachet isi ulang', 'foto_2005090123_1.jpg', '', '', '10000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090124', 'Admin', '406', 'sabun mesin cuci soklin', '1', '12', '14700', '1000', '0', 'Ada', '0', ' persachet isi ulang', 'foto_2005090124_1.jpg', '', '', '10000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090125', 'Admin', '405', 'sabun pembersih Mr Muscle', '1', '12', '1', '1', '0', 'Ada', '0', 'barang kosong ', 'foto_2005090125_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090126', 'Admin', '404', 'so klin biomatik serbuk', '1', '12', '1', '1', '0', 'Ada', '0', 'kosong ', 'foto_2005090126_1.jpg', '', '', '1', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090127', 'Admin', '402', 'softener so klin dan pewangi', '1', '12', '11700', '1000', '0', 'Ada', '0', ' per sachet', 'foto_2005090127_1.jpg', '', '', '10000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090128', 'Admin', '401', 'super pell dan wipoll', '1', '12', '16300', '1000', '0', 'Ada', '0', ' per sachet isi ulang', 'foto_2005090128_1.jpg', '', '', '10000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090129', 'Admin', '251', 'baby corn', '1', '6', '12200', '500', '0', 'Ada', '0', ' harga per setengah kg', 'foto_2005090129_1.jpg', '', '', '50000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090130', 'Admin', '250', 'bawang bombay', '1', '6', '17000', '500', '0', 'Ada', '0', ' harga persetengah kg', 'foto_2005090130_1.jpg', '', '', '50000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090131', 'Admin', '249', 'bawang putih biasa', '1', '6', '15000', '500', '0', 'Ada', '0', ' harga persetengah kg', 'foto_2005090131_1.jpg', '', '', '50000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090132', 'Admin', '249', 'bawang putih kating', '1', '6', '17000', '500', '0', 'Ada', '0', ' harga per setengah kg', 'foto_2005090132_1.jpg', '', '', '50000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090133', 'Admin', '248', 'brokoli', '1', '6', '8700', '500', '0', 'Ada', '0', ' harga persetngah kg', 'foto_2005090133_1.jpg', '', '', '50000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090134', 'Admin', '247', 'daun bawang', '1', '6', '2500', '100', '0', 'Ada', '0', ' Harga per ons', 'foto_2005090134_1.jpg', '', '', '10000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090135', 'Admin', '246', 'daun prey', '1', '6', '1800', '100', '0', 'Ada', '0', ' harga per ons', 'foto_2005090135_1.jpg', '', '', '10000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090136', 'Admin', '245', 'daun sledri', '1', '6', '2500', '100', '0', 'Ada', '0', ' harga per ONS', 'foto_2005090136_1.jpg', '', '', '10000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090137', 'Admin', '244', 'ercis', '1', '6', '25000', '500', '0', 'Ada', '0', ' harga persetengah kg', 'foto_2005090137_1.jpg', '', '', '50000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090138', 'Admin', '243', 'gambas', '1', '6', '5200', '500', '0', 'Ada', '0', ' harga persengah kg', 'foto_2005090138_1.jpg', '', '', '50000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090139', 'Admin', '242', 'jahe besar', '1', '6', '17300', '500', '0', 'Ada', '0', ' harga per setengah kg', 'foto_2005090139_1.jpg', '', '', '50000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090140', 'Admin', '241', 'jamur kancing fress', '1', '6', '18500', '500', '0', 'Ada', '0', ' harga per setengah kg', 'foto_2005090140_1.jpg', '', '', '50000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090141', 'Admin', '240', 'jamur kuping', '1', '6', '10200', '500', '0', 'Ada', '0', ' harga per etengah kg', 'foto_2005090141_1.jpg', '', '', '50000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090142', 'Admin', '239', 'jamur tiram', '1', '6', '8700', '500', '0', 'Ada', '0', ' harga per setengah kg', 'foto_2005090142_1.jpg', '', '', '5000000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090143', 'Admin', '238', 'jeruk lemon', '1', '6', '9000', '500', '0', 'Ada', '0', ' jeruk lemon lokal, harga per setengah kg', 'foto_2005090143_1.jpg', '', '', '50000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090144', 'Admin', '0237', 'jeruk nipis', '1', '6', '5200', '500', '0', 'Ada', '0', ' harga per setengah kg', 'foto_2005090144_1.jpg', '', '', '50000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090145', 'Admin', '0237', 'kacang bernebun', '1', '6', '21500', '500', '0', 'Ada', '0', ' harga per setengah kg', 'foto_2005090145_1.jpg', '', '', '50000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090146', 'Admin', '0236', 'kacang panjang', '1', '6', '5200', '500', '0', 'Ada', '0', ' harga per setengah kg', 'foto_2005090146_1.jpg', '', '', '49999', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090147', 'Admin', '0235', 'kacang polong', '1', '6', '10000', '500', '0', 'Ada', '0', ' harga per setengah kg', 'foto_2005090147_1.jpg', '', '', '50000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090148', 'Admin', '0234', 'kangkung', '1', '6', '1500', '250', '0', 'Ada', '0', ' harga perikat', 'foto_2005090148_1.jpg', '', '', '50000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090149', 'Admin', '0233', 'kecambah besar', '1', '6', '4200', '500', '0', 'Ada', '0', ' harga persetengah kg', 'foto_2005090149_1.jpg', '', '', '50000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090150', 'Admin', '0232', 'kencur', '1', '6', '37500', '500', '0', 'Ada', '0', ' harga per setengah kg', 'foto_2005090150_1.jpg', '', '', '50000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090151', 'Admin', '0231', 'kentang biasa kecil', '1', '6', '6200', '500', '0', 'Ada', '0', 'harga per setengah kg ', 'foto_2005090151_1.jpg', '', '', '50000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090152', 'Admin', '0231', 'kentang merah', '1', '6', '9200', '500', '0', 'Ada', '0', ' harga persetengah kg', 'foto_2005090152_1.jpg', '', '', '50000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090153', 'Admin', '0230', 'kentang', '1', '6', '6200', '500', '0', 'Ada', '0', ' harga per setengah kg', 'foto_2005090153_1.jpg', '', '', '50000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090154', 'Admin', '0229', 'kluwek', '1', '6', '13800', '500', '0', 'Ada', '0', ' harga per setengah kg', 'foto_2005090154_1.jpg', '', '', '50000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090155', 'Admin', '0228', 'kubis jepang atau kol ungu', '1', '6', '11300', '500', '0', 'Ada', '0', ' harga persetengah kg', 'foto_2005090155_1.jpg', '', '', '50000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090156', 'Admin', '0227', 'kubis', '1', '6', '4700', '500', '0', 'Ada', '0', ' harga persetengah kg', 'foto_2005090156_1.jpg', '', '', '50000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090157', 'Admin', '0226', 'kunir', '1', '6', '6200', '500', '0', 'Ada', '0', ' harga per setengah kg', 'foto_2005090157_1.jpg', '', '', '50000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090158', 'Admin', '0225', 'labu atau manisa', '1', '6', '4200', '500', '0', 'Ada', '0', ' harga per setengah kg', 'foto_2005090158_1.jpg', '', '', '50000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090159', 'Admin', '0225', 'labu manis', '1', '6', '7200', '500', '0', 'Ada', '0', ' harga per setengah kg', 'foto_2005090159_1.jpg', '', '', '50000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090160', 'Admin', '0224', 'laos', '1', '6', '8700', '500', '0', 'Ada', '0', ' harga per setengah kg', 'foto_2005090160_1.jpg', '', '', '50000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090161', 'Admin', '0223', 'lobak', '1', '6', '12300', '500', '0', 'Ada', '0', ' harga persetengah kg an', 'foto_2005090161_1.jpg', '', '', '50000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090162', 'Admin', '0222', 'lombok hijau besar', '1', '6', '9700', '500', '0', 'Ada', '0', 'harga per setengah kg', 'foto_2005090162_1.jpg', '', '', '50000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090163', 'Admin', '0221', 'lombok hijau kecil', '1', '6', '2100', '100', '0', 'Ada', '0', ' harga per ons', 'foto_2005090163_1.jpg', '', '', '50000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090164', 'Admin', '0220', 'lombok merah besar', '1', '6', '9700', '500', '0', 'Ada', '0', ' harga persetengah kg', 'foto_2005090164_1.jpg', '', '', '50000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090165', 'Admin', '0219', 'lombok merah kerinting', '1', '6', '9700', '500', '0', 'Ada', '0', ' Harga persetengah kg', 'foto_2005090165_1.jpg', '', '', '50000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090166', 'Admin', '0219', 'mentimun acar atau salat ', '1', '6', '4200', '500', '0', 'Ada', '0', ' Harga per setengah kg', 'foto_2005090166_1.jpg', '', '', '50000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090167', 'Admin', '0219', 'mentimun besar', '1', '6', '2600', '500', '0', 'Ada', '0', ' Harga persetengah kg', 'foto_2005090167_1.jpg', '', '', '50000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090168', 'Admin', '0218', 'paprika 3 warna', '1', '6', '15200', '500', '0', 'Ada', '0', ' harga persetengah kg', 'foto_2005090168_1.jpg', '', '', '50000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090169', 'Admin', '0217', 'paprika hijau', '1', '6', '16700', '500', '0', 'Ada', '0', ' harga persetengah kg', 'foto_2005090169_1.jpg', '', '', '50000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090170', 'Admin', '0216', 'paprika kuning', '1', '6', '16700', '500', '0', 'Ada', '0', ' harga persetangh kg', 'foto_2005090170_1.jpg', '', '', '50000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090171', 'Admin', '0215', 'paprika merah', '1', '6', '16700', '500', '0', 'Ada', '0', ' harga persetegah kg', 'foto_2005090171_1.jpg', '', '', '50000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090172', 'Admin', '0214', 'pare', '1', '6', '4700', '500', '0', 'Ada', '0', ' harga persengah kg', 'foto_2005090172_1.jpg', '', '', '50000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090173', 'Admin', '0213', 'rawit merah', '1', '6', '2100', '100', '0', 'Ada', '0', ' harga per ons', 'foto_2005090173_1.jpg', '', '', '50000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090174', 'Admin', '0212', 'sawi daging', '1', '6', '4200', '500', '0', 'Ada', '0', ' harga per setengah kg', 'foto_2005090174_1.jpg', '', '', '50000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090175', 'Admin', '0211', 'sawi', '1', '6', '4200', '500', '0', 'Ada', '0', ' harga per setengah kg', 'foto_2005090175_1.jpg', '', '', '50000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090176', 'Admin', '0210', 'slada kriting', '1', '6', '170', '100', '0', 'Ada', '0', ' harga per ons', 'foto_2005090176_1.jpg', '', '', '10000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090177', 'Admin', '0209', 'terong hijau', '1', '6', '3200', '500', '0', 'Ada', '0', ' harga per setengah kg', 'foto_2005090177_1.jpg', '', '', '50000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090178', 'Admin', '0208', 'terong ungu', '1', '6', '4700', '500', '0', 'Ada', '0', ' harga per setengah kg', 'foto_2005090178_1.jpg', '', '', '49999', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090179', 'Admin', '0207', 'tomat buah', '1', '6', '6700', '500', '0', 'Ada', '0', ' harga per setengah kg', 'foto_2005090179_1.jpg', '', '', '50000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090180', 'Admin', '0206', 'tomat kecil hijau', '1', '6', '5200', '500', '0', 'Ada', '0', ' harga per 500 gram', 'foto_2005090180_1.jpg', '', '', '50000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090181', 'Admin', '0205', 'tomat sambel (kecil)', '1', '6', '5200', '500', '0', 'Ada', '0', ' harga per setengah kg', 'foto_2005090181_1.jpg', '', '', '50000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090182', 'Admin', '0204', 'ucet', '1', '6', '5200', '500', '0', 'Ada', '0', ' harga per setengah kg', 'foto_2005090182_1.jpg', '', '', '50000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090183', 'Admin', '0203', 'wortel manis', '1', '6', '10500', '500', '0', 'Ada', '0', ' harga per setengah kg', 'foto_2005090183_1.jpg', '', '', '5000000', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090184', 'Admin', '0202', 'wortel lokal', '1', '6', '6600', '500', '0', 'Ada', '0', ' satuan i/2 kg', 'foto_2005090184_1.jpg', '', '', '10', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090185', 'Admin', '0314', 'arlene', '1', '13', '1', '1', '0', 'Ada', '0', ' pak', 'foto_2005090185_1.jpg', '', '', '9', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090186', 'Admin', '0313', 'danco 400 gram', '1', '13', '1', '1', '0', 'Ada', '0', ' pak ', 'foto_2005090186_1.jpg', '', '', '10', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090187', 'Admin', '0312', 'danco', '1', '13', '1', '1', '0', 'Ada', '0', ' pak', 'foto_2005090187_1.jpg', '', '', '10', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090189', 'Admin', '0311', 'kopimate', '1', '13', '1', '1', '0', 'Ada', '0', ' pak', 'foto_2005090189_1.jpg', '', '', '10', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090190', 'Admin', '0310', 'max cream', '1', '13', '1', '1', '0', 'Ada', '0', '1 pak ', 'foto_2005090190_1.jpg', '', '', '10', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090191', 'Admin', '0202', 'minyak gorang tropic', '1', '6', '1', '1000', '0', 'Ada', '0', ' minyak goreng botol plastik', 'foto_2005090191_1.jpg', '', '', '10', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090192', 'Admin', '0309', 'pudding haan', '1', '13', '1', '1', '0', 'Ada', '0', ' 1 pak pudding mix coklat/ manggo', 'foto_2005090192_1.jpg', '', '', '10', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090193', 'Admin', '0308', 'dancow coklat sachet kecil', '1', '13', '1', '1', '0', 'Ada', '0', '1 renteng isi 10 sachet', 'foto_2005090193_1.jpg', '', '', '10', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090194', 'Admin', '0307', 'jahe keraton', '1', '13', '1', '1', '0', 'Ada', '0', ' 1 pak isi 8 sachet', 'foto_2005090194_1.jpg', '', '', '10', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090195', 'Admin', '0306', 'teh 999', '1', '13', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090195_1.jpg', '', '', '10', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090196', 'Admin', '0305', 'teh bandulan', '1', '13', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090196_1.jpg', '', '', '10', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090197', 'Admin', '0304', 'teh naga rajang', '1', '13', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090197_1.jpg', '', '', '10', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090198', 'Admin', '0303', 'teh satu', '1', '13', '1', '1', '0', 'Ada', '0', ' ', 'foto_2005090198_1.jpg', '', '', '10', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090199', 'Admin', '0302', 'torabica capucino ', '1', '13', '1', '200', '0', 'Ada', '0', ' 1 renteng 10 sachet', 'foto_2005090199_1.jpg', '', '', '10', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090200', 'Admin', '0201', 'minyak tropical', '1', '6', '1', '1000', '0', 'Ada', '0', ' minyak tropical botol plastik', 'foto_2005090200_1.jpg', '', '', '10', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090201', 'Admin', '0301', 'nutrisari saset', '1', '13', '1', '200', '0', 'Ada', '0', ' nutri sari sachet, isi 10', 'foto_2005090201_1.jpg', '', '', '10', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090202', 'Admin', '0103', 'chiken rice burger', '1', '6', '10', '170', '0', 'Ada', '0', ' nasi dan daging burger ayam, sayur', 'foto_2005090202_1.jpg', '', '', '10', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090203', 'Admin', '0102', 'mie reguler bungkus atau mie reguler cup', '1', '6', '15', '200', '0', 'Ada', '0', 'mie pangsit, ayam ', 'foto_2005090203_1.jpg', '', '', '10', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2005090204', 'Admin', '0101', 'nasi goreng hongkong', '1', '6', '18', '200', '0', 'Ada', '0', 'nasi goreng hongkong, sayur mix, telur , daging ayam, udang ', 'foto_2005090204_1.jpg', '', '', '11', null, '11', '255', '0', '0', null);
INSERT INTO `produk_copy` VALUES ('2106070001', 'Admin', '20004577684', 'Dress Cantik', '1', '6', '2000', '100', '0', 'Kosong', null, 'baju dress wanita cantik', 'foto_2106070001_1.JPG', '', '', '0', null, '11', '255', '0', '1000', null);
INSERT INTO `produk_copy` VALUES ('2106210001', 'Admin', '7341642887', 'Slondok Super', '1', '11', '20000', '120', '100', 'Ada', null, ' Kripik Slondok Singkong Renyah, Gurih, Nikmat', 'foto_2106210001_1.png', 'foto_2106210001_2.jpg', 'foto_2106210001_3.png', '20', null, '11', '255', '0', '5', null);
INSERT INTO `produk_copy` VALUES ('2107280001', 'Admin', '00000', 'dim dim', '1', '9', '10000', '1000', '800', 'Ada', null, ' ini dim dim', 'foto_2107280001_1.png', 'foto_2107280001_2.png', '', '20', null, '11', '255', '0', '5', null);
INSERT INTO `produk_copy` VALUES ('2107300001', 'Admin', '357328', 'gedds', '1', '8', '271516', '2165', '254', 'Ada', null, ' dabhs', '', '', '', '12', null, '11', '255', '0', '5', null);
INSERT INTO `produk_copy` VALUES ('2107280003', 'Admin', '', 'test2', '1', '6', '8000', '211', '190', '', null, ' mccc', '', '', '', '1', null, '11', '255', '0', '5', null);
INSERT INTO `produk_copy` VALUES ('2107300002', 'Admin', null, 'dfsf', '1', '9', '4343', '4334', '43343443', 'Ada', null, ' 23424', '', '', '', '433', null, '11', '255', '0', '5', null);

-- ----------------------------
-- Table structure for promo
-- ----------------------------
DROP TABLE IF EXISTS `promo`;
CREATE TABLE `promo` (
  `id_promo` int(11) NOT NULL AUTO_INCREMENT,
  `id_produk_promo` int(11) DEFAULT NULL,
  `tgl_mulai` datetime DEFAULT NULL,
  `tgl_selesai` datetime DEFAULT NULL,
  `harga_promo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_promo`),
  KEY `id_produk` (`id_produk_promo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of promo
-- ----------------------------
INSERT INTO `promo` VALUES ('1', '1', '2021-10-29 00:00:00', '2021-11-04 00:00:00', '12000');
INSERT INTO `promo` VALUES ('2', '4', '2021-11-09 02:47:00', '2021-11-20 02:47:00', '5000');

-- ----------------------------
-- Table structure for review_produk
-- ----------------------------
DROP TABLE IF EXISTS `review_produk`;
CREATE TABLE `review_produk` (
  `id_review` int(11) NOT NULL AUTO_INCREMENT,
  `id_produk` int(11) NOT NULL,
  `nama_review` varchar(50) NOT NULL,
  `komentar` text NOT NULL,
  `rate_star` int(11) NOT NULL,
  `time_review` datetime NOT NULL,
  PRIMARY KEY (`id_review`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of review_produk
-- ----------------------------
INSERT INTO `review_produk` VALUES ('1', '2004280004', 'edwin', 'mantap', '4', '2021-08-10 15:21:43');
INSERT INTO `review_produk` VALUES ('2', '2004280004', 'edwin', 'mantap', '3', '2021-08-10 15:21:43');
INSERT INTO `review_produk` VALUES ('3', '2004280004', 'edwin', 'mantap', '5', '2021-08-10 15:21:43');
INSERT INTO `review_produk` VALUES ('4', '2004280004', 'edwin', 'mantap', '2', '2021-08-10 15:21:43');

-- ----------------------------
-- Table structure for slider
-- ----------------------------
DROP TABLE IF EXISTS `slider`;
CREATE TABLE `slider` (
  `id_slider` int(11) NOT NULL AUTO_INCREMENT,
  `gambar` varchar(256) NOT NULL,
  PRIMARY KEY (`id_slider`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of slider
-- ----------------------------
INSERT INTO `slider` VALUES ('26', 'slider_1590634804.jpg');
INSERT INTO `slider` VALUES ('27', 'slider_1623077558.jpg');

-- ----------------------------
-- Table structure for status_order
-- ----------------------------
DROP TABLE IF EXISTS `status_order`;
CREATE TABLE `status_order` (
  `id_status` int(11) NOT NULL AUTO_INCREMENT,
  `desk_status` varchar(255) NOT NULL,
  PRIMARY KEY (`id_status`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of status_order
-- ----------------------------

-- ----------------------------
-- Table structure for submenu
-- ----------------------------
DROP TABLE IF EXISTS `submenu`;
CREATE TABLE `submenu` (
  `id_sub` int(11) NOT NULL AUTO_INCREMENT,
  `nama_sub` varchar(50) NOT NULL,
  `mainmenu_idmenu` int(11) NOT NULL,
  `active_sub` varchar(20) NOT NULL,
  `icon_class` varchar(100) NOT NULL,
  `link_sub` varchar(50) NOT NULL,
  `sub_akses` varchar(12) NOT NULL,
  `entry_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `entry_user` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_sub`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of submenu
-- ----------------------------

-- ----------------------------
-- Table structure for t_detail_pengiriman
-- ----------------------------
DROP TABLE IF EXISTS `t_detail_pengiriman`;
CREATE TABLE `t_detail_pengiriman` (
  `id_detail_pengiriman` int(11) NOT NULL AUTO_INCREMENT,
  `id_detail_order` int(11) NOT NULL,
  `tanggal_konfirmasi` date NOT NULL,
  `tanggal_kirim` date DEFAULT NULL,
  `status_kadaluarsa` int(1) NOT NULL,
  PRIMARY KEY (`id_detail_pengiriman`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_detail_pengiriman
-- ----------------------------
INSERT INTO `t_detail_pengiriman` VALUES ('2', '2', '2017-01-31', '2017-01-31', '0');

-- ----------------------------
-- Table structure for t_status
-- ----------------------------
DROP TABLE IF EXISTS `t_status`;
CREATE TABLE `t_status` (
  `fc_param` char(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `fc_kode` char(2) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `fv_value` char(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`fc_param`,`fc_kode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_status
-- ----------------------------
INSERT INTO `t_status` VALUES ('STSORDER', '1', 'Menunggu Pembayaran');
INSERT INTO `t_status` VALUES ('STSORDER', '2', 'Sedang Dikemas');
INSERT INTO `t_status` VALUES ('STSORDER', '3', 'Dalam Pengiriman');
INSERT INTO `t_status` VALUES ('STSORDER', '4', 'Barang Sudah Sampai');

-- ----------------------------
-- Table structure for t_voucher
-- ----------------------------
DROP TABLE IF EXISTS `t_voucher`;
CREATE TABLE `t_voucher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produk` char(30) DEFAULT NULL,
  `nominal` double DEFAULT NULL,
  `tgl_terbit_voucher` date DEFAULT NULL,
  `tgl_exp_voucher` date DEFAULT NULL,
  `nominal_syarat` double DEFAULT NULL,
  `sts` char(1) DEFAULT NULL,
  `keterangan_syarat` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_voucher
-- ----------------------------
INSERT INTO `t_voucher` VALUES ('1', '2004280004', '20000', '2021-08-16', '2021-08-16', '50000', 'Y', '50rb');
INSERT INTO `t_voucher` VALUES ('2', '2004280004', '10000', '2021-08-13', '2021-08-16', '30000', 'Y', '30rb');

-- ----------------------------
-- Table structure for tab_akses_mainmenu
-- ----------------------------
DROP TABLE IF EXISTS `tab_akses_mainmenu`;
CREATE TABLE `tab_akses_mainmenu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_menu` int(11) NOT NULL,
  `id_level` int(11) NOT NULL,
  `c` int(11) DEFAULT '0',
  `r` int(11) DEFAULT '0',
  `u` int(11) DEFAULT '0',
  `d` int(11) DEFAULT '0',
  `entry_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `entry_user` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tab_akses_mainmenu
-- ----------------------------
INSERT INTO `tab_akses_mainmenu` VALUES ('1', '1', '1', null, '1', null, null, '2017-09-25 11:49:01', 'direktur');
INSERT INTO `tab_akses_mainmenu` VALUES ('2', '2', '1', '0', '1', '0', '0', '2018-09-24 10:18:10', '');
INSERT INTO `tab_akses_mainmenu` VALUES ('23', '3', '1', '0', '1', '0', '0', '2018-09-24 13:04:05', '');
INSERT INTO `tab_akses_mainmenu` VALUES ('24', '4', '1', '0', '1', '0', '0', '2018-09-24 15:27:24', '');
INSERT INTO `tab_akses_mainmenu` VALUES ('25', '5', '1', '0', '1', '0', '0', '2018-09-24 15:37:15', '');

-- ----------------------------
-- Table structure for tab_akses_submenu
-- ----------------------------
DROP TABLE IF EXISTS `tab_akses_submenu`;
CREATE TABLE `tab_akses_submenu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_sub_menu` int(11) NOT NULL,
  `id_level` int(11) NOT NULL,
  `c` int(11) DEFAULT '0',
  `r` int(11) DEFAULT '0',
  `u` int(11) DEFAULT '0',
  `d` int(11) DEFAULT '0',
  `entry_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `entry_user` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tab_akses_submenu
-- ----------------------------

-- ----------------------------
-- Table structure for tb_about
-- ----------------------------
DROP TABLE IF EXISTS `tb_about`;
CREATE TABLE `tb_about` (
  `id_about` int(11) NOT NULL AUTO_INCREMENT,
  `about_logo` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `about_deskripsi` text CHARACTER SET latin1 COLLATE latin1_general_ci,
  `id_admin` int(11) DEFAULT NULL,
  `about_title_meta` varchar(200) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `about_deskripsi_meta` varchar(200) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `about_keyword_meta` varchar(200) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_about`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_about
-- ----------------------------
INSERT INTO `tb_about` VALUES ('1', 'logo2.png', 'MauGrafika adalah...', '1', '', '', '');

-- ----------------------------
-- Table structure for tb_event
-- ----------------------------
DROP TABLE IF EXISTS `tb_event`;
CREATE TABLE `tb_event` (
  `id_event` varchar(20) NOT NULL,
  `value` int(255) NOT NULL,
  PRIMARY KEY (`id_event`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_event
-- ----------------------------
INSERT INTO `tb_event` VALUES ('1', '5');

-- ----------------------------
-- Table structure for tb_foto
-- ----------------------------
DROP TABLE IF EXISTS `tb_foto`;
CREATE TABLE `tb_foto` (
  `id_gallery` int(11) NOT NULL AUTO_INCREMENT,
  `gallery_nama` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `gallery_gambar` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `id_admin` int(11) DEFAULT NULL,
  `id_album` int(11) DEFAULT NULL,
  `gallery_title_meta` varchar(200) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `gallery_deskripsi_meta` varchar(200) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `gallery_keyword_meta` varchar(200) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_gallery`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_foto
-- ----------------------------
INSERT INTO `tb_foto` VALUES ('1', 'Paket', '1.jpg', null, '1', null, null, null);
INSERT INTO `tb_foto` VALUES ('2', 'Paket', '2.jpg', null, '1', null, null, null);
INSERT INTO `tb_foto` VALUES ('3', 'Paket', '3.jpg', null, '1', null, null, null);

-- ----------------------------
-- Table structure for tb_kontak
-- ----------------------------
DROP TABLE IF EXISTS `tb_kontak`;
CREATE TABLE `tb_kontak` (
  `id_kontak` int(11) NOT NULL AUTO_INCREMENT,
  `kontak_lat` varchar(100) DEFAULT NULL,
  `kontak_long` varchar(100) DEFAULT NULL,
  `kontak_deskripsi` text,
  `kontak_judul` varchar(30) DEFAULT NULL,
  `kontak_title_meta` varchar(200) DEFAULT NULL,
  `kontak_deskripsi_meta` text,
  `kontak_keyword_meta` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_kontak`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_kontak
-- ----------------------------
INSERT INTO `tb_kontak` VALUES ('1', '-7.9735745', '112.658746', 'Mau Grafika Terletak di ......', null, null, null, null);

-- ----------------------------
-- Table structure for tema
-- ----------------------------
DROP TABLE IF EXISTS `tema`;
CREATE TABLE `tema` (
  `id_tema` int(11) NOT NULL AUTO_INCREMENT,
  `tema` varchar(50) NOT NULL,
  `nama_tema` varchar(50) NOT NULL,
  PRIMARY KEY (`id_tema`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tema
-- ----------------------------
INSERT INTO `tema` VALUES ('1', '', 'skin-blue');

-- ----------------------------
-- Table structure for tk_pesan
-- ----------------------------
DROP TABLE IF EXISTS `tk_pesan`;
CREATE TABLE `tk_pesan` (
  `id_kpesan` varchar(20) NOT NULL,
  `tgl_kpesan` date DEFAULT NULL,
  PRIMARY KEY (`id_kpesan`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tk_pesan
-- ----------------------------
INSERT INTO `tk_pesan` VALUES ('MBR_210813_001', null);
INSERT INTO `tk_pesan` VALUES ('IKP_210903_001', null);
INSERT INTO `tk_pesan` VALUES ('IKP_210906_001', null);
INSERT INTO `tk_pesan` VALUES ('IKP_210907_001', null);
INSERT INTO `tk_pesan` VALUES ('IKP_210911_001', null);
INSERT INTO `tk_pesan` VALUES ('IKP_210912_001', null);
INSERT INTO `tk_pesan` VALUES ('IKP_210913_001', null);
INSERT INTO `tk_pesan` VALUES ('IKP_210914_001', null);
INSERT INTO `tk_pesan` VALUES ('IKP_210915_001', null);
INSERT INTO `tk_pesan` VALUES ('IKP_210918_001', null);
INSERT INTO `tk_pesan` VALUES ('IKP_210920_001', null);
INSERT INTO `tk_pesan` VALUES ('IKP_210921_001', null);
INSERT INTO `tk_pesan` VALUES ('IKP_211002_001', null);
INSERT INTO `tk_pesan` VALUES ('IKP_211011_001', null);
INSERT INTO `tk_pesan` VALUES ('IKP_211012_001', null);
INSERT INTO `tk_pesan` VALUES ('IKP_211013_001', null);
INSERT INTO `tk_pesan` VALUES ('IKP_211014_001', null);
INSERT INTO `tk_pesan` VALUES ('IKP_211015_001', null);
INSERT INTO `tk_pesan` VALUES ('IKP_211018_001', null);
INSERT INTO `tk_pesan` VALUES ('IKP_211019_001', null);
INSERT INTO `tk_pesan` VALUES ('IKP_211020_001', null);
INSERT INTO `tk_pesan` VALUES ('IKP_211021_001', null);
INSERT INTO `tk_pesan` VALUES ('IKP_211025_001', null);
INSERT INTO `tk_pesan` VALUES ('IKP_211026_001', null);
INSERT INTO `tk_pesan` VALUES ('IKP_211027_001', null);
INSERT INTO `tk_pesan` VALUES ('IKP_211028_001', null);
INSERT INTO `tk_pesan` VALUES ('MBR_211028_001', null);
INSERT INTO `tk_pesan` VALUES ('IKP_211028_002', null);
INSERT INTO `tk_pesan` VALUES ('IKP_211029_001', null);
INSERT INTO `tk_pesan` VALUES ('IKP_211030_001', null);
INSERT INTO `tk_pesan` VALUES ('IKP_211031_001', null);
INSERT INTO `tk_pesan` VALUES ('IKP_211101_001', null);
INSERT INTO `tk_pesan` VALUES ('MBR_211101_001', null);
INSERT INTO `tk_pesan` VALUES ('IKP_211101_002', null);
INSERT INTO `tk_pesan` VALUES ('IKP_211102_001', null);
INSERT INTO `tk_pesan` VALUES ('IKP_211103_001', null);
INSERT INTO `tk_pesan` VALUES ('IKP_211104_001', null);
INSERT INTO `tk_pesan` VALUES ('IKP_211105_001', null);
INSERT INTO `tk_pesan` VALUES ('IKP_211108_001', null);
INSERT INTO `tk_pesan` VALUES ('MBR_211103_001', null);
INSERT INTO `tk_pesan` VALUES ('IKP_211109_001', null);
INSERT INTO `tk_pesan` VALUES ('IKP_211110_001', null);
INSERT INTO `tk_pesan` VALUES ('MBR_211110_001', null);
INSERT INTO `tk_pesan` VALUES ('IKP_211110_002', null);

-- ----------------------------
-- Table structure for transaksi_midtrans
-- ----------------------------
DROP TABLE IF EXISTS `transaksi_midtrans`;
CREATE TABLE `transaksi_midtrans` (
  `id_order` varchar(11) NOT NULL,
  `status_code` int(11) NOT NULL,
  `gross_amount` int(11) NOT NULL,
  `payment_type` varchar(50) NOT NULL,
  `transaction_time` varchar(50) NOT NULL,
  `bank` varchar(50) DEFAULT NULL,
  `va_number` varchar(50) DEFAULT NULL,
  `pdf_url` text,
  PRIMARY KEY (`id_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of transaksi_midtrans
-- ----------------------------
INSERT INTO `transaksi_midtrans` VALUES ('T210804006', '201', '28500', 'bank_transfer', '2021-08-05 00:33:51', 'bca', '38183244169', 'https://app.sandbox.midtrans.com/snap/v1/transactions/859bb6e2-d854-45bd-b1a1-17e3072c662c/pdf');
INSERT INTO `transaksi_midtrans` VALUES ('T210805001', '201', '36200', 'bank_transfer', '2021-08-05 01:18:32', 'bri', '381839285410539254', 'https://app.sandbox.midtrans.com/snap/v1/transactions/f80fdc48-7b60-45fb-8e82-944c38832995/pdf');
INSERT INTO `transaksi_midtrans` VALUES ('T210806006', '201', '9100', 'bank_transfer', '2021-08-06 15:29:39', 'bca', '38183192601', 'https://app.sandbox.midtrans.com/snap/v1/transactions/e374ff4c-c7d7-4714-87c2-6e22a18cfa13/pdf');
INSERT INTO `transaksi_midtrans` VALUES ('T210806007', '201', '61500', 'bank_transfer', '2021-08-06 16:03:37', 'bca', '38183591676', 'https://app.sandbox.midtrans.com/snap/v1/transactions/c9ad7741-09f1-4f03-a3b9-fa571da53e69/pdf');
INSERT INTO `transaksi_midtrans` VALUES ('T210806009', '201', '20500', 'bank_transfer', '2021-08-06 16:19:12', 'bca', '38183778469', 'https://app.sandbox.midtrans.com/snap/v1/transactions/5810af88-ef0b-4120-9e7d-57918c1e91ba/pdf');
INSERT INTO `transaksi_midtrans` VALUES ('T210809001', '201', '20500', 'gopay', '2021-08-09 01:28:49', null, null, null);
INSERT INTO `transaksi_midtrans` VALUES ('T210809002', '201', '29500', 'bank_transfer', '2021-08-09 01:45:28', null, null, 'https://app.sandbox.midtrans.com/snap/v1/transactions/cf6dff44-792f-4679-9cd6-92a429ab02e2/pdf');
INSERT INTO `transaksi_midtrans` VALUES ('T210809003', '201', '51500', 'bank_transfer', '2021-08-09 01:55:40', null, null, 'https://app.sandbox.midtrans.com/snap/v1/transactions/8908bb7d-01fe-4f9a-81af-8ba450beb484/pdf');
INSERT INTO `transaksi_midtrans` VALUES ('T210809004', '200', '91500', 'bank_transfer', '2021-08-09 02:17:14', null, null, 'https://app.sandbox.midtrans.com/snap/v1/transactions/4f8e0f40-d196-4f71-be1c-8e9a58c30d62/pdf');
INSERT INTO `transaksi_midtrans` VALUES ('T210809005', '201', '56500', 'bank_transfer', '2021-08-09 09:05:59', null, null, 'https://app.sandbox.midtrans.com/snap/v1/transactions/6743c615-7191-45ed-9c27-a645226fd63e/pdf');
INSERT INTO `transaksi_midtrans` VALUES ('T211025001', '201', '30500', 'gopay', '2021-10-25 22:20:10', null, null, null);
INSERT INTO `transaksi_midtrans` VALUES ('T211028002', '201', '120900', 'bank_transfer', '2021-10-28 12:02:03', null, null, 'https://app.midtrans.com/snap/v1/transactions/227098d7-5f72-4a24-bd7d-c4d7f091a70f/pdf');
INSERT INTO `transaksi_midtrans` VALUES ('T211108005', '201', '106000', 'bank_transfer', '2021-11-08 23:28:20', null, null, 'https://app.midtrans.com/snap/v1/transactions/bdd12335-5fbd-405f-9710-a5dd751c917c/pdf');
INSERT INTO `transaksi_midtrans` VALUES ('T211110003', '201', '34800', 'bank_transfer', '2021-11-10 12:48:42', null, null, 'https://app.midtrans.com/snap/v1/transactions/447cc840-b667-420d-9a70-dd9d5fddb7c0/pdf');
INSERT INTO `transaksi_midtrans` VALUES ('T211110004', '201', '22000', 'bank_transfer', '2021-11-10 12:51:40', null, null, 'https://app.midtrans.com/snap/v1/transactions/c5c9e438-6cd7-4684-8d77-3ea5f64f3a34/pdf');
INSERT INTO `transaksi_midtrans` VALUES ('T211110005', '201', '37000', 'bank_transfer', '2021-11-10 12:54:36', null, null, 'https://app.midtrans.com/snap/v1/transactions/ad857a9d-a631-4bb9-b306-e199d63a41e3/pdf');
INSERT INTO `transaksi_midtrans` VALUES ('T211110007', '201', '46000', 'bank_transfer', '2021-11-10 13:00:13', null, null, 'https://app.midtrans.com/snap/v1/transactions/3021143b-66d3-4dcf-bffd-b20398e02151/pdf');

-- ----------------------------
-- Table structure for transaksi_midtrans_copy
-- ----------------------------
DROP TABLE IF EXISTS `transaksi_midtrans_copy`;
CREATE TABLE `transaksi_midtrans_copy` (
  `order_id` char(20) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `kelas` varchar(6) DEFAULT NULL,
  `gross_amount` int(30) DEFAULT NULL,
  `payment_type` varchar(15) DEFAULT NULL,
  `transaction_time` varchar(19) DEFAULT NULL,
  `bank` varchar(10) DEFAULT NULL,
  `va_number` varchar(40) DEFAULT NULL,
  `pdf_url` text,
  `status_code` char(3) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of transaksi_midtrans_copy
-- ----------------------------
INSERT INTO `transaksi_midtrans_copy` VALUES ('1723483307', 'Ping', 'VII', '100000', 'gopay', '2021-08-06 16:10:22', null, null, null, '201');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id_user` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `level` varchar(30) NOT NULL,
  `status` varchar(1) NOT NULL,
  `foto` text,
  `password` varchar(100) NOT NULL,
  `provinsi` varchar(50) NOT NULL,
  `kota` varchar(50) NOT NULL,
  `id_ongkir` int(11) NOT NULL,
  `aktif_user` tinyint(1) NOT NULL,
  `nama_rek_user` varchar(255) NOT NULL,
  `no_rek_user` varchar(255) NOT NULL,
  `bank_rek_user` varchar(255) NOT NULL,
  `view_password` varchar(100) DEFAULT NULL,
  `admin_level` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('Jess', 'Jess', 'jess-kun@gmail.com', 'member', '', null, '4337fb150cbc24bd1842fb3b8f828a6c', 'Jawa Timur', 'Malang', '255', '1', 'Jess', '0900841', 'BRI', null, null);
INSERT INTO `user` VALUES ('Yeremia', 'Jess', 'jess', 'member', '', '1', '4337fb150cbc24bd1842fb3b8f828a6c', 'Jawa Timur', 'Malang', '256', '1', 'Yeremia', '021312', 'BRI', null, null);

-- ----------------------------
-- Table structure for waktu_bayar
-- ----------------------------
DROP TABLE IF EXISTS `waktu_bayar`;
CREATE TABLE `waktu_bayar` (
  `id_waktu` int(11) NOT NULL AUTO_INCREMENT,
  `mode` varchar(50) DEFAULT NULL,
  `waktu` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_waktu`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of waktu_bayar
-- ----------------------------
INSERT INTO `waktu_bayar` VALUES ('1', 'day', '2');

-- ----------------------------
-- Event structure for barang_sampai
-- ----------------------------
DROP EVENT IF EXISTS `barang_sampai`;
DELIMITER ;;
CREATE DEFINER=`k9734772_tokoonline3`@`%` EVENT `barang_sampai` ON SCHEDULE EVERY 1 SECOND STARTS '2021-08-25 13:34:57' ON COMPLETION PRESERVE ENABLE COMMENT 'Update' DO UPDATE `order`
SET status_order = 5,
 status_bayar = 1
WHERE
	max_kirim < NOW()
;;
DELIMITER ;

-- ----------------------------
-- Event structure for promo_false
-- ----------------------------
DROP EVENT IF EXISTS `promo_false`;
DELIMITER ;;
CREATE DEFINER=`k9734772_tokoonline3`@`%` EVENT `promo_false` ON SCHEDULE EVERY 1 SECOND STARTS '2021-10-28 21:31:49' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE promo
SET status_promo = 0
WHERE
	tgl_mulai < NOW() > tgl_selesai
;;
DELIMITER ;
