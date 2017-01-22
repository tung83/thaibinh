-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2017 at 08:17 AM
-- Server version: 5.7.11
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thaibinh_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `sum` text NOT NULL,
  `content` longtext NOT NULL,
  `img` varchar(255) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL,
  `e_title` text NOT NULL,
  `e_sum` text NOT NULL,
  `e_content` longtext NOT NULL,
  `e_meta_keyword` text NOT NULL,
  `e_meta_description` text NOT NULL,
  `active` tinyint(1) NOT NULL,
  `ind` int(11) NOT NULL,
  `dates` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `title`, `sum`, `content`, `img`, `meta_keyword`, `meta_description`, `e_title`, `e_sum`, `e_content`, `e_meta_keyword`, `e_meta_description`, `active`, `ind`, `dates`) VALUES
(1, 'Giới thiệu', 'KÍNH CHÀO QUÝ DOANH NGHIỆP !\r\n\r\nCÔNG TY TNHH KỸ THUẬT TỰ ĐỘNG THÁI BÌNH – TBC Công ty xuất nhập khẩu hàng đầu và là nhà cung cấp chuyên nghiệp các mặt hàng,thiết bị điện và điện công nghiệp nói chung và Yaskawa nói riêng.\r\n\r\n\r\n\r\nChúng tôi đáp ứng xu hướng công nghiệp hóa,hiện đại hóa.Ứng dụng công nghệ cao và tự động hóa trong quản lý và sản xuất nhằm tối ưu hóa hiệu quả kinh doanh.Vì vậy các doanh nghiệp đang đứng trước trạng thái do dự,xét đoán lựa chọn nhà cung cấp linh kiện,phụ tùng,thiết bị phụ tùng chính hãng,chất lượng và độ chính xác cao. Thái Bình đã đạt được mục tiêu này là nhờ vào sự lựa chọn cho mình những hãng tự động hàng đầu đáng tin cậy bởi những mặt hàng chất lượng cao và có tiếng trên thế giới.\r\nToàn thể nhân viên Công ty luôn phấn đấu trao dồi kiến thức chuyên môn và kinh nghiệm quản lý,phấn đấu trở thành doanh nghiệp uy tín và đáp ứng mọi nhu cầu của khách hàng.\r\nLĩnh vực hoạt động chính :\r\nKinh doanh thiết bị điện công nghiệp,tự động hóa,đo lường và điều khiển.\r\nCung cấp lắp đặt tủ bảng điện & tủ điều khiển tự động.\r\nKhảo sát,thiết kế  và thi công hệ thống điều khiển,đo lường và điều khiển tự động\r\nTư vấn thiết kế và lắp đặt hệ thống điều khiển quá trình sản xuất và tự động hóa  ( PLC,SCADA ).\r\n\r\n TBC Mang đến những giải pháp tối ưu cho đầu tư của bạn !\r\n\r\n\r\nTRÂN TRỌNG !', '<div style="text-align: center;"><span style="font-size:16px"><span style="font-family:arial,helvetica,sans-serif"><strong>ALUMINIUM COMPANY LIMITED TAIWAN</strong></span></span></div>\r\n\r\n<div><br />\r\n<span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>COMPANY LIMITED ALUMINIUM TAIWAN</strong> established with an investment of over 30 million, 100% investment from Taiwan, with an area of 25,000m2, located in Vinh Loc Industrial Park 2.</span></span></div>\r\n\r\n<div><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>T</strong>he initial criteria when establishing our business is establishing a company has sufficient capacity and expertise in the field of manufacturing Aluminum profiles.<br />\r\nOur products include: various types of aluminum alloy, surface treatment varied and extensive range of industrial aluminum.<br />\r\nIn addition to stand on Aluminum construction market in the country, we also received a lot of orders for export Aluminium.</span></span></div>\r\n\r\n<div style="text-align: center;"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><img alt="" src="/file/ckfinder/userfiles/images/12-10-2016%209-31-49%20CH(2).png" style="height:179px; width:500px" /></span></span></div>\r\n\r\n<div><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">With the business motto: <strong>PRESTIGE - QUALITY - DEVELOPING.</strong><br />\r\nWe are proud to be one of the leading companies in Vietnam specializing in supply and installation of aluminum doors for high-end projects.<br />\r\nWe sincerely thank you for your trust, support and use TWA aluminum products during the past.<br />\r\nIn response to his sincerity, Aluminum TWA will be happy to accompany you, research and development more product Aluminum profiles.<br />\r\nThrough which customers can be assured of quality and product design.</span></span></div>\r\n\r\n<div style="text-align: center;"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><img alt="" src="/file/ckfinder/userfiles/images/12-10-2016%209-31-15%20CH(2).png" style="height:334px; width:500px" /></span></span></div>\r\n\r\n<div style="text-align: center;">&nbsp;</div>\r\n', '14815312831.png', 'Taiwan Aluminium', 'THAI BINH AUTO', 'About', 'KÍNH CHÀO QUÝ DOANH NGHIỆP !\r\n\r\nCÔNG TY TNHH KỸ THUẬT TỰ ĐỘNG THÁI BÌNH – TBC Công ty xuất nhập khẩu hàng đầu và là nhà cung cấp chuyên nghiệp các mặt hàng,thiết bị điện và điện công nghiệp nói chung và Yaskawa nói riêng.\r\n\r\n\r\n\r\nChúng tôi đáp ứng xu hướng công nghiệp hóa,hiện đại hóa.Ứng dụng công nghệ cao và tự động hóa trong quản lý và sản xuất nhằm tối ưu hóa hiệu quả kinh doanh.Vì vậy các doanh nghiệp đang đứng trước trạng thái do dự,xét đoán lựa chọn nhà cung cấp linh kiện,phụ tùng,thiết bị phụ tùng chính hãng,chất lượng và độ chính xác cao. Thái Bình đã đạt được mục tiêu này là nhờ vào sự lựa chọn cho mình những hãng tự động hàng đầu đáng tin cậy bởi những mặt hàng chất lượng cao và có tiếng trên thế giới.\r\nToàn thể nhân viên Công ty luôn phấn đấu trao dồi kiến thức chuyên môn và kinh nghiệm quản lý,phấn đấu trở thành doanh nghiệp uy tín và đáp ứng mọi nhu cầu của khách hàng.\r\nLĩnh vực hoạt động chính :\r\nKinh doanh thiết bị điện công nghiệp,tự động hóa,đo lường và điều khiển.\r\nCung cấp lắp đặt tủ bảng điện & tủ điều khiển tự động.\r\nKhảo sát,thiết kế  và thi công hệ thống điều khiển,đo lường và điều khiển tự động\r\nTư vấn thiết kế và lắp đặt hệ thống điều khiển quá trình sản xuất và tự động hóa  ( PLC,SCADA ).\r\n\r\n TBC Mang đến những giải pháp tối ưu cho đầu tư của bạn !\r\n\r\n\r\nTRÂN TRỌNG !', '<div style="text-align: center;"><span style="font-size:16px"><span style="font-family:arial,helvetica,sans-serif"><strong>ALUMINIUM COMPANY LIMITED TAIWAN</strong></span></span></div>\r\n\r\n<div><br />\r\n<span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>COMPANY LIMITED ALUMINIUM TAIWAN</strong> established with an investment of over 30 million, 100% investment from Taiwan, with an area of 25,000m2, located in Vinh Loc Industrial Park 2.</span></span></div>\r\n\r\n<div><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>T</strong>he initial criteria when establishing our business is establishing a company has sufficient capacity and expertise in the field of manufacturing Aluminum profiles.<br />\r\nOur products include: various types of aluminum alloy, surface treatment varied and extensive range of industrial aluminum.<br />\r\nIn addition to stand on Aluminum construction market in the country, we also received a lot of orders for export Aluminium.</span></span></div>\r\n\r\n<div style="text-align: center;"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><img alt="" src="/file/ckfinder/userfiles/images/12-10-2016%209-31-49%20CH(2).png" style="height:179px; width:500px" /></span></span></div>\r\n\r\n<div><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">With the business motto: <strong>PRESTIGE - QUALITY - DEVELOPING.</strong><br />\r\nWe are proud to be one of the leading companies in Vietnam specializing in supply and installation of aluminum doors for high-end projects.<br />\r\nWe sincerely thank you for your trust, support and use TWA aluminum products during the past.<br />\r\nIn response to his sincerity, Aluminum TWA will be happy to accompany you, research and development more product Aluminum profiles.<br />\r\nThrough which customers can be assured of quality and product design.</span></span></div>\r\n\r\n<div style="text-align: center;"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><img alt="" src="/file/ckfinder/userfiles/images/12-10-2016%209-31-15%20CH(2).png" style="height:334px; width:500px" /></span></span></div>\r\n\r\n<div style="text-align: center;">&nbsp;</div>\r\n', 'Taiwan Aluminium', 'Taiwan Aluminium', 1, 1, '2017-01-17 06:02:12');

-- --------------------------------------------------------

--
-- Table structure for table `ad_user`
--

CREATE TABLE `ad_user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pwd` text NOT NULL,
  `power` int(11) NOT NULL,
  `lastOnl` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ad_user`
--

INSERT INTO `ad_user` (`id`, `email`, `pwd`, `power`, `lastOnl`) VALUES
(1, 'czanubis@gmail.com', '949530644ef43dad3857cf6fbbbe10c1', 1, '2016-01-24 03:46:26'),
(2, 'nhatsang@gmail.com', '202cb962ac59075b964b07152d234b70', 1, '2016-03-12 03:53:10');

-- --------------------------------------------------------

--
-- Table structure for table `basic_config`
--

CREATE TABLE `basic_config` (
  `id` int(11) NOT NULL,
  `smtp_server` text NOT NULL,
  `smtp_port` text NOT NULL,
  `smtp_user` text NOT NULL,
  `smtp_pwd` text NOT NULL,
  `smtp_sender_email` text NOT NULL,
  `smtp_sender_name` text NOT NULL,
  `smtp_receiver` text NOT NULL,
  `gmap_script` text NOT NULL,
  `another_script` text NOT NULL,
  `social_twitter` text NOT NULL,
  `social_facebook` text NOT NULL,
  `social_google_plus` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `basic_config`
--

INSERT INTO `basic_config` (`id`, `smtp_server`, `smtp_port`, `smtp_user`, `smtp_pwd`, `smtp_sender_email`, `smtp_sender_name`, `smtp_receiver`, `gmap_script`, `another_script`, `social_twitter`, `social_facebook`, `social_google_plus`) VALUES
(1, 'smtp.gmail.com', '587', 'quantrimang.psmedia@gmail.com', 'psmediaquantrimang', 'quantrimang.psmedia@gmail.com', 'Website administrator', 'info@thaibinhauto.com', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.1633799912497!2d106.65656091421477!3d10.798795861734689!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3175293132fa9845%3A0x2b09637f85d4a12f!2zVHLGsOG7nW5nIE3huqdtIE5vbiBUw6JuIFPGoW4gTmjhuqV0!5e0!3m2!1svi!2s!4v1474100962959" width="1004" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', '', 'https://twitter.com', 'https://www.facebook.com/', 'https://plus.google.com/');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `adds` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(1000) DEFAULT NULL,
  `content` text NOT NULL,
  `dates` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `adds`, `phone`, `email`, `subject`, `content`, `dates`) VALUES
(1, 'tung', 'dc', 'dt', 'tung@mail', 'dc', 'ndung cn hoc5  CÔNG TY TNHH NHÔM TAIWAN', '2016-11-20 14:45:24'),
(2, 'df3434', '232567778', '3434343', '43aad@mail.com', '3434343', '343434', '2016-12-14 08:18:29');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `icon` varchar(255) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL,
  `view` varchar(200) NOT NULL,
  `e_title` text NOT NULL,
  `e_meta_keyword` text NOT NULL,
  `e_meta_description` text NOT NULL,
  `e_view` varchar(255) NOT NULL,
  `ind` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `title`, `icon`, `meta_keyword`, `meta_description`, `view`, `e_title`, `e_meta_keyword`, `e_meta_description`, `e_view`, `ind`, `active`) VALUES
(1, 'Trang Chủ', '', 'cửa sắt,cửa nhôm,mặt alu', 'EWEWEWE', 'trang-chu', 'Home', 'cửa sắt,cửa nhôm,mặt alu', '', 'home', 0, 1),
(3, 'CM Studio', '', '', '', 'cmstudio', 'CM Studio', '', '', 'cmstudio', 1, 1),
(4, 'Bộ sưu tập', '', '', '', 'bo-suu-tap', 'Collections', '', '', 'collections', 3, 1),
(5, 'Video đặc sắc', '', '', '', 'video-dac-sac', 'Best Videos', '', '', 'best-videos', 5, 1),
(6, 'Liên Hệ', '', '', '', 'lien-he', 'Contact Us', '', '', 'contact-us', 11, 1),
(10, 'Dịch vụ', '', '', '', 'dich-vu', 'Services', '', '', 'services', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `sum` text NOT NULL,
  `content` longtext NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL,
  `e_title` text NOT NULL,
  `e_sum` text NOT NULL,
  `e_content` longtext NOT NULL,
  `e_meta_keyword` text NOT NULL,
  `e_meta_description` text NOT NULL,
  `pId` int(11) DEFAULT NULL,
  `maps` text NOT NULL,
  `city` int(11) NOT NULL,
  `district` int(11) NOT NULL,
  `img` text NOT NULL,
  `date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `home` tinyint(4) NOT NULL DEFAULT '0',
  `ind` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `sum`, `content`, `meta_keyword`, `meta_description`, `e_title`, `e_sum`, `e_content`, `e_meta_keyword`, `e_meta_description`, `pId`, `maps`, `city`, `district`, `img`, `date`, `active`, `home`, `ind`) VALUES
