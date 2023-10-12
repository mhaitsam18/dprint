-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2021 at 05:35 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `digital_print`
--

-- --------------------------------------------------------

--
-- Table structure for table `email_conf`
--

CREATE TABLE `email_conf` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_conf`
--

INSERT INTO `email_conf` (`id`, `email`, `password`) VALUES
(1, 'admndprnt@gmail.com', 'S4N6atAman!');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id_feedback` int(11) NOT NULL,
  `id_pesanan` int(11) DEFAULT NULL,
  `nama_pemesan` varchar(250) NOT NULL,
  `bintang` int(11) DEFAULT 5,
  `keterangan` varchar(250) NOT NULL,
  `foto_hasil` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id_feedback`, `id_pesanan`, `nama_pemesan`, `bintang`, `keterangan`, `foto_hasil`) VALUES
(21, 108, 'ikocakk', 5, 'barang sesuai', 'alma.jpg'),
(23, 111, 'ikocakk', 5, 'barang mantap', 'kaos1.jpg'),
(24, 119, 'wekok', 5, 'pesanan sesuai', 'alma1.jpg'),
(25, 123, 'wekok', 5, 'pesanan sesuai', 'logo3.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_bayar`
--

CREATE TABLE `jenis_bayar` (
  `id` int(11) NOT NULL,
  `jenis_bayar` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis_bayar`
--

INSERT INTO `jenis_bayar` (`id`, `jenis_bayar`) VALUES
(1, 'Lunas'),
(2, 'DP');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(250) NOT NULL,
  `gambar_kategori` varchar(250) NOT NULL,
  `list_paket` varchar(250) NOT NULL,
  `mulai_harga` varchar(250) DEFAULT '0',
  `deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `gambar_kategori`, `list_paket`, `mulai_harga`, `deskripsi`) VALUES
(1, 'TShirt', 'tshirt.jpeg', 'tshirt.png', '125.000 - 175.000', 'Koas polos lengan pendek kaos polos pria wanita casual M L XL XXL XXXL\r\nKenapa Kepuasan Kakak TERJAMIN \r\n\r\n-) Satu-Satunya yang Menggunakan Bahan Asli berkwalitas\r\n\r\n-) Jahitan Sudah Menggunakan Jahitan Rantai \r\n*TER-Standarisasi Jahitan Distro\r\n\r\n-) RIB / Kerah Leher Menggunakan Bahan Sangat Tebal , Sehingga Tidak Gampang Rusak / Longgar\r\n\r\n-) Tag Label Ukuran Kami Berbeda dari yang lain \r\n\r\n-) Kami Menggunakan Jenis Benang Katun Kualitas Paling Atas, itulah Yang Membuat Kaos Kami Sangat Nyaman Digunakan\r\n'),
(2, 'Almamater', 'almet.jpeg', 'almamater.png', '125.000 - 175.000', 'Silahkan bagi anda yg masih bingung mau bikin JAS KAMPUS ALMAMATER SEKOLAH kami siap membantu minimal order 20 pcs\r\n\r\nBLAZER MODEL ALMAMATER KAMPUS\r\n\r\nBahan Istimewah : PUTRA MILL - TEBAL (Bahan Untuk Jas Formal)\r\nLapisan Dalam: Full FURING TEBAL (Mengkilap)\r\nKami Pakai KAIN KERAS Jadi Seperti JAS FORMAL Pundak Pakai BUSA - BAGUS\r\nSaku Dalam 1pcs.\r\nSaku Luar Bawah 2in1 (Bisa diKeluarin/diMasukin)\r\nCocok utk Acara FORMAL dan SEMI FORMAL'),
(3, 'Jaket', 'jaket.jpeg', 'jaket.png', '170.000 - 300.000', 'Jaket, siapa sih yang enggak tau dengan jaket? Jaket merupakan salah satu pakaian hangat untuk melindungi dari hawa musim dingin atau bisa melindungi dari teriknya matahari. Jaket sendiri memiliki karakteristik khusus, biasanya jaket menggunakan zipper sebagai alat tambahan pendukungnya untuk membuka atau menutup jaket ini. Untuk bahan yang digunakan jaket sendiri juga sangat beragam, ada yang menggunakan bahan baby terry, cotton fleece. Atau juga menggunakan taslan. '),
(4, 'Polo', 'polo.jpeg', 'polo.png', '90.000 - 115.000', '“Jangan mudah percaya dengan produk serupa yang lebih murah.. Kualitas Anda menjadi jaminannya”\r\n(Boleh bandingkan Bahan dengan produk tetangga yang di bawah Harga kita)\r\n\r\nHarga Lokal Rasa IMPORT (bukan bahan Murahan)\r\n'),
(5, 'Hoodie', 'hoodie.jpeg', 'hoodie.png', '150.000 - 230.000', 'Jahitan Rapi dengan \r\n\r\nSize Lokal\r\n\r\nREAL PICTURE\r\n\r\nCocok untuk segala Aktifitas\r\n\r\nAdem di Pakai\r\nMenyerap keringat\r\n\r\nNyaman di pakai sehari-hari\r\n'),
(6, 'Kaos Lapangan', 'kaoslapangan.jpeg', 'rompi.png', '128.000 - 160.000', 'Bisa Di Gunakan Sehari\"\r\nElegan Dan Fashionable\r\nNyaman Di Pakai\r\nTerdapat Busa Di Bagian Siku Dan Bahu\r\nRib Tangan\r\nCocok Untuk Kegiatan Outdoor Lainnya'),
(7, 'Jersey', 'jersey.jpeg', 'jersey.png', '150.000 - 230.000', 'Jersey dengan bahan nyaman di pake\r\ndi jamin tidak akan luntur\r\nfullprinting sublime\r\npastikan ukuran sebelum membeli,kami sudah siapkan size chart\r\n\r\n\r\nSilahkan langsung saja order dengan warna dan nama punggung sesuai dengan keinginan. pengisian nama di keterangan pas begitu Order.\r\n\r\nLets order..\r\n\r\nSIZE CHART DEWASA LD X PJ (CM) :\r\nXS : 43 x 63\r\nS : 46 x 66\r\nM : 49,5 x 69\r\nL : 52 x 73\r\nXL : 55 x 76\r\n2XL : 58 x 79,5\r\n3XL : 61 x 82,5'),
(8, 'Jas', 'jaz.jpeg', 'jas.png', '125.000 - 175.000', '   << INFORMASI PRODUK >>\r\n\r\n- Bahan/Material = Higt Twiss / Semi wall ( Permukaan Bahan Halus,Tebal Dan Nyaman Saat Dipakai )\r\n- Bahan Dalam = Memakai Full Puring Asahi ( Mengkilap,Tidak Panas dan Tidak Gerah Saat Dipakai ) \r\n- Merek/Brand = ORIGINAL AR&B\r\n- Kancing Depan 2pcs Kancing Ujung Tangan 3pcs\r\n- Pundak/Bahu = Memakai Lapisan Busa \r\n- Saku Dalam 1 Buah Saku Luar 3 Buah ( Semua Saku Aktif )\r\n- Model Blazer Slimfit\r\n- Tangan Panjang ');

