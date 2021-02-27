-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 27, 2021 at 08:38 AM
-- Server version: 10.3.27-MariaDB-log-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akmadnud_uas`
--

-- --------------------------------------------------------

--
-- Table structure for table `categori`
--

CREATE TABLE `categori` (
  `id` int(11) NOT NULL,
  `nama_categori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categori`
--

INSERT INTO `categori` (`id`, `nama_categori`) VALUES
(1, 'Camera'),
(3, 'Handphone'),
(4, 'Aksesoris'),
(5, 'Watch');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `messages` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `nama`, `email`, `messages`, `date`) VALUES
(1, 'akmad nudin', 'akmadnudin@gmail.com', 'halo bang kok gada productnya', '2021-02-09 10:08:10');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name_product` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `discount` float NOT NULL,
  `stock` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `categori` varchar(100) NOT NULL,
  `add_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name_product`, `price`, `discount`, `stock`, `description`, `image`, `categori`, `add_on`) VALUES
(3, 'iPhone 12 Pro Max', 204990000, 21000000, '50', '<p>iPhone 12 Pro Max. Layar Super Retina XDR 6,7 inci yang lebih besar.1 Ceramic Shield dengan ketahanan jatuh empat kali lebih baik.2 Fotografi pencahayaan rendah yang menakjubkan dengan sistem kamera Pro terbaik di iPhone, dan rentang zoom optik 5x. Mampu merekam, mengedit, dan memutar video sekelas sinema dengan Dolby Vision. Potret mode Malam dan pengalaman AR di level berikutnya dengan LiDAR Scanner. Chip A14 Bionic yang andal. Dan aksesori MagSafe baru untuk kemudahan pemasangan dan pengisian daya nirkabel yang lebih cepat.3 Untuk berjuta kemungkinan spektakuler.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Poin-poin fitur</strong><br />\r\n&bull; Layar Super Retina XDR 6,7 inci1<br />\r\n&bull;&nbsp;Ceramic Shield, lebih tangguh dari kaca ponsel pintar mana pun<br />\r\n&bull;&nbsp;Chip A14 Bionic, chip paling cepat yang pernah ada di ponsel pintar<br />\r\n&bull;&nbsp;Sistem kamera Pro dengan kamera Ultra Wide, Wide, dan Telefoto 12 MP; rentang zoom optik 5x; mode Malam, Deep Fusion, Smart HDR 3, Apple ProRAW4, perekaman HDR 4K Dolby Vision<br />\r\n&bull;&nbsp;LiDAR Scanner untuk pengalaman AR dan potret mode Malam yang disempurnakan<br />\r\n&bull;&nbsp;Kamera depan TrueDepth 12 MP dengan mode Malam, perekaman HDR 4K Dolby Vision<br />\r\n&bull;&nbsp;Level ketahanan air IP68 terdepan di industri5<br />\r\n&bull;&nbsp;Mendukung aksesori MagSafe untuk kemudahan pemasangan dan pengisian daya nirkabel yang lebih cepat3<br />\r\n&bull;&nbsp;iOS 14 dengan widget yang didesain ulang di Layar Home, Perpustakaan App yang sepenuhnya baru, Cuplikan App, dan banyak lagi</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Legal</strong><br />\r\n1. Layar memiliki sudut melengkung. Jika diukur sebagai persegi, layarnya memiliki ukuran diagonal 6,68 inci.<br />\r\nArea bidang layar berukuran lebih kecil.<br />\r\n2. Klaim berdasarkan bagian depan Ceramic Shield iPhone 12 Pro Max dibandingkan dengan iPhone generasi sebelumnya.<br />\r\n3. Aksesori dijual terpisah.<br />\r\n4. Apple ProRAW segera hadir.<br />\r\n5. iPhone 12 Pro Max tahan cipratan, air, dan debu dan diuji dalam kondisi laboratorium terkontrol dengan level IP68 menurut standar IEC 60529 (kedalaman maksimum 6 meter hingga selama 30 menit). Ketahanan terhadap cipratan, air, dan debu tidak berlaku secara permanen. Daya tahan mungkin berkurang akibat penggunaan sehari-hari. Jangan coba mengisi daya iPhone yang basah; lihat panduan pengguna untuk instruksi pembersihan dan pengeringan. Kerusakan akibat cairan tidak ditanggung dalam garansi.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Spesifikasi teknis</strong><br />\r\nKunjungi apple.com/iphone/compare untuk informasi selengkapnya.</p>\r\n', '391933300_IP12.jpg', 'Handphone', '2021-02-09 02:27:44'),
(4, 'iPhone 8', 8499000, 9000000, '23', '<p>iPhone 8 dan iPhone 8 Plus. Dirancang untuk bisnis yang dinamis dengan chip A11 Bionic untuk performa andal. Desain kaca seutuhnya dan aluminium. Layar Retina HD. Kamera canggih. Pengisian daya nirkabel.(*)Aplikasi mengagumkan untuk bisnis di App Store. Dan iOS 13 dengan alat produktivitas bawaan menjadikan iPhone perangkat andal untuk menjalankan bisnis &mdash; sejak awal.</p>\r\n\r\n<p><br />\r\n<br />\r\nPoin-poin fitur<br />\r\n&bull; Layar Retina HD LCD 4,7 inci(1)<br />\r\n&bull; Tahan air dan debu (1 meter hingga selama 30 menit, IP67)(2)<br />\r\n&bull; Kamera Wide 12 MP tunggal dengan Auto HDR dan video 4K hingga 60 fps<br />\r\n&bull; Kamera FaceTime HD 7 MP yang mampu merekam video 1080p<br />\r\n&bull; Touch ID untuk autentikasi aman<br />\r\n&bull; A11 Bionic dengan Neural Engine<br />\r\n&bull; Kemampuan isi daya cepat<br />\r\n&bull; Pengisian daya nirkabel(3)<br />\r\n&bull; iOS 13 dengan Mode Gelap, alat baru untuk pengeditan foto dan video, dan fitur privasi baru<br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p>1. Lebar layar diukur secara diagonal.<br />\r\n2. iPhone 8 tahan cipratan, air, dan debu dan diuji dalam kondisi laboratorium terkontrol dengan level IP67 menurut standar IEC 60529 (kedalaman maksimum 1 meter hingga selama 30 menit). Ketahanan terhadap cipratan, air, dan debu tidak berlaku secara permanen, dan daya tahan mungkin berkurang akibat penggunaan sehari-hari. Jangan coba mengisi daya iPhone yang basah; lihat panduan pengguna untuk instruksi pembersihan dan pengeringan. Kerusakan akibat cairan tidak ditanggung dalam garansi.<br />\r\n3. Pengisi daya nirkabel Qi dijual terpisah.</p>\r\n', '857218028_IP8.jpg', 'Handphone', '2021-02-10 02:17:29'),
(5, 'iPhone X', 14999000, 15500000, '22', '<p><strong>Desain dan Layar Sepenuhnya Layar</strong></p>\r\n\r\n<p>Layar Super Retina. Di iPhone X, layarnya adalah perangkatnya. Layar Super Retina 5,8 inci yang baru sempurna dalam genggaman dan memukau pandangan. Layar dirancang dengan teknik dan teknologi baru untuk mengikuti lekukan desain dengan presisi, bahkan ke sudut-sudut melengkung yang begitu elegan. Layar OLED pertama yang mengimbangi standar tinggi iPhone, dengan warna-warna akurat yang menakjubkan, hitam pekat, kecerahan tinggi, dan rasio kontras 1.000.000:1. Kamera TrueDepth, sebuah bidang kecil menampung sejumlah teknologi paling canggih yang pernah dirancang Apple, termasuk kamera dan sensor yang memungkinkan Face ID. Desain yang sepenuhnya baru. Kaca terkuat yang pernah ada di ponsel pintar, baik depan maupun belakang. Baja tahan karat sekelas peralatan bedah. Pengisian daya nirkabel. Tahan air dan debu. Gerakan Intuitif, semua gerakan yang sudah tidak asing lagi membuat navigasi terasa natural dan intuitif. Tanpa menekan tombol, tapi cukup dengan sekali usap saja Anda akan kembali ke layar Home, dari mana pun</p>\r\n\r\n<p><strong>Face ID. Revolusi Identifikasi</strong></p>\r\n\r\n<p>Kini wajah Anda adalah kata sandi Anda. Face ID adalah cara baru yang aman untuk membuka kunci dan mengautentikasi. Face ID dimungkinkan oleh kamera TrueDepth dan mudah disiapkan. Face ID memproyeksikan dan menganalisis lebih dari 30.000 titik tak terlihat untuk membuat peta wajah Anda dengan presisi mendalam.</p>\r\n\r\n<p><strong>Kamera TrueDepth. Hadap Depan dan Andalah Fokusnya</strong></p>\r\n\r\n<p>Buat foto selfie yang indah dengan objek depan yang tajam dan latar belakang yang dikaburkan secara artistik. Sebuah fitur baru di mode Potret, Pencahayaan Potret menghadirkan efek pencahayaan impresif berkualitas studio. Kamera TrueDepth menganalisis lebih dari 50 gerakan otot wajah untuk mencerminkan ekspresi Anda ke dalam 12 Animoji. Keluarkan versi panda atau robot dari diri Anda</p>\r\n\r\n<p><strong>Kamera Ganda 12 MP. Seni fotografi jadi lebih sederhana</strong></p>\r\n\r\n<p>Sensor 12 MP yang lebih besar dan lebih cepat. Filter warna baru. Piksel yang lebih dalam. Dan kamera telefoto baru dengan OIS. Kamera yang mendeteksi kedalaman dan pemetaan wajah dengan presisi menciptakan efek pencahayaan berkualitas studio yang menakjubkan. Kedua kamera belakang memiliki penstabilan gambar optik (OIS/Optical Image Stabilization) dan lensa cepat untuk foto dan video yang memukau, bahkan dalam kondisi kurang pencahayaan. Kamera wide-angle dan telefoto di iPhone X memungkinkan zoom optik, serta zoom digital hingga 10x untuk foto dan 6x untuk video.</p>\r\n\r\n<p><strong>A11 Bionic - Kecerdasan Manusia Super</strong></p>\r\n\r\n<p>Memperkenalkan A11 Bionic. Chip yang paling andal dan cerdas di ponsel pintar, dengan mesin neural yang mampu menangani hingga 600 miliar operasi per detik. Empat core efisiensi di CPU yang baru lebih cepat hingga 70 persen dibandingkan Fusion A10. Dan dua core performa yang lebih cepat hingga 25 persen. Pembelajaran mesin memungkinkan Face ID beradaptasi dengan perubahan fisik pada penampilan Anda seiring dengan waktu. Pengontrol performa generasi kedua dan rancangan baterai khusus yang bertahan hingga 2 jam lebih lama di antara pengisian daya dibandingkan iPhone 7. GPU tiga core baru rancangan Apple lebih cepat hingga 30 persen dibanding Fusion A10. A11 Bionic adalah tenaga di balik pengalaman augmented reality yang luar biasa di game dan aplikasi.</p>\r\n\r\n<p><strong>Pengisian Daya Nirkabel. Isi daya tanpa kabel Di dunia tanpa kabel</strong></p>\r\n\r\n<p>Tanpa memerlukan kabel pengisian daya, iPhone X benar-benar dirancang untuk masa depan yang bebas kabel. Isi daya menggunakan stasiun dan alas pengisian daya nirkabel di banyak hotel, kafe, dan bandara di seluruh dunia.</p>\r\n\r\n<p><strong>iOS 11 - iOS Revolusioner untuk iPhone Revolusioner.</strong></p>\r\n\r\n<p>Ponsel yang sepenuhnya layar memerlukan OS yang sepenuhnya dirancang ulang dengan kemampuan dan gerakan baru. Kirim Animoji di Pesan. Sesuaikan Pusat Kontrol. Dan temukan musik baru bersama teman-teman di Apple Music. Nikmati berbagai aplikasi dan game AR yang begitu memukau di platform terbesar di dunia untuk augmented reality.</p>\r\n', '388381094_IP10.jpg', 'Handphone', '2021-02-10 02:20:50'),
(6, 'iPhone 11', 11999000, 12500000, '12', '<p>Rekam video 4K, potret yang indah, dan lanskap yang lebih luas dengan sistem kamera ganda yang sepenuhnya baru. Ambil foto berpencahayaan rendah terbaik dengan mode Malam. Lihat warna yang begitu nyata dalam foto, video, dan game di layar Liquid Retina 6,1 inci. (3) Nikmati performa tak tertandingi dengan A13 Bionic untuk game, augmented reality (AR), dan fotografi. Lakukan lebih banyak hal tanpa perlu sering mengisi daya dengan kekuatan baterai sepanjang hari. (2) Dan nikmati ketenangan dengan ketahanan air hingga 2 meter selama 30 menit.(1)</p>\r\n\r\n<p><br />\r\nPoin-poin fitur<br />\r\n&bull; Layar Liquid Retina HD LCD 6,1 inci(2)<br />\r\n&bull; Tahan air dan debu (2 meter hingga selama 30 menit, IP68)(1)<br />\r\n&bull; Sistem kamera ganda dengan kamera Ultra Wide dan Wide 12 MP; mode Malam, mode Potret, dan video 4K hingga 60 fps<br />\r\n&bull; Kamera depan TrueDepth 12 MP dengan mode Potret, video 4K, dan video gerakan lambat<br />\r\n&bull; Face ID untuk autentikasi aman<br />\r\n&bull; Chip A13 Bionic dengan Neural Engine generasi ketiga<br />\r\n&bull; Kemampuan isi daya cepat(4)<br />\r\n&bull; Pengisian daya nirkabel(4)<br />\r\n&bull; iOS 14 dengan Mode Gelap, alat baru untuk pengeditan foto dan video, dan fitur privasi baru<br />\r\n&nbsp;</p>\r\n\r\n<p>Isi Kotak :<br />\r\n&bull; iPhone dengan iOS 14.<br />\r\n&bull; Kabel USB-C ke Lightning.<br />\r\n&bull; Buku Manual dan dokumentasi lain.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Legal<br />\r\n1. iPhone 11 tahan cipratan, air, dan debu, serta diuji dalam kondisi laboratorium terkontrol dengan level IP68 menurut standar IEC 60529 (kedalaman maksimum 2 meter hingga 30 menit). Ketahanan terhadap cipratan, air, dan debu tidak berlaku secara permanen, dan daya tahan mungkin berkurang akibat penggunaan sehari-hari. Jangan coba mengisi daya iPhone yang basah; lihat panduan pengguna untuk instruksi pembersihan dan pengeringan. Kerusakan akibat cairan tidak ditanggung dalam garansi.<br />\r\n2. Kekuatan baterai bervariasi tergantung penggunaan dan konfigurasi. Lihat www.apple.com/batteries untuk informasi selengkapnya.<br />\r\n3. Layar memiliki sudut melengkung. Jika diukur sebagai persegi, layar iPhone 11 memiliki ukuran diagonal 6,06 inci. Area bidang layar berukuran lebih kecil.<br />\r\n4. Pengisi daya nirkabel Qi dijual terpisah.</p>\r\n', '466799005_IP11.jpg', 'Handphone', '2021-02-10 02:21:57'),
(7, 'iPhone 7', 7999000, 8500000, '13', '<p><strong>Design</strong><br />\r\nDesain yang menarik perhatian serta tahan cipratan air dan debu. Warna hitam dan hitam legam yang baru. Tahan terhadap cipratan dan air. Hadir dengan desain tombol home yang baru.</p>\r\n\r\n<p><strong>Kamera</strong><br />\r\nSaatnya fokus pada kamera yang sepenuhnya baru dengan kamera 12 MP dan kamera FaceTime HD 7 MP dengan penstabilan gambar optik disertai flash true tone quad LED</p>\r\n\r\n<p><strong>Layar</strong><br />\r\nLayar iPhone paling cerah dan penuh warna yang pernah ada dengan layar retina HD. Rentang warna luas, 25% lebih cerah dan 3D touchM</p>\r\n\r\n<p><strong>Chip Fusion A10</strong><br />\r\nChip paling andal yang pernah ada dalam ponsel pintar. 2x lebih cepat dibandingkan iPhone 6 dengan baterai iPhone yang paling tahan lama.</p>\r\n', '210707008_IP7.jpg', 'Handphone', '2021-02-10 02:26:29'),
(8, 'Airpods Pro', 3999000, 4199000, '3', '<p>Peredam Kebisingan Aktif demi suara yang imersif. Mode Transparansi untuk mendengar yang terjadi di sekitar Anda. Sesuaikan ukuran demi kenyamanan. Tahan air dan keringat.(1) Semua dalam headphone in-ear yang super ringan, mudah diatur dengan semua perangkat Apple Anda.(2)</p>\r\n\r\n<p>Poin-poin fitur utama<br />\r\n&bull; Peredam Kebisingan Aktif demi suara yang imersif.<br />\r\n&bull; Mode Transparansi untuk mendengar yang terjadi di sekitar Anda.<br />\r\n&bull; Ujung silikon yang lembut, dengan tiga ukuran untuk pemasangan yang pas<br />\r\n&bull; Tahan air dan keringat(1)<br />\r\n&bull; EQ Adaptive secara otomatis mengatur musik sesuai dengan bentuk telinga Anda<br />\r\n&bull; Pengaturan mudah untuk semua perangkat Apple Anda(2)<br />\r\n&bull; Kontrol musik dan panggilan dari AirPods Anda<br />\r\n&bull; Casing Pengisi Daya Nirkabel menghadirkan kekuatan baterai lebih dari 24 jam(3)</p>\r\n\r\n<p>Legal<br />\r\n1. AirPods Pro tahan air dan keringat untuk aktivitas dan olahraga non-air dan memiliki rating IPX4. Ketahanan air dan keringat tidak berlaku secara permanen. Casing pengisian daya tidak tahan air atau keringat.<br />\r\n2. Memerlukan akun iCloud dan macOS 10.14.4, iOS 12.2, iPadOS, watchOS 5.2, atau tvOS 13.2 atau lebih baru.<br />\r\n3. Kekuatan baterai bervariasi tergantung penggunaan dan konfigurasi. Lihat apple.com/batteries untuk informasi selengkapnya.</p>\r\n', '725857994_AIRPODS PRO.jpg', 'Aksesoris', '2021-02-10 02:28:43'),
(9, 'Canon Eos M100 Pink Limited Edition', 4999000, 5400000, '45', '<p>EOS M100 dicirikan oleh desain yang stylish dan cantik dengan spesifikasi yang setara dengan model yang lebih canggih. Selain itu, secara jelas kamera ini layak membanggakan sejumlah kemajuannya yang signifikan dari pendahulunya, EOS M10, dengan berbagai fitur seperti desain yang lebih canggih dan sensor gambar serta prosesor gambar yang lebih dahsyat.</p>\r\n\r\n<p>Secara khusus, saya terkesan oleh kemampuan Canon untuk mendesain berbagai kontrol yang bisa ditangani dengan mulus tanpa memerlukan pengetahuan atau pengalaman yang lebih terkini. Desain tombol yang disederhanakan, yang bisa dengan mudah dioperasikan seperti smartphone, mungkin terasa sangat intuitif bagi generasi pengguna yang lebih muda usia.</p>\r\n\r\n<p>Saya juga memberikan poin ekstra untuk&nbsp;<a href=\"https://snapshot.canon-asia.com/article/id/eos-m100-life-is-fashion\" target=\"_blank\">EOS M100</a>&nbsp;karena konektivitas Bluetooth dengan smartphone yang mudah dilangsungkan, yang memudahkan untuk mengunggah foto kualitas EOS yang serba indah ke Internet. Hal ini sangat signifikan mengingat popularitas Instagram yang terus meningkat.</p>\r\n', '213181195_CANON Eos M100 Pink Limited Edition.jpg', 'Camera', '2021-02-10 02:42:48'),
(10, 'Canon Eos 70D KIT', 8525000, 9500000, '12', '<h2>CANON EOS 70D KIT EF-S18-135 IS STM BUILT-IN WIFI</h2>\r\n\r\n<p>Canon EOS 70D EF-S 18-55mm f/3.5-5.6 IS STM built-in Wifi adalah Kamera DSLR semi profesional yang dilengkapi dengan&nbsp;20.2MP APS-C CMOS Double Pixel Sensor dan Teknologi Sensor AF deteksi fasa. Kedua Fitur ini didesain untuk memberikan Kamera DSLR Canon 70D kecepatan fokus kamera yang impresif selama pemotretan foto dan Video&nbsp;<em>Live View</em>.</p>\r\n\r\n<p>20.2MP APS-C CMOS Sensor.<br />\r\nDIGIC 5+ Image Processor.<br />\r\n3.0&Prime; 1.04m-Dot Vari-Angle Touchscreen.<br />\r\nFull HD 1080p/30 Video &amp; Movie Servo AF.<br />\r\nDual Pixel CMOS AF with Live View.<br />\r\n19-Point All Cross-Type Phase-Detect AF.<br />\r\nNative ISO 12800, Extended to ISO 25600.<br />\r\n7 fps Shooting at Full Resolution.</p>\r\n', '737157106_CANON Eos 70D KIT.jpg', 'Camera', '2021-02-10 02:45:43'),
(11, 'Canon Eos 1300D KIT', 3775000, 4000000, '6', '<h2>CANON EOS 1300D KIT EF-S 18-55MM IS II GARANSI DISTRIBUTOR</h2>\r\n\r\n<p>Canon EOS 1300D Kit EF-S 18-55mm IS II Garansi Distributor dilengkapi dengan Sensor 18 MegaPixel ukuran APS-C dan&nbsp;image prosesor DIGIC 4 + fitur kinerja tinggi. Canon EOS 1300D memiliki fitur auto shooting yang melimpah dan memungkinkan Anda untuk mengambil foto yang indah seperti pro terlepas dari subjek dan genre. Wi-Fi dan NFC di&nbsp;Canon EOS 1300D ini memungkinkan transfer file yang mudah ke perangkat lain. Semua lebih nyaman untuk berbagi foto-foto indah di media sosial.&nbsp;</p>\r\n\r\n<p>Fitur Utama Canon EOS 1300D Kit EF-S 18-55mm<br />\r\n18 megapixel APS-C CMOS sensor &amp; DIGIC 4+<br />\r\n9-point AF with 1 centre cross-type AF point.<br />\r\n3 inch TFT LCD Screen Fixed Type.<br />\r\nISO 100 &ndash; 12800 (Auto)<br />\r\nFull HD Recording.<br />\r\nWi-Fi with NFC.<br />\r\nHi-speed USB Support.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '851287883_CANON Eos 1300d KIT.jpg', 'Camera', '2021-02-10 02:47:16'),
(12, 'Canon Power Shot SX620', 3780000, 4500000, '32', '<h2>CANON POWERSHOT SX620 HS BLACK</h2>\r\n\r\n<p>Canon PowerShot SX620 HS Black merupakan&nbsp;kamera digital yang ramping menampilkan resolusi tinggi 20.2MP 1/2.3&Prime; BSI-CMOS Sensor bersama dengan DIGIC 4+ image processor menjadikanya begitu powerfull. Sensor dan prosesor bergabung membentuk Canon HS SISTEM, yang menghasilkan citra dengan kejelasan&nbsp;luar biasa dan berkualitas, serta mengurangi kebisingan saat bekerja pada tingkat sensitivitas&nbsp;tinggi dalam kondisi cahaya rendah.</p>\r\n\r\n<p>Nikmati juga&nbsp;fleksibilitas dari Optical Zoom 25x (25-625mm) yang kuat dengan hasil gambar bagus, baik untuk jarak dekat dan jauh. Dilengkapi juga&nbsp;Intelligent IS untuk stabilisasi gambar yang optimal, hal ini akan membantu menangkap semua hasil gambar anda dengan&nbsp;indah seperti close-up maupun gambar&nbsp;pemandangan yang diambil dari jarak jauh dengan bebas tanpa khawatir dari goyangan ataupun guncangan pada kamera yang dapat mengganggu hasil jepretan anda. Selain itu, Anda juga dapat memamerkan foto Anda dengan mudah cukup menggunakan fitur Wi-Fi&reg; &nbsp;dan NFC.</p>\r\n\r\n<p>Dengan kamera PowerShot SX620 HS di tangan, Anda akan terkesan pada kemampuan zooming dari kamera digital kompak ini. 25x Optical Zoom yang powerfull dalam body yang memiliki desain ramping, membuat anda dapat mengambil foto hasil yang luar biasa. Selain itu, dengan teknologi canggih Image Stabilization (IS) akan membantu memastikan gambar dan video yang diambil&nbsp;memiliki kualitas luar biasa, dengan hasil yang hampir bebas dari guncangan dalam berbagai macam situasi.</p>\r\n\r\n<h3>Fitur Utama Canon PowerShot SX620 HS</h3>\r\n\r\n<ul>\r\n	<li>20MP &ndash; 1/2.3&Prime; BSI-CMOS Sensor</li>\r\n	<li>25&ndash;625 mm F3.2 &ndash; F6.6 Zoom Lens</li>\r\n	<li>Built-in Wireless (Wi-fi) dan NFC Connectivity</li>\r\n	<li>Image Stabilization</li>\r\n	<li>1920 x 1080 Max Video Resolution</li>\r\n	<li>Face Detection Focusing</li>\r\n	<li>20.0MP &ndash; High Resolution Sensor</li>\r\n	<li>922k dots LCD Resolution</li>\r\n	<li>Manual Focusing</li>\r\n	<li>25mm Wide Angle Lens</li>\r\n	<li>625mm Good Tele Lens</li>\r\n	<li>25X Optical Zoom</li>\r\n	<li>ISO 80 &ndash; 3200</li>\r\n	<li>3&Prime; Fixed Type Screen</li>\r\n	<li>2.5 fps continuous shooting</li>\r\n	<li>1920 x 1080 video resolution</li>\r\n	<li>Berat 182g, dimensi 97 x 57 x 28 mm</li>\r\n</ul>\r\n', '839545028_CANON PowerShot SX620 - Red.jpg', 'Camera', '2021-02-10 02:49:11'),
(13, 'MagSafe Charger iPhone 12', 899000, 999000, '5', '<p>Pengisi Daya MagSafe memudahkan pengisian daya nirkabel. Magnet yang sejajar sempurna terpasang ke iPhone 12 atau iPhone 12 Pro Anda dan memberikan pengisian nirkabel yang lebih cepat hingga 15W.</p>\r\n\r\n<p>Pengisi Daya MagSafe menjaga kompatibilitas dengan pengisian daya Qi, sehingga dapat digunakan untuk mengisi daya iPhone 8 atau iPhone terbaru secara nirkabel, serta model AirPods dengan wadah pengisi daya nirkabel, seperti yang Anda lakukan dengan pengisi daya bersertifikasi Qi.</p>\r\n\r\n<p>Pengalaman penyelarasan magnetik hanya berlaku untuk model iPhone 12 dan iPhone 12 Pro.</p>\r\n', '522511672_MagSafe Charger.jpg', 'Aksesoris', '2021-02-10 02:52:52'),
(14, 'Apple Watch Series 5 GPS ', 7799000, 8000000, '22', '<p>Apple Watch Series 5 memiliki layar yang selalu aktif, menampilkan waktu dan informasi penting &mdash; tanpa perlu mengangkat pergelangan tangan Anda. Jam ini dapat meminta bantuan dengan cepat melalui Panggilan Darurat SOS dan deteksi jatuh. Memungkinkan Anda memantau detak jantung Anda. Pantau olahraga dan aktivitas Anda. Membantu Anda bernavigasi dengan kompas bawaan. Dan semakin mudah terhubung dengan orang dan informasi yang penting bagi Anda, melalui pergelangan tangan Anda.</p>\r\n\r\n<p>Poin-poin fitur utama<br />\r\n&bull; GPS<br />\r\n&bull; Layar Retina yang Selalu Aktif<br />\r\n&bull; Layar 30% lebih besar(3)<br />\r\n&bull; Siap dipakai berenang(4)<br />\r\n&bull; Sensor jantung elektrik dan optik<br />\r\n&bull; Simpan musik dan podcast<br />\r\n&bull; Kompas dan tanjakan<br />\r\n&bull; Panggilan Darurat SOS(2)<br />\r\n&bull; Deteksi jatuh<br />\r\n&bull; S5 SiP dengan prosesor dual-core 64-bit hingga 2x lebih cepat(3)<br />\r\n&bull; watchOS 6 dengan tren aktivitas, pemantauan siklus, notifikasi suara bising, dan App Store di pergelangan tangan Anda<br />\r\n&bull; Casing aluminium</p>\r\n\r\n<p>Beberapa tali jam mengandung magnet dan mungkin menyebabkan gangguan pada kompas di Apple Watch.</p>\r\n\r\n<p>Legal<br />\r\n1. Pilihan dapat bervariasi; tanyakan kepada staf penjualan untuk model yang tersedia. Beberapa tali jam dijual terpisah. Apple Watch Series 5 memerlukan iPhone 6s atau lebih baru dengan iOS 13 atau lebih baru.<br />\r\n2. Agar dapat melakukan Panggilan Darurat SOS, iPhone Anda harus berada dalam jarak dekat. Jika tidak, Apple Watch perlu terhubung ke jaringan Wi-Fi yang dikenal dan Anda perlu mengatur Panggilan Wi-Fi.<br />\r\n3. Dibandingkan dengan Apple Watch Series 3.<br />\r\n4. Standar ISO 22810:2010. Sesuai untuk aktivitas air dangkal seperti berenang. Tidak disarankan untuk perendaman melebihi kedalaman dangkal dan aktivitas air berkecepatan tinggi.</p>\r\n', '580099228_IW S5.jpg', 'Watch', '2021-02-11 10:14:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hp` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `images` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `bergabung` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `hp`, `email`, `password`, `birthday`, `gender`, `address`, `images`, `level`, `bergabung`) VALUES
(1, 'akmad nudin', '08122012883', 'adex@gmail.com', '202cb962ac59075b964b07152d234b70', '18-febuary-2008', 'laki-laki', 'dfsfdsf', '6024c5f4ea0b80.04681424.gif', 'admin', '2021-02-08 05:18:42'),
(6, 'elis apriyani dewi', '081282019897', 'naomi@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '18-january-2009', 'perempuan', 'Jl.abdullah III jakarta barat', 'girl.png', 'member', '2021-02-09 01:06:30'),
(7, 'akmad nudin', '08122012883', 'mahasiswa@gmail.com', 'e804284e335274ce0cb419c016f06b25', '24-october-2009', 'laki-laki', 'Jl.Kebalen Gg.H.Atun RT.05 RW.03 Kebalen, Babelan, Bekasi Utara, Jawa Barat', '6024c64d25e7c2.16613864.png', 'member', '2021-02-10 07:10:24'),
(8, 'Kocak Kocak', '01337', 'TestungTest@gmail.com', '4914bd0df1468a273bc90a86bc237298', '18-april-2011', 'laki-laki', 'asassadasd', 'man.png', 'member', '2021-02-10 09:56:27'),
(9, 'asep asep', '087878058444', 'asep.martin1980@gmail.com', '25f9e794323b453885f5181f1b624d0b', '1-january-2010', 'laki-laki', 'vil adago tol', 'man.png', 'member', '2021-02-11 09:03:08'),
(10, 'ibnu hadi sumitro', '081234567890', 'ibnu@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '1-january-2022', 'laki-laki', 'Jakarta', 'man.png', 'member', '2021-02-15 06:54:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categori`
--
ALTER TABLE `categori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categori`
--
ALTER TABLE `categori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
