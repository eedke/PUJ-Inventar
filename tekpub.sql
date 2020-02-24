-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2020 at 07:46 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tekpub`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_10_213257_create_roles_table', 1),
(5, '2019_12_10_213510_create_role_user_table', 1),
(6, '2020_01_25_195414_create_products_table', 1),
(7, '2020_01_28_120055_create_orders_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `cart` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `imagePath` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `amount` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtype` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `imagePath`, `title`, `description`, `price`, `amount`, `type`, `subtype`, `created_at`, `updated_at`) VALUES
(1, 'https://i.ibb.co/b5YZzbG/oie-Gw-MVXp-FSQEEm.jpg', 'Hamburger', 'A sandwich consisting of a patty of hamburger in a split typically round bun', 7.00, 1234, 'Food', 'Sandwich', '2020-02-24 17:39:41', '2020-02-24 17:39:41'),
(2, 'https://i.ibb.co/PxWgtBR/cheeseburger1.jpg', 'Cheeseburger', 'A hamburger topped with a slice of cheese', 8.00, 23234, 'Food', 'Sandwich', '2020-02-24 17:39:41', '2020-02-24 17:39:41'),
(3, 'https://i.ibb.co/nDGbxXy/oie-NFi7-Uto1wk-CZ.jpg', 'Chicken Nuggets', 'Deep-fried rounded chicken meat', 6.00, 1634, 'Food', 'Chicken', '2020-02-24 17:39:41', '2020-02-24 17:39:41'),
(4, 'https://i.ibb.co/Fn42zhL/oie-r7-Z9-OIC3d51-K.jpg', 'Sandwich', 'Two or more slices of bread or a split roll having a filling in between', 9.00, 334, 'Food', 'Sandwich', '2020-02-24 17:39:41', '2020-02-24 17:39:41'),
(5, 'https://i.ibb.co/7Ynkjd8/oie-lg-QA4l-VQo-TPm.jpg', 'Coca Cola', 'Classic great taste', 3.50, 9999, 'Drinks', 'Soda', '2020-02-24 17:39:41', '2020-02-24 17:39:41'),
(6, 'https://i.ibb.co/gFCNG0r/oie-QUcrirw9b3-Bm.jpg', 'Hot-Dog', 'A frankfurter, especially one served hot in a long, soft roll and topped with various condiments.', 6.50, 1234, 'Food', 'Sandwich', '2020-02-24 17:39:41', '2020-02-24 17:39:41'),
(7, 'https://i.ibb.co/tPdmjDx/oie-e-DOckth-RZYfb.jpg', 'Kebab', 'Cubes of meat (such as lamb or beef) marinated and cooked with vegetables usually on a skewer', 7.50, 1234, 'Food', 'Sandwich', '2020-02-24 17:39:41', '2020-02-24 17:39:41'),
(8, 'https://i.ibb.co/mcDd1cq/oie-Th07-Qdfb8aa7.jpg', 'Gyro', 'A sandwich especially of lamb and beef, tomato, onion, and yogurt sauce on pita bread', 8.00, 1234, 'Food', 'Sandwich', '2020-02-24 17:39:41', '2020-02-24 17:39:41'),
(9, 'https://i.ibb.co/zZwqz2x/oie-aek-A1k-FAEl3-Z.jpg', 'Fanta', 'Delicious Fruit Flavored Soda', 3.50, 9999, 'Drinks', 'Soda', '2020-02-24 17:39:41', '2020-02-24 17:39:41'),
(10, 'https://i.ibb.co/6PPRLyx/oie-PCLPl-Io4psw0.png', 'Schweppes Indian Tonic', 'The iconic soft drink, based on Jacob Schweppe’s 1783 original formula.', 3.50, 9999, 'Drinks', 'Soda', '2020-02-24 17:39:41', '2020-02-24 17:39:41'),
(11, 'https://i.ibb.co/Yd5tdf9/oie-ng-Qsf-Emi-Or-Px.jpg', 'Latte Macchiato', 'Coffee', 4.00, 9999, 'Drinks', 'Coffee', '2020-02-24 17:39:41', '2020-02-24 17:39:41'),
(12, 'https://i.ibb.co/GQYB6sv/oie-j-OBCUq2v1l-F1.jpg', 'Espresso Macchiato', 'Espresso coffee drink with a small amount of milk, usually foamed.', 3.00, 9999, 'Drinks', 'Coffee', '2020-02-24 17:39:41', '2020-02-24 17:39:41'),
(13, 'https://i.ibb.co/dg9MY1J/oie-l3-LKPMq-Nnq-F8.jpg', 'Heineken', 'Cold, fresh, high quality Heineken. Enjoyed near and far since 1873.', 3.50, 9999, 'Drinks', 'Beer', '2020-02-24 17:39:41', '2020-02-24 17:39:41'),
(14, 'https://i.ibb.co/mJvG92M/oie-k3-Y0-R0i-DSy-Xm.png', 'Ozujsko Hoppy', 'Znalacki odabir!', 3.50, 9999, 'Drinks', 'Beer', '2020-02-24 17:39:41', '2020-02-24 17:39:41'),
(15, 'https://i.ibb.co/Sv1Rx8X/oie-uf-DRUUi-ZKb-Cn.jpg', 'Guinness Draught', 'Famous for its smooth velvety texture and unique surge and settle.', 3.50, 9999, 'Drinks', 'Beer', '2020-02-24 17:39:41', '2020-02-24 17:39:41'),
(16, 'https://i.ibb.co/ScV7fBs/oie-LNBG38-Ms-QMp-D.jpg', 'Guinness Rye Pake Ale', 'Rye Pale Ale offers a rustic peppery bite balanced with citrusy grapefruit notes from the Mosaic and Cascade hops', 3.50, 9999, 'Drinks', 'Beer', '2020-02-24 17:39:41', '2020-02-24 17:39:41'),
(17, 'https://i.ibb.co/4K8bYm7/imgonline-com-ua-Piconpic-7xo-QTp7awf-Osb-N6.jpg', 'Pozoj, Zmajska Pivovara', 'Pozoj! Hmeljna bomba!', 3.50, 9999, 'Drinks', 'Beer', '2020-02-24 17:39:41', '2020-02-24 17:39:41'),
(18, 'https://i.ibb.co/C6GfjYC/imgonline-com-ua-Piconpic-Hv-Akvr-Mz-NZBB-1.jpg', 'Pils, Zmajska Pivovara', 'Robusno je, nije šala!', 3.50, 9999, 'Drinks', 'Beer', '2020-02-24 17:39:41', '2020-02-24 17:39:41'),
(19, 'https://i.ibb.co/kq7dPS9/imgonline-com-ua-Piconpic-S1-WZhdw-KYr0nl.jpg', 'Pale Ale, Zmajska Pivovara', 'Realno, pitko je do bola!', 3.50, 9999, 'Drinks', 'Beer', '2020-02-24 17:39:41', '2020-02-24 17:39:41'),
(20, 'https://i.ibb.co/RBZZNsM/imgonline-com-ua-Piconpic-jb-Wy-Np-DSkbb-MC3-X-2.jpg', 'Hoppy Wheat, Zmajska Pivovara', 'Lagano se pije, a teško zaboravlja!', 4.00, 9999, 'Drinks', 'Beer', '2020-02-24 17:39:41', '2020-02-24 17:39:41'),
(21, 'https://i.ibb.co/1s2564g/oie-iv8-Edded-PY6l.jpg', 'Pivovara Medvedgrad', 'Gricka Vjestica, Zlatni Medvjed, Dva Klasa, Crna Kraljica', 5.50, 9999, 'Drinks', 'Beer', '2020-02-24 17:39:41', '2020-02-24 17:39:41'),
(22, 'https://i.ibb.co/3m7CKZg/oie-ICnv-Dsly-Mfah.jpg', 'Lovac (Porter Pale, Ale)', 'Beer', 4.00, 9999, 'Drinks', 'Beer', '2020-02-24 17:39:41', '2020-02-24 17:39:41'),
(23, 'https://i.ibb.co/c6Xjt60/oie-Bho-LF9-ZXx2-FO.jpg', 'Southern Comfort Black', 'A robust whiskey-forward profile with subtle spice and fruity accents, our Black label takes the original Southern Comfort experience up a notch', 6.00, 9999, 'Drinks', 'Whiskey', '2020-02-24 17:39:41', '2020-02-24 17:39:41'),
(24, 'https://i.ibb.co/P4Q0K1q/oie-BAWg-FPGb-Yn51.jpg', 'Southern Comfort Original', 'Southern Comfort Original is inspired by our founder’s 1874 recipe, with core whiskey notes and iconic fruit and spice accents.', 5.50, 9999, 'Drinks', 'Whiskey', '2020-02-24 17:39:41', '2020-02-24 17:39:41'),
(25, 'https://i.ibb.co/R3fT8pP/oie-Qr6-Nm-YZKP621.jpg', 'Aviation Gin', 'Crafted with a blend of botanicals. Elevated, yet smoother, more subtle, and balanced.', 5.50, 9999, 'Drinks', 'Gin', '2020-02-24 17:39:41', '2020-02-24 17:39:41'),
(26, 'https://i.ibb.co/SJkF9qf/oie-8-BUje-X3h-Bv0-O.jpg', 'Pizza', 'A dish made typically of flattened bread dough spread with a savory mixture usually including tomatoes and cheese and often other toppings and baked', 9.00, 9999, 'Food', 'Pizza', '2020-02-24 17:39:41', '2020-02-24 17:39:41'),
(27, 'https://i.ibb.co/Z8znqpT/oie-nory086-C209-T.jpg', 'Sausages, Griled', 'Grilled Sausages', 7.50, 9999, 'Food', 'Grill', '2020-02-24 17:39:41', '2020-02-24 17:39:41'),
(28, 'https://i.ibb.co/rmZHC6b/oie-ab-UGQubc-Fx-CS.jpg', 'Steak, Grilled', 'Grilled Steak', 11.00, 9999, 'Food', 'Grill', '2020-02-24 17:39:41', '2020-02-24 17:39:41'),
(29, 'https://i.ibb.co/NmdWMdP/oie-uz-SPu-MDh-G1-K7.jpg', 'Cevapi', 'A grilled dish of minced meat', 7.00, 9999, 'Food', 'Grill', '2020-02-24 17:39:41', '2020-02-24 17:39:41'),
(30, 'https://i.ibb.co/7Yjzptj/oie-YXSOs3-I7b-R3n.jpg', 'Grilled Chicken', 'Grilled Chicken', 8.00, 9999, 'Food', 'Grill', '2020-02-24 17:39:41', '2020-02-24 17:39:41'),
(31, 'https://i.ibb.co/YL5Yjmy/oie-epw-Qbu-Gqtg3-I.jpg', 'Grilled Fish', 'Grilled Fish', 9.00, 9999, 'Food', 'Grill', '2020-02-24 17:39:41', '2020-02-24 17:39:41'),
(32, 'https://i.ibb.co/7vYx0Sj/oie-r-PZRQQFw-ASDJ.jpg', 'Burrito', 'A flour tortilla rolled or folded around a filling (as of meat, beans, and cheese)', 7.50, 9999, 'Food', 'Mexican', '2020-02-24 17:39:41', '2020-02-24 17:39:41'),
(33, 'https://i.ibb.co/FgX5tD1/oie-Yw-WFjstyt-Fr-C.jpg', 'Taco', 'A tortilla that is folded or rolled and stuffed with a mixture (as of seasoned meat, cheese, and lettuce)', 7.00, 9999, 'Food', 'Mexican', '2020-02-24 17:39:41', '2020-02-24 17:39:41');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-02-24 17:39:40', '2020-02-24 17:39:40'),
(2, 'waiter', '2020-02-24 17:39:40', '2020-02-24 17:39:40'),
(3, 'user', '2020-02-24 17:39:40', '2020-02-24 17:39:40');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 2, NULL, NULL),
(3, 3, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(95) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin User', 'admin@admin.com', NULL, '$2y$10$jS758cm.OaDIpGurYTBDpuTj6uRoz.wt3WzQPGY9ev2t.HucxtcGO', NULL, '2020-02-24 17:39:40', '2020-02-24 17:39:40'),
(2, 'Waiter User', 'waiter@waiter.com', NULL, '$2y$10$Gw3Rj6jJnOkDHNGq9z0Rae7nS44e66uQY/X1vufr4ePR65AAmYJMO', NULL, '2020-02-24 17:39:41', '2020-02-24 17:39:41'),
(3, 'Generic User', 'user@user.com', NULL, '$2y$10$s6pshlj77EXxH6X9RSKMx.2nQ5Tg0BRj32VIAOyPqFm9XpgG.H1qm', NULL, '2020-02-24 17:39:41', '2020-02-24 17:39:41'),
(5, 'test', 'test@test.com', NULL, '123', NULL, '2020-02-23 23:00:00', '2020-02-23 23:00:00'),
(6, 'test2', 'test2@test.com', NULL, '12345678', NULL, '2020-02-24 18:44:04', '2020-02-24 18:44:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
