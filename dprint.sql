-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2021 at 07:37 AM
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
-- Database: `dprint`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `idbarang` int(11) NOT NULL,
  `nama` text NOT NULL,
  `keterangan` text NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `kategori` text NOT NULL,
  `foto` text NOT NULL,
  `owner` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`idbarang`, `nama`, `keterangan`, `harga`, `stok`, `kategori`, `foto`, `owner`) VALUES
(27, 'Baju kaos', 'Baju lengan pendek polos', 55000, 500, 'Baju', 'OIP.jpg', 19),
(28, 'Celana ', 'Celana pendek polos', 30000, 2000, 'Celana', 'OIPLC4BMRRP.jpg', 19),
(29, 'Portofolio Sidu', 'Kertas fortofolio 1 rim', 65000, 200, 'Kertas', 'kertas.jpg', 27),
(30, 'Pin', 'Pin bundar, sesuai gambar', 3000, 5000, 'Pin', 'pin.jpg', 27),
(31, 'Stiker ', 'Gambar stiker dapat di rikwes ukuran 15x15cm ', 2000, 500, 'Sticker', 'stiker.jpg', 27),
(32, 'Topi', 'Topi berwarna hitam polos', 15000, 200, 'Topi', 'topihitam.jpg', 19),
(33, 'Topi Putih', 'Topi berwarna putih polos polos', 18000, 350, 'Topi', 'topi_putih.jpg', 20),
(34, 'Pin', 'Pin perangkat desa', 55000, 100, 'Pin', 'download11.jpg', 20),
(35, 'Stiker Desain', 'Stiker berbahan tebal dan lem tidak mudah hilang', 17000, 370, 'Sticker', 'download_(1)1.jpg', 20),
(36, 'Kertas binder', 'Kertas berukuran A5, di jual dalam 1 pak isi 200 lembar', 35000, 400, 'Kertas', 'download_(2)1.jpg', 21),
(37, 'Celana training wanita', 'Celana panjang dewasa wanita', 65000, 600, 'Celana', 'images.jpg', 21),
(38, 'Baju berkera', 'Baju ukuran dewasa', 80000, 5000, 'Baju', 'download_(3).jpg', 21),
(39, 'Spanduk', 'Spanduk ini terbuat dari kertas yang tahan air, ukuran 3x6m', 50000, 200, 'Kertas', '5777883_370c3753-8f0d-405b-a420-89ecdc8b6f19_2048_0.jpg', 25),
(40, 'Baju olahraga muslim', 'Baju ini memiliki panjang hingga di atas lutut, kami menjualnya 1 pasang dengan celanan', 155000, 500, 'Baju', 'download_(4).jpg', 25),
(41, 'Pin berbentuk', 'Pin anggota DPRD', 30000, 5000, 'Pin', 'images_(1).jpg', 25),
(42, 'Kaos Kaki', 'Ukuran dewasa batas mata kaki', 3000, 7000, 'Baju', 'WhatsApp_Image_2020-05-03_at_22_13_14.jpeg', 19);

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
(1, NULL, 'Vera', 5, 'WOW hasilnya bagus banget deh', NULL),
(2, NULL, 'Fau', 4, 'Bagus !', NULL),
(4, NULL, 'ikko', 5, 'mantap', 'Screen_Shot_2021-05-24_at_11_20_29_PM.png'),
(6, NULL, 'dhioo', 5, 'mantul', 'Family_Values_-_Family_Trip_(1).png'),
(7, NULL, 'rezaa', 5, 'mantap', 'logo.jpeg'),
(10, NULL, 'veraardiani', 5, 'pesanan sesuai', 'WhatsApp_Image_2021-06-14_at_06_29_15.jpeg'),
(11, NULL, 'veraardiani123', 5, 'ok', 'download.jpg'),
(12, NULL, 'veraardiani123', 5, 'ppp', 'UseCaseDiagram1kon.jpg'),
(13, 83, 'veraardiani123', 5, 'aa', 'download1.jpg'),
(14, 84, 'veraardiani123', 5, 'add', 'cash-machine-icon-33701.jpg'),
(15, 86, 'veraardiani123', 5, 'ppp', 'logo1.jpeg'),
(16, 90, 'veraardiani123', 5, 'aa', 'logo2.jpeg'),
(17, 95, 'veraardiani123', 5, 'jjjj', '1200px-Telkom_University_Logo_svg.png'),
(18, 96, 'veraardiani123', 5, 'mantappp', '1200px-Telkom_University_Logo_svg1.png'),
(19, 99, 'pangestuti123', 5, 'mantull', '1200px-Telkom_University_Logo_svg2.png'),
(20, 99, 'pangestuti123', 5, 'cakepp', '1200px-Telkom_University_Logo_svg3.png');

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
(8, 1, 'Paket Sultan 1', 'Sultan', 'Cotton Atom', '', '', 'Discharge', '24s', 80000, ''),
(9, 1, 'Paket Sultan 2', 'Sultan', 'Cotton Hoka', '', '', 'Plastisol', '20s', 80000, ''),
(10, 1, 'Paket Sultan 3', 'Sultan', 'Cotton Galaxy', '', '', 'Plastisol', '30s', 78000, ''),
(11, 1, 'Paket Sultan 4', 'Sultan', 'Cotton Bambu', '', '', 'Plastisol', '30s', 78000, ''),
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
(51, 3, 'Paket Reguler 2', 'Reguler', 'HOBES/AMMERICAN DRILL', 'Bordir Comp', '', '', '', 180000, ''),
(52, 3, 'Paket Reguler 3', 'Reguler', 'Kantata American Drill', 'Bordir Comp', '', '', '', 170000, ''),
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
(96, 30, '1624159576', 80000, 'vera ardiani pertiwi', 'veeraardianipertiwi@student.telkomuniversity.ac.id', '081228010262', 'purworejo', 1, '60ceb56a94d4c.jpg', '60ceb56a94d4c.jpg', '', 0),
(97, 30, '1624159800', 170000, 'pertiwi', 'veeraardianipertiwi@student.telkomuniversity.ac.id', '081228010262', 'purworejo', 2, '60ceb6850262a.jpg', '60ceb64a24ccf.jpg', '', 0),
(98, 30, '1624181871', 80000, 'vera ardiani pertiwi', 'veeraardianipertiwi@student.telkomuniversity.ac.id', '081228010262', 'purworejo', 1, '60cf0e7d3f3c9.jpg', '60cf0e7d3f3c9.jpg', '', 0),
(99, 30, '1624182634', 78000, 'fauziyah', 'veeraardianipertiwi@student.telkomuniversity.ac.id', '081228010262', 'purworejo', 2, '60cf1047625d0.png', '60cf100365745.jpg', '', 0),
(100, 30, '1624278818', 40000, 'vera ardiani pertiwi', 'veeraardianipertiwi@student.telkomuniversity.ac.id', '081228010262', 'purworejo', 2, '60d087fc3455e.png', '60d0873a81036.jpeg', '', 0),
(101, 30, '1624279494', 145000, 'caca', 'veeraardianipertiwi@student.telkomuniversity.ac.id', '081228010262', 'purworejo', 2, '', '60d089dd48079.png', '', 0),
(102, 30, '1624279622', 87500, 'eca', 'veeraardianipertiwi@student.telkomuniversity.ac.id', '081228010262', 'purworejo', 2, '60d08ae4a1d6a.jpeg', '60d08a5be3ccf.png', '', 0),
(103, 30, '1624279924', 175000, 'caaaa', 'veeraardianipertiwi@student.telkomuniversity.ac.id', '081228010262', 'purworejo', 2, '60d08bba05a0d.jpeg', '60d08b87b48de.png', '', 0),
(104, 30, '1624900260', 1020000, 'vera ardiani pertiwi', 'veeraardianipertiwi@student.telkomuniversity.ac.id', '081228010262', 'Purwokerto', 2, '', '60da04293f353.png', '', 0),
(105, 30, '1624900406', 2120000, 'vera ardiani pertiwi', 'veeraardianipertiwi@student.telkomuniversity.ac.id', '081228010262', 'Purwokerto', 2, '60da0d06efe45.png', '60da0b8ab8176.png', '', 0),
(106, 30, '1624900745', 1120000, 'vera ardiani pertiwi', 'veeraardianipertiwi@student.telkomuniversity.ac.id', '081228010262', 'Purwokerto', 1, '60da0b96dcbc9.png', '', '', 0),
(107, 30, '1624987548', 34000, 'vera ardiani pertiwi', 'veeraardianipertiwi@student.telkomuniversity.ac.id', '081228010262', 'Purwokerto', 2, '60db5daadfaa8.png', '60db57d1e144f.png', '', 0),
(108, 30, '1625030774', 160000, 'vera ardiani bumi pertiwi', 'veeraardianipertiwi@student.telkomuniversity.ac.id', '081228010262', 'Purwokerto', 1, '60dc00948d849.png', '', '', 0),
(109, 30, '1625031085', 70000, 'vera ardiani pertiwi', 'veeraardianipertiwi@student.telkomuniversity.ac.id', '081228010262', 'Purwokerto', 1, '60dc01e1cd759.png', '', '', 0),
(110, 38, '1625033981', 80000, 'pangestuuu', 'veraardianipertiwi@gmail.com', '081392142997', 'pwr', 1, '60dc0d13a8708.png', '', '', 0),
(111, 30, '1625055866', 543000, 'vera ardiani bumi pertiwi', 'veeraardianipertiwi@student.telkomuniversity.ac.id', '081228010262', 'Purwokerto', 1, '', '', '', 0),
(112, 30, '1625056749', 543000, 'vera ardiani bumi pertiwi', 'veeraardianipertiwi@student.telkomuniversity.ac.id', '081228010262', 'Purwokerto', 1, '', '', '', 0),
(113, 30, '1625056801', 543000, 'vera ardiani bumi pertiwi', 'veeraardianipertiwi@student.telkomuniversity.ac.id', '081228010262', 'Purwokerto', 1, '', '', '', 0),
(114, 30, '1625057088', 175000, 'vera ardiani bumi pertiwi', 'veeraardianipertiwi@student.telkomuniversity.ac.id', '081228010262', 'Purwokerto', 1, '60dc68a200491.png', '', '', 0),
(115, 30, '1625057291', 78000, 'vera ardiani bumi pertiwi', 'veeraardianipertiwi@student.telkomuniversity.ac.id', '081228010262', 'Purwokerto', 1, '60dc68cf425f6.png', '', '', 0),
(116, 30, '1625057394', 290000, 'vera ardiani bumi pertiwi', 'veeraardianipertiwi@student.telkomuniversity.ac.id', '081228010262', 'Purwokerto', 1, '', '', '', 0),
(117, 30, '1625070088', 18280000, 'vera ardiani bumi pertiwi', 'veeraardianipertiwi@student.telkomuniversity.ac.id', '081228010262', 'Purwokerto', 1, '', '', '', 0);

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
(83, 0, 1, 1, 80000, 80000, 'pesanan selesai', '2021-06-20', 'tidak upload desain', 30, 96),
(84, 0, 2, 1, 170000, 170000, 'pesanan selesai', '2021-06-20', 'tidak upload desain', 30, 97),
(85, 0, 1, 1, 80000, 80000, 'pending', '2021-06-20', 'tidak upload desain', 30, 98),
(86, 0, 1, 1, 78000, 78000, 'pesanan selesai', '2021-06-20', 'tidak upload desain', 30, 99),
(87, 0, 1, 1, 80000, 80000, 'Pembayaran kurang (sedang diproses)', '2021-06-21', 'tidak upload desain', 30, 100),
(88, 0, 3, 1, 290000, 290000, 'pending', '2021-06-21', 'tidak upload desain', 30, 101),
(89, 0, 2, 1, 175000, 175000, 'Pembayaran kurang (sedang diproses)', '2021-06-21', 'tidak upload desain', 30, 102),
(90, 0, 2, 1, 175000, 175000, 'pesanan selesai', '2021-06-21', 'tidak upload desain', 30, 103),
(92, 0, 2, 12, 170000, 2040000, 'pending', '2021-06-28', '60d9f16fe5c6d.png', 30, 104),
(93, 0, 3, 16, 265000, 4240000, 'Pembayaran kurang (sedang diproses)', '2021-06-28', 'tidak upload desain', 30, 105),
(94, 0, 4, 11, 100000, 1120000, 'sedang diproses', '2021-06-28', '60da046b61f2a.png', 30, 106),
(95, 0, 1, 1, 68000, 68000, 'pesanan selesai', '2021-06-29', '60db577bd1f83.png', 30, 107),
(96, 0, 1, 2, 80000, 160000, 'pesanan selesai', '2021-06-30', 'tidak upload desain', 30, 108),
(97, 0, 1, 1, 70000, 70000, 'pesanan ditolak', '2021-06-30', 'tidak upload desain', 30, 109),
(99, 0, 1, 1, 80000, 80000, 'pesanan selesai', '2021-06-30', 'tidak upload desain', 38, 110),
(100, 0, 2, 1, 175000, 175000, 'pending', '2021-06-30', 'tidak upload desain', 30, 114),
(101, 0, 3, 1, 290000, 290000, 'pending', '2021-06-30', 'tidak upload desain', 30, 116),
(102, 0, 1, 1, 78000, 78000, 'pending', '2021-06-30', 'tidak upload desain', 30, 115),
(103, 0, 3, 63, 290000, 18280000, 'pending', '2021-06-30', 'tidak upload desain', 30, 117),
(104, 0, 3, 2, 215000, 430000, 'di dalam keranjang aktif', NULL, 'tidak upload desain', 30, NULL),
(105, 0, 1, 10, 75000, 750000, 'di dalam keranjang', NULL, 'tidak upload desain', 30, NULL);

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
(26, 2, 105, 7);

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
(15, 4, 'Oliver Jumahid', '0898989898', 'jumahid', 'jmhdoaoe@gmail.com', '$2y$10$E94.j2qsTsi9oZyNWqN34Omz1IPKy0.aWJjnzoy6tldV7.ma5SNue', 'Jl Pd Kelapa, Duren Sawit, Jakarta Timur', '01-06-2021, 11:12:30', 1),
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
(41, 4, NULL, NULL, 'peraardiani123', 'veraardianipertiwi@gmail.com', '$2y$10$t3/PkBwUQsje7Q63/vAV1.rV5GNqHwfSWyt0wewB3xftHsZhsiqX2', '', '30-06-2021, 08:34:48', 1);

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
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`idbarang`);

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
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `idbarang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `email_conf`
--
ALTER TABLE `email_conf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id_feedback` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
  MODIFY `id_bayar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id_pesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `ukuran`
--
ALTER TABLE `ukuran`
  MODIFY `id_ukuran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

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
