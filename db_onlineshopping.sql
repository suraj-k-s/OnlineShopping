-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2023 at 11:48 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_onlineshopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_name`, `admin_email`, `admin_password`) VALUES
(1, 'Bony', 'bony@gmail.com', 'bony@123');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_booking`
--

CREATE TABLE `tbl_booking` (
  `booking_id` int(11) NOT NULL,
  `booking_date` varchar(100) NOT NULL DEFAULT '',
  `booking_status` int(11) NOT NULL DEFAULT 0,
  `booking_amount` varchar(100) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_booking`
--

INSERT INTO `tbl_booking` (`booking_id`, `booking_date`, `booking_status`, `booking_amount`, `user_id`) VALUES
(4, '2023-03-30', 2, '200.00', 2),
(5, '2023-04-14', 2, '15000.00', 2),
(6, '2023-03-31', 1, '200', 2),
(7, '2023-03-31', 1, '200', 2),
(8, '', 0, '', 4),
(9, '2023-04-13', 1, '200', 2),
(10, '2023-04-14', 2, '15000', 2),
(11, '', 0, '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`brand_id`, `brand_name`) VALUES
(1, 'Bosh'),
(2, 'HiKOKI'),
(3, 'Dewalt'),
(4, 'Voltz'),
(5, 'Stihl'),
(6, 'Yato');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cart_id` int(11) NOT NULL,
  `cart_qty` int(11) NOT NULL DEFAULT 1,
  `cart_status` int(11) NOT NULL DEFAULT 0,
  `booking_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`cart_id`, `cart_qty`, `cart_status`, `booking_id`, `product_id`) VALUES
(4, 1, 4, 4, 2),
(5, 1, 3, 5, 2),
(6, 1, 1, 6, 2),
(7, 1, 1, 7, 2),
(8, 1, 0, 8, 2),
(9, 1, 1, 9, 2),
(10, 1, 4, 5, 5),
(11, 1, 2, 10, 5),
(12, 1, 0, 11, 7),
(13, 1, 0, 11, 6);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`) VALUES
(1, 'Saw & Chasers'),
(2, 'Cordless Power Tools'),
(3, 'Electric Hammer & Breakers'),
(4, 'Grinders & Vibrators'),
(5, 'Wrenches'),
(6, 'Drills'),
(7, 'Sanders & Polishers'),
(8, 'Cutters'),
(9, 'Speciality Tools'),
(10, 'Cleaning Tools');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_complaint`
--

CREATE TABLE `tbl_complaint` (
  `complaint_id` int(11) NOT NULL,
  `complaint_date` varchar(100) NOT NULL,
  `complaint_details` varchar(100) NOT NULL,
  `complaint_reply` varchar(100) NOT NULL DEFAULT 'Not Yet Replied',
  `complaint_status` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL,
  `complaint_reply_date` varchar(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_complaint`
--

INSERT INTO `tbl_complaint` (`complaint_id`, `complaint_date`, `complaint_details`, `complaint_reply`, `complaint_status`, `user_id`, `complaint_reply_date`) VALUES
(2, '2023-03-30', 'Bad', 'sorry', 1, 2, '2023-04-14'),
(3, '2023-03-31', 'Drilling Machine not working', 'Not Yet Replied', 0, 2, '0'),
(4, '2023-04-13', 'Drill is not working\r\n', 'We will check', 1, 4, '2023-04-14');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_district`
--

CREATE TABLE `tbl_district` (
  `district_id` int(11) NOT NULL,
  `district_name` varchar(100) NOT NULL,
  `state_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_district`
--

INSERT INTO `tbl_district` (`district_id`, `district_name`, `state_id`) VALUES
(1, 'Ernakulam', 0),
(2, 'Thiruvananthapuram', 0),
(3, 'Kottyam', 0),
(4, 'Thrissur', 0),
(5, 'Kozhikode', 0),
(6, 'Wayanad', 0),
(7, 'Kasargod', 0),
(8, 'Ernakulam', 1),
(9, 'Kottayam', 1),
(10, 'Thiruvananthapuram', 1),
(11, 'Banglore', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_offer`
--

CREATE TABLE `tbl_offer` (
  `offer_id` int(11) NOT NULL,
  `offer_date` varchar(100) NOT NULL,
  `offer_enddate` varchar(100) NOT NULL,
  `product_id` int(11) NOT NULL,
  `offer_price` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_place`
--

CREATE TABLE `tbl_place` (
  `place_id` int(11) NOT NULL,
  `place_name` varchar(100) NOT NULL,
  `district_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_place`
--

INSERT INTO `tbl_place` (`place_id`, `place_name`, `district_id`) VALUES
(1, 'Kothamangalam', 1),
(2, 'Nerimangalam', 1),
(3, 'Oonnukal', 1),
(4, 'Varkala', 2),
(5, 'Pon Mudi', 2),
(6, 'Neyyattinkara', 2),
(7, 'pala', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_details` varchar(500) NOT NULL,
  `product_photo` varchar(100) NOT NULL,
  `product_rate` varchar(100) NOT NULL DEFAULT '0',
  `shop_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `MRP` varchar(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_name`, `product_details`, `product_photo`, `product_rate`, `shop_id`, `subcategory_id`, `brand_id`, `MRP`) VALUES
