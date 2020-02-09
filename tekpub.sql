-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2020 at 10:08 AM
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
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `payment_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `cart`, `address`, `payment_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:2:{i:2;a:3:{s:3:\"qty\";i:3;s:5:\"price\";d:24;s:4:\"item\";O:11:\"App\\Product\":26:{s:11:\"\0*\0fillable\";a:4:{i:0;s:9:\"imagePath\";i:1;s:5:\"title\";i:2;s:11:\"description\";i:3;s:5:\"price\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:2;s:9:\"imagePath\";s:124:\"http://www.vrisak.info/wp-content/uploads/2018/12/Savr%C5%A1eni-hamburger-ima-devet-slojeva-i-visok-je-sedam-centimetara.jpg\";s:5:\"title\";s:11:\"Cheeseburge\";s:11:\"description\";s:20:\"Cheeseburger - dobar\";s:5:\"price\";d:8;s:10:\"created_at\";s:19:\"2020-01-28 23:26:28\";s:10:\"updated_at\";s:19:\"2020-01-28 23:26:28\";}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:2;s:9:\"imagePath\";s:124:\"http://www.vrisak.info/wp-content/uploads/2018/12/Savr%C5%A1eni-hamburger-ima-devet-slojeva-i-visok-je-sedam-centimetara.jpg\";s:5:\"title\";s:11:\"Cheeseburge\";s:11:\"description\";s:20:\"Cheeseburger - dobar\";s:5:\"price\";d:8;s:10:\"created_at\";s:19:\"2020-01-28 23:26:28\";s:10:\"updated_at\";s:19:\"2020-01-28 23:26:28\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}i:3;a:3:{s:3:\"qty\";i:1;s:5:\"price\";d:6;s:4:\"item\";O:11:\"App\\Product\":26:{s:11:\"\0*\0fillable\";a:4:{i:0;s:9:\"imagePath\";i:1;s:5:\"title\";i:2;s:11:\"description\";i:3;s:5:\"price\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:3;s:9:\"imagePath\";s:163:\"https://assets.tmecosys.com/image/upload/t_web767x639/img/recipe/ras/Assets/9D900DB3-435D-4AE4-9375-B152D2813750/Derivates/199C60FC-C264-43A3-B822-88AA5E50E954.jpg\";s:5:\"title\";s:7:\"Nuggets\";s:11:\"description\";s:23:\"Chicken Nuggets - dobri\";s:5:\"price\";d:6;s:10:\"created_at\";s:19:\"2020-01-28 23:26:28\";s:10:\"updated_at\";s:19:\"2020-01-28 23:26:28\";}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:3;s:9:\"imagePath\";s:163:\"https://assets.tmecosys.com/image/upload/t_web767x639/img/recipe/ras/Assets/9D900DB3-435D-4AE4-9375-B152D2813750/Derivates/199C60FC-C264-43A3-B822-88AA5E50E954.jpg\";s:5:\"title\";s:7:\"Nuggets\";s:11:\"description\";s:23:\"Chicken Nuggets - dobri\";s:5:\"price\";d:6;s:10:\"created_at\";s:19:\"2020-01-28 23:26:28\";s:10:\"updated_at\";s:19:\"2020-01-28 23:26:28\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:4;s:10:\"totalPrice\";d:30;}', 'asd', 'cs_test_B2wpSeORwiw6RbYQMpLT0gSdYM8pwIZYQtwo0Yk9P1lZUxPNPEssL3QJ', 'asd', '2020-01-28 22:34:36', '2020-01-28 22:34:36'),
(2, 1, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:4:{i:1;a:3:{s:3:\"qty\";i:4;s:5:\"price\";d:28;s:4:\"item\";O:11:\"App\\Product\":26:{s:11:\"\0*\0fillable\";a:4:{i:0;s:9:\"imagePath\";i:1;s:5:\"title\";i:2;s:11:\"description\";i:3;s:5:\"price\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:1;s:9:\"imagePath\";s:63:\"https://static.klix.ba/media/images/vijesti/b_191223138.jpg?v=2\";s:5:\"title\";s:9:\"Hamburger\";s:11:\"description\";s:17:\"Hamburger - dobar\";s:5:\"price\";d:7;s:10:\"created_at\";s:19:\"2020-01-28 23:26:28\";s:10:\"updated_at\";s:19:\"2020-01-28 23:26:28\";}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:1;s:9:\"imagePath\";s:63:\"https://static.klix.ba/media/images/vijesti/b_191223138.jpg?v=2\";s:5:\"title\";s:9:\"Hamburger\";s:11:\"description\";s:17:\"Hamburger - dobar\";s:5:\"price\";d:7;s:10:\"created_at\";s:19:\"2020-01-28 23:26:28\";s:10:\"updated_at\";s:19:\"2020-01-28 23:26:28\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}i:2;a:3:{s:3:\"qty\";i:3;s:5:\"price\";d:24;s:4:\"item\";O:11:\"App\\Product\":26:{s:11:\"\0*\0fillable\";a:4:{i:0;s:9:\"imagePath\";i:1;s:5:\"title\";i:2;s:11:\"description\";i:3;s:5:\"price\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:2;s:9:\"imagePath\";s:124:\"http://www.vrisak.info/wp-content/uploads/2018/12/Savr%C5%A1eni-hamburger-ima-devet-slojeva-i-visok-je-sedam-centimetara.jpg\";s:5:\"title\";s:11:\"Cheeseburge\";s:11:\"description\";s:20:\"Cheeseburger - dobar\";s:5:\"price\";d:8;s:10:\"created_at\";s:19:\"2020-01-28 23:26:28\";s:10:\"updated_at\";s:19:\"2020-01-28 23:26:28\";}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:2;s:9:\"imagePath\";s:124:\"http://www.vrisak.info/wp-content/uploads/2018/12/Savr%C5%A1eni-hamburger-ima-devet-slojeva-i-visok-je-sedam-centimetara.jpg\";s:5:\"title\";s:11:\"Cheeseburge\";s:11:\"description\";s:20:\"Cheeseburger - dobar\";s:5:\"price\";d:8;s:10:\"created_at\";s:19:\"2020-01-28 23:26:28\";s:10:\"updated_at\";s:19:\"2020-01-28 23:26:28\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}i:3;a:3:{s:3:\"qty\";i:2;s:5:\"price\";d:12;s:4:\"item\";O:11:\"App\\Product\":26:{s:11:\"\0*\0fillable\";a:4:{i:0;s:9:\"imagePath\";i:1;s:5:\"title\";i:2;s:11:\"description\";i:3;s:5:\"price\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:3;s:9:\"imagePath\";s:163:\"https://assets.tmecosys.com/image/upload/t_web767x639/img/recipe/ras/Assets/9D900DB3-435D-4AE4-9375-B152D2813750/Derivates/199C60FC-C264-43A3-B822-88AA5E50E954.jpg\";s:5:\"title\";s:7:\"Nuggets\";s:11:\"description\";s:23:\"Chicken Nuggets - dobri\";s:5:\"price\";d:6;s:10:\"created_at\";s:19:\"2020-01-28 23:26:28\";s:10:\"updated_at\";s:19:\"2020-01-28 23:26:28\";}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:3;s:9:\"imagePath\";s:163:\"https://assets.tmecosys.com/image/upload/t_web767x639/img/recipe/ras/Assets/9D900DB3-435D-4AE4-9375-B152D2813750/Derivates/199C60FC-C264-43A3-B822-88AA5E50E954.jpg\";s:5:\"title\";s:7:\"Nuggets\";s:11:\"description\";s:23:\"Chicken Nuggets - dobri\";s:5:\"price\";d:6;s:10:\"created_at\";s:19:\"2020-01-28 23:26:28\";s:10:\"updated_at\";s:19:\"2020-01-28 23:26:28\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}i:5;a:3:{s:3:\"qty\";i:1;s:5:\"price\";d:3.5;s:4:\"item\";O:11:\"App\\Product\":26:{s:11:\"\0*\0fillable\";a:4:{i:0;s:9:\"imagePath\";i:1;s:5:\"title\";i:2;s:11:\"description\";i:3;s:5:\"price\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:5;s:9:\"imagePath\";s:89:\"https://www.balawholesalers.com/wp-content/uploads/2019/09/diet-coca-cola-330ml-glass.jpg\";s:5:\"title\";s:9:\"Coca Cola\";s:11:\"description\";s:19:\"Refreshing beverage\";s:5:\"price\";d:3.5;s:10:\"created_at\";s:19:\"2020-01-28 23:26:28\";s:10:\"updated_at\";s:19:\"2020-01-28 23:26:28\";}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:5;s:9:\"imagePath\";s:89:\"https://www.balawholesalers.com/wp-content/uploads/2019/09/diet-coca-cola-330ml-glass.jpg\";s:5:\"title\";s:9:\"Coca Cola\";s:11:\"description\";s:19:\"Refreshing beverage\";s:5:\"price\";d:3.5;s:10:\"created_at\";s:19:\"2020-01-28 23:26:28\";s:10:\"updated_at\";s:19:\"2020-01-28 23:26:28\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:10;s:10:\"totalPrice\";d:67.5;}', 'Damin', 'cs_test_OPz7caavKX2ejPZxHolSz8BLVK4wh5AeUEtDBh0NzubnzpauPbvQVyBK', 'Admin', '2020-01-29 10:14:18', '2020-01-29 10:14:18'),
(3, 1, 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:1;a:3:{s:3:\"qty\";i:2;s:5:\"price\";d:14;s:4:\"item\";O:11:\"App\\Product\":26:{s:11:\"\0*\0fillable\";a:4:{i:0;s:9:\"imagePath\";i:1;s:5:\"title\";i:2;s:11:\"description\";i:3;s:5:\"price\";}s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:7:{s:2:\"id\";i:1;s:9:\"imagePath\";s:63:\"https://static.klix.ba/media/images/vijesti/b_191223138.jpg?v=2\";s:5:\"title\";s:9:\"Hamburger\";s:11:\"description\";s:17:\"Hamburger - dobar\";s:5:\"price\";d:7;s:10:\"created_at\";s:19:\"2020-01-28 23:26:28\";s:10:\"updated_at\";s:19:\"2020-01-28 23:26:28\";}s:11:\"\0*\0original\";a:7:{s:2:\"id\";i:1;s:9:\"imagePath\";s:63:\"https://static.klix.ba/media/images/vijesti/b_191223138.jpg?v=2\";s:5:\"title\";s:9:\"Hamburger\";s:11:\"description\";s:17:\"Hamburger - dobar\";s:5:\"price\";d:7;s:10:\"created_at\";s:19:\"2020-01-28 23:26:28\";s:10:\"updated_at\";s:19:\"2020-01-28 23:26:28\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:2;s:10:\"totalPrice\";d:14;}', 'test', 'cs_test_iC58hC5YJrqRIy0h88fgPm4rnILPRcAS43KhOAifsdvSwK4bAN0hxvB0', 'Test', '2020-01-29 10:55:25', '2020-01-29 10:55:25');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `imagePath` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `amount` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `imagePath`, `title`, `description`, `price`, `amount`, `type`, `created_at`, `updated_at`) VALUES
(6, 'https://static.klix.ba/media/images/vijesti/b_191223138.jpg?v=2', 'Hamburger', 'Hamburger - dobar', 7.00, 1234, 1, '2020-02-09 07:54:16', '2020-02-09 07:54:16'),
(7, 'http://www.vrisak.info/wp-content/uploads/2018/12/Savr%C5%A1eni-hamburger-ima-devet-slojeva-i-visok-je-sedam-centimetara.jpg', 'Cheeseburge', 'Cheeseburger - dobar', 8.00, 23234, 1, '2020-02-09 07:54:16', '2020-02-09 07:54:16'),
(8, 'https://assets.tmecosys.com/image/upload/t_web767x639/img/recipe/ras/Assets/9D900DB3-435D-4AE4-9375-B152D2813750/Derivates/199C60FC-C264-43A3-B822-88AA5E50E954.jpg', 'Nuggets', 'Chicken Nuggets - dobri', 6.00, 1634, 1, '2020-02-09 07:54:16', '2020-02-09 07:54:16'),
(9, 'https://prods3.imgix.net/images/articles/2017_04/Feature-restaurant-butcher-bakery-shops2.jpg?auto=format%2Ccompress&ixjsv=2.2.3', 'Sandwich', 'Sandwich - dobar skroz', 9.00, 334, 1, '2020-02-09 07:54:16', '2020-02-09 07:54:16'),
(10, 'https://www.balawholesalers.com/wp-content/uploads/2019/09/diet-coca-cola-330ml-glass.jpg', 'Coca Cola', 'Refreshing beverage', 3.50, 9999, 11, '2020-02-09 07:54:16', '2020-02-09 07:54:16');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-02-09 07:54:15', '2020-02-09 07:54:15'),
(2, 'waiter', '2020-02-09 07:54:15', '2020-02-09 07:54:15'),
(3, 'user', '2020-02-09 07:54:15', '2020-02-09 07:54:15');

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
(3, 3, 3, NULL, NULL),
(4, 3, 4, NULL, NULL);

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
(1, 'Admin User', 'admin@admin.com', NULL, '$2y$10$hfPcPMSKktME.uc2o6fU9OXOjW0wgUABaJgxEBTAaDxZtDfuDOQl6', NULL, '2020-02-09 07:54:16', '2020-02-09 07:54:16'),
(2, 'Waiter User', 'waiter@waiter.com', NULL, '$2y$10$.nRipDPSEswXDqVvITprseyjfYKLf9KA8niqtB79FjL3x46EV5P4e', NULL, '2020-02-09 07:54:16', '2020-02-09 07:54:16'),
(3, 'Generic User', 'user@user.com', NULL, '$2y$10$j48TNChHew68BH.CAuEEbuJXziiHnAVG3V80uqWR6ylmiJRDgqlLW', NULL, '2020-02-09 07:54:16', '2020-02-09 07:54:16'),
(4, 'Testerer', 'test2@test.com', NULL, '$2y$10$qWxnJhqwmRsAoeKlm01dsebFD9pof4AqWLiOHjsC3pHz76lV8Q.lu', NULL, '2020-02-09 07:59:06', '2020-02-09 07:59:06'),
(5, 'test', 'test@test.com', NULL, '12345678', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