(2, 'BIẾN TẦN YASKAWA A1000 CHO CÁC ỨNG DỤNG CẦU TRỤC VÀ NÂNG HẠ', 'BIẾN TẦN YASKAWA A1000 CHO CÁC ỨNG DỤNG CẦU TRỤC VÀ NÂNG HẠ', '<div style="text-align: center;">&nbsp;</div>\r\n<span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Biến tần Yaskawa A1000 là sản phẩm cung cấp một giải pháp đơn giản và hiệu quả cho các yêu cầu khắt khe trong ứng dụng cầu trục và nâng hạ.<br />\r\nBiến tần Yaskawa A1000 đảm bảo cho việc điều khiển motor nâng hạ vận hành đủ moment trong mọi điều kiện, bên cạnh đó việc tích hợp các chức năng điều khiển quan trọng khác như điều khiển thắng, phát hiện quá tải &hellip; giúp cho việc điều khiển và vận hành cầu trục chính xác và an toàn.<br />\r\nThái Bình Auto đề cập đến một số tính năng ưu Việt của dòng sản phẩm Biến tần Yaskawa A1000 như sau:<br />\r\n- Moment khởi động 200%, khả năng quá tải 150% trong vòng 60s. Đảm bảo khả năng vận hành dưới các điều kiện tải nặng.<br />\r\n- Cung cấp đủ moment tại 0 Hz cho quá trình điều khiển thắng, giúp khởi động mượt mà, tăng tuổi thọ của thắng cơ bên ngoài.<br />\r\n- Vận hành mượt mà êm ái, giúp giảm sốc và sự mài mòn cho các cơ cấu cơ khí và hàng hóa.<br />\r\n- Tích hợp chức năng điều khiển thắng an toàn:<br />\r\n+ Cài đặt điều kiện đóng thắng và mở thắng riêng biệt.<br />\r\n+ Kiểm tra kết nối motor truớc khi vận hành.<br />\r\n+ Giám sát quá trình điều khiển thắng.<br />\r\n- Tự động ngắt khi quá tải giúp đảm bảo an toàn trong các truờng hợp tải nặng.<br />\r\n- Chức năng Ultra Lift Function giúp tăng tốc độ vận hành, rút ngắn thời gian trong điều kiện không tải, làm tăng khả năng sản xuất.<br />\r\n- Tích hợp các chức năng nhận cảm biến trọng lượng và cảm biến hành trình ngăng chặn sự vận hành trong các truờng hợp mất an toàn.<br />\r\n- Tự động chia tải giữa các biến tần trong truờng hợp nhiều biến tần cùng vận hành.<br />\r\n- Tích hợp hàm an toàn STO (Safe Torque Off ).<br />\r\n&nbsp;<br />\r\n<strong>CÁC NGÕ VÀO RA</strong><br />\r\n+ 8 ngõ vào số:<br />\r\n+ Có thể đấu kiểu Sink hoặc Source<br />\r\n+ Có thể sử dụng nguồn 24VDC ngoài<br />\r\n+ 1 Ngõ vào nhận xung đến 32 Khz: dễ dàng đồng bộ với các thiết bị khác<br />\r\n+ 3 ngõ vào Analog: có thể chọn kiểu điện áp, dòng điện, PTC<br />\r\n+ Relay báo lỗi ( NO &amp; NC )<br />\r\n+ Hàm chức năng an toàn: 2 kênh STO ( safe torque off ) ( EN ISO 13849-1 )<br />\r\n+ 3 relay ngõ ra dạng transistor<br />\r\n+ 1 Ngõ ra phát xung 32 Khz<br />\r\n+ 2 Ngõ ra Analog: có thể chọn kiểu điện áp hoặc dòng điện.<br />\r\n+ Thiết bị giám sát bên ngoài (EDM )</span></span>', 'BIẾN TẦN YASKAWA A1000 CHO CÁC ỨNG DỤNG CẦU TRỤC VÀ NÂNG HẠ', 'BIẾN TẦN YASKAWA A1000 CHO CÁC ỨNG DỤNG CẦU TRỤC VÀ NÂNG HẠ', '', '', '', '', '', 3, '', 0, 0, '14815330951.jpg', '2016-12-12', 1, 1, 1),
(3, 'NHÀ PHÂN PHỐI SERVO YASKAWA', 'NHÀ PHÂN PHỐI SERVO YASKAWA', '<span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Lời đầu tiên, <strong>Công ty Kỹ Thuật Tự Động Thái Bình</strong> xin chân thành cảm ơn sự quan tâm của Quý khách đến với sản phẩm của Công ty.<br />\r\n&nbsp;<br />\r\nHiện tại, <strong>Thái Bình Auto</strong> là nhà phân phối <strong>Servo Yaskawa </strong>chính thức tại Việt Nam. Với nhiều năm kinh nghiệm và đội ngũ kỹ thuật chuyên nghiệp sẽ luôn mang đến giải pháp phù hợp, chất lượng với chi phí tiết kiệm nhất.<br />\r\n&nbsp;<br />\r\nQuy trình tư vấn &ndash; Đề xuất giải pháp &ndash; Thực hiện dự án &ndash; Hoàn tất dự án &ndash; Dịch vụ bảo trì và bảo dưỡng luôn được giám sát và cải thiện để đảm bảo tính chuyên nghiệp và hiểu quả.<br />\r\n&nbsp;<br />\r\nLà nhà phân phối <strong>Servo Yaskawa</strong> chúng tôi hiểu rằng việc đề xuất giải pháp tốt và sản phẩm chất lượng luôn là tiêu chí hàng đầu của <strong>Thái Bình Auto</strong>.<br />\r\n<img alt="" src="/file/ckfinder/userfiles/images/2.jpg" style="height:200px; width:300px" /><br />\r\nMột số tính năng tiêu biểu của <strong>Servo Yaskawa</strong> siêu tiết kiệm năng lượng:<br />\r\n1. &nbsp; &nbsp; &nbsp;Siêu tiết kiệm năng lượng<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Điều khiển được với động cơ cảm ứng từ có hiệu suất cao.<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Điều khiển được cho động cơ không đồng bộ và động cơ đồng bộ (đạt hiệu suất cao nhất, chay<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Ổn định Mo-men xoắn với hiệu suất cao.<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Điều khiển áp lực ổn định và hiệu quả cao cho máy nén mô-men xoắn không đổi.<br />\r\n2. &nbsp; &nbsp; &nbsp;Thân thiện và sinh thái<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Chức năng tự động dò tìm để tiết kiệm điện năng.<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Giải quyết các tổn thất điện năng và phục hồi cho một số ứng dụng.<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Hoạt động tốt với môi trường khắc nhiệt.<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Giảm tiếng ồn<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Tín hiệu I/O hiệu suất cao.<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Điều khiển PID hiệu suất cao<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Dễ dàng cài đặt và tùy chỉnh cho người dùng.<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Tùy chọn mạng truyền thông công nghiệp.<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Dễ dàng bảo trì, bảo dưỡng.<br />\r\n3. &nbsp; &nbsp; &nbsp;An toàn và độ tin cậy cao<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Bảo vệ môi trường.<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Thiết kế tuổi thọ dài.<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Dễ dàng thay thế.<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Chức năng bảo vệ cho máy.<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Hoạt động liên tục.<br />\r\n4. &nbsp; &nbsp; &nbsp;Chứng nhận tiêu chuẩn quốc tế<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; UL, CSA, CE, RoHS, C-Tick</span></span>', 'NHÀ PHÂN PHỐI SERVO YASKAWA', 'NHÀ PHÂN PHỐI SERVO YASKAWA', '', '', '', '', '', 4, '', 0, 0, '14815333202.jpg', '2016-12-12', 1, 1, 2),
(4, 'BIẾN TẦN YASKAWA ', 'BIẾN TẦN YASKAWA ', '<span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px"><strong>Biến tần Yaskawa</strong> được sử dụng nhiều trong hệ thống cung cấp nước của nhà dân dụng, tòa nhà cao tầng và nhà máy công nghiệp, cũng như các hệ thống tưới tiêu tiết kiệm nước trong nông nghiệp. Đối với biến tần, áp suất nước có thể điều khiển được tạo thuân tiện trong nhiều ứng dụng. Khi nhu cầu lưu lượng nước thay đổi, ví dụ: mở nước rửa hoặc tắm,sử dụng, biến tần có thể được sử dụng để điều chỉnh tốc độ bơm,ổn định áp suất, đáp ứng được lượng nước theo nhu cầu và tiết kiệm năng lượng đáng kể.</span></span>\r\n<div style="text-align: center;"><span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px"><img alt="" src="/file/ckfinder/userfiles/images/3.jpg" style="height:393px; width:600px" /></span></span></div>\r\n<span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px">Để đáp ứng được những đó dòng Biến tần Yaskawa E1000 ( sản phẩm biến tần khác: biến tần Yaskawa A1000 - biến tần Yaskawa V1000 - Biến tần Yaskawa F7) là dòng biến tần Chuyên dùng cho Bơm/ Quạt với tính năng điều khiển vòng kín PID theo áp suất và lưu lượng thực tế ứng dụng nhiều công nghệ điều khiển tiên tiến nhất.. Dòng biến tần này được tích hợp công nghệ điều khiển tốc độ qua tần số, bộ điều khiển PID để có thể ứng dụng vào trong các hệ thống điều khiển theo vòng kín.<br />\r\n<strong><span style="color:#0000FF">Khái niệm về PID:</span></strong><br />\r\nP: Là thông số của hàm tỷ lệ: Nó có chức năng khếch đại sai số e=(SV-PV)<br />\r\nNó có ý nghĩa làm tăng độ cứng đặc tính PID.<br />\r\nI: Là thông số của hàm tích phân: Nó có ý nghĩa làm tăng tính đáp ứng của hệ thống &nbsp;(VD: Khi hệ số I càng lớn, hệ thống đáp ứng càng nhanh nhưng cũng rất dễ mất ổn định)<br />\r\nD: Là thông số của hàm vi phâm: Nó có ý nghĩa làm ổn định hệ thống ( Khi thông số này càng lớn thì làm cho giá trị hiện thời nhanh được kéo về gần giá trị đặt).<br />\r\nHệ điều khiển PID thường được ứng dụng nhiều trong thực tế, thường thông số I người ta để mặc định. Khi cài đặt biến tần chạy PID bạn cần cài đặt giới hạn giá trị tích phân và PID để đảm bảo hệ thống không vượt ra khỏi ngưỡng cho phép.<br />\r\n<br />\r\n<strong><span style="color:#0000CD">Các phương pháp điều khiển:</span></strong><br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;- Dùng các relay và timer thời gian để đổi trạng thái hoạt động của mỗi bơm.<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Phương pháp này là phương pháp truyền thống. Đơn giản và rẻ tiền song độ bền không cao, điều khiển không linh hoạt. Không điều khiển được áp suất trong đường ống, trong bồn chứa.<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Khi quá áp dẫn đến nhanh hỏng hóc, dò rỉ đường dẫn nước. Không tiết kiệm được năng lượng điện, giảm tuổi thọ động cơ.<br />\r\n&nbsp; &nbsp; &nbsp; - Phương pháp dùng biến tần điều khiển bơm, quạt chạy luân phiên và điều khiển PID luôn ổn định được áp suất trong đường ống. Đây &nbsp;là &nbsp;phương &nbsp;pháp thực &nbsp;sự &nbsp;tiện &nbsp;ích. &nbsp;Giải pháp &nbsp;điều &nbsp;khiển &nbsp;tối ưu cho &nbsp;bài &nbsp;toán &nbsp;cấp &nbsp;nước khi &nbsp;lượng &nbsp;nước &nbsp;tiêu &nbsp;thụ thay đổi liên tục. Việc ứng dụng dòng biến tần Yaskawa E1000 vào trong các hệ thống cấp nước,bơm quạt &nbsp;sẽ đem lại nhiều lợi thế như:<br />\r\n&nbsp; &nbsp; + &nbsp;Có chi phí thấp,dễ vận hành.<br />\r\n&nbsp; &nbsp; + Tiết kiệm năng lượng.<br />\r\n&nbsp; &nbsp; + Mức độ tự động hoá cao.<br />\r\n&nbsp; &nbsp; + Đầy đủ các chức năng bảo vệ, dễ dàng vận hành.<br />\r\n&nbsp; &nbsp; + Mang lại hiệu quả rõ ràng về tiết kiệm nước và năng lượng tiêu thụ.<br />\r\n&nbsp; &nbsp; + Nâng cao tuổi thọ động cơ do động cơ khởi động êm.<br />\r\n&nbsp; &nbsp; + Bảo vệ được động cơ khi: ngắn mạch, mất pha, lệch pha, quá tải, quá dòng, quá nhiệt&hellip;</span></span>', 'BIẾN TẦN YASKAWA ', 'BIẾN TẦN YASKAWA ', '', '', '', '', '', 5, '', 0, 0, '14815336163.jpg', '2016-12-12', 1, 1, 3),
(5, 'NHÀ PHÂN PHỐI BIẾN TẦN YASKAWA', 'NHÀ PHÂN PHỐI BIẾN TẦN YASKAWA', '<strong>Thái Bình Auto</strong> là nhà phân phối biến tần Yaskawa tại Việt Nam với các dòng sản phẩm khác: Bộ điều khiển, biến tần, thiết bị tự động hóa và động cơ...v.v<br />\r\nKhông ngừng đổi mới và phát triển, công ty chúng tôi với đội ngũ kỹ sư giỏi và giàu kinh nghiệm luôn cập nhật công nghệ, nghiên cứu để đạt những thành công nhất định trong việc ứng dụng các sản phẩm công nghệ cao vào các dây chuyền sản xuất ở nhiều nhà máy, xí nghiệp lớn nhỏ trong cả nước ở các thời điểm khác nhau. &nbsp;\r\n<div style="text-align: center;"><img alt="" src="/file/ckfinder/userfiles/images/4.jpg" style="height:300px; width:400px" />&nbsp;&nbsp;</div>\r\nNhững sản phẩm biến tần Yaskawa đặc trưng của công ty chúng tôi là:<br />\r\nỨng dụng sản phẩm biến tần Yaskawa (biến tần Yaskawa A1000 - biến tần Yaskawa V1000 - Biến tần Yaskawa F7)&hellip;<br />\r\nTủ phân phối, cung cấp dùng thiết bị đóng cắt.<br />\r\nTủ khởi động mềm hạ áp, trung áp dùng khởi động mềm<br />\r\nTủ biến tần, điều khiển động cơ công suất lớn (đến 12.000KVA), trung áp (đến 11.000V) của Yaskawa<br />\r\nKhông chỉ thiết kế, chế tạo, cung cấp các sản phẩm chất lượng cao mà các kỹ sư của chúng tôi &nbsp;còn luôn sẵn sàng chăm sóc khách trước và sau bán hàng đầy uy tín như tư vấn bảo trì, bảo dưỡng hệ thống điều khiển tự động hoá; Lập phương án thiết bị dự phòng; khắc phục sự cố một cách nhanh nhất đảm bảo hệ thống làm việc ổn định, liên tục 24/24.', 'NHÀ PHÂN PHỐI BIẾN TẦN YASKAWA', 'NHÀ PHÂN PHỐI BIẾN TẦN YASKAWA', '', '', '', '', '', 6, '', 0, 0, '14815337504.jpg', '2016-12-12', 1, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `news_cate`
--

CREATE TABLE `news_cate` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `sum` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL,
  `e_title` text NOT NULL,
  `e_sum` text NOT NULL,
  `e_meta_keyword` text NOT NULL,
  `e_meta_description` text NOT NULL,
  `img` text NOT NULL,
  `icon` text NOT NULL,
  `pId` int(11) NOT NULL,
  `lev` int(11) NOT NULL,
  `ind` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news_cate`
--

INSERT INTO `news_cate` (`id`, `title`, `sum`, `meta_keyword`, `meta_description`, `e_title`, `e_sum`, `e_meta_keyword`, `e_meta_description`, `img`, `icon`, `pId`, `lev`, `ind`, `active`) VALUES
(3, 'BIẾN TẦN YASKAWA A1000 CHO CÁC ỨNG DỤNG CẦU TRỤC VÀ NÂNG HẠ', '', 'BIẾN TẦN YASKAWA A1000 CHO CÁC ỨNG DỤNG CẦU TRỤC VÀ NÂNG HẠ', 'BIẾN TẦN YASKAWA A1000 CHO CÁC ỨNG DỤNG CẦU TRỤC VÀ NÂNG HẠ', 'Careers news', '', '', '', '', '', 0, 1, 3, 1),
(4, 'NHÀ PHÂN PHỐI SERVO YASKAWA', '', 'NHÀ PHÂN PHỐI SERVO YASKAWA', 'NHÀ PHÂN PHỐI SERVO YASKAWA', '', '', '', '', '', '', 0, 1, 2, 1),
(5, 'BIẾN TẦN YASKAWA ', '', 'BIẾN TẦN YASKAWA ', 'BIẾN TẦN YASKAWA ', '', '', '', '', '', '', 0, 1, 3, 1),
(6, 'NHÀ PHÂN PHỐI BIẾN TẦN YASKAWA', '', 'NHÀ PHÂN PHỐI BIẾN TẦN YASKAWA', 'NHÀ PHÂN PHỐI BIẾN TẦN YASKAWA', '', '', '', '', '', '', 0, 1, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `partner`
--

CREATE TABLE `partner` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `eTitle` text NOT NULL,
  `lnk` text NOT NULL,
  `img` text NOT NULL,
  `active` tinyint(1) NOT NULL,
  `ind` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `partner`
--

INSERT INTO `partner` (`id`, `title`, `eTitle`, `lnk`, `img`, `active`, `ind`) VALUES
(1, 'Bambo interior', 'Bambo interior', 'pspmedia.vn', '1439345318holistic-solutions-circle-2-252x200.jpg', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `feature` longtext NOT NULL,
  `price` int(11) DEFAULT NULL,
  `price_reduce` int(11) DEFAULT NULL,
  `in_stock` tinyint(1) NOT NULL,
  `condition` tinyint(1) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `detail` longtext NOT NULL,
  `content` longtext NOT NULL,
  `teach` longtext NOT NULL,
  `video` varchar(200) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL,
  `manual` longtext NOT NULL,
  `e_manual` longtext NOT NULL,
  `promotion` longtext NOT NULL,
  `e_promotion` longtext NOT NULL,
  `e_title` text NOT NULL,
  `e_feature` longtext NOT NULL,
  `e_detail` longtext NOT NULL,
  `e_content` longtext NOT NULL,
  `e_teach` longtext NOT NULL,
  `e_meta_keyword` text NOT NULL,
  `e_meta_description` text NOT NULL,
  `pd_option` varchar(255) NOT NULL,
  `lnk` text NOT NULL,
  `e_lnk` text NOT NULL,
  `pId` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `home` tinyint(1) NOT NULL,
  `ind` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `title`, `feature`, `price`, `price_reduce`, `in_stock`, `condition`, `brand_id`, `detail`, `content`, `teach`, `video`, `meta_keyword`, `meta_description`, `manual`, `e_manual`, `promotion`, `e_promotion`, `e_title`, `e_feature`, `e_detail`, `e_content`, `e_teach`, `e_meta_keyword`, `e_meta_description`, `pd_option`, `lnk`, `e_lnk`, `pId`, `active`, `home`, `ind`) VALUES
(175, 'BIẾN TẦN YASKAWA F7', '<span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Biến tần Yaskawa F7</strong> là dòng biến tần cao cấp, tích hợp sẵn chế độ điều khiển tự động điều hướng động cơ (auto tuning), tĩnh và động. Là dòng biến tần duy nhất tại Nhật Bản đạt chuẩn RoHS<br />\r\n<br />\r\n&nbsp;</span></span>', NULL, NULL, 0, 0, 0, '<span style="font-family:arial,helvetica,sans-serif; font-size:14px">- Nguồn cấp: 3 pha 200VAC / 3 pha 400VAC</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">- Tần số: 50-60Hz (&plusmn;5%)</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">- Công suất: 0.4 &ndash; 300kw</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">- Phương pháp điều khiển: V/f, véc tơ vòng hở cho động cơ đồng bộ</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">- Mô men khởi động: 150%/3Hz (điều khiển V/f), 100%/5% tốc độ (điều khiển véc tơ vòng hở)</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">- Khả năng quá tải: 120% trong 60 giây</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">- Chức năng tự động dò tốc độ động cơ khi mất nguồn không sử dụng cảm biến tốc độ</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">- Chức năng KEB giữ động cơ hoạt động ổn định khi mất nguồn dùng động năng tái sinh</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">- Tích hợp sẵn bộ điều khiển PID và cổng truyền thông RS422/RS485.</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">- Các tính năng đặc biệt cho bơm quạt: thiết lập cho các ứng dụng bơm quạt cài đặt trước, khả năng phát hiện sự cố mô men cao hoặc thấp, giữ động cơ hoạt động ngay cả khi mất tín hiệu cài đặt tần số, giám sát công suất và điện năng tiêu thụ.</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">Thiết bị mở rộng:</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">Hỗ trợ các chuẩn truyền thông RS422/RS485, mechatrolink II, CC-link, Devicenet, Profibus-DP, CANopen, Lonworks</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">Bộ lọc sóng hài và cải thiện hệ số công suất xoay chiều, một chiều</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">Ứng dụng:</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">Quạt, bơm, máy ép, băng tải, xe lăn, xe cáp, máy trục hàng, máy ly tâm.</span>', '', '', 'Z8av3gSa6YQ', 'BIẾN TẦN YASKAWA F7', 'BIẾN TẦN YASKAWA F7', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, 1, 1, 4),
(176, 'SWITCH OMRON', '<p><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>SWITCH OMRON</strong></span></span></p>\r\n\r\n<p><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Nút nhấn có đèn, LED xanh 24VDC<br />\r\nĐèn LED, 24VDC<br />\r\nCấu trúc tháo lắp dễ dàng<br />\r\nTiếp điểm: 1NO+1NC. 6A,/220VAC, 10A/110VDC<br />\r\nTiêu chuẩn EC, IP65</span></span></p>\r\n', NULL, NULL, 0, 0, 0, '', '', '', 'Z8av3gSa6YQ', 'SWITCH OMRON', 'SWITCH OMRON', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, 1, 0, 2),
(177, 'SENSOR OMRON', '<span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px">Nguồn cấp: 12 to 24 VDC &plusmn;10%<br />\r\nÁp suất đo: 0 đến 98 kPa<br />\r\nÁp suất chịu đựng tối đa: 490 kPa<br />\r\nMôi chất làm việc: Khí không ăn mòn, không cháy<br />\r\nĐộ chính xác ngõ ra On/Off: &plusmn;1% FS max.<br />\r\nĐộ chính xác ngõ ra analog: &plusmn;3% FS max.<br />\r\nThời gian đáp ứng: 5 ms max.<br />\r\nNgõ ra analog: 0 ~ 5 VDC, tổng trở ra 20 &Omega;, cho phép tải thuần trở 10 k&Omega; min.<br />\r\nNgõ ra On/Off: NPN open collector, 80mA 30VDC max.<br />\r\nChức năng bảo vệ ngược cực nguồn và ngắn mạch ngõ ra<br />\r\nChỉ thị: 21/2‐digit LCD,đèn báo hoạt động (đỏ)<br />\r\nNhiệt độ làm việc: &minus;10&deg;C ~ 55&deg;C<br />\r\nVỏ bọc: Nhôm<br />\r\nTiêu chuẩn: IEC 60529 IP50</span></span>', NULL, NULL, 0, 0, 0, '', '', '', 'Z8av3gSa6YQ', 'SENSOR OMRON', 'SENSOR OMRON', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, 1, 0, 1),
(178, 'COUNTER OMRON', '<span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Nguồn cấp: 100-240VAC<br />\r\nChế độ hoạt động: 1-stage preset counter, total and preset counter *1 (lưạ chọn)<br />\r\nHiển thị negative transmissive LCD, 6 số, -99,999 ~ 999,999<br />\r\nChọn màu hiển thị<br />\r\nNgõ vào NPN/PNP và cảm biến 2-dây<br />\r\nChọn chế độ ngõ vào: Increment, decrement, command (UP/DOWN A), individual (UP/DOWN B), quadrature (UP/DOWN C)<br />\r\nNgõ ra: Rơle và NPN<br />\r\nChọn chế độ ngõ ra: N, F, C, R, K-1, P, Q, A, K-2, D, L<br />\r\nNgõ ra tác động nhanh: 0.01 ~ 99.99s<br />\r\nChức năng đếm: 1-stage counter / 1-stage counter with total counter<br />\r\nTốc độ: 30Hz / 5kHz<br />\r\nCó nguồn cho thiết bị ngoài: 12VDC, 100mA<br />\r\nTiêu chuẩn: UL, CSA, EN, CE. IP54</span></span>', NULL, NULL, 0, 0, 0, '', '', '', 'Z8av3gSa6YQ', 'COUNTER OMRON', 'COUNTER OMRON', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, 1, 0, 1),
(179, 'PLC OMRON', '<span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Nguồn cấp: 100-240VAC  Ngôn ngữ lập trình: Ladder diagram<br />\r\nTốc độ thực hiện lệnh: Lệnh cơ bản: 0.01&mu;s; Lệnh đặc biệt: 0.15&mu;s<br />\r\nBộ nhớ chương trình: 20K steps<br />\r\nBộ đếm tốc độ cao: 100 kHz (single-phase), 50 kHz (differential phases), 4 axes<br />\r\nNgõ ra xung tốc độ cao: 100 kHz for 4 axes<br />\r\nCổng truyền thong: Trang bị sẵn cổng USB, chọn lựa thêm RS232C, RS422/RS485<br />\r\nNgõ vào/ra analog: -<br />\r\nCó thể gắn thêm 7 bộ mở rộng CPM1 và 2 bộ mở rộng CJ1W<br />\r\nChức năng thời gian thực (Clock)<br />\r\nNhiệt độ làm việc: 0~55 C<br />\r\nTiêu chuẩn: IEC 61000; JIS C0040; JIS C0041</span></span>', NULL, NULL, 0, 0, 0, '', '', '', 'Z8av3gSa6YQ', 'PLC OMRON', 'PLC OMRON', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, 1, 0, 1),
(180, 'INVERTER OMRON', '<span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px"><strong>Chức năng PID</strong><br />\r\nTrang bị sẵn Radio Noise Filter (Z-phase reactor)<br />\r\n&nbsp;Chỉnh tần số ngõ ra: 0.5 ~ 400Hz, độ phân giải 0.1Hz<br />\r\n&nbsp;Khả năng quá tải: 150% trong 1phút<br />\r\nThời gian tăng giảm tốc: 0.01S ~ 3000S<br />\r\nChức năng bảo vệ: Overcurrent, overvoltage, undervoltage, electronic thermal, temperature error, ground-fault overcurrent at power-on state, overload limit, incoming overvoltage, external trip, memory error, CPU error, USP trip, communication error, overvoltage protection during deceleration, momentary power interruption protection, emergency shutoff<br />\r\nTruyền thông Modbus-RTU<br />\r\nChọn lựa thiết bị ngoại vi: Noise filter, AC/DC reactors, regenerative braking unit and resistor,<br />\r\nTiêu chuẩn: EC, UL/cUL</span></span>', NULL, NULL, 0, 0, 0, '', '', '', 'Z8av3gSa6YQ', 'INVERTER OMRON', 'INVERTER OMRON', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, 1, 0, 4),
(181, 'SERVO MOTOR', '', NULL, NULL, 0, 0, 0, '<span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Servo motor 100W</strong></span></span></span>\r\n<ul>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Công suất ra: 100W, 0.32N.m</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Tốc độ định mức: 3000 vòng/phút</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Tốc độ tức thời cực đại: 5000 vòng/phút</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Momen xoắn cực đại: 0.45</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Quán tính rotor: 2.5 &times; 10&minus;6 (kg.m2)</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Sử dụng được cho tải quán tính: 30 lần quán tính của rotor</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Quán tính hãm: 2 &times; 10-7 (kg.m2)</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Ma sát tĩnh: 0.29 min. (N.m)</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Tuổi thọ hãm: 10,000,000 lần tối thiểu</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Cấp cách điện: Type B</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Cấu trúc: Kín, tự làm mát</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Cấp bảo vệ: IP65</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Cấp chịu rung: V-15</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Lắp đặt: Flange-mounting</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Tiêu chuẩn: EC, UL CSA</strong></span></span></span></li>\r\n</ul>\r\n', '', '', 'Z8av3gSa6YQ', 'SERVO MOTOR', 'SERVO MOTOR', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, 1, 0, 5),
(182, 'SERVO DRIVE OMRON', '', NULL, NULL, 0, 0, 0, '<span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Nguồn cấp: 200-240VAC (170 - 264 V), 50/60 Hz, 1 pha<br />\r\nTần số điều rộng xung (PWM): 12kHz<br />\r\nPhương pháp nghịch lưu: IGBT-driven PWM<br />\r\nKhoảng điều khiển tốc độ: 1/5000<br />\r\nTín hiệu tham chiếu: Analog, xung<br />\r\nChế độ điều khiển: Vị trí; Tốc độ; Torque<br />\r\nChức năng: Vibration control, Autotunning, Realtime autotunning<br />\r\nĐặc tính tải: 0.01% or less at 0% to 100% (at rated speed)<br />\r\nĐặc tính điện áp: 0% at &plusmn;10% of rated voltage (at rated speed)<br />\r\nĐặc tính nhiệt: &plusmn;0.1% or less at 0 to 50&deg;C (at rated speed)<br />\r\nKhả năng điều khiển torque: &plusmn;3% (at 20% to 100% of rated torque)</span></span>', '', '', 'Z8av3gSa6YQ', 'SERVO DRIVE OMRON', 'SERVO DRIVE OMRON', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, 1, 0, 1),
(183, 'SERVO JUNMA YASKAWA', '', NULL, NULL, 0, 0, 0, '<span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px"><strong>Servopack: SGDV</strong><br />\r\n1/3 AC 230V, 50/60Hz, +10%/-15%, 0,05kW &ndash; 1,5kW<br />\r\n3 AC 380V &ndash; 480V, 50/60Hz, +10%/-15%, 0,5kW &ndash; 15kW<br />\r\n<br />\r\n<strong>Servomotor: SGMAV, SGMEV, SGMGV, SGMJV, SGMSV</strong><br />\r\n3 AC 230V, 3000min-1, 0,159Nm &ndash; 2,39Nm, 50W &ndash; 1.5kW<br />\r\n3 AC 400V, 1500min-1, 1,96Nm &ndash; 28,4Nm, 0,3kW &ndash; 15kW<br />\r\n3 AC 400V, 3000min-1, 0,637Nm &ndash; 22,3Nm, 200kW &ndash; 7kW</span></span>', '', '', 'Z8av3gSa6YQ', 'SERVO JUNMA YASKAWA', 'SERVO JUNMA YASKAWA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, 1, 0, 1),
(184, 'SERVO YASKAWA', '', NULL, NULL, 0, 0, 0, '<p><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>SERVO YASKAWA</strong></span></span></p>\r\n\r\n<ul>\r\n	<li><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Độ phân giải vượt trội đến 1.6Khz.</span></span></li>\r\n	<li><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">&nbsp; Tự động dò tìm theo thời gian thực nhằm điều khiển tải phù hợp.</span></span></li>\r\n	<li><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">&nbsp; Giảm thiểu rung động cho tải.</span></span></li>\r\n	<li><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">&nbsp; Chức năng tự động dò tìm tiên tiến</span></span></li>\r\n	<li><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">&nbsp; Điều khiển truyền động chính xác cao nhất.</span></span></li>\r\n	<li><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">&nbsp; Servopack: SGDV</span></span></li>\r\n</ul>\r\n\r\n<p><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">1/3 AC 230V, 50/60Hz, +10%/-15%, 0,05kW &ndash; 1,5kW<br />\r\n3 AC 380V &ndash; 480V, 50/60Hz, +10%/-15%, 0,5kW &ndash; 15kW<br />\r\n<br />\r\n<strong>Servomotor: SGMAV, SGMEV, SGMGV, SGMJV, SGMSV</strong><br />\r\n3 AC 230V, 3000min-1, 0,159Nm &ndash; 2,39Nm, 50W &ndash; 1.5kW<br />\r\n3 AC 400V, 1500min-1, 1,96Nm &ndash; 28,4Nm, 0,3kW &ndash; 15kW<br />\r\n3 AC 400V, 3000min-1, 0,637Nm &ndash; 22,3Nm, 200kW &ndash; 7kW</span></span></p>\r\n', '', '', 'Z8av3gSa6YQ', 'SERVO YASKAWA', 'SERVO YASKAWA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, 1, 1, 5),
(185, 'BIẾN TẦN YASKAWA A1000', '<span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Dòng biến tần YASKAWA A1000 là dòng biến tần đa năng,cách lắp đặt và cài đặt tham số đơn giản,cung cấp hệ thống điều khiển cơ bản cho động cơ không đồng bộ 3 pha rotor lồng sóc với giải công xuất từ 0.4kw- 630kw<br />\r\nLà biến tần duy nhất Nhật Bản đạt tiêu chuẩn môi trường<br />\r\nCông xuất : 3P &nbsp; 200-240V/50Hz : 0.4 &ndash; 110kw<br />\r\n3P: 380-480V/50Hz : 0.4 - 630kw<br />\r\nSai số nguồn cấp cho phép : Điện áp + 10%,-15% ; Tần số : &plusmn; 5%<br />\r\nKhả năng quá tải : 120% trong vòng 60s với tải thường,150% trong vòng 60s với tải nặng.<br />\r\nPhương pháp điều kiển động cơ : Điều khiển V/f,V/f với PG ( Pluse Generrato &ndash; máy phát xung ),vector vòng hở,vector vòng kín với PG,vector vòng hở cho PM ( Permanent &ndash;Động cơ nam châm vĩnh cửu ),vector vòng kín cho PM.<br />\r\nHãm 1 chiều cho toàn dải công xuất,tích hợp mạch điều khiển hãm động năng biến tần 30kw<br />\r\nMôi trường làm viêc : Nhiệt độ : -10 -50Oc,độ ẩm : &lt; 95%,độ cao &lt; 1000m<br />\r\nTiêu chuẩn bảo vệ IP00,IP20,ỊP4<br />\r\nThiết bị mở rộng : mạch phản hồi tốc độ Encoder,mạch kế nối Proﬁbus-DP, Lonwork,Mechatrolink,CANopen,Devvicenet,CC-link</span></span>', NULL, NULL, 0, 0, 0, '', '', '', 'Z8av3gSa6YQ', 'BIẾN TẦN YASKAWA A1000', 'BIẾN TẦN YASKAWA A1000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, 1, 0, 3),
(186, 'BIẾN TẦN YASKAWA V1000', '<span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px"><strong>Biến tần YASKAWA V1000</strong> chuyên dùng cho các ứng dụng tải năng, phức tạp<br />\r\nPhần mềm ( CranSoftware ) với các tham số dành riêng cho ứng dụng cẩu trục chuyên biệt.<br />\r\nLà biến tần duy nhất Nhật bản đạt tiêu chuần về môi trường<br />\r\nCông xuất : 3P &nbsp; 200-240V/50Hz : 0.1 &ndash; 15kw 3P &nbsp; 380-480V/50Hz : 0.2 &ndash; 15kw<br />\r\nTần số ra : 0 &ndash; 400Hz<br />\r\nKhả năng quá tải 150% trong vòng 60s<br />\r\nDải điều khiển : 0-10V,4-20Ma<br />\r\nChức năng vận hành : điều khiển đa tốc độ,phanh DC trong quá trình tăng,điều khiển PID,AVR,tự động Reset khi có lỗi,kế nối truyền thông 485<br />\r\nTiêu chuẩn bảo vệ : IP 20<br />\r\nThiết bị mở rộng : mạch phản hồi tốc độ Encoder,mạch kế nối Proﬁbus-DP, &nbsp;Lonwork,Mechatrolink,CANopen,Devvicenet,CC-link</span></span>', NULL, NULL, 0, 0, 0, '', '', '', 'Z8av3gSa6YQ', 'BIẾN TẦN YASKAWA V1000', 'BIẾN TẦN YASKAWA V1000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, 1, 1, 2),
(187, 'BIẾN TẦN YASKAWA J1000', '', NULL, NULL, 0, 0, 0, '<span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Dòng biến tần YASKAWA J1000 là dòng biến tần tiện dụng, cách lắp đặt và cài đặt đơn giản, có thiết kế nhỏ gọn,phù hợp cho lắp đặt công xuất nhỏ,yêu cầu thẩm mỹ cao, khả năng chịu tải lớn<br />\r\nLà biến tần duy nhất tại Nhật Bản đạt tiêu chuẩn quốc tế về môi trường.<br />\r\nCông xuất : 3P &nbsp; 200V-240V / 50Hz &nbsp; : 0.2-5.5kw<br />\r\nCông xuất : 3P &nbsp; 380V-480V / 50Hz &nbsp; &nbsp;: 0.4-5.5kw<br />\r\nGiải tần số ra : 0-1500Hz<br />\r\nKhả năng quá tải 150% trong vòng 60s,200% trong vòng 0.5s<br />\r\nMô men khởi động 200% tại 0.5Hz<br />\r\nDải điều khiển từ : 0-10v,4-20Ma<br />\r\nTần số song mang lên tới 15Khz<br />\r\nChức năng vận hành : điều khiển đa tốc độ,phanh DC trong quá trình tăng,điều khiển PID,AVR,tự động Reset khi có lỗi,kế nối truyền thông 485<br />\r\nBảo vệ quá áp,quá tải,nhiệt độ quá cao,lỗi CPU,&hellip;<br />\r\nTiêu chuẩn bảo vệ : IP 20<br />\r\nThiết bị mở rộng : mạch phản hồi tốc độ Encoder,mạch kế nối Proﬁbus-DP, Lonwork,Mechatrolink,CANopen,Devvicenet,CC-link</span></span>', '', '', 'Z8av3gSa6YQ', 'BIẾN TẦN YASKAWA J1000', 'BIẾN TẦN YASKAWA J1000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, 1, 1, 1),
(188, 'MOTOR ABB', '', NULL, NULL, 0, 0, 0, '', '<span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px">Dải công xuất lên tới 630kw<br />\r\nĐiện áp cấp nguồn 400v /50Hz<br />\r\nChiều cao trục lên tới 355mm<br />\r\nHiệu xuất EFF2<br />\r\nCấp bảo vệ IP 55<br />\r\nTiêu chuẩn làm mát IC 411<br />\r\nCấp cách nhiệt F &nbsp;,Cấp tăng nhiệt B<br />\r\nKiểu lắp chân đế ( IMB3 ) , Mặt bích ( IMB5 )</span></span>', '', 'Z8av3gSa6YQ', 'MOTOR ABB', 'MOTOR ABB', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, 1, 0, 1),
(189, 'KHỞI ĐỘNG MỀM ABB', '', NULL, NULL, 0, 0, 0, '', '<span style="font-family:arial,helvetica,sans-serif; font-size:14px">Khởi động và dừng mềm với khoảng điều chỉnh star ram : 1&hellip;10s,</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">Stop ram : 0&hellip;20s</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">Thực hiện khởi động 10 lần/giờ và 20 lần/giờ nếu có quạt làm mát</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">Có thể gắn trên DIN-Rail hoặc ráp trên bảng điện bằng vít</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">Điện áp hoạt động : 208-600v</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">Cấp bảo vệ IP 20</span>', '', 'Z8av3gSa6YQ', 'KHỞI ĐỘNG MỀM ABB', 'KHỞI ĐỘNG MỀM ABB', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, 1, 0, 1),
(190, 'CONTACTOR ABB', '', NULL, NULL, 0, 0, 0, '', '<span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Dùng cho mạch xoay chiều AC và 1 chiều DC<br />\r\nDải điện áp rộng,mạch điều khiển có giao diện điện tử<br />\r\nTiêu chuẩn IP 20</span></span>', '', 'Z8av3gSa6YQ', 'CONTACTOR ABB', 'CONTACTOR ABB', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, 1, 0, 1),
(191, 'THIẾT BỊ ĐIỀU KHIỂN ABB', '', NULL, NULL, 0, 0, 0, '', '<span style="font-family:arial,helvetica,sans-serif; font-size:14px">Đóng ngắt và bảo vệ quá tải ngắn mạch cho động cơ</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">Cần điều khiển loại tay xoay ,đảm bảo tuyệt đối khi vận hành</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">Tiêu chuẩn IP 20</span><br />\r\n<span style="font-family:arial,helvetica,sans-serif; font-size:14px">Đáp ứng tiêu chuẩn IEC 60479-1</span>', '', 'Z8av3gSa6YQ', 'THIẾT BỊ ĐIỀU KHIỂN ABB', 'THIẾT BỊ ĐIỀU KHIỂN ABB', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, 1, 0, 5),
(192, 'MÁY CẮT KHÔNG KHÍ ABB', '', NULL, NULL, 0, 0, 0, '', '<span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Sản xuất tại Ý,bảo vệ ngắn mạch,bảo vệ quá tải,<br />\r\nChỉnh dòng quá tải với trip điện tử<br />\r\nĐược nhiệt đới hóa,dễ dàng lắp đặt,dòng định mức lên tới 3200A<br />\r\nĐáp ứng tiêu chuẩn IEC60947-2</span></span>', '', 'Z8av3gSa6YQ', 'MÁY CẮT KHÔNG KHÍ ABB', 'MÁY CẮT KHÔNG KHÍ ABB', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, 1, 0, 6),
(193, 'THIẾT BỊ ĐÓNG CẮT ABB', '', NULL, NULL, 0, 0, 0, '', '<span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>CẦU DAO TỰ ĐỘNG DẠNG KHỐI &ndash; MCCB T6-T7 AND ISO MAX</strong><br />\r\nSản xuất tại Ý,bảo vệ ngắn mạch,bảo vệ quá tải,<br />\r\nChỉnh dòng quá tải với trip điện tử<br />\r\nĐược nhiệt đới hóa,dễ dàng lắp đặt,dòng định mức lên tới 3200A<br />\r\nĐáp ứng tiêu chuẩn IEC60947-2</span></span>', '', 'Z8av3gSa6YQ', 'THIẾT BỊ ĐÓNG CẮT ABB', 'THIẾT BỊ ĐÓNG CẮT ABB\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, 1, 0, 8),
(194, 'BIẾN TẦN FUJI FRENIC-MINI', '', NULL, NULL, 0, 0, 0, '', '', '', 'Z8av3gSa6YQ', 'BIẾN TẦN FUJI FRENIC-MINI', 'BIẾN TẦN FUJI FRENIC-MINI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, 1, 0, 1),
(195, 'BIẾN TẦN FUJI FRENIC-ECO', '', NULL, NULL, 0, 0, 0, '', '', '', 'Z8av3gSa6YQ', 'Biến tần Fuji FRENIC-Eco', 'Biến tần Fuji FRENIC-Eco', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, 1, 0, 2),
(196, 'BIẾN TẦN FUJI FRENIC-MULTI', '', NULL, NULL, 0, 0, 0, '', '', '', 'Z8av3gSa6YQ', 'Biến tần Fuji FRENIC-Multi', 'Biến tần Fuji FRENIC-Multi', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, 1, 0, 4),
(197, 'BIẾN TẦN FUJI FRENIC-MEGA', '', NULL, NULL, 0, 0, 0, '', '', '', 'Z8av3gSa6YQ', 'Biến tần Fuji FRENIC-MEGA', 'Biến tần Fuji FRENIC-MEGA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, 1, 0, 4),
(198, 'MCCB FUJI', '', NULL, NULL, 0, 0, 0, '', '', '', 'Z8av3gSa6YQ', 'MCCB FUJI', 'MCCB FUJI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, 1, 0, 0),
(199, 'Contactor Fuji', '', NULL, NULL, 0, 0, 0, '', '', '', 'Z8av3gSa6YQ', 'Contactor Fuji', 'Contactor Fuji', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, 1, 0, 5),
(200, 'Inverter Fuji                                                                                 ', '', NULL, NULL, 0, 0, 0, '', '', '', 'Z8av3gSa6YQ', 'Inverter Fuji                                                                                 ', 'Inverter Fuji                                                                                 ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, 1, 0, 2),
(201, 'Servo Fuji', '', NULL, NULL, 0, 0, 0, '', '', '', 'Z8av3gSa6YQ', 'Servo Fuji', 'Servo Fuji', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 3, 1, 0, 3),
(202, 'Contacror Mitsubishi    ', '', NULL, NULL, 0, 0, 0, '', '', '', 'Z8av3gSa6YQ', 'Contacror Mitsubishi    ', 'Contacror Mitsubishi    ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 3, 1, 0, 1),
(203, 'MÀN HÌNH HMI OMRON', '<span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px"><span style="line-height:1"><strong>Tính năng TFT mạnh mẽ, LCD cảm ứng màu cho khả năng hiển thị tuyệt vời và đèn nền LED tuổi thọ cao (50.000 giờ). &nbsp;Kích thước màn hình 3.5&rdquo; đến 10&rdquo;<br />\r\n* Màn hình TFT, đèn nền LED<br />\r\n* Góc nhìn rộng<br />\r\n* Hiển thị hơn 65.000 màu<br />\r\n* Lưu trữ đến 128 MBs dữ liệu màn hình</strong></span></span></span>', NULL, NULL, 0, 0, 0, '', '', '', 'Z8av3gSa6YQ', 'MÀN HÌNH HMI OMRON', 'MÀN HÌNH HMI OMRON', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 3, 1, 0, 1),
(204, 'NÚT NHẤN', '<span style="line-height:1"><strong><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Nút nhấn có đèn, LED xanh 24VDC<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Đèn LED, 24VDC<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Cấu trúc tháo lắp dễ dàng<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Tiếp điểm: 1NO+1NC. 6A,/220VAC, 10A/110VDC<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Tiêu chuẩn EC, IP65</span></span></strong></span>', NULL, NULL, 0, 0, 0, '', '', '', 'Z8av3gSa6YQ', 'NÚT NHẤN', 'NÚT NHẤN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 3, 1, 0, 2),
(205, 'CẢM BIẾN ÁP SUẤT', '', NULL, NULL, 0, 0, 0, '<strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Cảm biến áp suất 0~98 kPa, ngõ ra 0~5VDC<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Nguồn cấp: 12 to 24 VDC &plusmn;10%<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Áp suất đo: 0 đến 98 kPa<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Áp suất chịu đựng tối đa: 490 kPa<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Môi chất làm việc: Khí không ăn mòn, không cháy<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Độ chính xác ngõ ra On/Off: &plusmn;1% FS max.<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Độ chính xác ngõ ra analog: &plusmn;3% FS max.<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Thời gian đáp ứng: 5 ms max.<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Ngõ ra analog: 0 ~ 5 VDC, tổng trở ra 20 &Omega;, cho phép tải thuần trở 10 k&Omega; min.<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Ngõ ra On/Off: NPN open collector, 80mA 30VDC max.<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Chức năng bảo vệ ngược cực nguồn và ngắn mạch ngõ ra<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Chỉ thị: 21/2-digit LCD,đèn báo hoạt động (đỏ)<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Nhiệt độ làm việc: &minus;10&deg;C ~ 55&deg;C<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Vỏ bọc: Nhôm<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Tiêu chuẩn: IEC 60529 IP50</span></span></span></strong>', '', '', 'Z8av3gSa6YQ', 'CẢM BIẾN ÁP SUẤT', 'CẢM BIẾN ÁP SUẤT', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 3, 1, 0, 3),
(206, 'MCCB Mitsubishi', '', NULL, NULL, 0, 0, 0, '', '', '', 'Z8av3gSa6YQ', 'MCCB Mitsubishi', 'MCCB Mitsubishi', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 3, 1, 0, 3),
(207, 'Inverter Mitsubishi', '', NULL, NULL, 0, 0, 0, '', '', '', 'Z8av3gSa6YQ', 'Inverter Mitsubishi', 'Inverter Mitsubishi', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 3, 1, 0, 4),
(208, 'Servo Mitsubishi', '', NULL, NULL, 0, 0, 0, '', '', '', 'Z8av3gSa6YQ', 'Servo Mitsubishi', 'Servo Mitsubishi', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 3, 1, 0, 5),
(209, 'PLC Mitsubishi', '', NULL, NULL, 0, 0, 0, '', '', '', 'Z8av3gSa6YQ', 'PLC Mitsubishi', 'PLC Mitsubishi', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 3, 1, 0, 6),
(210, 'HMI Mitsubishi', '', NULL, NULL, 0, 0, 0, '', '', '', 'Z8av3gSa6YQ', 'HMI Mitsubishi', 'HMI Mitsubishi', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 3, 1, 0, 7),
(211, 'SERVO PANASONIC', '', NULL, NULL, 0, 0, 0, '<strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">&bull;&nbsp;&nbsp; &nbsp;Minas A4 family &nbsp;dải công xuất : 50w-7.5kw<br />\r\n&bull;&nbsp;&nbsp; &nbsp;Minas A5 Seri dải công xuất : 50w-15kw</span></span></span></strong><br />\r\n', '', '', 'Z8av3gSa6YQ', 'SERVO PANASONIC', 'SERVO PANASONIC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 3, 1, 0, 1),
(212, 'DC Geared Motor D &amp;  J', '', NULL, NULL, 0, 0, 0, '', '', '', 'Z8av3gSa6YQ', 'DC Geared Motor D &amp;  J', 'DC Geared Motor D &amp;  J', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 3, 1, 0, 2),
(213, 'Encoder Motor D &amp; J', '', NULL, NULL, 0, 0, 0, '', '', '', 'Z8av3gSa6YQ', 'Encoder Motor D &amp; J', 'Encoder Motor D &amp; J', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 3, 1, 0, 3),
(214, 'Step Motor D &amp; J', '', NULL, NULL, 0, 0, 0, '', '', '', 'Z8av3gSa6YQ', 'Step Motor D &amp; J', 'Step Motor D &amp; J', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 3, 1, 0, 4),
(215, 'DC Micro Motor D &amp; J', '', NULL, NULL, 0, 0, 0, '', '', '', 'Z8av3gSa6YQ', 'DC Micro Motor D &amp; J', 'DC Micro Motor D &amp; J', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 3, 1, 0, 5),
(216, 'Ezi-Servo ', '<span style="line-height:1"><span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px"><strong>Motor + Encoder + Drive<br />\r\nFast Response&nbsp; / Closed Loop System / High Torque / No Gain Tuning.</strong></span></span></span>', NULL, NULL, 0, 0, 0, '', '', '', 'Z8av3gSa6YQ', 'Ezi-Servo ', 'Ezi-Servo ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 3, 1, 0, 1),
(217, 'BỘ ĐIỀU KHIỂN TỤ BÙ  DUCATI', '', NULL, NULL, 0, 0, 0, '', '', '', 'Z8av3gSa6YQ', 'BỘ ĐIỀU KHIỂN TỤ BÙ  DUCATI', 'BỘ ĐIỀU KHIỂN TỤ BÙ  DUCATI', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 3, 1, 0, 1),
(218, 'TỤ BÙ SAMWHA', '', NULL, NULL, 0, 0, 0, '', '', '', 'Z8av3gSa6YQ', 'TỤ BÙ SAMWHA', 'TỤ BÙ SAMWHA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 3, 1, 0, 2),
(219, 'SERVO JUMMA YASKAWA', '', NULL, NULL, 0, 0, 0, '<p><span style="font-family:arial,helvetica,sans-serif"><span style="line-height:1"><span style="font-size:14px"><strong>Servopack: SGDV<br />\r\n1/3 AC 230V, 50/60Hz, +10%/-15%, 0,05kW &ndash; 1,5kW<br />\r\n3 AC 380V &ndash; 480V, 50/60Hz, +10%/-15%, 0,5kW &ndash; 15kW</strong></span></span></span></p>\r\n\r\n<p><span style="font-family:arial,helvetica,sans-serif"><span style="line-height:1"><span style="font-size:14px"><strong>&nbsp;Servomotor: SGMAV, SGMEV, SGMGV, SGMJV, SGMSV<br />\r\n3 AC 230V, 3000min-1, 0,159Nm &ndash; 2,39Nm, 50W &ndash; 1.5kW<br />\r\n3 AC 400V, 1500min-1, 1,96Nm &ndash; 28,4Nm, 0,3kW &ndash; 15kW<br />\r\n3 AC 400V, 3000min-1, 0,637Nm &ndash; 22,3Nm, 200kW &ndash; 7kW</strong></span></span></span></p>\r\n', '', '', 'Z8av3gSa6YQ', 'SERVO JUMMA YASKAWA', 'SERVO JUMMA YASKAWA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 3, 1, 0, 1),
(220, 'SERVO YASKAWA', '', NULL, NULL, 0, 0, 0, '<ul>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Độ phân giải vượt trội đến 1.6Khz.</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Tự động dò tìm theo thời gian thực nhằm điều khiển tải phù hợp.</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Giảm thiểu rung động cho tải.</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Chức năng tự động dò tìm tiên tiến</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Điều khiển truyền động chính xác cao nhất.</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Servopack: SGDV<br />\r\n	1/3 AC 230V, 50/60Hz, +10%/-15%, 0,05kW &ndash; 1,5kW<br />\r\n	3 AC 380V &ndash; 480V, 50/60Hz, +10%/-15%, 0,5kW &ndash; 15kW</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Servomotor: SGMAV, SGMEV, SGMGV, SGMJV, SGMSV<br />\r\n	3 AC 230V, 3000min-1, 0,159Nm &ndash; 2,39Nm, 50W &ndash; 1.5kW<br />\r\n	3 AC 400V, 1500min-1, 1,96Nm &ndash; 28,4Nm, 0,3kW &ndash; 15kW<br />\r\n	3 AC 400V, 3000min-1, 0,637Nm &ndash; 22,3Nm, 200kW &ndash; 7kW</span></span></span></strong></li>\r\n</ul>\r\n', '', '', 'Z8av3gSa6YQ', 'SERVO YASKAWA', 'SERVO YASKAWA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 3, 1, 0, 5),
(221, 'INVERTER YASKAWA SERRI A1000', '', NULL, NULL, 0, 0, 0, '<span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>-&nbsp;&nbsp; &nbsp;Dòng biến tần A1000 là dòng biến tần đa năng,cách lắp đặt và cài đặt tham số đơn giản,cung cấp hệ thống điều khiển cơ bản cho động cơ không đồng bộ 3 pha rotor lồng sóc với giải công xuất từ 0.4kw- 630kw<br />\r\n-&nbsp;&nbsp; &nbsp;Là biến tần duy nhất Nhật Bản đạt tiêu chuẩn môi trường<br />\r\n-&nbsp;&nbsp; &nbsp;Công xuất : 3P &nbsp; 200-240V/50Hz : 0.4 &ndash; 110kw<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 3P &nbsp; 380-480V/50Hz : 0.4 - 630kw<br />\r\n-&nbsp;&nbsp; &nbsp;Sai số nguồn cấp cho phép : Điện áp + 10%,-15% ; Tần số : &plusmn; 5%<br />\r\n-&nbsp;&nbsp; &nbsp;Khả năng quá tải : 120% trong vòng 60s với tải thường,150% trong vòng 60s với tải nặng.<br />\r\n-&nbsp;&nbsp; &nbsp;Phương pháp điều kiển động cơ : Điều khiển V/f,V/f với PG ( Pluse Generrato &ndash; máy phát xung ),vector vòng hở,vector vòng kín với PG,vector vòng hở cho PM ( Permanent &ndash;Động cơ nam châm vĩnh cửu ),vector vòng kín cho PM.<br />\r\n-&nbsp;&nbsp; &nbsp;Hãm 1 chiều cho toàn dải công xuất,tích hợp mạch điều khiển hãm động năng biến tần 30kw<br />\r\n-&nbsp;&nbsp; &nbsp;Môi trường làm viêc : Nhiệt độ : -10 -50Oc,độ ẩm : &lt; 95%,độ cao &lt; 1000m<br />\r\n-&nbsp;&nbsp; &nbsp;Tiêu chuẩn bảo vệ IP00,IP20,ỊP4<br />\r\n-&nbsp;&nbsp; &nbsp; Thiết bị mở rộng : mạch phản hồi tốc độ Encoder,mạch kế nối Profibus-DP,Lonwork,Mechatrolink,CANopen,Devvicenet,CC-link</strong></span></span></span><br />\r\n', '', '', 'Z8av3gSa6YQ', 'INVERTER YASKAWA SERRI A1000', 'INVERTER YASKAWA SERRI A1000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 3, 1, 0, 6),
(222, 'Inverter Yaskawa Serri V1000', '', NULL, NULL, 0, 0, 0, '<ul>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Chuyên dung cho các ứng dụng tải năng,phức tạp</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Phần mềm ( CranSoftware ) với các tham số dành riêng cho ứng dụng cẩu trục chuyên biệt.</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Là biến tần duy nhất Nhật bản đạt tiêu chuần về môi trường</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Công xuất : 3P&nbsp;&nbsp; 200-240V/50Hz : 0.1 &ndash; 15kw</span></span></span></strong></li>\r\n</ul>\r\n<strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3P&nbsp;&nbsp; 380-480V/50Hz : 0.2 &ndash; 15kw</span></span></span></strong>\r\n\r\n<ul>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Tần số ra : 0 &ndash; 400Hz</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Khả năng quá tải 150% trong vòng 60s</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Dải điều khiển : 0-10V,4-20Ma</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Chức năng vận hành : điều khiển đa tốc độ,phanh DC trong quá trình tăng,điều khiển PID,AVR,tự động Reset khi có lỗi,kế nối truyền thông 485</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Tiêu chuẩn bảo vệ : IP 20</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Thiết bị mở rộng : mạch phản hồi tốc độ Encoder,mạch kế nối Profibus-DP,Lonwork,Mechatrolink,CANopen,Devvicenet,CC-link</span></span></span></strong></li>\r\n</ul>\r\n', '', '', 'Z8av3gSa6YQ', 'Inverter Yaskawa Serri V1000', 'Inverter Yaskawa Serri V1000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 3, 1, 0, 7),
(223, 'Inverter Yaskawa Serri J1000', '', NULL, NULL, 0, 0, 0, '<strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Inverter Yaskawa Serri J1000</span></span></span></strong>\r\n<ul>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Dòng biến tần J1000 là dòng biến tần tiện dụng,cách lắp đặt và cài đặt đơn giản,có thiết kế nhỏ gọn,phù hợp cho lắp đặt công xuất nhỏ,yêu cầu thẩm mỹ cao,khả năng chịu tải lớn</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Là biến tần duy nhất tại Nhật Bản đạt tiêu chuẩn quốc tế về môi trường.</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Công xuất : 3P&nbsp;&nbsp; 200V-240V / 50Hz&nbsp;&nbsp; : 0.2-5.5kw</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Công xuất : 3P&nbsp;&nbsp; 380V-480V / 50Hz&nbsp;&nbsp;&nbsp; : 0.4-5.5kw</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Giải tần số ra : 0-1500Hz</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Khả năng quá tải 150% trong vòng 60s,200% trong vòng 0.5s</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Mô men khởi động 200% tại 0.5Hz</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Dải điều khiển từ : 0-10v,4-20Ma</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Tần số song mang lên tới 15Khz</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Chức năng vận hành : điều khiển đa tốc độ,phanh DC trong quá trình tăng,điều khiển PID,AVR,tự động Reset khi có lỗi,kế nối truyền thông 485</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Bảo vệ quá áp,quá tải,nhiệt độ quá cao,lỗi CPU,&hellip;</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Tiêu chuẩn bảo vệ : IP 20</span></span></span></strong></li>\r\n	<li><strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">Thiết bị mở rộng : mạch phản hồi tốc độ Encoder,mạch kế nối Profibus-DP,Lonwork,Mechatrolink,CANopen,Devvicenet,CC-link</span></span></span></strong></li>\r\n</ul>\r\n', '', '', 'Z8av3gSa6YQ', 'Inverter Yaskawa Serri J1000', 'Inverter Yaskawa Serri J1000', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 3, 1, 0, 8),
(224, 'BIẾN TẦN OMRON', '', NULL, NULL, 0, 0, 0, '<span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Biến tần 400W, 3P/1P 220VAC</strong></span></span></span>\r\n<ul>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Chức năng PID</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Trang bị sẵn Radio Noise Filter (Z-phase reactor)</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Chỉnh tần số ngõ ra: 0.5 ~ 400Hz, độ phân giải 0.1Hz</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Khả năng quá tải: 150% trong 1phút</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Thời gian tăng giảm tốc: 0.01S ~ 3000S</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Chức năng bảo vệ: Overcurrent, overvoltage, undervoltage, electronic thermal, temperature error, ground-fault overcurrent at power-on state, overload limit, incoming overvoltage, external trip, memory error, CPU error, USP trip, communication error, overvoltage protection during deceleration, momentary power interruption protection, emergency shutoff</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Truyền thông Modbus-RTU</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Chọn lựa thiết bị ngoại vi: Noise filter, AC/DC reactors, regenerative braking unit and resistor,</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Tiêu chuẩn: EC, UL/cUL</strong></span></span></span></li>\r\n</ul>\r\n', '', '', 'Z8av3gSa6YQ', 'Biến tần Omron', 'Biến tần Omron', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 3, 1, 0, 9),
(226, 'BỘ ĐẾM', '', NULL, NULL, 0, 0, 0, '<span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Bộ đếm đa năng 1 trạng thái, kích thước 72 x 72mm</strong></span></span></span>\r\n<ul>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Nguồn cấp: 100-240VAC</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Chế độ hoạt động: 1-stage preset counter, total and preset counter *1 (lưạ chọn)</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Hiển thị negative transmissive&nbsp;LCD, 6 số, -99,999 ~ 999,999</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Chọn màu hiển thị</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Ngõ vào NPN/PNP và cảm biến 2-dây</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Chọn chế độ ngõ vào: Increment, decrement, command (UP/DOWN A), individual (UP/DOWN B), quadrature (UP/DOWN C)</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Ngõ ra: Rơle và NPN</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Chọn&nbsp;chế độ ngõ ra:&nbsp;N, F, C, R, K-1, P, Q, A, K-2, D, L</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Ngõ ra tác động nhanh: 0.01 ~ 99.99s</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Chức năng đếm: 1-stage counter / 1-stage counter with total counter</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Tốc độ: 30Hz / 5kHz</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Có nguồn cho thiết bị ngoài: 12VDC, 100mA&nbsp;</strong></span></span></span></li>\r\n	<li><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>Tiêu chuẩn: UL, CSA, EN, CE. IP54&nbsp;</strong></span></span></span></li>\r\n</ul>\r\n', '', '', 'Z8av3gSa6YQ', 'BỘ ĐẾM', 'BỘ ĐẾM', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 3, 1, 0, 14),
(227, 'Bộ Điều Khiển Lập Trình PLC', '', NULL, NULL, 0, 0, 0, '<strong><span style="line-height:1"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif">24 DC inputs,16 relay outputs</span></span></span></strong>\r\n<ul>\r\n	<li><strong>Nguồn cấp: 100-240VAC</strong></li>\r\n	<li><strong>Ngôn ngữ lập trình: Ladder diagram</strong></li>\r\n	<li><strong>Tốc độ thực hiện lệnh: Lệnh cơ bản: 0.01&micro;s; Lệnh đặc biệt: 0.15&micro;s</strong></li>\r\n	<li><strong>Bộ nhớ chương trình: 20K steps</strong></li>\r\n	<li><strong>Bộ đếm tốc độ cao: 100 kHz (single-phase), 50 kHz (differential phases), 4 axes</strong></li>\r\n	<li><strong>Ngõ ra xung tốc độ cao: 100 kHz for 4 axes</strong></li>\r\n	<li><strong>Cổng truyền thong: Trang bị sẵn cổng USB, chọn lựa thêm RS232C, RS422/RS485</strong></li>\r\n	<li><strong>Ngõ vào/ra analog: -</strong></li>\r\n	<li><strong>Có thể gắn thêm 7 bộ mở rộng CPM1 và 2 bộ mở rộng CJ1W</strong></li>\r\n	<li><strong>Chức năng thời gian thực (Clock)</strong></li>\r\n	<li><strong>Nhiệt độ làm việc: 0~55<sup>o</sup>C</strong></li>\r\n	<li><strong>Tiêu chuẩn: IEC 61000; JIS C0040; JIS C0041</strong></li>\r\n</ul>\r\n<strong>&nbsp;</strong>', '', '', 'Z8av3gSa6YQ', 'Bộ điều khiển lập trình PLC', 'Bộ điều khiển lập trình PLC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 3, 1, 0, 14);

-- --------------------------------------------------------

--
-- Table structure for table `product_cate`
--

CREATE TABLE `product_cate` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `sum` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL,
  `e_title` text NOT NULL,
  `e_sum` text NOT NULL,
  `e_meta_keyword` text NOT NULL,
  `e_meta_description` text NOT NULL,
  `img` text NOT NULL,
  `icon` text NOT NULL,
  `pId` int(11) NOT NULL,
  `lev` int(11) NOT NULL,
  `ind` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_cate`
--

INSERT INTO `product_cate` (`id`, `title`, `sum`, `meta_keyword`, `meta_description`, `e_title`, `e_sum`, `e_meta_keyword`, `e_meta_description`, `img`, `icon`, `pId`, `lev`, `ind`, `active`) VALUES
(1, 'BIẾN TẦN', '', 'LED Par Lights', 'LED Par Lights', 'Electrical Parts', '', 'Electrical Parts', 'Electrical Parts', '', '', 0, 1, 1, 1),
(2, 'SERVO', '', 'LED Moving Head', 'LED Moving Head', 'Auto Parts', '', 'Auto Parts', 'Auto Parts', '', '', 0, 1, 2, 1),
(3, 'ĐỘNG CƠ ', '', 'Moving Head light', 'Moving Head light', 'Mechanical Heat Sink', '', 'Mechanical Heat Sink', 'Mechanical Heat Sink', '', '', 1, 2, 3, 1),
(9, 'MOTOR ABB', '', 'MOTOR ABB', 'MOTOR ABB', '', '', '', '', '', '', 0, 1, 9, 1),
(14, 'SERVO OMRON 1', '', 'SERVO OMRON 1', 'SERVO OMRON1', 'e2', '', 'de', 'fe', '', '', 0, 1, 5, 1),
(15, 'DUCATI', '', 'DUCATI', 'DUCATI', '', '', '', '', '', '', 1, 2, 6, 0),
(16, 'YASKAWA', '', 'YASKAWA', 'YASKAWA', '', '', '', '', '', '', 2, 2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_image`
--

CREATE TABLE `product_image` (
  `id` int(11) NOT NULL,
  `img` text NOT NULL,
  `pId` int(11) NOT NULL,
  `ind` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_image`
--

INSERT INTO `product_image` (`id`, `img`, `pId`, `ind`, `active`) VALUES
(178, '1484841850bo-suu-tap-1_05.jpg', 175, 1, 1),
(179, '1484841850bo-suu-tap-1_05.jpg', 176, 1, 1),
(180, '1484841850bo-suu-tap-1_05.jpg', 177, 1, 1),
(182, '1484841850bo-suu-tap-1_05.jpg', 179, 1, 1),
(183, '1484841850bo-suu-tap-1_05.jpg', 180, 1, 1),
(184, '1484841850bo-suu-tap-1_05.jpg', 181, 1, 1),
(185, '1484841850bo-suu-tap-1_05.jpg', 182, 7, 1),
(186, '1484841850bo-suu-tap-1_05.jpg', 183, 1, 1),
(187, '1484841850bo-suu-tap-1_05.jpg', 184, 2, 1),
(188, '1484841850bo-suu-tap-1_05.jpg', 185, 3, 1),
(189, '1484841850bo-suu-tap-1_05.jpg', 186, 4, 1),
(190, '1484841850bo-suu-tap-1_05.jpg', 187, 6, 1),
(191, '1484841850bo-suu-tap-1_05.jpg', 188, 1, 1),
(192, '1484841850bo-suu-tap-1_05.jpg', 189, 2, 1),
(193, '1484841850bo-suu-tap-1_05.jpg', 190, 4, 1),
(195, '1484841850bo-suu-tap-1_05.jpg', 192, 1, 1),
(196, '1484841850bo-suu-tap-1_05.jpg', 193, 1, 1),
(197, '1484841850bo-suu-tap-1_05.jpg', 178, 1, 1),
(198, '1484841850bo-suu-tap-1_05.jpg', 191, 5, 1),
(199, '1484841850bo-suu-tap-1_05.jpg', 194, 1, 1),
(200, '1484841850bo-suu-tap-1_05.jpg', 195, 2, 1),
(201, '1484841850bo-suu-tap-1_05.jpg', 196, 3, 1),
(202, '1484841850bo-suu-tap-1_05.jpg', 197, 4, 1),
(203, '1484841850bo-suu-tap-1_05.jpg', 198, 1, 1),
(204, '1484841850bo-suu-tap-1_05.jpg', 199, 1, 1),
(208, '1484841850bo-suu-tap-1_05.jpg', 201, 3, 1),
(209, '1484841850bo-suu-tap-1_05.jpg', 200, 2, 1),
(210, '1484841850bo-suu-tap-1_05.jpg', 202, 1, 1),
(211, '1484841850bo-suu-tap-1_05.jpg', 203, 1, 1),
(212, '1484841850bo-suu-tap-1_05.jpg', 204, 2, 1),
(213, '1484841850bo-suu-tap-1_05.jpg', 205, 3, 1),
(214, '1484841850bo-suu-tap-1_05.jpg', 206, 3, 1),
(215, '1484841850bo-suu-tap-1_05.jpg', 207, 4, 1),
(216, '1484841850bo-suu-tap-1_05.jpg', 208, 5, 1),
(217, '1484841850bo-suu-tap-1_05.jpg', 209, 6, 1),
(218, '1484841850bo-suu-tap-1_05.jpg', 210, 6, 1),
(219, '1484841850bo-suu-tap-1_05.jpg', 211, 1, 1),
(220, '1484841850bo-suu-tap-1_05.jpg', 212, 2, 1),
(221, '1484841850bo-suu-tap-1_05.jpg', 213, 3, 1),
(222, '1484841850bo-suu-tap-1_05.jpg', 214, 4, 1),
(223, '1484841850bo-suu-tap-1_05.jpg', 215, 5, 1),
(224, '1484841850bo-suu-tap-1_05.jpg', 216, 1, 1),
(225, '1484841850bo-suu-tap-1_05.jpg', 217, 1, 1),
(226, '1484841850bo-suu-tap-1_05.jpg', 218, 2, 1),
(227, '1484841850bo-suu-tap-1_05.jpg', 219, 1, 1),
(228, '1484841850bo-suu-tap-1_05.jpg', 220, 5, 1),
(229, '1484841850bo-suu-tap-1_05.jpg', 221, 6, 1),
(230, '1484841850bo-suu-tap-1_05.jpg', 222, 7, 1),
(231, '1484841850bo-suu-tap-1_05.jpg', 223, 9, 1),
(232, '1484841850bo-suu-tap-1_05.jpg', 224, 9, 1),
(233, '1484841850bo-suu-tap-1_05.jpg', 226, 1, 1),
(234, '1484841850bo-suu-tap-1_05.jpg', 227, 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `sum` text NOT NULL,
  `content` longtext NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL,
  `e_title` text NOT NULL,
  `e_sum` text NOT NULL,
  `e_content` longtext NOT NULL,
  `e_meta_keyword` text NOT NULL,
  `e_meta_description` text NOT NULL,
  `pId` int(11) DEFAULT NULL,
  `maps` text NOT NULL,
  `city` int(11) NOT NULL,
  `district` int(11) NOT NULL,
  `img` text NOT NULL,
  `date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `home` tinyint(4) NOT NULL DEFAULT '0',
  `ind` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE `promotion` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `sum` text NOT NULL,
  `content` longtext NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL,
  `e_title` text NOT NULL,
  `e_sum` text NOT NULL,
  `e_content` longtext NOT NULL,
  `e_meta_keyword` text NOT NULL,
  `e_meta_description` text NOT NULL,
  `pId` int(11) NOT NULL,
  `maps` text NOT NULL,
  `city` int(11) NOT NULL,
  `district` int(11) NOT NULL,
  `img` text NOT NULL,
  `active` tinyint(1) NOT NULL,
  `home` tinyint(4) NOT NULL DEFAULT '0',
  `ind` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `promotion`
--

INSERT INTO `promotion` (`id`, `title`, `sum`, `content`, `meta_keyword`, `meta_description`, `e_title`, `e_sum`, `e_content`, `e_meta_keyword`, `e_meta_description`, `pId`, `maps`, `city`, `district`, `img`, `active`, `home`, `ind`) VALUES
(1, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '<p>Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.</p>\r\n\r\n<p>Chồng làm giám đốc một công ty lớn trong ngành truyền thông, gia đình có đến 2 người giúp việc, chị Thu ở Núi Trúc, Hà Nội, vẫn giữ thói quen tự nấu nướng cho cả gia đình. Chồng cùng 2 cậu con trai của chị cũng chỉ thích ăn những món do nội tướng chế biến.</p>\r\n\r\n<p>&quot;Nhiều món ăn tuy đơn giản nhưng vẫn cần bí quyết chế biến riêng nên người khác nấu không hợp khẩu vị khiến chồng con tôi không ưng. Hai cô giúp việc chỉ phải dọn dẹp với giặt giũ, còn đi chợ hay nấu nướng thì tôi tự thu xếp công việc và thời gian để làm&quot;, chị Thu nói.</p>\r\n\r\n<p>Không ít lần chị Thu &quot;mất điểm&quot; vì công việc quá lu bu. Chị kể, đặt nồi cá kho lên bếp định một tiếng rưỡi tiếng xuống tắt lửa là vừa, nhưng mải quyết toán doanh thu cuối tháng của công ty nên chị quên mất. Ngửi thấy mùi khét, chị chạy xuống bếp thì nồi cá đã sắp thành than.</p>\r\n\r\n<p>Chia sẻ với bạn, chị Thu được mách về loại bếp điện từ hồng ngoại - kết hợp tính năng điện từ với hồng ngoại, có hẹn giờ nên tránh được tối đa những sơ suất tương tự &quot;vụ nồi cá&quot;. Ngoài ra, dùng loại bếp này, thời gian nấu nhanh, nấu được với tất cả các loại nồi chứ không bị bó hẹp như bếp từ. Cân nhắc mãi, chị Thu quyết định mua một chiếc dù mức giá khá cao, 45 triệu đồng cho loại 4 bếp.</p>\r\n\r\n<p>&quot;Chi phí ban đầu hơi cao nhưng tiết kiệm được thời gian nấu, tính ra chưa đầy 30 phút là xong bữa tối. Con cái còn nhỏ, ở nhà cả ngày với người giúp việc, mà gần đây xảy ra nhiều vụ nổ gas nên tôi càng lo, quyết tâm đầu tư bếp từ hồng ngoại để đảm bảo an toàn cho cả nhà&quot;, chị Thu tâm sự. Ngoài ra, mặt bếp sáng bóng, hợp với không gian căn bếp sang trọng mà vợ chồng chị đã cất công thiết kế, khiến chị Thu không tiếc khoản tiền gần 50 triệu đồng đã bỏ ra để mua.</p>\r\n\r\n<p>Chị Tiến ở Mỹ Đình, Hà Nội, phu nhân giám đốc chi nhánh của công ty dược có tiếng, cũng chọn bếp điện từ hồng ngoại cho gian bếp nhà mình. Chị lý giải, ngoài lý do an toàn, hình thức bắt mắt và nấu nướng nhanh, bếp có giá trị sử dụng cao, giảm được chi phí hằng tháng so với dùng các loại bếp thông thường.</p>\r\n\r\n<p>Theo chị, nếu dùng bếp gas, trung bình mỗi tháng gia đình chị hết khoảng 250.000 đồng. Từ khi chuyển sang dùng bếp từ hồng ngoại, cắt giảm được chi phí gas, chị tính toán thấy số tiền điện chỉ tăng thêm từ 120.000 đồng đến 150.000 đồng so với trước. Định kỳ hằng năm, chị không phải thay van gas, dây nối..., tuổi thọ của loại bếp này cũng gấp 2-3 lần so với bếp gas. Chưa kể, do có nhiều chức năng tự động như tự ngắt khi gặp vật thể lạ hoặc người dùng quên tắt... nên thiết bị nhà bếp này khá an toàn.</p>\r\n\r\n<p>&quot;Tôi thấy giá khá cao nhưng &#39;đắt xắt ra miếng&#39;, đầu tư lớn ban đầu mà chi phí dùng về sau rẻ hơn khá nhiều nên tính về lâu dài thì tiết kiệm hơn. Một điểm nữa tôi rất thích là trời nóng vẫn có thể bật quạt hướng thẳng vào vị trí đứng nấu mà không sợ bị tản nhiệt như nấu bằng bếp gas&quot;, chị Tiến giải thích.</p>\r\n\r\n<p>Xuất hiện chưa lâu và có mức giá khá cao song bếp điện từ hồng ngoại đã được khá nhiều bà nội trợ đầu tư chọn lựa. Giá bếp dao động từ 20 đến trên 40 triệu đồng mỗi chiếc, tùy vào xuất xứ, vật liệu và số lượng mặt bếp. Ông Phạm Đức Tuân, Giám đốc kinh doanh ngành hàng bếp của Kangaroo, một những doanh nghiệp vừa tung ra dòng sản phẩm bếp điện từ hồng ngoại cao cấp cho biết, chỉ trong vòng 2 tháng, số lượng bán ra đã hơn 5.000 chiếc, trong đó, doanh số tháng sau cao hơn tháng trước 30%.</p>\r\n\r\n<p>Trao đổi với&nbsp;<em>VnExpress.net</em>, ông cho biết, so với bếp gas, bếp điện từ hồng ngoại Kangaroo có hiệu suất hấp thụ nhiệt cao đến 90%, trong khi bếp gas đạt 55%, bếp điện thông thường đạt khoảng 65%. Theo đó, nếu chuyển từ bếp gas sang bếp điện từ hồng ngoại, người tiêu dùng tiết kiệm được đến 40% chi phí nhiên liệu cho việc đun nấu, thời gian nấu nướng cũng vì thế mà nhanh gấp 2-3 lần.</p>\r\n\r\n<p>Hai bộ phận quan trọng nhất của bếp là mặt kính và bộ gia nhiệt đều được nhập khẩu từ các hãng danh tiếng của Đức là Schott và Ego, đảm bảo độ bền và hiệu suất ra nhiệt tối đa. Ngoài ra với độ dày 4 mm, bếp có khả năng chịu lực và chịu nhiệt lên đến 800 độ C. Nhiệt độ được truyền thẳng đứng đến đáy nồi, nhiệt năng không bị thất thoát ra không khí.</p>\r\n\r\n<p>Tuy nhiên, vị chuyên gia khẳng định, dù sử dụng bất kỳ loại bếp nào, người nội trợ cũng nên vệ sinh, bảo trì thiết bị thường xuyên, giữ không khí trong phòng bếp lưu thông, thoáng mát... để đảm bảo chất lượng sản phẩm.</p>\r\n', '', '', 0, '<iframe src="https://maps.google.com/maps?f=q&source=s_q&hl=en&geocode=&q=Kuningan,+Jakarta+Capital+Region,+Indonesia&aq=3&oq=kuningan+&sll=37.0625,-95.677068&sspn=37.410045,86.572266&ie=UTF8&hq=&hnear=Kuningan&t=m&z=14&ll=-6.238824,106.830177&output=embed"></iframe>', 3, 136, '1484721347tải xuống (1).jpg', 1, 1, 1),
(2, 'Khuyến Mãi Ngày Vàng', 'Khuyến Mãi Ngày Vàng', '', 'Khuyến Mãi Ngày Vàng', 'Khuyến Mãi Ngày Vàng', 'Sự lên ngôi của bếp từ trong căn bếp Việt', 'Không chỉ tuyệt vời về hiệu quả sử dụng, bếp từ còn rất được...', '<p><strong>Vì&nbsp;sao bếp gas bị thất thế?</strong></p>\r\n\r\n<p>Còn nhớ vụ nổ gas cách đây không lâu tại phố Tạ Quang Bửu khiến hai cháu bé bị tử vong rất thương tâm, bố và mẹ bị thương nặng. Chính vì lẽ đó mà không ít người e dè khi lựa chọn bếp gas để sử dụng.</p>\r\n\r\n<p>Anh Hoàng Vũ Linh (Đống Đa &ndash; Hà Nội) cho hay: &ldquo;Vụ nổ khí gas vừa rồi thật kinh khủng quá. Gia đình tôi cũng sử dụng gas để nấu nướng nhưng không hay thường xuyên kiểm tra xem dây dẫn gas, van gas có an toàn không, đã bị hư hại gì chưa. Nhưng sau lần này thì tôi sẽ thường xuyên gọi thợ tới kiểm tra hơn để đảm bảo an toàn khi sử dụng&rdquo;.</p>\r\n\r\n<p><a href="http://bep.vn/upload/editor/images/bep-ga-bep-tu.jpg" style="box-sizing: border-box; color: rgb(53, 75, 156); text-decoration: none; transition: all 0.1s ease-in-out; outline: none; background-color: transparent;" title="Sự lên ngôi của bếp từ trong căn bếp Việt - ảnh 1"><img alt="Hình ảnh Sự lên ngôi của bếp từ trong căn bếp Việt số 1" src="http://bep.vn/upload/editor/images/bep-ga-bep-tu.jpg" style="border-style:initial; border-width:0px; box-sizing:border-box; max-width:100%; vertical-align:middle" title="Sự lên ngôi của bếp từ trong căn bếp Việt - ảnh 1" /></a></p>\r\n\r\n<p><em>Nhiều người tiêu dùng e ngại tính an toàn của bếp gas</em></p>\r\n\r\n<p>Chính vì những &ldquo;ẩn họa&rdquo; khôn lường của bếp gas mà không ít gia đình đã loại nó ra khỏi danh mục những đồ dùng trong nhà bếp. Chị Trần Hoàng Ngân (Từ Liêm &ndash; Hà Nội) chia sẻ: &ldquo;Sau một vài vụ cháy nổ do gas gây ra, gia đình tôi đã quyết định không sử dụng loại bếp này nữa, chuyển sang sử dụng loại bếp khác an toàn hơn để tránh những rủi ro đáng tiếc có thể xảy ra&rdquo;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Và sự lên ngôi của bếp từ</strong></p>\r\n\r\n<p>Chẳng có gì lạ khi người tiêu dùng quay lưng lại với bếp gas và &ldquo;sính&rdquo; sử dụng&nbsp;<a href="http://bep.vn/bep-tu" rel="dofollow" style="box-sizing: border-box; color: rgb(53, 75, 156); text-decoration: none; transition: all 0.1s ease-in-out; outline: none; background-color: transparent;" target="_blank"><strong>bếp từ</strong></a>&nbsp;bởi sự an toàn, tiết kiệm và đẹp sang trọng của nó.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Với cơ chế làm trực tiếp phần thức ăn bên trong nồi nên hiệu suất sử dụng của bếp từ rất cao lên tới 90%, cao hơn rất nhiều so với bếp gas và bếp điện. Chính vì vậy mà thời gian nấu ăn của bạn sẽ được rút ngắn hơn và chi phí phải bỏ ra cho công việc nấu nướng cũng tiết kiệm hơn. &nbsp;</p>\r\n\r\n<p><a href="http://bep.vn/upload/editor/images/bep-ga-bep-tu-1.jpg" style="box-sizing: border-box; color: rgb(53, 75, 156); text-decoration: none; transition: all 0.1s ease-in-out; outline: none; background-color: transparent;" title="Sự lên ngôi của bếp từ trong căn bếp Việt - ảnh 2"><img alt="Hình ảnh Sự lên ngôi của bếp từ trong căn bếp Việt số 2" src="http://bep.vn/upload/editor/images/bep-ga-bep-tu-1.jpg" style="border-style:initial; border-width:0px; box-sizing:border-box; max-width:100%; vertical-align:middle" title="Sự lên ngôi của bếp từ trong căn bếp Việt - ảnh 2" /></a></p>\r\n\r\n<p><em>Sự lên ngôi của bếp từ</em></p>\r\n\r\n<p>Không chỉ tuyệt vời về hiệu quả sử dụng, bếp từ còn rất được lòng các bà nội trợ bởi thiết kế đẹp mắt, sang trọng và hiện đại của nó. Hơn nữa, bếp từ rất dễ sử dụng (thông qua các nút điều khiển), tính năng đa dạng lại an toàn với cả trẻ em và người lớn nếu vô tình chạm phải mặt bếp trong khi đang nấu, nó không gây bỏng rát bởi mặt bếp luôn mát trong suốt quá trình sử dụng.</p>\r\n\r\n<p>Hiện nay có rất nhiều chủng loại&nbsp;<a href="http://bep.vn/bep-dien-tu" rel="dofollow" style="box-sizing: border-box; color: rgb(53, 75, 156); text-decoration: none; transition: all 0.1s ease-in-out; outline: none; background-color: transparent;" target="_blank">bếp điện</a>,&nbsp;bếp từ của rất nhiều hang khác nhau, người tiêu dùng nên lựa chọn những loại bếp của các thương hiệu uy tín để đảm bảo an toàn và chất lượng khi sử dụng.&nbsp;</p>\r\n\r\n<p>Nếu bạn còn đang băn khoăn không biết nên lựa chọn loại bếp nào cho phù hợp với &ldquo;túi tiền&rdquo; và không gian bếp nhà mình, còn chần chừ gì nữa mà không đến với&nbsp;<strong>Bep.vn&nbsp;</strong>tại&nbsp;địa chỉ 406 Xã Đàn, Đống Đa, Hà Nội. Tại đây, bạn sẽ nhận được những lời tư vấn xác đáng từ những tư vấn viên chuyên nghiệp của chúng tôi, chắc chắn bạn sẽ dễ dàng chọn được cho gia đình một sản phẩm bếp từ ưng ý.</p>\r\n\r\n<p>Tại&nbsp;<strong>Bep.vn</strong>, chúng tôi&nbsp;cung cấp các sản phẩm bếp từ, bếp điện từ, bếp điện,&nbsp;<a href="http://bep.vn/lo-nuong" rel="dofollow" style="box-sizing: border-box; color: rgb(53, 75, 156); text-decoration: none; transition: all 0.1s ease-in-out; outline: none; background-color: transparent;" target="_blank">lò nướng</a>, lò vi sóng, máy hút mùi, máy rửa bát và các sản phẩm gia dụng khác chính hãng với chất lượng tốt nhất trên thị trường hiện nay.</p>\r\n\r\n<p><strong>Thông tin liên hệ:</strong></p>\r\n\r\n<p>Công ty TNHH Xây Dựng và Dịch Vụ Anh Tú<br />\r\nSố 406 Phố Xã Đàn - Đống Đa - Hà Nội &nbsp;(Đường Kim Liên Mới)<br />\r\nTel : 04 35738480&nbsp;<br />\r\nEmail :&nbsp;info@bep.vn<br />\r\nWebsite:&nbsp;<a href="http://bep.vn/" rel="dofollow" style="box-sizing: border-box; color: rgb(53, 75, 156); text-decoration: none; transition: all 0.1s ease-in-out; outline: none; background-color: transparent;" target="_blank">http://bep.vn</a></p>\r\n', '', '', 0, '', 0, 0, '14847211918799411372062.jpg', 1, 1, 2),
(3, 'Tri Ân Kh3ách Háng Cuối Năm ', 'Tri Ân Khách Háng Cuối Năm ', '', 'Tri Ân Khách Háng Cuối Năm ', 'Tri Ân Khách Háng Cuối Năm ', '', '', '', '', '', 0, '', 0, 0, '1484721142tải xuống.jpg', 1, 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `qtext`
--

CREATE TABLE `qtext` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `e_title` text NOT NULL,
  `content` longtext NOT NULL,
  `e_content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qtext`
--

INSERT INTO `qtext` (`id`, `title`, `e_title`, `content`, `e_content`) VALUES
(2, 'Hotline', '', '4343434343', 'wewewe'),
(3, 'Liên hệ', '', '<span style="color:#008000"><strong><img alt="" src="/file/ckfinder/userfiles/images/03-01-2017%205-04-15%20CH.png" style="height:131px; width:380px" /><br />\r\nCÔNG TY TNHH KỸ THUẬT TỰ ĐỘNG&nbsp;THÁI BÌNH</strong><br />\r\n<strong>NHÀ CUNG CẤP CÁC THIẾT BỊ TỰ ĐỘNG HÓA TRONG CÔNG NGHIỆP</strong></span><br />\r\n<span style="font-size:14px"><strong>MST : &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 0312 953 329&nbsp;</strong><br />\r\n<strong>Địa Chỉ: &nbsp; &nbsp; &nbsp; &nbsp; 566/12 Điện Biên Phủ, Phường 22, Quận Bình Thạnh,&nbsp;Tp. HCM<br />\r\nĐiện Thoại: &nbsp; 0912 907 282<br />\r\nFax: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;08.62 945 256</strong><br />\r\n<strong>Email: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;sale.thaibinh@gmail.com<br />\r\nWebsite: &nbsp; &nbsp; &nbsp; &nbsp;thaibinhauto.com</strong></span><br />\r\n&nbsp;', ''),
(4, 'Footer', '', '<span style="line-height:2"><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><span style="color:rgb(0, 128, 0)"><strong>CÔNG TY TRÁCH NHIỆM HỮU HẠN&nbsp;KỸ THUẬT TỰ ĐỘNG THÁI BÌNH</strong></span><br />\r\n<strong>MST : &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 0312 953 329&nbsp;</strong><br />\r\n<strong>Địa Chỉ: &nbsp; &nbsp; &nbsp; &nbsp; </strong>566/12 Điện Biên Phủ, Phường 22, Quận Bình Thạnh,&nbsp;Tp. HCM<br />\r\n<strong>Điện Thoại: &nbsp; (84-8) 62 945 255 - Hotline: <span style="color:#FFF0F5">0963 907 282</span><br />\r\nFax: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;(84-8) 62 945 256</strong><br />\r\n<strong>Email: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;info@thaibinhauto.com<br />\r\nWebsite: &nbsp; &nbsp; &nbsp; &nbsp;thaibinhauto.com</strong></span></span></span>', ''),
(5, 'Header Text', '', '343435556', ''),
(6, 'Giới thiệu', 'Introduction', 'Team Giáng Son chào đón cố vấn âm nhạc là nhạc sĩ Dương Khắc Linh. HLV Giáng Son đưa ra chủ đề Tình yêu và thiên nhiên để 7 thí sinh sáng tác. ', '');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `sum` text NOT NULL,
  `content` longtext NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL,
  `e_title` text NOT NULL,
  `e_sum` text NOT NULL,
  `e_content` longtext NOT NULL,
  `e_meta_keyword` text NOT NULL,
  `e_meta_description` text NOT NULL,
  `pId` int(11) DEFAULT NULL,
  `maps` text NOT NULL,
  `city` int(11) NOT NULL,
  `district` int(11) NOT NULL,
  `img` text NOT NULL,
  `date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `home` tinyint(4) NOT NULL DEFAULT '0',
  `ind` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `title`, `sum`, `content`, `meta_keyword`, `meta_description`, `e_title`, `e_sum`, `e_content`, `e_meta_keyword`, `e_meta_description`, `pId`, `maps`, `city`, `district`, `img`, `date`, `active`, `home`, `ind`) VALUES
(2, 'DỊCH VỤ CỦA TBC444', 'Trump và vợ con đi lễ nhà thờ sáng ngày nhậm chức LIVE | Trump và vợ con đi lễ nhà thờ sáng ngày nhậm chức Hàng nghìn người xếp hàng từ mờ sáng tại các điểm kiểm tra an ninh ở thủ đô Washington để vào khu vực Donald Trump tuyên thệ nhậm chức. Ông Trump đăng Twitter từ 4h31 sáng rồi cùng vợ con đi lễ nhà thờ.', '<div><span style="font-size:16px"><span style="font-family:arial,helvetica,sans-serif">- Cung cấp tất các các thiết bị dung tròng nghành công nghiệp<br />\r\n- Chuyển đổi công nghệ,cải tạo nhà xưởng<br />\r\n- Hỗ trợ kỹ thuật và lắp đặt hệ thống,dây chuyền sản xuất tự động,<br />\r\n- Thiết kế và thi công các loại tủ điện điều khiển và tủ động lực.<br />\r\n- Bảo dưỡng trang thiết bị công nghiệp&hellip;.</span></span></div>\r\n&nbsp;\r\n\r\n<div style="text-align: center;"><span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px"><img alt="" src="/file/ckfinder/userfiles/images/5.png" style="height:525px; width:554px" /></span></span></div>\r\n\r\n<div style="text-align: center;"><span style="color:#FF8C00"><strong>THAI BINH AUTOMATION TECHNOLOGY COMPANY LIMITED<br />\r\n&nbsp;&nbsp;SYSTEM DESIGN &amp; PANEN BUIDING</strong></span></div>\r\n\r\n<div style="text-align: center;">&nbsp;</div>\r\n', 'DỊCH VỤ CỦA TBC', 'DỊCH VỤ CỦA TBC', '', '', '', '', '', 0, '', 0, 0, '1484923606bo-suu-tap-1_05.jpg', '2016-11-23', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `e_title` text NOT NULL,
  `sum` text NOT NULL,
  `e_sum` text NOT NULL,
  `img` varchar(255) NOT NULL,
  `lnk` text NOT NULL,
  `e_lnk` text NOT NULL,
  `ind` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `title`, `e_title`, `sum`, `e_sum`, `img`, `lnk`, `e_lnk`, `ind`, `active`) VALUES
(7, '', '', '', '', '1485062988background.jpg', '', '', 1, 1),
(8, '', '', '', '', 'background.jpg', '', '', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `sum` text NOT NULL,
  `content` longtext NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL,
  `e_title` text NOT NULL,
  `e_sum` text NOT NULL,
  `e_content` longtext NOT NULL,
  `e_meta_keyword` text NOT NULL,
  `e_meta_description` text NOT NULL,
  `pId` int(11) NOT NULL,
  `video` varchar(200) DEFAULT NULL,
  `img` text NOT NULL,
  `active` tinyint(1) NOT NULL,
  `home` tinyint(4) NOT NULL DEFAULT '0',
  `ind` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `title`, `sum`, `content`, `meta_keyword`, `meta_description`, `e_title`, `e_sum`, `e_content`, `e_meta_keyword`, `e_meta_description`, `pId`, `video`, `img`, `active`, `home`, `ind`) VALUES
(1, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '', '', '', 1, 'Z8av3gSa6YQ', '1484925250Untitled-1.png', 1, 0, 1),
(2, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '', '', '', 1, 'Z8av3gSa6YQ', '1484925250Untitled-1.png', 1, 0, 1),
(3, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '', '', '', 1, 'Z8av3gSa6YQ', '1484925250Untitled-1.png', 1, 0, 1),
(4, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '', '', '', 1, 'Z8av3gSa6YQ', '1484925250Untitled-1.png', 1, 0, 1),
(5, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '', '', '', 1, 'Z8av3gSa6YQ', '1484925250Untitled-1.png', 1, 0, 1),
(6, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '', '', '', 1, 'Z8av3gSa6YQ', '1484925250Untitled-1.png', 1, 0, 1),
(7, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '', '', '', 1, 'Z8av3gSa6YQ', '1484925250Untitled-1.png', 1, 0, 1),
(8, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '', '', '', 1, 'Z8av3gSa6YQ', '1484925250Untitled-1.png', 1, 0, 1),
(9, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '', '', '', 1, 'Z8av3gSa6YQ', '1484925250Untitled-1.png', 1, 0, 1),
(10, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '', '', '', 1, 'Z8av3gSa6YQ', '1484925250Untitled-1.png', 1, 0, 1),
(11, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '', '', '', 1, 'Z8av3gSa6YQ', '1484925250Untitled-1.png', 1, 0, 1),
(12, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '', '', '', 1, 'Z8av3gSa6YQ', '1484925250Untitled-1.png', 1, 0, 1),
(13, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '', '', '', 1, 'Z8av3gSa6YQ', '1484925250Untitled-1.png', 1, 0, 1),
(14, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '', '', '', 1, 'Z8av3gSa6YQ', '1484925250Untitled-1.png', 1, 0, 1),
(15, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '', '', '', 1, 'Z8av3gSa6YQ', '1484925250Untitled-1.png', 1, 0, 1),
(16, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '', '', '', 1, 'Z8av3gSa6YQ', '1484925250Untitled-1.png', 1, 0, 1),
(17, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '', '', '', 1, 'Z8av3gSa6YQ', '1484925250Untitled-1.png', 1, 0, 1),
(18, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '', '', '', 1, 'Z8av3gSa6YQ', '1484925250Untitled-1.png', 1, 0, 1),
(19, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '', '', '', 1, 'Z8av3gSa6YQ', '1484925250Untitled-1.png', 1, 0, 1),
(20, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '', '', '', 1, 'Z8av3gSa6YQ', '1484925250Untitled-1.png', 1, 0, 1),
(21, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '', '', '', 1, 'Z8av3gSa6YQ', '1484925250Untitled-1.png', 1, 0, 1),
(22, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '', '', '', 1, 'Z8av3gSa6YQ', '1484925250Untitled-1.png', 1, 0, 1),
(23, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '', '', '', 1, 'Z8av3gSa6YQ', '1484925250Untitled-1.png', 1, 0, 1),
(24, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '', '', '', 1, 'Z8av3gSa6YQ', '1484925250Untitled-1.png', 1, 0, 1),
(25, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '', '', '', 1, 'Z8av3gSa6YQ', '1484925250Untitled-1.png', 1, 0, 1),
(26, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '', '', '', 1, 'Z8av3gSa6YQ', '1484925250Untitled-1.png', 1, 0, 1),
(27, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '', '', '', 1, 'Z8av3gSa6YQ', '1484925250Untitled-1.png', 1, 0, 1),
(28, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '', '', '', 1, 'Z8av3gSa6YQ', '1484925250Untitled-1.png', 1, 0, 1),
(29, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '', '', '', 1, 'Z8av3gSa6YQ', '1484925250Untitled-1.png', 1, 0, 1),
(30, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '', '', '', 1, 'Z8av3gSa6YQ', '1484925250Untitled-1.png', 1, 0, 1),
(31, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '', '', '', 1, 'Z8av3gSa6YQ', '1484925250Untitled-1.png', 1, 0, 1),
(32, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '', '', '', 1, 'Z8av3gSa6YQ', '1484925250Untitled-1.png', 1, 0, 1),
(33, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '', '', '', 1, 'Z8av3gSa6YQ', '1484925250Untitled-1.png', 1, 0, 1),
(34, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '', '', '', 1, 'Z8av3gSa6YQ', '1484925250Untitled-1.png', 1, 0, 1),
(35, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '', '', '', 1, 'Z8av3gSa6YQ', '1484925250Untitled-1.png', 1, 0, 1),
(36, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '', '', '', 1, 'Z8av3gSa6YQ', '1484925250Untitled-1.png', 1, 0, 1),
(37, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '', '', '', 1, 'Z8av3gSa6YQ', '1484925250Untitled-1.png', 1, 0, 1),
(38, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '', '', '', 1, 'Z8av3gSa6YQ', '1484925250Untitled-1.png', 1, 0, 1),
(39, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '', '', '', 1, 'Z8av3gSa6YQ', '1484925250Untitled-1.png', 1, 0, 1),
(40, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '', '', '', 1, 'Z8av3gSa6YQ', '1484925250Untitled-1.png', 1, 0, 1),
(41, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '', '', '', 1, 'Z8av3gSa6YQ', '1484925250Untitled-1.png', 1, 0, 1),
(42, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '', '', '', 1, 'Z8av3gSa6YQ', '1484925250Untitled-1.png', 1, 0, 1),
(43, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '', '', '', 1, 'Z8av3gSa6YQ', '1484925250Untitled-1.png', 1, 0, 1),
(44, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '', '', '', 1, 'Z8av3gSa6YQ', '1484925250Untitled-1.png', 1, 0, 1),
(45, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '', '', '', 1, 'Z8av3gSa6YQ', '1484925250Untitled-1.png', 1, 0, 1),
(46, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '', '', '', 1, 'Z8av3gSa6YQ', '1484925250Untitled-1.png', 1, 0, 1),
(47, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '', '', '', 1, 'Z8av3gSa6YQ', '1484925250Untitled-1.png', 1, 0, 1),
(48, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '', '', '', 1, 'Z8av3gSa6YQ', '1484925250Untitled-1.png', 1, 0, 1),
(49, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '', '', '', 1, 'Z8av3gSa6YQ', '1484925250Untitled-1.png', 1, 0, 1),
(50, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '', '', '', 1, 'Z8av3gSa6YQ', '1484925250Untitled-1.png', 1, 0, 1),
(51, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '', '', '', 1, 'Z8av3gSa6YQ', '1484925250Untitled-1.png', 1, 0, 1),
(52, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '', '', '', 1, 'Z8av3gSa6YQ', '1484925250Untitled-1.png', 1, 0, 1),
(53, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '', '', '', 1, 'Z8av3gSa6YQ', '1484925250Untitled-1.png', 1, 0, 1),
(54, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '', '', '', 1, 'Z8av3gSa6YQ', '1484925250Untitled-1.png', 1, 0, 1),
(55, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '', '', '', 1, 'Z8av3gSa6YQ', '1484925250Untitled-1.png', 1, 0, 1),
(56, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '', '', '', 1, 'Z8av3gSa6YQ', '1484925250Untitled-1.png', 1, 0, 1),
(57, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '', '', '', 1, 'Z8av3gSa6YQ', '1484925250Untitled-1.png', 1, 0, 1),
(58, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '', '', '', 1, 'Z8av3gSa6YQ', '1484925250Untitled-1.png', 1, 0, 1),
(59, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '', '', '', 1, 'Z8av3gSa6YQ', '1484925250Untitled-1.png', 1, 0, 1),
(60, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '', '', '', 1, 'Z8av3gSa6YQ', '1484925250Untitled-1.png', 1, 0, 1),
(61, 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', '', 'Tuần Lễ Làm Đẹp', 'Tuần Lễ Làm Đẹp', 'Ngại nổ gas, vợ sếp chuộng bếp điện từ hồng ngoại', 'Tiết kiệm điện, không tốn chi phí gas, an toàn trong sử dụng lại nấu thức ăn ngon... bếp điện tử hồng ngoại hiện được nhiều bà nội trợ chuộng dù giá bán khá cao: ít nhất trên 20 triệu đồng một chiếc.', '', '', '', 1, 'Z8av3gSa6YQ', '1484925250Untitled-1.png', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `video_cate`
--

CREATE TABLE `video_cate` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `sum` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL,
  `e_title` text NOT NULL,
  `e_sum` text NOT NULL,
  `e_meta_keyword` text NOT NULL,
  `e_meta_description` text NOT NULL,
  `img` text NOT NULL,
  `icon` text NOT NULL,
  `pId` int(11) NOT NULL,
  `lev` int(11) NOT NULL,
  `ind` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `video_cate`
--

INSERT INTO `video_cate` (`id`, `title`, `sum`, `meta_keyword`, `meta_description`, `e_title`, `e_sum`, `e_meta_keyword`, `e_meta_description`, `img`, `icon`, `pId`, `lev`, `ind`, `active`) VALUES
(1, 'BIẾN TẦN', '', 'LED Par Lights', 'LED Par Lights', 'Electrical Parts', '', 'Electrical Parts', 'Electrical Parts', '', '', 0, 1, 1, 1),
(2, 'SERVO', '', 'LED Moving Head', 'LED Moving Head', 'Auto Parts', '', 'Auto Parts', 'Auto Parts', '', '', 0, 1, 2, 1),
(3, 'ĐỘNG CƠ ', '', 'Moving Head light', 'Moving Head light', 'Mechanical Heat Sink', '', 'Mechanical Heat Sink', 'Mechanical Heat Sink', '', '', 1, 2, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vs_counter`
--

CREATE TABLE `vs_counter` (
  `hit_counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vs_counter`
--

INSERT INTO `vs_counter` (`hit_counter`) VALUES
(194);

-- --------------------------------------------------------

--
-- Table structure for table `vs_detail`
--

CREATE TABLE `vs_detail` (
  `id` int(11) NOT NULL,
  `vs_ip` varchar(255) NOT NULL,
  `vs_city` varchar(255) NOT NULL,
  `vs_browser` varchar(255) NOT NULL,
  `vs_os` varchar(255) NOT NULL,
  `vs_id` varchar(255) NOT NULL,
  `vs_flag` tinyint(1) NOT NULL,
  `dates` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vs_detail`
--

INSERT INTO `vs_detail` (`id`, `vs_ip`, `vs_city`, `vs_browser`, `vs_os`, `vs_id`, `vs_flag`, `dates`) VALUES
(197, 'unknown', 'unknown', 'Chrome', 'Windows 10', '4ipqcqne3qaqogv17ujccl9va1', 0, '2017-01-21 16:09:10'),
(198, 'unknown', 'unknown', 'Chrome', 'Windows 10', 'c2ok266i5fs6ngfg2233onpdg0', 0, '2017-01-22 00:25:38'),
(199, 'unknown', 'unknown', 'Chrome', 'Windows 10', 'ohuu65v57rdg73prqgpq87mkt7', 0, '2017-01-22 03:30:32'),
(200, 'unknown', 'unknown', 'Chrome', 'Windows 10', 'oqhoo2hi4cnf4u57rdi97bcr03', 0, '2017-01-22 07:35:52'),
(201, 'unknown', 'unknown', 'Chrome', 'Windows 10', 'mh5mmn4dn9o15jobv9emvoo5g0', 1, '2017-01-22 08:04:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ad_user`
--
ALTER TABLE `ad_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `basic_config`
--
ALTER TABLE `basic_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pId` (`pId`);

--
-- Indexes for table `news_cate`
--
ALTER TABLE `news_cate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partner`
--
ALTER TABLE `partner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pId` (`pId`);

--
-- Indexes for table `product_cate`
--
ALTER TABLE `product_cate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_image`
--
ALTER TABLE `product_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pId` (`pId`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pId` (`pId`);

--
-- Indexes for table `qtext`
--
ALTER TABLE `qtext`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pId` (`pId`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pId` (`pId`);

--
-- Indexes for table `video_cate`
--
ALTER TABLE `video_cate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vs_detail`
--
ALTER TABLE `vs_detail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ad_user`
--
ALTER TABLE `ad_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `basic_config`
--
ALTER TABLE `basic_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `news_cate`
--
ALTER TABLE `news_cate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `partner`
--
ALTER TABLE `partner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;
--
-- AUTO_INCREMENT for table `product_cate`
--
ALTER TABLE `product_cate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `product_image`
--
ALTER TABLE `product_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;
--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `promotion`
--
ALTER TABLE `promotion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `qtext`
--
ALTER TABLE `qtext`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `video_cate`
--
ALTER TABLE `video_cate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `vs_detail`
--
ALTER TABLE `vs_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`pId`) REFERENCES `news_cate` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_image`
--
ALTER TABLE `product_image`
  ADD CONSTRAINT `product_image_ibfk_1` FOREIGN KEY (`pId`) REFERENCES `product` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
