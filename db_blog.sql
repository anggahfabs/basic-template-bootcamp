-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2024 at 04:27 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `id` int(11) NOT NULL,
  `album_name` varchar(100) NOT NULL,
  `album_seo` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `is_active` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id`, `album_name`, `album_seo`, `photo`, `is_active`) VALUES
(17, 'Album 1', 'album-1', 'album-1-1581343722711.jpg', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `title`, `photo`) VALUES
(5, 'Home', '4c3c8a6b66652e3c22f7cf49a01bcd60.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `is_active` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`, `slug`, `is_active`) VALUES
(6, 'Champions', 'champions', 'Y'),
(7, 'Inggris', 'inggris', 'Y'),
(8, 'Spanyol', 'spanyol', 'Y'),
(10, 'Transfer', 'transfer', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `contact_name` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `contact_name`, `description`) VALUES
(1, 'About Me', 'Ini adalah project portal berita dan artikel sederhana, yang bertujuan membantu para programmer memahami dalam pembuatan projects serta penguasaan dalam bahasa pemrograman, library dan framework.');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `id_album` int(11) NOT NULL,
  `gallery_name` varchar(100) NOT NULL,
  `gallery_seo` varchar(100) NOT NULL,
  `information` text NOT NULL,
  `photo` varchar(100) NOT NULL,
  `is_active` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `id_album`, `gallery_name`, `gallery_seo`, `information`, `photo`, `is_active`) VALUES