(6, 'Drill', '4.8V', 'ProductPhoto_1644.avif', '8700', 1, 2, NULL, ''),
(7, 'Drill', '4.8V', 'ProductPhoto_1710.jpg', '7990', 1, 2, NULL, ''),
(8, 'Drill', '57V\r\n77W', 'ProductPhoto_1516.png', '6550', 3, 3, NULL, ''),
(10, 'Cutter', '18V', 'ProductPhoto_1575.avif', '6550', 3, 2, NULL, '7000'),
(11, 'Drill', '77W', 'ProductPhoto_1291.png', '8700', 3, 3, NULL, '9000');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_review`
--

CREATE TABLE `tbl_review` (
  `review_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_rating` varchar(100) NOT NULL,
  `user_review` varchar(100) NOT NULL,
  `review_datetime` varchar(100) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_review`
--

INSERT INTO `tbl_review` (`review_id`, `user_name`, `user_rating`, `user_review`, `review_datetime`, `product_id`) VALUES
(1, 'Suraj', '4', 'good', '2023-03-30 18:56:12', 2),
(2, 'Prince', '4', 'GOOD', '2023-04-14 12:56:04', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shop`
--

CREATE TABLE `tbl_shop` (
  `shop_id` int(11) NOT NULL,
  `shop_name` varchar(100) NOT NULL,
  `shop_contact` varchar(100) NOT NULL,
  `shop_address` varchar(100) NOT NULL,
  `shop_photo` varchar(100) NOT NULL,
  `shop_proof` varchar(100) NOT NULL,
  `shop_status` int(11) NOT NULL DEFAULT 0,
  `shop_doj` date NOT NULL DEFAULT current_timestamp(),
  `place_id` int(11) NOT NULL,
  `shop_email` varchar(100) NOT NULL,
  `shop_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_shop`
--

INSERT INTO `tbl_shop` (`shop_id`, `shop_name`, `shop_contact`, `shop_address`, `shop_photo`, `shop_proof`, `shop_status`, `shop_doj`, `place_id`, `shop_email`, `shop_password`) VALUES
(1, 'Tony Prince', '9544888167', 'VILAYIL JOSE VILLA , OONNUKAL P.O\r\nNH.49 , OONNUKAL , ERNAKULAM', 'ShopPhoto_1290.jpg', 'ShopProof_1972.pdf', 1, '2023-03-30', 1, 'tony303@gmail.com', 'tony@123'),
(3, 'Livya Eldhose', '9747656756', 'House', 'ShopPhoto_1877.jpg', 'ShopProof_2106.png', 1, '2023-04-13', 1, 'livya@gmail.com', 'livya@123'),
(4, 'Rahul Stroam', '9678445667', 'nellimattom p.o, House of kings', 'ShopPhoto_1404.jpg', 'ShopProof_1438.png', 1, '2023-04-13', 1, 'rahul@gmail.com', '1'),
(5, 'Pradeep Thankachan', '9846375598', 'Vilayil Jose Villa \r\nU.K', 'ShopPhoto_2028.jpg', 'ShopProof_1797.pdf', 1, '2023-04-13', 1, 'pradeep@gmail.com', '1'),
(6, 'Austin Joy', '987898659', 'Puttanveetill House(h)\r\nAngamaly', 'ShopPhoto_1976.jpg', 'ShopProof_1834.jpg', 1, '2023-04-14', 1, 'austin@gmail.com', '1'),
(7, 'Industry', '987898659', 'gjyjtkhj', 'ShopPhoto_1230.jpg', 'ShopProof_2036.jpg', 2, '2023-04-14', 1, 'industry@gmail.com', '2'),
(8, 'ghj', '987898659', 'dfhgjk', 'ShopPhoto_1012.jpg', 'ShopProof_1451.jpg', 2, '2023-04-14', 1, 'ghj@gmail.com', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_state`
--

CREATE TABLE `tbl_state` (
  `state_id` int(11) NOT NULL,
  `state_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_state`
--

INSERT INTO `tbl_state` (`state_id`, `state_name`) VALUES
(1, 'Kerala'),
(2, 'Karnataka'),
(3, 'Tamil Nadu'),
(4, 'Assam'),
(5, 'Bihar'),
(6, 'Goa'),
(7, 'Andhra Pradesh'),
(8, 'Arunachal Pradesh'),
(9, 'Bihar'),
(10, 'Chhattisgraph'),
(11, 'Gujarat'),
(12, 'Haryana'),
(13, 'Himachal Pradesh'),
(14, 'Jharkhand'),
(16, 'Madhya Pradesh'),
(17, 'Maharashtra'),
(18, 'Manipur'),
(19, 'Meghalaya'),
(20, 'Mizoram'),
(21, 'Nagaland'),
(22, 'Odisha'),
(23, 'Punjab'),
(24, 'Rajasthan'),
(25, 'Sikkim'),
(26, 'Telangana'),
(27, 'Tripura'),
(28, 'Uttarakhand'),
(29, 'Uttar Pradesh'),
(30, 'West Bengal');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_stock`
--

CREATE TABLE `tbl_stock` (
  `stock_id` int(11) NOT NULL,
  `stock_qty` varchar(100) NOT NULL,
  `stock_date` varchar(100) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_stock`
--

INSERT INTO `tbl_stock` (`stock_id`, `stock_qty`, `stock_date`, `product_id`) VALUES
(1, '100', '2023-03-15', 2),
(2, '10', '2023-04-26', 4),
(3, '10', '2023-04-16', 5),
(4, '5', '2023-04-27', 6),
(5, '2', '2023-04-19', 7),
(6, '10', '2023-04-29', 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subcategory`
--

CREATE TABLE `tbl_subcategory` (
  `subcategory_id` int(11) NOT NULL,
  `subcategory_name` varchar(100) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_subcategory`
--

INSERT INTO `tbl_subcategory` (`subcategory_id`, `subcategory_name`, `category_id`) VALUES
(1, 'PowerHouse 255 mm Mitre Saw 2200W', 1),
(2, 'Black Decker 4.8V Battery Powered Cordless Screwdriver Set,KC4815', 2),
(3, 'Power Drill 77W', 6);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_contact` varchar(100) NOT NULL,
  `user_address` varchar(100) NOT NULL,
  `user_photo` varchar(100) NOT NULL,
  `user_proof` varchar(100) NOT NULL,
  `user_doj` date NOT NULL DEFAULT current_timestamp(),
  `place_id` int(11) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_name`, `user_contact`, `user_address`, `user_photo`, `user_proof`, `user_doj`, `place_id`, `user_email`, `user_password`) VALUES
(2, 'Prince', '9846167706', 'VILAYIL JOSE VILLA , OONNUKAL P.O\r\nNH.49 , OONNUKAL , ERNAKULAM', 'UserPhoto_1090.jpg', 'UserProof_1143.pdf', '2023-03-30', 3, 'prince@gmail.com', 'prince@123'),
(4, 'Ebin George', '9857490467', 'New Villa(H)\r\noonnukal p.o , Ernakulam', 'UserPhoto_1513.JPG', 'UserProof_1180.jpg', '2023-03-31', 2, 'ebin12@gmail.com', 'ebin@123'),
(5, 'Milan', '9857490467', 'kothamangalam p.o\r\nErnakulam', 'UserPhoto_1711.jpg', 'UserProof_1252.pdf', '2023-03-31', 1, 'milan@gmail.com', 'milan@123'),
(6, 'Ajo', '9865734588', 'Rathapilliyil', 'UserPhoto_1991.jpg', 'UserProof_2062.jpg', '2023-04-13', 1, 'ajo@gmail.com', 'ajo@123'),
(7, 'Livya Eldhose', '9747656756', 'House', 'UserPhoto_1691.jpg', 'UserProof_2019.jpg', '2023-04-13', 2, 'livya@gmail.com', 'livya@1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_booking`
--
ALTER TABLE `tbl_booking`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_complaint`
--
ALTER TABLE `tbl_complaint`
  ADD PRIMARY KEY (`complaint_id`);

--
-- Indexes for table `tbl_district`
--
ALTER TABLE `tbl_district`
  ADD PRIMARY KEY (`district_id`);

--
-- Indexes for table `tbl_offer`
--
ALTER TABLE `tbl_offer`
  ADD PRIMARY KEY (`offer_id`);

--
-- Indexes for table `tbl_place`
--
ALTER TABLE `tbl_place`
  ADD PRIMARY KEY (`place_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_review`
--
ALTER TABLE `tbl_review`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `tbl_shop`
--
ALTER TABLE `tbl_shop`
  ADD PRIMARY KEY (`shop_id`);

--
-- Indexes for table `tbl_state`
--
ALTER TABLE `tbl_state`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `tbl_stock`
--
ALTER TABLE `tbl_stock`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `tbl_subcategory`
--
ALTER TABLE `tbl_subcategory`
  ADD PRIMARY KEY (`subcategory_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_booking`
--
ALTER TABLE `tbl_booking`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_complaint`
--
ALTER TABLE `tbl_complaint`
  MODIFY `complaint_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_district`
--
ALTER TABLE `tbl_district`
  MODIFY `district_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_offer`
--
ALTER TABLE `tbl_offer`
  MODIFY `offer_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_place`
--
ALTER TABLE `tbl_place`
  MODIFY `place_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_review`
--
ALTER TABLE `tbl_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_shop`
--
ALTER TABLE `tbl_shop`
  MODIFY `shop_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_state`
--
ALTER TABLE `tbl_state`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_stock`
--
ALTER TABLE `tbl_stock`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_subcategory`
--
ALTER TABLE `tbl_subcategory`
  MODIFY `subcategory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
