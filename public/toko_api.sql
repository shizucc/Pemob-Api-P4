-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 20, 2023 at 05:38 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `nama`, `email`, `password`) VALUES
(1, 'Administrator', 'admin@admin.com', '$2y$10$utd5UFqIEFvg4eefK/uzpu92bljfvSAlo/5r.G7/2uVfb/kW0Aa4y');

-- --------------------------------------------------------

--
-- Table structure for table `member_token`
--

CREATE TABLE `member_token` (
  `id` int NOT NULL,
  `member_id` int NOT NULL,
  `auth_key` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `member_token`
--

INSERT INTO `member_token` (`id`, `member_id`, `auth_key`) VALUES
(1, 1, 'sPju60OJHeeMfaLRgBrpJhkWvFsNSpdsw4gvhe1yqNdo0Nb0CSNt9kRUJqG3Qd8BIhJFzkstn8ENjm8ukTfnrPDHMkozUGNaJWUh'),
(2, 1, 'QDfddJ8BX9OWLcTJnhaNQSABZ4Ax6dilxM1WTHaIVHdsvuhZJKQpmrb3WqXd3gOfML0PVc4fjSRhF9h0pWnSwhDD3FdWfrWsCPYL'),
(3, 1, '3CGBYsBKvM46HkeeDoIXbsXjSX7i5IEZ7g8vxdQLeGdRkFGBaiNGsbwyj5CwUfRfWCJOMUG9EGOEN3dsbu3piXTFEXt9Bvifx7v7'),
(4, 1, 'A3dSER3mf1kVALPmqGTBbYZMLNDHIJJLSqsdjdE1mmsUpQ7zWTwXWddbw7A2g6gq4sFudkxiLzIOhxyy5b7db2nsl2YMddOSSYtX'),
(5, 1, '4Zj69hOt6bR2PdVMioa0sJv7Cplwdhq4wjrttzHb6ZUJno2dtsAgNvkZ4DshUqdasrzb1d0ly3NSRuFQdEgQs7Kp5ep8xD7SZgnM'),
(6, 1, 'qiDM5dYfjYcIXZnA3MkBrRf5pkovuHsdv6l0VyzGdV7QigW8fNxCk3rSaUltlTBVRdP5ZFBomsqFsKymQdSNC5cX3WlFXW6OqNf4'),
(7, 1, 'byXzm6EQCSrDTiMwZkH6xWV5FkEYoDs3I3bFz0GlTgfq50s3lofc3muB1ys2q8Xz0TWIdU97kyqaw4hid2OvpVPasCoRNf1Iikdz'),
(8, 1, 'aGiwWJdp7ghA4grbRs3M3Ed6usaIcW6vL6tGbfYPGMIToslo8p9SRxAIOJ1BW8GLqG8fnxjh6PYD3dL392kWRjlDS3DCBs7UN3Ia');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int NOT NULL,
  `kode_produk` varchar(255) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `harga` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `kode_produk`, `nama_produk`, `harga`) VALUES
(1, 'A0001', 'Realme Smart TV 28 Inch', 5000000),
(3, 'A0003', 'Apple Watch', 13000000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member_token`
--
ALTER TABLE `member_token`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `member_token`
--
ALTER TABLE `member_token`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `member_token`
--
ALTER TABLE `member_token`
  ADD CONSTRAINT `member_token_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