(9, 17, 'Galeri 2', 'galeri-2', 'LIfe is Strange', 'galeri-2-15815614412.jpg', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Table structure for table `identity`
--

CREATE TABLE `identity` (
  `id` int(11) NOT NULL,
  `web_name` varchar(255) NOT NULL,
  `web_address` varchar(255) NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `identity`
--

INSERT INTO `identity` (`id`, `web_name`, `web_address`, `meta_description`, `meta_keyword`, `photo`) VALUES
(1, 'elevensports.com', 'elevensports.com', 'awdasdawdasdawdasdwadd.', 'Garsansnews.com', 'cccecce303924460d0da3039ee4f442a.png');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login_attempts`
--

INSERT INTO `login_attempts` (`id`, `ip_address`, `login`, `time`) VALUES
(10, '::1', 'admin@gmail.com', 1716553362);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `url` varchar(50) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `is_active` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `title`, `url`, `icon`, `is_active`) VALUES
(3, 'Manajemen Artikel', '', 'fas fa-fw fa-newspaper', 'Y'),
(4, 'Media', '', 'fas fa-fw fa-photo-video', 'Y'),
(5, 'Profile', 'home', 'fas fa-fw fa-home', 'Y'),
(6, 'Logout', 'auth/logout', '', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `posting`
--

CREATE TABLE `posting` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `seo_title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `featured` char(1) NOT NULL,
  `choice` char(1) NOT NULL,
  `thread` char(1) NOT NULL,
  `id_category` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `is_active` char(1) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posting`
--

INSERT INTO `posting` (`id`, `title`, `seo_title`, `content`, `featured`, `choice`, `thread`, `id_category`, `photo`, `is_active`, `date`) VALUES
(69, 'Arsenal, Klub yang Tepat Bagi Rashford Jika Ingin Pindah dari Man United', 'arsenal-klub-yang-tepat-bagi-rashford-jika-ingin-pindah-dari-man-united', 'Eks gelandang Arsenal, Emmanuel Petit, menyarankan pada Marcus Rashford untuk merapat ke skuad The Gunners jika ia memutuskan cabut dari Manchester United.\r\n\r\nMarcus Rashford jadi salah satu andalan United di lini serang sejak ia mentas dari tim akademi. Namun belakangan ini masa depannya di Old Trafford menjadi tidak jelas.\r\n\r\nRashford sepertinya tak cocok dengan Erik Ten Hag. Ia bahkan sempat kedapatan bersenang di sebuah kelab malam dan akhirnya absen membela United di pentas FA Cup pada awal Januari 2024 kemarin.\r\n\r\nIa pun dikabarkan bisa segera cabut dari Man United. Padahal kontraknya di Old Trafford masih tersisa sampai 2028.', 'Y', 'N', 'Y', 7, '2e77f7fe67d99a8e11ba94888dc76726.jpg', 'Y', '2024-05-24'),
(70, 'Kylian Mbappe Datang, Posisi Jude Bellingham berubah?', 'kylian-mbappe-datang-posisi-jude-bellingham-berubah', 'Kylian Mbappe diduga kuat bakal segera menuntaskan kepindahannya ke Real Madrid. Mbappe sudah berpamitan dengan PSG, tinggal menunggu pengumuman resmi bergabung dengan El Real.\r\n\r\nMemang hingga kini belum ada kejelasan soal klub baru Mbappe, tapi fans sepak bola di seluruh dunia yakin bahwa superstar Prancis itu akan bermain untuk Real Madrid.\r\n\r\nKedatangan Mbappe ke Madrid memang sudah ditunggu-tunggu, bahkan sudah sejak beberapa tahun lalu. Mbappe berulang kali mendekati pintu keluar PSG, tapi pada akhirnya tetap bertahan.\r\n\r\nMbappe boleh meninggalkan PSG dengan kepala tegak. Dia sudah tujuh tahun bermain untuk juara Prancis tersebut dan telah memberikan segalanya, termasuk membantu tim meraih enam trofi Ligue 1.\r\n\r\nMbappe meninggalkan tim secara gratis. Diduga kuat dia bakal bergabung dengan Real Madrid, meski hingga kini belum ada keterangan resmi dari kedua pihak.\r\n\r\nMenurut Fabrizio Romano, Mbappe sampai rela melakukan banyak hal demi mewujudkan kepindahannya ke Real Madrid. Dalam dua tahun terakhir ada beberapa klub Premier League yang mendekati Mbappe, tapi dia tidak pernah tertarik.\r\n\r\nBahkan dikabarkan bahwa Mbappe menolak tawaran bernilai fantastis dari Liga Arab Saudi, yaitu gaji sebesar 200 juta euro per tahun.\r\n\r\nKedatangan Mbappe jelas bakal membuat Madrid jadi jauh lebih kuat. Sekarang Los Blancos sudah superior dengan para penyerang muda, seperti Vinicius Junior dan Rodrygo, didukung Jude Bellingham sebagai gelandang serang.\r\n\r\nMbappe jelas bakal membuat lini serang Madrid semakin berbahaya. Namun, kehadiran Mbappe juga mungkin membawa perubahan untuk pemain-pemain lain, termasuk Jude Bellingham.\r\n\r\nMengutip Marca, jika Mbappe jadi ke Madrid, salah satu pemain yang mungkin terdampak langsung adalah Jude Bellingham. Kemungkinan besar Bellingham akan mengalami perubahan posisi di lapangan.\r\n\r\nMusim ini Bellingham memang sudah bermain di banyak posisi, sesuai instruksi Ancelotti. Dia bisa bermain sebagai false nine atau bahkan sayap kiri.\r\n\r\nNah, dengan kedatangan Mbappe, diduga kuat Bellingham akan bermain lebih dalam di lini tengah untuk lebih banyak terlibat dalam proses permainan tim.', 'Y', 'N', 'N', 8, '858f4b735c26a9d9830f1269934fc84d.jpg', 'Y', '2024-05-24'),
(71, 'Saingi Liverpool dan MU, Newcastle Pepet Dua Pemain Sayap \'Panas\' Premier League', 'saingi-liverpool-dan-mu-newcastle-pepet-dua-pemain-sayap-panas-premier-league', ' Newcastle dikabarkan ingin merekrut salah satu dari pilar West Ham, Jarrod Bowen atau bintang Crystal Palace, Michael Olise. musim panas ini, sebelum kalah bersaing dengan Liverpool dan Manchester United.\r\n\r\nMeskipun tidak sehebat musim lalu, ini masih merupakan musim yang sangat baik bagi Newcastle yang berada di posisi ketujuh klasemen Premier League, mengamankan kelolosan ke UEFA Conference League, kecuali jika Man United memenangkan final FA Cup pada hari Sabtu.\r\n\r\nThe Magpies berencana untuk terus mempercayai Eddie Howe di bursa transfer mendatang, meskipun mereka harus menjual pemain terlebih dahulu untuk memenuhi peraturan FFP.\r\n\r\nPrioritas utama mereka adalah pemain sayap kanan baru dan untuk itu, The Telegraph melaporkan bahwa Bowen dan Olise berada dalam daftar yang diinginkan oleh Howe.', 'Y', 'N', 'N', 7, '245a26fdf3dd8cc039b04936e7bac39e.jpg', 'Y', '2024-05-24'),
(72, 'Final Liga Champions lawan Dortmund, Real Madrid Kehilangan Tchouameni?', 'final-liga-champions-lawan-dortmund-real-madrid-kehilangan-tchouameni', 'Raksasa La Liga Real Madrid dikabarkan tak akan bisa diperkuat oleh Aurelien Tchouameni di final Liga Champions kontra Borussia Dortmund.\r\n\r\nMadrid tampil perkasa pada musim 2023/2024 ini. Mereka sebelumnya sudah berhasil menjadi juara La Liga alias Liga Spanyol.\r\n\r\nMadrid jadi juara di pekan ke-34. Mereka sukses mengalahkan sang rival abadi yakni Barcelona\r\n\r\nReal Madrid kini berpeluang mengakhiri musim dengan meraih treble. El Real sekarang tinggal memenangkan laga melawan Borussia Dortmund di final Liga Champions.\r\n\r\nSayangnya ada kabar kurang bagus untuk Madrid. Salah satu gelandang andalan mereka yakni Aurelien Tchouameni dilaporkan tak akan bisa bermain di laga final tersebut.\r\n\r\nRumor ini diklaim oleh Marca. Mereka mengklaim bahwa pemain asal Prancis itu sekarang sedang berjuang menyembuhkan cedera kakinya.\r\n\r\nIa tak akan bisa pulih tepat waktu untuk laga final yang bakal digelar pada 2 Juni 2024 mendatang. Laporan itu juga menyebut Tchouameni awalnya merasa pede akan bisa bermain lawan Dortmund.\r\n\r\nKini Tchouameni mengalihkan fokusnya. Ia akan bekerja keras agar bisa fit lagi demi membela Prancis di Euro 2024.', 'N', 'Y', 'Y', 6, '3a59c9564338c38afd66cf4eb0f03374.jpg', 'Y', '2024-05-24'),
(73, 'Jude Bellingham Mau Ballon d\'Or? Salah Satu Caranya ya Ikuti Jejak Messi', 'jude-bellingham-mau-ballon-d-or-salah-satu-caranya-ya-ikuti-jejak-messi', 'Eks winger Real Madrid Gareth Bale mengatakan Jude Bellingham harus mengikuti jejak Lionel Messi jika ia memang menginginkan penghargaan Ballon d\'Or.\r\n\r\nSoal penghargaan Ballon d\'Or, Messi memang tak ada tandingannya. Ia adalah kolektor terbanyak penghargaan individual bergengsi di dunia sepak bola.\r\n\r\nMessi sekarang ini telah mengoleksi delapan gelar Ballon d\'Or. Jumlah itu lebih banyak ketimbang yang diraih legenda Real Madrid, Cristiano Ronaldo (5).\r\n\r\nNamun kini era Messi dan Ronaldo tampaknya sudah berakhir. Jadi penghargaan Ballon d\'Or bisa diperebutkan secara bebas oleh pemain lain.', 'N', 'Y', 'N', 8, '97ca7fe8c2461d2e18a3ca9a3058d073.jpg', 'Y', '2024-05-24'),
(74, 'Yang Tersisa dari Tatanan Lama Real Madrid: Dani Carvajal dan Luka Modric', 'yang-tersisa-dari-tatanan-lama-real-madrid-dani-carvajal-dan-luka-modric', 'Real Madrid mendominasi persaingan di Liga Champions pada edisi 2016 hingga 2018. Waktu berlalu, satu per satu pemain hengkang dari Real Madrid. Kini, yang tersisa adalah Dani Carvajal dan Luka Modric.\r\n\r\nToni Kroos membuat keputusan penting pada Selasa (21/4/2024) malam WIB. Pemain asal Jerman itu mengumumkan akan pensiun usai membela Jerman pada ajang Euro 2024.\r\n\r\nArtinya, tidak ada nama Kroos dalam daftar pemain Real Madrid musim depan. Kroos tidak akan meneken kontrak baru. Final Liga Champions 2023/2024 akan jadi laga terakhir Kroos bersama Madrid.\r\n\r\nSelain Toni Kroos, Nacho Fernandez juga bakal meninggalkan Real Madrid. Sang kapten tidak akan meneken kontrak baru. Pengabdiannya pada Real Madrid bakal berakhir. Dia akan melanjutkan karier di luar Eropa.\r\n\r\nKroos dan Nacho adalah bagian dari tim Real Madrid yang juara Liga Champions tiga musim beruntun: 2015/2016, 2016/2017, dan 2017/2018.\r\n\r\nSatu per satu anggota tim tersebut telah pergi dari Real Madrid. Cristiano Ronaldo, Keylor Navas, Isco, Gareth Bale, Sergio Ramos, Marcelo, Casemiro, dan Karim Benzema telah pindah.\r\n\r\nNamun, sisa-sisa \'tatanan lama\' itu masih terasa di skuad Real Madrid. Dua pemain tersisa dari tim tersebut: Luka Modric dan Dani Carvajal. Mereka akan jadi penerus tonggak kejayaan Real Madrid pada generasi baru.', 'N', 'N', 'N', 8, '5c194d264d289c6c1f13868bbea47785.jpg', 'Y', '2024-05-24'),
(75, 'Joselu, Pemain Pinjaman yang Jadi Pahlawan Real Madrid di Liga Champions', 'joselu-pemain-pinjaman-yang-jadi-pahlawan-real-madrid-di-liga-champions', 'Joselu menjadi pahlawan kemenangan Real Madrid saat berhadapan dengan Bayern Munchen. Dua gol yang dicetaknya mengantarkan Los Blancos ke final Liga Champions.\r\n\r\nReal Madrid menjamu Bayern Munchen pada leg kedua semifinal Liga Champions 2023/2024, Kamis (9/5/2024) dini hari WIB. Bermain di Santiago Bernabeu, Los Blancos menang dengan skor 2-1.\r\n\r\nSebagai tuan rumah, Real Madrid sempat tertinggal lebih dulu. Alphonso Davies berhasil menjebol gawang Andriy Lunin pada menit ke-68.\r\n\r\nSaat Real Madrid akan kalah, Joselu muncul sebagai pahlawan. Sebagai pengganti, dia mencetak dua gol di penghujung babak kedua untuk membalikkan keadaan.\r\n\r\nKemenangan itu membuat Real Madrid lolos ke final. Mereka akan berebut juara dengan Borussia Dortmund di Wembley pada 2 Juni 2024 dini hari WIB.\r\n\r\nJoselu dikontrak Real Madrid pada awal musim ini. Dia dipinjam dari Espanyol, tim yang musim lalu terdegradasi.\r\n\r\nDi Santiago Bernabeu, Joselu hanya menjadi pemain pelapis. Meski begitu, dia mampu memberikan kontribusi yang cukup bagus.\r\n\r\nDari 46 pertandingan di seluruh kompetisi, Joselu mampu mencetak 16 gol. Striker berusia 34 tahun itu juga menyumbang tiga.\r\n\r\nJoselu juga mampu menunjukkan ketajamannya di Liga Champions. Dia sudah mengemas lima gol termasuk brace ke gawang Bayern Munchen.', 'N', 'Y', 'N', 6, '059991d563662a6889d3847f578b1d77.jpg', 'Y', '2024-05-24'),
(76, 'Sabda Ancelotti: Sebentar Lagi Vinicius Menang Ballon d\'Or', 'sabda-ancelotti-sebentar-lagi-vinicius-menang-ballon-d-or', 'Pelatih Real Madrid Carlo Ancelotti meyakini tak lama lagi Vinicius Jr bakal bisa memenangkan penghargaan Ballon d\'Or.\r\n\r\nHal tersebut terucap darinya setelah berakhirnya duel Real Madrid vs Bayern Munchen di leg kedua semifinal Liga Champions 2023/2024 di Santiago Bernabeu, Kamis (09/05/2024).\r\n\r\nPertandingan tersebut berlangsung dengan alot dan dramatis. Bayern awalnya bisa mencetak gol lebih dahulu melalui Alphonso Davies.\r\n\r\nNamun Madrid akhirnya bisa mencetak dua gol balasan melalu Joselu. El Real akhirnya menang 2-1\r\n\r\nVinicius Jr memang tampil apik saat melawan Bayern Munchen dalam dua leg. Di leg pertama ia mencetak dua gol.\r\n\r\nDi leg kedua ini ia memang tak mencetak gol tapi ikut berkontribusi atas terciptanya gol pertama Joselu. Carlo Ancelotti kemudian mengklaim anak asuhnya itu bakal diganjar penghargaan Ballon d\'Or dalam waktu dekat.\r\n\r\n“Perasaan saya adalah Vini Jr hampir memenangkan Ballon d’Or,\" klaimnya seperti dilansir Fabrizio Romano.\r\n\r\n“Apa yang ia lakukan musim ini sungguh spesial. Ia selalu muncul di momen-momen penting,\" pujinya.', 'N', 'N', 'Y', 6, '7731ddac36b0ce06b2593ef3312c857b.jpg', 'Y', '2024-05-24'),
(77, 'Tidak Akan Pernah Ada Toni Kroos Lainnya', 'tidak-akan-pernah-ada-toni-kroos-lainnya', ' Toni Kroos telah memutuskan pensiun usai bermain di Euro 2024. Menurut rekannya di Real Madrid, Toni Kroos adalah pemain yang unik. Tidak akan pernah ada Toni Kroos lain di sepak bola.\r\n\r\nFebruari 2024 lalu, Toni Kroos sempat dikabarkan bakal meneken kontrak baru dengan Real Madrid. Namun, situasi yang terjadi dalam beberapa pekan terakhir adalah kebalikan dari harapan fans Real Madrid.\r\n\r\nSeperti yang dilakukan Philipp Lahm, Toni Kroos ingin pensiun ketika berada di puncak karier. Nah, musim 2023/2024 jadi pilihan pemain 34 tahun. Dia akan pensiun usai membela Jerman di Euro 2024.\r\n\r\nToni Kroos punya gaya bermain yang sangat unik. Kroos tidak cepat. Kroos juga cukup prima untuk duel-duel fisik. Namun, dengan visi dan akurasi umpan yang dimiliki, Kroos bisa mengendalikan permainan.\r\n\r\n\"Dunia sepak bola sedang bersedih karena seorang pesepakbola yang bersejarah telah pergi, dan saya akui saya juga sangat sedih,\" tulis Luka Modric di akun Instagram miliknya.\r\n\r\nBagi Modric, Kroos adalah legenda. Bukan hanya untuk Real Madrid akan tetapi dunia. Modric sangat bangga bisa berbagi ruang dengan Kroos di Real Madrid. Modric sangat menikmati setiap momen bersama Kroos.\r\n\r\n\"Tidak akan pernah ada Toni Kroos yang lainnya. Malam-malam Eropa yang tak terlupakan, gelar-gelar, keajaiban Bernabeu. Kami tidak akan pernah melupakan masa keemasan di klub ini dalam hidup kami,\" sambung Modric.', 'N', 'Y', 'N', 8, '1ba874b92e67cf62925e593fb1b4d290.jpg', 'Y', '2024-05-24'),
(78, 'Apes, Manchester United Dipastikan Tanpa Harry Maguire di Final FA CupLife Is Strange ', 'apes-manchester-united-dipastikan-tanpa-harry-maguire-di-final-fa-cuplife-is-strange', ' Erik ten Hag memberikan kabar buruk bahwa pilar Manchester United, Harry Maguire, dipastikan absen dalam pertandingan final FA Cup melawan Manchester City.\r\n\r\nSetan Merah akan berjumpa dengan sang rival pada laga babak final FA Cup 2023/24. Rencananya, pertandingan bertajuk Derby Manchester bakal diselenggarakan di Wembley, Sabtu (25/5/2024) malam WIB.\r\n\r\nMaguire terakhir kali tampil untuk Man United saat timnya bermain imbang 1-1 dengan Burnley di Old Trafford dan absen dalam lima pertandingan terakhir di Premier League karena cedera pangkal paha.\r\n\r\nPemain asal Inggris itu telah bekerja keras untuk kembali dari bangku cadangan ke dalam starting XI Setan Merah musim ini dan Ten Hag akan khawatir dengan kebugaran sang pemain, mengingat banyaknya cedera yang dialami klub di lini belakang.', 'N', 'N', 'N', 7, '793468752fd7635bdb72c109f38b8ee8.jpg', 'Y', '2024-05-24'),
(79, 'Antony berasa Cristiano Ronaldo!!! Ingin memasuki lapangan berlaga keras!! ', 'antony-berasa-cristiano-ronaldo-ingin-memasuki-lapangan-berlaga-keras', ' Pemain sayap Manchester United, Antony, belakangan ini menjadi sorotan publik. Bukan karena aksi cemerlangnya di lapangan, melainkan karena gaya permainannya yang unik dan terkadang mengundang tawa. Meskipun kerap kali menunjukkan ekspresi dan gestur yang penuh percaya diri, aksi Antony di atas lapangan sering kali berakhir dengan momen yang justru membuat penggemar tersenyum lebar.\r\n\r\nPada laga terakhir melawan tim rival, Antony tampil dengan penuh semangat. Namun, bukan dribbling apik atau gol spektakuler yang menjadi pembicaraan, melainkan insiden-insiden kocak yang ia tunjukkan. Mulai dari kontrol bola yang tak terduga hingga gerakan yang terlihat seperti tarian, Antony berhasil mencuri perhatian penonton dengan cara yang berbeda.\r\n\r\n“Antony memang selalu tampil penuh semangat. Tapi kadang-kadang, aksi-aksinya di lapangan lebih mirip seperti komedi,” ujar seorang penggemar yang menyaksikan pertandingan tersebut.\r\n\r\nMeskipun demikian, penampilan Antony tetap mendapat dukungan dari para penggemar. Mereka menganggap bahwa kehadiran Antony memberikan warna tersendiri dalam permainan tim. Bahkan, beberapa di antara mereka merasa aksi-aksi kocak Antony justru menjadi hiburan tersendiri di tengah ketatnya persaingan liga.\r\n\r\n“Ya, memang lucu sih lihat Antony main. Tapi justru itu yang bikin dia beda. Setidaknya, kita bisa terhibur sambil nonton bola,” kata seorang pengguna media sosial.\r\n\r\nTak hanya penggemar, rekan setim dan pelatih juga menaruh perhatian khusus pada gaya bermain Antony. Mereka melihat potensi besar dalam diri pemain muda ini, meskipun masih perlu banyak peningkatan untuk benar-benar bersinar di kompetisi elite.\r\n\r\n“Antony punya talenta luar biasa. Kalau dia bisa sedikit lebih serius dan fokus, saya yakin dia bisa jadi pemain kunci bagi tim,” ujar pelatih Manchester United.\r\n\r\nDengan segala kontroversi dan candaan yang mengiringi penampilannya, Antony tetap menunjukkan semangat juang tinggi di setiap pertandingan. Hanya waktu yang akan membuktikan apakah pemain ini akan mengubah gaya bermainnya atau tetap mempertahankan ciri khasnya yang kocak dan menghibur.\r\n\r\nBagaimanapun juga, kehadiran Antony dalam dunia sepak bola memberikan pelajaran bahwa di tengah tekanan dan kompetisi, masih ada ruang untuk tawa dan hiburan. Dan mungkin, itulah yang membuat sepak bola menjadi olahraga yang dicintai oleh jutaan orang di seluruh dunia.', 'N', 'N', 'N', 7, '05ef2e75bbd5e39a2e9a58b1e086fd12.jpg', 'Y', '2024-05-24'),
(81, 'Saran Rivaldo ke Antony: Tinggalkan Inggris!', 'saran-rivaldo-ke-antony-tinggalkan-inggris', 'Antony saat ini tengah mengalami kesulitan di Manchester United. Karena itu, legenda sepak bola Brasil Rivaldo menyarankan Antony untuk meninggalkan Premier League agar bisa membangkitkan kariernya.\r\n\r\nManchester United merekrut Antony pada bursa transfer musim panas 2022. Pemain sayap asal Brasil tersebut ditebus dari Ajax Amsterdam dengan biaya yang mencapai 95 juta euro.\r\n\r\nMeski berharga mahal, Antony kesulitan untuk tampil dengan apik bersama Manchester United. Ia minim mencetak gol dan assist untuk Setan Merah.\r\n\r\nAntony saat ini tengah mengalami kesulitan di Manchester United. Karena itu, legenda sepak bola Brasil Rivaldo menyarankan Antony untuk meninggalkan Premier League agar bisa membangkitkan kariernya.\r\n\r\nManchester United merekrut Antony pada bursa transfer musim panas 2022. Pemain sayap asal Brasil tersebut ditebus dari Ajax Amsterdam dengan biaya yang mencapai 95 juta euro.\r\n\r\nMeski berharga mahal, Antony kesulitan untuk tampil dengan apik bersama Manchester United. Ia minim mencetak gol dan assist untuk Setan Merah.\r\n', 'N', 'N', 'N', 7, '9b923eeb87e33be252009b6684998bec.jpg', 'Y', '2024-05-24'),
(82, 'Sudah Ada Arda Guler, Real Madrid Tidak Akan Beli Gelandang Baru?Best Horror Game', 'sudah-ada-arda-guler-real-madrid-tidak-akan-beli-gelandang-baru-best-horror-game', 'Klub La Liga, Real Madrid dilaporkan tidak akan belanja gelandang baru di musim panas nanti. Mereka dikabarkan akan mempercayai Arda Guler di lini tengah mereka pada musim depan.\r\n\r\nReal Madrid baru saja kehilangan sosok krusial di tim mereka. Pemain kunci mereka, Toni Kroos mengonfirmasi akan pensiun setelah Euro 2024 digelar nanti.\r\n\r\nKepergian Kroos menyisakan lubang besar di lini tengah El Real. Alhasil Madrid belakangan mulai dikaitkan dengan beberapa gelandang top sebagai pengganti Kroos.\r\n\r\nKlub La Liga, Real Madrid dilaporkan tidak akan belanja gelandang baru di musim panas nanti. Mereka dikabarkan akan mempercayai Arda Guler di lini tengah mereka pada musim depan.\r\n\r\nReal Madrid baru saja kehilangan sosok krusial di tim mereka. Pemain kunci mereka, Toni Kroos mengonfirmasi akan pensiun setelah Euro 2024 digelar nanti.\r\n\r\nKepergian Kroos menyisakan lubang besar di lini tengah El Real. Alhasil Madrid belakangan mulai dikaitkan dengan beberapa gelandang top sebagai pengganti Kroos.', 'N', 'N', 'N', 8, '998584d9c9874e3e1097c6376af0f060.jpg', 'Y', '2024-05-24'),
(86, 'Kelaazzzzzzzzzz!!! Ini Pesan Ronaldo Untuk Kroos yang Umumkan Segera Pensiun', 'kelaazzzzzzzzzz-ini-pesan-ronaldo-untuk-kroos-yang-umumkan-segera-pensiun', 'Legenda Real Madrid, Cristiano Ronaldo, ikut memberikan pesan spesial kepada Toni Kroos yang sebelumnya mengumumkan bakal segera pensiun dari dunia sepak bola.\r\n\r\nPekan ini, ada kejutan datang dari Santiago Bernabeu. Kroos mengumumkan dirinya akan segera gantung sepatu.\r\n\r\nGelandang asal Jerman itu mengaku ia akan pensiun setelah ikut gelaran Euro 2024. Saat itu kontraknya di Real Madrid memang juga kedaluwarsa.\r\n\r\nPengumuman itu sekaligus menjawab semua spekulasi soal masa depannya. Sebelumnya ada rumor yang menyebut ia diincar Juventus dan ada juga kabar Kroos bakal bertahan semusim lagi di Madrid.', 'N', 'N', 'N', 8, '306570495db14eb8bc288102569ef9af.jpg', 'Y', '2024-05-24'),
(88, 'Real Madrid Favorit, tapi Borussia Dortmund Diprediksi Bisa Juara Liga Champions', 'real-madrid-favorit-tapi-borussia-dortmund-diprediksi-bisa-juara-liga-champions', 'Legenda sepak bola Brasil Rivaldo memberikan prediksi yang menarik soal final Liga Champions musim ini. Dia memprediksi Borussia Dortmund bisa menjadi juara.\r\n\r\nDortmund sama sekali tidak diunggulkan di Liga Champions musim ini. Namun, tim asuhan Edin Terzic itu secara mengejutkan mampu menjadi tim pertama yang masuk final.\r\n\r\nPada babak semifinal, Dortmund menyingkirkan PSG untuk mencapai bisa tampil di partai puncak. Mereka menang dengan skor identik 1-0 pada laga tandang dan kandang melawan wakil Prancis itu.\r\n\r\nDi babak final, Dortmund akan berhadapan dengan Real Madrid yang sebelumnya mendepak Bayern Munchen. Mereka akan bertarung di Wembley pada awal bulan depan dalam perebutan juara.', 'N', 'N', 'N', 6, '1de595bc1d67e65a8163647c2ae2b0f7.jpg', 'Y', '2024-05-24');

-- --------------------------------------------------------

--
-- Table structure for table `submenu`
--

CREATE TABLE `submenu` (
  `id` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `sub_title` varchar(50) NOT NULL,
  `sub_url` varchar(50) NOT NULL,
  `is_active` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `submenu`
--

INSERT INTO `submenu` (`id`, `id_menu`, `sub_title`, `sub_url`, `is_active`) VALUES
(1, 1, 'Identitas Web', 'admin/identity', 'Y'),
(2, 1, 'Kontak', 'admin/contact', 'Y'),
(3, 2, 'Menu Utama', 'admin/menu', 'Y'),
(4, 2, 'Sub Menu', 'admin/submenu', 'Y'),
(5, 3, 'Kategori', 'admin/category', 'Y'),
(6, 3, 'Posting', 'admin/posting', 'Y'),
(7, 4, 'Album', 'admin/album', 'N'),
(8, 4, 'Gallery Foto', 'admin/gallery', 'N'),
(10, 4, 'Banner', 'admin/banner', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `activation_selector` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `forgotten_password_selector` varchar(255) DEFAULT NULL,
  `forgotten_password_code` varchar(255) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_selector` varchar(255) DEFAULT NULL,
  `remember_code` varchar(255) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `email`, `activation_selector`, `activation_code`, `forgotten_password_selector`, `forgotten_password_code`, `forgotten_password_time`, `remember_selector`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'administrator', '$2y$12$QUM2OeQCZclQqJIhZKKMt.Aq8dA3Y7eIzjtXsyr.xuE0kDjfj8SLS', 'admin@admin.com', NULL, '', NULL, NULL, NULL, NULL, NULL, 1268889823, 1716553376, 1, 'Garsans', 'News', NULL, '0123456789');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(37, 1, 1),
(38, 1, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `identity`
--
ALTER TABLE `identity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posting`
--
ALTER TABLE `posting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submenu`
--
ALTER TABLE `submenu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_email` (`email`),
  ADD UNIQUE KEY `uc_activation_selector` (`activation_selector`),
  ADD UNIQUE KEY `uc_forgotten_password_selector` (`forgotten_password_selector`),
  ADD UNIQUE KEY `uc_remember_selector` (`remember_selector`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `identity`
--
ALTER TABLE `identity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `posting`
--
ALTER TABLE `posting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `submenu`
--
ALTER TABLE `submenu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