-- --------------------------------------------------------

--
-- Table structure for table `pakaiian`
--

CREATE TABLE `pakaiian` (
  `id_pakaiian` int(11) NOT NULL,
  `id_kategori` int(250) NOT NULL,
  `paket` varchar(250) NOT NULL,
  `kelas` varchar(250) NOT NULL,
  `jenis_bahan` varchar(250) NOT NULL,
  `jenis_bordir` varchar(250) NOT NULL,
  `kategori_jersey` varchar(250) NOT NULL,
  `jenis_sablon` varchar(250) NOT NULL,
  `ketebalan` varchar(250) NOT NULL,
  `harga` int(250) NOT NULL,
  `keterangan` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pakaiian`
--

INSERT INTO `pakaiian` (`id_pakaiian`, `id_kategori`, `paket`, `kelas`, `jenis_bahan`, `jenis_bordir`, `kategori_jersey`, `jenis_sablon`, `ketebalan`, `harga`, `keterangan`) VALUES
(12, 1, 'Paket Sultan 5', 'Sultan', 'Cotton Atom', '', '', 'Discharge', '30s', 75000, ''),
(13, 1, 'Paket Sultan 6', 'Sultan', 'Cotton Hoka', '', '', 'Plastisol', '24s', 75000, ''),
(14, 1, 'Paket Sultan 7', 'Sultan', 'Cotton Toto', '', '', 'Plastisol', '20s', 75000, ''),
(15, 1, 'Paket Sultan 8', 'Sultan', 'Cotton Galaxy', '', '', 'Rubber', '30s', 73000, ''),
(16, 1, 'Paket Sultan 9', 'Sultan', 'Cotton Bambu', '', '', 'Rubber', '30s', 73000, ''),
(17, 1, 'Paket Sultan 10', 'Sultan', 'Cotton Combad KN', '', '', 'Plastisol', '24s', 70000, ''),
(18, 1, 'Paket Sultan 11', 'Sultan', 'Cotton Hoka', '', '', 'Plastisol', '30s', 70000, ''),
(19, 1, 'Paket Medium 1', 'Medium', 'Cotton Toto', '', '', 'Rubber', '20s', 68000, ''),
(20, 1, 'Paket Medium 2', 'Medium', 'Cotton Toto', '', '', 'Plastisol', '30s', 65000, ''),
(21, 1, 'Paket Medium 3', 'Medium', 'Cotton Toto', '', '', 'Rubber', '24s', 63000, ''),
(22, 1, 'Paket Medium 4', 'Medium', 'Cotton Oscar', '', '', 'Plastisol', '24s', 60000, ''),
(23, 1, 'Paket Reguler 1', 'Reguler', 'Cotton Combad KN', '', '', 'Rubber', '30s', 58000, ''),
(24, 1, 'Paket Reguler 2', 'Reguler', 'Cotton Oscar', '', '', 'Plastisol', '30s', 55000, ''),
(25, 1, 'Paket Reguler 3', 'Reguler', 'Cotton Oscar', '', '', 'Rubber', '24s', 55000, ''),
(26, 1, 'Paket Reguler 4', 'Reguler', 'Cotton Oscar', '', '', 'Rubber', '30s', 50000, ''),
(27, 1, 'Paket Reguler 5', 'Reguler', 'Double PE', '', '', 'Rubber', '30s', 45000, ''),
(28, 1, 'Paket Reguler 6', 'Reguler', 'Double HI', '', '', 'Rubber', '30s', 30000, ''),
(29, 4, 'Paket Sultan 1', 'Sultan', 'Lacoste Cotton Pique', 'Bordir Comp', '', '', '', 115000, ''),
(30, 4, 'Paket Medium 1', 'Medium', 'Lacoste CVC', 'Bordir Comp', '', '', '', 100000, ''),
(31, 4, 'Paket Reguler 1', 'Reguler', 'Lacoste PE', 'Bordir Comp', '', '', '', 90000, ''),
(32, 6, 'Paket Sultan 1', 'Sultan', 'Hisofy Drill', 'Bordir Comp', '', '', '', 160000, ''),
(33, 6, 'Paket Sultan 2', 'Sultan', 'Taipan Japan Drill', 'Bordir Comp', '', '', '', 155000, ''),
(34, 6, 'Paket Sultan 3', 'Sultan', 'Ribstock Outdor Drill', 'Bordir Comp', '', '', '', 150000, ''),
(35, 6, 'Paket Sultan 4', 'Sultan', 'Nagata Jappan Drill', 'Bordir Comp', '', '', '', 150000, ''),
(36, 6, 'Paket Medium 1', 'Medium', 'Namura Jappan Drill', 'Bordir Comp', '', '', '', 140000, ''),
(37, 6, 'Paket Medium 2', 'Medium', 'Max Eagle American Drill', 'Bordir Comp', '', '', '', 135000, ''),
(38, 6, 'Paket Reguler 1', 'Reguler', 'Vegas American Drill', 'Bordir Comp', '', '', '', 130000, ''),
(39, 6, 'Paket Reguler 2', 'Reguler', 'Hobbes Amerincan Drill', 'Bordir Comp', '', '', '', 130000, ''),
(40, 6, 'Paket Reguler 3', 'Reguler', 'Kantata American Drill', 'Bordir Comp', '', '', '', 130000, ''),
(41, 6, 'Paket Reguler 4', 'Reguler', 'Oxford Standar Uniform', 'Bordir Comp', '', '', '', 128000, ''),
(42, 3, 'Paket Sultan 1', 'Sultan', 'JET BLACK/TWIST DRILL', 'Bordir Comp', '', '', '', 300000, ''),
(43, 3, 'Paket Sultan 2', 'Sultan', 'SERAT TWIST/TWIST DRILL', 'Bordir Comp', '', '', '', 290000, ''),
(44, 3, 'Paket Sultan 3', 'Sultan', 'HISOFY/HISOFY DRILL', '', '', '', '', 270000, ''),
(45, 3, 'Paket Sultan 4', 'Sultan', 'TAIPAN/JAPPAN DRILL', 'Bordir Comp', '', '', '', 265000, ''),
(46, 3, 'Paket Sultan 5', 'Sultan', 'NAGATA/JAPPAN DRILL', 'Bordir Comp', '', '', '', 250000, ''),
(47, 3, 'Paket Medium 1', 'Medium', 'NAMURA/JAPPAN DRILL', 'Bordir Comp', '', '', '', 225000, ''),
(48, 3, 'Paket Medium 2', 'Medium', 'RIPSTOCK/OUTDOR GEAR', 'Bordir Comp', '', '', '', 215000, ''),
(49, 3, 'Paket Medium 3', 'Medium', 'MAX EAGLE/AMMERICAN DRILL', 'Bordir Comp', '', '', '', 200000, ''),
(50, 3, 'Paket Reguler 1', 'Reguler', 'VEGAS/AMMEICAN DRILL', 'Bordir Comp', '', '', '', 190000, ''),
(53, 3, 'Paket Reguler 4', 'Reguler', 'Oxford Standar Uniform', 'Bordir Comp', '', '', '', 170000, ''),
(54, 8, 'Paket Sultan 1', 'Sultan', 'TOYOBO.COTTON', 'Bordir Comp', '', '', '', 175000, ''),
(55, 8, 'Paket Sultan 2', 'Sultan', 'PRINTKES/COTTON', 'Bordir Comp', '', '', '', 175000, ''),
(56, 8, 'Paket Sultan 3', 'Sultan', 'HISOFY/HISOFY DRILL', 'Bordir Comp', '', '', '', 175000, ''),
(57, 8, 'Paket Sultan 4', 'Sultan', 'TAIPAN/JAPPAN DRILL', 'Bordir Comp', '', '', '', 170000, ''),
(58, 8, 'Paket Sultan 5', 'Sultan', 'CLASICA/COTTON', 'Bordir Comp', '', '', '', 170000, ''),
(59, 8, 'Paket Sultan 6', 'Sultan', 'NAGATA/JAPPAN DRILL', 'Bordir Comp', '', '', '', 160000, ''),
(60, 8, 'Paket Medium 1', 'Medium', 'SANTUNG/COTTON', 'Bordir Comp', '', '', '', 155000, ''),
(61, 8, 'Paket Medium 2', 'Medium', 'WOLFIS/COTTON', 'Bordir Comp', '', '', '', 155000, ''),
(62, 8, 'Paket Medium 3', 'Medium', 'NAMURA/JAPPAN DRILL', 'Bordir Comp', '', '', '', 155000, ''),
(64, 8, 'Paket Medium 4', 'Medium', 'MAX EAGLE/AMMERICAN DRILL', 'Bordir Comp', '', '', '', 150000, ''),
(65, 8, 'Paket Reguler 1', 'Reguler', 'HOBES/AMMERICAN DRILL', 'Bordir Comp', '', '', '', 145000, ''),
(66, 8, 'Paket Reguler 2', 'Reguler', 'VEGAS/AMMEICAN DRILL', 'Bordir Comp', '', '', '', 140000, ''),
(67, 8, 'Paket Reguler 3', 'Reguler', 'Kantata American Drill', 'Bordir Comp', '', '', '', 130000, ''),
(68, 8, 'Paket Reguler 4', 'Reguler', 'Oxford Standar Uniform', 'Bordir Comp', '', '', '', 125000, ''),
(69, 2, 'Paket Sultan 1', 'Sultan', 'TOYOBO.COTTON', 'Bordir Comp', '', '', '', 175000, ''),
(70, 2, 'Paket Sultan 2', 'Sultan', 'PRINTKES/COTTON', 'Bordir Comp', '', '', '', 175000, ''),
(71, 2, 'Paket Sultan 3', 'Sultan', 'HISOFY/HISOFY DRILL', 'Bordir Comp', '', '', '', 175000, ''),
(72, 2, 'Paket Sultan 4', 'Sultan', 'TAIPAN/JAPPAN DRILL', 'Bordir Comp', '', '', '', 170000, ''),
(73, 2, 'Paket Sultan 5', 'Sultan', 'CLASICA/COTTON', 'Bordir Comp', '', '', '', 170000, ''),
(74, 2, 'Paket Sultan 6', 'Sultan', 'NAGATA/JAPPAN DRILL', 'Bordir Comp', '', '', '', 160000, ''),
(75, 2, 'Paket Medium 1', 'Medium', 'SANTUNG/COTTON', 'Bordir Comp', '', '', '', 155000, ''),
(76, 2, 'Paket Medium 2', 'Medium', 'WOLFIS/COTTON', 'Bordir Comp', '', '', '', 155000, ''),
(77, 2, 'Paket Medium 3', 'Medium', 'NAMURA/JAPPAN DRILL', 'Bordir Comp', '', '', '', 155000, ''),
(78, 2, 'Paket Medium 4', 'Medium', 'MAX EAGLE/AMMERICAN DRILL', 'Bordir Comp', '', '', '', 150000, ''),
(79, 2, 'Paket Reguler 1', 'Reguler', 'HOBES/AMMERICAN DRILL', 'Bordir Comp', '', '', '', 145000, ''),
(80, 2, 'Paket Reguler 2', 'Reguler', 'VEGAS/AMMEICAN DRILL', 'Bordir Comp', '', '', '', 140000, ''),
(81, 2, 'Paket Reguler 3', 'Reguler', 'Kantata American Drill', 'Bordir Comp', '', '', '', 130000, ''),
(82, 2, 'Paket Reguler 4', 'Reguler', 'Oxford Standar Uniform', 'Bordir Comp', '', '', '', 125000, ''),
(83, 7, 'Paket Sultan 1', 'Sultan', 'MTIIS/MICRODOT', '', '', 'PRINTING', '', 230000, 'KAOS FULL PRINT + CELANA FULL PRINT'),
(84, 7, 'Paket Sultan 2', 'Sultan', 'MTIIS/MICRODOT', '', '', 'PRINTING', '', 200000, 'KAOS PRINT DEPAN BELAKANG + CELANA FULL PRINT'),
(85, 7, 'Paket Sultan 3', 'Sultan', 'MTIIS/MICRODOT', '', '', 'PRINTING', '', 200000, 'KAOS FULL PRINT + CELANA POLIFLEX MAX 2 TITIK'),
(86, 7, 'Paket Sultan 4', 'Sultan', 'MTIIS/MICRODOT', '', '', 'PRINTING', '', 200000, 'KAOS FULL PRINT + CELANA POLOS'),
(87, 7, 'Paket Sultan 5', 'Sultan', 'MTIIS/MICRODOT', '', '', 'PRINTING', '', 190000, 'KAOS PRINT DEPAN  + CELANA FULL PRINT'),
(88, 7, 'Paket Sultan 6', 'Sultan', 'MTIIS/MICRODOT', '', '', 'PRINTING', '', 180000, 'KAOS PRINT DEPAN BELAKANG + CELANA POLIFLEX MAX 2 TITIK'),
(89, 7, 'Paket Sultan 7', 'Sultan', 'MTIIS/MICRODOT', '', '', 'PRINTING', '', 180000, 'KAOS FULL PRINT'),
(90, 7, 'Paket Medium 1', 'Medium', 'MTIIS/MICRODOT', '', '', 'PRINTING', '', 180000, 'KAOS PRINT DEPAN + CELANA POLIFLEX MAX 2 TITIK'),
(91, 7, 'Paket Medium 2', 'Medium', 'MTIIS/MICRODOT', '', '', 'PRINTING', '', 175000, 'KAOS PRINT DEPAN BELAKANG + CELANA POLOS'),
(92, 7, 'Paket Medium 3', 'Medium', 'MTIIS/MICRODOT', '', '', 'PRINTING', '', 175000, 'KAOS PRINT DEPAN + CELANA POLOS'),
(93, 7, 'Paket Medium 4', 'Medium', 'DRY FIT', '', '', 'PRINTING', '', 170000, 'SETELAN POLOS'),
(94, 7, 'Paket Medium 5', 'Medium', 'MTIIS/MICRODOT', '', '', 'PRINTING', '', 170000, 'KAOS BASKET FULL PRINT'),
(95, 7, 'Paket Medium 6', 'Medium', 'MTIIS/MICRODOT', '', '', 'PRINTING', '', 170000, 'KAOS PRINT DEPAN BELAKANG'),
(96, 7, 'Paket Reguler 1', 'Reguler', 'MTIIS/MICRODOT', '', '', 'PRINTING', '', 160000, 'CELANA FULL PRINT'),
(97, 7, 'Paket Reguler 2', 'Reguler', 'SERENA TEBAL', '', '', 'PRINTING', '', 155000, 'SETELAN POLOS'),
(98, 7, 'Paket Reguler 3', 'Reguler', 'MTIIS/MICRODOT', '', '', 'PRINTING', '', 150000, 'KAOS PRINT DEPAN '),
(99, 7, 'Paket Reguler 4', 'Reguler', 'MTIIS/MICRODOT', '', '', 'PRINTING', '', 150000, 'CELANA POLIFLEX 2 TITIK'),
(100, 7, 'Paket Reguler 5', 'Reguler', 'MTIIS/MICRODOT', '', '', 'PRINTING', '', 150000, 'CLANA POLIFLEX SATU TITIK'),
(101, 7, 'Paket Reguler 6', 'Reguler', 'MTIIS/MICRODOT', '', '', 'PRINTING', '', 150000, 'CELANA POLOSAN'),
(102, 5, 'Paket Sultan 1', 'Sultan', 'COTTON FLEECE', '', '', 'BORDIR KOMPUTER', '', 230000, ''),
(103, 5, 'Paket Sultan 2', 'Sultan', 'LOTTO', '', '', 'PRINTING', '', 200000, ''),
(104, 5, 'Paket Sultan 3', 'Sultan', 'DIADORA', '', '', 'PRINTING', '', 200000, ''),
(105, 5, 'Paket Sultan 4', 'Sultan', 'BABYTERI', '', '', 'BORDIR KOMPUTER', '', 200000, ''),
(106, 5, 'Paket Sultan 5', 'Sultan', 'DIADORA', '', '', 'BORDIR KOMPUTER', '', 190000, ''),
(107, 5, 'Paket Sultan 6', 'Sultan', 'COTTON FLEECE', '', '', 'BORDIR KOMPUTER', '', 180000, ''),
(108, 5, 'Paket Sultan 7', 'Sultan', 'COTTON FLEECE', '', '', 'PLASTISOL INK', '', 180000, ''),
(109, 5, 'Paket Sultan 8', 'Sultan', 'COTTON FLEECE', '', '', 'RUBBER INK', '', 180000, ''),
(110, 5, 'Paket Medium 1', 'Medium', 'DIADORA', '', '', 'PLASTISOL INK', '', 175000, ''),
(111, 5, 'Paket Medium 2', 'Medium', 'BABYTERI', '', '', 'PLASTISOL INK', '', 175000, ''),
(112, 5, 'Paket Medium 3', 'Medium', 'DIADORA', '', '', 'RUBBER INK', '', 170000, ''),
(113, 5, 'Paket Medium 4', 'Medium', 'TASLAN WATERPROOF', '', '', 'OIL BASSED', '', 170000, ''),
(114, 5, 'Paket Medium 5', 'Medium', 'LOTTO', '', '', 'BORDIR KOMPUTER', '', 170000, ''),
(115, 5, 'Paket Medium 6', 'Medium', 'BABYTERI', '', '', 'RUBBER INK', '', 160000, ''),
(116, 5, 'Paket Reguler 1', 'Reguler', 'TASLAN WATERPROOF', '', '', 'BORDIR KOMPUTER', '', 155000, ''),
(117, 5, 'Paket Reguler 2', 'Reguler', 'COTTON FLEECE', '', '', 'PLASTISOL INK', '', 150000, ''),
(118, 5, 'Paket Reguler 3', 'Reguler', 'COTTON FLEECE', '', '', 'RUBBER INK', '', 150000, ''),
(119, 5, 'Paket Reguler 4', 'Reguler', 'LOTTO', '', '', 'PLASTISOL INK', '', 150000, ''),
(120, 5, 'Paket Reguler 5', 'Reguler', 'LOTTO', '', '', 'RUBBER INK', '', 150000, '');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_bayar` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal_bayar` varchar(250) NOT NULL,
  `total_bayar` int(250) NOT NULL,
  `nama_pemesan` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `phone` varchar(250) NOT NULL,
  `alamat_rumah` varchar(250) NOT NULL,
  `jenis_bayar` int(11) NOT NULL,
  `bukti_bayar` varchar(250) NOT NULL,
  `bukti_dp` varchar(250) NOT NULL,
  `notes` varchar(250) NOT NULL,
  `penilaiian` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_bayar`, `id_user`, `tanggal_bayar`, `total_bayar`, `nama_pemesan`, `email`, `phone`, `alamat_rumah`, `jenis_bayar`, `bukti_bayar`, `bukti_dp`, `notes`, `penilaiian`) VALUES
