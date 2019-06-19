-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2019 at 07:53 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `res`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_11_17_052200_create_orders_table', 1),
(4, '2017_01_10_074247_create_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `delivery_date` date NOT NULL,
  `product_id` int(11) NOT NULL,
  `payment_option` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `order_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `phone`, `address`, `delivery_date`, `product_id`, `payment_option`, `quantity`, `order_status`, `created_at`, `updated_at`) VALUES
(2, ' Gazi', '0125563', 'Mohakhali', '2019-05-07', 1, 'Postpay', 12, 'Ready', '2019-05-06 01:14:42', '2019-05-06 01:14:42'),
(3, 'Arman', '01776589348', 'Mohammadpur', '2019-05-08', 2, 'Postpay', 4, 'Ready', '2019-05-06 01:15:43', '2019-05-06 04:07:46'),
(4, 'Subaita', '01956852255', 'uttara', '2019-05-09', 5, 'Prepay (Full)', 3, 'Delivered', '2019-05-06 01:16:44', '2019-05-06 01:16:44'),
(5, 'Dalia', '024856899', 'shakertec-2, Mohammadpur', '2019-05-15', 3, 'Postpay', 8, 'Delivered', '2019-05-06 01:17:50', '2019-05-06 01:20:08');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_details` text COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_details`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Burger', 'Beef Combo Burger', 100, '2019-05-06 00:51:22', '2019-05-06 00:51:22'),
(2, 'Pizza', 'I8\" pizza ', 120, '2019-05-06 01:06:49', '2019-05-06 01:06:49'),
(3, 'Pc Hot & Crispy Chicken', 'The perfect crunch-time snack! 2 pieces of Colonel\'s signature Hot & Crispy.', 400, '2019-05-06 01:08:31', '2019-05-06 01:08:31'),
(4, 'Smoky Grilled Bucket', 'Colonel’s Spicy and Juicy grilled chicken with a mix of special marinade and secret herbs- grilled to a Smoky perfection.', 600, '2019-05-06 01:09:20', '2019-05-06 01:09:20'),
(5, 'Hot Zinger Burger', 'Spicy, crunchy whole fillet of chicken in a warm sesame bun, topped with fresh crunchy lettuce and hot and spicy mayo.', 350, '2019-05-06 01:10:54', '2019-05-06 01:10:54'),
(6, 'Chicken fry', 'cknsknfjbdjubver', 299, '2019-05-06 04:12:35', '2019-05-06 04:12:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'gazi', 'g@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'yes', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'alamin', 'ala@gmail.com', '$2y$10$OUBoAwg1kLNHyj9EIjmE/OyRDsl3M42wCTXPzNjxd2ANXOLXJLwNa', 'hm6rpcIkPlPRGgEig8FgQ1so2tquGLke0zjVHENNeifjFpwbrXQcrCEp77NO', '2019-05-06 00:50:05', '2019-05-06 01:57:37'),
(3, 'Al-Amin', 'alamin@gmail.com', '$2y$10$IHq4yhSOYwLI37x2A17Y3.kADSFXtjN46XJo9VyvSK0/mKmfDkxgm', 'XcL1ILWPcwOhAkfggozAcAOUz2tk5w85orlI85UYZmiMkUeRobN5wxp28bXN', '2019-05-06 01:58:23', '2019-05-06 04:15:04'),
(4, 'gazi', 'gazi@gmail.com', '$2y$10$UP8gACrQkCQGEj1pJJOG9OEQqGvASCAw52nxXyKtfyBrSiY.pov7W', 'uAWyKbscKSbbI5pU0UcPWvNrni9wiCIH8K1XXj2u0nSxNN6zu5wtwBdyzi5s', '2019-05-06 04:15:41', '2019-05-06 05:00:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
