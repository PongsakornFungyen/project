-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2023 at 09:34 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coding_mysqli_crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `uploaded_on` datetime NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `file_name`, `uploaded_on`, `status`) VALUES
(1, 'BBl-Screenshot-1669994093104.jpeg', '2023-01-20 15:18:45', '1'),
(11, '01_1.jpg', '2023-01-22 20:16:57', '1');

-- --------------------------------------------------------

--
-- Table structure for table `images2`
--

CREATE TABLE `images2` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `uploaded_on` datetime NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `images2`
--

INSERT INTO `images2` (`id`, `file_name`, `uploaded_on`, `status`) VALUES
(1, 'BBl-Screenshot-1669994093104.jpeg', '2023-01-20 15:18:45', '1'),
(2, '46522.jpg', '2023-01-20 20:05:48', '1');

-- --------------------------------------------------------

--
-- Table structure for table `img1`
--

CREATE TABLE `img1` (
  `c_id` int(11) NOT NULL,
  `c_prefix` varchar(50) NOT NULL,
  `c_firstname` varchar(255) NOT NULL,
  `c_lastname` varchar(255) NOT NULL,
  `c_mobile` varchar(32) NOT NULL,
  `c_image` varchar(255) NOT NULL,
  `c_status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `img1`
--

INSERT INTO `img1` (`c_id`, `c_prefix`, `c_firstname`, `c_lastname`, `c_mobile`, `c_image`, `c_status`) VALUES
(1, 'นาย', 'พงศกร', 'ฟังเย็น', '0657145367', '20230226164528_95293.jpeg', 1),
(2, 'นาย', 'รักมั่น', 'รักยืน', '0657145367', '20230227161042_04462.jpeg', 1),
(3, 'นาย', 'พงศกร', 'ฟังเย็น', '0657145367', '20230227161154_51505.jpeg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `img2`
--

CREATE TABLE `img2` (
  `c_id` int(11) NOT NULL,
  `c_prefix` varchar(50) NOT NULL,
  `c_firstname` varchar(255) NOT NULL,
  `c_lastname` varchar(255) NOT NULL,
  `c_mobile` varchar(32) NOT NULL,
  `c_image` varchar(255) NOT NULL,
  `c_status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `img2`
--

INSERT INTO `img2` (`c_id`, `c_prefix`, `c_firstname`, `c_lastname`, `c_mobile`, `c_image`, `c_status`) VALUES
(1, 'นาย', 'พงศกร', 'ฟังเย็น', '0657145367', '20230226100607_22400.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

CREATE TABLE `price` (
  `price_id` int(3) NOT NULL,
  `price_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `price`
--

INSERT INTO `price` (`price_id`, `price_name`) VALUES
(1, 'ธรรมดา'),
(2, 'พิเศษ');

-- --------------------------------------------------------

--
-- Table structure for table `products7`
--

CREATE TABLE `products7` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `price` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `type_id` int(3) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `products7`
--

INSERT INTO `products7` (`id`, `name`, `detail`, `price`, `amount`, `type_id`, `created_at`, `updated_at`) VALUES
(1, 'ตำไทยไข่เค็ม', '0657145367 เอิร์ธร้านส้มตำป้าเชียร ขอแซ่บๆเอารสหวาน ส่งเวลา11.00-11.30น. นะครับ', 60, 9, 1, '2023-01-15 20:45:57', '2023-01-15 20:49:09'),
(2, 'ส้มตำไทยปู', '0657145367 เอิร์ธร้านส้มตำป้าเชียร ขอแซ่บๆเอารสหวาน ส่งเวลา11.00-11.30น. นะครับ	', 60, 10, 1, '2023-01-15 21:03:54', '2023-01-15 21:03:54');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `c_id` int(11) NOT NULL,
  `c_prefix` varchar(50) NOT NULL,
  `c_firstname` varchar(255) NOT NULL,
  `c_lastname` varchar(255) NOT NULL,
  `c_mobile` varchar(32) NOT NULL,
  `c_birthdate` varchar(255) NOT NULL,
  `c_detail` text NOT NULL,
  `c_image` varchar(255) NOT NULL,
  `c_status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_menu`
--

CREATE TABLE `tb_menu` (
  `pro_id` int(6) UNSIGNED ZEROFILL NOT NULL,
  `pro_name` varchar(100) NOT NULL,
  `type_id` int(3) NOT NULL,
  `price_id` int(3) NOT NULL,
  `price` float NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_menu`
--

INSERT INTO `tb_menu` (`pro_id`, `pro_name`, `type_id`, `price_id`, `price`, `img`) VALUES
(000001, 'ส้มตำไทยธรรมดา', 1, 1, 50, 'menu-1.jpg'),
(000002, 'ส้มตำไทยปู', 1, 1, 50, 'menu-2.jpg'),
(000003, 'ส้มตำไทยไข่เค็ม', 1, 1, 60, 'menu-3.png'),
(000004, 'ส้มตำโคราช', 1, 1, 50, 'menu-4.jpg'),
(000005, 'ส้มตำปูปลาร้า', 1, 1, 40, 'menu-5.jpg'),
(000006, 'ส้มตำปูปลาร้าหอยดอง', 1, 1, 50, 'menu-6.jpg'),
(000007, 'ส้มตำไทยหอยดอง', 1, 1, 50, 'menu-7.jpg'),
(000008, 'ส้มตำปูม้า', 1, 1, 80, 'menu-8.jpg'),
(000009, 'ส้มตำปูจืด', 1, 1, 80, 'menu-9.jpg'),
(000010, 'ส้มตำกุ้งสด', 1, 1, 80, 'menu-10.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_menu1`
--

CREATE TABLE `tb_menu1` (
  `pro_id` int(6) UNSIGNED ZEROFILL NOT NULL,
  `pro_name` varchar(100) NOT NULL,
  `type_id` int(3) NOT NULL,
  `price_id` int(3) NOT NULL,
  `price` float NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_menu1`
--

INSERT INTO `tb_menu1` (`pro_id`, `pro_name`, `type_id`, `price_id`, `price`, `img`) VALUES
(000001, 'น่องไก่ทอด', 2, 1, 20, 'menu1-1.jpg'),
(000002, 'สะโพกไก่ทอด', 2, 1, 30, 'menu1-2.jpg'),
(000003, 'ปีกไก่ทอด', 2, 1, 20, 'menu1-3.jpg'),
(000004, 'คอไก่ทอด', 2, 1, 15, 'menu1-4.jpg'),
(000005, 'โครงไก่ทอด', 2, 1, 15, 'menu1-5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_menu2`
--

CREATE TABLE `tb_menu2` (
  `pro_id` int(6) UNSIGNED ZEROFILL NOT NULL,
  `pro_name` varchar(100) NOT NULL,
  `type_id` int(3) NOT NULL,
  `price_id` int(3) NOT NULL,
  `price` float NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_menu2`
--

INSERT INTO `tb_menu2` (`pro_id`, `pro_name`, `type_id`, `price_id`, `price`, `img`) VALUES
(000001, 'น้ำตกหมู', 3, 1, 60, 'menu2-1.jpg'),
(000002, 'ยำไก่แซ่บ', 3, 1, 60, 'menu2-2.jpg'),
(000003, 'ลาบหมู', 3, 1, 60, 'menu2-3.jpg'),
(000004, 'ตับหวาน', 3, 1, 60, 'menu2-4.jpg'),
(000005, 'น้ำตกไก่', 3, 1, 60, 'menu2-5.jpg\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tb_menu3`
--

CREATE TABLE `tb_menu3` (
  `pro_id` int(6) UNSIGNED ZEROFILL NOT NULL,
  `pro_name` varchar(100) NOT NULL,
  `type_id` int(3) NOT NULL,
  `price_id` int(3) NOT NULL,
  `price` float NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_menu3`
--

INSERT INTO `tb_menu3` (`pro_id`, `pro_name`, `type_id`, `price_id`, `price`, `img`) VALUES
(000001, 'ตำแตงไทย', 5, 1, 50, 'menu3-1.jpg'),
(000002, 'ตำแตงปูปลาร้า', 5, 1, 40, 'menu3-2.jpg'),
(000003, 'ตำแตงกุ้งสด', 5, 1, 80, 'menu3-3.jpg'),
(000004, 'ตำถั่วปูปลาร้า', 5, 1, 40, 'menu3-4.jpg'),
(000005, 'ตำถั่วปูม้า', 5, 1, 80, 'menu3-5.jpg'),
(000006, 'ตำถั่วไทย', 5, 1, 50, 'menu3-6.jpg'),
(000007, 'ตำมะม่วง', 5, 1, 50, 'menu3-7.jpg'),
(000008, 'ตำมะม่วงปูเค็ม', 5, 1, 50, 'menu3-8.jpg'),
(000009, 'ตำมะม่วงกุ้งสด', 1, 1, 80, 'menu3-9.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_menu4`
--

CREATE TABLE `tb_menu4` (
  `pro_id` int(6) UNSIGNED ZEROFILL NOT NULL,
  `pro_name` varchar(100) NOT NULL,
  `type_id` int(3) NOT NULL,
  `price_id` int(3) NOT NULL,
  `price` float NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_menu4`
--

INSERT INTO `tb_menu4` (`pro_id`, `pro_name`, `type_id`, `price_id`, `price`, `img`) VALUES
(000001, 'ซุบหน่อไม้', 4, 1, 40, 'menu4-1.jpg'),
(000002, 'ตำหน่อไม้', 4, 1, 50, 'menu4-2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_menu5`
--

CREATE TABLE `tb_menu5` (
  `pro_id` int(6) UNSIGNED ZEROFILL NOT NULL,
  `pro_name` varchar(100) NOT NULL,
  `type_id` int(3) NOT NULL,
  `price_id` int(3) NOT NULL,
  `price` float NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_menu5`
--

INSERT INTO `tb_menu5` (`pro_id`, `pro_name`, `type_id`, `price_id`, `price`, `img`) VALUES
(000001, 'ข้าวเหนียว', 6, 1, 10, 'menu5-1.jpg'),
(000002, 'ขนมจีน', 6, 1, 10, 'menu5-2.jpg'),
(000003, 'ตำซั่วไทย', 6, 1, 50, 'menu5-3.jpg'),
(000004, 'ตำซั่วปูปลาร้า', 6, 1, 50, 'menu5-4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_menu6`
--

CREATE TABLE `tb_menu6` (
  `pro_id` int(6) UNSIGNED ZEROFILL NOT NULL,
  `pro_name` varchar(100) NOT NULL,
  `type_id` int(3) NOT NULL,
  `price_id` int(3) NOT NULL,
  `price` float NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_menu6`
--

INSERT INTO `tb_menu6` (`pro_id`, `pro_name`, `type_id`, `price_id`, `price`, `img`) VALUES
(000001, 'เหลาปูม้า', 7, 1, 80, 'menu6-1.jpg'),
(000002, 'เหลากุ้งสด', 7, 1, 80, 'menu6-2.jpg'),
(000003, 'เหลาหอยแครง', 7, 1, 80, 'menu6-4.jpg'),
(000004, 'เหลารวมมิตร', 7, 1, 80, 'menu6-3.jpg'),
(000011, 'เหลาหมูยอ', 7, 1, 80, 'menu6-5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_menu7`
--

CREATE TABLE `tb_menu7` (
  `pro_id` int(6) UNSIGNED ZEROFILL NOT NULL,
  `pro_name` varchar(100) NOT NULL,
  `type_id` int(3) NOT NULL,
  `price_id` int(3) NOT NULL,
  `price` float NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_menu7`
--

INSERT INTO `tb_menu7` (`pro_id`, `pro_name`, `type_id`, `price_id`, `price`, `img`) VALUES
(000001, 'ส้มตำปูม้า', 1, 2, 150, 'menu-8.jpg'),
(000002, 'ส้มตำกุ้งสด', 1, 2, 150, 'menu-10.jpg'),
(000003, 'เหลาปูม้าเพิ่มปูม้า', 7, 2, 150, 'menu6-1.jpg'),
(000004, 'เหลากุ้งสดเพิ่มกุ้ง', 7, 2, 150, 'menu6-2.jpg'),
(000005, 'สะโพกไก่ทอด', 2, 1, 30, 'menu1-2.jpg'),
(000006, 'น้ำตกคอหมู', 3, 1, 60, 'menu2-1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_order`
--

CREATE TABLE `tb_order` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `price` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `price_id` int(3) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_order`
--

INSERT INTO `tb_order` (`id`, `name`, `detail`, `price`, `amount`, `price_id`, `created_at`, `updated_at`) VALUES
(1, 'ส้มตำไทย', 'จากเอิร์ธมักกะสัน 0657145367 เอาพริก2เม็ดพอนะป้าไม่เอาเค็ม', 60, 10, 1, '2023-02-27 21:42:47', '2023-02-27 21:42:47');

-- --------------------------------------------------------

--
-- Table structure for table `tb_order1`
--

CREATE TABLE `tb_order1` (
  `id` int(11) NOT NULL,
  `name1` varchar(255) NOT NULL,
  `detail1` text NOT NULL,
  `price1` int(11) NOT NULL,
  `amount1` int(11) NOT NULL,
  `price_id` int(3) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_order1`
--

INSERT INTO `tb_order1` (`id`, `name1`, `detail1`, `price1`, `amount1`, `price_id`, `created_at`, `updated_at`) VALUES
(1, 'สะโพกไก่ทอด', 'จากเอิร์ธมักกะสัน 0657145367 ขอน้ำจิ้มหวาน', 30, 10, 1, '2023-02-27 21:44:23', '2023-02-27 21:44:23');

-- --------------------------------------------------------

--
-- Table structure for table `tb_order2`
--

CREATE TABLE `tb_order2` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `price` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `price_id` int(3) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_order2`
--

INSERT INTO `tb_order2` (`id`, `name`, `detail`, `price`, `amount`, `price_id`, `created_at`, `updated_at`) VALUES
(1, 'น้ำตกหมู', 'จากเอิร์ธมักกะสัน 0657145367 เผ็ดน้อยเปรี้ยวนำ', 80, 5, 2, '2023-02-27 21:45:59', '2023-02-27 21:45:59');

-- --------------------------------------------------------

--
-- Table structure for table `tb_order3`
--

CREATE TABLE `tb_order3` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `price` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `price_id` int(3) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_order3`
--

INSERT INTO `tb_order3` (`id`, `name`, `detail`, `price`, `amount`, `price_id`, `created_at`, `updated_at`) VALUES
(1, 'ตำถั่วปูปลาร้า', '0657145367 เอิร์ธร้านส้มตำป้าเชียร ขอแซ่บๆเอารสหวาน', 40, 4, 1, '2023-02-27 21:47:10', '2023-02-27 21:47:10');

-- --------------------------------------------------------

--
-- Table structure for table `tb_order4`
--

CREATE TABLE `tb_order4` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `price` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `price_id` int(3) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_order4`
--

INSERT INTO `tb_order4` (`id`, `name`, `detail`, `price`, `amount`, `price_id`, `created_at`, `updated_at`) VALUES
(1, 'ซุปหน่อไม้', '0657145367 เอิร์ธร้านส้มตำป้าเชียร ไม่เอาเผ็ด เพิ่มหน่อไม้', 40, 5, 2, '2023-02-27 21:48:33', '2023-02-27 21:48:33');

-- --------------------------------------------------------

--
-- Table structure for table `tb_order5`
--

CREATE TABLE `tb_order5` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `price` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `price_id` int(3) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_order5`
--

INSERT INTO `tb_order5` (`id`, `name`, `detail`, `price`, `amount`, `price_id`, `created_at`, `updated_at`) VALUES
(1, 'ตำซั่วไทย', '0657145367 เอิร์ธร้านส้มตำป้าเชียร ขอแซ่บๆพริก5เม็ด', 50, 2, 1, '2023-02-27 21:49:39', '2023-02-27 21:49:39');

-- --------------------------------------------------------

--
-- Table structure for table `tb_order6`
--

CREATE TABLE `tb_order6` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `price` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `price_id` int(3) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tb_order6`
--

INSERT INTO `tb_order6` (`id`, `name`, `detail`, `price`, `amount`, `price_id`, `created_at`, `updated_at`) VALUES
(1, 'เหลาปูม้า', '0657145367 เอิร์ธร้านส้มตำป้าเชียร ขอรสไม่หวาน', 150, 5, 2, '2023-02-27 21:50:47', '2023-02-27 21:51:26');

-- --------------------------------------------------------

--
-- Table structure for table `tb_order7`
--

CREATE TABLE `tb_order7` (
  `id` int(11) NOT NULL,
  `pro_id` int(6) UNSIGNED ZEROFILL NOT NULL,
  `detail` text NOT NULL,
  `price` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `price_id` int(3) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `type1`
--

CREATE TABLE `type1` (
  `type_id` int(3) NOT NULL,
  `type_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `type1`
--

INSERT INTO `type1` (`type_id`, `type_name`) VALUES
(1, 'ส้มตำ'),
(2, 'ไก่ทอด'),
(3, 'ลาบน้ำ,ตกตับ,หวาน'),
(4, 'หน่อไม้'),
(5, 'ตำแตง,มะม่วง,ถั่วฝักยาว'),
(6, 'ขนมจีนข้าวเหนียว'),
(7, 'เหลา');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `nickname` varchar(100) NOT NULL,
  `num` varchar(32) NOT NULL,
  `role` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `firstname`, `lastname`, `nickname`, `num`, `role`) VALUES
(1, 'เอิร์ธ', '1a380bc437cc316404915e92ed9a7b4d', 'พงศกร', 'ฟังเย็น', 'เอิร์ธ', '0657145367', 'm'),
(2, 'admin01', '1a380bc437cc316404915e92ed9a7b4d', 'พงศกร', 'ฟังเย็น', 'เอิร์ธ', '0657145367', 'a'),
(3, 'admin02', '1a380bc437cc316404915e92ed9a7b4d', 'จงรัก', 'ฟังเย็น', 'เอิร์ธ', '0657145367', 'a'),
(4, 'admin03', '1a380bc437cc316404915e92ed9a7b4d', 'พงศกร', 'ฟังเย็น', 'เอิร์ธ', '0657145367', 'a'),
(5, 'ป๋อง', '25f9e794323b453885f5181f1b624d0b', 'อนุสรณ์', 'ฟังเย็น', 'ป๋อง', '0935591422', 'a');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images2`
--
ALTER TABLE `images2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `img1`
--
ALTER TABLE `img1`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `img2`
--
ALTER TABLE `img2`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`price_id`);

--
-- Indexes for table `products7`
--
ALTER TABLE `products7`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `tb_menu`
--
ALTER TABLE `tb_menu`
  ADD PRIMARY KEY (`pro_id`);

--
-- Indexes for table `tb_menu1`
--
ALTER TABLE `tb_menu1`
  ADD PRIMARY KEY (`pro_id`);

--
-- Indexes for table `tb_menu2`
--
ALTER TABLE `tb_menu2`
  ADD PRIMARY KEY (`pro_id`);

--
-- Indexes for table `tb_menu3`
--
ALTER TABLE `tb_menu3`
  ADD PRIMARY KEY (`pro_id`);

--
-- Indexes for table `tb_menu4`
--
ALTER TABLE `tb_menu4`
  ADD PRIMARY KEY (`pro_id`);

--
-- Indexes for table `tb_menu5`
--
ALTER TABLE `tb_menu5`
  ADD PRIMARY KEY (`pro_id`);

--
-- Indexes for table `tb_menu6`
--
ALTER TABLE `tb_menu6`
  ADD PRIMARY KEY (`pro_id`);

--
-- Indexes for table `tb_menu7`
--
ALTER TABLE `tb_menu7`
  ADD PRIMARY KEY (`pro_id`);

--
-- Indexes for table `tb_order`
--
ALTER TABLE `tb_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_order1`
--
ALTER TABLE `tb_order1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_order2`
--
ALTER TABLE `tb_order2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_order3`
--
ALTER TABLE `tb_order3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_order4`
--
ALTER TABLE `tb_order4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_order5`
--
ALTER TABLE `tb_order5`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_order6`
--
ALTER TABLE `tb_order6`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_order7`
--
ALTER TABLE `tb_order7`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type1`
--
ALTER TABLE `type1`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `images2`
--
ALTER TABLE `images2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `img1`
--
ALTER TABLE `img1`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `img2`
--
ALTER TABLE `img2`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `price`
--
ALTER TABLE `price`
  MODIFY `price_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products7`
--
ALTER TABLE `products7`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_menu`
--
ALTER TABLE `tb_menu`
  MODIFY `pro_id` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb_menu1`
--
ALTER TABLE `tb_menu1`
  MODIFY `pro_id` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_menu2`
--
ALTER TABLE `tb_menu2`
  MODIFY `pro_id` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_menu3`
--
ALTER TABLE `tb_menu3`
  MODIFY `pro_id` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_menu4`
--
ALTER TABLE `tb_menu4`
  MODIFY `pro_id` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_menu5`
--
ALTER TABLE `tb_menu5`
  MODIFY `pro_id` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_menu6`
--
ALTER TABLE `tb_menu6`
  MODIFY `pro_id` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb_menu7`
--
ALTER TABLE `tb_menu7`
  MODIFY `pro_id` int(6) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_order`
--
ALTER TABLE `tb_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_order1`
--
ALTER TABLE `tb_order1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_order2`
--
ALTER TABLE `tb_order2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_order3`
--
ALTER TABLE `tb_order3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_order4`
--
ALTER TABLE `tb_order4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_order5`
--
ALTER TABLE `tb_order5`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_order6`
--
ALTER TABLE `tb_order6`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_order7`
--
ALTER TABLE `tb_order7`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `type1`
--
ALTER TABLE `type1`
  MODIFY `type_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