(118, 42, '1625139661', 40000, 'dull', 'veraardianipertiwi@gmail.com', '082225990384', 'pwr', 2, '', '60ddaa0a028f4.jpg', 'dibatalkan', 0),
(119, 42, '1625139817', 175000, 'apw', 'veraardianipertiwi@gmail.com', '082225990384', 'pwr', 2, '60ddabf24d602.jpeg', '60ddaa852945a.jpg', '', 0),
(120, 42, '1625140465', 39000, 'ardiani', 'veraardianipertiwi@gmail.com', '081392142997', 'purworejo', 2, '', '60ddad0523670.jpg', '', 0),
(121, 42, '1625140576', 39000, 'ardiani', 'veraardianipertiwi@gmail.com', '081392142997', 'purworejo', 2, '60ddad9dcf33e.jpeg', '60ddad75cd6db.jpg', '', 0),
(122, 42, '1625140825', 160000, 'ardiani', 'veraardianipertiwi@gmail.com', '081392142997', 'purworejo', 1, '60ddaf59aea3e.jpeg', '', '', 0),
(123, 42, '1625141798', 300000, 'ardiani', 'veraardianipertiwi@gmail.com', '081392142997', 'purworejo', 1, '60ddb238daf24.jpg', '', '', 0),
(124, 30, '1625152491', 78000, 'vera ardiani bumi pertiwi', 'veeraardianipertiwi@student.telkomuniversity.ac.id', '081228010262', 'Purwokerto', 1, '60dddc023ad84.jpg', '', '', 0),
(125, 30, '1625152555', 87500, 'vera ardiani bumi pertiwi', 'veeraardianipertiwi@student.telkomuniversity.ac.id', '081228010262', 'Purwokerto', 2, '60ddea288b95f.png', '60dddc427beef.jpg', '', 0),
(126, 30, '1625154161', 40000, 'vera ardiani bumi pertiwi', 'veeraardianipertiwi@student.telkomuniversity.ac.id', '081228010262', 'Purwokerto', 2, '', '60ddec7e352d0.png', 'dibatalkan', 0),
(127, 43, '1625184818', 80000, 'iko', 'veraardianipertiwi@gmail.com', '082225990384', 'purworejo', 2, '', '', 'dibatalkan', 0),
(128, 43, '1625185132', 90000, 'vera', 'veraardianipertiwi@gmail.com', '082225990384', 'purworejo', 2, '', '60de5b8a50a24.jpg', 'dibatalkan', 0),
(129, 43, '1625185273', 175000, 'pertiwi', 'veraardianipertiwi@gmail.com', '082225990384', 'pwr', 2, '60de5cbb5a975.jpg', '60de5c1eb5467.jpg', '', 0),
(130, 43, '1625185598', 87500, 'handa', 'veraardianipertiwi@gmail.com', '082225990384', 'aaaa', 2, '60de5de074fc7.jpg', '60de5d8cf388f.jpg', '', 0),
(131, 43, '1625185859', 290000, 'desi', 'veraardianipertiwi@gmail.com', '082225990384', 'aaa', 1, '60de5eaf9d43d.jpg', '', '', 0),
(132, 43, '1625211228', 175000, 'vera', 'veraardianipertiwi@gmail.com', '082225990384', 'pwr', 1, '60dec182a3780.jpg', '', '', 0),
(133, 43, '1625224311', 350000, 'vera', 'veraardianipertiwi@gmail.com', '082225990384', 'purworejo', 1, '', '', '', 0),
(134, 44, '1625234135', 87500, 'vera ardiani bumi pertiwi', 'veraardianipertiwi@gmail.com', '82117503125', 'pwr', 2, '', '60df1bab24641.png', '', 0),
(135, 44, '1625234932', 63000, 'aaa', 'veraardianipertiwi@gmail.com', '82117503125', 'aa', 1, '60df1ef5ec7d2.png', '', '', 0),
(136, 44, '1625235310', 78000, 'bbb', 'veraardianipertiwi@gmail.com', '82117503125', 'bb', 1, '60df1fa3a75e1.png', '', '', 0),
(137, 44, '1625239914', 8740000, 'vera ardiani bumi pertiwi', 'veraardianipertiwi@gmail.com', '82117503125', 'dodol', 1, '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id_pesanan` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `jumlah_barang` int(11) NOT NULL,
  `harga_paket` int(11) NOT NULL,
  `total_harga` int(250) NOT NULL,
  `status_pesanan` varchar(250) NOT NULL,
  `tanggal_checkout` date DEFAULT NULL,
  `desain_produk` varchar(250) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_bayar` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`id_pesanan`, `id_barang`, `id_kategori`, `jumlah_barang`, `harga_paket`, `total_harga`, `status_pesanan`, `tanggal_checkout`, `desain_produk`, `id_user`, `id_bayar`) VALUES
(107, 0, 1, 1, 80000, 80000, 'dibatalkan', '2021-07-01', 'tidak upload desain', 42, 118),
(108, 0, 2, 2, 175000, 350000, 'pesanan selesai', '2021-07-01', '60dda9706ffaa.jpg', 42, 119),
(109, 0, 1, 1, 78000, 78000, 'pesanan ditolak', '2021-07-01', 'tidak upload desain', 42, 120),
(110, 0, 1, 1, 78000, 78000, 'pesanan ditolak', '2021-07-01', 'tidak upload desain', 42, 121),
(111, 0, 2, 1, 160000, 160000, 'pesanan selesai', '2021-07-01', 'tidak upload desain', 42, 122),
(112, 0, 3, 1, 300000, 300000, 'pesanan ditolak', '2021-07-01', 'tidak upload desain', 42, 123),
(113, 0, 1, 1, 78000, 78000, 'pending', '2021-07-01', 'tidak upload desain', 30, 124),
(114, 0, 2, 1, 175000, 175000, 'sedang diproses', '2021-07-01', 'tidak upload desain', 30, 125),
(115, 0, 1, 1, 80000, 80000, 'dibatalkan', '2021-07-01', 'tidak upload desain', 30, 126),
(117, 0, 2, 1, 160000, 160000, 'dibatalkan', '2021-07-02', 'tidak upload desain', 43, 127),
(118, 0, 5, 1, 180000, 180000, 'dibatalkan', '2021-07-02', 'tidak upload desain', 43, 128),
(119, 0, 2, 2, 175000, 350000, 'pesanan selesai', '2021-07-02', 'tidak upload desain', 43, 129),
(120, 0, 2, 1, 175000, 175000, 'pesanan selesai', '2021-07-02', 'tidak upload desain', 43, 130),
(121, 0, 3, 1, 290000, 290000, 'pesanan selesai', '2021-07-02', 'tidak upload desain', 43, 131),
(122, 0, 2, 2, 175000, 350000, 'pending', '2021-07-02', 'tidak upload desain', 43, 133),
(123, 0, 2, 1, 175000, 175000, 'pesanan selesai', '2021-07-02', 'tidak upload desain', 43, 132),
(124, 0, 1, 1, 80000, 80000, 'di dalam keranjang', NULL, 'tidak upload desain', 43, NULL),
(125, 0, 1, 1, 80000, 80000, 'di dalam keranjang', NULL, 'tidak upload desain', 43, NULL),
(126, 0, 1, 1, 63000, 63000, 'sedang diproses', '2021-07-02', 'tidak upload desain', 44, 135),
(127, 0, 2, 1, 175000, 175000, 'sedang diproses', '2021-07-02', 'tidak upload desain', 44, 134),
(128, 0, 1, 1, 78000, 78000, 'sedang diproses', '2021-07-02', 'tidak upload desain', 44, 136),
(129, 0, 2, 51, 170000, 8740000, 'pending', '2021-07-02', 'tidak upload desain', 44, 137);

-- --------------------------------------------------------

--
-- Table structure for table `postingan`
--

CREATE TABLE `postingan` (
  `id_posting` int(11) NOT NULL,
  `gambar` varchar(250) NOT NULL,
  `gambar2` varchar(250) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `jenis` varchar(250) NOT NULL,
  `caption` varchar(250) NOT NULL,
  `tanggal_upload` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `postingan`
--

INSERT INTO `postingan` (`id_posting`, `gambar`, `gambar2`, `id_kategori`, `jenis`, `caption`, `tanggal_upload`) VALUES
(1, '60c696f3500b0.jpg', 'ts1.png', 1, 'T-Shrit Impos', 'Ketika kamu jadi impostor tapi kamu bukan jadi suspect be like? mungkin among us sedang booming boomingnya bulan bulan kemarin, tapi ternyata hingga saat ini masih banyak juga loh yang main among us...', '2020-11-05'),
(2, '60c697a572f24.jpeg', '60154b95300d9.jpg', 2, 'Almamater keren cuy', 'Saat kamu bingung mencari almamater untuk acara organisasi kampus atau sekolah Egapatis lah solusinya', '2020-11-05'),
(5, '601cf59eefcdb.jpg', '', 1, 'T Shirt wow keren banget', 'OK', '0000-00-00'),
(6, '60c0b4d4000eb.jpeg', '', 1, 'Kaos Astrea', 'Kembalikan masa jadul kalian dengan baju klasik ini', '0000-00-00'),
(7, '60c6962663b9c.jpeg', '', 2, 'Almamater Rohis', 'Bagi kalian yang mengikuti ekskul Rohis, bisa banget nih almamater nya dari Egoapatis bahan nyaman dan tidak panas saat dipakai, yuk langsung dipesan.', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `jenis_pengguna` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `jenis_pengguna`) VALUES
(1, 'Konsumen'),
(4, 'Konsumen'),
(5, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `sub_pemesanan`
--

CREATE TABLE `sub_pemesanan` (
  `id` int(11) NOT NULL,
  `id_ukuran` int(11) NOT NULL,
  `id_pemesanan` int(11) NOT NULL,
  `kuantitas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_pemesanan`
--

INSERT INTO `sub_pemesanan` (`id`, `id_ukuran`, `id_pemesanan`, `kuantitas`) VALUES
(1, 1, 92, 4),
(2, 2, 92, 8),
(5, 1, 93, 9),
(6, 2, 93, 7),
(7, 1, 94, 9),
(8, 5, 94, 2),
(9, 1, 95, 1),
(10, 1, 96, 1),
(11, 3, 96, 1),
(12, 4, 97, 1),
(13, 1, 98, 1),
(14, 1, 99, 1),
(15, 1, 100, 1),
(16, 1, 101, 1),
(17, 4, 102, 1),
(18, 1, 103, 8),
(19, 2, 103, 20),
(20, 3, 103, 33),
(21, 4, 103, 1),
(22, 6, 103, 1),
(23, 1, 104, 1),
(24, 2, 104, 1),
(25, 1, 105, 3),
(26, 2, 105, 7),
(27, 1, 106, 1),
(28, 1, 107, 1),
(29, 1, 108, 1),
(30, 3, 108, 1),
(31, 1, 109, 1),
(32, 1, 110, 1),
(33, 1, 111, 1),
(34, 1, 112, 1),
(35, 1, 113, 1),
(36, 1, 114, 1),
(37, 1, 115, 1),
(38, 1, 116, 1),
(39, 1, 117, 1),
(40, 1, 118, 1),
(41, 1, 119, 1),
(42, 3, 119, 1),
(43, 1, 120, 1),
(44, 1, 121, 1),
(45, 1, 122, 1),
(46, 3, 122, 1),
(47, 1, 123, 1),
(48, 1, 124, 1),
(49, 1, 125, 1),
(50, 1, 126, 1),
(51, 1, 127, 1),
(52, 1, 128, 1),
(53, 2, 129, 35),
(54, 4, 129, 9),
(55, 5, 129, 7);

-- --------------------------------------------------------

--
-- Table structure for table `ukuran`
--

CREATE TABLE `ukuran` (
  `id_ukuran` int(11) NOT NULL,
  `ukuran` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ukuran`
--

INSERT INTO `ukuran` (`id_ukuran`, `ukuran`) VALUES
(1, 'S'),
(2, 'M'),
(3, 'L'),
(4, 'XL'),
(5, 'XXL'),
(6, 'XXXL');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `phonenumber` varchar(25) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `role_id`, `fullname`, `phonenumber`, `username`, `email`, `password`, `alamat`, `created_at`, `status`) VALUES
(13, 1, NULL, NULL, 'ikko', 'tes123@gmail.com', '$2y$10$uv08QQNurfwpmKUm6E1jTeQ6DNJEFlrVYtIabTiLM3caA51u1QRuy', '', '11-02-2021, 06:19:18', 1),
(19, 4, 'vera ardiani pertiwi', '081228010262', 'ardiani', 'vveraardianipertiwi@gmail.com', '$2y$10$oUfqM2TmSSxGQDzqV1H.AuRjbSH9Ta4r.jgyUQ/DzjEijuOqoig8W', 'purworejo', '08-06-2021, 09:53:59', 2),
(21, 4, 'vera ardiani pertiwi', '081228010262', 'veraape', 'vperaardianipertiwi@gmail.com', '$2y$10$ZmZEEHajjimICy6vtIHtJOSoth5hcUlTbiG9g1i0tyZ/Qe7G8NHeK', 'purworejo', '08-06-2021, 16:15:44', 2),
(22, 4, NULL, NULL, 'tes12345', 'desi123@gmail.com', '$2y$10$V2lvlToS4DFPcGq8TxdbLuCW9574N02tDQSu9fHZ7K8v4MS2Z6Z66', '', '08-06-2021, 16:27:45', 1),
(25, 4, 'nur fatoni', '081228010262', 'pertiwi', 'averaardianipertiwi@gmail.com', '$2y$10$yQgasYTZfbOvTPlGFH2cM./zbTREQta7oerUwXqfytrvMPrnskMCO', 'purworejo', '09-06-2021, 08:31:50', 1),
(26, 4, 'ardiani pertiwi', '081228010262', 'dhioo', 'rrezadhioo9@gmail.com', '$2y$10$1hlAdoTeiupphcpuKy/4juPtgP3IryyXiptZs9uMEDz1ga1/RsYbS', 'purworejo', '09-06-2021, 09:40:21', 1),
(27, 1, 'rezadhio', '081228010262', 'rezaa', 'rezadhioo9@gmail.com', '$2y$10$p4dFQ0oYA6B/a7ROHI6hv.qFu4BvOUgq6zsaLBA1xh2SDRmJoDAKu', 'purworejo', '09-06-2021, 15:36:54', 1),
(28, 4, 'vera ardiani pertiwi', '081228010262', 'veraardiani', 'raveraardianipertiwi@gmail.com', '$2y$10$LxkcPNngig9qR32Wow5.2.Sw4OC7SRZkDc75ItLYwIlDjLu.y39Oi', 'purworejo', '13-06-2021, 11:02:04', 1),
(29, 4, NULL, NULL, 'desy', 'vvveraardianipertiwi@gmail.com', '$2y$10$OyDKYiIQBXkIjwtPQ7H9iuoz1fvLxKkrOyA0IbJftd6aZm9ruLi2u', '', '15-06-2021, 08:36:01', 1),
(30, 4, 'vera ardiani bumi pertiwi', '081228010262', 'veraardiani123', 'veeraardianipertiwi@student.telkomuniversity.ac.id', '$2y$10$Hn3jLWntku9uBjYnX/KKVe92QVKnZLSRrOmjgOode/q7B4jCX5maa', 'Purwokerto', '15-06-2021, 09:10:10', 1),
(35, 5, NULL, NULL, 'wakwaw', 'ardiani@gmail.com', '$2y$10$lWVxX74hPu2A7kyjZaSygu0HoDnsSGwBTTj0QG65e3.hZR71zy1IC', '', '16-06-2021, 13:55:49', 1),
(36, 5, NULL, NULL, 'naruto123', 'vessaardianipertiwi@gmail.com', '$2y$10$Q/3eiteerh4SkYQtTQKEXuQ3jG.HbS2LzT4iXBRReRgCDRa7V2w8C', '', '16-06-2021, 14:02:31', 1),
(37, 5, NULL, NULL, 'fauziyah', 'fauziyah@gmail.com', '$2y$10$dqKMwubNT..wrqgOUXu3YOF/yEqfUfiip/8Pa9fC41vbjP2VLfpKW', '', '16-06-2021, 14:14:57', 1),
(38, 4, 'pangestuuu', '', 'pangestuti123', 'vreraardianipertiwi@gmail.com', '$2y$10$NmvrtnQxPWDBq9ljuQFn9Oo1KrLRxMJvODGJf6WepyvDGFoe.Jy7.', '', '30-06-2021, 07:36:39', 1),
(41, 4, NULL, NULL, 'peraardiani123', 'vperaardianipertiwi@gmail.com', '$2y$10$t3/PkBwUQsje7Q63/vAV1.rV5GNqHwfSWyt0wewB3xftHsZhsiqX2', '', '30-06-2021, 08:34:48', 1),
(42, 4, 'ardiani', '081392142997', 'ikocakk', 'vrreraardianipertiwi@gmail.com', '$2y$10$3P1CpRDDM4sHESW0.q26yejJia.DiieESLLCiRD2CJiIVDPqnhAbG', 'purworejo', '01-07-2021, 13:37:09', 1),
(43, 4, '', '', 'wekokk', 'vderaraardianipertiwi@gmail.com', '$2y$10$RH/Yu2uuavNYqLezeakWmOi.HgUP/2k7K.zaVdzeRUZ4SzVsl9ddi', '', '02-07-2021, 01:31:17', 1),
(44, 4, NULL, NULL, 'wekok', 'veraardianipertiwi@gmail.com', '$2y$10$kaIDkq6IX.QXIWjeRrXeKeQE0/9QiR5yCPCvzdypr4Xix3RyMXg8O', '', '02-07-2021, 15:52:53', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_token`
--

INSERT INTO `user_token` (`id`, `email`, `token`, `date_created`) VALUES
(6, 'cobacoba@gmail.com', '0b9rb82U6qxzEF8geTiIr2aUty8suvJYPXwHco1IT2A=', 1623161199),
(9, 'ccobacoba@gmail.com', 'drE/NfGONiph2+d0yqfftDzbAPJdoi49BzoG2WN9Qqk=', 1623183595),
(10, 'sutarmiyati@gmail.com', 'aRuM3UvJC7n+SrJn4giJwYvkbnVcQMJgPdLQkwrGtDg=', 1623183717),
(15, 'cobacoba@gmail.com', 'oIrGpcHIxQH3rg3tzxpjSY7GexujmHFbzDAcMy+hqN0=', 1623844138),
(16, 'ardiani@gmail.com', 'Om5ocXLhmM677kp0/RtDaDoz4+EUWOGMxwWSeoVD4Jw=', 1623844549),
(17, 'vessaardianipertiwi@gmail.com', 'qH1W/QwRxKSe+MV9VTVZnjFGTdnvCZofssgBoPfWNfQ=', 1623844951),
(18, 'fauziyah@gmail.com', 'QCITyCtwM5ZpYooARCi9n7kpyI3W8XmOZ2jYn7gYDoY=', 1623845697);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `email_conf`
--
ALTER TABLE `email_conf`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id_feedback`),
  ADD KEY `fk_feedback_pemesanan` (`id_pesanan`);

