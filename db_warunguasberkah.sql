-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2023 at 07:12 PM
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
-- Database: `db_warunguasberkah`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_name`, `username`, `password`, `admin_telp`, `admin_email`, `admin_address`) VALUES
(1, 'Ossi', 'admin', '827ccb0eea8a706c4c34a16891f84e7b', '+628115002107', '22106050061@student.uin-suka.ac.id', 'Jl.Veteran Simp Smp 7, RT 31, NO 81, Jalur 10'),
(2, 'Akhyar', 'admin1', '827ccb0eea8a706c4c34a16891f84e7b', '081225947730', '22106050087@student.uin-suka.ac.id', 'Jl.Sunan Bonang, rt10/rw01, Lasem, Rembang, Jawa Tengah');

-- --------------------------------------------------------

--
-- Table structure for table `tb_category`
--

CREATE TABLE `tb_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
(5, 'Laptop'),
(6, 'HP'),
(7, 'Headset'),
(8, 'Camera'),
(9, 'Microphone'),
(10, 'Webcam'),
(11, 'Airpods'),
(12, 'Mousepad'),
(14, 'Mouse');

-- --------------------------------------------------------

--
-- Table structure for table `tb_product`
--

CREATE TABLE `tb_product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_status` tinyint(1) NOT NULL,
  `date_create` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_product`
--

INSERT INTO `tb_product` (`product_id`, `category_id`, `product_name`, `product_price`, `product_description`, `product_image`, `product_status`, `date_create`) VALUES
(6, 14, 'Rexus', 150000, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ut massa at tellus vehicula efficitur. Maecenas sit amet lobortis ligula. Proin sit amet metus ligula. Morbi lacinia est in enim tincidunt posuere. Ut id faucibus elit, vel gravida justo. Vivamus fermentum neque eu interdum maximus. Vestibulum ut consequat mi. Integer et dignissim urna. Donec facilisis lobortis diam, in mollis libero laoreet non. Aliquam finibus mauris eros, eget pharetra neque dictum ut. Donec non dictum mauris. Curabitur ut dui augue.</p>\r\n', 'produk1701278338.jpg', 1, '2023-11-29 17:18:58'),
(7, 5, 'Asus ROG', 35000000, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ut massa at tellus vehicula efficitur. Maecenas sit amet lobortis ligula. Proin sit amet metus ligula. Morbi lacinia est in enim tincidunt posuere. Ut id faucibus elit, vel gravida justo. Vivamus fermentum neque eu interdum maximus. Vestibulum ut consequat mi. Integer et dignissim urna. Donec facilisis lobortis diam, in mollis libero laoreet non. Aliquam finibus mauris eros, eget pharetra neque dictum ut. Donec non dictum mauris. Curabitur ut dui augue.</p>\r\n', 'produk1701278464.jpg', 1, '2023-11-29 17:21:04'),
(10, 5, 'TUF', 20000000, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ut massa at tellus vehicula efficitur. Maecenas sit amet lobortis ligula. Proin sit amet metus ligula. Morbi lacinia est in enim tincidunt posuere. Ut id faucibus elit, vel gravida justo. Vivamus fermentum neque eu interdum maximus. Vestibulum ut consequat mi. Integer et dignissim urna. Donec facilisis lobortis diam, in mollis libero laoreet non. Aliquam finibus mauris eros, eget pharetra neque dictum ut. Donec non dictum mauris. Curabitur ut dui augue.</p>\r\n', 'produk1701279709.jpg', 1, '2023-11-29 17:41:49'),
(11, 6, 'Iphone 14 Pro Max', 23000000, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ut massa at tellus vehicula efficitur. Maecenas sit amet lobortis ligula. Proin sit amet metus ligula. Morbi lacinia est in enim tincidunt posuere. Ut id faucibus elit, vel gravida justo. Vivamus fermentum neque eu interdum maximus. Vestibulum ut consequat mi. Integer et dignissim urna. Donec facilisis lobortis diam, in mollis libero laoreet non. Aliquam finibus mauris eros, eget pharetra neque dictum ut. Donec non dictum mauris. Curabitur ut dui augue.</p>\r\n', 'produk1702475228.jpg', 1, '2023-11-29 18:14:43'),
(12, 7, 'Logitech', 600000, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ut massa at tellus vehicula efficitur. Maecenas sit amet lobortis ligula. Proin sit amet metus ligula. Morbi lacinia est in enim tincidunt posuere. Ut id faucibus elit, vel gravida justo. Vivamus fermentum neque eu interdum maximus. Vestibulum ut consequat mi. Integer et dignissim urna. Donec facilisis lobortis diam, in mollis libero laoreet non. Aliquam finibus mauris eros, eget pharetra neque dictum ut. Donec non dictum mauris. Curabitur ut dui augue.</p>\r\n', 'produk1702475218.jpg', 1, '2023-11-29 18:15:17'),
(13, 8, 'Sony', 3000000, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ut massa at tellus vehicula efficitur. Maecenas sit amet lobortis ligula. Proin sit amet metus ligula. Morbi lacinia est in enim tincidunt posuere. Ut id faucibus elit, vel gravida justo. Vivamus fermentum neque eu interdum maximus. Vestibulum ut consequat mi. Integer et dignissim urna. Donec facilisis lobortis diam, in mollis libero laoreet non. Aliquam finibus mauris eros, eget pharetra neque dictum ut. Donec non dictum mauris. Curabitur ut dui augue.</p>\r\n', 'produk1701281748.jpg', 1, '2023-11-29 18:15:48'),
(14, 9, 'Razer', 2300000, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ut massa at tellus vehicula efficitur. Maecenas sit amet lobortis ligula. Proin sit amet metus ligula. Morbi lacinia est in enim tincidunt posuere. Ut id faucibus elit, vel gravida justo. Vivamus fermentum neque eu interdum maximus. Vestibulum ut consequat mi. Integer et dignissim urna. Donec facilisis lobortis diam, in mollis libero laoreet non. Aliquam finibus mauris eros, eget pharetra neque dictum ut. Donec non dictum mauris. Curabitur ut dui augue.</p>\r\n', 'produk1701281776.png', 1, '2023-11-29 18:16:16'),
(15, 10, 'Logitech', 800000, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ut massa at tellus vehicula efficitur. Maecenas sit amet lobortis ligula. Proin sit amet metus ligula. Morbi lacinia est in enim tincidunt posuere. Ut id faucibus elit, vel gravida justo. Vivamus fermentum neque eu interdum maximus. Vestibulum ut consequat mi. Integer et dignissim urna. Donec facilisis lobortis diam, in mollis libero laoreet non. Aliquam finibus mauris eros, eget pharetra neque dictum ut. Donec non dictum mauris. Curabitur ut dui augue.</p>\r\n', 'produk1702475206.jpg', 1, '2023-11-29 18:16:57'),
(16, 11, 'Airpods Pro', 4000000, '', 'produk1701281858.jpg', 1, '2023-11-29 18:17:38'),
(17, 12, 'Rexus RGB', 250000, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ut massa at tellus vehicula efficitur. Maecenas sit amet lobortis ligula. Proin sit amet metus ligula. Morbi lacinia est in enim tincidunt posuere. Ut id faucibus elit, vel gravida justo. Vivamus fermentum neque eu interdum maximus. Vestibulum ut consequat mi. Integer et dignissim urna. Donec facilisis lobortis diam, in mollis libero laoreet non. Aliquam finibus mauris eros, eget pharetra neque dictum ut. Donec non dictum mauris. Curabitur ut dui augue.</p>\r\n', 'produk1702475193.jpg', 1, '2023-11-29 18:19:50'),
(18, 12, 'Mousepad Anime', 250000, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ut massa at tellus vehicula efficitur. Maecenas sit amet lobortis ligula. Proin sit amet metus ligula. Morbi lacinia est in enim tincidunt posuere. Ut id faucibus elit, vel gravida justo. Vivamus fermentum neque eu interdum maximus. Vestibulum ut consequat mi. Integer et dignissim urna. Donec facilisis lobortis diam, in mollis libero laoreet non. Aliquam finibus mauris eros, eget pharetra neque dictum ut. Donec non dictum mauris. Curabitur ut dui augue.</p>\r\n', 'produk1702475389.jpg', 1, '2023-12-13 13:49:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `product_id` (`product_id`,`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
