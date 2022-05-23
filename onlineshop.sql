/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 10.5.9-MariaDB-log : Database - onlineshop
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
-- CREATE DATABASE /*!32312 IF NOT EXISTS*/`onlineshop` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

-- USE `onlineshop`;

/*Table structure for table `bank` */

DROP TABLE IF EXISTS `bank`;

CREATE TABLE `bank` (
  `id` varchar(10) NOT NULL,
  `atas_nama` varchar(255) DEFAULT NULL,
  `no_rek` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `bank` */

insert  into `bank`(`id`,`atas_nama`,`no_rek`) values 
('asd','asd','12'),
('BCA','Vanrezky Sadewa Nababan','112341232523212'),
('BRI','Vanrezky','2312312324232'),
('Mandiri','Sadewa Nababanban','12324123125213');

/*Table structure for table `brand` */

DROP TABLE IF EXISTS `brand`;

CREATE TABLE `brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nm_brand` varchar(128) DEFAULT NULL,
  `gambar` text NOT NULL,
  `deskripsi` varchar(150) DEFAULT NULL,
  `publish` varchar(1) DEFAULT NULL COMMENT 'publish = 1, unpublish = 0',
  `urutan` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `brand` */

insert  into `brand`(`id`,`nm_brand`,`gambar`,`deskripsi`,`publish`,`urutan`) values 
(1,'Dr Dennim','48a4388df9d4b63a94cb4b3a755eb3e9.png','Merek dagang Dr Dennim','1','1'),
(2,'Levis','c3e5592266975429aee69690505a002e.png','Merek dagang Levis','1','2'),
(3,'Tupperware','9049448987a0f9e1ad68f5ef9749dfe8.jpg','Tupperware','1','3'),
(4,'Forever 21','9d4e5d9f17a2fd844030ba43296491f6.jpg','-','1','5');

/*Table structure for table `costumer` */

DROP TABLE IF EXISTS `costumer`;

CREATE TABLE `costumer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c_nama` varchar(128) DEFAULT NULL,
  `c_email` varchar(128) DEFAULT NULL,
  `c_nohp` varchar(15) DEFAULT NULL,
  `c_password` varchar(256) DEFAULT NULL,
  `c_alamat` tinytext DEFAULT NULL,
  `c_provinsi` int(11) DEFAULT NULL,
  `c_kabupaten` int(11) DEFAULT NULL,
  `c_kodepos` int(11) DEFAULT NULL,
  `aktif` int(1) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;

/*Data for the table `costumer` */

insert  into `costumer`(`id`,`c_nama`,`c_email`,`c_nohp`,`c_password`,`c_alamat`,`c_provinsi`,`c_kabupaten`,`c_kodepos`,`aktif`,`date_created`,`date_updated`) values 
(1,'Rindaman','rindaman@gmail.com','235234323',NULL,'Perum RGM, Jl. Siak 2, Kelurahan Rumbai bukit, kecamatan Rumbai, Kota Pekanbaru',12,23,12341,0,'0000-00-00 00:00:00',NULL),
(2,'Rindaman','rindaman@gmail.com','235234323',NULL,'Perum RGM, Jl. Siak 2, Kelurahan Rumbai bukit, kecamatan Rumbai, Kota Pekanbaru',12,23,12341,0,'0000-00-00 00:00:00',NULL),
(3,'Rindaman','rindaman@gmail.com','235234323',NULL,'Perum RGM, Jl. Siak 2, Kelurahan Rumbai bukit, kecamatan Rumbai, Kota Pekanbaru',12,23,12341,0,'0000-00-00 00:00:00',NULL),
(4,'Rindaman','rindaman@gmail.com','235234323',NULL,'Perum RGM, Jl. Siak 2, Kelurahan Rumbai bukit, kecamatan Rumbai, Kota Pekanbaru',12,23,12341,0,'0000-00-00 00:00:00',NULL),
(5,'Rindaman','rindaman@gmail.com','235234323',NULL,'Perum RGM, Jl. Siak 2, Kelurahan Rumbai bukit, kecamatan Rumbai, Kota Pekanbaru',12,23,12341,0,'0000-00-00 00:00:00',NULL),
(6,'Rindaman','rindaman@gmail.com','235234323',NULL,'Perum RGM, Jl. Siak 2, Kelurahan Rumbai bukit, kecamatan Rumbai, Kota Pekanbaru',12,23,12341,0,'0000-00-00 00:00:00',NULL),
(7,'Rindaman','rindaman@gmail.com','235234323',NULL,'Perum RGM, Jl. Siak 2, Kelurahan Rumbai bukit, kecamatan Rumbai, Kota Pekanbaru',12,23,12341,0,'0000-00-00 00:00:00',NULL),
(8,'Rindaman','rindaman@gmail.com','235234323',NULL,'Perum RGM, Jl. Siak 2, Kelurahan Rumbai bukit, kecamatan Rumbai, Kota Pekanbaru',12,23,12341,0,'0000-00-00 00:00:00',NULL),
(9,'Rindaman','rindaman@gmail.com','235234323',NULL,'Perum RGM, Jl. Siak 2, Kelurahan Rumbai bukit, kecamatan Rumbai, Kota Pekanbaru',12,23,12341,0,'0000-00-00 00:00:00',NULL),
(10,'Rindaman','rindaman@gmail.com','235234323',NULL,'Perum RGM, Jl. Siak 2, Kelurahan Rumbai bukit, kecamatan Rumbai, Kota Pekanbaru',12,23,12341,0,'0000-00-00 00:00:00',NULL),
(11,'Rindaman','rindaman@gmail.com','235234323',NULL,'Perum RGM, Jl. Siak 2, Kelurahan Rumbai bukit, kecamatan Rumbai, Kota Pekanbaru',12,23,12341,0,'0000-00-00 00:00:00',NULL),
(12,'Rindaman','rindaman@gmail.com','235234323',NULL,'Perum RGM, Jl. Siak 2, Kelurahan Rumbai bukit, kecamatan Rumbai, Kota Pekanbaru',12,23,12341,0,'0000-00-00 00:00:00',NULL),
(16,'vanrezky','vanrezkysadewa1@gmail.com',NULL,'$2y$10$9Jk.n3GeS7CwEADvtZfFge3omEDwojS02G3qnAbCbszjNPv5gAkcy',NULL,NULL,NULL,NULL,1,'2020-11-11 21:53:52','2020-12-12 11:51:57'),
(17,'ciska tobing','ciska@gmail.com',NULL,'$2y$10$H/U60K0mk5SSaiAHCsJkvOIHHm2VXYHtKw2ljF5ryJI/t3fzbx2K2',NULL,NULL,NULL,NULL,1,'2020-11-11 23:28:49',NULL),
(18,'Ajsjaj','aku@gmail.com',NULL,'$2y$10$ZOp1HsYlzLcZyfejlBufeOpeGx4liGCnzeqw/JXaL1lXsRvAiE2JW',NULL,NULL,NULL,NULL,1,'2020-11-21 10:18:06',NULL),
(19,'Ahmad','ahmad@gmail.com',NULL,'$2y$10$vNv1rik26gZwaOfmjSEMQ.VaJS93GVqgyd8T1QUSqCw8435onfiRG',NULL,NULL,NULL,NULL,1,'2020-11-21 10:18:47',NULL),
(20,'vanrezky sadewa','vanrezkysadewa88@gmail.com',NULL,'$2y$10$Q9K1PvPKrrXh.2BsYrP5MuwkiVHOsqrZj6vQr7XBV9TyJV8zoM0W6',NULL,NULL,NULL,NULL,1,'2020-12-05 15:49:18',NULL),
(21,'Van','vanrezkysadewa77@gmail.com',NULL,'$2y$10$cT0MTGYJzssi2Sx49s.upuaFeEEY1XV29MkDpzeCEoMxeZAKefRl2',NULL,NULL,NULL,NULL,1,'2021-07-17 11:02:36',NULL);

/*Table structure for table `halaman` */

DROP TABLE IF EXISTS `halaman`;

CREATE TABLE `halaman` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` tinytext DEFAULT NULL,
  `judul` tinytext DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `publish` int(11) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_update` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

/*Data for the table `halaman` */

insert  into `halaman`(`id`,`slug`,`judul`,`isi`,`publish`,`date_created`,`date_update`) values 
(1,'about-us','About Us','&lt;p&gt;Pasarjempol.com merupakan merupakan marketplace produk virtual &amp; fisik yang dapat memenuhi kebutuhan anda, kami disini mempertemukan penjual &amp; pembeli dengan sistem yang interaktif namun tetap mengedepankan keamanan &amp; kenyamanan pengguna. &lt;/p&gt;&lt;p&gt;&lt;span xss=removed&gt;Pasarjempol.com&lt;/span&gt;&lt;span xss=removed&gt; juga didukung oleh sumber daya manusia yang amanah &amp; kompeten di bidangnya menjadikan &lt;/span&gt;Pasarjempol.com&lt;span xss=removed&gt; sebagai marketplace terbaik untuk memenuhi kebutuhan anda, dengan begitu terciptalah kondisi keamanan &amp; kepercayaan dalam setiap bertransaksi online.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;Visi :&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Pasarjempol.com mempunyai visi menciptakan kondisi keamanan &amp; kepercayaan dalam setiap bertransaksi online.&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;Misi :&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Mengembangkan produk dan jasa virtual yang inovatif dan kompetitif.&lt;/li&gt;&lt;li&gt;Memberikan layanan yang terbaik kepada pelanggan dengan menjaga profesionalisme.&lt;/li&gt;&lt;li&gt;Memberikan pelayanan terbaik dan quality control yang baik untuk memenuhi kepuasan pelanggan.&lt;/li&gt;&lt;li&gt;Memanfaatkan sistem informasi dan teknologi terkini dalam menjalankan proses bisnis sehingga menjadi yang terdepan diantara para pesaing.&lt;/li&gt;&lt;/ul&gt;',1,'2021-01-07 16:22:54','2021-01-07 20:00:43');

/*Table structure for table `kategori` */

DROP TABLE IF EXISTS `kategori`;

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nm_kategori` varchar(128) DEFAULT NULL,
  `slug` text NOT NULL,
  `deskripsi` varchar(150) DEFAULT NULL,
  `publish` varchar(1) DEFAULT NULL COMMENT 'publish = 1, unpublish = 0',
  `urutan` varchar(5) DEFAULT NULL,
  `kategori_pilihan` int(11) DEFAULT NULL,
  `gambar` tinytext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

/*Data for the table `kategori` */

insert  into `kategori`(`id`,`nm_kategori`,`slug`,`deskripsi`,`publish`,`urutan`,`kategori_pilihan`,`gambar`) values 
(1,'Jaket','jaket','-','1','1',1,'f8bc23f7d7c33a16177808b430d55d54.png'),
(2,'Hijab','hijab','-','1','2',1,'2456c254c595b5b4c078e1952f03230e.png'),
(3,'Kemeja','kemeja','-','1','3',1,'87b11e37d4af0553094578e28ba41196.png'),
(5,'Kaos Oblong','kaos-oblong','-','1','4',0,'2faa27001fb598225fbbbf1f9baab23a.png'),
(6,'Perabot','perabot','Perabotan rumah tangga','1','5',0,'5b81268074dff506a511aa1aeb026b8b.png'),
(7,'Deterjen','deterjen','-','1','5',0,'4c203134d5cb817824f1e61acd4130f3.png'),
(13,'Sayuran','sayuran','Sayuran segar','1','',0,'543c07601288df798903e10a0da21122.png');

/*Table structure for table `keranjang` */

DROP TABLE IF EXISTS `keranjang`;

CREATE TABLE `keranjang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c_email` varchar(128) DEFAULT NULL,
  `id_produk` int(11) DEFAULT NULL,
  `options` tinytext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `keranjang` */

/*Table structure for table `login_attempts` */

DROP TABLE IF EXISTS `login_attempts`;

CREATE TABLE `login_attempts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `login_attempts` */

insert  into `login_attempts`(`id`,`ip_address`,`login`,`time`) values 
(1,'::1','admin@admin.com',1602507236);

/*Table structure for table `menu` */

DROP TABLE IF EXISTS `menu`;

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `field_url` varchar(50) NOT NULL,
  `icon` varchar(20) NOT NULL,
  PRIMARY KEY (`id_menu`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;

/*Data for the table `menu` */

insert  into `menu`(`id_menu`,`title`,`field_url`,`icon`) values 
(1,'Dashboard','dashboard','fas fa-fire'),
(2,'Master','master','fas fa-book'),
(5,'User','master/user','fas fa-users'),
(8,'Kategori','master/kategori','fas fa-list'),
(10,'Setting','setting','fas fa-cog'),
(11,'Informasi Umum','setting/informasi','fas fa-list'),
(12,'Brand','master/brand','fas fa-list'),
(13,'Produk','master/produk','fas fa-list'),
(14,'Kategori Pilihan','setting/kategori_pilihan','fas fa-list'),
(15,'Limit','setting/limit','fas fa-list'),
(16,'Slider','setting/slider','fas fa-list'),
(17,'Costumer','master/costumer','fas fa-user-o'),
(18,'Orderan','orderan','fas fa-shopping-cart'),
(19,'Testimoni','testimoni','fas fa-comment-alt'),
(20,'Halaman','halaman','fas fa-file-alt'),
(21,'Pembayaran','setting/pembayaran','fas fa-credit-card');

/*Table structure for table `menu_group` */

DROP TABLE IF EXISTS `menu_group`;

CREATE TABLE `menu_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_menu` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `induk_menu` int(11) DEFAULT NULL,
  `menu_urut` int(11) NOT NULL,
  `aktif` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `menu` (`id_menu`),
  CONSTRAINT `menu` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;

/*Data for the table `menu_group` */

insert  into `menu_group`(`id`,`id_menu`,`role_id`,`induk_menu`,`menu_urut`,`aktif`) values 
(1,1,1,NULL,1,1),
(2,2,1,NULL,2,1),
(5,5,1,2,1,1),
(9,8,1,2,2,1),
(11,10,1,NULL,5,1),
(12,11,1,11,1,1),
(13,12,1,2,3,1),
(14,13,1,2,4,1),
(15,14,1,11,2,1),
(16,15,1,11,2,1),
(17,16,1,11,2,1),
(18,17,1,2,5,1),
(19,18,1,NULL,3,1),
(20,19,1,NULL,4,0),
(21,20,1,NULL,4,1),
(22,21,1,11,5,1);

/*Table structure for table `orderan` */

DROP TABLE IF EXISTS `orderan`;

CREATE TABLE `orderan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_order` varchar(15) DEFAULT NULL,
  `tgl_order` datetime DEFAULT NULL,
  `email_customer` varchar(128) DEFAULT NULL,
  `provinsi` varchar(50) DEFAULT NULL,
  `kabupaten` varchar(100) DEFAULT NULL,
  `kecamatan` varchar(100) DEFAULT NULL,
  `kelurahan` varchar(100) DEFAULT NULL,
  `alamat` tinytext DEFAULT NULL,
  `kode_pos` varchar(5) DEFAULT NULL,
  `kurir` varchar(100) DEFAULT NULL,
  `paket` varchar(100) DEFAULT NULL,
  `estimasi` varchar(20) DEFAULT NULL,
  `ongkir` varchar(20) DEFAULT NULL,
  `berat` varchar(10) DEFAULT NULL,
  `order_total` varchar(20) DEFAULT NULL,
  `status_bayar` enum('sudah','belum') DEFAULT NULL,
  `bukti_bayar` text DEFAULT NULL,
  `nama_penerima` varchar(100) DEFAULT NULL,
  `no_hp` varchar(15) DEFAULT NULL,
  `bank` varchar(10) DEFAULT NULL,
  `no_rek` varchar(100) DEFAULT NULL,
  `status_order` enum('Menunggu Pembayaran','Dikirim','Selesai','Dibatalkan','Dikemas') DEFAULT NULL,
  `no_resi` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

/*Data for the table `orderan` */

insert  into `orderan`(`id`,`no_order`,`tgl_order`,`email_customer`,`provinsi`,`kabupaten`,`kecamatan`,`kelurahan`,`alamat`,`kode_pos`,`kurir`,`paket`,`estimasi`,`ongkir`,`berat`,`order_total`,`status_bayar`,`bukti_bayar`,`nama_penerima`,`no_hp`,`bank`,`no_rek`,`status_order`,`no_resi`) values 
(1,'EK80YGJJ9XRF','2020-12-13 13:59:10','vanrezkysadewa1@gmail.com','Bangka Belitung','Bangka Barat','Pangkalan Kuras','Agam','Jl Lintas padang Agam','12312','pos','Paket Kilat Khusus',NULL,'86000','1700','450000','belum',NULL,'vanrezky sadewa','123','Mandiri','12324123125213','Dibatalkan',NULL),
(2,'TLP74KW3HD0F','2020-12-14 22:23:12','vanrezkysadewa1@gmail.com','DI Yogyakarta','Gunung Kidul','Pangkalan Kuras','Kemang','Jl Lintas Timur, Desa Kemang','12312','jne','OKE',NULL,'26000','250','25000','belum','c577424780ade01ebc52938de64c98d7.jpg','vanrezky sadewa','082268262017','BRI','2312312324232','Dikemas','12322131312'),
(3,'C4IAKUNTRNIL','2020-12-15 01:13:50','ahmad@gmail.com','Banten','Pandeglang','asdasd','asda dasdsa','asdasdasdasdas d as','123','pos','Paket Kilat Khusus',NULL,'27500','500','60000','belum','6e4aa1b2f1e1016c56f07ba9ca0659a5.jpg','vanrezky sadewa','123','BCA','112341232523212','Dikemas',NULL),
(4,'YJNADP6HSCKB','2020-12-16 20:45:26','vanrezkysadewa1@gmail.com','Bali','Bangli','asdadsada','asdsadasd','adsadsadsadsadsdsadsad','12312','jne','OKE',NULL,'37000','1000','120000','belum','3f1c2c7d95a1ae112050e9ac48f91cdc.jpg','vanrezky','12323','BCA','112341232523212','Dikemas',''),
(5,'SNNVZ6KKTPAY','2020-12-16 20:57:16','ahmad@gmail.com','Bangka Belitung','Bangka Barat','Pangkalan Kuras','Kemang','asdasdas dasd asasdas dsa','23903','jne','OKE',NULL,'38000','350','280000','belum','d87fd92bdaf3bd8a164d28dac0dc29cf.jpg','ahmad','9932039','BCA','112341232523212','Dikemas','CGK2H03789568816'),
(6,'EG0ZJACC3MY9','2020-12-16 21:08:13','ahmad@gmail.com','Bangka Belitung','Bangka Selatan','aadadsadsad','asdasda daasdas','asdasdasdasdsaad','12312','pos','Paket Kilat Khusus',NULL,'43000','500','60000','belum',NULL,'asasdasd','3131','BRI','2312312324232','Menunggu Pembayaran','asdasdasdad '),
(7,'L7CHZDORW40N','2020-12-16 23:26:28','ahmad@gmail.com','Bangka Belitung','Bangka Selatan','asdasdasd','asdasdad','asdas dasd as asd ad','12312','jne','OKE',NULL,'38000','600','200000','belum','b303abee521878f533bb5d090c081cc1.png','asdasdsd','082268262017','BRI','2312312324232','Dikemas','CGK2H03789568816'),
(8,'257TVOCWSAQE','2020-12-19 09:37:02','vanrezkysadewa1@gmail.com','Riau','Pelalawan','Pangkalan Kuras','Kemang','Jl Lintas Timur KM 95','12354','pos','Paket Kilat Khusus',NULL,'12000','300','50000','belum',NULL,'vanrezky','082268262017','BRI','2312312324232','Dibatalkan',NULL),
(9,'LCJBJVAHL2GU','2020-12-19 13:18:12','vanrezkysadewa1@gmail.com','Kalimantan Timur','Balikpapan','Kecamatan','Kelurahan','Satker Jalan Tol Balikpapan','12533','tiki','ECO',NULL,'68000','750','90000','belum','11361c6f3c3bf4266598d62c677c6c80.jpg','Siska Tobing','092398323','BRI','2312312324232','Menunggu Pembayaran',NULL),
(10,'VBHKFXMU3YSM','2020-12-19 14:28:50','vanrezkysadewa1@gmail.com','Bangka Belitung','Bangka Selatan','asdasdas','adasdasd','asdasdasdasdasdasdasd','12312','pos','Paket Kilat Khusus',NULL,'43000','600','1500000','sudah','83ff5dd9e511b7e3aa14d449f242da35.jpg','asdasdasdasd','1212312312','BCA','112341232523212','Dikemas','1212312312413123123'),
(11,'5DBLL2URSPEX','2021-01-07 15:50:02','vanrezkysadewa1@gmail.com','Riau','Indragiri Hulu','Rengat Barat','Talang Jerinjing','Jl Sosial Km 10','92393','jne','OKE',NULL,'11000','400','90000','sudah','4db1004ac8ceec2acb98498d3941ad41.png','Jusep','9812931293','BRI','2312312324232','Dikemas','CGK2H03789568816'),
(12,'HNLEZWS5QVCQ','2021-01-10 13:57:33','vanrezkysadewa1@gmail.com','Riau','Bengkalis','asdasd','Kemang','adsadasd','123','jne','OKE',NULL,'11000','600','460000','belum',NULL,'vanrezky sadewa','123','BCA','112341232523212','Menunggu Pembayaran',NULL),
(13,'8VLRV75PKIZW','2021-01-10 14:08:27','vanrezkysadewa1@gmail.com','Bali','Bangli','asdsad','asdsadasd','adasdasdasd','123','jne','REG',NULL,'41000','250','25000','belum',NULL,'asdasd','123','BCA','112341232523212','Dibatalkan',NULL),
(14,'L69GENMIL5MK','2021-01-10 15:16:34','vanrezkysadewa1@gmail.com','Riau','Pelalawan','Pangkalan kuras','Desa kemang','Jln lintas timur desa kemang','12457','jne','OKE',NULL,'11000','1300','1010000','belum',NULL,'Yensiska afniwati','085272582448','BCA','112341232523212','Dibatalkan',NULL),
(15,'1PN7U2FJYXUW','2021-01-12 20:37:23','vanrezkysadewa1@gmail.com','Bali','Badung','Pangkalan Kuras','Kemang','Jl Lintas Timur','12312','jne','OKE',NULL,'37000','400','90000','belum',NULL,'vanrezky sadewa','082268262017','BCA','112341232523212','Dikemas',NULL);

/*Table structure for table `orderan_detail` */

DROP TABLE IF EXISTS `orderan_detail`;

CREATE TABLE `orderan_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderan_id` int(11) DEFAULT NULL,
  `produk_id` int(11) DEFAULT NULL,
  `produk_nama` varchar(254) DEFAULT NULL,
  `produk_harga` mediumtext DEFAULT NULL,
  `produk_qty` int(11) DEFAULT NULL,
  `produk_berat` varchar(10) DEFAULT NULL,
  `variasi` enum('ya','tidak') DEFAULT NULL,
  `warna_id` int(11) DEFAULT NULL,
  `ukuran_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;

/*Data for the table `orderan_detail` */

insert  into `orderan_detail`(`id`,`orderan_id`,`produk_id`,`produk_nama`,`produk_harga`,`produk_qty`,`produk_berat`,`variasi`,`warna_id`,`ukuran_id`) values 
(1,1,23,'Hijab Simple Segi Empat','25000',2,NULL,'ya',3,3),
(2,1,17,'Jaket Levis Wanita','200000',2,NULL,'ya',3,3),
(3,2,23,'Hijab Simple Segi Empat','25000',1,NULL,'ya',3,4),
(4,3,22,'Hijab Cokelat Simple','30000',1,NULL,'ya',1,2),
(5,3,22,'Hijab Cokelat Simple','30000',1,NULL,'ya',2,2),
(6,4,22,'Hijab Cokelat Simple','30000',1,NULL,'ya',2,3),
(7,4,22,'Hijab Cokelat Simple','30000',1,NULL,'ya',3,4),
(8,4,22,'Hijab Cokelat Simple','30000',1,NULL,'ya',4,4),
(9,4,22,'Hijab Cokelat Simple','30000',1,NULL,'ya',1,2),
(10,5,22,'Hijab Cokelat Simple','30000',1,NULL,'ya',2,3),
(11,5,14,'Jaket Bomber Navi','250000',1,NULL,'ya',2,3),
(12,6,22,'Hijab Cokelat Simple','30000',2,NULL,'ya',2,3),
(13,7,17,'Jaket Levis Wanita','200000',1,NULL,NULL,NULL,NULL),
(14,8,21,'Hijab Hitam Simple','25000',2,NULL,NULL,NULL,NULL),
(15,9,22,'Hijab Cokelat Simple','30000',3,NULL,'ya',2,4),
(16,10,15,'Jaket Bomber Pink Wanita','250000',6,NULL,'tidak',NULL,NULL),
(17,11,24,'Hijab hitam','45000',2,NULL,'ya',2,3),
(18,12,20,'Jaket Bomber Pria Hitam','230000',2,NULL,'tidak',NULL,NULL),
(19,13,23,'Hijab Simple Segi Empat','25000',1,NULL,'ya',4,4),
(20,14,20,'Jaket Bomber Pria Hitam','230000',2,NULL,'tidak',NULL,NULL),
(21,14,14,'Jaket Bomber Navi','250000',2,NULL,'tidak',NULL,NULL),
(22,14,23,'Hijab Simple Segi Empat','25000',2,NULL,'ya',1,2),
(23,15,24,'Hijab hitam','45000',1,NULL,'ya',2,4),
(24,15,24,'Hijab hitam','45000',1,NULL,'ya',3,4);

/*Table structure for table `produk` */

DROP TABLE IF EXISTS `produk`;

CREATE TABLE `produk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `slug` text NOT NULL,
  `deskripsi_singkat` varchar(128) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `gambar` text NOT NULL,
  `harga_lama` bigint(20) DEFAULT NULL,
  `harga_baru` bigint(20) NOT NULL,
  `kuantitas` int(11) NOT NULL,
  `kategori` int(11) NOT NULL,
  `brand` int(11) NOT NULL,
  `variasi` int(1) DEFAULT NULL COMMENT '1= aktif, 0= tidak aktif',
  `warna` varchar(258) DEFAULT NULL,
  `ukuran` varchar(258) DEFAULT NULL,
  `berat` varchar(128) DEFAULT NULL,
  `user` varchar(128) NOT NULL,
  `lihat` int(11) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `date_update` datetime DEFAULT NULL,
  `publish` varchar(1) NOT NULL COMMENT 'publish = 1, unpublish = 0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;

/*Data for the table `produk` */

insert  into `produk`(`id`,`title`,`slug`,`deskripsi_singkat`,`deskripsi`,`gambar`,`harga_lama`,`harga_baru`,`kuantitas`,`kategori`,`brand`,`variasi`,`warna`,`ukuran`,`berat`,`user`,`lihat`,`date_created`,`date_update`,`publish`) values 
(1,'Kaos Putih Dingin','kaos-putih-dingin','Kaos Putih Dingin','&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi mattis consequat magna sed molestie. Vivamus at orci ornare, lacinia lacus quis, rhoncus augue. Donec ac ullamcorper nisi, in sagittis diam. In finibus, ante eu consequat pellentesque, nisi lectus auctor massa, id condimentum mi ex eget diam. Donec rhoncus iaculis neque eget viverra. Ut dapibus libero ultrices varius posuere. Vestibulum finibus accumsan laoreet. Nulla in metus risus. Proin vehicula efficitur luctus. Proin vulputate orci vitae elit efficitur, non ullamcorper libero finibus. Mauris nec orci gravida, interdum leo et, laoreet lorem. Fusce ornare molestie ex non accumsan. Proin consectetur tellus ornare tortor ultricies, in porta augue dictum. Curabitur quis tortor et lorem aliquet fringilla. Morbi vel felis mi.&lt;/p&gt;','f17eb39f9a1f554d4eb0fc69bb1a8251.png',40000,35000,5,5,1,1,'1,2,3','1,2','1000','vanrezkysadewa1@gmail.com',NULL,'2020-10-24 11:26:21','2020-11-10 19:28:45','1'),
(2,'Kaos Oblong Cokelat','kaos-oblong-cokelat','Kaos Oblong Cokelat Dingin','&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi mattis consequat magna sed molestie. Vivamus at orci ornare, lacinia lacus quis, rhoncus augue. Donec ac ullamcorper nisi, in sagittis diam. In finibus, ante eu consequat pellentesque, nisi lectus auctor massa, id condimentum mi ex eget diam. Donec rhoncus iaculis neque eget viverra. Ut dapibus libero ultrices varius posuere. Vestibulum finibus accumsan laoreet. Nulla in metus risus. Proin vehicula efficitur luctus. Proin vulputate orci vitae elit efficitur, non ullamcorper libero finibus. Mauris nec orci gravida, interdum leo et, laoreet lorem. Fusce ornare molestie ex non accumsan. Proin consectetur tellus ornare tortor ultricies, in porta augue dictum. Curabitur quis tortor et lorem aliquet fringilla. Morbi vel felis mi.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi mattis consequat magna sed molestie. Vivamus at orci ornare, lacinia lacus quis, rhoncus augue. Donec ac ullamcorper nisi, in sagittis diam. In finibus, ante eu consequat pellentesque, nisi lectus auctor massa, id condimentum mi ex eget diam. Donec rhoncus iaculis neque eget viverra. Ut dapibus libero ultrices varius posuere. Vestibulum finibus accumsan laoreet. Nulla in metus risus. Proin vehicula efficitur luctus. Proin vulputate orci vitae elit efficitur, non ullamcorper libero finibus. Mauris nec orci gravida, interdum leo et, laoreet lorem. Fusce ornare molestie ex non accumsan. Proin consectetur tellus ornare tortor ultricies, in porta augue dictum. Curabitur quis tortor et lorem aliquet fringilla. Morbi vel felis mi.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Donec maximus ante ut elit convallis viverra. Nulla tempus, augue fermentum accumsan ullamcorper, mi ipsum tincidunt metus, in laoreet ligula justo id urna. In eu fringilla elit, in pulvinar sem. Praesent maximus, mi sed pharetra sagittis, arcu ante finibus arcu, quis auctor velit dolor et nibh. Nunc vulputate eros cursus, pharetra enim quis, tincidunt velit. Suspendisse quam diam, gravida et mi et, dignissim gravida tortor. In cursus mauris faucibus lorem porta congue. Nunc sit amet erat tincidunt, rutrum felis id, commodo sem. Aliquam vel ante erat. Duis interdum euismod hendrerit. Nunc eu porttitor sem. Vivamus sed pellentesque mi.&lt;/p&gt;','e9a93299afbd27eb3475325933f3dad6.png',40000,35000,4,5,1,0,NULL,NULL,'100','vanrezkysadewa1@gmail.com',NULL,'2020-10-24 11:29:49','2020-11-10 19:28:57','1'),
(3,'Kaos oblong hitam','kaos-oblong-hitam','Kaos Oblong Hitam Dingin','&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi mattis consequat magna sed molestie. Vivamus at orci ornare, lacinia lacus quis, rhoncus augue. Donec ac ullamcorper nisi, in sagittis diam. In finibus, ante eu consequat pellentesque, nisi lectus auctor massa, id condimentum mi ex eget diam. Donec rhoncus iaculis neque eget viverra. Ut dapibus libero ultrices varius posuere. Vestibulum finibus accumsan laoreet. Nulla in metus risus. Proin vehicula efficitur luctus. Proin vulputate orci vitae elit efficitur, non ullamcorper libero finibus. Mauris nec orci gravida, interdum leo et, laoreet lorem. Fusce ornare molestie ex non accumsan. Proin consectetur tellus ornare tortor ultricies, in porta augue dictum. Curabitur quis tortor et lorem aliquet fringilla. Morbi vel felis mi.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi mattis consequat magna sed molestie. Vivamus at orci ornare, lacinia lacus quis, rhoncus augue. Donec ac ullamcorper nisi, in sagittis diam. In finibus, ante eu consequat pellentesque, nisi lectus auctor massa, id condimentum mi ex eget diam. Donec rhoncus iaculis neque eget viverra. Ut dapibus libero ultrices varius posuere. Vestibulum finibus accumsan laoreet. Nulla in metus risus. Proin vehicula efficitur luctus. Proin vulputate orci vitae elit efficitur, non ullamcorper libero finibus. Mauris nec orci gravida, interdum leo et, laoreet lorem. Fusce ornare molestie ex non accumsan. Proin consectetur tellus ornare tortor ultricies, in porta augue dictum. Curabitur quis tortor et lorem aliquet fringilla. Morbi vel felis mi.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Donec maximus ante ut elit convallis viverra. Nulla tempus, augue fermentum accumsan ullamcorper, mi ipsum tincidunt metus, in laoreet ligula justo id urna. In eu fringilla elit, in pulvinar sem. Praesent maximus, mi sed pharetra sagittis, arcu ante finibus arcu, quis auctor velit dolor et nibh. Nunc vulputate eros cursus, pharetra enim quis, tincidunt velit. Suspendisse quam diam, gravida et mi et, dignissim gravida tortor. In cursus mauris faucibus lorem porta congue. Nunc sit amet erat tincidunt, rutrum felis id, commodo sem. Aliquam vel ante erat. Duis interdum euismod hendrerit. Nunc eu porttitor sem. Vivamus sed pellentesque mi.&lt;/p&gt;','3da746d6a607b5457e33fafd3997d974.png',45000,35000,5,5,1,0,NULL,NULL,'100','vanrezkysadewa1@gmail.com',NULL,'2020-10-24 11:34:36','2020-11-10 19:28:33','1'),
(4,'Kemeja Biru Dongker','kemeja-biru-dongker','Kemeja Biru Dongker','','f9721bcd505f4c45faa3d07af5e73c17.jpg',80000,60000,100,3,1,0,NULL,NULL,'100','vanrezkysadewa1@gmail.com',NULL,'2020-10-24 11:35:39','2020-11-10 19:29:13','1'),
(5,'Kemeja Putih Koko','kemeja-putih-koko','Kemeja Putih Koko','&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi mattis consequat magna sed molestie. Vivamus at orci ornare, lacinia lacus quis, rhoncus augue. Donec ac ullamcorper nisi, in sagittis diam. In finibus, ante eu consequat pellentesque, nisi lectus auctor massa, id condimentum mi ex eget diam. Donec rhoncus iaculis neque eget viverra. Ut dapibus libero ultrices varius posuere. Vestibulum finibus accumsan laoreet. Nulla in metus risus. Proin vehicula efficitur luctus. Proin vulputate orci vitae elit efficitur, non ullamcorper libero finibus. Mauris nec orci gravida, interdum leo et, laoreet lorem. Fusce ornare molestie ex non accumsan. Proin consectetur tellus ornare tortor ultricies, in porta augue dictum. Curabitur quis tortor et lorem aliquet fringilla. Morbi vel felis mi.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi mattis consequat magna sed molestie. Vivamus at orci ornare, lacinia lacus quis, rhoncus augue. Donec ac ullamcorper nisi, in sagittis diam. In finibus, ante eu consequat pellentesque, nisi lectus auctor massa, id condimentum mi ex eget diam. Donec rhoncus iaculis neque eget viverra. Ut dapibus libero ultrices varius posuere. Vestibulum finibus accumsan laoreet. Nulla in metus risus. Proin vehicula efficitur luctus. Proin vulputate orci vitae elit efficitur, non ullamcorper libero finibus. Mauris nec orci gravida, interdum leo et, laoreet lorem. Fusce ornare molestie ex non accumsan. Proin consectetur tellus ornare tortor ultricies, in porta augue dictum. Curabitur quis tortor et lorem aliquet fringilla. Morbi vel felis mi.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Donec maximus ante ut elit convallis viverra. Nulla tempus, augue fermentum accumsan ullamcorper, mi ipsum tincidunt metus, in laoreet ligula justo id urna. In eu fringilla elit, in pulvinar sem. Praesent maximus, mi sed pharetra sagittis, arcu ante finibus arcu, quis auctor velit dolor et nibh. Nunc vulputate eros cursus, pharetra enim quis, tincidunt velit. Suspendisse quam diam, gravida et mi et, dignissim gravida tortor. In cursus mauris faucibus lorem porta congue. Nunc sit amet erat tincidunt, rutrum felis id, commodo sem. Aliquam vel ante erat. Duis interdum euismod hendrerit. Nunc eu porttitor sem. Vivamus sed pellentesque mi.&lt;/p&gt;','e9bc2f188686a8ff4a20cd88734acfe0.jpg',80000,75000,4,3,1,0,NULL,NULL,'100','vanrezkysadewa1@gmail.com',NULL,'2020-10-24 11:42:02','2020-11-10 19:29:34','1'),
(6,'Set Peralatan Dapur Biru','set-peralatan-dapur-biru','Set Peralatan Dapur Biru Super Lengkap',NULL,'96f02119e9e1015acdcf0b6f8a4ac40f.jpg',150000,120000,1,6,3,NULL,NULL,NULL,NULL,'vanrezkysadewa1@gmail.com',NULL,'2020-10-24 11:53:07',NULL,'1'),
(7,'Set Perabot Lengkap Biru Muda','set-perabot-lengkap-biru-muda','Set Perabot Lengkap Biru Muda Tahan Panas','','43688b87748e5525855d8565de1aedb8.jpg',170000,150000,2,6,3,NULL,NULL,NULL,NULL,'vanrezkysadewa1@gmail.com',NULL,'2020-10-24 11:55:42',NULL,'1'),
(8,'Kemeja Koko Hitam','kemeja-koko-hitam','Kemeja Koko Hitam Super Lembut','&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi mattis consequat magna sed molestie. Vivamus at orci ornare, lacinia lacus quis, rhoncus augue. Donec ac ullamcorper nisi, in sagittis diam. In finibus, ante eu consequat pellentesque, nisi lectus auctor massa, id condimentum mi ex eget diam. Donec rhoncus iaculis neque eget viverra. Ut dapibus libero ultrices varius posuere. Vestibulum finibus accumsan laoreet. Nulla in metus risus. Proin vehicula efficitur luctus. Proin vulputate orci vitae elit efficitur, non ullamcorper libero finibus. Mauris nec orci gravida, interdum leo et, laoreet lorem. Fusce ornare molestie ex non accumsan. Proin consectetur tellus ornare tortor ultricies, in porta augue dictum. Curabitur quis tortor et lorem aliquet fringilla. Morbi vel felis mi.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi mattis consequat magna sed molestie. Vivamus at orci ornare, lacinia lacus quis, rhoncus augue. Donec ac ullamcorper nisi, in sagittis diam. In finibus, ante eu consequat pellentesque, nisi lectus auctor massa, id condimentum mi ex eget diam. Donec rhoncus iaculis neque eget viverra. Ut dapibus libero ultrices varius posuere. Vestibulum finibus accumsan laoreet. Nulla in metus risus. Proin vehicula efficitur luctus. Proin vulputate orci vitae elit efficitur, non ullamcorper libero finibus. Mauris nec orci gravida, interdum leo et, laoreet lorem. Fusce ornare molestie ex non accumsan. Proin consectetur tellus ornare tortor ultricies, in porta augue dictum. Curabitur quis tortor et lorem aliquet fringilla. Morbi vel felis mi.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Donec maximus ante ut elit convallis viverra. Nulla tempus, augue fermentum accumsan ullamcorper, mi ipsum tincidunt metus, in laoreet ligula justo id urna. In eu fringilla elit, in pulvinar sem. Praesent maximus, mi sed pharetra sagittis, arcu ante finibus arcu, quis auctor velit dolor et nibh. Nunc vulputate eros cursus, pharetra enim quis, tincidunt velit. Suspendisse quam diam, gravida et mi et, dignissim gravida tortor. In cursus mauris faucibus lorem porta congue. Nunc sit amet erat tincidunt, rutrum felis id, commodo sem. Aliquam vel ante erat. Duis interdum euismod hendrerit. Nunc eu porttitor sem. Vivamus sed pellentesque mi.&lt;/p&gt;','ad383707ecca55f71a32ca5ebf8a0b47.jpg',89000,85000,250,3,1,NULL,NULL,NULL,NULL,'vanrezkysadewa1@gmail.com',NULL,'2020-10-24 11:58:35','2020-10-31 07:07:35','1'),
(9,'Hjiab Simple Ungu','hjiab-simple-ungu','Hjiab Simple Ungu Lembut Tidak Panas','','8140e6449bc1f96a7fe5c3ea53206b1d.png',30000,25000,50,2,1,0,NULL,NULL,'100','vanrezkysadewa1@gmail.com',NULL,'2020-10-24 11:59:54','2020-11-10 19:28:17','1'),
(10,'Set Perabot  Piknik Lengkap','set-perabot-piknik-lengkap','Set Perabot  Piknik Lengkap','','199f7972f246d5b097487a0ced29ddd6.jpg',200000,160000,249,6,1,0,NULL,NULL,'100','vanrezkysadewa1@gmail.com',NULL,'2020-10-24 12:00:52','2020-11-10 19:28:07','1'),
(11,'Kemeja Koko Maroon','kemeja-koko-maroon','Kemeja Koko Maroon','','6968eb175d910e3d4b261a596c113992.jpg',80000,70000,20,3,1,0,NULL,NULL,'100','vanrezkysadewa1@gmail.com',NULL,'2020-10-24 12:03:10','2020-11-10 19:27:57','1'),
(12,'Kaos Oblong Katun Hitam','kaos-oblong-katun-hitam','Kaos Oblong Katun Hitam Dingin','','096927c2f6358102febb22488e29576e.jpg',70000,60000,20,1,1,0,NULL,NULL,'100','vanrezkysadewa1@gmail.com',NULL,'2020-10-24 12:03:41','2020-11-10 19:27:33','1'),
(13,'Hijab Simple Pink','hijab-simple-pink','Hijab Simple Pink','','56514e87bdbc252844aef88015e72687.png',50000,30000,20,1,1,0,NULL,NULL,'100','vanrezkysadewa1@gmail.com',NULL,'2020-10-24 12:04:23','2020-11-10 19:27:23','1'),
(14,'Jaket Bomber Navi','jaket-bomber-naviasdasdsadad','Jaket Bomber Super Keren Navi','','842044c7f828d1c206983c1b8920e1f9.png',350000,250000,17,1,1,0,NULL,NULL,'100','vanrezkysadewa1@gmail.com',NULL,'2020-10-24 12:05:20','2020-11-10 19:27:11','1'),
(15,'Jaket Bomber Pink Wanita','jaket-bomber-pink-wanita','Jaket Bomber Pink Wanita','','019854664eb5182aea35c052f6e30ce6.png',350000,250000,14,1,2,0,NULL,NULL,'100','vanrezkysadewa1@gmail.com',NULL,'2020-10-24 12:06:02','2020-11-10 19:26:57','1'),
(17,'Jaket Levis Wanita','jaket-levis-wanita','Jaket Levis Wanita Tahan Lama Bahan Adem','','a67ff74687a1c8fb200d3b8c650d228f.png',300000,200000,17,1,2,0,NULL,NULL,'600','vanrezkysadewa1@gmail.com',NULL,'2020-10-24 12:07:42','2020-11-10 19:24:25','1'),
(18,'Jaket Bomber Hitam Wanita model bergaya gaya haasd adad asdas asd','jaket-bomber-hitam-wanita-model-bergaya-gaya-haasd-adad-asdas-asd','Jaket Bomber Hitam Wanita Tidak Panas','','90862b8c3e0f8b35bcddc68123274082.png',300000,200000,20,1,2,0,NULL,NULL,'500','vanrezkysadewa1@gmail.com',NULL,'2020-10-24 12:08:28','2020-11-12 23:39:06','1'),
(19,'Jaket Bomber Pria Marron','jaket-bomber-pria-marron','Jaket Bomber Pria Marron','','51061c4b4feb249dd2ae859f5a40068f.png',300000,220000,20,1,2,0,NULL,NULL,'400','vanrezkysadewa1@gmail.com',NULL,'2020-10-24 12:09:04','2020-11-10 19:24:04','1'),
(20,'Jaket Bomber Pria Hitam','jaket-bomber-pria-hitam','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi mattis consequat magna sed molestie. Vivamus at orci ornare, laci','&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi mattis consequat magna sed molestie. Vivamus at orci ornare, laci&lt;br&gt;&lt;/p&gt;','64d5d15a9bd0ebdb14310f0fbf7f2264.png',320000,230000,16,1,2,0,NULL,NULL,'300','vanrezkysadewa1@gmail.com',NULL,'2020-10-24 12:09:52','2020-11-15 13:48:55','1'),
(21,'Hijab Hitam Simple','hijab-hitam-simple','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi mattis consequat magna sed molestie. Vivamus at orci ornare, laci','','681c254e8d19a432bc8549fcedc6b66f.jpg',35000,25000,19,2,1,0,NULL,NULL,'150','vanrezkysadewa1@gmail.com',NULL,'2020-10-24 12:12:20','2020-11-15 13:48:39','1'),
(22,'Hijab Cokelat Simple','hijab-cokelat-simple','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi mattis consequat magna sed molestie. Vivamus at orci ornare, laci','&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi mattis consequat magna sed molestie. Vivamus at orci ornare, lacinia lacus quis, rhoncus augue. Donec ac ullamcorper nisi, in sagittis diam. In finibus, ante eu consequat pellentesque, nisi lectus auctor massa, id condimentum mi ex eget diam. Donec rhoncus iaculis neque eget viverra. Ut dapibus libero ultrices varius posuere. Vestibulum finibus accumsan laoreet. Nulla in metus risus. Proin vehicula efficitur luctus. Proin vulputate orci vitae elit efficitur, non ullamcorper libero finibus. Mauris nec orci gravida, interdum leo et, laoreet lorem. Fusce ornare molestie ex non accumsan. Proin consectetur tellus ornare tortor ultricies, in porta augue dictum. Curabitur quis tortor et lorem aliquet fringilla. Morbi vel felis mi.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi mattis consequat magna sed molestie. Vivamus at orci ornare, lacinia lacus quis, rhoncus augue. Donec ac ullamcorper nisi, in sagittis diam. In finibus, ante eu consequat pellentesque, nisi lectus auctor massa, id condimentum mi ex eget diam. Donec rhoncus iaculis neque eget viverra. Ut dapibus libero ultrices varius posuere. Vestibulum finibus accumsan laoreet. Nulla in metus risus. Proin vehicula efficitur luctus. Proin vulputate orci vitae elit efficitur, non ullamcorper libero finibus. Mauris nec orci gravida, interdum leo et, laoreet lorem. Fusce ornare molestie ex non accumsan. Proin consectetur tellus ornare tortor ultricies, in porta augue dictum. Curabitur quis tortor et lorem aliquet fringilla. Morbi vel felis mi.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Donec maximus ante ut elit convallis viverra. Nulla tempus, augue fermentum accumsan ullamcorper, mi ipsum tincidunt metus, in laoreet ligula justo id urna. In eu fringilla elit, in pulvinar sem. Praesent maximus, mi sed pharetra sagittis, arcu ante finibus arcu, quis auctor velit dolor et nibh. Nunc vulputate eros cursus, pharetra enim quis, tincidunt velit. Suspendisse quam diam, gravida et mi et, dignissim gravida tortor. In cursus mauris faucibus lorem porta congue. Nunc sit amet erat tincidunt, rutrum felis id, commodo sem. Aliquam vel ante erat. Duis interdum euismod hendrerit. Nunc eu porttitor sem. Vivamus sed pellentesque mi.&lt;/p&gt;','54ffeff3a3e3aa44f53f1777e7ab9138.jpg',35000,30000,38,2,1,1,'1,2,3,4','1,2,3,4','250','vanrezkysadewa1@gmail.com',NULL,'2020-10-24 12:13:15','2020-11-15 13:48:17','1'),
(23,'Hijab Simple Segi Empat','hijab-simple-segi-empat','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi mattis consequat magna sed molestie. Vivamus at orci ornare, laci','&lt;p&gt;&lt;span xss=removed&gt;Jilbab atau yang kadang juga disebut dengan kerudung merupakan istilah yang merujuk pada pelindung kepala yang digunakan oleh wanita muslimah dengan tujuan menutupi aurat nya atau bagian tubuh yang tidak boleh ia tampakkan kepada yang bukan termasuk kedalam Mahram nya&lt;/span&gt;&lt;br&gt;&lt;/p&gt;','381d8e0ed4509b3efd0a3578936d26f8.png',36000,25000,-1,2,4,1,'1,3,4,5,9,25,26,32','1,2,3,4','250','vanrezkysadewa1@gmail.com',NULL,'2020-11-08 12:14:38','2020-11-15 13:48:30','1'),
(24,'Hijab hitam','hijab-hitam','hijaasd laksdlasdja ldakld lsajda hlaskdklsad','&lt;p&gt;ahakdjnad jasdna sldk&lt;/p&gt;','4649fb8468475199a4b444664fc8e491.jpg',50000,45000,96,2,1,1,'1,2,3','2,3,4','200','vanrezkysadewa1@gmail.com',NULL,'2020-11-21 10:09:52',NULL,'1');

/*Table structure for table `rajaongkir_kurir` */

DROP TABLE IF EXISTS `rajaongkir_kurir`;

CREATE TABLE `rajaongkir_kurir` (
  `id` varchar(20) NOT NULL,
  `kurir` varchar(128) NOT NULL,
  `tipe` enum('starter','basic','pro') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `rajaongkir_kurir` */

insert  into `rajaongkir_kurir`(`id`,`kurir`,`tipe`) values 
('jne','JNE','starter'),
('pos','Pos Indonesia','starter'),
('tiki','TIKI','starter');

/*Table structure for table `setting` */

DROP TABLE IF EXISTS `setting`;

CREATE TABLE `setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `logo` varchar(128) DEFAULT NULL,
  `favicon` varchar(128) DEFAULT NULL,
  `copyright` varchar(128) DEFAULT NULL,
  `kontak1` varchar(16) DEFAULT NULL,
  `kontak2` varchar(16) DEFAULT NULL,
  `facebook_link` varchar(128) DEFAULT NULL,
  `instagram_link` varchar(128) DEFAULT NULL,
  `twitter_link` varchar(128) DEFAULT NULL,
  `email` varchar(128) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `deskripsi` varchar(150) DEFAULT NULL,
  `keyword` text DEFAULT NULL,
  `google_site_verification` tinytext DEFAULT NULL,
  `provinsi` int(11) DEFAULT NULL,
  `kabupaten` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `setting` */

insert  into `setting`(`id`,`logo`,`favicon`,`copyright`,`kontak1`,`kontak2`,`facebook_link`,`instagram_link`,`twitter_link`,`email`,`nama`,`deskripsi`,`keyword`,`google_site_verification`,`provinsi`,`kabupaten`) values 
(1,'86e5f52457413ac12336657b17ccea12.png','a2a5e4537bafa269a7a3b67a42bc2929.png','Vanrezky Sadewa','085272582448','082268262017','https://facebook.com/','https://instagram.com/','https://twitter.m','vanrezkysadewa1@gmail.com','Pasar Jempol','Pasarjempol.com merupakan website jualan online','asdasdasdad',NULL,26,350);

/*Table structure for table `setting_limit` */

DROP TABLE IF EXISTS `setting_limit`;

CREATE TABLE `setting_limit` (
  `id` tinyint(1) NOT NULL,
  `produk_terbaru` int(2) NOT NULL,
  `produk_pilihan` int(2) NOT NULL,
  `brand` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `setting_limit` */

insert  into `setting_limit`(`id`,`produk_terbaru`,`produk_pilihan`,`brand`) values 
(1,12,6,6);

/*Table structure for table `slider` */

DROP TABLE IF EXISTS `slider`;

CREATE TABLE `slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slider` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

/*Data for the table `slider` */

insert  into `slider`(`id`,`slider`) values 
(1,'816c51107cbc64c5ef6f1b3616087007.jpg'),
(2,'d063c1fe0075cf4084ec394b3b6f17ce.jpg'),
(3,'ff476b1c3a4f8fdfe9113b8e0291553e.jpg'),
(4,NULL),
(5,NULL),
(6,'61feabcc86189454654f09e0580b4b89.jpg');

/*Table structure for table `ukuran` */

DROP TABLE IF EXISTS `ukuran`;

CREATE TABLE `ukuran` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ukuran` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

/*Data for the table `ukuran` */

insert  into `ukuran`(`id`,`ukuran`) values 
(1,'S'),
(2,'M'),
(3,'L'),
(4,'XL'),
(5,'XXL'),
(6,'XXXL'),
(7,'XXXXL');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(248) NOT NULL,
  `role_id` int(1) NOT NULL,
  `aktif` int(1) NOT NULL,
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

/*Data for the table `user` */

insert  into `user`(`id`,`nama`,`email`,`image`,`password`,`role_id`,`aktif`,`date_created`) values 
(1,'vanrezky','vanrezkysadewa1@gmail.com','default.png','$2y$10$endEfS0z/knoB4Q8mANvHec32jo9231U3xZmoMaCQBAlyFDnvtXbm',1,1,'0000-00-00 00:00:00'),
(17,'ahmad','ahmadzamsuri86@gmail.com','default.png','$2y$10$MMwAhtuF0e9OC2btfeO1WenLgRZ/P1ypguOP8OhDjhUdZaifMkIbm',1,1,'2021-01-07 20:29:44');

/*Table structure for table `user_role` */

DROP TABLE IF EXISTS `user_role`;

CREATE TABLE `user_role` (
  `id_role` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(25) NOT NULL,
  PRIMARY KEY (`id_role`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `user_role` */

insert  into `user_role`(`id_role`,`role`) values 
(1,'Administrator');

/*Table structure for table `warna` */

DROP TABLE IF EXISTS `warna`;

CREATE TABLE `warna` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `warna` varchar(25) NOT NULL,
  `hex` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4;

/*Data for the table `warna` */

insert  into `warna`(`id`,`warna`,`hex`) values 
(1,'Merah','#db0f2e'),
(2,'Putih','#fafafa'),
(3,'Hijau','#22d60b'),
(4,'Biru','#1f0bd6'),
(5,'Hitam',NULL),
(6,'Kuning',NULL),
(7,'Oranye',NULL),
(8,'Ungu',NULL),
(9,'Cokelat',NULL),
(10,'Merah Muda',NULL),
(11,'Abu Abu',NULL),
(12,'Abu-abu tua',NULL),
(13,'Merah tua',NULL),
(14,'Kuning tua',NULL),
(15,'Hijau tua',NULL),
(16,'Ungu tua',NULL),
(17,'Cokelat tua',NULL),
(18,'Kuning muda',NULL),
(19,'Abu-abu muda',NULL),
(20,'Hijau muda',NULL),
(21,'Ungu muda',NULL),
(22,'Cokelat muda',NULL),
(23,'Magenta',NULL),
(24,'Nila',NULL),
(25,'Biru tua',NULL),
(26,'Biru langit',NULL),
(27,'Merah tua terang',NULL),
(28,' Kuning sawo',NULL),
(29,'kuning aprikot',NULL),
(30,' Kuning pucat',NULL),
(31,'Emas',NULL),
(32,'Biru navy',NULL),
(33,'Biru air',NULL),
(34,'Abu-abu kecoklatan',NULL),
(35,'Ungu kemerahan gelap',NULL),
(36,'Merah marun',NULL),
(37,'Merah terang',NULL),
(38,'Krem',NULL),
(39,'Ungu kecokelatan',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