--
-- Indexes for table `jenis_bayar`
--
ALTER TABLE `jenis_bayar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `pakaiian`
--
ALTER TABLE `pakaiian`
  ADD PRIMARY KEY (`id_pakaiian`),
  ADD KEY `fk_pakaiian_kategori` (`id_kategori`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_bayar`),
  ADD KEY `fk_pembayaran_user` (`id_user`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id_pesanan`),
  ADD KEY `fk_pemesanan_pembayaran` (`id_bayar`),
  ADD KEY `fk_pemesanan_kategori` (`id_kategori`),
  ADD KEY `fk_pemesanan_user` (`id_user`);

--
-- Indexes for table `postingan`
--
ALTER TABLE `postingan`
  ADD PRIMARY KEY (`id_posting`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `sub_pemesanan`
--
ALTER TABLE `sub_pemesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ukuran`
--
ALTER TABLE `ukuran`
  ADD PRIMARY KEY (`id_ukuran`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `fk_user_role` (`role_id`);

--
-- Indexes for table `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `email_conf`
--
ALTER TABLE `email_conf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id_feedback` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `jenis_bayar`
--
ALTER TABLE `jenis_bayar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pakaiian`
--
ALTER TABLE `pakaiian`
  MODIFY `id_pakaiian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_bayar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id_pesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `postingan`
--
ALTER TABLE `postingan`
  MODIFY `id_posting` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sub_pemesanan`
--
ALTER TABLE `sub_pemesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `ukuran`
--
ALTER TABLE `ukuran`
  MODIFY `id_ukuran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `fk_feedback_pemesanan` FOREIGN KEY (`id_pesanan`) REFERENCES `pemesanan` (`id_pesanan`) ON DELETE SET NULL;

--
-- Constraints for table `pakaiian`
--
ALTER TABLE `pakaiian`
  ADD CONSTRAINT `fk_pakaiian_kategori` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`);

--
-- Constraints for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `fk_pembayaran_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD CONSTRAINT `fk_pemesanan_kategori` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`),
  ADD CONSTRAINT `fk_pemesanan_pembayaran` FOREIGN KEY (`id_bayar`) REFERENCES `pembayaran` (`id_bayar`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_pemesanan_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_user_role` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
