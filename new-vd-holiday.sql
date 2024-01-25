-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 12, 2024 at 06:14 AM
-- Server version: 10.10.2-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new-vd-holiday`
--

-- --------------------------------------------------------

--
-- Table structure for table `bravo_airline`
--

DROP TABLE IF EXISTS `bravo_airline`;
CREATE TABLE IF NOT EXISTS `bravo_airline` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_airline`
--

INSERT INTO `bravo_airline` (`id`, `name`, `image_id`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`, `author_id`) VALUES
(1, 'Olsonburgh', 233, NULL, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45', NULL),
(2, 'South Tyrel', 234, NULL, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45', NULL),
(3, 'Durganborough', 233, NULL, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45', NULL),
(4, 'Port Hankfurt', 234, NULL, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45', NULL),
(5, 'North Erinshire', 235, NULL, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45', NULL),
(6, 'Lake Danyka', 235, NULL, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45', NULL),
(7, 'Port Annettafort', 234, NULL, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45', NULL),
(8, 'Lake Albertoburgh', 235, NULL, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45', NULL),
(9, 'North Olaview', 234, NULL, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45', NULL),
(10, 'Kathleenbury', 233, NULL, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45', NULL),
(11, 'Port Cristopherside', 235, NULL, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45', NULL),
(12, 'Port Alfonso', 235, NULL, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45', NULL),
(13, 'Lake Margarettehaven', 233, NULL, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45', NULL),
(14, 'Port Sierrabury', 234, NULL, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45', NULL),
(15, 'Freddietown', 233, NULL, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45', NULL),
(16, 'New Shanny', 234, NULL, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45', NULL),
(17, 'Estellton', 235, NULL, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45', NULL),
(18, 'North Arlo', 233, NULL, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45', NULL),
(19, 'New Thaliatown', 235, NULL, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45', NULL),
(20, 'Lake Adelineview', 233, NULL, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bravo_airport`
--

DROP TABLE IF EXISTS `bravo_airport`;
CREATE TABLE IF NOT EXISTS `bravo_airport` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) DEFAULT NULL,
  `code` varchar(191) NOT NULL,
  `address` varchar(191) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `map_lat` varchar(20) DEFAULT NULL,
  `map_lng` varchar(20) DEFAULT NULL,
  `map_zoom` int(11) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `status` varchar(30) DEFAULT 'publish',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bravo_airport_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_airport`
--

INSERT INTO `bravo_airport` (`id`, `name`, `code`, `address`, `country`, `location_id`, `description`, `map_lat`, `map_lng`, `map_zoom`, `create_user`, `update_user`, `status`, `created_at`, `updated_at`, `author_id`) VALUES
(1, 'Lorenashire', '73', '82619 Franecki Run\nJeffereyton, IN 78001', NULL, 4, 'Quae alias ad quasi. Sunt iusto at velit consequatur.', '-56.584743', '-17.445852', 10, NULL, NULL, 'publish', '2023-12-13 01:01:45', '2023-12-13 01:01:45', NULL),
(2, 'South Maci', '979', '8002 Leannon Lock\nAndersonport, TN 93684', NULL, 1, 'Non dolorum praesentium delectus et dicta in. Velit non quo et facilis consequuntur quae sed. Iure et totam doloribus non. Vel impedit repudiandae quas quam.', '-70.609855', '152.783194', 10, NULL, NULL, 'publish', '2023-12-13 01:01:45', '2023-12-13 01:01:45', NULL),
(3, 'Lake Maudemouth', '256', '22682 Adaline Rest\nBeckerfort, NJ 20865', NULL, 4, 'Omnis enim consequatur voluptatibus optio rerum cupiditate adipisci. Dolorem autem ut eius odio voluptates ipsum officia ad. Error pariatur atque voluptatibus aut.', '46.068876', '115.181926', 8, NULL, NULL, 'publish', '2023-12-13 01:01:45', '2023-12-13 01:01:45', NULL),
(4, 'Annabelleshire', '628', '6616 Maud Prairie\nEast Gregory, LA 66535-6600', NULL, 8, 'Possimus aliquam totam quia dicta et tempore reiciendis. Id quia et quibusdam. Aut non eum ut ut. Modi quia magni perspiciatis et sit consectetur.', '-82.164845', '2.354193', 10, NULL, NULL, 'publish', '2023-12-13 01:01:45', '2023-12-13 01:01:45', NULL),
(5, 'Port Emmittberg', '153', '85028 VonRueden Loaf Suite 547\nPort Gabriellechester, OR 96872', NULL, 4, 'Ex quia ut ut molestias et. Nihil id optio magnam harum esse. Cupiditate accusantium voluptas cupiditate blanditiis non.', '-16.732735', '146.437362', 10, NULL, NULL, 'publish', '2023-12-13 01:01:45', '2023-12-13 01:01:45', NULL),
(6, 'South Kattieland', '660', '409 Ibrahim Ports Apt. 300\nEast Tianna, AK 24166', NULL, 2, 'Eligendi commodi quia deserunt sapiente. Impedit dolorum eius quis nobis. Aliquam perferendis consectetur aut.', '35.96361', '-2.347708', 9, NULL, NULL, 'publish', '2023-12-13 01:01:45', '2023-12-13 01:01:45', NULL),
(7, 'New Goldaborough', '889', '2657 Cindy Haven Apt. 434\nLake Gracie, NY 41951-8773', NULL, 7, 'Quam quaerat repudiandae totam temporibus voluptates. Rerum labore ea sed recusandae. Ipsam quae laudantium atque voluptates sint qui quos.', '-37.273892', '-16.991108', 8, NULL, NULL, 'publish', '2023-12-13 01:01:45', '2023-12-13 01:01:45', NULL),
(8, 'Ullrichville', '977', '4670 Turner Forks\nEast Elodystad, SD 23802', NULL, 7, 'Ut dolore quo soluta ut et similique. Et illum sint sed labore aperiam facere.', '76.233436', '-71.61851', 9, NULL, NULL, 'publish', '2023-12-13 01:01:45', '2023-12-13 01:01:45', NULL),
(9, 'New Samirberg', '407', '2493 Turcotte Roads Suite 124\nSouth Sydnieborough, AZ 52168-3617', NULL, 6, 'Sunt sit natus qui quam id. Veniam sit delectus deserunt. Modi delectus atque totam tempora libero dolores ipsum. Laborum ut aliquid autem nobis magni.', '40.027601', '4.657611', 9, NULL, NULL, 'publish', '2023-12-13 01:01:45', '2023-12-13 01:01:45', NULL),
(10, 'East Annettaside', '441', '40868 Hills Plains\nSouth Bryce, MA 59697', NULL, 8, 'Repudiandae sed nam magni. Iste minus sapiente officiis officia consequuntur et dolore. Repellendus explicabo perspiciatis non est corrupti eum eum. Fugit quia nesciunt omnis et quos voluptatibus.', '-47.960397', '117.328536', 10, NULL, NULL, 'publish', '2023-12-13 01:01:45', '2023-12-13 01:01:45', NULL),
(11, 'Fisherfurt', '667', '75035 Morissette Curve\nEast Gwendolynside, NE 13965', NULL, 2, 'Quaerat velit architecto quam aut. Blanditiis ipsam voluptates et amet dolor a. Impedit vel rerum sed ea cum molestiae quisquam. Voluptatem tempora aut sunt esse rerum modi nulla.', '-26.403028', '16.187042', 8, NULL, NULL, 'publish', '2023-12-13 01:01:45', '2023-12-13 01:01:45', NULL),
(12, 'Port Kevon', '328', '510 Cade Lakes Suite 040\nSouth Delfina, IA 25960', NULL, 5, 'Fugit distinctio harum earum et sunt. Veniam ab fuga adipisci aut non non. Quis cumque quia est quia sit. Et eaque sint enim qui nostrum. Et non aut quidem ipsam.', '80.532518', '-165.029665', 10, NULL, NULL, 'publish', '2023-12-13 01:01:45', '2023-12-13 01:01:45', NULL),
(13, 'South Jolie', '50', '92155 Garry Brook Apt. 313\nWeimannborough, MI 18675-2328', NULL, 2, 'Earum aperiam asperiores id laudantium qui. Maiores eos quia quae est qui quidem animi.', '9.459696', '-113.299679', 9, NULL, NULL, 'publish', '2023-12-13 01:01:45', '2023-12-13 01:01:45', NULL),
(14, 'New Zulaburgh', '898', '6196 Rohan Locks\nLake Milo, AZ 32417', NULL, 5, 'Consequatur officia porro est saepe. Molestias ut fuga dolorum aliquam sunt illum. Dolor perferendis esse ut laboriosam harum exercitationem.', '-47.634299', '-10.561494', 8, NULL, NULL, 'publish', '2023-12-13 01:01:45', '2023-12-13 01:01:45', NULL),
(15, 'North Deronshire', '994', '2112 Koelpin Corners Apt. 078\nStrosinhaven, CO 62920', NULL, 9, 'Qui eaque corrupti neque aut rerum cumque odit. Ullam cupiditate molestias doloribus maxime modi repellendus. Quam eaque facere quo dolor voluptatibus.', '-29.498729', '-30.127725', 10, NULL, NULL, 'publish', '2023-12-13 01:01:45', '2023-12-13 01:01:45', NULL),
(16, 'West Marionmouth', '914', '37729 Cathy Prairie Suite 713\nGorczanychester, UT 65619', NULL, 10, 'Tenetur perspiciatis vero atque a qui quo sed sed. Minima sit necessitatibus vel dignissimos est. Autem nihil numquam et quisquam laborum magni quo.', '24.002599', '-81.897566', 10, NULL, NULL, 'publish', '2023-12-13 01:01:45', '2023-12-13 01:01:45', NULL),
(17, 'Buckridgeview', '518', '7731 Eliezer Forge\nDejahland, SD 17390-0504', NULL, 2, 'Ipsa quidem tempora dolorum minus sit occaecati. Excepturi quibusdam rerum assumenda qui est. Sapiente adipisci laboriosam et rem non voluptatem corporis quia.', '-40.797814', '-53.853507', 9, NULL, NULL, 'publish', '2023-12-13 01:01:45', '2023-12-13 01:01:45', NULL),
(18, 'Eulamouth', '44', '52819 Hirthe Skyway\nIsomchester, MT 61538-1577', NULL, 8, 'Facere aliquam quis soluta illo. Qui omnis minima eum aut rem nobis. Sint ea corporis in iste laudantium repellendus. Quaerat voluptas et repudiandae incidunt quae ut.', '-21.687555', '-34.148203', 10, NULL, NULL, 'publish', '2023-12-13 01:01:45', '2023-12-13 01:01:45', NULL),
(19, 'New Ottoland', '919', '961 Greenfelder Station Suite 537\nEast Gianni, MD 12995-6279', NULL, 8, 'Tempore non reprehenderit dolor totam quia quis ut. Sed magni doloremque quia dolores ut et repellat. Aperiam nihil veritatis ex est adipisci quos.', '11.482478', '-96.08644', 10, NULL, NULL, 'publish', '2023-12-13 01:01:45', '2023-12-13 01:01:45', NULL),
(20, 'Marianaport', '432', '13038 Yundt Court\nNew Juanita, SD 34164-3842', NULL, 2, 'Cupiditate pariatur ut iusto aliquam. Voluptas distinctio dolorem unde consectetur laboriosam soluta. Aut totam est nihil voluptas quo. Voluptatum provident qui labore quia eaque.', '-61.023122', '-41.947797', 9, NULL, NULL, 'publish', '2023-12-13 01:01:45', '2023-12-13 01:01:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bravo_attrs`
--

DROP TABLE IF EXISTS `bravo_attrs`;
CREATE TABLE IF NOT EXISTS `bravo_attrs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `service` varchar(50) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `display_type` varchar(255) DEFAULT NULL,
  `hide_in_single` tinyint(4) DEFAULT NULL,
  `hide_in_filter_search` tinyint(4) DEFAULT NULL,
  `position` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_attrs`
--

INSERT INTO `bravo_attrs` (`id`, `name`, `slug`, `service`, `create_user`, `update_user`, `created_at`, `updated_at`, `deleted_at`, `display_type`, `hide_in_single`, `hide_in_filter_search`, `position`) VALUES
(1, 'Travel Styles', 'travel-styles', 'tour', NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38', NULL, NULL, NULL, NULL, NULL),
(2, 'Facilities', 'facilities', 'tour', NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38', NULL, NULL, NULL, NULL, NULL),
(3, 'Space Type', 'space-type', 'space', NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39', NULL, NULL, NULL, NULL, NULL),
(4, 'Amenities', 'amenities', 'space', NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39', NULL, NULL, NULL, NULL, NULL),
(5, 'Property type', 'property-type', 'hotel', NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40', NULL, NULL, NULL, NULL, NULL),
(6, 'Facilities', 'facilities-1', 'hotel', NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41', NULL, NULL, NULL, NULL, NULL),
(7, 'Hotel Service', 'hotel-service', 'hotel', NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41', NULL, NULL, NULL, NULL, NULL),
(8, 'Room Amenities', 'room-amenities', 'hotel_room', NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41', NULL, NULL, NULL, NULL, NULL),
(9, 'Car Type', 'car-type', 'car', NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43', NULL, NULL, 1, NULL, NULL),
(10, 'Car Features', 'car-features', 'car', NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43', NULL, NULL, NULL, NULL, NULL),
(11, 'Event Type', 'event-type', 'event', NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44', NULL, NULL, NULL, NULL, NULL),
(12, 'Flight Type', 'flight-type', 'flight', NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45', NULL, NULL, NULL, NULL, NULL),
(13, 'Inflight Experience', 'inflight-experience', 'flight', NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45', NULL, NULL, NULL, NULL, NULL),
(14, 'Boat Type', 'boat-type', 'boat', NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49', NULL, NULL, 1, NULL, NULL),
(15, 'Amenities', 'amenities-1', 'boat', NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bravo_attrs_translations`
--

DROP TABLE IF EXISTS `bravo_attrs_translations`;
CREATE TABLE IF NOT EXISTS `bravo_attrs_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `origin_id` bigint(20) DEFAULT NULL,
  `locale` varchar(10) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bravo_attrs_translations_origin_id_locale_unique` (`origin_id`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_boats`
--

DROP TABLE IF EXISTS `bravo_boats`;
CREATE TABLE IF NOT EXISTS `bravo_boats` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `content` text DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `banner_image_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `map_lat` varchar(20) DEFAULT NULL,
  `map_lng` varchar(20) DEFAULT NULL,
  `map_zoom` int(11) DEFAULT NULL,
  `is_featured` tinyint(4) DEFAULT NULL,
  `gallery` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `faqs` text DEFAULT NULL,
  `number` tinyint(4) DEFAULT NULL,
  `price_per_hour` decimal(12,2) DEFAULT NULL,
  `price_per_day` decimal(12,2) DEFAULT NULL,
  `min_price` decimal(12,2) DEFAULT NULL,
  `enable_extra_price` tinyint(4) DEFAULT NULL,
  `extra_price` text DEFAULT NULL,
  `max_guest` int(11) DEFAULT NULL,
  `cabin` int(11) DEFAULT NULL,
  `length` varchar(255) DEFAULT NULL,
  `speed` varchar(255) DEFAULT NULL,
  `specs` text DEFAULT NULL,
  `cancel_policy` text DEFAULT NULL,
  `terms_information` text DEFAULT NULL,
  `review_score` decimal(2,1) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `default_state` tinyint(4) DEFAULT 1,
  `enable_service_fee` tinyint(4) DEFAULT NULL,
  `service_fee` text DEFAULT NULL,
  `min_day_before_booking` int(11) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `include` text DEFAULT NULL,
  `exclude` text DEFAULT NULL,
  `start_time_booking` varchar(191) DEFAULT NULL,
  `end_time_booking` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bravo_boats_slug_index` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_boats`
--

INSERT INTO `bravo_boats` (`id`, `title`, `slug`, `content`, `image_id`, `banner_image_id`, `location_id`, `address`, `map_lat`, `map_lng`, `map_zoom`, `is_featured`, `gallery`, `video`, `faqs`, `number`, `price_per_hour`, `price_per_day`, `min_price`, `enable_extra_price`, `extra_price`, `max_guest`, `cabin`, `length`, `speed`, `specs`, `cancel_policy`, `terms_information`, `review_score`, `status`, `default_state`, `enable_service_fee`, `service_fee`, `min_day_before_booking`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `include`, `exclude`, `start_time_booking`, `end_time_booking`) VALUES
(1, 'Cruising Yacht', 'cruising-yacht', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 238, 236, 1, 'Arrondissement de Paris', '21.054831', '105.796077', 12, 0, '250,251,252,253,254,255', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the boat can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 1, '100.00', '500.00', '100.00', 1, '[{\"name\":\"Child Toddler Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Infant Child Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"GPS Satellite\",\"price\":\"200\",\"type\":\"one_time\"}]', 8, 5, '19m', '29km/h', '{\"0\":{\"title\":\"Manufacturer\",\"content\":\"Sunrise\"},\"1\":{\"title\":\"Boat skipper\",\"content\":\"Bareboat\"},\"2\":{\"title\":\"Model\",\"content\":\"Summer Breeze\"},\"3\":{\"title\":\"Year\",\"content\":\"2010\"},\"4\":{\"title\":\"Number of crew\",\"content\":\"5\"},\"5\":{\"title\":\"Engines\",\"content\":\"Diesel\"},\"6\":{\"title\":\"Fuel\",\"content\":\"Composite\"}}', 'Full refund up to 4 days prior.', '<p>For Sanitary purposes ONLY, although there is a working toilet and shower, we\'ve deactivated the shower and the toliet is for limited use (urine only..pardon the graphic detail!). This keeps the boat clean and odor-free for all of our guests.&nbsp; Sinks can be used.</p>\r\n<p>Booking is weather pending. Because of the safety factors associated with the boat and inclement weather, If forecast shows rain, strong winds etc, the Host will communicate with Guest 24-48hrs in advance to mutually cancel/reschedule reservation. No smoking in boat cabin.</p>', '4.5', 'publish', 1, NULL, NULL, NULL, 1, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:49', 1, NULL, NULL, NULL, NULL),
(2, 'Summer Breeze', 'summer-breeze', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 239, 236, 1, 'Arrondissement de Paris', '21.039771', '105.777203', 12, 0, '250,251,252,253,254,255', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the boat can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 1, '150.00', '500.00', '150.00', 1, '[{\"name\":\"Child Toddler Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Infant Child Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"GPS Satellite\",\"price\":\"200\",\"type\":\"one_time\"}]', 7, 3, '13m', '29km/h', '{\"0\":{\"title\":\"Manufacturer\",\"content\":\"Sunrise\"},\"1\":{\"title\":\"Boat skipper\",\"content\":\"Bareboat\"},\"2\":{\"title\":\"Model\",\"content\":\"Summer Breeze\"},\"3\":{\"title\":\"Year\",\"content\":\"2010\"},\"4\":{\"title\":\"Number of crew\",\"content\":\"5\"},\"5\":{\"title\":\"Engines\",\"content\":\"Diesel\"},\"6\":{\"title\":\"Fuel\",\"content\":\"Composite\"}}', 'Full refund up to 4 days prior.', '<p>For Sanitary purposes ONLY, although there is a working toilet and shower, we\'ve deactivated the shower and the toliet is for limited use (urine only..pardon the graphic detail!). This keeps the boat clean and odor-free for all of our guests.&nbsp; Sinks can be used.</p>\r\n<p>Booking is weather pending. Because of the safety factors associated with the boat and inclement weather, If forecast shows rain, strong winds etc, the Host will communicate with Guest 24-48hrs in advance to mutually cancel/reschedule reservation. No smoking in boat cabin.</p>', '5.0', 'publish', 1, NULL, NULL, NULL, 1, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:49', 1, NULL, NULL, NULL, NULL),
(3, 'Blue Moon Cruising', 'blue-moon-cruising', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 239, 236, 3, 'Arrondissement de Paris', '21.031217', '105.773698', 12, 0, '250,251,252,253,254,255', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the boat can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 1, '200.00', '800.00', '200.00', 1, '[{\"name\":\"Child Toddler Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Infant Child Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"GPS Satellite\",\"price\":\"200\",\"type\":\"one_time\"}]', 6, 5, '15m', '33km/h', '{\"0\":{\"title\":\"Manufacturer\",\"content\":\"Sunrise\"},\"1\":{\"title\":\"Boat skipper\",\"content\":\"Bareboat\"},\"2\":{\"title\":\"Model\",\"content\":\"Summer Breeze\"},\"3\":{\"title\":\"Year\",\"content\":\"2010\"},\"4\":{\"title\":\"Number of crew\",\"content\":\"5\"},\"5\":{\"title\":\"Engines\",\"content\":\"Diesel\"},\"6\":{\"title\":\"Fuel\",\"content\":\"Composite\"}}', 'Full refund up to 4 days prior.', '<p>For Sanitary purposes ONLY, although there is a working toilet and shower, we\'ve deactivated the shower and the toliet is for limited use (urine only..pardon the graphic detail!). This keeps the boat clean and odor-free for all of our guests.&nbsp; Sinks can be used.</p>\r\n<p>Booking is weather pending. Because of the safety factors associated with the boat and inclement weather, If forecast shows rain, strong winds etc, the Host will communicate with Guest 24-48hrs in advance to mutually cancel/reschedule reservation. No smoking in boat cabin.</p>', '4.0', 'publish', 1, NULL, NULL, NULL, 1, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:49', 1, NULL, NULL, NULL, NULL),
(4, 'BOAT 1992 ALISON', 'boat-1992-alison', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 240, 236, 1, 'Arrondissement de Paris', '21.020161', '105.789655', 12, 0, '250,251,252,253,254,255', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the boat can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 1, '50.00', '300.00', '50.00', 1, '[{\"name\":\"Child Toddler Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Infant Child Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"GPS Satellite\",\"price\":\"200\",\"type\":\"one_time\"}]', 8, 3, '14m', '28km/h', '{\"0\":{\"title\":\"Manufacturer\",\"content\":\"Sunrise\"},\"1\":{\"title\":\"Boat skipper\",\"content\":\"Bareboat\"},\"2\":{\"title\":\"Model\",\"content\":\"Summer Breeze\"},\"3\":{\"title\":\"Year\",\"content\":\"2010\"},\"4\":{\"title\":\"Number of crew\",\"content\":\"5\"},\"5\":{\"title\":\"Engines\",\"content\":\"Diesel\"},\"6\":{\"title\":\"Fuel\",\"content\":\"Composite\"}}', 'Full refund up to 4 days prior.', '<p>For Sanitary purposes ONLY, although there is a working toilet and shower, we\'ve deactivated the shower and the toliet is for limited use (urine only..pardon the graphic detail!). This keeps the boat clean and odor-free for all of our guests.&nbsp; Sinks can be used.</p>\r\n<p>Booking is weather pending. Because of the safety factors associated with the boat and inclement weather, If forecast shows rain, strong winds etc, the Host will communicate with Guest 24-48hrs in advance to mutually cancel/reschedule reservation. No smoking in boat cabin.</p>', '4.3', 'publish', 1, NULL, NULL, NULL, 1, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:49', 1, NULL, NULL, NULL, NULL),
(5, 'Andiamo MX-3', 'andiamo-mx-3', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 241, 236, 5, 'Arrondissement de Paris', '21.014873', '105.794117', 12, 1, '250,251,252,253,254,255', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the boat can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 1, '250.00', '650.00', '250.00', 1, '[{\"name\":\"Child Toddler Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Infant Child Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"GPS Satellite\",\"price\":\"200\",\"type\":\"one_time\"}]', 9, 4, '11m', '31km/h', '{\"0\":{\"title\":\"Manufacturer\",\"content\":\"Sunrise\"},\"1\":{\"title\":\"Boat skipper\",\"content\":\"Bareboat\"},\"2\":{\"title\":\"Model\",\"content\":\"Summer Breeze\"},\"3\":{\"title\":\"Year\",\"content\":\"2010\"},\"4\":{\"title\":\"Number of crew\",\"content\":\"5\"},\"5\":{\"title\":\"Engines\",\"content\":\"Diesel\"},\"6\":{\"title\":\"Fuel\",\"content\":\"Composite\"}}', 'Full refund up to 4 days prior.', '<p>For Sanitary purposes ONLY, although there is a working toilet and shower, we\'ve deactivated the shower and the toliet is for limited use (urine only..pardon the graphic detail!). This keeps the boat clean and odor-free for all of our guests.&nbsp; Sinks can be used.</p>\r\n<p>Booking is weather pending. Because of the safety factors associated with the boat and inclement weather, If forecast shows rain, strong winds etc, the Host will communicate with Guest 24-48hrs in advance to mutually cancel/reschedule reservation. No smoking in boat cabin.</p>', '4.7', 'publish', 1, NULL, NULL, NULL, 1, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:49', 1, NULL, NULL, NULL, NULL),
(6, 'Blue Dream TC-20', 'blue-dream-tc-20', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 242, 236, 1, 'Arrondissement de Paris', '21.018398', '105.812820', 12, 1, '250,251,252,253,254,255', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the boat can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 1, '130.00', '670.00', '130.00', 1, '[{\"name\":\"Child Toddler Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Infant Child Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"GPS Satellite\",\"price\":\"200\",\"type\":\"one_time\"}]', 15, 3, '14m', '29km/h', '{\"0\":{\"title\":\"Manufacturer\",\"content\":\"Sunrise\"},\"1\":{\"title\":\"Boat skipper\",\"content\":\"Bareboat\"},\"2\":{\"title\":\"Model\",\"content\":\"Summer Breeze\"},\"3\":{\"title\":\"Year\",\"content\":\"2010\"},\"4\":{\"title\":\"Number of crew\",\"content\":\"5\"},\"5\":{\"title\":\"Engines\",\"content\":\"Diesel\"},\"6\":{\"title\":\"Fuel\",\"content\":\"Composite\"}}', 'Full refund up to 4 days prior.', '<p>For Sanitary purposes ONLY, although there is a working toilet and shower, we\'ve deactivated the shower and the toliet is for limited use (urine only..pardon the graphic detail!). This keeps the boat clean and odor-free for all of our guests.&nbsp; Sinks can be used.</p>\r\n<p>Booking is weather pending. Because of the safety factors associated with the boat and inclement weather, If forecast shows rain, strong winds etc, the Host will communicate with Guest 24-48hrs in advance to mutually cancel/reschedule reservation. No smoking in boat cabin.</p>', '4.5', 'publish', 1, NULL, NULL, NULL, 4, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:49', 4, NULL, NULL, NULL, NULL),
(7, 'Blue Moon YC-300', 'blue-moon-yc-300', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 243, 236, 1, 'Arrondissement de Paris', '21.025769', '105.829635', 12, 0, '250,251,252,253,254,255', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the boat can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 1, '130.00', '800.00', '130.00', 1, '[{\"name\":\"Child Toddler Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Infant Child Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"GPS Satellite\",\"price\":\"200\",\"type\":\"one_time\"}]', 9, 5, '10m', '29km/h', '{\"0\":{\"title\":\"Manufacturer\",\"content\":\"Sunrise\"},\"1\":{\"title\":\"Boat skipper\",\"content\":\"Bareboat\"},\"2\":{\"title\":\"Model\",\"content\":\"Summer Breeze\"},\"3\":{\"title\":\"Year\",\"content\":\"2010\"},\"4\":{\"title\":\"Number of crew\",\"content\":\"5\"},\"5\":{\"title\":\"Engines\",\"content\":\"Diesel\"},\"6\":{\"title\":\"Fuel\",\"content\":\"Composite\"}}', 'Full refund up to 4 days prior.', '<p>For Sanitary purposes ONLY, although there is a working toilet and shower, we\'ve deactivated the shower and the toliet is for limited use (urine only..pardon the graphic detail!). This keeps the boat clean and odor-free for all of our guests.&nbsp; Sinks can be used.</p>\r\n<p>Booking is weather pending. Because of the safety factors associated with the boat and inclement weather, If forecast shows rain, strong winds etc, the Host will communicate with Guest 24-48hrs in advance to mutually cancel/reschedule reservation. No smoking in boat cabin.</p>', '4.7', 'publish', 1, NULL, NULL, NULL, 6, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:49', 6, NULL, NULL, NULL, NULL),
(8, 'Carpe Diem LA', 'carpe-diem-la', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 244, 236, 1, 'Arrondissement de Paris', '21.017437', '105.831179', 12, 1, '250,251,252,253,254,255', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the boat can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 1, '200.00', '750.00', '200.00', 1, '[{\"name\":\"Child Toddler Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Infant Child Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"GPS Satellite\",\"price\":\"200\",\"type\":\"one_time\"}]', 8, 4, '15m', '34km/h', '{\"0\":{\"title\":\"Manufacturer\",\"content\":\"Sunrise\"},\"1\":{\"title\":\"Boat skipper\",\"content\":\"Bareboat\"},\"2\":{\"title\":\"Model\",\"content\":\"Summer Breeze\"},\"3\":{\"title\":\"Year\",\"content\":\"2010\"},\"4\":{\"title\":\"Number of crew\",\"content\":\"5\"},\"5\":{\"title\":\"Engines\",\"content\":\"Diesel\"},\"6\":{\"title\":\"Fuel\",\"content\":\"Composite\"}}', 'Full refund up to 4 days prior.', '<p>For Sanitary purposes ONLY, although there is a working toilet and shower, we\'ve deactivated the shower and the toliet is for limited use (urine only..pardon the graphic detail!). This keeps the boat clean and odor-free for all of our guests.&nbsp; Sinks can be used.</p>\r\n<p>Booking is weather pending. Because of the safety factors associated with the boat and inclement weather, If forecast shows rain, strong winds etc, the Host will communicate with Guest 24-48hrs in advance to mutually cancel/reschedule reservation. No smoking in boat cabin.</p>', '4.3', 'publish', 1, NULL, NULL, NULL, 5, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:49', 5, NULL, NULL, NULL, NULL);
INSERT INTO `bravo_boats` (`id`, `title`, `slug`, `content`, `image_id`, `banner_image_id`, `location_id`, `address`, `map_lat`, `map_lng`, `map_zoom`, `is_featured`, `gallery`, `video`, `faqs`, `number`, `price_per_hour`, `price_per_day`, `min_price`, `enable_extra_price`, `extra_price`, `max_guest`, `cabin`, `length`, `speed`, `specs`, `cancel_policy`, `terms_information`, `review_score`, `status`, `default_state`, `enable_service_fee`, `service_fee`, `min_day_before_booking`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`, `author_id`, `include`, `exclude`, `start_time_booking`, `end_time_booking`) VALUES
(9, 'Destiny 6', 'destiny-6', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 245, 236, 6, 'Arrondissement de Paris', '21.047879', '105.809731', 12, 1, '250,251,252,253,254,255', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the boat can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 1, '180.00', '400.00', '180.00', 1, '[{\"name\":\"Child Toddler Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Infant Child Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"GPS Satellite\",\"price\":\"200\",\"type\":\"one_time\"}]', 10, 5, '11m', '25km/h', '{\"0\":{\"title\":\"Manufacturer\",\"content\":\"Sunrise\"},\"1\":{\"title\":\"Boat skipper\",\"content\":\"Bareboat\"},\"2\":{\"title\":\"Model\",\"content\":\"Summer Breeze\"},\"3\":{\"title\":\"Year\",\"content\":\"2010\"},\"4\":{\"title\":\"Number of crew\",\"content\":\"5\"},\"5\":{\"title\":\"Engines\",\"content\":\"Diesel\"},\"6\":{\"title\":\"Fuel\",\"content\":\"Composite\"}}', 'Full refund up to 4 days prior.', '<p>For Sanitary purposes ONLY, although there is a working toilet and shower, we\'ve deactivated the shower and the toliet is for limited use (urine only..pardon the graphic detail!). This keeps the boat clean and odor-free for all of our guests.&nbsp; Sinks can be used.</p>\r\n<p>Booking is weather pending. Because of the safety factors associated with the boat and inclement weather, If forecast shows rain, strong winds etc, the Host will communicate with Guest 24-48hrs in advance to mutually cancel/reschedule reservation. No smoking in boat cabin.</p>', '4.3', 'publish', 1, NULL, NULL, NULL, 4, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:49', 4, NULL, NULL, NULL, NULL),
(10, 'Endless Summer W-10', 'endless-summer-w-10', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 246, 236, 7, 'Arrondissement de Paris', '21.025449', '105.804412', 12, 0, '250,251,252,253,254,255', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the boat can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 1, '230.00', '650.00', '230.00', 1, '[{\"name\":\"Child Toddler Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Infant Child Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"GPS Satellite\",\"price\":\"200\",\"type\":\"one_time\"}]', 15, 5, '17m', '25km/h', '{\"0\":{\"title\":\"Manufacturer\",\"content\":\"Sunrise\"},\"1\":{\"title\":\"Boat skipper\",\"content\":\"Bareboat\"},\"2\":{\"title\":\"Model\",\"content\":\"Summer Breeze\"},\"3\":{\"title\":\"Year\",\"content\":\"2010\"},\"4\":{\"title\":\"Number of crew\",\"content\":\"5\"},\"5\":{\"title\":\"Engines\",\"content\":\"Diesel\"},\"6\":{\"title\":\"Fuel\",\"content\":\"Composite\"}}', 'Full refund up to 4 days prior.', '<p>For Sanitary purposes ONLY, although there is a working toilet and shower, we\'ve deactivated the shower and the toliet is for limited use (urine only..pardon the graphic detail!). This keeps the boat clean and odor-free for all of our guests.&nbsp; Sinks can be used.</p>\r\n<p>Booking is weather pending. Because of the safety factors associated with the boat and inclement weather, If forecast shows rain, strong winds etc, the Host will communicate with Guest 24-48hrs in advance to mutually cancel/reschedule reservation. No smoking in boat cabin.</p>', '4.5', 'publish', 1, NULL, NULL, NULL, 6, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:49', 6, NULL, NULL, NULL, NULL),
(11, 'Freedom M2', 'freedom-m2', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 247, 236, 8, 'Arrondissement de Paris', '21.020001', '105.836670', 12, 1, '250,251,252,253,254,255', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the boat can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 1, '50.00', '200.00', '50.00', 1, '[{\"name\":\"Child Toddler Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Infant Child Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"GPS Satellite\",\"price\":\"200\",\"type\":\"one_time\"}]', 13, 5, '18m', '35km/h', '{\"0\":{\"title\":\"Manufacturer\",\"content\":\"Sunrise\"},\"1\":{\"title\":\"Boat skipper\",\"content\":\"Bareboat\"},\"2\":{\"title\":\"Model\",\"content\":\"Summer Breeze\"},\"3\":{\"title\":\"Year\",\"content\":\"2010\"},\"4\":{\"title\":\"Number of crew\",\"content\":\"5\"},\"5\":{\"title\":\"Engines\",\"content\":\"Diesel\"},\"6\":{\"title\":\"Fuel\",\"content\":\"Composite\"}}', 'Full refund up to 4 days prior.', '<p>For Sanitary purposes ONLY, although there is a working toilet and shower, we\'ve deactivated the shower and the toliet is for limited use (urine only..pardon the graphic detail!). This keeps the boat clean and odor-free for all of our guests.&nbsp; Sinks can be used.</p>\r\n<p>Booking is weather pending. Because of the safety factors associated with the boat and inclement weather, If forecast shows rain, strong winds etc, the Host will communicate with Guest 24-48hrs in advance to mutually cancel/reschedule reservation. No smoking in boat cabin.</p>', '4.5', 'publish', 1, NULL, NULL, NULL, 5, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:49', 5, NULL, NULL, NULL, NULL),
(12, 'Ohana 3X', 'ohana-3x', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 248, 236, 3, 'Arrondissement de Paris', '21.051244', '105.777988', 12, 0, '250,251,252,253,254,255', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the boat can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 1, '80.00', '200.00', '80.00', 1, '[{\"name\":\"Child Toddler Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Infant Child Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"GPS Satellite\",\"price\":\"200\",\"type\":\"one_time\"}]', 8, 3, '15m', '33km/h', '{\"0\":{\"title\":\"Manufacturer\",\"content\":\"Sunrise\"},\"1\":{\"title\":\"Boat skipper\",\"content\":\"Bareboat\"},\"2\":{\"title\":\"Model\",\"content\":\"Summer Breeze\"},\"3\":{\"title\":\"Year\",\"content\":\"2010\"},\"4\":{\"title\":\"Number of crew\",\"content\":\"5\"},\"5\":{\"title\":\"Engines\",\"content\":\"Diesel\"},\"6\":{\"title\":\"Fuel\",\"content\":\"Composite\"}}', 'Full refund up to 4 days prior.', '<p>For Sanitary purposes ONLY, although there is a working toilet and shower, we\'ve deactivated the shower and the toliet is for limited use (urine only..pardon the graphic detail!). This keeps the boat clean and odor-free for all of our guests.&nbsp; Sinks can be used.</p>\r\n<p>Booking is weather pending. Because of the safety factors associated with the boat and inclement weather, If forecast shows rain, strong winds etc, the Host will communicate with Guest 24-48hrs in advance to mutually cancel/reschedule reservation. No smoking in boat cabin.</p>', '4.7', 'publish', 1, NULL, NULL, NULL, 6, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:50', 6, NULL, NULL, NULL, NULL),
(13, 'My Way 100', 'my-way-100', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 249, 236, 1, 'Arrondissement de Paris', '21.053326', '105.841475', 12, 0, '250,251,252,253,254,255', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the boat can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 1, '150.00', '300.00', '150.00', 1, '[{\"name\":\"Child Toddler Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Infant Child Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"GPS Satellite\",\"price\":\"200\",\"type\":\"one_time\"}]', 9, 5, '12m', '27km/h', '{\"0\":{\"title\":\"Manufacturer\",\"content\":\"Sunrise\"},\"1\":{\"title\":\"Boat skipper\",\"content\":\"Bareboat\"},\"2\":{\"title\":\"Model\",\"content\":\"Summer Breeze\"},\"3\":{\"title\":\"Year\",\"content\":\"2010\"},\"4\":{\"title\":\"Number of crew\",\"content\":\"5\"},\"5\":{\"title\":\"Engines\",\"content\":\"Diesel\"},\"6\":{\"title\":\"Fuel\",\"content\":\"Composite\"}}', 'Full refund up to 4 days prior.', '<p>For Sanitary purposes ONLY, although there is a working toilet and shower, we\'ve deactivated the shower and the toliet is for limited use (urine only..pardon the graphic detail!). This keeps the boat clean and odor-free for all of our guests.&nbsp; Sinks can be used.</p>\r\n<p>Booking is weather pending. Because of the safety factors associated with the boat and inclement weather, If forecast shows rain, strong winds etc, the Host will communicate with Guest 24-48hrs in advance to mutually cancel/reschedule reservation. No smoking in boat cabin.</p>', '4.3', 'publish', 1, NULL, NULL, NULL, 6, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:50', 6, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bravo_boat_dates`
--

DROP TABLE IF EXISTS `bravo_boat_dates`;
CREATE TABLE IF NOT EXISTS `bravo_boat_dates` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `target_id` bigint(20) DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `price_per_hour` decimal(12,2) DEFAULT NULL,
  `price_per_day` decimal(12,2) DEFAULT NULL,
  `number` tinyint(4) DEFAULT NULL,
  `active` tinyint(4) DEFAULT 0,
  `note_to_customer` text DEFAULT NULL,
  `note_to_admin` text DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_boat_term`
--

DROP TABLE IF EXISTS `bravo_boat_term`;
CREATE TABLE IF NOT EXISTS `bravo_boat_term` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` int(11) DEFAULT NULL,
  `target_id` int(11) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_boat_term`
--

INSERT INTO `bravo_boat_term` (`id`, `term_id`, `target_id`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 92, 1, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(2, 94, 1, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(3, 95, 1, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(4, 96, 1, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(5, 97, 1, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(6, 98, 1, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(7, 91, 2, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(8, 92, 2, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(9, 93, 2, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(10, 94, 2, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(11, 95, 2, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(12, 96, 2, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(13, 97, 2, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(14, 98, 2, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(15, 92, 3, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(16, 95, 3, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(17, 96, 3, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(18, 97, 3, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(19, 98, 3, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(20, 91, 4, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(21, 93, 4, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(22, 94, 4, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(23, 95, 4, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(24, 96, 4, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(25, 98, 4, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(26, 91, 5, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(27, 94, 5, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(28, 95, 5, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(29, 96, 5, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(30, 98, 5, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(31, 91, 6, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(32, 92, 6, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(33, 94, 6, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(34, 95, 6, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(35, 96, 6, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(36, 97, 6, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(37, 98, 6, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(38, 92, 7, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(39, 93, 7, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(40, 94, 7, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(41, 95, 7, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(42, 96, 7, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(43, 97, 7, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(44, 98, 7, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(45, 91, 8, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(46, 92, 8, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(47, 93, 8, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(48, 94, 8, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(49, 95, 8, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(50, 97, 8, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(51, 91, 9, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(52, 92, 9, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(53, 93, 9, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(54, 94, 9, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(55, 95, 9, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(56, 96, 9, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(57, 97, 9, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(58, 98, 9, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(59, 91, 10, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(60, 93, 10, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(61, 94, 10, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(62, 95, 10, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(63, 96, 10, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(64, 97, 10, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(65, 98, 10, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(66, 91, 11, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(67, 92, 11, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(68, 94, 11, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(69, 95, 11, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(70, 96, 11, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(71, 97, 11, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(72, 98, 11, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(73, 92, 12, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(74, 94, 12, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(75, 97, 12, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(76, 98, 12, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(77, 91, 13, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(78, 92, 13, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(79, 93, 13, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(80, 94, 13, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(81, 95, 13, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(82, 96, 13, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(83, 97, 13, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(84, 98, 13, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(85, 99, 1, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(86, 103, 1, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(87, 99, 2, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(88, 100, 2, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(89, 101, 2, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(90, 103, 2, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(91, 99, 3, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(92, 100, 3, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(93, 101, 3, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(94, 102, 3, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(95, 103, 3, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(96, 104, 3, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(97, 100, 4, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(98, 101, 4, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(99, 102, 4, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(100, 103, 4, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(101, 104, 4, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(102, 99, 5, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(103, 100, 5, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(104, 101, 5, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(105, 102, 5, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(106, 104, 5, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(107, 99, 6, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(108, 100, 6, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(109, 101, 6, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(110, 102, 6, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(111, 104, 6, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(112, 101, 7, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(113, 102, 7, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(114, 103, 7, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(115, 104, 7, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(116, 99, 8, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(117, 100, 8, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(118, 101, 8, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(119, 102, 8, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(120, 99, 9, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(121, 101, 9, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(122, 104, 9, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(123, 99, 10, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(124, 100, 10, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(125, 101, 10, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(126, 102, 10, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(127, 99, 11, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(128, 101, 11, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(129, 102, 11, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(130, 103, 11, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(131, 100, 12, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(132, 101, 12, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(133, 102, 12, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(134, 103, 12, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(135, 99, 13, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(136, 101, 13, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(137, 102, 13, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(138, 103, 13, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(139, 104, 13, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49');

-- --------------------------------------------------------

--
-- Table structure for table `bravo_boat_translations`
--

DROP TABLE IF EXISTS `bravo_boat_translations`;
CREATE TABLE IF NOT EXISTS `bravo_boat_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `faqs` text DEFAULT NULL,
  `specs` text DEFAULT NULL,
  `cancel_policy` text DEFAULT NULL,
  `terms_information` text DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `include` text DEFAULT NULL,
  `exclude` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bravo_boat_translations_locale_index` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_bookings`
--

DROP TABLE IF EXISTS `bravo_bookings`;
CREATE TABLE IF NOT EXISTS `bravo_bookings` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(64) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `gateway` varchar(50) DEFAULT NULL,
  `object_id` int(11) DEFAULT NULL,
  `object_model` varchar(255) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `total_guests` int(11) DEFAULT NULL,
  `currency` varchar(5) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `deposit` decimal(10,2) DEFAULT NULL,
  `deposit_type` varchar(30) DEFAULT NULL,
  `commission` decimal(10,2) DEFAULT NULL,
  `commission_type` varchar(150) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `customer_notes` text DEFAULT NULL,
  `vendor_service_fee_amount` decimal(8,2) DEFAULT NULL,
  `vendor_service_fee` text DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `buyer_fees` text DEFAULT NULL,
  `total_before_fees` decimal(10,2) DEFAULT NULL,
  `paid_vendor` tinyint(4) DEFAULT NULL,
  `object_child_id` bigint(20) DEFAULT NULL,
  `number` smallint(6) DEFAULT NULL,
  `paid` decimal(10,2) DEFAULT NULL,
  `pay_now` decimal(10,2) DEFAULT NULL,
  `wallet_credit_used` double DEFAULT NULL,
  `wallet_total_used` double DEFAULT NULL,
  `wallet_transaction_id` bigint(20) DEFAULT NULL,
  `is_refund_wallet` tinyint(4) DEFAULT NULL,
  `is_paid` tinyint(4) DEFAULT NULL,
  `total_before_discount` decimal(10,2) DEFAULT 0.00,
  `coupon_amount` decimal(10,2) DEFAULT 0.00,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_booking_coupons`
--

DROP TABLE IF EXISTS `bravo_booking_coupons`;
CREATE TABLE IF NOT EXISTS `bravo_booking_coupons` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `booking_id` bigint(20) DEFAULT NULL,
  `booking_status` varchar(30) DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_model` varchar(191) DEFAULT NULL,
  `coupon_code` varchar(191) DEFAULT NULL,
  `coupon_amount` decimal(10,2) DEFAULT 0.00,
  `coupon_data` text DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_booking_meta`
--

DROP TABLE IF EXISTS `bravo_booking_meta`;
CREATE TABLE IF NOT EXISTS `bravo_booking_meta` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `booking_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `val` text DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_booking_passengers`
--

DROP TABLE IF EXISTS `bravo_booking_passengers`;
CREATE TABLE IF NOT EXISTS `bravo_booking_passengers` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `flight_id` int(11) DEFAULT NULL,
  `flight_seat_id` int(11) DEFAULT NULL,
  `booking_id` int(11) DEFAULT NULL,
  `seat_type` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `first_name` varchar(191) DEFAULT NULL,
  `last_name` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `id_card` varchar(191) DEFAULT NULL,
  `object_model` varchar(30) NOT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bravo_booking_passengers_booking_id_index` (`booking_id`),
  KEY `bravo_booking_passengers_object_model_object_id_index` (`object_model`,`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_booking_payments`
--

DROP TABLE IF EXISTS `bravo_booking_payments`;
CREATE TABLE IF NOT EXISTS `bravo_booking_payments` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(64) DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_model` varchar(40) DEFAULT NULL,
  `meta` text DEFAULT NULL,
  `booking_id` int(11) DEFAULT NULL,
  `payment_gateway` varchar(50) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `converted_amount` decimal(10,2) DEFAULT NULL,
  `converted_currency` varchar(10) DEFAULT NULL,
  `exchange_rate` decimal(10,2) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `logs` text DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `wallet_transaction_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_booking_payment_meta`
--

DROP TABLE IF EXISTS `bravo_booking_payment_meta`;
CREATE TABLE IF NOT EXISTS `bravo_booking_payment_meta` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `payment_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `val` text DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bravo_booking_payment_meta_payment_id_name_index` (`payment_id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_booking_time_slots`
--

DROP TABLE IF EXISTS `bravo_booking_time_slots`;
CREATE TABLE IF NOT EXISTS `bravo_booking_time_slots` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `booking_id` int(11) DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_model` varchar(40) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `duration` double(255,2) DEFAULT NULL,
  `duration_unit` varchar(255) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_cars`
--

DROP TABLE IF EXISTS `bravo_cars`;
CREATE TABLE IF NOT EXISTS `bravo_cars` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `content` text DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `banner_image_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `map_lat` varchar(20) DEFAULT NULL,
  `map_lng` varchar(20) DEFAULT NULL,
  `map_zoom` int(11) DEFAULT NULL,
  `is_featured` tinyint(4) DEFAULT NULL,
  `gallery` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `faqs` text DEFAULT NULL,
  `number` tinyint(4) DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `sale_price` decimal(12,2) DEFAULT NULL,
  `is_instant` tinyint(4) DEFAULT 0,
  `enable_extra_price` tinyint(4) DEFAULT NULL,
  `extra_price` text DEFAULT NULL,
  `discount_by_days` text DEFAULT NULL,
  `passenger` tinyint(4) DEFAULT 0,
  `gear` varchar(191) DEFAULT '0',
  `baggage` tinyint(4) DEFAULT 0,
  `door` tinyint(4) DEFAULT 0,
  `status` varchar(50) DEFAULT NULL,
  `default_state` tinyint(4) DEFAULT 1,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `review_score` decimal(2,1) DEFAULT NULL,
  `enable_service_fee` tinyint(4) DEFAULT NULL,
  `service_fee` text DEFAULT NULL,
  `specifications` text DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `ical_import_url` varchar(191) DEFAULT NULL,
  `min_day_before_booking` int(11) DEFAULT NULL,
  `min_day_stays` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bravo_cars_slug_index` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_cars`
--

INSERT INTO `bravo_cars` (`id`, `title`, `slug`, `content`, `image_id`, `banner_image_id`, `location_id`, `address`, `map_lat`, `map_lng`, `map_zoom`, `is_featured`, `gallery`, `video`, `faqs`, `number`, `price`, `sale_price`, `is_instant`, `enable_extra_price`, `extra_price`, `discount_by_days`, `passenger`, `gear`, `baggage`, `door`, `status`, `default_state`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`, `review_score`, `enable_service_fee`, `service_fee`, `specifications`, `author_id`, `ical_import_url`, `min_day_before_booking`, `min_day_stays`) VALUES
(1, 'BMW-X6-facelift', 'bmw-x6-facelift', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 142, 135, 1, 'Arrondissement de Paris', '21.054831', '105.796077', 12, 1, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 2, '500.00', '136.00', 1, 1, '[{\"name\":\"Child Toddler Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Infant Child Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"GPS Satellite\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 7, 'Auto', 3, 4, 'publish', 1, NULL, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:43', '4.3', NULL, NULL, '[{\"name\":\"Make\",\"desc\":\"Honda\"},{\"name\":\"Model\",\"desc\":\"Class C\"},{\"name\":\"Made Year\",\"desc\":\"2019\"},{\"name\":\"Mileage\",\"desc\":\"120,556\"},{\"name\":\"VIN\",\"desc\":\"KLJLKJLKJFDF1\"},{\"name\":\"Version\",\"desc\":\"2.0 Turbo\"},{\"name\":\"Horsepower (hp)\",\"desc\":\"200\"},{\"name\":\"Transmission\",\"desc\":\"Auto\"},{\"name\":\"Condition\",\"desc\":\"New\"},{\"name\":\"Drive\",\"desc\":\"Rear\"},{\"name\":\"Warranty\",\"desc\":\"Yes\"}]', 1, NULL, NULL, NULL),
(2, '2019 Honda Clarity', '2019-honda-clarityt-1', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 143, 135, 1, 'Arrondissement de Paris', '21.039771', '105.777203', 12, 1, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 3, '300.00', '0.00', 0, 1, '[{\"name\":\"Child Toddler Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Infant Child Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"GPS Satellite\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 10, 'Auto', 9, 4, 'publish', 1, NULL, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:43', '4.7', NULL, NULL, '[{\"name\":\"Make\",\"desc\":\"Honda\"},{\"name\":\"Model\",\"desc\":\"Class C\"},{\"name\":\"Made Year\",\"desc\":\"2019\"},{\"name\":\"Mileage\",\"desc\":\"120,556\"},{\"name\":\"VIN\",\"desc\":\"KLJLKJLKJFDF1\"},{\"name\":\"Version\",\"desc\":\"2.0 Turbo\"},{\"name\":\"Horsepower (hp)\",\"desc\":\"200\"},{\"name\":\"Transmission\",\"desc\":\"Auto\"},{\"name\":\"Condition\",\"desc\":\"New\"},{\"name\":\"Drive\",\"desc\":\"Rear\"},{\"name\":\"Warranty\",\"desc\":\"Yes\"}]', 1, NULL, NULL, NULL),
(3, '2019 Honda Clarity', '2019-honda-clarityt', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 143, 135, 3, 'Arrondissement de Paris', '21.031217', '105.773698', 12, 1, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 1, '300.00', '0.00', 1, 1, '[{\"name\":\"Child Toddler Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Infant Child Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"GPS Satellite\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 10, 'Auto', 6, 4, 'publish', 1, NULL, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:43', '4.5', NULL, NULL, '[{\"name\":\"Make\",\"desc\":\"Honda\"},{\"name\":\"Model\",\"desc\":\"Class C\"},{\"name\":\"Made Year\",\"desc\":\"2019\"},{\"name\":\"Mileage\",\"desc\":\"120,556\"},{\"name\":\"VIN\",\"desc\":\"KLJLKJLKJFDF1\"},{\"name\":\"Version\",\"desc\":\"2.0 Turbo\"},{\"name\":\"Horsepower (hp)\",\"desc\":\"200\"},{\"name\":\"Transmission\",\"desc\":\"Auto\"},{\"name\":\"Condition\",\"desc\":\"New\"},{\"name\":\"Drive\",\"desc\":\"Rear\"},{\"name\":\"Warranty\",\"desc\":\"Yes\"}]', 1, NULL, NULL, NULL),
(4, '2019 BMW M6 Gran Coupe', '2019-bmw-m6-gran-coupe', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 144, 135, 1, 'Arrondissement de Paris', '21.020161', '105.789655', 12, 0, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 5, '300.00', '0.00', 1, 1, '[{\"name\":\"Child Toddler Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Infant Child Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"GPS Satellite\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 8, 'Auto', 10, 4, 'publish', 1, NULL, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:43', '4.7', NULL, NULL, '[{\"name\":\"Make\",\"desc\":\"Honda\"},{\"name\":\"Model\",\"desc\":\"Class C\"},{\"name\":\"Made Year\",\"desc\":\"2019\"},{\"name\":\"Mileage\",\"desc\":\"120,556\"},{\"name\":\"VIN\",\"desc\":\"KLJLKJLKJFDF1\"},{\"name\":\"Version\",\"desc\":\"2.0 Turbo\"},{\"name\":\"Horsepower (hp)\",\"desc\":\"200\"},{\"name\":\"Transmission\",\"desc\":\"Auto\"},{\"name\":\"Condition\",\"desc\":\"New\"},{\"name\":\"Drive\",\"desc\":\"Rear\"},{\"name\":\"Warranty\",\"desc\":\"Yes\"}]', 1, NULL, NULL, NULL),
(5, '2019 Audi S3', '2019-audi-s3', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 145, 135, 5, 'Arrondissement de Paris', '21.014873', '105.794117', 12, 0, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 5, '300.00', '0.00', 0, 1, '[{\"name\":\"Child Toddler Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Infant Child Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"GPS Satellite\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 4, 'Auto', 7, 4, 'publish', 1, NULL, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:43', '4.7', NULL, NULL, '[{\"name\":\"Make\",\"desc\":\"Honda\"},{\"name\":\"Model\",\"desc\":\"Class C\"},{\"name\":\"Made Year\",\"desc\":\"2019\"},{\"name\":\"Mileage\",\"desc\":\"120,556\"},{\"name\":\"VIN\",\"desc\":\"KLJLKJLKJFDF1\"},{\"name\":\"Version\",\"desc\":\"2.0 Turbo\"},{\"name\":\"Horsepower (hp)\",\"desc\":\"200\"},{\"name\":\"Transmission\",\"desc\":\"Auto\"},{\"name\":\"Condition\",\"desc\":\"New\"},{\"name\":\"Drive\",\"desc\":\"Rear\"},{\"name\":\"Warranty\",\"desc\":\"Yes\"}]', 1, NULL, NULL, NULL),
(6, 'Vinfast Fadil Plus', 'vinfast-fadil-plus', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 146, 135, 1, 'Arrondissement de Paris', '21.018398', '105.812820', 12, 0, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 1, '400.00', '0.00', 0, 1, '[{\"name\":\"Child Toddler Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Infant Child Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"GPS Satellite\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 6, 'Auto', 6, 4, 'publish', 1, NULL, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:44', '4.8', NULL, NULL, '[{\"name\":\"Make\",\"desc\":\"Honda\"},{\"name\":\"Model\",\"desc\":\"Class C\"},{\"name\":\"Made Year\",\"desc\":\"2019\"},{\"name\":\"Mileage\",\"desc\":\"120,556\"},{\"name\":\"VIN\",\"desc\":\"KLJLKJLKJFDF1\"},{\"name\":\"Version\",\"desc\":\"2.0 Turbo\"},{\"name\":\"Horsepower (hp)\",\"desc\":\"200\"},{\"name\":\"Transmission\",\"desc\":\"Auto\"},{\"name\":\"Condition\",\"desc\":\"New\"},{\"name\":\"Drive\",\"desc\":\"Rear\"},{\"name\":\"Warranty\",\"desc\":\"Yes\"}]', 2, NULL, NULL, NULL),
(7, 'Mercedes Benz', 'mercedes-benz', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 147, 135, 1, 'Arrondissement de Paris', '21.025769', '105.829635', 12, 0, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 4, '200.00', '0.00', 0, 1, '[{\"name\":\"Child Toddler Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Infant Child Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"GPS Satellite\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 7, 'Auto', 10, 4, 'publish', 1, NULL, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:44', '4.4', NULL, NULL, '[{\"name\":\"Make\",\"desc\":\"Honda\"},{\"name\":\"Model\",\"desc\":\"Class C\"},{\"name\":\"Made Year\",\"desc\":\"2019\"},{\"name\":\"Mileage\",\"desc\":\"120,556\"},{\"name\":\"VIN\",\"desc\":\"KLJLKJLKJFDF1\"},{\"name\":\"Version\",\"desc\":\"2.0 Turbo\"},{\"name\":\"Horsepower (hp)\",\"desc\":\"200\"},{\"name\":\"Transmission\",\"desc\":\"Auto\"},{\"name\":\"Condition\",\"desc\":\"New\"},{\"name\":\"Drive\",\"desc\":\"Rear\"},{\"name\":\"Warranty\",\"desc\":\"Yes\"}]', 2, NULL, NULL, NULL),
(8, 'Vinfast Lux SA2.0 Plus', 'vinfast-lux-sa20-plus', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 148, 135, 1, 'Arrondissement de Paris', '21.017437', '105.831179', 12, 0, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 3, '600.00', '0.00', 0, 1, '[{\"name\":\"Child Toddler Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Infant Child Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"GPS Satellite\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 8, 'Auto', 4, 4, 'publish', 1, NULL, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:44', '4.7', NULL, NULL, '[{\"name\":\"Make\",\"desc\":\"Honda\"},{\"name\":\"Model\",\"desc\":\"Class C\"},{\"name\":\"Made Year\",\"desc\":\"2019\"},{\"name\":\"Mileage\",\"desc\":\"120,556\"},{\"name\":\"VIN\",\"desc\":\"KLJLKJLKJFDF1\"},{\"name\":\"Version\",\"desc\":\"2.0 Turbo\"},{\"name\":\"Horsepower (hp)\",\"desc\":\"200\"},{\"name\":\"Transmission\",\"desc\":\"Auto\"},{\"name\":\"Condition\",\"desc\":\"New\"},{\"name\":\"Drive\",\"desc\":\"Rear\"},{\"name\":\"Warranty\",\"desc\":\"Yes\"}]', 2, NULL, NULL, NULL),
(9, 'Honda Civic', 'honda-civic', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 149, 135, 6, 'Arrondissement de Paris', '21.047879', '105.809731', 12, 1, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 1, '450.00', '0.00', 1, 1, '[{\"name\":\"Child Toddler Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Infant Child Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"GPS Satellite\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 3, 'Auto', 10, 4, 'publish', 1, NULL, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:44', '4.0', NULL, NULL, NULL, 2, NULL, NULL, NULL);
INSERT INTO `bravo_cars` (`id`, `title`, `slug`, `content`, `image_id`, `banner_image_id`, `location_id`, `address`, `map_lat`, `map_lng`, `map_zoom`, `is_featured`, `gallery`, `video`, `faqs`, `number`, `price`, `sale_price`, `is_instant`, `enable_extra_price`, `extra_price`, `discount_by_days`, `passenger`, `gear`, `baggage`, `door`, `status`, `default_state`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`, `review_score`, `enable_service_fee`, `service_fee`, `specifications`, `author_id`, `ical_import_url`, `min_day_before_booking`, `min_day_stays`) VALUES
(10, 'Toyota Prius Plus', 'toyota-prius-plus', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 150, 135, 7, 'Arrondissement de Paris', '21.025449', '105.804412', 12, 0, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 1, '199.00', '0.00', 1, 1, '[{\"name\":\"Child Toddler Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Infant Child Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"GPS Satellite\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 9, 'Auto', 5, 4, 'publish', 1, NULL, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:44', '4.8', NULL, NULL, NULL, 2, NULL, NULL, NULL),
(11, 'Vinfast Lux V8 (SUV)', 'vinfast-lux-v8-suv', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 151, 135, 8, 'Arrondissement de Paris', '21.020001', '105.836670', 12, 1, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 5, '250.00', '0.00', 0, 1, '[{\"name\":\"Child Toddler Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Infant Child Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"GPS Satellite\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 6, 'Auto', 4, 4, 'publish', 1, NULL, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:44', '4.7', NULL, NULL, NULL, 2, NULL, NULL, NULL),
(12, 'Vinfast Lux A2.0 Plus', 'vinfast-lux-a20-plus', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 152, 135, 3, 'Arrondissement de Paris', '21.051244', '105.777988', 12, 0, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 4, '350.00', '0.00', 0, 1, '[{\"name\":\"Child Toddler Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Infant Child Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"GPS Satellite\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 4, 'Auto', 4, 4, 'publish', 1, NULL, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:44', '4.2', NULL, NULL, '[{\"name\":\"Make\",\"desc\":\"Honda\"},{\"name\":\"Model\",\"desc\":\"Class C\"},{\"name\":\"Made Year\",\"desc\":\"2019\"},{\"name\":\"Mileage\",\"desc\":\"120,556\"},{\"name\":\"VIN\",\"desc\":\"KLJLKJLKJFDF1\"},{\"name\":\"Version\",\"desc\":\"2.0 Turbo\"},{\"name\":\"Horsepower (hp)\",\"desc\":\"200\"},{\"name\":\"Transmission\",\"desc\":\"Auto\"},{\"name\":\"Condition\",\"desc\":\"New\"},{\"name\":\"Drive\",\"desc\":\"Rear\"},{\"name\":\"Warranty\",\"desc\":\"Yes\"}]', 2, NULL, NULL, NULL),
(13, 'Vinfast Fadil Standard', 'vinfast-fadil-standard', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 153, 135, 1, 'Arrondissement de Paris', '21.053326', '105.841475', 12, 0, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 5, '400.00', '0.00', 0, 1, '[{\"name\":\"Child Toddler Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Infant Child Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"GPS Satellite\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 3, 'Auto', 10, 4, 'publish', 1, NULL, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:44', '4.0', NULL, NULL, '[{\"name\":\"Make\",\"desc\":\"Honda\"},{\"name\":\"Model\",\"desc\":\"Class C\"},{\"name\":\"Made Year\",\"desc\":\"2019\"},{\"name\":\"Mileage\",\"desc\":\"120,556\"},{\"name\":\"VIN\",\"desc\":\"KLJLKJLKJFDF1\"},{\"name\":\"Version\",\"desc\":\"2.0 Turbo\"},{\"name\":\"Horsepower (hp)\",\"desc\":\"200\"},{\"name\":\"Transmission\",\"desc\":\"Auto\"},{\"name\":\"Condition\",\"desc\":\"New\"},{\"name\":\"Drive\",\"desc\":\"Rear\"},{\"name\":\"Warranty\",\"desc\":\"Yes\"}]', 2, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bravo_car_dates`
--

DROP TABLE IF EXISTS `bravo_car_dates`;
CREATE TABLE IF NOT EXISTS `bravo_car_dates` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `target_id` bigint(20) DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `number` tinyint(4) DEFAULT NULL,
  `active` tinyint(4) DEFAULT 0,
  `note_to_customer` text DEFAULT NULL,
  `note_to_admin` text DEFAULT NULL,
  `is_instant` tinyint(4) DEFAULT 0,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_car_term`
--

DROP TABLE IF EXISTS `bravo_car_term`;
CREATE TABLE IF NOT EXISTS `bravo_car_term` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` int(11) DEFAULT NULL,
  `target_id` int(11) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_car_term`
--

INSERT INTO `bravo_car_term` (`id`, `term_id`, `target_id`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 62, 1, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(2, 63, 1, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(3, 65, 1, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(4, 66, 1, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(5, 68, 1, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(6, 61, 2, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(7, 62, 2, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(8, 63, 2, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(9, 64, 2, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(10, 65, 2, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(11, 68, 2, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(12, 61, 3, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(13, 62, 3, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(14, 63, 3, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(15, 65, 3, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(16, 68, 3, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(17, 61, 4, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(18, 66, 4, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(19, 67, 4, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(20, 68, 4, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(21, 62, 5, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(22, 63, 5, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(23, 64, 5, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(24, 65, 5, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(25, 66, 5, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(26, 67, 5, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(27, 68, 5, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(28, 61, 6, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(29, 62, 6, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(30, 63, 6, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(31, 65, 6, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(32, 66, 6, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(33, 67, 6, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(34, 68, 6, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(35, 61, 7, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(36, 63, 7, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(37, 64, 7, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(38, 65, 7, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(39, 68, 7, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(40, 61, 8, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(41, 65, 8, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(42, 66, 8, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(43, 67, 8, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(44, 68, 8, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(45, 63, 9, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(46, 64, 9, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(47, 65, 9, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(48, 67, 9, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(49, 68, 9, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(50, 61, 10, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(51, 62, 10, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(52, 63, 10, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(53, 64, 10, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(54, 65, 10, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(55, 66, 10, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(56, 63, 11, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(57, 66, 11, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(58, 67, 11, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(59, 68, 11, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(60, 61, 12, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(61, 63, 12, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(62, 67, 12, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(63, 61, 13, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(64, 63, 13, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(65, 64, 13, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(66, 65, 13, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(67, 66, 13, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(68, 67, 13, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(69, 68, 13, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(70, 69, 1, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(71, 70, 1, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(72, 71, 1, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(73, 72, 1, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(74, 73, 1, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(75, 74, 1, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(76, 69, 2, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(77, 70, 2, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(78, 71, 2, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(79, 72, 2, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(80, 73, 2, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(81, 74, 2, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(82, 69, 3, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(83, 70, 3, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(84, 71, 3, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(85, 72, 3, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(86, 73, 3, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(87, 74, 3, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(88, 69, 4, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(89, 70, 4, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(90, 71, 4, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(91, 72, 4, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(92, 73, 4, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(93, 74, 4, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(94, 69, 5, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(95, 70, 5, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(96, 71, 5, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(97, 72, 5, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(98, 73, 5, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(99, 74, 5, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(100, 69, 6, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(101, 70, 6, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(102, 71, 6, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(103, 72, 6, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(104, 73, 6, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(105, 74, 6, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(106, 69, 7, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(107, 70, 7, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(108, 71, 7, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(109, 72, 7, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(110, 73, 7, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(111, 74, 7, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(112, 69, 8, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(113, 70, 8, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(114, 71, 8, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(115, 72, 8, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(116, 73, 8, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(117, 74, 8, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(118, 69, 9, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(119, 70, 9, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(120, 71, 9, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(121, 72, 9, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(122, 73, 9, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(123, 74, 9, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(124, 69, 10, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(125, 70, 10, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(126, 71, 10, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(127, 72, 10, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(128, 73, 10, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(129, 74, 10, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(130, 69, 11, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(131, 70, 11, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(132, 71, 11, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(133, 72, 11, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(134, 73, 11, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(135, 74, 11, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(136, 69, 12, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(137, 70, 12, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(138, 71, 12, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(139, 72, 12, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(140, 73, 12, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(141, 74, 12, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(142, 69, 13, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(143, 70, 13, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(144, 71, 13, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(145, 72, 13, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(146, 73, 13, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(147, 74, 13, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43');

-- --------------------------------------------------------

--
-- Table structure for table `bravo_car_translations`
--

DROP TABLE IF EXISTS `bravo_car_translations`;
CREATE TABLE IF NOT EXISTS `bravo_car_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `faqs` text DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `specifications` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bravo_car_translations_locale_index` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_contact`
--

DROP TABLE IF EXISTS `bravo_contact`;
CREATE TABLE IF NOT EXISTS `bravo_contact` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_coupons`
--

DROP TABLE IF EXISTS `bravo_coupons`;
CREATE TABLE IF NOT EXISTS `bravo_coupons` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `discount_type` varchar(50) DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `min_total` double(8,2) DEFAULT NULL,
  `max_total` double(8,2) DEFAULT NULL,
  `services` varchar(191) DEFAULT NULL,
  `only_for_user` varchar(191) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `quantity_limit` int(11) DEFAULT NULL,
  `limit_per_user` int(11) DEFAULT NULL,
  `image_id` bigint(20) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bravo_coupons_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_coupon_services`
--

DROP TABLE IF EXISTS `bravo_coupon_services`;
CREATE TABLE IF NOT EXISTS `bravo_coupon_services` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `coupon_id` bigint(20) DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_model` varchar(191) DEFAULT NULL,
  `service_id` bigint(20) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_enquiries`
--

DROP TABLE IF EXISTS `bravo_enquiries`;
CREATE TABLE IF NOT EXISTS `bravo_enquiries` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `object_model` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `vendor_id` bigint(20) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_enquiry_replies`
--

DROP TABLE IF EXISTS `bravo_enquiry_replies`;
CREATE TABLE IF NOT EXISTS `bravo_enquiry_replies` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bravo_enquiry_replies_parent_id_index` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_events`
--

DROP TABLE IF EXISTS `bravo_events`;
CREATE TABLE IF NOT EXISTS `bravo_events` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `content` text DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `banner_image_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `map_lat` varchar(20) DEFAULT NULL,
  `map_lng` varchar(20) DEFAULT NULL,
  `map_zoom` int(11) DEFAULT NULL,
  `is_featured` tinyint(4) DEFAULT NULL,
  `gallery` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `faqs` text DEFAULT NULL,
  `ticket_types` text DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `start_time` varchar(191) DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `sale_price` decimal(12,2) DEFAULT NULL,
  `is_instant` tinyint(4) DEFAULT 0,
  `enable_extra_price` tinyint(4) DEFAULT NULL,
  `extra_price` text DEFAULT NULL,
  `review_score` decimal(2,1) DEFAULT NULL,
  `ical_import_url` varchar(191) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `default_state` tinyint(4) DEFAULT 1,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `enable_service_fee` tinyint(4) DEFAULT NULL,
  `service_fee` text DEFAULT NULL,
  `surrounding` text DEFAULT NULL,
  `end_time` varchar(255) DEFAULT NULL,
  `duration_unit` varchar(255) DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bravo_events_slug_index` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_events`
--

INSERT INTO `bravo_events` (`id`, `title`, `slug`, `content`, `image_id`, `banner_image_id`, `location_id`, `address`, `map_lat`, `map_lng`, `map_zoom`, `is_featured`, `gallery`, `video`, `faqs`, `ticket_types`, `duration`, `start_time`, `price`, `sale_price`, `is_instant`, `enable_extra_price`, `extra_price`, `review_score`, `ical_import_url`, `status`, `default_state`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`, `enable_service_fee`, `service_fee`, `surrounding`, `end_time`, `duration_unit`, `author_id`) VALUES
(1, 'Andante & Allegro Event Design', 'andante-allegro-event-design', '<p>Start and end in San Francisco! With the in-depth cultural event Northern California Summer 2019, you have a 8 day event package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 162, 180, 1, 'Arrondissement de Paris', '48.852754', '2.339155', 12, 0, '174,175,176,177,178,179', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Can children come to events?\",\"content\":\"Unless otherwise stated, children are always welcome, but please be aware that most of our events are aimed at an adult audience.  Children must be supervised at all times.\"},{\"title\":\"Is there seating at events?\",\"content\":\"Yes, we always provide a variety of seating for all ticketholders unless it\\u2019s a dance event or art show opening.  One of our crew will always be on hand to assist you in finding a seat if you need one.\"},{\"title\":\"Where can I park?\",\"content\":\"There is a wide choice of places to park, however most are not free so please do check before you come on the Southampton City Council website.  We have no onsite parking.\"},{\"title\":\"Are you near public transport?\",\"content\":\"Very.  There is a bus stop a few doors up and the train station is about 7 minutes gentle walk away.\"},{\"title\":\"Is it safe to come at night?\",\"content\":\"To our knowledge, none of our customers has had any bad experience, however we do recommend that if you are worried you stick to the roads rather than walk through the parks.  The roads are well-lit and generally there are a lot of people about at night.\"},{\"title\":\"Can I come on my own?\",\"content\":\"YES!  Many of our customers come alone to events, it\\u2019s never a problem and you will be welcomed warmly.\"}]', '[{\"code\":\"ticket_vip\",\"name\":\"Ticket Vip\",\"name_ja\":\"\\u30c1\\u30b1\\u30c3\\u30c8VIP\",\"name_egy\":null,\"price\":\"1000\",\"number\":\"10\"},{\"code\":\"ticket_group_tickets\",\"name\":\"Group Tickets\",\"name_ja\":\"\\u30b0\\u30eb\\u30fc\\u30d7\\u30c1\\u30b1\\u30c3\\u30c8\",\"name_egy\":null,\"price\":\"500\",\"number\":\"10\"}]', 8, '20:00', '2000.00', '0.00', 0, 1, '[{\"name\":\"Event service\",\"price\":\"100\",\"type\":\"one_time\"}]', '5.0', NULL, 'publish', 1, 1, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:45', NULL, NULL, NULL, NULL, NULL, 1),
(2, 'Painted Desert Event Designs', 'painted-desert-event-designs', '<p>Start and end in San Francisco! With the in-depth cultural event Northern California Summer 2019, you have a 8 day event package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 163, 181, 1, 'Porte de Vanves', '48.853917', '2.307199', 12, 1, '174,175,176,177,178,179', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Can children come to events?\",\"content\":\"Unless otherwise stated, children are always welcome, but please be aware that most of our events are aimed at an adult audience.  Children must be supervised at all times.\"},{\"title\":\"Is there seating at events?\",\"content\":\"Yes, we always provide a variety of seating for all ticketholders unless it\\u2019s a dance event or art show opening.  One of our crew will always be on hand to assist you in finding a seat if you need one.\"},{\"title\":\"Where can I park?\",\"content\":\"There is a wide choice of places to park, however most are not free so please do check before you come on the Southampton City Council website.  We have no onsite parking.\"},{\"title\":\"Are you near public transport?\",\"content\":\"Very.  There is a bus stop a few doors up and the train station is about 7 minutes gentle walk away.\"},{\"title\":\"Is it safe to come at night?\",\"content\":\"To our knowledge, none of our customers has had any bad experience, however we do recommend that if you are worried you stick to the roads rather than walk through the parks.  The roads are well-lit and generally there are a lot of people about at night.\"},{\"title\":\"Can I come on my own?\",\"content\":\"YES!  Many of our customers come alone to events, it\\u2019s never a problem and you will be welcomed warmly.\"}]', '[{\"code\":\"ticket_vip\",\"name\":\"Ticket Vip\",\"name_ja\":\"\\u30c1\\u30b1\\u30c3\\u30c8VIP\",\"name_egy\":null,\"price\":\"1000\",\"number\":\"10\"},{\"code\":\"ticket_group_tickets\",\"name\":\"Group Tickets\",\"name_ja\":\"\\u30b0\\u30eb\\u30fc\\u30d7\\u30c1\\u30b1\\u30c3\\u30c8\",\"name_egy\":null,\"price\":\"500\",\"number\":\"10\"}]', 6, '19:00', '900.00', '403.00', 0, 1, '[{\"name\":\"Event service\",\"price\":\"100\",\"type\":\"one_time\"}]', '5.0', NULL, 'publish', 1, 1, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:45', NULL, NULL, NULL, NULL, NULL, 1),
(3, 'Bamboo Grove Event Planning', 'bamboo-grove-event-planning', '<p>Start and end in San Francisco! With the in-depth cultural event Northern California Summer 2019, you have a 8 day event package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 164, 182, 1, 'Petit-Montrouge', '48.884900', '2.346377', 12, 1, '174,175,176,177,178,179', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Can children come to events?\",\"content\":\"Unless otherwise stated, children are always welcome, but please be aware that most of our events are aimed at an adult audience.  Children must be supervised at all times.\"},{\"title\":\"Is there seating at events?\",\"content\":\"Yes, we always provide a variety of seating for all ticketholders unless it\\u2019s a dance event or art show opening.  One of our crew will always be on hand to assist you in finding a seat if you need one.\"},{\"title\":\"Where can I park?\",\"content\":\"There is a wide choice of places to park, however most are not free so please do check before you come on the Southampton City Council website.  We have no onsite parking.\"},{\"title\":\"Are you near public transport?\",\"content\":\"Very.  There is a bus stop a few doors up and the train station is about 7 minutes gentle walk away.\"},{\"title\":\"Is it safe to come at night?\",\"content\":\"To our knowledge, none of our customers has had any bad experience, however we do recommend that if you are worried you stick to the roads rather than walk through the parks.  The roads are well-lit and generally there are a lot of people about at night.\"},{\"title\":\"Can I come on my own?\",\"content\":\"YES!  Many of our customers come alone to events, it\\u2019s never a problem and you will be welcomed warmly.\"}]', '[{\"code\":\"ticket_vip\",\"name\":\"Ticket Vip\",\"name_ja\":\"\\u30c1\\u30b1\\u30c3\\u30c8VIP\",\"name_egy\":null,\"price\":\"1000\",\"number\":\"10\"},{\"code\":\"ticket_group_tickets\",\"name\":\"Group Tickets\",\"name_ja\":\"\\u30b0\\u30eb\\u30fc\\u30d7\\u30c1\\u30b1\\u30c3\\u30c8\",\"name_egy\":null,\"price\":\"500\",\"number\":\"10\"}]', 7, '19:00', '1500.00', '536.00', 0, 1, '[{\"name\":\"Event service\",\"price\":\"100\",\"type\":\"one_time\"}]', '4.5', NULL, 'publish', 1, 4, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:45', NULL, NULL, NULL, NULL, NULL, 4),
(4, 'Aspen Glade Weddings & Events', 'aspen-glade-weddings-events', '<p>Start and end in San Francisco! With the in-depth cultural event Northern California Summer 2019, you have a 8 day event package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 165, 180, 2, 'New York', '40.707891', '-74.008825', 12, 1, '174,175,176,177,178,179', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Can children come to events?\",\"content\":\"Unless otherwise stated, children are always welcome, but please be aware that most of our events are aimed at an adult audience.  Children must be supervised at all times.\"},{\"title\":\"Is there seating at events?\",\"content\":\"Yes, we always provide a variety of seating for all ticketholders unless it\\u2019s a dance event or art show opening.  One of our crew will always be on hand to assist you in finding a seat if you need one.\"},{\"title\":\"Where can I park?\",\"content\":\"There is a wide choice of places to park, however most are not free so please do check before you come on the Southampton City Council website.  We have no onsite parking.\"},{\"title\":\"Are you near public transport?\",\"content\":\"Very.  There is a bus stop a few doors up and the train station is about 7 minutes gentle walk away.\"},{\"title\":\"Is it safe to come at night?\",\"content\":\"To our knowledge, none of our customers has had any bad experience, however we do recommend that if you are worried you stick to the roads rather than walk through the parks.  The roads are well-lit and generally there are a lot of people about at night.\"},{\"title\":\"Can I come on my own?\",\"content\":\"YES!  Many of our customers come alone to events, it\\u2019s never a problem and you will be welcomed warmly.\"}]', '[{\"code\":\"ticket_vip\",\"name\":\"Ticket Vip\",\"name_ja\":\"\\u30c1\\u30b1\\u30c3\\u30c8VIP\",\"name_egy\":null,\"price\":\"1000\",\"number\":\"10\"},{\"code\":\"ticket_group_tickets\",\"name\":\"Group Tickets\",\"name_ja\":\"\\u30b0\\u30eb\\u30fc\\u30d7\\u30c1\\u30b1\\u30c3\\u30c8\",\"name_egy\":null,\"price\":\"500\",\"number\":\"10\"}]', 3, '17:00', '850.00', '0.00', 0, 1, '[{\"name\":\"Event service\",\"price\":\"100\",\"type\":\"one_time\"}]', '4.7', NULL, 'publish', 1, 1, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:45', NULL, NULL, NULL, NULL, NULL, 1),
(5, 'Southwest States (Ex Los Angeles) ', 'southwest-states', '<p>Start and end in San Francisco! With the in-depth cultural event Northern California Summer 2019, you have a 8 day event package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 166, 181, 2, 'Regal Cinemas Battery Park 11', '40.714578', '-73.983888', 12, 0, '174,175,176,177,178,179', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Can children come to events?\",\"content\":\"Unless otherwise stated, children are always welcome, but please be aware that most of our events are aimed at an adult audience.  Children must be supervised at all times.\"},{\"title\":\"Is there seating at events?\",\"content\":\"Yes, we always provide a variety of seating for all ticketholders unless it\\u2019s a dance event or art show opening.  One of our crew will always be on hand to assist you in finding a seat if you need one.\"},{\"title\":\"Where can I park?\",\"content\":\"There is a wide choice of places to park, however most are not free so please do check before you come on the Southampton City Council website.  We have no onsite parking.\"},{\"title\":\"Are you near public transport?\",\"content\":\"Very.  There is a bus stop a few doors up and the train station is about 7 minutes gentle walk away.\"},{\"title\":\"Is it safe to come at night?\",\"content\":\"To our knowledge, none of our customers has had any bad experience, however we do recommend that if you are worried you stick to the roads rather than walk through the parks.  The roads are well-lit and generally there are a lot of people about at night.\"},{\"title\":\"Can I come on my own?\",\"content\":\"YES!  Many of our customers come alone to events, it\\u2019s never a problem and you will be welcomed warmly.\"}]', '[{\"code\":\"ticket_vip\",\"name\":\"Ticket Vip\",\"name_ja\":\"\\u30c1\\u30b1\\u30c3\\u30c8VIP\",\"name_egy\":null,\"price\":\"1000\",\"number\":\"10\"},{\"code\":\"ticket_group_tickets\",\"name\":\"Group Tickets\",\"name_ja\":\"\\u30b0\\u30eb\\u30fc\\u30d7\\u30c1\\u30b1\\u30c3\\u30c8\",\"name_egy\":null,\"price\":\"500\",\"number\":\"10\"}]', 3, '18:00', '1900.00', '1508.00', 0, 1, '[{\"name\":\"Event service\",\"price\":\"100\",\"type\":\"one_time\"}]', '4.5', NULL, 'publish', 1, 6, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:45', NULL, NULL, NULL, NULL, NULL, 6),
(6, 'Spanish Moss Event Design', 'spanish-moss-event-design', '<p>Start and end in San Francisco! With the in-depth cultural event Northern California Summer 2019, you have a 8 day event package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 167, 182, 2, 'Prince St Station', '40.720161', '-74.009628', 12, 1, '174,175,176,177,178,179', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Can children come to events?\",\"content\":\"Unless otherwise stated, children are always welcome, but please be aware that most of our events are aimed at an adult audience.  Children must be supervised at all times.\"},{\"title\":\"Is there seating at events?\",\"content\":\"Yes, we always provide a variety of seating for all ticketholders unless it\\u2019s a dance event or art show opening.  One of our crew will always be on hand to assist you in finding a seat if you need one.\"},{\"title\":\"Where can I park?\",\"content\":\"There is a wide choice of places to park, however most are not free so please do check before you come on the Southampton City Council website.  We have no onsite parking.\"},{\"title\":\"Are you near public transport?\",\"content\":\"Very.  There is a bus stop a few doors up and the train station is about 7 minutes gentle walk away.\"},{\"title\":\"Is it safe to come at night?\",\"content\":\"To our knowledge, none of our customers has had any bad experience, however we do recommend that if you are worried you stick to the roads rather than walk through the parks.  The roads are well-lit and generally there are a lot of people about at night.\"},{\"title\":\"Can I come on my own?\",\"content\":\"YES!  Many of our customers come alone to events, it\\u2019s never a problem and you will be welcomed warmly.\"}]', '[{\"code\":\"ticket_vip\",\"name\":\"Ticket Vip\",\"name_ja\":\"\\u30c1\\u30b1\\u30c3\\u30c8VIP\",\"name_egy\":null,\"price\":\"1000\",\"number\":\"10\"},{\"code\":\"ticket_group_tickets\",\"name\":\"Group Tickets\",\"name_ja\":\"\\u30b0\\u30eb\\u30fc\\u30d7\\u30c1\\u30b1\\u30c3\\u30c8\",\"name_egy\":null,\"price\":\"500\",\"number\":\"10\"}]', 6, '19:00', '600.00', '0.00', 0, 1, '[{\"name\":\"Event service\",\"price\":\"100\",\"type\":\"one_time\"}]', '4.8', NULL, 'publish', 1, 4, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:45', NULL, NULL, NULL, NULL, NULL, 4),
(7, 'Eastern Discovery', 'eastern-discovery', '<p>Start and end in San Francisco! With the in-depth cultural event Northern California Summer 2019, you have a 8 day event package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 168, 180, 2, 'Pier 36 New York', '40.708581', '-73.998817', 12, 0, '174,175,176,177,178,179', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Can children come to events?\",\"content\":\"Unless otherwise stated, children are always welcome, but please be aware that most of our events are aimed at an adult audience.  Children must be supervised at all times.\"},{\"title\":\"Is there seating at events?\",\"content\":\"Yes, we always provide a variety of seating for all ticketholders unless it\\u2019s a dance event or art show opening.  One of our crew will always be on hand to assist you in finding a seat if you need one.\"},{\"title\":\"Where can I park?\",\"content\":\"There is a wide choice of places to park, however most are not free so please do check before you come on the Southampton City Council website.  We have no onsite parking.\"},{\"title\":\"Are you near public transport?\",\"content\":\"Very.  There is a bus stop a few doors up and the train station is about 7 minutes gentle walk away.\"},{\"title\":\"Is it safe to come at night?\",\"content\":\"To our knowledge, none of our customers has had any bad experience, however we do recommend that if you are worried you stick to the roads rather than walk through the parks.  The roads are well-lit and generally there are a lot of people about at night.\"},{\"title\":\"Can I come on my own?\",\"content\":\"YES!  Many of our customers come alone to events, it\\u2019s never a problem and you will be welcomed warmly.\"}]', '[{\"code\":\"ticket_vip\",\"name\":\"Ticket Vip\",\"name_ja\":\"\\u30c1\\u30b1\\u30c3\\u30c8VIP\",\"name_egy\":null,\"price\":\"1000\",\"number\":\"10\"},{\"code\":\"ticket_group_tickets\",\"name\":\"Group Tickets\",\"name_ja\":\"\\u30b0\\u30eb\\u30fc\\u30d7\\u30c1\\u30b1\\u30c3\\u30c8\",\"name_egy\":null,\"price\":\"500\",\"number\":\"10\"}]', 8, '15:00', '2100.00', '106.00', 0, 1, '[{\"name\":\"Event service\",\"price\":\"100\",\"type\":\"one_time\"}]', '4.0', NULL, 'publish', 1, 5, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:45', NULL, NULL, NULL, NULL, NULL, 5),
(8, 'Pink Crescent Moon Events', 'pink-crescent-moon-events', '<p>Start and end in San Francisco! With the in-depth cultural event Northern California Summer 2019, you have a 8 day event package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 169, 181, 3, 'Trimmer Springs Rd, Sanger', '36.822484', '-119.365266', 12, 0, '174,175,176,177,178,179', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Can children come to events?\",\"content\":\"Unless otherwise stated, children are always welcome, but please be aware that most of our events are aimed at an adult audience.  Children must be supervised at all times.\"},{\"title\":\"Is there seating at events?\",\"content\":\"Yes, we always provide a variety of seating for all ticketholders unless it\\u2019s a dance event or art show opening.  One of our crew will always be on hand to assist you in finding a seat if you need one.\"},{\"title\":\"Where can I park?\",\"content\":\"There is a wide choice of places to park, however most are not free so please do check before you come on the Southampton City Council website.  We have no onsite parking.\"},{\"title\":\"Are you near public transport?\",\"content\":\"Very.  There is a bus stop a few doors up and the train station is about 7 minutes gentle walk away.\"},{\"title\":\"Is it safe to come at night?\",\"content\":\"To our knowledge, none of our customers has had any bad experience, however we do recommend that if you are worried you stick to the roads rather than walk through the parks.  The roads are well-lit and generally there are a lot of people about at night.\"},{\"title\":\"Can I come on my own?\",\"content\":\"YES!  Many of our customers come alone to events, it\\u2019s never a problem and you will be welcomed warmly.\"}]', '[{\"code\":\"ticket_vip\",\"name\":\"Ticket Vip\",\"name_ja\":\"\\u30c1\\u30b1\\u30c3\\u30c8VIP\",\"name_egy\":null,\"price\":\"1000\",\"number\":\"10\"},{\"code\":\"ticket_group_tickets\",\"name\":\"Group Tickets\",\"name_ja\":\"\\u30b0\\u30eb\\u30fc\\u30d7\\u30c1\\u30b1\\u30c3\\u30c8\",\"name_egy\":null,\"price\":\"500\",\"number\":\"10\"}]', 5, '21:00', '700.00', '0.00', 0, 1, '[{\"name\":\"Event service\",\"price\":\"100\",\"type\":\"one_time\"}]', '4.5', NULL, 'publish', 1, 6, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:45', NULL, NULL, NULL, NULL, NULL, 6),
(9, 'Northern Lights Event Planners', 'northern-lights-event-planners', '<p>Start and end in San Francisco! With the in-depth cultural event Northern California Summer 2019, you have a 8 day event package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 170, 182, 4, 'United States', '37.040023', '-95.643144', 12, 1, '174,175,176,177,178,179', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Can children come to events?\",\"content\":\"Unless otherwise stated, children are always welcome, but please be aware that most of our events are aimed at an adult audience.  Children must be supervised at all times.\"},{\"title\":\"Is there seating at events?\",\"content\":\"Yes, we always provide a variety of seating for all ticketholders unless it\\u2019s a dance event or art show opening.  One of our crew will always be on hand to assist you in finding a seat if you need one.\"},{\"title\":\"Where can I park?\",\"content\":\"There is a wide choice of places to park, however most are not free so please do check before you come on the Southampton City Council website.  We have no onsite parking.\"},{\"title\":\"Are you near public transport?\",\"content\":\"Very.  There is a bus stop a few doors up and the train station is about 7 minutes gentle walk away.\"},{\"title\":\"Is it safe to come at night?\",\"content\":\"To our knowledge, none of our customers has had any bad experience, however we do recommend that if you are worried you stick to the roads rather than walk through the parks.  The roads are well-lit and generally there are a lot of people about at night.\"},{\"title\":\"Can I come on my own?\",\"content\":\"YES!  Many of our customers come alone to events, it\\u2019s never a problem and you will be welcomed warmly.\"}]', '[{\"code\":\"ticket_vip\",\"name\":\"Ticket Vip\",\"name_ja\":\"\\u30c1\\u30b1\\u30c3\\u30c8VIP\",\"name_egy\":null,\"price\":\"1000\",\"number\":\"10\"},{\"code\":\"ticket_group_tickets\",\"name\":\"Group Tickets\",\"name_ja\":\"\\u30b0\\u30eb\\u30fc\\u30d7\\u30c1\\u30b1\\u30c3\\u30c8\",\"name_egy\":null,\"price\":\"500\",\"number\":\"10\"}]', 6, '20:00', '800.00', '600.00', 0, 1, '[{\"name\":\"Event service\",\"price\":\"100\",\"type\":\"one_time\"}]', '5.0', NULL, 'publish', 1, 6, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:45', NULL, NULL, NULL, NULL, NULL, 6),
(10, 'Origami Crane Wedding Planners', 'origami-crane-wedding-planners', '<p>Start and end in San Francisco! With the in-depth cultural event Northern California Summer 2019, you have a 8 day event package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 171, 180, 5, 'Washington, DC, USA', '34.049345', '-118.248479', 12, 0, '174,175,176,177,178,179', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Can children come to events?\",\"content\":\"Unless otherwise stated, children are always welcome, but please be aware that most of our events are aimed at an adult audience.  Children must be supervised at all times.\"},{\"title\":\"Is there seating at events?\",\"content\":\"Yes, we always provide a variety of seating for all ticketholders unless it\\u2019s a dance event or art show opening.  One of our crew will always be on hand to assist you in finding a seat if you need one.\"},{\"title\":\"Where can I park?\",\"content\":\"There is a wide choice of places to park, however most are not free so please do check before you come on the Southampton City Council website.  We have no onsite parking.\"},{\"title\":\"Are you near public transport?\",\"content\":\"Very.  There is a bus stop a few doors up and the train station is about 7 minutes gentle walk away.\"},{\"title\":\"Is it safe to come at night?\",\"content\":\"To our knowledge, none of our customers has had any bad experience, however we do recommend that if you are worried you stick to the roads rather than walk through the parks.  The roads are well-lit and generally there are a lot of people about at night.\"},{\"title\":\"Can I come on my own?\",\"content\":\"YES!  Many of our customers come alone to events, it\\u2019s never a problem and you will be welcomed warmly.\"}]', '[{\"code\":\"ticket_vip\",\"name\":\"Ticket Vip\",\"name_ja\":\"\\u30c1\\u30b1\\u30c3\\u30c8VIP\",\"name_egy\":null,\"price\":\"1000\",\"number\":\"10\"},{\"code\":\"ticket_group_tickets\",\"name\":\"Group Tickets\",\"name_ja\":\"\\u30b0\\u30eb\\u30fc\\u30d7\\u30c1\\u30b1\\u30c3\\u30c8\",\"name_egy\":null,\"price\":\"500\",\"number\":\"10\"}]', 1, '18:00', '400.00', '0.00', 0, 1, '[{\"name\":\"Event service\",\"price\":\"100\",\"type\":\"one_time\"}]', '4.7', NULL, 'publish', 1, 5, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:45', NULL, NULL, NULL, NULL, NULL, 5),
(11, 'New York – Discover America', 'new-york-discover-america', '<p>Start and end in San Francisco! With the in-depth cultural event Northern California Summer 2019, you have a 8 day event package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 172, 181, 6, 'New Jersey', '40.035329', '-74.417227', 12, 1, '174,175,176,177,178,179', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Can children come to events?\",\"content\":\"Unless otherwise stated, children are always welcome, but please be aware that most of our events are aimed at an adult audience.  Children must be supervised at all times.\"},{\"title\":\"Is there seating at events?\",\"content\":\"Yes, we always provide a variety of seating for all ticketholders unless it\\u2019s a dance event or art show opening.  One of our crew will always be on hand to assist you in finding a seat if you need one.\"},{\"title\":\"Where can I park?\",\"content\":\"There is a wide choice of places to park, however most are not free so please do check before you come on the Southampton City Council website.  We have no onsite parking.\"},{\"title\":\"Are you near public transport?\",\"content\":\"Very.  There is a bus stop a few doors up and the train station is about 7 minutes gentle walk away.\"},{\"title\":\"Is it safe to come at night?\",\"content\":\"To our knowledge, none of our customers has had any bad experience, however we do recommend that if you are worried you stick to the roads rather than walk through the parks.  The roads are well-lit and generally there are a lot of people about at night.\"},{\"title\":\"Can I come on my own?\",\"content\":\"YES!  Many of our customers come alone to events, it\\u2019s never a problem and you will be welcomed warmly.\"}]', '[{\"code\":\"ticket_vip\",\"name\":\"Ticket Vip\",\"name_ja\":\"\\u30c1\\u30b1\\u30c3\\u30c8VIP\",\"name_egy\":null,\"price\":\"1000\",\"number\":\"10\"},{\"code\":\"ticket_group_tickets\",\"name\":\"Group Tickets\",\"name_ja\":\"\\u30b0\\u30eb\\u30fc\\u30d7\\u30c1\\u30b1\\u30c3\\u30c8\",\"name_egy\":null,\"price\":\"500\",\"number\":\"10\"}]', 6, '14:00', '300.00', '0.00', 0, 1, '[{\"name\":\"Event service\",\"price\":\"100\",\"type\":\"one_time\"}]', '4.3', NULL, 'publish', 1, 6, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:45', NULL, NULL, NULL, NULL, NULL, 6),
(12, 'Event of Washington, D.C. Highlights', 'event-of-washington-dc-highlights', '<p>Start and end in San Francisco! With the in-depth cultural event Northern California Summer 2019, you have a 8 day event package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 173, 182, 7, 'Francisco Parnassus Campus', '37.782668', '-122.425058', 12, 1, '174,175,176,177,178,179', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Can children come to events?\",\"content\":\"Unless otherwise stated, children are always welcome, but please be aware that most of our events are aimed at an adult audience.  Children must be supervised at all times.\"},{\"title\":\"Is there seating at events?\",\"content\":\"Yes, we always provide a variety of seating for all ticketholders unless it\\u2019s a dance event or art show opening.  One of our crew will always be on hand to assist you in finding a seat if you need one.\"},{\"title\":\"Where can I park?\",\"content\":\"There is a wide choice of places to park, however most are not free so please do check before you come on the Southampton City Council website.  We have no onsite parking.\"},{\"title\":\"Are you near public transport?\",\"content\":\"Very.  There is a bus stop a few doors up and the train station is about 7 minutes gentle walk away.\"},{\"title\":\"Is it safe to come at night?\",\"content\":\"To our knowledge, none of our customers has had any bad experience, however we do recommend that if you are worried you stick to the roads rather than walk through the parks.  The roads are well-lit and generally there are a lot of people about at night.\"},{\"title\":\"Can I come on my own?\",\"content\":\"YES!  Many of our customers come alone to events, it\\u2019s never a problem and you will be welcomed warmly.\"}]', '[{\"code\":\"ticket_vip\",\"name\":\"Ticket Vip\",\"name_ja\":\"\\u30c1\\u30b1\\u30c3\\u30c8VIP\",\"name_egy\":null,\"price\":\"1000\",\"number\":\"10\"},{\"code\":\"ticket_group_tickets\",\"name\":\"Group Tickets\",\"name_ja\":\"\\u30b0\\u30eb\\u30fc\\u30d7\\u30c1\\u30b1\\u30c3\\u30c8\",\"name_egy\":null,\"price\":\"500\",\"number\":\"10\"}]', 3, '17:00', '2100.00', '317.00', 0, 1, '[{\"name\":\"Event service\",\"price\":\"100\",\"type\":\"one_time\"}]', '4.0', NULL, 'publish', 1, 1, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:45', NULL, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bravo_event_dates`
--

DROP TABLE IF EXISTS `bravo_event_dates`;
CREATE TABLE IF NOT EXISTS `bravo_event_dates` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `target_id` bigint(20) DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `ticket_types` text DEFAULT NULL,
  `active` tinyint(4) DEFAULT 0,
  `note_to_customer` text DEFAULT NULL,
  `note_to_admin` text DEFAULT NULL,
  `is_instant` tinyint(4) DEFAULT 0,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_event_term`
--

DROP TABLE IF EXISTS `bravo_event_term`;
CREATE TABLE IF NOT EXISTS `bravo_event_term` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` int(11) DEFAULT NULL,
  `target_id` int(11) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_event_term`
--

INSERT INTO `bravo_event_term` (`id`, `term_id`, `target_id`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 76, 1, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(2, 77, 1, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(3, 78, 1, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(4, 80, 1, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(5, 81, 1, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(6, 82, 1, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(7, 79, 2, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(8, 80, 2, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(9, 81, 2, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(10, 82, 2, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(11, 76, 3, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(12, 77, 3, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(13, 78, 3, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(14, 79, 3, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(15, 80, 3, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(16, 81, 3, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(17, 82, 3, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(18, 75, 4, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(19, 76, 4, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(20, 77, 4, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(21, 78, 4, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(22, 79, 4, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(23, 80, 4, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(24, 81, 4, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(25, 82, 4, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(26, 75, 5, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(27, 76, 5, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(28, 77, 5, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(29, 78, 5, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(30, 80, 5, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(31, 81, 5, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(32, 75, 6, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(33, 76, 6, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(34, 77, 6, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(35, 78, 6, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(36, 79, 6, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(37, 80, 6, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(38, 82, 6, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(39, 75, 7, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(40, 76, 7, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(41, 78, 7, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(42, 79, 7, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(43, 80, 7, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(44, 76, 8, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(45, 78, 8, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(46, 79, 8, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(47, 80, 8, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(48, 81, 8, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(49, 82, 8, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(50, 75, 9, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(51, 76, 9, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(52, 77, 9, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(53, 78, 9, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(54, 80, 9, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(55, 82, 9, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(56, 75, 10, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(57, 77, 10, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(58, 78, 10, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(59, 80, 10, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(60, 81, 10, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(61, 82, 10, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(62, 75, 11, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(63, 77, 11, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(64, 78, 11, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(65, 79, 11, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(66, 80, 11, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(67, 81, 11, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(68, 82, 11, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(69, 76, 12, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(70, 77, 12, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(71, 78, 12, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(72, 79, 12, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(73, 80, 12, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(74, 81, 12, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45'),
(75, 82, 12, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45');

-- --------------------------------------------------------

--
-- Table structure for table `bravo_event_translations`
--

DROP TABLE IF EXISTS `bravo_event_translations`;
CREATE TABLE IF NOT EXISTS `bravo_event_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `faqs` text DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `surrounding` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bravo_event_translations_locale_index` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_flight`
--

DROP TABLE IF EXISTS `bravo_flight`;
CREATE TABLE IF NOT EXISTS `bravo_flight` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) DEFAULT NULL,
  `code` varchar(191) DEFAULT NULL,
  `review_score` decimal(2,1) DEFAULT NULL,
  `departure_time` datetime DEFAULT NULL,
  `arrival_time` datetime DEFAULT NULL,
  `duration` double(8,2) DEFAULT NULL,
  `min_price` decimal(12,2) DEFAULT NULL,
  `airport_to` int(11) DEFAULT NULL,
  `airport_from` int(11) DEFAULT NULL,
  `airline_id` int(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_flight`
--

INSERT INTO `bravo_flight` (`id`, `title`, `code`, `review_score`, `departure_time`, `arrival_time`, `duration`, `min_price`, `airport_to`, `airport_from`, `airline_id`, `status`, `create_user`, `update_user`, `created_at`, `updated_at`, `deleted_at`, `author_id`) VALUES
(1, 'Alyson Willms', 'VJ732', '0.0', '2023-12-18 11:55:21', '2023-12-18 21:55:21', 10.00, '18.00', 12, 4, 17, 'publish', NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:54', NULL, NULL),
(2, 'Mrs. Aisha Stehr Jr.', 'VJ546', '0.0', '2023-12-19 12:01:26', '2023-12-19 22:01:26', 10.00, '33.00', 11, 12, 20, 'publish', NULL, NULL, '2023-12-13 01:01:46', '2023-12-13 01:01:54', NULL, NULL),
(3, 'Mr. Harry Funk', 'VJ374', '0.0', '2023-12-19 23:14:13', '2023-12-20 06:14:13', 7.00, '31.00', 7, 20, 16, 'publish', NULL, NULL, '2023-12-13 01:01:46', '2023-12-13 01:01:54', NULL, NULL),
(4, 'Maeve Beier', 'VJ293', '0.0', '2023-12-19 07:27:32', '2023-12-19 14:27:32', 7.00, '36.00', 12, 13, 10, 'publish', NULL, NULL, '2023-12-13 01:01:46', '2023-12-13 01:01:54', NULL, NULL),
(5, 'Abner Koepp', 'VJ125', '0.0', '2023-12-17 03:08:53', '2023-12-17 06:08:53', 3.00, '18.00', 14, 7, 4, 'publish', NULL, NULL, '2023-12-13 01:01:46', '2023-12-13 01:01:54', NULL, NULL),
(6, 'Ms. Ora Olson Jr.', 'VJ232', '0.0', '2023-12-20 04:52:20', '2023-12-20 13:52:20', 9.00, '11.00', 2, 13, 5, 'publish', NULL, NULL, '2023-12-13 01:01:46', '2023-12-13 01:01:54', NULL, NULL),
(7, 'Madisen Jacobi', 'VJ396', '0.0', '2023-12-19 12:19:35', '2023-12-19 22:19:35', 10.00, '11.00', 18, 14, 10, 'publish', NULL, NULL, '2023-12-13 01:01:46', '2023-12-13 01:01:54', NULL, NULL),
(8, 'Richmond Pollich', 'VJ421', '0.0', '2023-12-18 00:42:52', '2023-12-18 02:42:52', 2.00, '27.00', 10, 13, 13, 'publish', NULL, NULL, '2023-12-13 01:01:46', '2023-12-13 01:01:54', NULL, NULL),
(9, 'Kamren Bailey I', 'VJ857', '0.0', '2023-12-14 09:51:38', '2023-12-14 12:51:38', 3.00, '37.00', 15, 5, 5, 'publish', NULL, NULL, '2023-12-13 01:01:46', '2023-12-13 01:01:54', NULL, NULL),
(10, 'Larue Fritsch', 'VJ220', '0.0', '2023-12-17 22:09:51', '2023-12-18 03:09:51', 5.00, '27.00', 11, 1, 10, 'publish', NULL, NULL, '2023-12-13 01:01:47', '2023-12-13 01:01:54', NULL, NULL),
(11, 'Colton Kuhn', 'VJ252', '0.0', '2023-12-20 04:46:03', '2023-12-20 13:46:03', 9.00, '46.00', 3, 4, 13, 'publish', NULL, NULL, '2023-12-13 01:01:47', '2023-12-13 01:01:54', NULL, NULL),
(12, 'Brando Skiles', 'VJ923', '0.0', '2023-12-17 05:08:13', '2023-12-17 07:08:13', 2.00, '26.00', 8, 2, 1, 'publish', NULL, NULL, '2023-12-13 01:01:47', '2023-12-13 01:01:54', NULL, NULL),
(13, 'Alysha Kerluke', 'VJ682', '0.0', '2023-12-17 21:29:21', '2023-12-18 06:29:21', 9.00, '57.00', 8, 2, 15, 'publish', NULL, NULL, '2023-12-13 01:01:47', '2023-12-13 01:01:54', NULL, NULL),
(14, 'Glenna O\'Connell', 'VJ675', '0.0', '2023-12-14 18:16:52', '2023-12-15 03:16:52', 9.00, '45.00', 17, 19, 20, 'publish', NULL, NULL, '2023-12-13 01:01:47', '2023-12-13 01:01:54', NULL, NULL),
(15, 'Angeline Upton', 'VJ490', '0.0', '2023-12-16 21:20:37', '2023-12-17 06:20:37', 9.00, '46.00', 2, 2, 2, 'publish', NULL, NULL, '2023-12-13 01:01:47', '2023-12-13 01:01:54', NULL, NULL),
(16, 'Sandrine Thompson', 'VJ373', '0.0', '2023-12-16 11:06:48', '2023-12-16 16:06:48', 5.00, '37.00', 1, 20, 20, 'publish', NULL, NULL, '2023-12-13 01:01:47', '2023-12-13 01:01:54', NULL, NULL),
(17, 'Ryder Gutmann I', 'VJ329', '0.0', '2023-12-16 03:37:16', '2023-12-16 10:37:16', 7.00, '41.00', 18, 11, 20, 'publish', NULL, NULL, '2023-12-13 01:01:47', '2023-12-13 01:01:54', NULL, NULL),
(18, 'Mr. Kayden Price', 'VJ788', '0.0', '2023-12-17 07:24:29', '2023-12-17 16:24:29', 9.00, '13.00', 4, 14, 20, 'publish', NULL, NULL, '2023-12-13 01:01:47', '2023-12-13 01:01:54', NULL, NULL),
(19, 'Prof. Omari Effertz Sr.', 'VJ947', '0.0', '2023-12-17 00:20:10', '2023-12-17 06:20:10', 6.00, '73.00', 10, 7, 14, 'publish', NULL, NULL, '2023-12-13 01:01:47', '2023-12-13 01:01:54', NULL, NULL),
(20, 'Prof. Price Considine Jr.', 'VJ647', '0.0', '2023-12-15 22:02:51', '2023-12-15 23:02:51', 1.00, '22.00', 16, 19, 2, 'publish', NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:54', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bravo_flight_seat`
--

DROP TABLE IF EXISTS `bravo_flight_seat`;
CREATE TABLE IF NOT EXISTS `bravo_flight_seat` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `price` decimal(12,2) DEFAULT NULL,
  `max_passengers` int(11) DEFAULT NULL,
  `flight_id` int(11) DEFAULT NULL,
  `seat_type` varchar(191) DEFAULT NULL,
  `person` varchar(191) DEFAULT NULL,
  `baggage_check_in` int(11) DEFAULT NULL,
  `baggage_cabin` int(11) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_flight_seat`
--

INSERT INTO `bravo_flight_seat` (`id`, `price`, `max_passengers`, `flight_id`, `seat_type`, `person`, `baggage_check_in`, `baggage_cabin`, `create_user`, `update_user`, `created_at`, `updated_at`, `deleted_at`, `author_id`) VALUES
(1, '67.00', 17, 1, 'vip', 'child', 14, 6, NULL, NULL, '2023-12-13 01:01:46', '2023-12-13 01:01:46', NULL, NULL),
(2, '18.00', 12, 1, 'eco', 'adult', 13, 3, NULL, NULL, '2023-12-13 01:01:46', '2023-12-13 01:01:46', NULL, NULL),
(3, '46.00', 18, 1, 'premium', 'child', 12, 4, NULL, NULL, '2023-12-13 01:01:46', '2023-12-13 01:01:46', NULL, NULL),
(4, '78.00', 19, 2, 'business', 'adult', 14, 3, NULL, NULL, '2023-12-13 01:01:46', '2023-12-13 01:01:46', NULL, NULL),
(5, '33.00', 6, 2, 'fist_class', 'adult', 11, 4, NULL, NULL, '2023-12-13 01:01:46', '2023-12-13 01:01:46', NULL, NULL),
(6, '57.00', 7, 2, 'vip', 'child', 14, 6, NULL, NULL, '2023-12-13 01:01:46', '2023-12-13 01:01:46', NULL, NULL),
(7, '31.00', 20, 3, 'eco', 'child', 11, 3, NULL, NULL, '2023-12-13 01:01:46', '2023-12-13 01:01:46', NULL, NULL),
(8, '46.00', 12, 3, 'premium', 'adult', 12, 6, NULL, NULL, '2023-12-13 01:01:46', '2023-12-13 01:01:46', NULL, NULL),
(9, '42.00', 5, 3, 'business', 'child', 15, 3, NULL, NULL, '2023-12-13 01:01:46', '2023-12-13 01:01:46', NULL, NULL),
(10, '36.00', 12, 4, 'fist_class', 'adult', 15, 6, NULL, NULL, '2023-12-13 01:01:46', '2023-12-13 01:01:46', NULL, NULL),
(11, '78.00', 19, 4, 'vip', 'child', 12, 4, NULL, NULL, '2023-12-13 01:01:46', '2023-12-13 01:01:46', NULL, NULL),
(12, '84.00', 11, 4, 'eco', 'child', 12, 5, NULL, NULL, '2023-12-13 01:01:46', '2023-12-13 01:01:46', NULL, NULL),
(13, '90.00', 3, 5, 'premium', 'adult', 10, 5, NULL, NULL, '2023-12-13 01:01:46', '2023-12-13 01:01:46', NULL, NULL),
(14, '58.00', 18, 5, 'business', 'adult', 11, 5, NULL, NULL, '2023-12-13 01:01:46', '2023-12-13 01:01:46', NULL, NULL),
(15, '18.00', 12, 5, 'fist_class', 'adult', 14, 7, NULL, NULL, '2023-12-13 01:01:46', '2023-12-13 01:01:46', NULL, NULL),
(16, '11.00', 19, 6, 'vip', 'child', 12, 7, NULL, NULL, '2023-12-13 01:01:46', '2023-12-13 01:01:46', NULL, NULL),
(17, '95.00', 3, 6, 'eco', 'child', 14, 5, NULL, NULL, '2023-12-13 01:01:46', '2023-12-13 01:01:46', NULL, NULL),
(18, '29.00', 6, 6, 'premium', 'child', 14, 6, NULL, NULL, '2023-12-13 01:01:46', '2023-12-13 01:01:46', NULL, NULL),
(19, '82.00', 11, 7, 'business', 'child', 11, 4, NULL, NULL, '2023-12-13 01:01:46', '2023-12-13 01:01:46', NULL, NULL),
(20, '11.00', 19, 7, 'fist_class', 'child', 14, 4, NULL, NULL, '2023-12-13 01:01:46', '2023-12-13 01:01:46', NULL, NULL),
(21, '15.00', 13, 7, 'vip', 'child', 13, 6, NULL, NULL, '2023-12-13 01:01:46', '2023-12-13 01:01:46', NULL, NULL),
(22, '27.00', 10, 8, 'eco', 'child', 12, 4, NULL, NULL, '2023-12-13 01:01:46', '2023-12-13 01:01:46', NULL, NULL),
(23, '42.00', 10, 8, 'premium', 'adult', 12, 3, NULL, NULL, '2023-12-13 01:01:46', '2023-12-13 01:01:46', NULL, NULL),
(24, '36.00', 18, 8, 'business', 'adult', 11, 6, NULL, NULL, '2023-12-13 01:01:46', '2023-12-13 01:01:46', NULL, NULL),
(25, '58.00', 8, 9, 'fist_class', 'adult', 15, 4, NULL, NULL, '2023-12-13 01:01:46', '2023-12-13 01:01:46', NULL, NULL),
(26, '37.00', 9, 9, 'vip', 'adult', 11, 3, NULL, NULL, '2023-12-13 01:01:47', '2023-12-13 01:01:47', NULL, NULL),
(27, '84.00', 3, 9, 'eco', 'child', 14, 3, NULL, NULL, '2023-12-13 01:01:47', '2023-12-13 01:01:47', NULL, NULL),
(28, '27.00', 3, 10, 'premium', 'adult', 14, 5, NULL, NULL, '2023-12-13 01:01:47', '2023-12-13 01:01:47', NULL, NULL),
(29, '73.00', 16, 10, 'business', 'child', 12, 7, NULL, NULL, '2023-12-13 01:01:47', '2023-12-13 01:01:47', NULL, NULL),
(30, '33.00', 20, 10, 'fist_class', 'child', 11, 4, NULL, NULL, '2023-12-13 01:01:47', '2023-12-13 01:01:47', NULL, NULL),
(31, '46.00', 12, 11, 'vip', 'child', 14, 5, NULL, NULL, '2023-12-13 01:01:47', '2023-12-13 01:01:47', NULL, NULL),
(32, '86.00', 1, 11, 'eco', 'child', 11, 5, NULL, NULL, '2023-12-13 01:01:47', '2023-12-13 01:01:47', NULL, NULL),
(33, '81.00', 13, 11, 'premium', 'adult', 11, 7, NULL, NULL, '2023-12-13 01:01:47', '2023-12-13 01:01:47', NULL, NULL),
(34, '64.00', 8, 12, 'business', 'child', 11, 7, NULL, NULL, '2023-12-13 01:01:47', '2023-12-13 01:01:47', NULL, NULL),
(35, '89.00', 6, 12, 'fist_class', 'adult', 13, 6, NULL, NULL, '2023-12-13 01:01:47', '2023-12-13 01:01:47', NULL, NULL),
(36, '26.00', 18, 12, 'vip', 'child', 15, 7, NULL, NULL, '2023-12-13 01:01:47', '2023-12-13 01:01:47', NULL, NULL),
(37, '95.00', 15, 13, 'eco', 'child', 12, 5, NULL, NULL, '2023-12-13 01:01:47', '2023-12-13 01:01:47', NULL, NULL),
(38, '76.00', 5, 13, 'premium', 'adult', 12, 5, NULL, NULL, '2023-12-13 01:01:47', '2023-12-13 01:01:47', NULL, NULL),
(39, '57.00', 17, 13, 'business', 'adult', 13, 3, NULL, NULL, '2023-12-13 01:01:47', '2023-12-13 01:01:47', NULL, NULL),
(40, '45.00', 15, 14, 'fist_class', 'child', 11, 4, NULL, NULL, '2023-12-13 01:01:47', '2023-12-13 01:01:47', NULL, NULL),
(41, '73.00', 14, 14, 'vip', 'child', 15, 5, NULL, NULL, '2023-12-13 01:01:47', '2023-12-13 01:01:47', NULL, NULL),
(42, '60.00', 2, 14, 'eco', 'child', 12, 5, NULL, NULL, '2023-12-13 01:01:47', '2023-12-13 01:01:47', NULL, NULL),
(43, '88.00', 14, 15, 'premium', 'child', 10, 7, NULL, NULL, '2023-12-13 01:01:47', '2023-12-13 01:01:47', NULL, NULL),
(44, '46.00', 17, 15, 'business', 'child', 15, 4, NULL, NULL, '2023-12-13 01:01:47', '2023-12-13 01:01:47', NULL, NULL),
(45, '88.00', 18, 15, 'fist_class', 'adult', 11, 7, NULL, NULL, '2023-12-13 01:01:47', '2023-12-13 01:01:47', NULL, NULL),
(46, '81.00', 8, 16, 'vip', 'adult', 10, 6, NULL, NULL, '2023-12-13 01:01:47', '2023-12-13 01:01:47', NULL, NULL),
(47, '59.00', 1, 16, 'eco', 'adult', 15, 7, NULL, NULL, '2023-12-13 01:01:47', '2023-12-13 01:01:47', NULL, NULL),
(48, '37.00', 12, 16, 'premium', 'adult', 11, 6, NULL, NULL, '2023-12-13 01:01:47', '2023-12-13 01:01:47', NULL, NULL),
(49, '41.00', 4, 17, 'business', 'adult', 11, 7, NULL, NULL, '2023-12-13 01:01:47', '2023-12-13 01:01:47', NULL, NULL),
(50, '47.00', 4, 17, 'fist_class', 'adult', 12, 5, NULL, NULL, '2023-12-13 01:01:47', '2023-12-13 01:01:47', NULL, NULL),
(51, '66.00', 17, 17, 'vip', 'adult', 13, 7, NULL, NULL, '2023-12-13 01:01:47', '2023-12-13 01:01:47', NULL, NULL),
(52, '13.00', 2, 18, 'eco', 'adult', 15, 4, NULL, NULL, '2023-12-13 01:01:47', '2023-12-13 01:01:47', NULL, NULL),
(53, '14.00', 6, 18, 'premium', 'child', 12, 6, NULL, NULL, '2023-12-13 01:01:47', '2023-12-13 01:01:47', NULL, NULL),
(54, '82.00', 2, 18, 'business', 'child', 14, 3, NULL, NULL, '2023-12-13 01:01:47', '2023-12-13 01:01:47', NULL, NULL),
(55, '91.00', 4, 19, 'fist_class', 'adult', 11, 4, NULL, NULL, '2023-12-13 01:01:47', '2023-12-13 01:01:47', NULL, NULL),
(56, '98.00', 12, 19, 'vip', 'child', 12, 7, NULL, NULL, '2023-12-13 01:01:47', '2023-12-13 01:01:47', NULL, NULL),
(57, '73.00', 9, 19, 'eco', 'child', 13, 3, NULL, NULL, '2023-12-13 01:01:47', '2023-12-13 01:01:47', NULL, NULL),
(58, '22.00', 6, 20, 'premium', 'child', 13, 3, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48', NULL, NULL),
(59, '97.00', 13, 20, 'business', 'adult', 10, 3, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48', NULL, NULL),
(60, '99.00', 5, 20, 'fist_class', 'adult', 11, 5, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bravo_flight_term`
--

DROP TABLE IF EXISTS `bravo_flight_term`;
CREATE TABLE IF NOT EXISTS `bravo_flight_term` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` int(11) DEFAULT NULL,
  `target_id` int(11) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_flight_term`
--

INSERT INTO `bravo_flight_term` (`id`, `term_id`, `target_id`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 84, 1, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(2, 89, 1, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(3, 90, 1, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(4, 84, 2, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(5, 86, 2, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(6, 87, 2, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(7, 89, 2, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(8, 83, 3, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(9, 85, 3, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(10, 86, 3, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(11, 89, 3, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(12, 83, 4, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(13, 84, 4, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(14, 87, 4, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(15, 88, 4, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(16, 89, 4, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(17, 84, 5, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(18, 85, 5, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(19, 86, 5, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(20, 87, 5, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(21, 88, 5, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(22, 89, 5, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(23, 90, 5, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(24, 84, 6, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(25, 85, 6, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(26, 86, 6, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(27, 88, 6, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(28, 89, 6, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(29, 90, 6, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(30, 83, 7, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(31, 84, 7, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(32, 85, 7, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(33, 89, 7, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(34, 90, 7, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(35, 84, 8, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(36, 85, 8, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(37, 86, 8, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(38, 87, 8, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(39, 88, 8, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(40, 90, 8, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(41, 83, 9, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(42, 86, 9, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(43, 87, 9, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(44, 88, 9, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(45, 89, 9, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(46, 90, 9, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(47, 83, 10, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(48, 84, 10, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(49, 85, 10, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(50, 86, 10, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(51, 87, 10, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(52, 88, 10, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(53, 83, 11, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(54, 85, 11, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(55, 86, 11, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(56, 87, 11, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(57, 88, 11, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(58, 89, 11, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(59, 84, 12, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(60, 85, 12, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(61, 86, 12, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(62, 87, 12, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(63, 88, 12, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(64, 89, 12, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(65, 90, 12, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(66, 83, 13, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(67, 85, 13, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(68, 87, 13, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(69, 88, 13, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(70, 89, 13, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(71, 90, 13, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(72, 84, 14, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(73, 86, 14, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(74, 87, 14, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(75, 88, 14, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(76, 90, 14, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(77, 83, 15, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(78, 84, 15, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(79, 85, 15, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(80, 86, 15, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(81, 87, 15, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(82, 88, 15, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(83, 89, 15, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(84, 90, 15, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(85, 83, 16, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(86, 84, 16, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(87, 86, 16, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(88, 89, 16, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(89, 90, 16, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(90, 84, 17, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(91, 88, 17, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(92, 89, 17, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(93, 90, 17, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(94, 83, 18, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(95, 85, 18, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(96, 87, 18, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(97, 88, 18, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(98, 89, 18, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(99, 83, 19, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(100, 84, 19, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(101, 86, 19, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(102, 87, 19, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(103, 89, 19, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(104, 90, 19, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(105, 84, 20, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(106, 86, 20, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(107, 88, 20, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(108, 89, 20, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(109, 90, 20, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48');

-- --------------------------------------------------------

--
-- Table structure for table `bravo_hotels`
--

DROP TABLE IF EXISTS `bravo_hotels`;
CREATE TABLE IF NOT EXISTS `bravo_hotels` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `content` text DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `banner_image_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `map_lat` varchar(20) DEFAULT NULL,
  `map_lng` varchar(20) DEFAULT NULL,
  `map_zoom` int(11) DEFAULT NULL,
  `is_featured` tinyint(4) DEFAULT NULL,
  `gallery` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `policy` text DEFAULT NULL,
  `star_rate` smallint(6) DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `check_in_time` varchar(255) DEFAULT NULL,
  `check_out_time` varchar(255) DEFAULT NULL,
  `allow_full_day` smallint(6) DEFAULT NULL,
  `sale_price` decimal(12,2) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `review_score` decimal(2,1) DEFAULT NULL,
  `ical_import_url` varchar(191) DEFAULT NULL,
  `enable_extra_price` tinyint(4) DEFAULT NULL,
  `extra_price` text DEFAULT NULL,
  `enable_service_fee` tinyint(4) DEFAULT NULL,
  `service_fee` text DEFAULT NULL,
  `surrounding` text DEFAULT NULL,
  `badge_tags` text DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `min_day_before_booking` int(11) DEFAULT NULL,
  `min_day_stays` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bravo_hotels_slug_index` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_hotels`
--

INSERT INTO `bravo_hotels` (`id`, `title`, `slug`, `content`, `image_id`, `banner_image_id`, `location_id`, `address`, `map_lat`, `map_lng`, `map_zoom`, `is_featured`, `gallery`, `video`, `policy`, `star_rate`, `price`, `check_in_time`, `check_out_time`, `allow_full_day`, `sale_price`, `status`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`, `review_score`, `ical_import_url`, `enable_extra_price`, `extra_price`, `enable_service_fee`, `service_fee`, `surrounding`, `badge_tags`, `author_id`, `min_day_before_booking`, `min_day_stays`) VALUES
(1, 'Hotel Stanford', 'hotel-stanford', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 67, 96, 1, 'Arrondissement de Paris', '19.148665', '72.839670', 12, 0, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 5, '300.00', '12:00AM', '11:00AM', NULL, NULL, 'publish', 1, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:42', '4.3', NULL, 1, '[{\"name\":\"Service VIP \",\"price\":\"200\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, 1, NULL, NULL),
(2, 'Hotel WBF Hommachi', 'hotel-wbf-homachi', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 68, 94, 1, 'Porte de Vanves', '19.110390', '72.832764', 12, 0, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 5, '350.00', '12:00AM', '11:00AM', NULL, NULL, 'publish', 1, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:42', '4.0', NULL, 1, '[{\"name\":\"Service VIP \",\"price\":\"200\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, 1, NULL, NULL),
(3, 'Castello Casole Hotel', 'castello-casole-hotel', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 69, 95, 1, 'Petit-Montrouge', '19.077946', '72.838255', 12, 0, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 5, '350.00', '12:00AM', '11:00AM', NULL, NULL, 'publish', 1, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:42', '4.8', NULL, 1, '[{\"name\":\"Service VIP \",\"price\":\"200\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, 1, NULL, NULL),
(4, 'Redac Gateway Hotel', 'redac-gateway-hotel', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 70, 93, 1, 'Petit-Montrouge', '19.031217', '72.851982', 12, 0, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 5, '500.00', '12:00AM', '11:00AM', NULL, NULL, 'publish', 1, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:42', '4.7', NULL, 1, '[{\"name\":\"Service VIP \",\"price\":\"200\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, 1, NULL, NULL),
(5, 'Studio Allston Hotel', 'studio-allston-hotel', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 71, 95, 5, 'New York', '18.972786', '72.819724', 12, 0, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 5, '500.00', '12:00AM', '11:00AM', NULL, NULL, 'publish', 4, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:42', '4.3', NULL, 1, '[{\"name\":\"Service VIP \",\"price\":\"200\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, 4, NULL, NULL),
(6, 'EnVision Hotel Boston', 'envision-hotel-biston', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 72, 95, 3, 'New York', '18.873011', '72.975724', 12, 0, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 5, '700.00', '12:00AM', '11:00AM', NULL, NULL, 'publish', 5, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:42', '5.0', NULL, 1, '[{\"name\":\"Service VIP \",\"price\":\"200\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, 5, NULL, NULL),
(7, 'Crowne Plaza Hotel', 'crowne-plaza-hotel', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 73, 95, 2, 'New York', '19.001355', '73.111444', 12, 0, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 5, '900.00', '12:00AM', '11:00AM', NULL, NULL, 'publish', 6, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:42', '4.0', NULL, 1, '[{\"name\":\"Service VIP \",\"price\":\"200\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, 6, NULL, NULL),
(8, 'Stewart Hotel', 'stewart-hotel', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 74, 96, 5, 'New York', '19.080542', '73.010551', 12, 0, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 5, '900.00', '12:00AM', '11:00AM', NULL, NULL, 'publish', 5, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:42', '4.0', NULL, 1, '[{\"name\":\"Service VIP \",\"price\":\"200\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, 5, NULL, NULL),
(9, 'Parian Holiday Villas', 'parian-holiday-villas', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 75, 94, 1, 'Regal Cinemas Battery Park', '19.161637', '72.997510', 12, 1, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 5, '550.00', '12:00AM', '11:00AM', NULL, NULL, 'publish', 1, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:42', '4.3', NULL, 1, '[{\"name\":\"Service VIP \",\"price\":\"200\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, 1, NULL, NULL),
(10, 'Dylan Hotel', 'dylan-hotel', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 64, 96, 2, 'Regal Cinemas Battery', '19.229727', '72.984470', 12, 1, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 5, '550.00', '12:00AM', '11:00AM', NULL, NULL, 'publish', 4, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:42', '4.0', NULL, 1, '[{\"name\":\"Service VIP \",\"price\":\"200\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, 4, NULL, NULL),
(11, 'The May Fair Hotel', 'the-may-fair-hotel', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 67, 95, 1, 'Paris Cinemas Battery', '19.277696', '72.887009', 12, 0, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 4, '550.00', '12:00AM', '11:00AM', NULL, NULL, 'publish', 4, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:42', '5.0', NULL, 1, '[{\"name\":\"Service VIP \",\"price\":\"200\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bravo_hotel_rooms`
--

DROP TABLE IF EXISTS `bravo_hotel_rooms`;
CREATE TABLE IF NOT EXISTS `bravo_hotel_rooms` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `gallery` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `number` smallint(6) DEFAULT NULL,
  `beds` tinyint(4) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `adults` tinyint(4) DEFAULT NULL,
  `children` tinyint(4) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ical_import_url` varchar(191) DEFAULT NULL,
  `min_day_stays` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_hotel_rooms`
--

INSERT INTO `bravo_hotel_rooms` (`id`, `title`, `content`, `image_id`, `gallery`, `video`, `price`, `parent_id`, `number`, `beds`, `size`, `adults`, `children`, `status`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`, `ical_import_url`, `min_day_stays`) VALUES
(1, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 1, 5, 3, 200, 6, 5, 'publish', 1, NULL, NULL, '2023-12-13 01:01:41', NULL, NULL, NULL),
(2, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 1, 5, 5, 200, 9, 3, 'publish', 1, NULL, NULL, '2023-12-13 01:01:41', NULL, NULL, NULL),
(3, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 1, 5, 4, 200, 8, 2, 'publish', 1, NULL, NULL, '2023-12-13 01:01:41', NULL, NULL, NULL),
(4, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 1, 10, 4, 200, 7, 3, 'publish', 1, NULL, NULL, '2023-12-13 01:01:41', NULL, NULL, NULL),
(5, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 2, 8, 2, 200, 9, 5, 'publish', 1, NULL, NULL, '2023-12-13 01:01:41', NULL, NULL, NULL),
(6, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 2, 7, 4, 200, 9, 3, 'publish', 1, NULL, NULL, '2023-12-13 01:01:41', NULL, NULL, NULL),
(7, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 2, 9, 5, 200, 9, 2, 'publish', 1, NULL, NULL, '2023-12-13 01:01:41', NULL, NULL, NULL),
(8, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 2, 8, 5, 200, 9, 4, 'publish', 1, NULL, NULL, '2023-12-13 01:01:41', NULL, NULL, NULL),
(9, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 3, 5, 3, 200, 6, 2, 'publish', 1, NULL, NULL, '2023-12-13 01:01:41', NULL, NULL, NULL),
(10, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 3, 8, 2, 200, 8, 5, 'publish', 1, NULL, NULL, '2023-12-13 01:01:41', NULL, NULL, NULL),
(11, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 3, 6, 2, 200, 5, 5, 'publish', 1, NULL, NULL, '2023-12-13 01:01:41', NULL, NULL, NULL),
(12, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 3, 10, 3, 200, 9, 1, 'publish', 1, NULL, NULL, '2023-12-13 01:01:41', NULL, NULL, NULL),
(13, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 4, 7, 5, 200, 10, 4, 'publish', 1, NULL, NULL, '2023-12-13 01:01:41', NULL, NULL, NULL),
(14, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 4, 5, 2, 200, 6, 2, 'publish', 1, NULL, NULL, '2023-12-13 01:01:41', NULL, NULL, NULL),
(15, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 4, 5, 4, 200, 7, 4, 'publish', 1, NULL, NULL, '2023-12-13 01:01:41', NULL, NULL, NULL),
(16, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 4, 9, 4, 200, 8, 3, 'publish', 1, NULL, NULL, '2023-12-13 01:01:41', NULL, NULL, NULL),
(17, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 5, 6, 2, 200, 7, 2, 'publish', 4, NULL, NULL, '2023-12-13 01:01:41', NULL, NULL, NULL),
(18, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 5, 8, 2, 200, 5, 2, 'publish', 4, NULL, NULL, '2023-12-13 01:01:41', NULL, NULL, NULL),
(19, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 5, 10, 4, 200, 8, 1, 'publish', 4, NULL, NULL, '2023-12-13 01:01:41', NULL, NULL, NULL),
(20, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 5, 10, 4, 200, 10, 2, 'publish', 4, NULL, NULL, '2023-12-13 01:01:41', NULL, NULL, NULL),
(21, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 6, 7, 3, 200, 5, 3, 'publish', 5, NULL, NULL, '2023-12-13 01:01:41', NULL, NULL, NULL),
(22, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 6, 9, 2, 200, 9, 1, 'publish', 5, NULL, NULL, '2023-12-13 01:01:41', NULL, NULL, NULL),
(23, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 6, 6, 2, 200, 5, 3, 'publish', 5, NULL, NULL, '2023-12-13 01:01:41', NULL, NULL, NULL),
(24, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 6, 5, 2, 200, 9, 1, 'publish', 5, NULL, NULL, '2023-12-13 01:01:41', NULL, NULL, NULL),
(25, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 7, 9, 3, 200, 6, 2, 'publish', 6, NULL, NULL, '2023-12-13 01:01:41', NULL, NULL, NULL),
(26, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 7, 10, 2, 200, 9, 4, 'publish', 6, NULL, NULL, '2023-12-13 01:01:41', NULL, NULL, NULL),
(27, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 7, 10, 2, 200, 8, 3, 'publish', 6, NULL, NULL, '2023-12-13 01:01:41', NULL, NULL, NULL),
(28, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 7, 9, 3, 200, 5, 1, 'publish', 6, NULL, NULL, '2023-12-13 01:01:41', NULL, NULL, NULL),
(29, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 8, 9, 4, 200, 7, 4, 'publish', 5, NULL, NULL, '2023-12-13 01:01:41', NULL, NULL, NULL),
(30, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 8, 6, 2, 200, 9, 1, 'publish', 5, NULL, NULL, '2023-12-13 01:01:41', NULL, NULL, NULL),
(31, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 8, 10, 5, 200, 8, 5, 'publish', 5, NULL, NULL, '2023-12-13 01:01:41', NULL, NULL, NULL),
(32, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 8, 10, 2, 200, 5, 5, 'publish', 5, NULL, NULL, '2023-12-13 01:01:41', NULL, NULL, NULL),
(33, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 9, 9, 2, 200, 6, 3, 'publish', 1, NULL, NULL, '2023-12-13 01:01:41', NULL, NULL, NULL),
(34, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 9, 7, 5, 200, 7, 2, 'publish', 1, NULL, NULL, '2023-12-13 01:01:41', NULL, NULL, NULL),
(35, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 9, 10, 5, 200, 5, 2, 'publish', 1, NULL, NULL, '2023-12-13 01:01:41', NULL, NULL, NULL),
(36, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 9, 5, 2, 200, 7, 5, 'publish', 1, NULL, NULL, '2023-12-13 01:01:41', NULL, NULL, NULL),
(37, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 10, 7, 5, 200, 5, 1, 'publish', 4, NULL, NULL, '2023-12-13 01:01:41', NULL, NULL, NULL),
(38, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 10, 6, 3, 200, 10, 5, 'publish', 4, NULL, NULL, '2023-12-13 01:01:41', NULL, NULL, NULL),
(39, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 10, 8, 2, 200, 7, 5, 'publish', 4, NULL, NULL, '2023-12-13 01:01:41', NULL, NULL, NULL),
(40, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 10, 8, 4, 200, 8, 4, 'publish', 4, NULL, NULL, '2023-12-13 01:01:41', NULL, NULL, NULL),
(41, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 11, 5, 3, 200, 6, 3, 'publish', 4, NULL, NULL, '2023-12-13 01:01:41', NULL, NULL, NULL),
(42, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 11, 9, 2, 200, 5, 2, 'publish', 4, NULL, NULL, '2023-12-13 01:01:41', NULL, NULL, NULL),
(43, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 11, 9, 3, 200, 6, 2, 'publish', 4, NULL, NULL, '2023-12-13 01:01:41', NULL, NULL, NULL),
(44, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 11, 6, 2, 200, 5, 1, 'publish', 4, NULL, NULL, '2023-12-13 01:01:41', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bravo_hotel_room_bookings`
--

DROP TABLE IF EXISTS `bravo_hotel_room_bookings`;
CREATE TABLE IF NOT EXISTS `bravo_hotel_room_bookings` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `room_id` bigint(20) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `booking_id` bigint(20) DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `number` smallint(6) DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_hotel_room_dates`
--

DROP TABLE IF EXISTS `bravo_hotel_room_dates`;
CREATE TABLE IF NOT EXISTS `bravo_hotel_room_dates` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `target_id` bigint(20) DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `max_guests` tinyint(4) DEFAULT NULL,
  `active` tinyint(4) DEFAULT 0,
  `note_to_customer` text DEFAULT NULL,
  `note_to_admin` text DEFAULT NULL,
  `is_instant` tinyint(4) DEFAULT 0,
  `number` smallint(6) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_hotel_room_term`
--

DROP TABLE IF EXISTS `bravo_hotel_room_term`;
CREATE TABLE IF NOT EXISTS `bravo_hotel_room_term` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` int(11) DEFAULT NULL,
  `target_id` int(11) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_hotel_room_term`
--

INSERT INTO `bravo_hotel_room_term` (`id`, `term_id`, `target_id`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 56, 1, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(2, 57, 1, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(3, 58, 1, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(4, 59, 1, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(5, 56, 2, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(6, 57, 2, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(7, 58, 2, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(8, 59, 2, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(9, 56, 3, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(10, 57, 3, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(11, 58, 3, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(12, 59, 3, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(13, 60, 3, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(14, 57, 4, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(15, 59, 4, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(16, 56, 5, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(17, 57, 5, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(18, 58, 5, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(19, 59, 5, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(20, 60, 5, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(21, 56, 6, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(22, 57, 6, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(23, 58, 6, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(24, 60, 6, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(25, 56, 7, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(26, 57, 7, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(27, 58, 7, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(28, 59, 7, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(29, 60, 7, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(30, 56, 8, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(31, 57, 8, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(32, 58, 8, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(33, 59, 8, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(34, 60, 8, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(35, 56, 9, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(36, 57, 9, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(37, 58, 9, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(38, 59, 9, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(39, 60, 9, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(40, 56, 10, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(41, 57, 10, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(42, 58, 10, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(43, 59, 10, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(44, 60, 10, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(45, 58, 11, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(46, 59, 11, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(47, 60, 11, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(48, 56, 12, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(49, 57, 12, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(50, 58, 12, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(51, 59, 12, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(52, 60, 12, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(53, 56, 13, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(54, 57, 13, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(55, 58, 13, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(56, 59, 13, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(57, 60, 13, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(58, 56, 14, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(59, 57, 14, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(60, 59, 14, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(61, 56, 15, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(62, 58, 15, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(63, 59, 15, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(64, 60, 15, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(65, 56, 16, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(66, 57, 16, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(67, 58, 16, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(68, 60, 16, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(69, 56, 17, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(70, 58, 17, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(71, 59, 17, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(72, 60, 17, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(73, 56, 18, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(74, 57, 18, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(75, 59, 18, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(76, 56, 19, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(77, 57, 19, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(78, 58, 19, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(79, 59, 19, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(80, 56, 20, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(81, 57, 20, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(82, 58, 20, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(83, 59, 20, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(84, 56, 21, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(85, 57, 21, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(86, 58, 21, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(87, 59, 21, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(88, 60, 21, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(89, 56, 22, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(90, 57, 22, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(91, 59, 22, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(92, 60, 22, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(93, 57, 23, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(94, 58, 23, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(95, 59, 23, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(96, 60, 23, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(97, 56, 24, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(98, 57, 24, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(99, 58, 24, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(100, 59, 24, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(101, 56, 25, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(102, 57, 25, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(103, 58, 25, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(104, 60, 25, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(105, 57, 26, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(106, 58, 26, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(107, 59, 26, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(108, 60, 26, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(109, 56, 27, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(110, 57, 27, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(111, 58, 27, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(112, 59, 27, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(113, 56, 28, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(114, 57, 28, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(115, 58, 28, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(116, 59, 28, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(117, 60, 28, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(118, 56, 29, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(119, 58, 29, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(120, 60, 29, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(121, 56, 30, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(122, 57, 30, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(123, 58, 30, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(124, 59, 30, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(125, 60, 30, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(126, 56, 31, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(127, 57, 31, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(128, 58, 31, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(129, 59, 31, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(130, 60, 31, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(131, 57, 32, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(132, 58, 32, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(133, 59, 32, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(134, 60, 32, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(135, 56, 33, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(136, 57, 33, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(137, 58, 33, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(138, 59, 33, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(139, 60, 33, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(140, 56, 34, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(141, 57, 34, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(142, 58, 34, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(143, 59, 34, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(144, 57, 35, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(145, 58, 35, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(146, 60, 35, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(147, 56, 36, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(148, 57, 36, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(149, 58, 36, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(150, 59, 36, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(151, 60, 36, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(152, 58, 37, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(153, 59, 37, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(154, 60, 37, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(155, 56, 38, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(156, 57, 38, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(157, 58, 38, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(158, 59, 38, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(159, 60, 38, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(160, 56, 39, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(161, 57, 39, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(162, 58, 39, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(163, 59, 39, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(164, 60, 39, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(165, 57, 40, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(166, 58, 40, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(167, 59, 40, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(168, 60, 40, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(169, 56, 41, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(170, 57, 41, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(171, 58, 41, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(172, 60, 41, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(173, 56, 42, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(174, 57, 42, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(175, 58, 42, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(176, 60, 42, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(177, 56, 43, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(178, 57, 43, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(179, 59, 43, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(180, 60, 43, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(181, 56, 44, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(182, 57, 44, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(183, 59, 44, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(184, 60, 44, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42');

-- --------------------------------------------------------

--
-- Table structure for table `bravo_hotel_room_translations`
--

DROP TABLE IF EXISTS `bravo_hotel_room_translations`;
CREATE TABLE IF NOT EXISTS `bravo_hotel_room_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bravo_hotel_room_translations_locale_index` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_hotel_term`
--

DROP TABLE IF EXISTS `bravo_hotel_term`;
CREATE TABLE IF NOT EXISTS `bravo_hotel_term` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` int(11) DEFAULT NULL,
  `target_id` int(11) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_hotel_term`
--

INSERT INTO `bravo_hotel_term` (`id`, `term_id`, `target_id`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 32, 1, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(2, 33, 1, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(3, 34, 1, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(4, 35, 1, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(5, 36, 1, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(6, 37, 1, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(7, 38, 1, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(8, 39, 1, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(9, 40, 1, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(10, 41, 1, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(11, 32, 2, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(12, 34, 2, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(13, 35, 2, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(14, 37, 2, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(15, 38, 2, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(16, 39, 2, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(17, 40, 2, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(18, 41, 2, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(19, 32, 3, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(20, 33, 3, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(21, 34, 3, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(22, 35, 3, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(23, 36, 3, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(24, 38, 3, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(25, 39, 3, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(26, 41, 3, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(27, 32, 4, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(28, 33, 4, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(29, 34, 4, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(30, 35, 4, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(31, 36, 4, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(32, 39, 4, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(33, 40, 4, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(34, 41, 4, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(35, 33, 5, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(36, 35, 5, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(37, 37, 5, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(38, 38, 5, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(39, 39, 5, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(40, 40, 5, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(41, 33, 6, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(42, 34, 6, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(43, 35, 6, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(44, 36, 6, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(45, 37, 6, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(46, 38, 6, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(47, 39, 6, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(48, 40, 6, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(49, 41, 6, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(50, 32, 7, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(51, 33, 7, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(52, 34, 7, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(53, 36, 7, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(54, 37, 7, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(55, 38, 7, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(56, 39, 7, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(57, 40, 7, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(58, 32, 8, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(59, 33, 8, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(60, 34, 8, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(61, 35, 8, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(62, 36, 8, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(63, 37, 8, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(64, 38, 8, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(65, 39, 8, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(66, 41, 8, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(67, 32, 9, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(68, 33, 9, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(69, 34, 9, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(70, 35, 9, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(71, 36, 9, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(72, 37, 9, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(73, 38, 9, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(74, 39, 9, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(75, 40, 9, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(76, 41, 9, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(77, 32, 10, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(78, 33, 10, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(79, 34, 10, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(80, 35, 10, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(81, 36, 10, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(82, 37, 10, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(83, 38, 10, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(84, 39, 10, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(85, 40, 10, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(86, 41, 10, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(87, 32, 11, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(88, 33, 11, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(89, 34, 11, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(90, 35, 11, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(91, 36, 11, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(92, 37, 11, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(93, 38, 11, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(94, 39, 11, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(95, 40, 11, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(96, 41, 11, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(97, 42, 1, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(98, 44, 1, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(99, 45, 1, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(100, 46, 1, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(101, 47, 1, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(102, 48, 1, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(103, 42, 2, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(104, 43, 2, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(105, 44, 2, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(106, 45, 2, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(107, 46, 2, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(108, 47, 2, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(109, 48, 2, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(110, 42, 3, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(111, 43, 3, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(112, 45, 3, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(113, 46, 3, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(114, 47, 3, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(115, 48, 3, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(116, 42, 4, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(117, 43, 4, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(118, 44, 4, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(119, 45, 4, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(120, 46, 4, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(121, 47, 4, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(122, 48, 4, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(123, 42, 5, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(124, 43, 5, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(125, 44, 5, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(126, 45, 5, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(127, 46, 5, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(128, 47, 5, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(129, 48, 5, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(130, 42, 6, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(131, 43, 6, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(132, 44, 6, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(133, 45, 6, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(134, 48, 6, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(135, 43, 7, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(136, 44, 7, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(137, 45, 7, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(138, 46, 7, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(139, 48, 7, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(140, 42, 8, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(141, 43, 8, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(142, 44, 8, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(143, 45, 8, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(144, 46, 8, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(145, 47, 8, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(146, 48, 8, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(147, 42, 9, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(148, 43, 9, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(149, 44, 9, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(150, 46, 9, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(151, 47, 9, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(152, 48, 9, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(153, 42, 10, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(154, 43, 10, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(155, 44, 10, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(156, 46, 10, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(157, 47, 10, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(158, 48, 10, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(159, 44, 11, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(160, 45, 11, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(161, 46, 11, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(162, 47, 11, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(163, 48, 11, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(164, 50, 1, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(165, 52, 1, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(166, 53, 1, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(167, 54, 1, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(168, 49, 2, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(169, 50, 2, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(170, 51, 2, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(171, 54, 2, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(172, 55, 2, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(173, 50, 3, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(174, 51, 3, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(175, 52, 3, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(176, 53, 3, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(177, 54, 3, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(178, 55, 3, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(179, 50, 4, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(180, 51, 4, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(181, 55, 4, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(182, 49, 5, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(183, 50, 5, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(184, 51, 5, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(185, 52, 5, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(186, 54, 5, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(187, 55, 5, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(188, 49, 6, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(189, 50, 6, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(190, 52, 6, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(191, 53, 6, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(192, 55, 6, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(193, 51, 7, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(194, 52, 7, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(195, 53, 7, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(196, 55, 7, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(197, 49, 8, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(198, 50, 8, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(199, 52, 8, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(200, 53, 8, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(201, 54, 8, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(202, 55, 8, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(203, 49, 9, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(204, 50, 9, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(205, 51, 9, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(206, 53, 9, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(207, 55, 9, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(208, 50, 10, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(209, 52, 10, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(210, 54, 10, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(211, 55, 10, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(212, 50, 11, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(213, 51, 11, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(214, 52, 11, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(215, 53, 11, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41'),
(216, 55, 11, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41');

-- --------------------------------------------------------

--
-- Table structure for table `bravo_hotel_translations`
--

DROP TABLE IF EXISTS `bravo_hotel_translations`;
CREATE TABLE IF NOT EXISTS `bravo_hotel_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `policy` text DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `surrounding` text DEFAULT NULL,
  `badge_tags` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bravo_hotel_translations_locale_index` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_locations`
--

DROP TABLE IF EXISTS `bravo_locations`;
CREATE TABLE IF NOT EXISTS `bravo_locations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `map_lat` varchar(20) DEFAULT NULL,
  `map_lng` varchar(20) DEFAULT NULL,
  `map_zoom` int(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `_lft` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `_rgt` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `banner_image_id` int(11) DEFAULT NULL,
  `trip_ideas` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bravo_locations__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_locations`
--

INSERT INTO `bravo_locations` (`id`, `name`, `content`, `slug`, `image_id`, `map_lat`, `map_lng`, `map_zoom`, `status`, `_lft`, `_rgt`, `parent_id`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`, `banner_image_id`, `trip_ideas`) VALUES
(1, 'Paris', 'New York, a city that doesnt sleep, as Frank Sinatra sang. The Big Apple is one of the largest cities in the United States and one of the most popular in the whole country and the world. Millions of tourists visit it every year attracted by its various iconic symbols and its wide range of leisure and cultural offer. New York is the birth place of new trends and developments in many fields such as art, gastronomy, technology,...', 'paris', 201, '48.856613', '2.352222', 12, 'publish', 1, 2, NULL, 1, NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37', 111, '\"[{\\\"title\\\":\\\"Experiencing the best jazz in Harlem, birthplace of bebop\\\",\\\"link\\\":\\\"#\\\",\\\"content\\\":\\\"New Orleans might be the home of jazz, but New York City is where many of the genre\\u2019s greats became stars \\u2013 and Harlem was at the heart of it.The neighborhood experienced a rebirth during the...\\\",\\\"image_id\\\":\\\"112\\\"},{\\\"title\\\":\\\"Reflections from the road: transformative \\u2018Big Trip\\u2019 experiences\\\",\\\"link\\\":\\\"#\\\",\\\"content\\\":\\\"Whether it\\u2019s a gap year after finishing school, a well-earned sabbatical from work or an overseas adventure in celebration of your retirement, a big trip is a rite of passage for every traveller, with myriad life lessons to be ...\\\",\\\"image_id\\\":\\\"113\\\"}]\"'),
(2, 'New York, United States', NULL, 'new-york-united-states', 107, '40.712776', '-74.005974', 12, 'publish', 3, 4, NULL, 1, NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37', NULL, NULL),
(3, 'California', NULL, 'california', 108, '36.778259', '-119.417931', 12, 'publish', 5, 6, NULL, 1, NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37', NULL, NULL),
(4, 'United States', NULL, 'united-states', 109, '37.090240', '-95.712891', 12, 'publish', 7, 8, NULL, 1, NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37', NULL, NULL),
(5, 'Los Angeles', NULL, 'los-angeles', 110, '34.052235', '-118.243683', 12, 'publish', 9, 10, NULL, 1, NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37', NULL, NULL),
(6, 'New Jersey', NULL, 'new-jersey', 106, '40.058323', '-74.405663', 12, 'publish', 11, 12, NULL, 1, NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37', NULL, NULL),
(7, 'San Francisco', NULL, 'san-francisco', 107, '37.774929', '-122.419418', 12, 'publish', 13, 14, NULL, 1, NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37', NULL, NULL),
(8, 'Virginia', NULL, 'virginia', 108, '37.431572', '-78.656891', 12, 'publish', 15, 16, NULL, 1, NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37', NULL, NULL),
(9, 'London', NULL, 'london', 107, '37.431572', '-78.656891', 12, 'publish', 17, 18, NULL, 1, NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37', NULL, NULL),
(10, 'Germany', NULL, 'germany', 106, '37.431572', '-78.656891', 12, 'publish', 19, 20, NULL, 1, NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bravo_location_translations`
--

DROP TABLE IF EXISTS `bravo_location_translations`;
CREATE TABLE IF NOT EXISTS `bravo_location_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `origin_id` bigint(20) DEFAULT NULL,
  `locale` varchar(10) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `trip_ideas` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bravo_location_translations_origin_id_locale_unique` (`origin_id`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_payouts`
--

DROP TABLE IF EXISTS `bravo_payouts`;
CREATE TABLE IF NOT EXISTS `bravo_payouts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `vendor_id` bigint(20) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `payout_method` varchar(50) DEFAULT NULL,
  `account_info` text DEFAULT NULL,
  `note_to_admin` text DEFAULT NULL,
  `note_to_vendor` text DEFAULT NULL,
  `last_process_by` int(11) DEFAULT NULL,
  `pay_date` timestamp NULL DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_plans`
--

DROP TABLE IF EXISTS `bravo_plans`;
CREATE TABLE IF NOT EXISTS `bravo_plans` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `duration` int(11) DEFAULT 0,
  `duration_type` varchar(30) DEFAULT NULL,
  `annual_price` decimal(12,2) DEFAULT NULL,
  `max_service` int(11) DEFAULT 0,
  `status` varchar(30) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  `is_recommended` tinyint(4) DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_plans`
--

INSERT INTO `bravo_plans` (`id`, `title`, `content`, `price`, `duration`, `duration_type`, `annual_price`, `max_service`, `status`, `role_id`, `is_recommended`, `deleted_at`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 'Basic', '<ul><li>5 service posting</li><li>2 featured service</li><li>Service displayed for 20 days</li><li>Premium Support 24/7</li></ul>', '199.00', 1, 'month', '1199.00', 5, 'publish', 2, 0, NULL, NULL, NULL, '2023-12-13 01:01:57', '2023-12-13 01:01:57'),
(2, 'Standard', '<ul><li>5 service posting</li><li>2 featured service</li><li>Service displayed for 20 days</li><li>Premium Support 24/7</li></ul>', '499.00', 1, 'month', '1499.00', 20, 'publish', 2, 1, NULL, NULL, NULL, '2023-12-13 01:01:57', '2023-12-13 01:01:57'),
(3, 'Extended', '<ul><li>5 service posting</li><li>2 featured service</li><li>Service displayed for 20 days</li><li>Premium Support 24/7</li></ul>', '799.00', 1, 'month', '1799.00', 50, 'publish', 2, 0, NULL, NULL, NULL, '2023-12-13 01:01:57', '2023-12-13 01:01:57');

-- --------------------------------------------------------

--
-- Table structure for table `bravo_plan_trans`
--

DROP TABLE IF EXISTS `bravo_plan_trans`;
CREATE TABLE IF NOT EXISTS `bravo_plan_trans` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bravo_plan_trans_origin_id_locale_unique` (`origin_id`,`locale`),
  KEY `bravo_plan_trans_locale_index` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_popups`
--

DROP TABLE IF EXISTS `bravo_popups`;
CREATE TABLE IF NOT EXISTS `bravo_popups` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `status` varchar(50) DEFAULT 'draft',
  `include_url` text DEFAULT NULL,
  `exclude_url` text DEFAULT NULL,
  `schedule_type` varchar(191) DEFAULT 'day',
  `schedule_amount` varchar(191) DEFAULT '0',
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_popup_translations`
--

DROP TABLE IF EXISTS `bravo_popup_translations`;
CREATE TABLE IF NOT EXISTS `bravo_popup_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bravo_popup_translations_origin_id_locale_unique` (`origin_id`,`locale`),
  KEY `bravo_popup_translations_locale_index` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_review`
--

DROP TABLE IF EXISTS `bravo_review`;
CREATE TABLE IF NOT EXISTS `bravo_review` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `object_model` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `rate_number` int(11) DEFAULT NULL,
  `author_ip` varchar(100) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `lang` varchar(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vendor_id` bigint(20) DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_review`
--

INSERT INTO `bravo_review` (`id`, `object_id`, `object_model`, `title`, `content`, `rate_number`, `author_ip`, `status`, `publish_date`, `create_user`, `update_user`, `deleted_at`, `lang`, `created_at`, `updated_at`, `vendor_id`, `author_id`) VALUES
(1, 2, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:37', NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37', 1, 2),
(2, 2, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:37', NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37', 1, 2),
(3, 3, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:37', NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37', 2, 2),
(4, 3, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:37', NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37', 2, 2),
(5, 3, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:37', NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37', 2, 1),
(6, 3, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:37', NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37', 2, 1),
(7, 4, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:37', NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37', 1, 2),
(8, 4, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:37', NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37', 1, 1),
(9, 4, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:37', NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37', 1, 1),
(10, 5, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:37', NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37', 2, 1),
(11, 5, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:37', NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37', 2, 2),
(12, 5, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:37', NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37', 2, 1),
(13, 6, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:37', NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37', 2, 2),
(14, 6, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:37', NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37', 2, 2),
(15, 6, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:37', NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37', 2, 1),
(16, 6, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:37', NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37', 2, 2),
(17, 6, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:37', NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37', 2, 2),
(18, 7, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:37', NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37', 2, 1),
(19, 7, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:37', NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37', 2, 2),
(20, 7, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:37', NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37', 2, 2),
(21, 8, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:37', NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37', 2, 2),
(22, 8, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:37', NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37', 2, 1),
(23, 8, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:37', NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37', 2, 2),
(24, 8, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:37', NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37', 2, 1),
(25, 9, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:37', NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37', 2, 2),
(26, 9, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:37', NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37', 2, 1),
(27, 9, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:37', NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37', 2, 1),
(28, 10, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:37', NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37', 2, 1),
(29, 10, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:37', NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37', 2, 1),
(30, 10, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:37', NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37', 2, 1),
(31, 10, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:37', NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37', 2, 1),
(32, 11, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:37', NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37', 2, 2),
(33, 11, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:37', NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37', 2, 2),
(34, 12, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:37', NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37', 1, 1),
(35, 12, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:37', NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37', 1, 1),
(36, 12, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:37', NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37', 1, 2),
(37, 13, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:37', NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37', 2, 2),
(38, 13, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:37', NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37', 2, 1),
(39, 13, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:38', NULL, NULL, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38', 2, 1),
(40, 13, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:38', NULL, NULL, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38', 2, 2),
(41, 14, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:38', NULL, NULL, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38', 1, 2),
(42, 14, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:38', NULL, NULL, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38', 1, 2),
(43, 14, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:38', NULL, NULL, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38', 1, 2),
(44, 14, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:38', NULL, NULL, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38', 1, 1),
(45, 14, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:38', NULL, NULL, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38', 1, 1),
(46, 15, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:38', NULL, NULL, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38', 2, 2),
(47, 15, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:38', NULL, NULL, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38', 2, 1),
(48, 15, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:38', NULL, NULL, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38', 2, 1),
(49, 16, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:38', NULL, NULL, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38', 1, 1),
(50, 16, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:38', NULL, NULL, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38', 1, 2),
(51, 16, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:38', NULL, NULL, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38', 1, 2),
(52, 1, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:39', 13, NULL, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39', 1, 13),
(53, 1, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:39', 12, NULL, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39', 1, 12),
(54, 1, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:39', 10, NULL, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39', 1, 10),
(55, 1, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:39', 9, NULL, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39', 1, 9),
(56, 1, 'space', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:39', 10, NULL, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39', 1, 10),
(57, 2, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:39', 10, NULL, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39', 1, 10),
(58, 2, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:39', 7, NULL, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39', 1, 7),
(59, 3, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:39', 14, NULL, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39', 6, 14),
(60, 3, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:39', 16, NULL, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39', 6, 16),
(61, 3, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:39', 14, NULL, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39', 6, 14),
(62, 4, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:39', 13, NULL, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39', 4, 13),
(63, 4, 'space', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:39', 16, NULL, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39', 4, 16),
(64, 4, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:39', 10, NULL, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39', 4, 10),
(65, 5, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:39', 10, NULL, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39', 4, 10),
(66, 5, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:39', 16, NULL, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39', 4, 16),
(67, 5, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:39', 8, NULL, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39', 4, 8),
(68, 5, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:39', 7, NULL, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39', 4, 7),
(69, 6, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:39', 13, NULL, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39', 4, 13),
(70, 6, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:39', 14, NULL, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39', 4, 14),
(71, 7, 'space', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:39', 7, NULL, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39', 4, 7),
(72, 7, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:39', 10, NULL, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39', 4, 10),
(73, 7, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:39', 15, NULL, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39', 4, 15),
(74, 7, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:39', 10, NULL, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39', 4, 10),
(75, 8, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:39', 11, NULL, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39', 4, 11),
(76, 8, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:39', 16, NULL, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39', 4, 16),
(77, 8, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:39', 7, NULL, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39', 4, 7),
(78, 9, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:39', 15, NULL, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39', 5, 15),
(79, 9, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:39', 16, NULL, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39', 5, 16),
(80, 9, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:39', 7, NULL, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39', 5, 7),
(81, 10, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:39', 7, NULL, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39', 1, 7),
(82, 10, 'space', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:39', 7, NULL, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39', 1, 7),
(83, 11, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:39', 14, NULL, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39', 5, 14),
(84, 11, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:39', 15, NULL, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39', 5, 15),
(85, 1, 'hotel', 'Nothing good this time', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:40', 11, NULL, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40', 1, 11),
(86, 1, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:40', 14, NULL, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40', 1, 14),
(87, 1, 'hotel', 'Nothing good this time', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:40', 10, NULL, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40', 1, 10),
(88, 2, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:40', 7, NULL, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40', 1, 7),
(89, 2, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:40', 11, NULL, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40', 1, 11),
(90, 3, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:40', 16, NULL, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40', 1, 16),
(91, 3, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:40', 14, NULL, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40', 1, 14),
(92, 3, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:40', 9, NULL, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40', 1, 9),
(93, 3, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:40', 10, NULL, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40', 1, 10),
(94, 4, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:40', 10, NULL, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40', 1, 10),
(95, 4, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:40', 11, NULL, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40', 1, 11),
(96, 4, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:40', 14, NULL, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40', 1, 14),
(97, 5, 'hotel', 'Nothing good this time', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:40', 12, NULL, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40', 4, 12),
(98, 5, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:40', 12, NULL, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40', 4, 12),
(99, 5, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:40', 13, NULL, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40', 4, 13),
(100, 5, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:40', 10, NULL, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40', 4, 10),
(101, 6, 'hotel', 'Nothing good this time', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:40', 8, NULL, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40', 5, 8),
(102, 6, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:40', 11, NULL, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40', 5, 11),
(103, 6, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:40', 15, NULL, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40', 5, 15),
(104, 7, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:40', 8, NULL, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40', 6, 8),
(105, 7, 'hotel', 'Nothing good this time', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:40', 11, NULL, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40', 6, 11),
(106, 8, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:40', 11, NULL, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40', 5, 11),
(107, 8, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:40', 9, NULL, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40', 5, 9),
(108, 8, 'hotel', 'Nothing good this time', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:40', 14, NULL, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40', 5, 14),
(109, 9, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:40', 9, NULL, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40', 1, 9),
(110, 9, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:40', 11, NULL, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40', 1, 11),
(111, 9, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:40', 14, NULL, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40', 1, 14),
(112, 9, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:40', 10, NULL, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40', 1, 10),
(113, 10, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:40', 15, NULL, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40', 4, 15),
(114, 10, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:40', 8, NULL, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40', 4, 8),
(115, 11, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:40', 10, NULL, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40', 4, 10),
(116, 11, 'hotel', 'Nothing good this time', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:40', 8, NULL, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40', 4, 8),
(117, 1, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:42', NULL, NULL, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42', 1, 16),
(118, 1, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:42', NULL, NULL, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42', 1, 12),
(119, 1, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:42', NULL, NULL, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42', 1, 15),
(120, 2, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:42', NULL, NULL, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42', 1, 10),
(121, 2, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:42', NULL, NULL, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42', 1, 11);
INSERT INTO `bravo_review` (`id`, `object_id`, `object_model`, `title`, `content`, `rate_number`, `author_ip`, `status`, `publish_date`, `create_user`, `update_user`, `deleted_at`, `lang`, `created_at`, `updated_at`, `vendor_id`, `author_id`) VALUES
(122, 2, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:42', NULL, NULL, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42', 1, 8),
(123, 3, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:42', NULL, NULL, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42', 1, 16),
(124, 3, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:42', NULL, NULL, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42', 1, 16),
(125, 4, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:42', NULL, NULL, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42', 1, 9),
(126, 4, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:42', NULL, NULL, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42', 1, 15),
(127, 4, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:42', NULL, NULL, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42', 1, 13),
(128, 5, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:42', NULL, NULL, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42', 1, 8),
(129, 5, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:42', NULL, NULL, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42', 1, 15),
(130, 5, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:42', NULL, NULL, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42', 1, 15),
(131, 6, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:42', NULL, NULL, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42', 2, 7),
(132, 6, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:42', NULL, NULL, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42', 2, 12),
(133, 6, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:42', NULL, NULL, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42', 2, 9),
(134, 6, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:42', NULL, NULL, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42', 2, 14),
(135, 7, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:42', NULL, NULL, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42', 2, 13),
(136, 7, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:42', NULL, NULL, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42', 2, 9),
(137, 7, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:42', NULL, NULL, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42', 2, 11),
(138, 7, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:42', NULL, NULL, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42', 2, 13),
(139, 7, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:42', NULL, NULL, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42', 2, 7),
(140, 8, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:42', NULL, NULL, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42', 2, 9),
(141, 8, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:42', NULL, NULL, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42', 2, 12),
(142, 8, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:42', NULL, NULL, NULL, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42', 2, 9),
(143, 9, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:43', NULL, NULL, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43', 2, 12),
(144, 10, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:43', NULL, NULL, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43', 2, 10),
(145, 10, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:43', NULL, NULL, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43', 2, 14),
(146, 10, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:43', NULL, NULL, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43', 2, 16),
(147, 10, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:43', NULL, NULL, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43', 2, 13),
(148, 11, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:43', NULL, NULL, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43', 2, 13),
(149, 11, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:43', NULL, NULL, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43', 2, 7),
(150, 11, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:43', NULL, NULL, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43', 2, 9),
(151, 12, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:43', NULL, NULL, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43', 2, 15),
(152, 12, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:43', NULL, NULL, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43', 2, 10),
(153, 12, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:43', NULL, NULL, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43', 2, 15),
(154, 12, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:43', NULL, NULL, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43', 2, 12),
(155, 12, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:43', NULL, NULL, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43', 2, 10),
(156, 13, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:43', NULL, NULL, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43', 2, 8),
(157, 13, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:43', NULL, NULL, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43', 2, 13),
(158, 13, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:43', NULL, NULL, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43', 2, 9),
(159, 1, 'event', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:44', 16, NULL, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44', 1, 16),
(160, 1, 'event', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:44', 13, NULL, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44', 1, 13),
(161, 1, 'event', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:44', 8, NULL, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44', 1, 8),
(162, 2, 'event', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:44', 8, NULL, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44', 1, 8),
(163, 2, 'event', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:44', 15, NULL, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44', 1, 15),
(164, 2, 'event', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:44', 13, NULL, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44', 1, 13),
(165, 3, 'event', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:44', 11, NULL, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44', 4, 11),
(166, 3, 'event', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:44', 15, NULL, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44', 4, 15),
(167, 3, 'event', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:44', 7, NULL, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44', 4, 7),
(168, 3, 'event', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:44', 14, NULL, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44', 4, 14),
(169, 4, 'event', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:44', 10, NULL, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44', 1, 10),
(170, 4, 'event', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:44', 16, NULL, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44', 1, 16),
(171, 4, 'event', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:44', 15, NULL, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44', 1, 15),
(172, 5, 'event', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:44', 9, NULL, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44', 6, 9),
(173, 5, 'event', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:44', 10, NULL, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44', 6, 10),
(174, 5, 'event', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:44', 12, NULL, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44', 6, 12),
(175, 5, 'event', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:44', 13, NULL, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44', 6, 13),
(176, 6, 'event', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:44', 9, NULL, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44', 4, 9),
(177, 6, 'event', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:44', 10, NULL, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44', 4, 10),
(178, 6, 'event', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:44', 11, NULL, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44', 4, 11),
(179, 6, 'event', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:44', 15, NULL, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44', 4, 15),
(180, 7, 'event', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:44', 7, NULL, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44', 5, 7),
(181, 7, 'event', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:44', 13, NULL, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44', 5, 13),
(182, 7, 'event', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:44', 14, NULL, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44', 5, 14),
(183, 7, 'event', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:44', 8, NULL, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44', 5, 8),
(184, 8, 'event', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:44', 7, NULL, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44', 6, 7),
(185, 8, 'event', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:44', 13, NULL, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44', 6, 13),
(186, 9, 'event', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:44', 11, NULL, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44', 6, 11),
(187, 9, 'event', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:44', 9, NULL, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44', 6, 9),
(188, 9, 'event', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:44', 13, NULL, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44', 6, 13),
(189, 9, 'event', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:44', 12, NULL, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44', 6, 12),
(190, 10, 'event', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:44', 7, NULL, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44', 5, 7),
(191, 10, 'event', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:44', 16, NULL, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44', 5, 16),
(192, 10, 'event', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:44', 8, NULL, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44', 5, 8),
(193, 11, 'event', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:44', 16, NULL, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44', 6, 16),
(194, 11, 'event', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:44', 14, NULL, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44', 6, 14),
(195, 11, 'event', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:44', 13, NULL, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44', 6, 13),
(196, 12, 'event', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:44', 10, NULL, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44', 1, 10),
(197, 12, 'event', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:44', 7, NULL, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44', 1, 7),
(198, 12, 'event', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:44', 14, NULL, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44', 1, 14),
(199, 1, 'boat', 'Good Boat', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:48', 10, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48', 1, 10),
(200, 1, 'boat', 'Good Boat', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:48', 12, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48', 1, 12),
(201, 2, 'boat', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:48', 11, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48', 1, 11),
(202, 2, 'boat', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:48', 15, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48', 1, 15),
(203, 3, 'boat', 'Good Boat', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:48', 13, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48', 1, 13),
(204, 3, 'boat', 'Good Boat', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:48', 8, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48', 1, 8),
(205, 4, 'boat', 'Great Boat', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:48', 10, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48', 1, 10),
(206, 4, 'boat', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:48', 10, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48', 1, 10),
(207, 4, 'boat', 'Good Boat', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:48', 7, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48', 1, 7),
(208, 4, 'boat', 'Great Boat', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:48', 15, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48', 1, 15),
(209, 5, 'boat', 'Good Boat', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:48', 13, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48', 1, 13),
(210, 5, 'boat', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:48', 7, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48', 1, 7),
(211, 5, 'boat', 'Great Boat', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:48', 7, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48', 1, 7),
(212, 6, 'boat', 'Good Boat', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:48', 11, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48', 4, 11),
(213, 6, 'boat', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:48', 12, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48', 4, 12),
(214, 6, 'boat', 'Great Boat', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:48', 12, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48', 4, 12),
(215, 6, 'boat', 'Good Boat', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:48', 11, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48', 4, 11),
(216, 7, 'boat', 'Boat was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:48', 11, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48', 6, 11),
(217, 7, 'boat', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:48', 9, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48', 6, 9),
(218, 7, 'boat', 'Boat was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:48', 13, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48', 6, 13),
(219, 8, 'boat', 'Boat was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:48', 13, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48', 5, 13),
(220, 8, 'boat', 'Boat was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:48', 16, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48', 5, 16),
(221, 8, 'boat', 'Good Boat', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:48', 9, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48', 5, 9),
(222, 9, 'boat', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:48', 7, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48', 4, 7),
(223, 9, 'boat', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:48', 14, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48', 4, 14),
(224, 9, 'boat', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:48', 9, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48', 4, 9),
(225, 9, 'boat', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:48', 7, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48', 4, 7),
(226, 10, 'boat', 'Great Boat', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:48', 11, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48', 6, 11),
(227, 10, 'boat', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:48', 10, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48', 6, 10),
(228, 10, 'boat', 'Boat was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:48', 12, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48', 6, 12),
(229, 10, 'boat', 'Boat was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:48', 16, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48', 6, 16),
(230, 11, 'boat', 'Good Boat', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:48', 8, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48', 5, 8),
(231, 11, 'boat', 'Boat was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:48', 16, NULL, NULL, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48', 5, 16),
(232, 11, 'boat', 'Boat was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:49', 8, NULL, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49', 5, 8),
(233, 11, 'boat', 'Boat was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:49', 15, NULL, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49', 5, 15),
(234, 12, 'boat', 'Good Boat', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:49', 7, NULL, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49', 6, 7),
(235, 12, 'boat', 'Boat was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:49', 11, NULL, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49', 6, 11),
(236, 12, 'boat', 'Great Boat', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:49', 16, NULL, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49', 6, 16),
(237, 13, 'boat', 'Good Boat', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2023-12-13 06:31:49', 8, NULL, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49', 6, 8),
(238, 13, 'boat', 'Boat was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:49', 8, NULL, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49', 6, 8),
(239, 13, 'boat', 'Good Boat', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2023-12-13 06:31:49', 16, NULL, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49', 6, 16);

-- --------------------------------------------------------

--
-- Table structure for table `bravo_review_meta`
--

DROP TABLE IF EXISTS `bravo_review_meta`;
CREATE TABLE IF NOT EXISTS `bravo_review_meta` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `review_id` int(11) DEFAULT NULL,
  `object_id` int(11) DEFAULT NULL,
  `object_model` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `val` text DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1196 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_review_meta`
--

INSERT INTO `bravo_review_meta` (`id`, `review_id`, `object_id`, `object_model`, `name`, `val`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'tour', 'Service', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(2, 1, 2, 'tour', 'Organization', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(3, 1, 2, 'tour', 'Friendliness', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(4, 1, 2, 'tour', 'Area Expert', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(5, 1, 2, 'tour', 'Safety', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(6, 2, 2, 'tour', 'Service', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(7, 2, 2, 'tour', 'Organization', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(8, 2, 2, 'tour', 'Friendliness', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(9, 2, 2, 'tour', 'Area Expert', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(10, 2, 2, 'tour', 'Safety', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(11, 3, 3, 'tour', 'Service', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(12, 3, 3, 'tour', 'Organization', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(13, 3, 3, 'tour', 'Friendliness', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(14, 3, 3, 'tour', 'Area Expert', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(15, 3, 3, 'tour', 'Safety', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(16, 4, 3, 'tour', 'Service', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(17, 4, 3, 'tour', 'Organization', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(18, 4, 3, 'tour', 'Friendliness', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(19, 4, 3, 'tour', 'Area Expert', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(20, 4, 3, 'tour', 'Safety', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(21, 5, 3, 'tour', 'Service', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(22, 5, 3, 'tour', 'Organization', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(23, 5, 3, 'tour', 'Friendliness', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(24, 5, 3, 'tour', 'Area Expert', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(25, 5, 3, 'tour', 'Safety', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(26, 6, 3, 'tour', 'Service', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(27, 6, 3, 'tour', 'Organization', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(28, 6, 3, 'tour', 'Friendliness', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(29, 6, 3, 'tour', 'Area Expert', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(30, 6, 3, 'tour', 'Safety', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(31, 7, 4, 'tour', 'Service', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(32, 7, 4, 'tour', 'Organization', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(33, 7, 4, 'tour', 'Friendliness', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(34, 7, 4, 'tour', 'Area Expert', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(35, 7, 4, 'tour', 'Safety', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(36, 8, 4, 'tour', 'Service', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(37, 8, 4, 'tour', 'Organization', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(38, 8, 4, 'tour', 'Friendliness', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(39, 8, 4, 'tour', 'Area Expert', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(40, 8, 4, 'tour', 'Safety', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(41, 9, 4, 'tour', 'Service', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(42, 9, 4, 'tour', 'Organization', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(43, 9, 4, 'tour', 'Friendliness', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(44, 9, 4, 'tour', 'Area Expert', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(45, 9, 4, 'tour', 'Safety', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(46, 10, 5, 'tour', 'Service', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(47, 10, 5, 'tour', 'Organization', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(48, 10, 5, 'tour', 'Friendliness', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(49, 10, 5, 'tour', 'Area Expert', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(50, 10, 5, 'tour', 'Safety', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(51, 11, 5, 'tour', 'Service', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(52, 11, 5, 'tour', 'Organization', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(53, 11, 5, 'tour', 'Friendliness', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(54, 11, 5, 'tour', 'Area Expert', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(55, 11, 5, 'tour', 'Safety', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(56, 12, 5, 'tour', 'Service', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(57, 12, 5, 'tour', 'Organization', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(58, 12, 5, 'tour', 'Friendliness', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(59, 12, 5, 'tour', 'Area Expert', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(60, 12, 5, 'tour', 'Safety', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(61, 13, 6, 'tour', 'Service', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(62, 13, 6, 'tour', 'Organization', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(63, 13, 6, 'tour', 'Friendliness', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(64, 13, 6, 'tour', 'Area Expert', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(65, 13, 6, 'tour', 'Safety', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(66, 14, 6, 'tour', 'Service', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(67, 14, 6, 'tour', 'Organization', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(68, 14, 6, 'tour', 'Friendliness', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(69, 14, 6, 'tour', 'Area Expert', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(70, 14, 6, 'tour', 'Safety', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(71, 15, 6, 'tour', 'Service', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(72, 15, 6, 'tour', 'Organization', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(73, 15, 6, 'tour', 'Friendliness', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(74, 15, 6, 'tour', 'Area Expert', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(75, 15, 6, 'tour', 'Safety', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(76, 16, 6, 'tour', 'Service', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(77, 16, 6, 'tour', 'Organization', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(78, 16, 6, 'tour', 'Friendliness', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(79, 16, 6, 'tour', 'Area Expert', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(80, 16, 6, 'tour', 'Safety', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(81, 17, 6, 'tour', 'Service', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(82, 17, 6, 'tour', 'Organization', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(83, 17, 6, 'tour', 'Friendliness', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(84, 17, 6, 'tour', 'Area Expert', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(85, 17, 6, 'tour', 'Safety', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(86, 18, 7, 'tour', 'Service', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(87, 18, 7, 'tour', 'Organization', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(88, 18, 7, 'tour', 'Friendliness', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(89, 18, 7, 'tour', 'Area Expert', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(90, 18, 7, 'tour', 'Safety', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(91, 19, 7, 'tour', 'Service', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(92, 19, 7, 'tour', 'Organization', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(93, 19, 7, 'tour', 'Friendliness', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(94, 19, 7, 'tour', 'Area Expert', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(95, 19, 7, 'tour', 'Safety', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(96, 20, 7, 'tour', 'Service', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(97, 20, 7, 'tour', 'Organization', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(98, 20, 7, 'tour', 'Friendliness', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(99, 20, 7, 'tour', 'Area Expert', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(100, 20, 7, 'tour', 'Safety', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(101, 21, 8, 'tour', 'Service', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(102, 21, 8, 'tour', 'Organization', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(103, 21, 8, 'tour', 'Friendliness', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(104, 21, 8, 'tour', 'Area Expert', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(105, 21, 8, 'tour', 'Safety', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(106, 22, 8, 'tour', 'Service', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(107, 22, 8, 'tour', 'Organization', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(108, 22, 8, 'tour', 'Friendliness', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(109, 22, 8, 'tour', 'Area Expert', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(110, 22, 8, 'tour', 'Safety', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(111, 23, 8, 'tour', 'Service', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(112, 23, 8, 'tour', 'Organization', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(113, 23, 8, 'tour', 'Friendliness', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(114, 23, 8, 'tour', 'Area Expert', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(115, 23, 8, 'tour', 'Safety', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(116, 24, 8, 'tour', 'Service', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(117, 24, 8, 'tour', 'Organization', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(118, 24, 8, 'tour', 'Friendliness', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(119, 24, 8, 'tour', 'Area Expert', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(120, 24, 8, 'tour', 'Safety', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(121, 25, 9, 'tour', 'Service', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(122, 25, 9, 'tour', 'Organization', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(123, 25, 9, 'tour', 'Friendliness', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(124, 25, 9, 'tour', 'Area Expert', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(125, 25, 9, 'tour', 'Safety', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(126, 26, 9, 'tour', 'Service', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(127, 26, 9, 'tour', 'Organization', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(128, 26, 9, 'tour', 'Friendliness', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(129, 26, 9, 'tour', 'Area Expert', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(130, 26, 9, 'tour', 'Safety', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(131, 27, 9, 'tour', 'Service', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(132, 27, 9, 'tour', 'Organization', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(133, 27, 9, 'tour', 'Friendliness', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(134, 27, 9, 'tour', 'Area Expert', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(135, 27, 9, 'tour', 'Safety', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(136, 28, 10, 'tour', 'Service', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(137, 28, 10, 'tour', 'Organization', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(138, 28, 10, 'tour', 'Friendliness', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(139, 28, 10, 'tour', 'Area Expert', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(140, 28, 10, 'tour', 'Safety', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(141, 29, 10, 'tour', 'Service', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(142, 29, 10, 'tour', 'Organization', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(143, 29, 10, 'tour', 'Friendliness', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(144, 29, 10, 'tour', 'Area Expert', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(145, 29, 10, 'tour', 'Safety', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(146, 30, 10, 'tour', 'Service', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(147, 30, 10, 'tour', 'Organization', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(148, 30, 10, 'tour', 'Friendliness', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(149, 30, 10, 'tour', 'Area Expert', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(150, 30, 10, 'tour', 'Safety', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(151, 31, 10, 'tour', 'Service', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(152, 31, 10, 'tour', 'Organization', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(153, 31, 10, 'tour', 'Friendliness', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(154, 31, 10, 'tour', 'Area Expert', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(155, 31, 10, 'tour', 'Safety', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(156, 32, 11, 'tour', 'Service', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(157, 32, 11, 'tour', 'Organization', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(158, 32, 11, 'tour', 'Friendliness', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(159, 32, 11, 'tour', 'Area Expert', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(160, 32, 11, 'tour', 'Safety', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(161, 33, 11, 'tour', 'Service', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(162, 33, 11, 'tour', 'Organization', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(163, 33, 11, 'tour', 'Friendliness', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(164, 33, 11, 'tour', 'Area Expert', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(165, 33, 11, 'tour', 'Safety', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(166, 34, 12, 'tour', 'Service', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(167, 34, 12, 'tour', 'Organization', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(168, 34, 12, 'tour', 'Friendliness', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(169, 34, 12, 'tour', 'Area Expert', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(170, 34, 12, 'tour', 'Safety', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(171, 35, 12, 'tour', 'Service', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(172, 35, 12, 'tour', 'Organization', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(173, 35, 12, 'tour', 'Friendliness', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(174, 35, 12, 'tour', 'Area Expert', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(175, 35, 12, 'tour', 'Safety', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(176, 36, 12, 'tour', 'Service', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(177, 36, 12, 'tour', 'Organization', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(178, 36, 12, 'tour', 'Friendliness', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(179, 36, 12, 'tour', 'Area Expert', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(180, 36, 12, 'tour', 'Safety', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(181, 37, 13, 'tour', 'Service', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(182, 37, 13, 'tour', 'Organization', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(183, 37, 13, 'tour', 'Friendliness', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(184, 37, 13, 'tour', 'Area Expert', '4', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(185, 37, 13, 'tour', 'Safety', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(186, 38, 13, 'tour', 'Service', '5', 1, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(187, 38, 13, 'tour', 'Organization', '5', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(188, 38, 13, 'tour', 'Friendliness', '5', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(189, 38, 13, 'tour', 'Area Expert', '4', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(190, 38, 13, 'tour', 'Safety', '4', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(191, 39, 13, 'tour', 'Service', '5', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(192, 39, 13, 'tour', 'Organization', '5', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(193, 39, 13, 'tour', 'Friendliness', '4', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(194, 39, 13, 'tour', 'Area Expert', '4', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(195, 39, 13, 'tour', 'Safety', '4', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(196, 40, 13, 'tour', 'Service', '5', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(197, 40, 13, 'tour', 'Organization', '5', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(198, 40, 13, 'tour', 'Friendliness', '5', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(199, 40, 13, 'tour', 'Area Expert', '5', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(200, 40, 13, 'tour', 'Safety', '4', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(201, 41, 14, 'tour', 'Service', '4', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(202, 41, 14, 'tour', 'Organization', '5', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(203, 41, 14, 'tour', 'Friendliness', '5', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(204, 41, 14, 'tour', 'Area Expert', '4', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(205, 41, 14, 'tour', 'Safety', '4', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(206, 42, 14, 'tour', 'Service', '4', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(207, 42, 14, 'tour', 'Organization', '4', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(208, 42, 14, 'tour', 'Friendliness', '4', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(209, 42, 14, 'tour', 'Area Expert', '4', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(210, 42, 14, 'tour', 'Safety', '5', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(211, 43, 14, 'tour', 'Service', '4', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(212, 43, 14, 'tour', 'Organization', '5', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(213, 43, 14, 'tour', 'Friendliness', '4', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(214, 43, 14, 'tour', 'Area Expert', '5', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(215, 43, 14, 'tour', 'Safety', '4', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(216, 44, 14, 'tour', 'Service', '5', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(217, 44, 14, 'tour', 'Organization', '4', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(218, 44, 14, 'tour', 'Friendliness', '5', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(219, 44, 14, 'tour', 'Area Expert', '4', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(220, 44, 14, 'tour', 'Safety', '5', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(221, 45, 14, 'tour', 'Service', '5', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(222, 45, 14, 'tour', 'Organization', '4', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(223, 45, 14, 'tour', 'Friendliness', '5', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(224, 45, 14, 'tour', 'Area Expert', '5', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(225, 45, 14, 'tour', 'Safety', '4', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(226, 46, 15, 'tour', 'Service', '4', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(227, 46, 15, 'tour', 'Organization', '5', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(228, 46, 15, 'tour', 'Friendliness', '4', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(229, 46, 15, 'tour', 'Area Expert', '5', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(230, 46, 15, 'tour', 'Safety', '4', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(231, 47, 15, 'tour', 'Service', '5', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(232, 47, 15, 'tour', 'Organization', '4', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(233, 47, 15, 'tour', 'Friendliness', '5', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(234, 47, 15, 'tour', 'Area Expert', '4', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(235, 47, 15, 'tour', 'Safety', '4', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(236, 48, 15, 'tour', 'Service', '5', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(237, 48, 15, 'tour', 'Organization', '5', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(238, 48, 15, 'tour', 'Friendliness', '5', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(239, 48, 15, 'tour', 'Area Expert', '4', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(240, 48, 15, 'tour', 'Safety', '5', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(241, 49, 16, 'tour', 'Service', '4', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(242, 49, 16, 'tour', 'Organization', '4', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(243, 49, 16, 'tour', 'Friendliness', '4', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(244, 49, 16, 'tour', 'Area Expert', '4', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(245, 49, 16, 'tour', 'Safety', '4', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(246, 50, 16, 'tour', 'Service', '4', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(247, 50, 16, 'tour', 'Organization', '5', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(248, 50, 16, 'tour', 'Friendliness', '4', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(249, 50, 16, 'tour', 'Area Expert', '5', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(250, 50, 16, 'tour', 'Safety', '4', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(251, 51, 16, 'tour', 'Service', '4', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(252, 51, 16, 'tour', 'Organization', '4', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(253, 51, 16, 'tour', 'Friendliness', '4', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(254, 51, 16, 'tour', 'Area Expert', '5', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(255, 51, 16, 'tour', 'Safety', '5', 1, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(256, 52, 1, 'space', 'Sleep', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(257, 52, 1, 'space', 'Location', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(258, 52, 1, 'space', 'Service', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(259, 52, 1, 'space', 'Clearness', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(260, 52, 1, 'space', 'Rooms', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(261, 53, 1, 'space', 'Sleep', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(262, 53, 1, 'space', 'Location', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(263, 53, 1, 'space', 'Service', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(264, 53, 1, 'space', 'Clearness', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(265, 53, 1, 'space', 'Rooms', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(266, 54, 1, 'space', 'Sleep', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(267, 54, 1, 'space', 'Location', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(268, 54, 1, 'space', 'Service', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(269, 54, 1, 'space', 'Clearness', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(270, 54, 1, 'space', 'Rooms', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(271, 55, 1, 'space', 'Sleep', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(272, 55, 1, 'space', 'Location', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(273, 55, 1, 'space', 'Service', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(274, 55, 1, 'space', 'Clearness', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(275, 55, 1, 'space', 'Rooms', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(276, 56, 1, 'space', 'Sleep', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(277, 56, 1, 'space', 'Location', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(278, 56, 1, 'space', 'Service', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(279, 56, 1, 'space', 'Clearness', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(280, 56, 1, 'space', 'Rooms', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(281, 57, 2, 'space', 'Sleep', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(282, 57, 2, 'space', 'Location', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(283, 57, 2, 'space', 'Service', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(284, 57, 2, 'space', 'Clearness', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(285, 57, 2, 'space', 'Rooms', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(286, 58, 2, 'space', 'Sleep', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(287, 58, 2, 'space', 'Location', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(288, 58, 2, 'space', 'Service', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(289, 58, 2, 'space', 'Clearness', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(290, 58, 2, 'space', 'Rooms', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(291, 59, 3, 'space', 'Sleep', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(292, 59, 3, 'space', 'Location', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(293, 59, 3, 'space', 'Service', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(294, 59, 3, 'space', 'Clearness', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(295, 59, 3, 'space', 'Rooms', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(296, 60, 3, 'space', 'Sleep', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(297, 60, 3, 'space', 'Location', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(298, 60, 3, 'space', 'Service', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(299, 60, 3, 'space', 'Clearness', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(300, 60, 3, 'space', 'Rooms', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(301, 61, 3, 'space', 'Sleep', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(302, 61, 3, 'space', 'Location', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(303, 61, 3, 'space', 'Service', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(304, 61, 3, 'space', 'Clearness', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(305, 61, 3, 'space', 'Rooms', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(306, 62, 4, 'space', 'Sleep', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(307, 62, 4, 'space', 'Location', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(308, 62, 4, 'space', 'Service', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(309, 62, 4, 'space', 'Clearness', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(310, 62, 4, 'space', 'Rooms', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(311, 63, 4, 'space', 'Sleep', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(312, 63, 4, 'space', 'Location', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(313, 63, 4, 'space', 'Service', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(314, 63, 4, 'space', 'Clearness', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(315, 63, 4, 'space', 'Rooms', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(316, 64, 4, 'space', 'Sleep', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(317, 64, 4, 'space', 'Location', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(318, 64, 4, 'space', 'Service', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(319, 64, 4, 'space', 'Clearness', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(320, 64, 4, 'space', 'Rooms', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(321, 65, 5, 'space', 'Sleep', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(322, 65, 5, 'space', 'Location', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(323, 65, 5, 'space', 'Service', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(324, 65, 5, 'space', 'Clearness', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(325, 65, 5, 'space', 'Rooms', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(326, 66, 5, 'space', 'Sleep', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(327, 66, 5, 'space', 'Location', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(328, 66, 5, 'space', 'Service', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(329, 66, 5, 'space', 'Clearness', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(330, 66, 5, 'space', 'Rooms', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(331, 67, 5, 'space', 'Sleep', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(332, 67, 5, 'space', 'Location', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(333, 67, 5, 'space', 'Service', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(334, 67, 5, 'space', 'Clearness', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(335, 67, 5, 'space', 'Rooms', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(336, 68, 5, 'space', 'Sleep', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(337, 68, 5, 'space', 'Location', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(338, 68, 5, 'space', 'Service', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(339, 68, 5, 'space', 'Clearness', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(340, 68, 5, 'space', 'Rooms', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(341, 69, 6, 'space', 'Sleep', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(342, 69, 6, 'space', 'Location', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(343, 69, 6, 'space', 'Service', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(344, 69, 6, 'space', 'Clearness', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(345, 69, 6, 'space', 'Rooms', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(346, 70, 6, 'space', 'Sleep', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(347, 70, 6, 'space', 'Location', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(348, 70, 6, 'space', 'Service', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(349, 70, 6, 'space', 'Clearness', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(350, 70, 6, 'space', 'Rooms', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(351, 71, 7, 'space', 'Sleep', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(352, 71, 7, 'space', 'Location', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(353, 71, 7, 'space', 'Service', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(354, 71, 7, 'space', 'Clearness', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(355, 71, 7, 'space', 'Rooms', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(356, 72, 7, 'space', 'Sleep', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(357, 72, 7, 'space', 'Location', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(358, 72, 7, 'space', 'Service', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(359, 72, 7, 'space', 'Clearness', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(360, 72, 7, 'space', 'Rooms', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(361, 73, 7, 'space', 'Sleep', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(362, 73, 7, 'space', 'Location', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(363, 73, 7, 'space', 'Service', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(364, 73, 7, 'space', 'Clearness', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(365, 73, 7, 'space', 'Rooms', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(366, 74, 7, 'space', 'Sleep', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(367, 74, 7, 'space', 'Location', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(368, 74, 7, 'space', 'Service', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(369, 74, 7, 'space', 'Clearness', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(370, 74, 7, 'space', 'Rooms', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(371, 75, 8, 'space', 'Sleep', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(372, 75, 8, 'space', 'Location', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(373, 75, 8, 'space', 'Service', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(374, 75, 8, 'space', 'Clearness', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(375, 75, 8, 'space', 'Rooms', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(376, 76, 8, 'space', 'Sleep', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(377, 76, 8, 'space', 'Location', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(378, 76, 8, 'space', 'Service', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(379, 76, 8, 'space', 'Clearness', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(380, 76, 8, 'space', 'Rooms', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(381, 77, 8, 'space', 'Sleep', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(382, 77, 8, 'space', 'Location', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(383, 77, 8, 'space', 'Service', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(384, 77, 8, 'space', 'Clearness', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(385, 77, 8, 'space', 'Rooms', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(386, 78, 9, 'space', 'Sleep', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(387, 78, 9, 'space', 'Location', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(388, 78, 9, 'space', 'Service', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(389, 78, 9, 'space', 'Clearness', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(390, 78, 9, 'space', 'Rooms', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(391, 79, 9, 'space', 'Sleep', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(392, 79, 9, 'space', 'Location', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(393, 79, 9, 'space', 'Service', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(394, 79, 9, 'space', 'Clearness', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(395, 79, 9, 'space', 'Rooms', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(396, 80, 9, 'space', 'Sleep', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(397, 80, 9, 'space', 'Location', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(398, 80, 9, 'space', 'Service', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(399, 80, 9, 'space', 'Clearness', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(400, 80, 9, 'space', 'Rooms', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(401, 81, 10, 'space', 'Sleep', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(402, 81, 10, 'space', 'Location', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(403, 81, 10, 'space', 'Service', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(404, 81, 10, 'space', 'Clearness', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(405, 81, 10, 'space', 'Rooms', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(406, 82, 10, 'space', 'Sleep', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(407, 82, 10, 'space', 'Location', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(408, 82, 10, 'space', 'Service', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(409, 82, 10, 'space', 'Clearness', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(410, 82, 10, 'space', 'Rooms', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(411, 83, 11, 'space', 'Sleep', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(412, 83, 11, 'space', 'Location', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(413, 83, 11, 'space', 'Service', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(414, 83, 11, 'space', 'Clearness', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(415, 83, 11, 'space', 'Rooms', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(416, 84, 11, 'space', 'Sleep', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(417, 84, 11, 'space', 'Location', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(418, 84, 11, 'space', 'Service', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(419, 84, 11, 'space', 'Clearness', '5', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(420, 84, 11, 'space', 'Rooms', '4', 1, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(421, 85, 1, 'hotel', 'Sleep', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(422, 85, 1, 'hotel', 'Location', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(423, 85, 1, 'hotel', 'Service', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(424, 85, 1, 'hotel', 'Clearness', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(425, 85, 1, 'hotel', 'Rooms', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(426, 86, 1, 'hotel', 'Sleep', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(427, 86, 1, 'hotel', 'Location', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(428, 86, 1, 'hotel', 'Service', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(429, 86, 1, 'hotel', 'Clearness', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(430, 86, 1, 'hotel', 'Rooms', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(431, 87, 1, 'hotel', 'Sleep', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(432, 87, 1, 'hotel', 'Location', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(433, 87, 1, 'hotel', 'Service', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(434, 87, 1, 'hotel', 'Clearness', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(435, 87, 1, 'hotel', 'Rooms', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(436, 88, 2, 'hotel', 'Sleep', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(437, 88, 2, 'hotel', 'Location', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(438, 88, 2, 'hotel', 'Service', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(439, 88, 2, 'hotel', 'Clearness', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(440, 88, 2, 'hotel', 'Rooms', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(441, 89, 2, 'hotel', 'Sleep', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(442, 89, 2, 'hotel', 'Location', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(443, 89, 2, 'hotel', 'Service', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(444, 89, 2, 'hotel', 'Clearness', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(445, 89, 2, 'hotel', 'Rooms', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(446, 90, 3, 'hotel', 'Sleep', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(447, 90, 3, 'hotel', 'Location', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(448, 90, 3, 'hotel', 'Service', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(449, 90, 3, 'hotel', 'Clearness', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(450, 90, 3, 'hotel', 'Rooms', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(451, 91, 3, 'hotel', 'Sleep', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(452, 91, 3, 'hotel', 'Location', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(453, 91, 3, 'hotel', 'Service', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(454, 91, 3, 'hotel', 'Clearness', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(455, 91, 3, 'hotel', 'Rooms', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(456, 92, 3, 'hotel', 'Sleep', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(457, 92, 3, 'hotel', 'Location', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(458, 92, 3, 'hotel', 'Service', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(459, 92, 3, 'hotel', 'Clearness', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(460, 92, 3, 'hotel', 'Rooms', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(461, 93, 3, 'hotel', 'Sleep', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(462, 93, 3, 'hotel', 'Location', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(463, 93, 3, 'hotel', 'Service', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(464, 93, 3, 'hotel', 'Clearness', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(465, 93, 3, 'hotel', 'Rooms', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(466, 94, 4, 'hotel', 'Sleep', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(467, 94, 4, 'hotel', 'Location', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(468, 94, 4, 'hotel', 'Service', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(469, 94, 4, 'hotel', 'Clearness', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(470, 94, 4, 'hotel', 'Rooms', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(471, 95, 4, 'hotel', 'Sleep', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(472, 95, 4, 'hotel', 'Location', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(473, 95, 4, 'hotel', 'Service', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(474, 95, 4, 'hotel', 'Clearness', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(475, 95, 4, 'hotel', 'Rooms', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(476, 96, 4, 'hotel', 'Sleep', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(477, 96, 4, 'hotel', 'Location', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(478, 96, 4, 'hotel', 'Service', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(479, 96, 4, 'hotel', 'Clearness', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(480, 96, 4, 'hotel', 'Rooms', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(481, 97, 5, 'hotel', 'Sleep', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(482, 97, 5, 'hotel', 'Location', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(483, 97, 5, 'hotel', 'Service', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(484, 97, 5, 'hotel', 'Clearness', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(485, 97, 5, 'hotel', 'Rooms', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(486, 98, 5, 'hotel', 'Sleep', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(487, 98, 5, 'hotel', 'Location', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(488, 98, 5, 'hotel', 'Service', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(489, 98, 5, 'hotel', 'Clearness', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(490, 98, 5, 'hotel', 'Rooms', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(491, 99, 5, 'hotel', 'Sleep', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(492, 99, 5, 'hotel', 'Location', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(493, 99, 5, 'hotel', 'Service', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(494, 99, 5, 'hotel', 'Clearness', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(495, 99, 5, 'hotel', 'Rooms', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(496, 100, 5, 'hotel', 'Sleep', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(497, 100, 5, 'hotel', 'Location', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(498, 100, 5, 'hotel', 'Service', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(499, 100, 5, 'hotel', 'Clearness', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(500, 100, 5, 'hotel', 'Rooms', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(501, 101, 6, 'hotel', 'Sleep', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(502, 101, 6, 'hotel', 'Location', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(503, 101, 6, 'hotel', 'Service', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(504, 101, 6, 'hotel', 'Clearness', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(505, 101, 6, 'hotel', 'Rooms', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(506, 102, 6, 'hotel', 'Sleep', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(507, 102, 6, 'hotel', 'Location', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(508, 102, 6, 'hotel', 'Service', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(509, 102, 6, 'hotel', 'Clearness', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(510, 102, 6, 'hotel', 'Rooms', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(511, 103, 6, 'hotel', 'Sleep', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(512, 103, 6, 'hotel', 'Location', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(513, 103, 6, 'hotel', 'Service', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(514, 103, 6, 'hotel', 'Clearness', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(515, 103, 6, 'hotel', 'Rooms', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(516, 104, 7, 'hotel', 'Sleep', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(517, 104, 7, 'hotel', 'Location', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(518, 104, 7, 'hotel', 'Service', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(519, 104, 7, 'hotel', 'Clearness', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(520, 104, 7, 'hotel', 'Rooms', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(521, 105, 7, 'hotel', 'Sleep', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(522, 105, 7, 'hotel', 'Location', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(523, 105, 7, 'hotel', 'Service', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(524, 105, 7, 'hotel', 'Clearness', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(525, 105, 7, 'hotel', 'Rooms', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(526, 106, 8, 'hotel', 'Sleep', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(527, 106, 8, 'hotel', 'Location', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(528, 106, 8, 'hotel', 'Service', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(529, 106, 8, 'hotel', 'Clearness', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(530, 106, 8, 'hotel', 'Rooms', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(531, 107, 8, 'hotel', 'Sleep', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(532, 107, 8, 'hotel', 'Location', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(533, 107, 8, 'hotel', 'Service', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(534, 107, 8, 'hotel', 'Clearness', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(535, 107, 8, 'hotel', 'Rooms', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(536, 108, 8, 'hotel', 'Sleep', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(537, 108, 8, 'hotel', 'Location', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40');
INSERT INTO `bravo_review_meta` (`id`, `review_id`, `object_id`, `object_model`, `name`, `val`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(538, 108, 8, 'hotel', 'Service', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(539, 108, 8, 'hotel', 'Clearness', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(540, 108, 8, 'hotel', 'Rooms', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(541, 109, 9, 'hotel', 'Sleep', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(542, 109, 9, 'hotel', 'Location', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(543, 109, 9, 'hotel', 'Service', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(544, 109, 9, 'hotel', 'Clearness', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(545, 109, 9, 'hotel', 'Rooms', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(546, 110, 9, 'hotel', 'Sleep', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(547, 110, 9, 'hotel', 'Location', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(548, 110, 9, 'hotel', 'Service', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(549, 110, 9, 'hotel', 'Clearness', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(550, 110, 9, 'hotel', 'Rooms', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(551, 111, 9, 'hotel', 'Sleep', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(552, 111, 9, 'hotel', 'Location', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(553, 111, 9, 'hotel', 'Service', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(554, 111, 9, 'hotel', 'Clearness', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(555, 111, 9, 'hotel', 'Rooms', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(556, 112, 9, 'hotel', 'Sleep', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(557, 112, 9, 'hotel', 'Location', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(558, 112, 9, 'hotel', 'Service', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(559, 112, 9, 'hotel', 'Clearness', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(560, 112, 9, 'hotel', 'Rooms', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(561, 113, 10, 'hotel', 'Sleep', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(562, 113, 10, 'hotel', 'Location', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(563, 113, 10, 'hotel', 'Service', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(564, 113, 10, 'hotel', 'Clearness', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(565, 113, 10, 'hotel', 'Rooms', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(566, 114, 10, 'hotel', 'Sleep', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(567, 114, 10, 'hotel', 'Location', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(568, 114, 10, 'hotel', 'Service', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(569, 114, 10, 'hotel', 'Clearness', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(570, 114, 10, 'hotel', 'Rooms', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(571, 115, 11, 'hotel', 'Sleep', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(572, 115, 11, 'hotel', 'Location', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(573, 115, 11, 'hotel', 'Service', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(574, 115, 11, 'hotel', 'Clearness', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(575, 115, 11, 'hotel', 'Rooms', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(576, 116, 11, 'hotel', 'Sleep', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(577, 116, 11, 'hotel', 'Location', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(578, 116, 11, 'hotel', 'Service', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(579, 116, 11, 'hotel', 'Clearness', '4', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(580, 116, 11, 'hotel', 'Rooms', '5', 1, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(581, 117, 1, 'car', 'Equipment', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(582, 117, 1, 'car', 'Comfortable', '4', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(583, 117, 1, 'car', 'Climate Control', '4', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(584, 117, 1, 'car', 'Facility', '4', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(585, 117, 1, 'car', 'Aftercare', '4', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(586, 118, 1, 'car', 'Equipment', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(587, 118, 1, 'car', 'Comfortable', '4', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(588, 118, 1, 'car', 'Climate Control', '4', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(589, 118, 1, 'car', 'Facility', '4', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(590, 118, 1, 'car', 'Aftercare', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(591, 119, 1, 'car', 'Equipment', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(592, 119, 1, 'car', 'Comfortable', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(593, 119, 1, 'car', 'Climate Control', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(594, 119, 1, 'car', 'Facility', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(595, 119, 1, 'car', 'Aftercare', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(596, 120, 2, 'car', 'Equipment', '4', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(597, 120, 2, 'car', 'Comfortable', '4', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(598, 120, 2, 'car', 'Climate Control', '4', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(599, 120, 2, 'car', 'Facility', '4', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(600, 120, 2, 'car', 'Aftercare', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(601, 121, 2, 'car', 'Equipment', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(602, 121, 2, 'car', 'Comfortable', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(603, 121, 2, 'car', 'Climate Control', '4', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(604, 121, 2, 'car', 'Facility', '4', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(605, 121, 2, 'car', 'Aftercare', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(606, 122, 2, 'car', 'Equipment', '4', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(607, 122, 2, 'car', 'Comfortable', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(608, 122, 2, 'car', 'Climate Control', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(609, 122, 2, 'car', 'Facility', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(610, 122, 2, 'car', 'Aftercare', '4', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(611, 123, 3, 'car', 'Equipment', '4', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(612, 123, 3, 'car', 'Comfortable', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(613, 123, 3, 'car', 'Climate Control', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(614, 123, 3, 'car', 'Facility', '4', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(615, 123, 3, 'car', 'Aftercare', '4', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(616, 124, 3, 'car', 'Equipment', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(617, 124, 3, 'car', 'Comfortable', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(618, 124, 3, 'car', 'Climate Control', '4', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(619, 124, 3, 'car', 'Facility', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(620, 124, 3, 'car', 'Aftercare', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(621, 125, 4, 'car', 'Equipment', '4', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(622, 125, 4, 'car', 'Comfortable', '4', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(623, 125, 4, 'car', 'Climate Control', '4', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(624, 125, 4, 'car', 'Facility', '4', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(625, 125, 4, 'car', 'Aftercare', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(626, 126, 4, 'car', 'Equipment', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(627, 126, 4, 'car', 'Comfortable', '4', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(628, 126, 4, 'car', 'Climate Control', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(629, 126, 4, 'car', 'Facility', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(630, 126, 4, 'car', 'Aftercare', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(631, 127, 4, 'car', 'Equipment', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(632, 127, 4, 'car', 'Comfortable', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(633, 127, 4, 'car', 'Climate Control', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(634, 127, 4, 'car', 'Facility', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(635, 127, 4, 'car', 'Aftercare', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(636, 128, 5, 'car', 'Equipment', '4', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(637, 128, 5, 'car', 'Comfortable', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(638, 128, 5, 'car', 'Climate Control', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(639, 128, 5, 'car', 'Facility', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(640, 128, 5, 'car', 'Aftercare', '4', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(641, 129, 5, 'car', 'Equipment', '4', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(642, 129, 5, 'car', 'Comfortable', '4', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(643, 129, 5, 'car', 'Climate Control', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(644, 129, 5, 'car', 'Facility', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(645, 129, 5, 'car', 'Aftercare', '4', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(646, 130, 5, 'car', 'Equipment', '4', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(647, 130, 5, 'car', 'Comfortable', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(648, 130, 5, 'car', 'Climate Control', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(649, 130, 5, 'car', 'Facility', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(650, 130, 5, 'car', 'Aftercare', '4', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(651, 131, 6, 'car', 'Equipment', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(652, 131, 6, 'car', 'Comfortable', '4', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(653, 131, 6, 'car', 'Climate Control', '4', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(654, 131, 6, 'car', 'Facility', '4', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(655, 131, 6, 'car', 'Aftercare', '4', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(656, 132, 6, 'car', 'Equipment', '4', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(657, 132, 6, 'car', 'Comfortable', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(658, 132, 6, 'car', 'Climate Control', '4', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(659, 132, 6, 'car', 'Facility', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(660, 132, 6, 'car', 'Aftercare', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(661, 133, 6, 'car', 'Equipment', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(662, 133, 6, 'car', 'Comfortable', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(663, 133, 6, 'car', 'Climate Control', '4', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(664, 133, 6, 'car', 'Facility', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(665, 133, 6, 'car', 'Aftercare', '4', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(666, 134, 6, 'car', 'Equipment', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(667, 134, 6, 'car', 'Comfortable', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(668, 134, 6, 'car', 'Climate Control', '4', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(669, 134, 6, 'car', 'Facility', '4', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(670, 134, 6, 'car', 'Aftercare', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(671, 135, 7, 'car', 'Equipment', '4', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(672, 135, 7, 'car', 'Comfortable', '4', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(673, 135, 7, 'car', 'Climate Control', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(674, 135, 7, 'car', 'Facility', '4', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(675, 135, 7, 'car', 'Aftercare', '4', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(676, 136, 7, 'car', 'Equipment', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(677, 136, 7, 'car', 'Comfortable', '4', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(678, 136, 7, 'car', 'Climate Control', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(679, 136, 7, 'car', 'Facility', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(680, 136, 7, 'car', 'Aftercare', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(681, 137, 7, 'car', 'Equipment', '4', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(682, 137, 7, 'car', 'Comfortable', '4', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(683, 137, 7, 'car', 'Climate Control', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(684, 137, 7, 'car', 'Facility', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(685, 137, 7, 'car', 'Aftercare', '4', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(686, 138, 7, 'car', 'Equipment', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(687, 138, 7, 'car', 'Comfortable', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(688, 138, 7, 'car', 'Climate Control', '4', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(689, 138, 7, 'car', 'Facility', '4', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(690, 138, 7, 'car', 'Aftercare', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(691, 139, 7, 'car', 'Equipment', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(692, 139, 7, 'car', 'Comfortable', '4', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(693, 139, 7, 'car', 'Climate Control', '4', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(694, 139, 7, 'car', 'Facility', '4', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(695, 139, 7, 'car', 'Aftercare', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(696, 140, 8, 'car', 'Equipment', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(697, 140, 8, 'car', 'Comfortable', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(698, 140, 8, 'car', 'Climate Control', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(699, 140, 8, 'car', 'Facility', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(700, 140, 8, 'car', 'Aftercare', '4', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(701, 141, 8, 'car', 'Equipment', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(702, 141, 8, 'car', 'Comfortable', '4', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(703, 141, 8, 'car', 'Climate Control', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(704, 141, 8, 'car', 'Facility', '4', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(705, 141, 8, 'car', 'Aftercare', '5', 1, NULL, '2023-12-13 01:01:42', '2023-12-13 01:01:42'),
(706, 142, 8, 'car', 'Equipment', '4', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(707, 142, 8, 'car', 'Comfortable', '5', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(708, 142, 8, 'car', 'Climate Control', '4', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(709, 142, 8, 'car', 'Facility', '4', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(710, 142, 8, 'car', 'Aftercare', '5', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(711, 143, 9, 'car', 'Equipment', '4', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(712, 143, 9, 'car', 'Comfortable', '4', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(713, 143, 9, 'car', 'Climate Control', '5', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(714, 143, 9, 'car', 'Facility', '4', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(715, 143, 9, 'car', 'Aftercare', '4', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(716, 144, 10, 'car', 'Equipment', '5', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(717, 144, 10, 'car', 'Comfortable', '5', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(718, 144, 10, 'car', 'Climate Control', '4', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(719, 144, 10, 'car', 'Facility', '4', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(720, 144, 10, 'car', 'Aftercare', '5', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(721, 145, 10, 'car', 'Equipment', '5', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(722, 145, 10, 'car', 'Comfortable', '5', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(723, 145, 10, 'car', 'Climate Control', '4', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(724, 145, 10, 'car', 'Facility', '4', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(725, 145, 10, 'car', 'Aftercare', '5', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(726, 146, 10, 'car', 'Equipment', '4', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(727, 146, 10, 'car', 'Comfortable', '4', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(728, 146, 10, 'car', 'Climate Control', '5', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(729, 146, 10, 'car', 'Facility', '4', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(730, 146, 10, 'car', 'Aftercare', '5', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(731, 147, 10, 'car', 'Equipment', '4', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(732, 147, 10, 'car', 'Comfortable', '5', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(733, 147, 10, 'car', 'Climate Control', '5', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(734, 147, 10, 'car', 'Facility', '5', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(735, 147, 10, 'car', 'Aftercare', '5', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(736, 148, 11, 'car', 'Equipment', '4', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(737, 148, 11, 'car', 'Comfortable', '4', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(738, 148, 11, 'car', 'Climate Control', '5', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(739, 148, 11, 'car', 'Facility', '5', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(740, 148, 11, 'car', 'Aftercare', '4', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(741, 149, 11, 'car', 'Equipment', '5', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(742, 149, 11, 'car', 'Comfortable', '5', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(743, 149, 11, 'car', 'Climate Control', '4', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(744, 149, 11, 'car', 'Facility', '5', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(745, 149, 11, 'car', 'Aftercare', '5', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(746, 150, 11, 'car', 'Equipment', '4', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(747, 150, 11, 'car', 'Comfortable', '5', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(748, 150, 11, 'car', 'Climate Control', '4', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(749, 150, 11, 'car', 'Facility', '5', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(750, 150, 11, 'car', 'Aftercare', '5', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(751, 151, 12, 'car', 'Equipment', '5', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(752, 151, 12, 'car', 'Comfortable', '4', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(753, 151, 12, 'car', 'Climate Control', '4', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(754, 151, 12, 'car', 'Facility', '4', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(755, 151, 12, 'car', 'Aftercare', '5', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(756, 152, 12, 'car', 'Equipment', '4', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(757, 152, 12, 'car', 'Comfortable', '5', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(758, 152, 12, 'car', 'Climate Control', '4', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(759, 152, 12, 'car', 'Facility', '5', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(760, 152, 12, 'car', 'Aftercare', '4', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(761, 153, 12, 'car', 'Equipment', '4', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(762, 153, 12, 'car', 'Comfortable', '4', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(763, 153, 12, 'car', 'Climate Control', '4', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(764, 153, 12, 'car', 'Facility', '5', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(765, 153, 12, 'car', 'Aftercare', '5', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(766, 154, 12, 'car', 'Equipment', '5', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(767, 154, 12, 'car', 'Comfortable', '4', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(768, 154, 12, 'car', 'Climate Control', '5', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(769, 154, 12, 'car', 'Facility', '4', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(770, 154, 12, 'car', 'Aftercare', '4', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(771, 155, 12, 'car', 'Equipment', '5', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(772, 155, 12, 'car', 'Comfortable', '4', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(773, 155, 12, 'car', 'Climate Control', '4', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(774, 155, 12, 'car', 'Facility', '5', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(775, 155, 12, 'car', 'Aftercare', '5', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(776, 156, 13, 'car', 'Equipment', '4', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(777, 156, 13, 'car', 'Comfortable', '4', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(778, 156, 13, 'car', 'Climate Control', '4', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(779, 156, 13, 'car', 'Facility', '4', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(780, 156, 13, 'car', 'Aftercare', '4', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(781, 157, 13, 'car', 'Equipment', '5', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(782, 157, 13, 'car', 'Comfortable', '4', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(783, 157, 13, 'car', 'Climate Control', '4', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(784, 157, 13, 'car', 'Facility', '5', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(785, 157, 13, 'car', 'Aftercare', '4', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(786, 158, 13, 'car', 'Equipment', '4', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(787, 158, 13, 'car', 'Comfortable', '4', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(788, 158, 13, 'car', 'Climate Control', '5', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(789, 158, 13, 'car', 'Facility', '4', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(790, 158, 13, 'car', 'Aftercare', '5', 1, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43'),
(791, 159, 1, 'event', 'Service', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(792, 159, 1, 'event', 'Organization', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(793, 159, 1, 'event', 'Friendliness', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(794, 159, 1, 'event', 'Area Expert', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(795, 159, 1, 'event', 'Safety', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(796, 160, 1, 'event', 'Service', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(797, 160, 1, 'event', 'Organization', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(798, 160, 1, 'event', 'Friendliness', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(799, 160, 1, 'event', 'Area Expert', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(800, 160, 1, 'event', 'Safety', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(801, 161, 1, 'event', 'Service', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(802, 161, 1, 'event', 'Organization', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(803, 161, 1, 'event', 'Friendliness', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(804, 161, 1, 'event', 'Area Expert', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(805, 161, 1, 'event', 'Safety', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(806, 162, 2, 'event', 'Service', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(807, 162, 2, 'event', 'Organization', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(808, 162, 2, 'event', 'Friendliness', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(809, 162, 2, 'event', 'Area Expert', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(810, 162, 2, 'event', 'Safety', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(811, 163, 2, 'event', 'Service', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(812, 163, 2, 'event', 'Organization', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(813, 163, 2, 'event', 'Friendliness', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(814, 163, 2, 'event', 'Area Expert', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(815, 163, 2, 'event', 'Safety', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(816, 164, 2, 'event', 'Service', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(817, 164, 2, 'event', 'Organization', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(818, 164, 2, 'event', 'Friendliness', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(819, 164, 2, 'event', 'Area Expert', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(820, 164, 2, 'event', 'Safety', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(821, 165, 3, 'event', 'Service', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(822, 165, 3, 'event', 'Organization', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(823, 165, 3, 'event', 'Friendliness', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(824, 165, 3, 'event', 'Area Expert', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(825, 165, 3, 'event', 'Safety', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(826, 166, 3, 'event', 'Service', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(827, 166, 3, 'event', 'Organization', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(828, 166, 3, 'event', 'Friendliness', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(829, 166, 3, 'event', 'Area Expert', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(830, 166, 3, 'event', 'Safety', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(831, 167, 3, 'event', 'Service', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(832, 167, 3, 'event', 'Organization', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(833, 167, 3, 'event', 'Friendliness', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(834, 167, 3, 'event', 'Area Expert', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(835, 167, 3, 'event', 'Safety', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(836, 168, 3, 'event', 'Service', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(837, 168, 3, 'event', 'Organization', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(838, 168, 3, 'event', 'Friendliness', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(839, 168, 3, 'event', 'Area Expert', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(840, 168, 3, 'event', 'Safety', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(841, 169, 4, 'event', 'Service', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(842, 169, 4, 'event', 'Organization', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(843, 169, 4, 'event', 'Friendliness', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(844, 169, 4, 'event', 'Area Expert', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(845, 169, 4, 'event', 'Safety', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(846, 170, 4, 'event', 'Service', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(847, 170, 4, 'event', 'Organization', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(848, 170, 4, 'event', 'Friendliness', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(849, 170, 4, 'event', 'Area Expert', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(850, 170, 4, 'event', 'Safety', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(851, 171, 4, 'event', 'Service', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(852, 171, 4, 'event', 'Organization', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(853, 171, 4, 'event', 'Friendliness', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(854, 171, 4, 'event', 'Area Expert', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(855, 171, 4, 'event', 'Safety', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(856, 172, 5, 'event', 'Service', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(857, 172, 5, 'event', 'Organization', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(858, 172, 5, 'event', 'Friendliness', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(859, 172, 5, 'event', 'Area Expert', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(860, 172, 5, 'event', 'Safety', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(861, 173, 5, 'event', 'Service', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(862, 173, 5, 'event', 'Organization', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(863, 173, 5, 'event', 'Friendliness', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(864, 173, 5, 'event', 'Area Expert', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(865, 173, 5, 'event', 'Safety', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(866, 174, 5, 'event', 'Service', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(867, 174, 5, 'event', 'Organization', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(868, 174, 5, 'event', 'Friendliness', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(869, 174, 5, 'event', 'Area Expert', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(870, 174, 5, 'event', 'Safety', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(871, 175, 5, 'event', 'Service', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(872, 175, 5, 'event', 'Organization', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(873, 175, 5, 'event', 'Friendliness', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(874, 175, 5, 'event', 'Area Expert', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(875, 175, 5, 'event', 'Safety', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(876, 176, 6, 'event', 'Service', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(877, 176, 6, 'event', 'Organization', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(878, 176, 6, 'event', 'Friendliness', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(879, 176, 6, 'event', 'Area Expert', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(880, 176, 6, 'event', 'Safety', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(881, 177, 6, 'event', 'Service', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(882, 177, 6, 'event', 'Organization', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(883, 177, 6, 'event', 'Friendliness', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(884, 177, 6, 'event', 'Area Expert', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(885, 177, 6, 'event', 'Safety', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(886, 178, 6, 'event', 'Service', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(887, 178, 6, 'event', 'Organization', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(888, 178, 6, 'event', 'Friendliness', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(889, 178, 6, 'event', 'Area Expert', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(890, 178, 6, 'event', 'Safety', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(891, 179, 6, 'event', 'Service', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(892, 179, 6, 'event', 'Organization', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(893, 179, 6, 'event', 'Friendliness', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(894, 179, 6, 'event', 'Area Expert', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(895, 179, 6, 'event', 'Safety', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(896, 180, 7, 'event', 'Service', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(897, 180, 7, 'event', 'Organization', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(898, 180, 7, 'event', 'Friendliness', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(899, 180, 7, 'event', 'Area Expert', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(900, 180, 7, 'event', 'Safety', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(901, 181, 7, 'event', 'Service', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(902, 181, 7, 'event', 'Organization', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(903, 181, 7, 'event', 'Friendliness', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(904, 181, 7, 'event', 'Area Expert', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(905, 181, 7, 'event', 'Safety', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(906, 182, 7, 'event', 'Service', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(907, 182, 7, 'event', 'Organization', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(908, 182, 7, 'event', 'Friendliness', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(909, 182, 7, 'event', 'Area Expert', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(910, 182, 7, 'event', 'Safety', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(911, 183, 7, 'event', 'Service', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(912, 183, 7, 'event', 'Organization', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(913, 183, 7, 'event', 'Friendliness', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(914, 183, 7, 'event', 'Area Expert', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(915, 183, 7, 'event', 'Safety', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(916, 184, 8, 'event', 'Service', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(917, 184, 8, 'event', 'Organization', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(918, 184, 8, 'event', 'Friendliness', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(919, 184, 8, 'event', 'Area Expert', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(920, 184, 8, 'event', 'Safety', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(921, 185, 8, 'event', 'Service', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(922, 185, 8, 'event', 'Organization', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(923, 185, 8, 'event', 'Friendliness', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(924, 185, 8, 'event', 'Area Expert', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(925, 185, 8, 'event', 'Safety', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(926, 186, 9, 'event', 'Service', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(927, 186, 9, 'event', 'Organization', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(928, 186, 9, 'event', 'Friendliness', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(929, 186, 9, 'event', 'Area Expert', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(930, 186, 9, 'event', 'Safety', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(931, 187, 9, 'event', 'Service', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(932, 187, 9, 'event', 'Organization', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(933, 187, 9, 'event', 'Friendliness', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(934, 187, 9, 'event', 'Area Expert', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(935, 187, 9, 'event', 'Safety', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(936, 188, 9, 'event', 'Service', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(937, 188, 9, 'event', 'Organization', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(938, 188, 9, 'event', 'Friendliness', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(939, 188, 9, 'event', 'Area Expert', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(940, 188, 9, 'event', 'Safety', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(941, 189, 9, 'event', 'Service', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(942, 189, 9, 'event', 'Organization', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(943, 189, 9, 'event', 'Friendliness', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(944, 189, 9, 'event', 'Area Expert', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(945, 189, 9, 'event', 'Safety', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(946, 190, 10, 'event', 'Service', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(947, 190, 10, 'event', 'Organization', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(948, 190, 10, 'event', 'Friendliness', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(949, 190, 10, 'event', 'Area Expert', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(950, 190, 10, 'event', 'Safety', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(951, 191, 10, 'event', 'Service', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(952, 191, 10, 'event', 'Organization', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(953, 191, 10, 'event', 'Friendliness', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(954, 191, 10, 'event', 'Area Expert', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(955, 191, 10, 'event', 'Safety', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(956, 192, 10, 'event', 'Service', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(957, 192, 10, 'event', 'Organization', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(958, 192, 10, 'event', 'Friendliness', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(959, 192, 10, 'event', 'Area Expert', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(960, 192, 10, 'event', 'Safety', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(961, 193, 11, 'event', 'Service', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(962, 193, 11, 'event', 'Organization', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(963, 193, 11, 'event', 'Friendliness', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(964, 193, 11, 'event', 'Area Expert', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(965, 193, 11, 'event', 'Safety', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(966, 194, 11, 'event', 'Service', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(967, 194, 11, 'event', 'Organization', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(968, 194, 11, 'event', 'Friendliness', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(969, 194, 11, 'event', 'Area Expert', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(970, 194, 11, 'event', 'Safety', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(971, 195, 11, 'event', 'Service', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(972, 195, 11, 'event', 'Organization', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(973, 195, 11, 'event', 'Friendliness', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(974, 195, 11, 'event', 'Area Expert', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(975, 195, 11, 'event', 'Safety', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(976, 196, 12, 'event', 'Service', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(977, 196, 12, 'event', 'Organization', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(978, 196, 12, 'event', 'Friendliness', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(979, 196, 12, 'event', 'Area Expert', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(980, 196, 12, 'event', 'Safety', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(981, 197, 12, 'event', 'Service', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(982, 197, 12, 'event', 'Organization', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(983, 197, 12, 'event', 'Friendliness', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(984, 197, 12, 'event', 'Area Expert', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(985, 197, 12, 'event', 'Safety', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(986, 198, 12, 'event', 'Service', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(987, 198, 12, 'event', 'Organization', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(988, 198, 12, 'event', 'Friendliness', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(989, 198, 12, 'event', 'Area Expert', '5', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(990, 198, 12, 'event', 'Safety', '4', 1, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44'),
(991, 199, 1, 'boat', 'Equipment', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(992, 199, 1, 'boat', 'Comfortable', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(993, 199, 1, 'boat', 'Climate Control', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(994, 199, 1, 'boat', 'Facility', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(995, 199, 1, 'boat', 'Aftercare', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(996, 200, 1, 'boat', 'Equipment', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(997, 200, 1, 'boat', 'Comfortable', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(998, 200, 1, 'boat', 'Climate Control', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(999, 200, 1, 'boat', 'Facility', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1000, 200, 1, 'boat', 'Aftercare', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1001, 201, 2, 'boat', 'Equipment', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1002, 201, 2, 'boat', 'Comfortable', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1003, 201, 2, 'boat', 'Climate Control', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1004, 201, 2, 'boat', 'Facility', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1005, 201, 2, 'boat', 'Aftercare', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1006, 202, 2, 'boat', 'Equipment', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1007, 202, 2, 'boat', 'Comfortable', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1008, 202, 2, 'boat', 'Climate Control', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1009, 202, 2, 'boat', 'Facility', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1010, 202, 2, 'boat', 'Aftercare', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1011, 203, 3, 'boat', 'Equipment', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1012, 203, 3, 'boat', 'Comfortable', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1013, 203, 3, 'boat', 'Climate Control', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1014, 203, 3, 'boat', 'Facility', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1015, 203, 3, 'boat', 'Aftercare', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1016, 204, 3, 'boat', 'Equipment', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1017, 204, 3, 'boat', 'Comfortable', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1018, 204, 3, 'boat', 'Climate Control', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1019, 204, 3, 'boat', 'Facility', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1020, 204, 3, 'boat', 'Aftercare', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1021, 205, 4, 'boat', 'Equipment', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1022, 205, 4, 'boat', 'Comfortable', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1023, 205, 4, 'boat', 'Climate Control', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1024, 205, 4, 'boat', 'Facility', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1025, 205, 4, 'boat', 'Aftercare', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1026, 206, 4, 'boat', 'Equipment', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1027, 206, 4, 'boat', 'Comfortable', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1028, 206, 4, 'boat', 'Climate Control', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1029, 206, 4, 'boat', 'Facility', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1030, 206, 4, 'boat', 'Aftercare', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1031, 207, 4, 'boat', 'Equipment', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1032, 207, 4, 'boat', 'Comfortable', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1033, 207, 4, 'boat', 'Climate Control', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1034, 207, 4, 'boat', 'Facility', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1035, 207, 4, 'boat', 'Aftercare', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1036, 208, 4, 'boat', 'Equipment', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1037, 208, 4, 'boat', 'Comfortable', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1038, 208, 4, 'boat', 'Climate Control', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1039, 208, 4, 'boat', 'Facility', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1040, 208, 4, 'boat', 'Aftercare', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1041, 209, 5, 'boat', 'Equipment', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1042, 209, 5, 'boat', 'Comfortable', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1043, 209, 5, 'boat', 'Climate Control', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1044, 209, 5, 'boat', 'Facility', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1045, 209, 5, 'boat', 'Aftercare', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1046, 210, 5, 'boat', 'Equipment', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1047, 210, 5, 'boat', 'Comfortable', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1048, 210, 5, 'boat', 'Climate Control', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1049, 210, 5, 'boat', 'Facility', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1050, 210, 5, 'boat', 'Aftercare', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1051, 211, 5, 'boat', 'Equipment', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1052, 211, 5, 'boat', 'Comfortable', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1053, 211, 5, 'boat', 'Climate Control', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1054, 211, 5, 'boat', 'Facility', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1055, 211, 5, 'boat', 'Aftercare', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1056, 212, 6, 'boat', 'Equipment', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1057, 212, 6, 'boat', 'Comfortable', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1058, 212, 6, 'boat', 'Climate Control', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1059, 212, 6, 'boat', 'Facility', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1060, 212, 6, 'boat', 'Aftercare', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48');
INSERT INTO `bravo_review_meta` (`id`, `review_id`, `object_id`, `object_model`, `name`, `val`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1061, 213, 6, 'boat', 'Equipment', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1062, 213, 6, 'boat', 'Comfortable', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1063, 213, 6, 'boat', 'Climate Control', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1064, 213, 6, 'boat', 'Facility', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1065, 213, 6, 'boat', 'Aftercare', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1066, 214, 6, 'boat', 'Equipment', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1067, 214, 6, 'boat', 'Comfortable', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1068, 214, 6, 'boat', 'Climate Control', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1069, 214, 6, 'boat', 'Facility', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1070, 214, 6, 'boat', 'Aftercare', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1071, 215, 6, 'boat', 'Equipment', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1072, 215, 6, 'boat', 'Comfortable', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1073, 215, 6, 'boat', 'Climate Control', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1074, 215, 6, 'boat', 'Facility', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1075, 215, 6, 'boat', 'Aftercare', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1076, 216, 7, 'boat', 'Equipment', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1077, 216, 7, 'boat', 'Comfortable', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1078, 216, 7, 'boat', 'Climate Control', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1079, 216, 7, 'boat', 'Facility', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1080, 216, 7, 'boat', 'Aftercare', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1081, 217, 7, 'boat', 'Equipment', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1082, 217, 7, 'boat', 'Comfortable', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1083, 217, 7, 'boat', 'Climate Control', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1084, 217, 7, 'boat', 'Facility', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1085, 217, 7, 'boat', 'Aftercare', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1086, 218, 7, 'boat', 'Equipment', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1087, 218, 7, 'boat', 'Comfortable', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1088, 218, 7, 'boat', 'Climate Control', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1089, 218, 7, 'boat', 'Facility', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1090, 218, 7, 'boat', 'Aftercare', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1091, 219, 8, 'boat', 'Equipment', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1092, 219, 8, 'boat', 'Comfortable', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1093, 219, 8, 'boat', 'Climate Control', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1094, 219, 8, 'boat', 'Facility', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1095, 219, 8, 'boat', 'Aftercare', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1096, 220, 8, 'boat', 'Equipment', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1097, 220, 8, 'boat', 'Comfortable', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1098, 220, 8, 'boat', 'Climate Control', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1099, 220, 8, 'boat', 'Facility', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1100, 220, 8, 'boat', 'Aftercare', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1101, 221, 8, 'boat', 'Equipment', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1102, 221, 8, 'boat', 'Comfortable', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1103, 221, 8, 'boat', 'Climate Control', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1104, 221, 8, 'boat', 'Facility', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1105, 221, 8, 'boat', 'Aftercare', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1106, 222, 9, 'boat', 'Equipment', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1107, 222, 9, 'boat', 'Comfortable', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1108, 222, 9, 'boat', 'Climate Control', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1109, 222, 9, 'boat', 'Facility', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1110, 222, 9, 'boat', 'Aftercare', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1111, 223, 9, 'boat', 'Equipment', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1112, 223, 9, 'boat', 'Comfortable', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1113, 223, 9, 'boat', 'Climate Control', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1114, 223, 9, 'boat', 'Facility', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1115, 223, 9, 'boat', 'Aftercare', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1116, 224, 9, 'boat', 'Equipment', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1117, 224, 9, 'boat', 'Comfortable', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1118, 224, 9, 'boat', 'Climate Control', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1119, 224, 9, 'boat', 'Facility', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1120, 224, 9, 'boat', 'Aftercare', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1121, 225, 9, 'boat', 'Equipment', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1122, 225, 9, 'boat', 'Comfortable', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1123, 225, 9, 'boat', 'Climate Control', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1124, 225, 9, 'boat', 'Facility', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1125, 225, 9, 'boat', 'Aftercare', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1126, 226, 10, 'boat', 'Equipment', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1127, 226, 10, 'boat', 'Comfortable', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1128, 226, 10, 'boat', 'Climate Control', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1129, 226, 10, 'boat', 'Facility', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1130, 226, 10, 'boat', 'Aftercare', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1131, 227, 10, 'boat', 'Equipment', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1132, 227, 10, 'boat', 'Comfortable', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1133, 227, 10, 'boat', 'Climate Control', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1134, 227, 10, 'boat', 'Facility', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1135, 227, 10, 'boat', 'Aftercare', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1136, 228, 10, 'boat', 'Equipment', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1137, 228, 10, 'boat', 'Comfortable', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1138, 228, 10, 'boat', 'Climate Control', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1139, 228, 10, 'boat', 'Facility', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1140, 228, 10, 'boat', 'Aftercare', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1141, 229, 10, 'boat', 'Equipment', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1142, 229, 10, 'boat', 'Comfortable', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1143, 229, 10, 'boat', 'Climate Control', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1144, 229, 10, 'boat', 'Facility', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1145, 229, 10, 'boat', 'Aftercare', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1146, 230, 11, 'boat', 'Equipment', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1147, 230, 11, 'boat', 'Comfortable', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1148, 230, 11, 'boat', 'Climate Control', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1149, 230, 11, 'boat', 'Facility', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1150, 230, 11, 'boat', 'Aftercare', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1151, 231, 11, 'boat', 'Equipment', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1152, 231, 11, 'boat', 'Comfortable', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1153, 231, 11, 'boat', 'Climate Control', '4', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1154, 231, 11, 'boat', 'Facility', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1155, 231, 11, 'boat', 'Aftercare', '5', 1, NULL, '2023-12-13 01:01:48', '2023-12-13 01:01:48'),
(1156, 232, 11, 'boat', 'Equipment', '5', 1, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(1157, 232, 11, 'boat', 'Comfortable', '5', 1, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(1158, 232, 11, 'boat', 'Climate Control', '4', 1, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(1159, 232, 11, 'boat', 'Facility', '5', 1, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(1160, 232, 11, 'boat', 'Aftercare', '4', 1, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(1161, 233, 11, 'boat', 'Equipment', '4', 1, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(1162, 233, 11, 'boat', 'Comfortable', '5', 1, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(1163, 233, 11, 'boat', 'Climate Control', '5', 1, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(1164, 233, 11, 'boat', 'Facility', '5', 1, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(1165, 233, 11, 'boat', 'Aftercare', '4', 1, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(1166, 234, 12, 'boat', 'Equipment', '5', 1, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(1167, 234, 12, 'boat', 'Comfortable', '5', 1, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(1168, 234, 12, 'boat', 'Climate Control', '5', 1, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(1169, 234, 12, 'boat', 'Facility', '4', 1, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(1170, 234, 12, 'boat', 'Aftercare', '4', 1, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(1171, 235, 12, 'boat', 'Equipment', '4', 1, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(1172, 235, 12, 'boat', 'Comfortable', '4', 1, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(1173, 235, 12, 'boat', 'Climate Control', '4', 1, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(1174, 235, 12, 'boat', 'Facility', '4', 1, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(1175, 235, 12, 'boat', 'Aftercare', '5', 1, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(1176, 236, 12, 'boat', 'Equipment', '5', 1, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(1177, 236, 12, 'boat', 'Comfortable', '5', 1, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(1178, 236, 12, 'boat', 'Climate Control', '5', 1, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(1179, 236, 12, 'boat', 'Facility', '5', 1, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(1180, 236, 12, 'boat', 'Aftercare', '4', 1, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(1181, 237, 13, 'boat', 'Equipment', '4', 1, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(1182, 237, 13, 'boat', 'Comfortable', '5', 1, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(1183, 237, 13, 'boat', 'Climate Control', '5', 1, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(1184, 237, 13, 'boat', 'Facility', '4', 1, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(1185, 237, 13, 'boat', 'Aftercare', '5', 1, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(1186, 238, 13, 'boat', 'Equipment', '5', 1, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(1187, 238, 13, 'boat', 'Comfortable', '4', 1, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(1188, 238, 13, 'boat', 'Climate Control', '5', 1, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(1189, 238, 13, 'boat', 'Facility', '4', 1, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(1190, 238, 13, 'boat', 'Aftercare', '4', 1, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(1191, 239, 13, 'boat', 'Equipment', '5', 1, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(1192, 239, 13, 'boat', 'Comfortable', '4', 1, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(1193, 239, 13, 'boat', 'Climate Control', '5', 1, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(1194, 239, 13, 'boat', 'Facility', '4', 1, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49'),
(1195, 239, 13, 'boat', 'Aftercare', '4', 1, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49');

-- --------------------------------------------------------

--
-- Table structure for table `bravo_seat_type`
--

DROP TABLE IF EXISTS `bravo_seat_type`;
CREATE TABLE IF NOT EXISTS `bravo_seat_type` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(191) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bravo_seat_type_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_seat_type`
--

INSERT INTO `bravo_seat_type` (`id`, `code`, `name`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`, `author_id`) VALUES
(1, 'vip', 'Vip', NULL, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45', NULL),
(2, 'eco', 'Economy', NULL, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45', NULL),
(3, 'premium', 'Premium', NULL, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45', NULL),
(4, 'business', 'Business', NULL, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45', NULL),
(5, 'fist_class', 'First Class', NULL, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bravo_seo`
--

DROP TABLE IF EXISTS `bravo_seo`;
CREATE TABLE IF NOT EXISTS `bravo_seo` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `object_model` varchar(255) DEFAULT NULL,
  `seo_index` tinyint(4) DEFAULT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_desc` text DEFAULT NULL,
  `seo_image` int(11) DEFAULT NULL,
  `seo_share` text DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_services`
--

DROP TABLE IF EXISTS `bravo_services`;
CREATE TABLE IF NOT EXISTS `bravo_services` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `map_lat` varchar(20) DEFAULT NULL,
  `map_lng` varchar(20) DEFAULT NULL,
  `is_featured` tinyint(4) DEFAULT NULL,
  `star_rate` tinyint(4) DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `sale_price` decimal(12,2) DEFAULT NULL,
  `min_people` int(11) DEFAULT NULL,
  `max_people` int(11) DEFAULT NULL,
  `max_guests` int(11) DEFAULT NULL,
  `review_score` int(11) DEFAULT NULL,
  `min_day_before_booking` int(11) DEFAULT NULL,
  `min_day_stays` int(11) DEFAULT NULL,
  `object_id` int(11) DEFAULT NULL,
  `object_model` varchar(255) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bravo_services_slug_index` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_services`
--

INSERT INTO `bravo_services` (`id`, `title`, `slug`, `category_id`, `location_id`, `address`, `map_lat`, `map_lng`, `is_featured`, `star_rate`, `price`, `sale_price`, `min_people`, `max_people`, `max_guests`, `review_score`, `min_day_before_booking`, `min_day_stays`, `object_id`, `object_model`, `status`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`, `author_id`) VALUES
(1, 'Alyson Willms', 'alyson-willms', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 'flight', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:54', '2023-12-13 01:01:57', NULL),
(2, 'Mrs. Aisha Stehr Jr.', 'mrs-aisha-stehr-jr', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 2, 'flight', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:54', '2023-12-13 01:01:57', NULL),
(3, 'Mr. Harry Funk', 'mr-harry-funk', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 3, 'flight', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:54', '2023-12-13 01:01:57', NULL),
(4, 'Maeve Beier', 'maeve-beier', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 4, 'flight', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:54', '2023-12-13 01:01:57', NULL),
(5, 'Abner Koepp', 'abner-koepp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 5, 'flight', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:54', '2023-12-13 01:01:57', NULL),
(6, 'Ms. Ora Olson Jr.', 'ms-ora-olson-jr', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 6, 'flight', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:54', '2023-12-13 01:01:57', NULL),
(7, 'Madisen Jacobi', 'madisen-jacobi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 7, 'flight', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:54', '2023-12-13 01:01:57', NULL),
(8, 'Richmond Pollich', 'richmond-pollich', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 8, 'flight', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:54', '2023-12-13 01:01:57', NULL),
(9, 'Kamren Bailey I', 'kamren-bailey-i', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 9, 'flight', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:54', '2023-12-13 01:01:57', NULL),
(10, 'Larue Fritsch', 'larue-fritsch', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 10, 'flight', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:54', '2023-12-13 01:01:57', NULL),
(11, 'Colton Kuhn', 'colton-kuhn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 11, 'flight', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:54', '2023-12-13 01:01:57', NULL),
(12, 'Brando Skiles', 'brando-skiles', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 12, 'flight', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:54', '2023-12-13 01:01:57', NULL),
(13, 'Alysha Kerluke', 'alysha-kerluke', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 13, 'flight', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:54', '2023-12-13 01:01:57', NULL),
(14, 'Glenna O\'Connell', 'glenna-oconnell', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 14, 'flight', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:54', '2023-12-13 01:01:57', NULL),
(15, 'Angeline Upton', 'angeline-upton', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 15, 'flight', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:54', '2023-12-13 01:01:57', NULL),
(16, 'Sandrine Thompson', 'sandrine-thompson', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 16, 'flight', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:54', '2023-12-13 01:01:57', NULL),
(17, 'Ryder Gutmann I', 'ryder-gutmann-i', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 17, 'flight', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:54', '2023-12-13 01:01:57', NULL),
(18, 'Mr. Kayden Price', 'mr-kayden-price', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 18, 'flight', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:54', '2023-12-13 01:01:57', NULL),
(19, 'Prof. Omari Effertz Sr.', 'prof-omari-effertz-sr', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 19, 'flight', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:54', '2023-12-13 01:01:57', NULL),
(20, 'Prof. Price Considine Jr.', 'prof-price-considine-jr', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 20, 'flight', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:54', '2023-12-13 01:01:57', NULL),
(21, 'The May Fair Hotel', 'the-may-fair-hotel', NULL, 1, 'Paris Cinemas Battery', '19.277696', '72.887009', 0, 4, '550.00', NULL, NULL, NULL, NULL, 5, NULL, NULL, 11, 'hotel', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:55', '2023-12-13 01:01:57', 4),
(22, 'Dylan Hotel', 'dylan-hotel', NULL, 2, 'Regal Cinemas Battery', '19.229727', '72.984470', 1, 5, '550.00', NULL, NULL, NULL, NULL, 4, NULL, NULL, 10, 'hotel', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:55', '2023-12-13 01:01:57', 4),
(23, 'Parian Holiday Villas', 'parian-holiday-villas', NULL, 1, 'Regal Cinemas Battery Park', '19.161637', '72.997510', 1, 5, '550.00', NULL, NULL, NULL, NULL, 4, NULL, NULL, 9, 'hotel', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:55', '2023-12-13 01:01:57', 1),
(24, 'Stewart Hotel', 'stewart-hotel', NULL, 5, 'New York', '19.080542', '73.010551', 0, 5, '900.00', NULL, NULL, NULL, NULL, 4, NULL, NULL, 8, 'hotel', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:55', '2023-12-13 01:01:57', 5),
(25, 'Crowne Plaza Hotel', 'crowne-plaza-hotel', NULL, 2, 'New York', '19.001355', '73.111444', 0, 5, '900.00', NULL, NULL, NULL, NULL, 4, NULL, NULL, 7, 'hotel', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:55', '2023-12-13 01:01:57', 6),
(26, 'EnVision Hotel Boston', 'envision-hotel-boston', NULL, 3, 'New York', '18.873011', '72.975724', 0, 5, '700.00', NULL, NULL, NULL, NULL, 5, NULL, NULL, 6, 'hotel', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:55', '2023-12-13 01:01:57', 5),
(27, 'Studio Allston Hotel', 'studio-allston-hotel', NULL, 5, 'New York', '18.972786', '72.819724', 0, 5, '500.00', NULL, NULL, NULL, NULL, 4, NULL, NULL, 5, 'hotel', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:55', '2023-12-13 01:01:57', 4),
(28, 'Redac Gateway Hotel', 'redac-gateway-hotel', NULL, 1, 'Petit-Montrouge', '19.031217', '72.851982', 0, 5, '500.00', NULL, NULL, NULL, NULL, 5, NULL, NULL, 4, 'hotel', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:55', '2023-12-13 01:01:57', 1),
(29, 'Castello Casole Hotel', 'castello-casole-hotel', NULL, 1, 'Petit-Montrouge', '19.077946', '72.838255', 0, 5, '350.00', NULL, NULL, NULL, NULL, 5, NULL, NULL, 3, 'hotel', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:55', '2023-12-13 01:01:57', 1),
(30, 'Hotel WBF Hommachi', 'hotel-wbf-hommachi', NULL, 1, 'Porte de Vanves', '19.110390', '72.832764', 0, 5, '350.00', NULL, NULL, NULL, NULL, 4, NULL, NULL, 2, 'hotel', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:55', '2023-12-13 01:01:57', 1),
(31, 'Hotel Stanford', 'hotel-stanford', NULL, 1, 'Arrondissement de Paris', '19.148665', '72.839670', 0, 5, '300.00', NULL, NULL, NULL, NULL, 4, NULL, NULL, 1, 'hotel', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:55', '2023-12-13 01:01:57', 1),
(32, 'STAY GREENWICH VILLAGE', 'stay-greenwich-village', NULL, 1, 'Porte de Vanves', '51.514892', '-0.176181', 1, NULL, '300.00', '150.00', NULL, NULL, 9, 5, NULL, NULL, 11, 'space', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:55', '2023-12-13 01:01:57', 5),
(33, 'LILY DALE VILLAGE', 'lily-dale-village', NULL, 1, 'Porte de Vanves', '51.517883', '-0.134314', 1, NULL, '250.00', '0.00', NULL, NULL, 6, 5, NULL, NULL, 10, 'space', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:55', '2023-12-13 01:01:57', 1),
(34, 'LUXURY SINGLE', 'luxury-single', NULL, 1, 'Porte de Vanves', '51.569555', '0.012563', 1, NULL, '400.00', '350.00', NULL, NULL, 6, 5, NULL, NULL, 9, 'space', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:55', '2023-12-13 01:01:57', 5),
(35, 'PARIS GREENWICH VILLA', 'paris-greenwich-villa', NULL, 1, 'Porte de Vanves', '51.556749', '-0.091124', 1, NULL, '500.00', '0.00', NULL, NULL, 6, 4, NULL, NULL, 8, 'space', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:55', '2023-12-13 01:01:57', 4),
(36, 'EAST VILLAGE', 'east-village', NULL, 1, 'Porte de Vanves', '51.524292', '-0.022489', 1, NULL, '300.00', '260.00', NULL, NULL, 7, 5, NULL, NULL, 7, 'space', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:55', '2023-12-13 01:01:57', 4),
(37, 'THE MEATPACKING SUITES', 'the-meatpacking-suites', NULL, 1, 'Porte de Vanves', '51.475135', '0.003592', 0, NULL, '320.00', '0.00', NULL, NULL, 5, 5, NULL, NULL, 6, 'space', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:55', '2023-12-13 01:01:57', 4),
(38, 'DUPLEX GREENWICH', 'duplex-greenwich', NULL, 1, 'Porte de Vanves', '51.442192', '-0.043778', 0, NULL, '220.00', '0.00', NULL, NULL, 9, 4, NULL, NULL, 5, 'space', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:55', '2023-12-13 01:01:57', 4),
(39, 'BEST OF WEST VILLAGE', 'best-of-west-village', NULL, 4, 'Porte de Vanves', '51.427638', '-0.170752', 0, NULL, '800.00', '0.00', NULL, NULL, 5, 4, NULL, NULL, 4, 'space', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:55', '2023-12-13 01:01:57', 4),
(40, 'BEAUTIFUL LOFT', 'beautiful-loft', NULL, 3, 'Porte de Vanves', '51.461875', '-0.211246', 0, NULL, '650.00', '0.00', NULL, NULL, 9, 4, NULL, NULL, 3, 'space', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:55', '2023-12-13 01:01:57', 6),
(41, 'LUXURY APARTMENT', 'luxury-apartment', NULL, 3, 'Porte de Vanves', '51.519592', '-0.226346', 1, NULL, '900.00', '0.00', NULL, NULL, 10, 4, NULL, NULL, 2, 'space', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:55', '2023-12-13 01:01:57', 1),
(42, 'LUXURY STUDIO', 'luxury-studio', NULL, 2, 'Arrondissement de Paris', '51.528564', '-0.203010', 0, NULL, '300.00', '499.00', NULL, NULL, 8, 5, NULL, NULL, 1, 'space', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:55', '2023-12-13 01:01:57', 1),
(43, 'Vinfast Fadil Standard', 'vinfast-fadil-standard', NULL, 1, 'Arrondissement de Paris', '21.053326', '105.841475', 0, NULL, '400.00', '0.00', NULL, NULL, NULL, 4, NULL, NULL, 13, 'car', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:55', '2023-12-13 01:01:55', 2),
(44, 'Vinfast Lux A2.0 Plus', 'vinfast-lux-a20-plus', NULL, 3, 'Arrondissement de Paris', '21.051244', '105.777988', 0, NULL, '350.00', '0.00', NULL, NULL, NULL, 4, NULL, NULL, 12, 'car', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:55', '2023-12-13 01:01:55', 2),
(45, 'Vinfast Lux V8 (SUV)', 'vinfast-lux-v8-suv', NULL, 8, 'Arrondissement de Paris', '21.020001', '105.836670', 1, NULL, '250.00', '0.00', NULL, NULL, NULL, 5, NULL, NULL, 11, 'car', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:55', '2023-12-13 01:01:55', 2),
(46, 'Toyota Prius Plus', 'toyota-prius-plus', NULL, 7, 'Arrondissement de Paris', '21.025449', '105.804412', 0, NULL, '199.00', '0.00', NULL, NULL, NULL, 5, NULL, NULL, 10, 'car', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:55', '2023-12-13 01:01:55', 2),
(47, 'Honda Civic', 'honda-civic', NULL, 6, 'Arrondissement de Paris', '21.047879', '105.809731', 1, NULL, '450.00', '0.00', NULL, NULL, NULL, 4, NULL, NULL, 9, 'car', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:55', '2023-12-13 01:01:55', 2),
(48, 'Vinfast Lux SA2.0 Plus', 'vinfast-lux-sa20-plus', NULL, 1, 'Arrondissement de Paris', '21.017437', '105.831179', 0, NULL, '600.00', '0.00', NULL, NULL, NULL, 5, NULL, NULL, 8, 'car', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:55', '2023-12-13 01:01:55', 2),
(49, 'Mercedes Benz', 'mercedes-benz', NULL, 1, 'Arrondissement de Paris', '21.025769', '105.829635', 0, NULL, '200.00', '0.00', NULL, NULL, NULL, 4, NULL, NULL, 7, 'car', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:55', '2023-12-13 01:01:55', 2),
(50, 'Vinfast Fadil Plus', 'vinfast-fadil-plus', NULL, 1, 'Arrondissement de Paris', '21.018398', '105.812820', 0, NULL, '400.00', '0.00', NULL, NULL, NULL, 5, NULL, NULL, 6, 'car', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:55', '2023-12-13 01:01:55', 2),
(51, '2019 Audi S3', '2019-audi-s3', NULL, 5, 'Arrondissement de Paris', '21.014873', '105.794117', 0, NULL, '300.00', '0.00', NULL, NULL, NULL, 5, NULL, NULL, 5, 'car', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:55', '2023-12-13 01:01:55', 1),
(52, '2019 BMW M6 Gran Coupe', '2019-bmw-m6-gran-coupe', NULL, 1, 'Arrondissement de Paris', '21.020161', '105.789655', 0, NULL, '300.00', '0.00', NULL, NULL, NULL, 5, NULL, NULL, 4, 'car', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:55', '2023-12-13 01:01:55', 1),
(53, '2019 Honda Clarity', '2019-honda-clarity', NULL, 3, 'Arrondissement de Paris', '21.031217', '105.773698', 1, NULL, '300.00', '0.00', NULL, NULL, NULL, 5, NULL, NULL, 3, 'car', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:55', '2023-12-13 01:01:55', 1),
(54, '2019 Honda Clarity', '2019-honda-clarity-1', NULL, 1, 'Arrondissement de Paris', '21.039771', '105.777203', 1, NULL, '300.00', '0.00', NULL, NULL, NULL, 5, NULL, NULL, 2, 'car', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:55', '2023-12-13 01:01:55', 1),
(55, 'BMW-X6-facelift', 'bmw-x6-facelift', NULL, 1, 'Arrondissement de Paris', '21.054831', '105.796077', 1, NULL, '500.00', '136.00', NULL, NULL, NULL, 4, NULL, NULL, 1, 'car', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:55', '2023-12-13 01:01:55', 1),
(56, 'Event of Washington, D.C. Highlights', 'event-of-washington-dc-highlights', NULL, 7, 'Francisco Parnassus Campus', '37.782668', '-122.425058', 1, NULL, '2100.00', '317.00', NULL, NULL, NULL, 4, NULL, NULL, 12, 'event', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:55', '2023-12-13 01:01:57', 1),
(57, 'New York – Discover America', 'new-york-discover-america', NULL, 6, 'New Jersey', '40.035329', '-74.417227', 1, NULL, '300.00', '0.00', NULL, NULL, NULL, 4, NULL, NULL, 11, 'event', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:55', '2023-12-13 01:01:57', 6),
(58, 'Origami Crane Wedding Planners', 'origami-crane-wedding-planners', NULL, 5, 'Washington, DC, USA', '34.049345', '-118.248479', 0, NULL, '400.00', '0.00', NULL, NULL, NULL, 5, NULL, NULL, 10, 'event', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:55', '2023-12-13 01:01:57', 5),
(59, 'Northern Lights Event Planners', 'northern-lights-event-planners', NULL, 4, 'United States', '37.040023', '-95.643144', 1, NULL, '800.00', '600.00', NULL, NULL, NULL, 5, NULL, NULL, 9, 'event', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:55', '2023-12-13 01:01:57', 6),
(60, 'Pink Crescent Moon Events', 'pink-crescent-moon-events', NULL, 3, 'Trimmer Springs Rd, Sanger', '36.822484', '-119.365266', 0, NULL, '700.00', '0.00', NULL, NULL, NULL, 5, NULL, NULL, 8, 'event', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:55', '2023-12-13 01:01:57', 6),
(61, 'Eastern Discovery', 'eastern-discovery', NULL, 2, 'Pier 36 New York', '40.708581', '-73.998817', 0, NULL, '2100.00', '106.00', NULL, NULL, NULL, 4, NULL, NULL, 7, 'event', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:55', '2023-12-13 01:01:57', 5),
(62, 'Spanish Moss Event Design', 'spanish-moss-event-design', NULL, 2, 'Prince St Station', '40.720161', '-74.009628', 1, NULL, '600.00', '0.00', NULL, NULL, NULL, 5, NULL, NULL, 6, 'event', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:55', '2023-12-13 01:01:57', 4),
(63, 'Southwest States (Ex Los Angeles) ', 'southwest-states-ex-los-angeles', NULL, 2, 'Regal Cinemas Battery Park 11', '40.714578', '-73.983888', 0, NULL, '1900.00', '1508.00', NULL, NULL, NULL, 5, NULL, NULL, 5, 'event', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:55', '2023-12-13 01:01:57', 6),
(64, 'Aspen Glade Weddings & Events', 'aspen-glade-weddings-events', NULL, 2, 'New York', '40.707891', '-74.008825', 1, NULL, '850.00', '0.00', NULL, NULL, NULL, 5, NULL, NULL, 4, 'event', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:55', '2023-12-13 01:01:57', 1),
(65, 'Bamboo Grove Event Planning', 'bamboo-grove-event-planning', NULL, 1, 'Petit-Montrouge', '48.884900', '2.346377', 1, NULL, '1500.00', '536.00', NULL, NULL, NULL, 5, NULL, NULL, 3, 'event', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:55', '2023-12-13 01:01:57', 4),
(66, 'Painted Desert Event Designs', 'painted-desert-event-designs', NULL, 1, 'Porte de Vanves', '48.853917', '2.307199', 1, NULL, '900.00', '403.00', NULL, NULL, NULL, 5, NULL, NULL, 2, 'event', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:55', '2023-12-13 01:01:57', 1),
(67, 'Andante & Allegro Event Design', 'andante-allegro-event-design', NULL, 1, 'Arrondissement de Paris', '48.852754', '2.339155', 0, NULL, '2000.00', '0.00', NULL, NULL, NULL, 5, NULL, NULL, 1, 'event', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:55', '2023-12-13 01:01:57', 1),
(68, 'River Cruise Tour on the Seine', 'river-cruise-tour-on-the-seine', 4, 1, 'Nevada, US', '36.401066', '-88.312292', 0, NULL, '2100.00', '700.00', 1, 17, NULL, 4, NULL, NULL, 16, 'tour', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:55', '2023-12-13 01:01:57', 1),
(69, 'Cannes and Antibes Night Tour', 'cannes-and-antibes-night-tour', 3, 1, 'UCSF Helen Diller Family', '36.201066', '-88.112292', 0, NULL, '2100.00', '286.00', 1, 13, NULL, 4, NULL, NULL, 15, 'tour', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:55', '2023-12-13 01:01:57', 2),
(70, 'San Francisco Express Never Ceases', 'san-francisco-express-never-ceases', 2, 7, 'Comprehensive Cancer Center', '37.757522', '-122.447984', 0, NULL, '2100.00', '783.00', 1, 13, NULL, 4, NULL, NULL, 14, 'tour', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:56', '2023-12-13 01:01:57', 1),
(71, 'Hollywood Sign Small Group Tour in Luxury Van', 'hollywood-sign-small-group-tour-in-luxury-van', 2, 8, 'Virginia', '37.445688', '-78.673668', 0, NULL, '2100.00', '1702.00', 1, 13, NULL, 5, NULL, NULL, 13, 'tour', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:56', '2023-12-13 01:01:57', 2),
(72, 'Segway Tour of Washington, D.C. Highlights', 'segway-tour-of-washington-dc-highlights', 2, 7, 'Francisco Parnassus Campus', '37.782668', '-122.425058', 0, NULL, '2100.00', '358.00', 1, 11, NULL, 5, NULL, NULL, 12, 'tour', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:56', '2023-12-13 01:01:57', 1),
(73, 'Trip of New York – Discover America', 'trip-of-new-york-discover-america', 1, 6, 'New Jersey', '40.035329', '-74.417227', 0, NULL, '2100.00', '358.00', 1, 13, NULL, 5, NULL, NULL, 11, 'tour', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:56', '2023-12-13 01:01:57', 2),
(74, 'Giverny and Versailles Small Group Day Trip', 'giverny-and-versailles-small-group-day-trip', 4, 5, 'Washington, DC, USA', '34.049345', '-118.248479', 0, NULL, '2100.00', '1799.00', 1, 16, NULL, 5, NULL, NULL, 10, 'tour', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:56', '2023-12-13 01:01:57', 2),
(75, 'Tastes and Sounds of the South 2019', 'tastes-and-sounds-of-the-south-2019', 4, 4, 'United States', '37.040023', '-95.643144', 0, NULL, '2100.00', '781.00', 1, 11, NULL, 5, NULL, NULL, 9, 'tour', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:56', '2023-12-13 01:01:57', 2),
(76, 'Pure Luxe in Punta Mita', 'pure-luxe-in-punta-mita', 1, 3, 'Trimmer Springs Rd, Sanger', '36.822484', '-119.365266', 0, NULL, '2100.00', '566.00', 1, 19, NULL, 5, NULL, NULL, 8, 'tour', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:56', '2023-12-13 01:01:57', 2),
(77, 'Eastern Discovery', 'eastern-discovery-1', 1, 2, 'Pier 36 New York', '40.708581', '-73.998817', 0, NULL, '2100.00', '153.00', 1, 19, NULL, 4, NULL, NULL, 7, 'tour', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:56', '2023-12-13 01:01:57', 2),
(78, 'Eastern Discovery (Start New Orleans)', 'eastern-discovery-start-new-orleans', 3, 2, 'Prince St Station', '40.720161', '-74.009628', 1, NULL, '2100.00', '941.00', 1, 19, NULL, 4, NULL, NULL, 6, 'tour', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:56', '2023-12-13 01:01:57', 2),
(79, 'Southwest States (Ex Los Angeles) ', 'southwest-states-ex-los-angeles-1', 4, 2, 'Regal Cinemas Battery Park 11', '40.714578', '-73.983888', 0, NULL, '1900.00', '866.00', 1, 18, NULL, 4, NULL, NULL, 5, 'tour', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:56', '2023-12-13 01:01:57', 2),
(80, 'Paris Vacation Travel ', 'paris-vacation-travel', 2, 2, 'New York', '40.707891', '-74.008825', 1, NULL, '850.00', '619.00', 1, 18, NULL, 5, NULL, NULL, 4, 'tour', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:56', '2023-12-13 01:01:57', 1),
(81, 'Los Angeles to San Francisco Express ', 'los-angeles-to-san-francisco-express', 4, 1, 'Petit-Montrouge', '48.884900', '2.346377', 1, NULL, '1500.00', '729.00', 1, 15, NULL, 5, NULL, NULL, 3, 'tour', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:56', '2023-12-13 01:01:57', 2),
(82, 'New York: Museum of Modern Art', 'new-york-museum-of-modern-art', 1, 1, 'Porte de Vanves', '48.853917', '2.307199', 1, NULL, '900.00', '130.00', 1, 17, NULL, 5, NULL, NULL, 2, 'tour', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:56', '2023-12-13 01:01:57', 1),
(83, 'American Parks Trail end Rapid City', 'american-parks-trail-end-rapid-city', 3, 1, 'Arrondissement de Paris', '48.852754', '2.339155', 0, NULL, '2000.00', '577.00', 1, 17, NULL, 0, NULL, NULL, 1, 'tour', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:56', '2023-12-13 01:01:57', 1),
(84, 'My Way 100', 'my-way-100', NULL, 1, 'Arrondissement de Paris', '21.053326', '105.841475', 0, NULL, '150.00', NULL, NULL, NULL, NULL, 4, NULL, NULL, 13, 'boat', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:56', '2023-12-13 01:01:57', 6),
(85, 'Ohana 3X', 'ohana-3x', NULL, 3, 'Arrondissement de Paris', '21.051244', '105.777988', 0, NULL, '80.00', NULL, NULL, NULL, NULL, 5, NULL, NULL, 12, 'boat', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:56', '2023-12-13 01:01:57', 6),
(86, 'Freedom M2', 'freedom-m2', NULL, 8, 'Arrondissement de Paris', '21.020001', '105.836670', 1, NULL, '50.00', NULL, NULL, NULL, NULL, 5, NULL, NULL, 11, 'boat', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:56', '2023-12-13 01:01:57', 5),
(87, 'Endless Summer W-10', 'endless-summer-w-10', NULL, 7, 'Arrondissement de Paris', '21.025449', '105.804412', 0, NULL, '230.00', NULL, NULL, NULL, NULL, 5, NULL, NULL, 10, 'boat', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:56', '2023-12-13 01:01:57', 6),
(88, 'Destiny 6', 'destiny-6', NULL, 6, 'Arrondissement de Paris', '21.047879', '105.809731', 1, NULL, '180.00', NULL, NULL, NULL, NULL, 4, NULL, NULL, 9, 'boat', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:56', '2023-12-13 01:01:57', 4),
(89, 'Carpe Diem LA', 'carpe-diem-la', NULL, 1, 'Arrondissement de Paris', '21.017437', '105.831179', 1, NULL, '200.00', NULL, NULL, NULL, NULL, 4, NULL, NULL, 8, 'boat', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:56', '2023-12-13 01:01:57', 5),
(90, 'Blue Moon YC-300', 'blue-moon-yc-300', NULL, 1, 'Arrondissement de Paris', '21.025769', '105.829635', 0, NULL, '130.00', NULL, NULL, NULL, NULL, 5, NULL, NULL, 7, 'boat', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:56', '2023-12-13 01:01:57', 6),
(91, 'Blue Dream TC-20', 'blue-dream-tc-20', NULL, 1, 'Arrondissement de Paris', '21.018398', '105.812820', 1, NULL, '130.00', NULL, NULL, NULL, NULL, 5, NULL, NULL, 6, 'boat', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:56', '2023-12-13 01:01:57', 4),
(92, 'Andiamo MX-3', 'andiamo-mx-3', NULL, 5, 'Arrondissement de Paris', '21.014873', '105.794117', 1, NULL, '250.00', NULL, NULL, NULL, NULL, 5, NULL, NULL, 5, 'boat', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:56', '2023-12-13 01:01:57', 1),
(93, 'BOAT 1992 ALISON', 'boat-1992-alison', NULL, 1, 'Arrondissement de Paris', '21.020161', '105.789655', 0, NULL, '50.00', NULL, NULL, NULL, NULL, 4, NULL, NULL, 4, 'boat', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:56', '2023-12-13 01:01:57', 1),
(94, 'Blue Moon Cruising', 'blue-moon-cruising', NULL, 3, 'Arrondissement de Paris', '21.031217', '105.773698', 0, NULL, '200.00', NULL, NULL, NULL, NULL, 4, NULL, NULL, 3, 'boat', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:56', '2023-12-13 01:01:57', 1),
(95, 'Summer Breeze', 'summer-breeze', NULL, 1, 'Arrondissement de Paris', '21.039771', '105.777203', 0, NULL, '150.00', NULL, NULL, NULL, NULL, 5, NULL, NULL, 2, 'boat', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:56', '2023-12-13 01:01:57', 1),
(96, 'Cruising Yacht', 'cruising-yacht', NULL, 1, 'Arrondissement de Paris', '21.054831', '105.796077', 0, NULL, '100.00', NULL, NULL, NULL, NULL, 5, NULL, NULL, 1, 'boat', 'publish', NULL, NULL, NULL, '2023-12-13 01:01:56', '2023-12-13 01:01:57', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bravo_service_translations`
--

DROP TABLE IF EXISTS `bravo_service_translations`;
CREATE TABLE IF NOT EXISTS `bravo_service_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `origin_id` bigint(20) DEFAULT NULL,
  `locale` varchar(10) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `content` text DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bravo_service_translations_origin_id_locale_unique` (`origin_id`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_spaces`
--

DROP TABLE IF EXISTS `bravo_spaces`;
CREATE TABLE IF NOT EXISTS `bravo_spaces` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `content` text DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `banner_image_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `map_lat` varchar(20) DEFAULT NULL,
  `map_lng` varchar(20) DEFAULT NULL,
  `map_zoom` int(11) DEFAULT NULL,
  `is_featured` tinyint(4) DEFAULT NULL,
  `gallery` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `faqs` text DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `sale_price` decimal(12,2) DEFAULT NULL,
  `is_instant` tinyint(4) DEFAULT 0,
  `allow_children` tinyint(4) DEFAULT 0,
  `allow_infant` tinyint(4) DEFAULT 0,
  `max_guests` int(11) DEFAULT NULL,
  `bed` int(11) DEFAULT NULL,
  `bathroom` int(11) DEFAULT NULL,
  `square` int(11) DEFAULT NULL,
  `enable_extra_price` tinyint(4) DEFAULT NULL,
  `extra_price` text DEFAULT NULL,
  `discount_by_days` text DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `default_state` tinyint(4) DEFAULT 1,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `review_score` decimal(2,1) DEFAULT NULL,
  `ical_import_url` varchar(191) DEFAULT NULL,
  `enable_service_fee` tinyint(4) DEFAULT NULL,
  `service_fee` text DEFAULT NULL,
  `surrounding` text DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `min_day_before_booking` int(11) DEFAULT NULL,
  `min_day_stays` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bravo_spaces_slug_index` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_spaces`
--

INSERT INTO `bravo_spaces` (`id`, `title`, `slug`, `content`, `image_id`, `banner_image_id`, `location_id`, `address`, `map_lat`, `map_lng`, `map_zoom`, `is_featured`, `gallery`, `video`, `faqs`, `price`, `sale_price`, `is_instant`, `allow_children`, `allow_infant`, `max_guests`, `bed`, `bathroom`, `square`, `enable_extra_price`, `extra_price`, `discount_by_days`, `status`, `default_state`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`, `review_score`, `ical_import_url`, `enable_service_fee`, `service_fee`, `surrounding`, `author_id`, `min_day_before_booking`, `min_day_stays`) VALUES
(1, 'LUXURY STUDIO', 'luxury-studio', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 63, 84, 2, 'Arrondissement de Paris', '51.528564', '-0.203010', 12, 0, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', '300.00', '499.00', 1, 0, 0, 8, 3, 9, 161, 1, '[{\"name\":\"Lawn garden\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Clearning\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 'publish', 1, 1, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:40', '4.8', NULL, NULL, NULL, NULL, 1, NULL, NULL),
(2, 'LUXURY APARTMENT', 'luxury-apartment', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 64, 83, 3, 'Porte de Vanves', '51.519592', '-0.226346', 12, 1, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', '900.00', '0.00', 1, 0, 0, 10, 4, 5, 170, 1, '[{\"name\":\"Lawn garden\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Clearning\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 'publish', 1, 1, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:40', '4.0', NULL, NULL, NULL, NULL, 1, NULL, NULL),
(3, 'BEAUTIFUL LOFT', 'beautiful-loft', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 65, 84, 3, 'Porte de Vanves', '51.461875', '-0.211246', 12, 0, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', '650.00', '0.00', 1, 0, 0, 9, 8, 9, 131, 1, '[{\"name\":\"Lawn garden\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Clearning\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 'publish', 1, 6, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:40', '4.3', NULL, NULL, NULL, NULL, 6, NULL, NULL),
(4, 'BEST OF WEST VILLAGE', 'best-of-west-village', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 66, 84, 4, 'Porte de Vanves', '51.427638', '-0.170752', 12, 0, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', '800.00', '0.00', 1, 0, 0, 5, 4, 6, 114, 1, '[{\"name\":\"Lawn garden\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Clearning\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 'publish', 1, 4, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:40', '4.3', NULL, NULL, NULL, NULL, 4, NULL, NULL),
(5, 'DUPLEX GREENWICH', 'duplex-greenwich', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 67, 85, 1, 'Porte de Vanves', '51.442192', '-0.043778', 12, 0, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', '220.00', '0.00', 0, 0, 0, 9, 10, 7, 187, 1, '[{\"name\":\"Lawn garden\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Clearning\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 'publish', 1, 4, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:40', '4.3', NULL, NULL, NULL, NULL, 4, NULL, NULL),
(6, 'THE MEATPACKING SUITES', 'the-meatpacking-suites', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 68, 83, 1, 'Porte de Vanves', '51.475135', '0.003592', 12, 0, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', '320.00', '0.00', 1, 0, 0, 5, 9, 1, 166, 1, '[{\"name\":\"Lawn garden\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Clearning\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 'publish', 1, 4, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:40', '4.5', NULL, NULL, NULL, NULL, 4, NULL, NULL),
(7, 'EAST VILLAGE', 'east-village', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 69, 84, 1, 'Porte de Vanves', '51.524292', '-0.022489', 12, 1, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', '300.00', '260.00', 1, 0, 0, 7, 9, 8, 188, 1, '[{\"name\":\"Lawn garden\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Clearning\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 'publish', 1, 4, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:40', '4.8', NULL, NULL, NULL, NULL, 4, NULL, NULL),
(8, 'PARIS GREENWICH VILLA', 'paris-greenwich-villa', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 70, 85, 1, 'Porte de Vanves', '51.556749', '-0.091124', 12, 1, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', '500.00', '0.00', 1, 0, 0, 6, 6, 8, 161, 1, '[{\"name\":\"Lawn garden\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Clearning\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 'publish', 1, 4, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:40', '4.3', NULL, NULL, NULL, NULL, 4, NULL, NULL),
(9, 'LUXURY SINGLE', 'luxury-single', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 71, 85, 1, 'Porte de Vanves', '51.569555', '0.012563', 12, 1, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', '400.00', '350.00', 0, 0, 0, 6, 4, 10, 175, 1, '[{\"name\":\"Lawn garden\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Clearning\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 'publish', 1, 5, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:40', '4.7', NULL, NULL, NULL, NULL, 5, NULL, NULL),
(10, 'LILY DALE VILLAGE', 'lily-dale-village', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 72, 84, 1, 'Porte de Vanves', '51.517883', '-0.134314', 12, 1, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', '250.00', '0.00', 0, 0, 0, 6, 3, 1, 161, 1, '[{\"name\":\"Lawn garden\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Clearning\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 'publish', 1, 1, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:40', '5.0', NULL, NULL, NULL, NULL, 1, NULL, NULL),
(11, 'STAY GREENWICH VILLAGE', 'stay-greenwich-village', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 73, 84, 1, 'Porte de Vanves', '51.514892', '-0.176181', 12, 1, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', '300.00', '150.00', 1, 0, 0, 9, 8, 2, 147, 1, '[{\"name\":\"Lawn garden\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Clearning\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 'publish', 1, 5, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:40', '4.5', NULL, NULL, NULL, NULL, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bravo_space_dates`
--

DROP TABLE IF EXISTS `bravo_space_dates`;
CREATE TABLE IF NOT EXISTS `bravo_space_dates` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `target_id` bigint(20) DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `max_guests` tinyint(4) DEFAULT NULL,
  `active` tinyint(4) DEFAULT 0,
  `note_to_customer` text DEFAULT NULL,
  `note_to_admin` text DEFAULT NULL,
  `is_instant` tinyint(4) DEFAULT 0,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_space_term`
--

DROP TABLE IF EXISTS `bravo_space_term`;
CREATE TABLE IF NOT EXISTS `bravo_space_term` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` int(11) DEFAULT NULL,
  `target_id` int(11) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_space_term`
--

INSERT INTO `bravo_space_term` (`id`, `term_id`, `target_id`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 15, 1, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(2, 16, 1, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(3, 17, 1, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(4, 18, 1, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(5, 19, 1, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(6, 20, 1, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(7, 21, 1, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(8, 22, 1, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(9, 24, 1, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(10, 25, 1, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(11, 26, 1, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(12, 27, 1, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(13, 29, 1, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(14, 30, 1, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(15, 31, 1, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(16, 15, 2, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(17, 16, 2, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(18, 17, 2, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(19, 18, 2, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(20, 19, 2, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(21, 20, 2, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(22, 21, 2, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(23, 22, 2, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(24, 23, 2, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(25, 24, 2, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(26, 25, 2, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(27, 26, 2, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(28, 27, 2, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(29, 28, 2, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(30, 29, 2, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(31, 30, 2, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(32, 31, 2, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(33, 15, 3, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(34, 16, 3, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(35, 17, 3, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(36, 18, 3, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(37, 19, 3, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(38, 20, 3, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(39, 21, 3, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(40, 22, 3, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(41, 23, 3, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(42, 24, 3, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(43, 25, 3, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(44, 27, 3, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(45, 29, 3, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(46, 30, 3, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(47, 31, 3, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(48, 16, 4, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(49, 17, 4, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(50, 18, 4, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(51, 19, 4, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(52, 20, 4, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(53, 22, 4, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(54, 24, 4, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(55, 25, 4, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(56, 26, 4, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(57, 27, 4, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(58, 28, 4, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(59, 30, 4, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(60, 31, 4, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(61, 15, 5, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(62, 16, 5, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(63, 17, 5, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(64, 18, 5, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(65, 19, 5, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(66, 20, 5, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(67, 21, 5, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(68, 22, 5, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(69, 24, 5, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(70, 25, 5, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(71, 26, 5, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(72, 28, 5, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(73, 29, 5, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(74, 30, 5, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(75, 31, 5, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(76, 15, 6, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(77, 16, 6, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(78, 17, 6, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(79, 18, 6, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(80, 19, 6, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(81, 21, 6, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(82, 22, 6, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(83, 23, 6, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(84, 24, 6, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(85, 25, 6, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(86, 26, 6, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(87, 27, 6, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(88, 28, 6, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(89, 29, 6, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(90, 30, 6, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(91, 31, 6, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(92, 15, 7, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(93, 16, 7, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(94, 17, 7, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(95, 19, 7, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(96, 20, 7, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(97, 21, 7, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(98, 22, 7, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(99, 23, 7, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(100, 26, 7, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(101, 27, 7, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(102, 28, 7, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(103, 29, 7, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(104, 30, 7, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(105, 15, 8, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(106, 16, 8, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(107, 17, 8, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(108, 18, 8, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(109, 19, 8, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(110, 20, 8, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(111, 21, 8, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(112, 23, 8, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(113, 24, 8, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(114, 25, 8, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(115, 26, 8, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(116, 27, 8, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(117, 28, 8, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(118, 29, 8, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(119, 16, 9, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(120, 17, 9, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(121, 18, 9, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(122, 19, 9, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(123, 20, 9, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(124, 21, 9, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(125, 22, 9, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(126, 23, 9, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(127, 27, 9, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(128, 28, 9, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(129, 29, 9, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(130, 30, 9, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39'),
(131, 31, 9, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(132, 15, 10, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(133, 16, 10, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(134, 17, 10, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(135, 18, 10, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(136, 19, 10, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(137, 21, 10, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(138, 22, 10, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(139, 23, 10, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(140, 27, 10, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(141, 28, 10, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(142, 29, 10, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(143, 30, 10, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(144, 31, 10, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(145, 15, 11, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(146, 16, 11, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(147, 17, 11, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(148, 18, 11, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(149, 19, 11, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(150, 20, 11, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(151, 21, 11, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(152, 22, 11, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(153, 23, 11, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(154, 24, 11, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(155, 25, 11, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(156, 26, 11, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(157, 27, 11, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(158, 28, 11, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(159, 29, 11, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(160, 30, 11, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40'),
(161, 31, 11, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40');

-- --------------------------------------------------------

--
-- Table structure for table `bravo_space_translations`
--

DROP TABLE IF EXISTS `bravo_space_translations`;
CREATE TABLE IF NOT EXISTS `bravo_space_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `faqs` text DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `surrounding` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bravo_space_translations_locale_index` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_terms`
--

DROP TABLE IF EXISTS `bravo_terms`;
CREATE TABLE IF NOT EXISTS `bravo_terms` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `attr_id` int(11) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_terms`
--

INSERT INTO `bravo_terms` (`id`, `name`, `content`, `attr_id`, `slug`, `create_user`, `update_user`, `origin_id`, `lang`, `created_at`, `updated_at`, `deleted_at`, `image_id`, `icon`) VALUES
(1, 'Cultural', NULL, 1, 'cultural', NULL, NULL, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38', NULL, NULL, NULL),
(2, 'Nature & Adventure', NULL, 1, 'nature-adventure', NULL, NULL, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38', NULL, NULL, NULL),
(3, 'Marine', NULL, 1, 'marine', NULL, NULL, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38', NULL, NULL, NULL),
(4, 'Independent', NULL, 1, 'independent', NULL, NULL, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38', NULL, NULL, NULL),
(5, 'Activities', NULL, 1, 'activities', NULL, NULL, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38', NULL, NULL, NULL),
(6, 'Festival & Events', NULL, 1, 'festival-events', NULL, NULL, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38', NULL, NULL, NULL),
(7, 'Special Interest', NULL, 1, 'special-interest', NULL, NULL, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38', NULL, NULL, NULL),
(8, 'Wifi', NULL, 2, 'wifi', NULL, NULL, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38', NULL, NULL, NULL),
(9, 'Gymnasium', NULL, 2, 'gymnasium', NULL, NULL, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38', NULL, NULL, NULL),
(10, 'Mountain Bike', NULL, 2, 'mountain-bike', NULL, NULL, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38', NULL, NULL, NULL),
(11, 'Satellite Office', NULL, 2, 'satellite-office', NULL, NULL, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38', NULL, NULL, NULL),
(12, 'Staff Lounge', NULL, 2, 'staff-lounge', NULL, NULL, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38', NULL, NULL, NULL),
(13, 'Golf Cages', NULL, 2, 'golf-cages', NULL, NULL, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38', NULL, NULL, NULL),
(14, 'Aerobics Room', NULL, 2, 'aerobics-room', NULL, NULL, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38', NULL, NULL, NULL),
(15, 'Auditorium', NULL, 3, 'auditorium', NULL, NULL, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39', NULL, NULL, NULL),
(16, 'Bar', NULL, 3, 'bar', NULL, NULL, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39', NULL, NULL, NULL),
(17, 'Cafe', NULL, 3, 'cafe', NULL, NULL, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39', NULL, NULL, NULL),
(18, 'Ballroom', NULL, 3, 'ballroom', NULL, NULL, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39', NULL, NULL, NULL),
(19, 'Dance Studio', NULL, 3, 'dance-studio', NULL, NULL, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39', NULL, NULL, NULL),
(20, 'Office', NULL, 3, 'office', NULL, NULL, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39', NULL, NULL, NULL),
(21, 'Party Hall', NULL, 3, 'party-hall', NULL, NULL, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39', NULL, NULL, NULL),
(22, 'Recording Studio', NULL, 3, 'recording-studio', NULL, NULL, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39', NULL, NULL, NULL),
(23, 'Yoga Studio', NULL, 3, 'yoga-studio', NULL, NULL, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39', NULL, NULL, NULL),
(24, 'Villa', NULL, 3, 'villa', NULL, NULL, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39', NULL, NULL, NULL),
(25, 'Warehouse', NULL, 3, 'warehouse', NULL, NULL, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39', NULL, NULL, NULL),
(26, 'Air Conditioning', NULL, 4, 'air-conditioning', NULL, NULL, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39', NULL, 86, NULL),
(27, 'Breakfast', NULL, 4, 'breakfast', NULL, NULL, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39', NULL, 87, NULL),
(28, 'Kitchen', NULL, 4, 'kitchen', NULL, NULL, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39', NULL, 88, NULL),
(29, 'Parking', NULL, 4, 'parking', NULL, NULL, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39', NULL, 89, NULL),
(30, 'Pool', NULL, 4, 'pool', NULL, NULL, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39', NULL, 90, NULL),
(31, 'Wi-Fi Internet', NULL, 4, 'wi-fi-internet', NULL, NULL, NULL, NULL, '2023-12-13 01:01:39', '2023-12-13 01:01:39', NULL, 91, NULL),
(32, 'Apartments', NULL, 5, 'apartments', NULL, NULL, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40', NULL, NULL, NULL),
(33, 'Hotels', NULL, 5, 'hotels', NULL, NULL, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40', NULL, NULL, NULL),
(34, 'Homestays', NULL, 5, 'homestays', NULL, NULL, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40', NULL, NULL, NULL),
(35, 'Villas', NULL, 5, 'villas', NULL, NULL, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40', NULL, NULL, NULL),
(36, 'Boats', NULL, 5, 'boats', NULL, NULL, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40', NULL, NULL, NULL),
(37, 'Motels', NULL, 5, 'motels', NULL, NULL, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40', NULL, NULL, NULL),
(38, 'Resorts', NULL, 5, 'resorts', NULL, NULL, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40', NULL, NULL, NULL),
(39, 'Lodges', NULL, 5, 'lodges', NULL, NULL, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40', NULL, NULL, NULL),
(40, 'Holiday homes', NULL, 5, 'holiday-homes', NULL, NULL, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40', NULL, NULL, NULL),
(41, 'Cruises', NULL, 5, 'cruises', NULL, NULL, NULL, NULL, '2023-12-13 01:01:40', '2023-12-13 01:01:40', NULL, NULL, NULL),
(42, 'Wake-up call', NULL, 6, 'wake-up-call', NULL, NULL, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41', NULL, NULL, 'icofont-wall-clock'),
(43, 'Car hire', NULL, 6, 'car-hire', NULL, NULL, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41', NULL, NULL, 'icofont-car-alt-3'),
(44, 'Bicycle hire', NULL, 6, 'bicycle-hire', NULL, NULL, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41', NULL, NULL, 'icofont-bicycle-alt-2'),
(45, 'Flat Tv', NULL, 6, 'flat-tv', NULL, NULL, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41', NULL, NULL, 'icofont-imac'),
(46, 'Laundry and dry cleaning', NULL, 6, 'laundry-and-dry-cleaning', NULL, NULL, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41', NULL, NULL, 'icofont-recycle-alt'),
(47, 'Internet – Wifi', NULL, 6, 'internet-wifi', NULL, NULL, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41', NULL, NULL, 'icofont-wifi-alt'),
(48, 'Coffee and tea', NULL, 6, 'coffee-and-tea', NULL, NULL, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41', NULL, NULL, 'icofont-tea'),
(49, 'Havana Lobby bar', NULL, 7, 'havana-lobby-bar', NULL, NULL, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41', NULL, NULL, NULL),
(50, 'Fiesta Restaurant', NULL, 7, 'fiesta-restaurant', NULL, NULL, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41', NULL, NULL, NULL),
(51, 'Hotel transport services', NULL, 7, 'hotel-transport-services', NULL, NULL, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41', NULL, NULL, NULL),
(52, 'Free luggage deposit', NULL, 7, 'free-luggage-deposit', NULL, NULL, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41', NULL, NULL, NULL),
(53, 'Laundry Services', NULL, 7, 'laundry-services', NULL, NULL, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41', NULL, NULL, NULL),
(54, 'Pets welcome', NULL, 7, 'pets-welcome', NULL, NULL, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41', NULL, NULL, NULL),
(55, 'Tickets', NULL, 7, 'tickets', NULL, NULL, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41', NULL, NULL, NULL),
(56, 'Wake-up call', NULL, 8, 'wake-up-call-1', NULL, NULL, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41', NULL, NULL, 'icofont-wall-clock'),
(57, 'Flat Tv', NULL, 8, 'flat-tv-1', NULL, NULL, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41', NULL, NULL, 'icofont-imac'),
(58, 'Laundry and dry cleaning', NULL, 8, 'laundry-and-dry-cleaning-1', NULL, NULL, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41', NULL, NULL, 'icofont-recycle-alt'),
(59, 'Internet – Wifi', NULL, 8, 'internet-wifi-1', NULL, NULL, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41', NULL, NULL, 'icofont-wifi-alt'),
(60, 'Coffee and tea', NULL, 8, 'coffee-and-tea-1', NULL, NULL, NULL, NULL, '2023-12-13 01:01:41', '2023-12-13 01:01:41', NULL, NULL, 'icofont-tea'),
(61, 'Convertibles', NULL, 9, 'convertibles', NULL, NULL, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43', NULL, 123, NULL),
(62, 'Coupes', NULL, 9, 'coupes', NULL, NULL, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43', NULL, 124, NULL),
(63, 'Hatchbacks', NULL, 9, 'hatchbacks', NULL, NULL, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43', NULL, 125, NULL),
(64, 'Minivans', NULL, 9, 'minivans', NULL, NULL, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43', NULL, 126, NULL),
(65, 'Sedan', NULL, 9, 'sedan', NULL, NULL, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43', NULL, 127, NULL),
(66, 'SUVs', NULL, 9, 'suvs', NULL, NULL, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43', NULL, 128, NULL),
(67, 'Trucks', NULL, 9, 'trucks', NULL, NULL, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43', NULL, 129, NULL),
(68, 'Wagons', NULL, 9, 'wagons', NULL, NULL, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43', NULL, 130, NULL),
(69, 'Airbag', NULL, 10, 'airbag', NULL, NULL, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43', NULL, 136, NULL),
(70, 'FM Radio', NULL, 10, 'fm-radio', NULL, NULL, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43', NULL, 137, NULL),
(71, 'Power Windows', NULL, 10, 'power-windows', NULL, NULL, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43', NULL, 141, NULL),
(72, 'Sensor', NULL, 10, 'sensor', NULL, NULL, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43', NULL, 138, NULL),
(73, 'Speed Km', NULL, 10, 'speed-km', NULL, NULL, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43', NULL, 139, NULL),
(74, 'Steering Wheel', NULL, 10, 'steering-wheel', NULL, NULL, NULL, NULL, '2023-12-13 01:01:43', '2023-12-13 01:01:43', NULL, 140, NULL),
(75, 'Field Day', NULL, 11, 'field-day', NULL, NULL, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44', NULL, NULL, NULL),
(76, 'Glastonbury', NULL, 11, 'glastonbury', NULL, NULL, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44', NULL, NULL, NULL),
(77, 'Green Man', NULL, 11, 'green-man', NULL, NULL, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44', NULL, NULL, NULL),
(78, 'Latitude', NULL, 11, 'latitude', NULL, NULL, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44', NULL, NULL, NULL),
(79, 'Boomtown', NULL, 11, 'boomtown', NULL, NULL, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44', NULL, NULL, NULL),
(80, 'Wilderness', NULL, 11, 'wilderness', NULL, NULL, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44', NULL, NULL, NULL),
(81, 'Exit Festival', NULL, 11, 'exit-festival', NULL, NULL, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44', NULL, NULL, NULL),
(82, 'Primavera Sound', NULL, 11, 'primavera-sound', NULL, NULL, NULL, NULL, '2023-12-13 01:01:44', '2023-12-13 01:01:44', NULL, NULL, NULL),
(83, 'Business', NULL, 12, 'business', NULL, NULL, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45', NULL, NULL, NULL),
(84, 'First Class', NULL, 12, 'first-class', NULL, NULL, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45', NULL, NULL, NULL),
(85, 'Economy', NULL, 12, 'economy', NULL, NULL, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45', NULL, NULL, NULL),
(86, 'Premium Economy', NULL, 12, 'premium-economy', NULL, NULL, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45', NULL, NULL, NULL),
(87, 'Inflight Dining', NULL, 13, 'inflight-dining', NULL, NULL, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45', NULL, NULL, NULL),
(88, 'Music', NULL, 13, 'music', NULL, NULL, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45', NULL, NULL, NULL),
(89, 'Sky Shopping', NULL, 13, 'sky-shopping', NULL, NULL, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45', NULL, NULL, NULL),
(90, 'Seats & Cabin', NULL, 13, 'seats-cabin', NULL, NULL, NULL, NULL, '2023-12-13 01:01:45', '2023-12-13 01:01:45', NULL, NULL, NULL),
(91, 'Airboat', NULL, 14, 'airboat', NULL, NULL, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49', NULL, NULL, NULL),
(92, 'Cabin cruiser', NULL, 14, 'cabin-cruiser', NULL, NULL, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49', NULL, NULL, NULL),
(93, 'Cruise ship', NULL, 14, 'cruise-ship', NULL, NULL, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49', NULL, NULL, NULL),
(94, 'Express cruiser', NULL, 14, 'express-cruiser', NULL, NULL, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49', NULL, NULL, NULL),
(95, 'Electric boat', NULL, 14, 'electric-boat', NULL, NULL, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49', NULL, NULL, NULL),
(96, 'Ferry', NULL, 14, 'ferry', NULL, NULL, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49', NULL, NULL, NULL),
(97, 'Inflatable boat', NULL, 14, 'inflatable-boat', NULL, NULL, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49', NULL, NULL, NULL),
(98, 'Jetboat', NULL, 14, 'jetboat', NULL, NULL, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49', NULL, NULL, NULL),
(99, 'Events and Meetings', NULL, 15, 'events-and-meetings', NULL, NULL, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49', NULL, NULL, NULL),
(100, 'Scuba Gear', NULL, 15, 'scuba-gear', NULL, NULL, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49', NULL, NULL, NULL),
(101, 'Hot Tub/Jacuzzi on Deck', NULL, 15, 'hot-tubjacuzzi-on-deck', NULL, NULL, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49', NULL, NULL, NULL),
(102, 'Sport Fishing', NULL, 15, 'sport-fishing', NULL, NULL, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49', NULL, NULL, NULL),
(103, 'Speciality Classic Yacht', NULL, 15, 'speciality-classic-yacht', NULL, NULL, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49', NULL, NULL, NULL),
(104, 'Gulet', NULL, 15, 'gulet', NULL, NULL, NULL, NULL, '2023-12-13 01:01:49', '2023-12-13 01:01:49', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bravo_terms_translations`
--

DROP TABLE IF EXISTS `bravo_terms_translations`;
CREATE TABLE IF NOT EXISTS `bravo_terms_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `origin_id` bigint(20) DEFAULT NULL,
  `locale` varchar(10) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bravo_terms_translations_origin_id_locale_unique` (`origin_id`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_tours`
--

DROP TABLE IF EXISTS `bravo_tours`;
CREATE TABLE IF NOT EXISTS `bravo_tours` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `content` text DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `banner_image_id` int(11) DEFAULT NULL,
  `short_desc` text DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `map_lat` varchar(20) DEFAULT NULL,
  `map_lng` varchar(20) DEFAULT NULL,
  `map_zoom` int(11) DEFAULT NULL,
  `is_featured` tinyint(4) DEFAULT NULL,
  `gallery` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `sale_price` decimal(12,2) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `min_people` int(11) DEFAULT NULL,
  `max_people` int(11) DEFAULT NULL,
  `faqs` text DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `default_state` tinyint(4) DEFAULT 1,
  `enable_fixed_date` tinyint(4) DEFAULT 0,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `last_booking_date` datetime DEFAULT NULL,
  `include` text DEFAULT NULL,
  `exclude` text DEFAULT NULL,
  `itinerary` text DEFAULT NULL,
  `review_score` decimal(2,1) DEFAULT NULL,
  `ical_import_url` varchar(191) DEFAULT NULL,
  `enable_service_fee` tinyint(4) DEFAULT NULL,
  `service_fee` text DEFAULT NULL,
  `surrounding` text DEFAULT NULL,
  `date_form_to` varchar(191) DEFAULT NULL,
  `min_age` varchar(191) DEFAULT NULL,
  `pickup` varchar(191) DEFAULT NULL,
  `wifi_available` tinyint(4) DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `min_day_before_booking` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bravo_tours_slug_index` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_tours`
--

INSERT INTO `bravo_tours` (`id`, `title`, `slug`, `content`, `image_id`, `banner_image_id`, `short_desc`, `category_id`, `location_id`, `address`, `map_lat`, `map_lng`, `map_zoom`, `is_featured`, `gallery`, `video`, `price`, `sale_price`, `duration`, `min_people`, `max_people`, `faqs`, `status`, `publish_date`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`, `default_state`, `enable_fixed_date`, `start_date`, `end_date`, `last_booking_date`, `include`, `exclude`, `itinerary`, `review_score`, `ical_import_url`, `enable_service_fee`, `service_fee`, `surrounding`, `date_form_to`, `min_age`, `pickup`, `wifi_available`, `author_id`, `min_day_before_booking`) VALUES
(1, 'American Parks Trail end Rapid City', 'american-parks-trail', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 21, 44, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 3, 1, 'Arrondissement de Paris', '48.852754', '2.339155', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2000.00', '577.00', 7, 1, 17, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:38', 1, 0, NULL, NULL, NULL, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '0.0', NULL, NULL, NULL, NULL, 'Jan 18’ - Dec 21’', '12+', 'Airpot', 1, 1, NULL),
(2, 'New York: Museum of Modern Art', 'new-york-museum-of-modern-art', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 22, 45, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 1, 1, 'Porte de Vanves', '48.853917', '2.307199', 12, 1, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '900.00', '130.00', 8, 1, 17, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:38', 1, 0, NULL, NULL, NULL, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '4.5', NULL, NULL, NULL, NULL, 'Jan 18’ - Dec 21’', '12+', 'Airpot', 1, 1, NULL),
(3, 'Los Angeles to San Francisco Express ', 'los-angeles-to-san-francisco-express', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 23, 46, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 4, 1, 'Petit-Montrouge', '48.884900', '2.346377', 12, 1, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '1500.00', '729.00', 5, 1, 15, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:38', 1, 0, NULL, NULL, NULL, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '5.0', NULL, NULL, NULL, NULL, 'Jan 18’ - Dec 21’', '12+', 'Airpot', 1, 2, NULL),
(4, 'Paris Vacation Travel ', 'paris-vacation-travel', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 24, 47, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 2, 2, 'New York', '40.707891', '-74.008825', 12, 1, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '850.00', '619.00', 4, 1, 18, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:38', 1, 0, NULL, NULL, NULL, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '5.0', NULL, NULL, NULL, NULL, 'Jan 18’ - Dec 21’', '12+', 'Airpot', 1, 1, NULL),
(5, 'Southwest States (Ex Los Angeles) ', 'southwest-states', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 25, 48, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 4, 2, 'Regal Cinemas Battery Park 11', '40.714578', '-73.983888', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '1900.00', '866.00', 5, 1, 18, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:38', 1, 0, NULL, NULL, NULL, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '4.3', NULL, NULL, NULL, NULL, 'Jan 18’ - Dec 21’', '12+', 'Airpot', 1, 2, NULL),
(6, 'Eastern Discovery (Start New Orleans)', 'eastern-discovery-start-new-orleans', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 26, 49, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 3, 2, 'Prince St Station', '40.720161', '-74.009628', 12, 1, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '941.00', 8, 1, 19, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:38', 1, 0, NULL, NULL, NULL, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '4.4', NULL, NULL, NULL, NULL, 'Jan 18’ - Dec 21’', '12+', 'Airpot', 1, 2, NULL),
(7, 'Eastern Discovery', 'eastern-discovery', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 27, 50, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 1, 2, 'Pier 36 New York', '40.708581', '-73.998817', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '153.00', 6, 1, 19, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:38', 1, 0, NULL, NULL, NULL, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '4.3', NULL, NULL, NULL, NULL, 'Jan 18’ - Dec 21’', '12+', 'Airpot', 1, 2, NULL),
(8, 'Pure Luxe in Punta Mita', 'pure-luxe-in-punta-mita', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 28, 51, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 1, 3, 'Trimmer Springs Rd, Sanger', '36.822484', '-119.365266', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '566.00', 8, 1, 19, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:38', 1, 0, NULL, NULL, NULL, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '4.5', NULL, NULL, NULL, NULL, 'Jan 18’ - Dec 21’', '12+', 'Airpot', 1, 2, NULL),
(9, 'Tastes and Sounds of the South 2019', 'tastes-and-sounds-of-the-south-2019', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 29, 52, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 4, 4, 'United States', '37.040023', '-95.643144', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '781.00', 9, 1, 11, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:38', 1, 0, NULL, NULL, NULL, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '4.7', NULL, NULL, NULL, NULL, 'Jan 18’ - Dec 21’', '12+', 'Airpot', 1, 2, NULL),
(10, 'Giverny and Versailles Small Group Day Trip', 'giverny-and-versailles-small-group-day-trip', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 30, 53, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 4, 5, 'Washington, DC, USA', '34.049345', '-118.248479', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '1799.00', 3, 1, 16, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:38', 1, 0, NULL, NULL, NULL, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '4.8', NULL, NULL, NULL, NULL, 'Jan 18’ - Dec 21’', '12+', 'Airpot', 1, 2, NULL),
(11, 'Trip of New York – Discover America', 'trip-of-new-york-discover-america', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 31, 54, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 1, 6, 'New Jersey', '40.035329', '-74.417227', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '358.00', 9, 1, 13, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:38', 1, 0, NULL, NULL, NULL, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '5.0', NULL, NULL, NULL, NULL, 'Jan 18’ - Dec 21’', '12+', 'Airpot', 1, 2, NULL);
INSERT INTO `bravo_tours` (`id`, `title`, `slug`, `content`, `image_id`, `banner_image_id`, `short_desc`, `category_id`, `location_id`, `address`, `map_lat`, `map_lng`, `map_zoom`, `is_featured`, `gallery`, `video`, `price`, `sale_price`, `duration`, `min_people`, `max_people`, `faqs`, `status`, `publish_date`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`, `default_state`, `enable_fixed_date`, `start_date`, `end_date`, `last_booking_date`, `include`, `exclude`, `itinerary`, `review_score`, `ical_import_url`, `enable_service_fee`, `service_fee`, `surrounding`, `date_form_to`, `min_age`, `pickup`, `wifi_available`, `author_id`, `min_day_before_booking`) VALUES
(12, 'Segway Tour of Washington, D.C. Highlights', 'segway-tour-of-washington-dc-highlights', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 32, 55, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 2, 7, 'Francisco Parnassus Campus', '37.782668', '-122.425058', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '358.00', 9, 1, 11, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:38', 1, 0, NULL, NULL, NULL, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '4.7', NULL, NULL, NULL, NULL, 'Jan 18’ - Dec 21’', '12+', 'Airpot', 1, 1, NULL),
(13, 'Hollywood Sign Small Group Tour in Luxury Van', 'hollywood-sign-small-group-tour-in-luxury-van', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 33, 56, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 2, 8, 'Virginia', '37.445688', '-78.673668', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '1702.00', 2, 1, 13, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:38', 1, 0, NULL, NULL, NULL, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '4.8', NULL, NULL, NULL, NULL, 'Jan 18’ - Dec 21’', '12+', 'Airpot', 1, 2, NULL),
(14, 'San Francisco Express Never Ceases', 'san-francisco-express', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 34, 57, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 2, 7, 'Comprehensive Cancer Center', '37.757522', '-122.447984', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '783.00', 2, 1, 13, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:39', 1, 0, NULL, NULL, NULL, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '4.4', NULL, NULL, NULL, NULL, 'Jan 18’ - Dec 21’', '12+', 'Airpot', 1, 1, NULL),
(15, 'Cannes and Antibes Night Tour', 'cannes-and-antibes-night-tour', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 35, 58, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 3, 1, 'UCSF Helen Diller Family', '36.201066', '-88.112292', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '286.00', 7, 1, 13, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:39', 1, 0, NULL, NULL, NULL, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '4.3', NULL, NULL, NULL, NULL, 'Jan 18’ - Dec 21’', '12+', 'Airpot', 1, 2, NULL),
(16, 'River Cruise Tour on the Seine', 'river-cruise-tour-on-the-seine', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 36, 59, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 4, 1, 'Nevada, US', '36.401066', '-88.312292', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '700.00', 1, 1, 17, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'publish', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:39', 1, 0, NULL, NULL, NULL, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '4.0', NULL, NULL, NULL, NULL, 'Jan 18’ - Dec 21’', '12+', 'Airpot', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bravo_tour_category`
--

DROP TABLE IF EXISTS `bravo_tour_category`;
CREATE TABLE IF NOT EXISTS `bravo_tour_category` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `_lft` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `_rgt` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bravo_tour_category__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_tour_category`
--

INSERT INTO `bravo_tour_category` (`id`, `name`, `content`, `slug`, `status`, `_lft`, `_rgt`, `parent_id`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'City trips', '', 'city-trips', 'publish', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(2, 'Ecotourism', '', 'ecotourism', 'publish', 3, 4, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(3, 'Escorted tour', '', 'escorted-tour', 'publish', 5, 6, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(4, 'Ligula', '', 'ligula', 'publish', 7, 8, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37');

-- --------------------------------------------------------

--
-- Table structure for table `bravo_tour_category_translations`
--

DROP TABLE IF EXISTS `bravo_tour_category_translations`;
CREATE TABLE IF NOT EXISTS `bravo_tour_category_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `origin_id` bigint(20) DEFAULT NULL,
  `locale` varchar(10) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bravo_tour_category_translations_origin_id_locale_unique` (`origin_id`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_tour_dates`
--

DROP TABLE IF EXISTS `bravo_tour_dates`;
CREATE TABLE IF NOT EXISTS `bravo_tour_dates` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `target_id` bigint(20) DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `person_types` text DEFAULT NULL,
  `max_guests` tinyint(4) DEFAULT NULL,
  `active` tinyint(4) DEFAULT 0,
  `note_to_customer` text DEFAULT NULL,
  `note_to_admin` text DEFAULT NULL,
  `is_instant` tinyint(4) DEFAULT 0,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_tour_meta`
--

DROP TABLE IF EXISTS `bravo_tour_meta`;
CREATE TABLE IF NOT EXISTS `bravo_tour_meta` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tour_id` int(11) DEFAULT NULL,
  `enable_person_types` tinyint(4) DEFAULT NULL,
  `person_types` text DEFAULT NULL,
  `enable_extra_price` tinyint(4) DEFAULT NULL,
  `extra_price` text DEFAULT NULL,
  `discount_by_people` text DEFAULT NULL,
  `enable_open_hours` tinyint(4) DEFAULT NULL,
  `open_hours` text DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_tour_meta`
--

INSERT INTO `bravo_tour_meta` (`id`, `tour_id`, `enable_person_types`, `person_types`, `enable_extra_price`, `extra_price`, `discount_by_people`, `enable_open_hours`, `open_hours`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 3, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 4, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 5, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 6, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 7, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 8, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 9, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 10, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 11, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 12, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 13, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 14, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 15, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 16, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bravo_tour_term`
--

DROP TABLE IF EXISTS `bravo_tour_term`;
CREATE TABLE IF NOT EXISTS `bravo_tour_term` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` int(11) DEFAULT NULL,
  `tour_id` int(11) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_tour_term`
--

INSERT INTO `bravo_tour_term` (`id`, `term_id`, `tour_id`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(2, 2, 1, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(3, 4, 1, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(4, 6, 1, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(5, 1, 2, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(6, 4, 2, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(7, 6, 2, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(8, 1, 3, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(9, 2, 3, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(10, 4, 3, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(11, 1, 4, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(12, 2, 4, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(13, 4, 4, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(14, 5, 4, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(15, 7, 4, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(16, 2, 5, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(17, 3, 5, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(18, 4, 5, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(19, 5, 5, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(20, 6, 5, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(21, 7, 5, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(22, 1, 6, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(23, 2, 6, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(24, 3, 6, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(25, 4, 6, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(26, 7, 6, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(27, 1, 7, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(28, 2, 7, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(29, 3, 7, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(30, 4, 7, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(31, 6, 7, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(32, 7, 7, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(33, 2, 8, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(34, 3, 8, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(35, 4, 8, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(36, 5, 8, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(37, 7, 8, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(38, 1, 9, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(39, 3, 9, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(40, 4, 9, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(41, 5, 9, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(42, 7, 9, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(43, 2, 10, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(44, 3, 10, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(45, 5, 10, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(46, 6, 10, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(47, 7, 10, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(48, 1, 11, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(49, 2, 11, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(50, 3, 11, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(51, 4, 11, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(52, 6, 11, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(53, 1, 12, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(54, 2, 12, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(55, 4, 12, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(56, 5, 12, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(57, 6, 12, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(58, 2, 13, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(59, 3, 13, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(60, 5, 13, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(61, 6, 13, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(62, 7, 13, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(63, 2, 14, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(64, 3, 14, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(65, 4, 14, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(66, 5, 14, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(67, 1, 15, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(68, 2, 15, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(69, 1, 16, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(70, 2, 16, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(71, 3, 16, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(72, 4, 16, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(73, 5, 16, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(74, 6, 16, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(75, 7, 16, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(76, 8, 1, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(77, 10, 1, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(78, 11, 1, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(79, 12, 1, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(80, 13, 1, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(81, 14, 1, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(82, 8, 2, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(83, 11, 2, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(84, 12, 2, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(85, 13, 2, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(86, 14, 2, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(87, 8, 3, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(88, 10, 3, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(89, 11, 3, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(90, 14, 3, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(91, 9, 4, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(92, 10, 4, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(93, 11, 4, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(94, 13, 4, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(95, 14, 4, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(96, 9, 5, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(97, 13, 5, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(98, 8, 6, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(99, 9, 6, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(100, 11, 6, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(101, 9, 7, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(102, 12, 7, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(103, 14, 7, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(104, 8, 8, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(105, 9, 8, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(106, 10, 8, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(107, 14, 8, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(108, 9, 9, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(109, 10, 9, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(110, 11, 9, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(111, 12, 9, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(112, 13, 9, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(113, 14, 9, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(114, 8, 10, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(115, 9, 10, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(116, 10, 10, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(117, 11, 10, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(118, 12, 10, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(119, 13, 10, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(120, 14, 10, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(121, 8, 11, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(122, 9, 11, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(123, 10, 11, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(124, 11, 11, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(125, 12, 11, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(126, 13, 11, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(127, 14, 11, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(128, 9, 12, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(129, 10, 12, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(130, 11, 12, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(131, 12, 12, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(132, 13, 12, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(133, 14, 12, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(134, 8, 13, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(135, 10, 13, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(136, 12, 13, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(137, 8, 14, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(138, 9, 14, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(139, 10, 14, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(140, 13, 14, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(141, 14, 14, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(142, 13, 15, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(143, 14, 15, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(144, 8, 16, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(145, 9, 16, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(146, 10, 16, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(147, 12, 16, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38'),
(148, 14, 16, NULL, NULL, '2023-12-13 01:01:38', '2023-12-13 01:01:38');

-- --------------------------------------------------------

--
-- Table structure for table `bravo_tour_translations`
--

DROP TABLE IF EXISTS `bravo_tour_translations`;
CREATE TABLE IF NOT EXISTS `bravo_tour_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `origin_id` bigint(20) DEFAULT NULL,
  `locale` varchar(10) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `content` text DEFAULT NULL,
  `short_desc` text DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `faqs` text DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `include` text DEFAULT NULL,
  `exclude` text DEFAULT NULL,
  `itinerary` text DEFAULT NULL,
  `surrounding` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bravo_tour_translations_origin_id_locale_unique` (`origin_id`,`locale`),
  KEY `bravo_tour_translations_slug_index` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_user_plan`
--

DROP TABLE IF EXISTS `bravo_user_plan`;
CREATE TABLE IF NOT EXISTS `bravo_user_plan` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `plan_id` bigint(20) NOT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `max_service` int(11) DEFAULT 0,
  `price` decimal(12,2) DEFAULT NULL,
  `plan_data` text DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `user_id` bigint(20) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ch_favorites`
--

DROP TABLE IF EXISTS `ch_favorites`;
CREATE TABLE IF NOT EXISTS `ch_favorites` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `favorite_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ch_messages`
--

DROP TABLE IF EXISTS `ch_messages`;
CREATE TABLE IF NOT EXISTS `ch_messages` (
  `id` bigint(20) NOT NULL,
  `type` varchar(191) NOT NULL,
  `from_id` bigint(20) NOT NULL,
  `to_id` bigint(20) NOT NULL,
  `body` varchar(5000) DEFAULT NULL,
  `attachment` varchar(191) DEFAULT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_inbox`
--

DROP TABLE IF EXISTS `core_inbox`;
CREATE TABLE IF NOT EXISTS `core_inbox` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `from_user` bigint(20) DEFAULT NULL,
  `to_user` bigint(20) DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_model` varchar(50) DEFAULT NULL,
  `type` tinyint(4) DEFAULT 0,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_inbox_messages`
--

DROP TABLE IF EXISTS `core_inbox_messages`;
CREATE TABLE IF NOT EXISTS `core_inbox_messages` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `inbox_id` bigint(20) DEFAULT NULL,
  `from_user` bigint(20) DEFAULT NULL,
  `to_user` bigint(20) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `type` tinyint(4) DEFAULT 0,
  `is_read` tinyint(4) DEFAULT 0,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_languages`
--

DROP TABLE IF EXISTS `core_languages`;
CREATE TABLE IF NOT EXISTS `core_languages` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `locale` varchar(10) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `flag` varchar(255) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `last_build_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_languages`
--

INSERT INTO `core_languages` (`id`, `locale`, `name`, `flag`, `status`, `create_user`, `update_user`, `last_build_at`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'en', 'English', 'gb', 'publish', 1, NULL, NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(2, 'ja', 'Japanese', 'jp', 'publish', 1, NULL, NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(3, 'egy', 'Egyptian', 'eg', 'publish', 1, NULL, NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36');

-- --------------------------------------------------------

--
-- Table structure for table `core_menus`
--

DROP TABLE IF EXISTS `core_menus`;
CREATE TABLE IF NOT EXISTS `core_menus` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `items` longtext DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_menus`
--

INSERT INTO `core_menus` (`id`, `name`, `items`, `create_user`, `update_user`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'Main Menu', '[{\"name\":\"Home\",\"url\":\"\\/\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"Home Page\",\"url\":\"\\/\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"Home v2\",\"url\":\"\\/page\\/home-v2\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"Home Hotel\",\"url\":\"\\/page\\/home-hotel\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"Home Tour\",\"url\":\"\\/page\\/home-tour\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"Home Space\",\"url\":\"\\/page\\/home-space\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"Home Event\",\"url\":\"\\/page\\/home-event\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"Home Car\",\"url\":\"\\/page\\/home-car\",\"item_model\":\"custom\",\"children\":[]}]},{\"name\":\"Hotel\",\"url\":\"\\/hotel\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"Hotel List\",\"url\":\"\\/hotel\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Hotel Map\",\"url\":\"\\/hotel?_layout=map\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Hotel Detail\",\"url\":\"\\/hotel\\/parian-holiday-villas\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"Tours\",\"url\":\"\\/tour\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"Tour List\",\"url\":\"\\/tour\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Tour Map\",\"url\":\"\\/tour?_layout=map\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Tour Detail\",\"url\":\"\\/tour\\/paris-vacation-travel\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"Space\",\"url\":\"\\/space\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"Space List\",\"url\":\"\\/space\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Space Map\",\"url\":\"\\/space?_layout=map\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Space Detail\",\"url\":\"\\/space\\/stay-greenwich-village\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"Car\",\"url\":\"\\/car\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"Car List\",\"url\":\"\\/car\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Car Map\",\"url\":\"\\/car?_layout=map\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Car Detail\",\"url\":\"\\/car\\/vinfast-lux-a20-plus\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"Event\",\"url\":\"\\/event\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"Event List\",\"url\":\"\\/event\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Event Map\",\"url\":\"\\/event?_layout=map\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Event Detail\",\"url\":\"\\/event\\/aspen-glade-weddings-events\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"Flight\",\"url\":\"\\/flight\",\"item_model\":\"custom\",\"model_name\":\"Custom\"},{\"name\":\"Boat\",\"url\":\"\\/boat\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"Boat List\",\"url\":\"\\/boat\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Boat Map\",\"url\":\"\\/boat?_layout=map\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Boat Detail\",\"url\":\"\\/boat\\/blue-moon-yc-300\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"Pages\",\"url\":\"#\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"Plan\",\"url\":\"\\/plan\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"News List\",\"url\":\"\\/news\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"News Detail\",\"url\":\"\\/news\\/morning-in-the-northern-sea\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Location Detail\",\"url\":\"\\/location\\/paris\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"Become a vendor\",\"url\":\"\\/page\\/become-a-vendor\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"Contact\",\"url\":\"\\/contact\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]}]', 1, NULL, NULL, NULL, '2023-12-13 01:01:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `core_menu_translations`
--

DROP TABLE IF EXISTS `core_menu_translations`;
CREATE TABLE IF NOT EXISTS `core_menu_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) NOT NULL,
  `items` longtext DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `core_menu_translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_menu_translations`
--

INSERT INTO `core_menu_translations` (`id`, `origin_id`, `locale`, `items`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 1, 'ja', '[{\"name\":\"Home\",\"url\":\"\\/\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"Home Page\",\"url\":\"\\/\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"Home v2\",\"url\":\"\\/page\\/home-v2\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"Home Hotel\",\"url\":\"\\/page\\/home-hotel\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"Home Tour\",\"url\":\"\\/page\\/home-tour\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"Home Space\",\"url\":\"\\/page\\/home-space\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"Home Event\",\"url\":\"\\/page\\/home-event\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"Home Car\",\"url\":\"\\/page\\/home-car\",\"item_model\":\"custom\",\"children\":[]}]},{\"name\":\"Hotel\",\"url\":\"\\/ja\\/hotel\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"Hotel List\",\"url\":\"\\/ja\\/hotel\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Hotel Map\",\"url\":\"\\/ja\\/hotel?_layout=map\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Hotel Detail\",\"url\":\"\\/ja\\/hotel\\/parian-holiday-villas\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"Tours\",\"url\":\"\\/ja\\/tour\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"Tour List\",\"url\":\"\\/ja\\/tour\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Tour Map\",\"url\":\"\\/ja\\/tour?_layout=map\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Tour Detail\",\"url\":\"\\/ja\\/tour\\/paris-vacation-travel\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"Space\",\"url\":\"\\/ja\\/space\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"Space List\",\"url\":\"\\/ja\\/space\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Space Map\",\"url\":\"\\/ja\\/space?_layout=map\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Space Detail\",\"url\":\"\\/ja\\/space\\/stay-greenwich-village\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"Car\",\"url\":\"\\/ja\\/car\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"Car List\",\"url\":\"\\/ja\\/car\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Car Map\",\"url\":\"\\/ja\\/car?_layout=map\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Car Detail\",\"url\":\"\\/ja\\/car\\/vinfast-lux-a20-plus\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"Event\",\"url\":\"\\/ja\\/event\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"Event List\",\"url\":\"\\/ja\\/event\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Event Map\",\"url\":\"\\/ja\\/event?_layout=map\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Event Detail\",\"url\":\"\\/ja\\/event\\/aspen-glade-weddings-events\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"Flight\",\"url\":\"\\/ja\\/flight\",\"item_model\":\"custom\",\"model_name\":\"Custom\"},{\"name\":\"Boat\",\"url\":\"\\/ja\\/boat\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"Boat List\",\"url\":\"\\/ja\\/boat\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Boat Map\",\"url\":\"\\/ja\\/boat?_layout=map\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Boat Detail\",\"url\":\"\\/ja\\/boat\\/blue-moon-yc-300\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"Pages\",\"url\":\"#\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"Plan\",\"url\":\"\\/ja\\/plan\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"News List\",\"url\":\"\\/ja\\/news\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"News Detail\",\"url\":\"\\/ja\\/news\\/morning-in-the-northern-sea\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Location Detail\",\"url\":\"\\/ja\\/location\\/paris\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"Become a vendor\",\"url\":\"\\/ja\\/page\\/become-a-vendor\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"Contact\",\"url\":\"\\/ja\\/contact\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]}]', 1, NULL, '2023-12-13 01:01:36', NULL),
(2, 1, 'egy', '[{\"name\":\"Home\",\"url\":\"\\/\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"Home Page\",\"url\":\"\\/\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"Home v2\",\"url\":\"\\/page\\/home-v2\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"Home Hotel\",\"url\":\"\\/page\\/home-hotel\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"Home Tour\",\"url\":\"\\/page\\/home-tour\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"Home Space\",\"url\":\"\\/page\\/home-space\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"Home Event\",\"url\":\"\\/page\\/home-event\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"Home Car\",\"url\":\"\\/page\\/home-car\",\"item_model\":\"custom\",\"children\":[]}]},{\"name\":\"Hotel\",\"url\":\"\\/egy\\/hotel\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"Hotel List\",\"url\":\"\\/egy\\/hotel\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Hotel Map\",\"url\":\"\\/egy\\/hotel?_layout=map\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Hotel Detail\",\"url\":\"\\/egy\\/hotel\\/parian-holiday-villas\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"Tours\",\"url\":\"\\/egy\\/tour\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"Tour List\",\"url\":\"\\/egy\\/tour\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Tour Map\",\"url\":\"\\/egy\\/tour?_layout=map\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Tour Detail\",\"url\":\"\\/egy\\/tour\\/paris-vacation-travel\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"Space\",\"url\":\"\\/egy\\/space\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"Space List\",\"url\":\"\\/egy\\/space\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Space Map\",\"url\":\"\\/egy\\/space?_layout=map\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Space Detail\",\"url\":\"\\/egy\\/space\\/stay-greenwich-village\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"Car\",\"url\":\"\\/egy\\/car\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"Car List\",\"url\":\"\\/egy\\/car\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Car Map\",\"url\":\"\\/egy\\/car?_layout=map\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Car Detail\",\"url\":\"\\/egy\\/car\\/vinfast-lux-a20-plus\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"Event\",\"url\":\"\\/egy\\/event\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"Event List\",\"url\":\"\\/egy\\/event\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Event Map\",\"url\":\"\\/egy\\/event?_layout=map\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Event Detail\",\"url\":\"\\/egy\\/event\\/aspen-glade-weddings-events\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"Flight\",\"url\":\"\\/egy\\/flight\",\"item_model\":\"custom\",\"model_name\":\"Custom\"},{\"name\":\"Boat\",\"url\":\"\\/egy\\/boat\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"Boat List\",\"url\":\"\\/egy\\/boat\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Boat Map\",\"url\":\"\\/egy\\/boat?_layout=map\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Boat Detail\",\"url\":\"\\/egy\\/boat\\/blue-moon-yc-300\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"Pages\",\"url\":\"#\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"Plan\",\"url\":\"\\/egy\\/plan\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"News List\",\"url\":\"\\/egy\\/news\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"News Detail\",\"url\":\"\\/egy\\/news\\/morning-in-the-northern-sea\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Location Detail\",\"url\":\"\\/egy\\/location\\/paris\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"Become a vendor\",\"url\":\"\\/egy\\/page\\/become-a-vendor\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"Contact\",\"url\":\"\\/egy\\/contact\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]}]', 1, NULL, '2023-12-13 01:01:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `core_news`
--

DROP TABLE IF EXISTS `core_news`;
CREATE TABLE IF NOT EXISTS `core_news` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_news`
--

INSERT INTO `core_news` (`id`, `title`, `content`, `slug`, `status`, `cat_id`, `image_id`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`, `author_id`) VALUES
(1, 'The day on Paris', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception  From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'the-day-on-paris', 'publish', 1, 114, 1, NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', NULL, 1),
(2, 'Pure Luxe in Punta Mita', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'pure-luxe-in-punta-mita', 'publish', 4, 115, 1, NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', NULL, 1),
(3, 'All Aboard the Rocky Mountaineer', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception  From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'all-aboard-the-rocky-mountaineer', 'publish', 1, 116, 1, NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', NULL, 1),
(4, 'City Spotlight: Philadelphia', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception  From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'city-spotlight-philadelphia', 'publish', 1, 117, 1, NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', NULL, 1),
(5, 'Tiptoe through the Tulips of Washington', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception  From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'tiptoe-through-the-tulips-of-washington', 'publish', 4, 118, 1, NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', NULL, 1),
(6, 'A Seaside Reset in Laguna Beach', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception  From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'a-seaside-reset-in-laguna-beach', 'publish', 2, 119, 1, NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', NULL, 1),
(7, 'America  National Parks with Denver', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception  From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'america-national-parks-with-denver', 'publish', 1, 120, 1, NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', NULL, 1),
(8, 'Morning in the Northern sea', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception  From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'morning-in-the-northern-sea', 'publish', 2, 115, 1, NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `core_news_category`
--

DROP TABLE IF EXISTS `core_news_category`;
CREATE TABLE IF NOT EXISTS `core_news_category` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `_lft` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `_rgt` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `core_news_category__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_news_category`
--

INSERT INTO `core_news_category` (`id`, `name`, `content`, `slug`, `status`, `_lft`, `_rgt`, `parent_id`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`, `origin_id`, `lang`) VALUES
(1, 'Adventure Travel', NULL, 'adventure-travel', 'publish', 1, 2, NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37', NULL, NULL),
(2, 'Ecotourism', NULL, 'ecotourism', 'publish', 3, 4, NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37', NULL, NULL),
(3, 'Sea Travel ', NULL, 'sea-travel', 'publish', 5, 6, NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37', NULL, NULL),
(4, 'Hosted Tour', NULL, 'hosted-tour', 'publish', 7, 8, NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37', NULL, NULL),
(5, 'City trips ', NULL, 'city-trips', 'publish', 9, 10, NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37', NULL, NULL),
(6, 'Escorted Tour ', NULL, 'escorted-tour', 'publish', 11, 12, NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `core_news_category_translations`
--

DROP TABLE IF EXISTS `core_news_category_translations`;
CREATE TABLE IF NOT EXISTS `core_news_category_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `core_news_category_translations_locale_index` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_news_tag`
--

DROP TABLE IF EXISTS `core_news_tag`;
CREATE TABLE IF NOT EXISTS `core_news_tag` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `news_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_news_translations`
--

DROP TABLE IF EXISTS `core_news_translations`;
CREATE TABLE IF NOT EXISTS `core_news_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `core_news_translations_locale_index` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_notifications`
--

DROP TABLE IF EXISTS `core_notifications`;
CREATE TABLE IF NOT EXISTS `core_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `from_user` bigint(20) DEFAULT NULL,
  `to_user` bigint(20) DEFAULT NULL,
  `is_read` tinyint(4) DEFAULT 0,
  `type` varchar(50) DEFAULT NULL,
  `type_group` varchar(50) DEFAULT NULL,
  `target_id` bigint(20) DEFAULT NULL,
  `target_parent_id` bigint(20) DEFAULT NULL,
  `params` text DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_pages`
--

DROP TABLE IF EXISTS `core_pages`;
CREATE TABLE IF NOT EXISTS `core_pages` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `short_desc` text DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `template_id` int(11) DEFAULT NULL,
  `show_template` tinyint(4) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `header_style` varchar(255) DEFAULT NULL,
  `custom_logo` int(11) DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `core_pages_slug_index` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_pages`
--

INSERT INTO `core_pages` (`id`, `slug`, `title`, `content`, `short_desc`, `status`, `publish_date`, `image_id`, `template_id`, `show_template`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`, `header_style`, `custom_logo`, `author_id`) VALUES
(1, 'home-page', 'Home Page', NULL, NULL, 'publish', NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', NULL, NULL, NULL, 1),
(2, 'become-a-vendor', 'Become a vendor', NULL, NULL, 'publish', NULL, NULL, 2, NULL, 1, NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', NULL, 'transparent', NULL, 1),
(3, 'home-hotel', 'Home Hotel', NULL, NULL, 'publish', NULL, NULL, 3, NULL, 1, NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', NULL, 'transparent', NULL, 1),
(4, 'home-tour', 'Home Tour', NULL, NULL, 'publish', NULL, NULL, 4, NULL, 1, NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', NULL, NULL, NULL, 1),
(5, 'home-space', 'Home Space', NULL, NULL, 'publish', NULL, NULL, 5, NULL, 1, NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', NULL, 'transparent', NULL, 1),
(6, 'home-event', 'Home Event', NULL, NULL, 'publish', NULL, NULL, 6, NULL, 1, NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', NULL, 'transparent', NULL, 1),
(7, 'home-car', 'Home Car', NULL, NULL, 'publish', NULL, NULL, 7, NULL, 1, NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', NULL, 'transparent', NULL, 1),
(8, 'home-v2', 'Home v2', NULL, NULL, 'publish', NULL, NULL, 8, NULL, 1, NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', NULL, 'transparent', NULL, 1),
(9, 'privacy-policy', 'Privacy policy', '<h1>Privacy policy</h1>\r\n<p> This privacy policy (\"Policy\") describes how the personally identifiable information (\"Personal Information\") you may provide on the <a target=\"_blank\" href=\"http://mytravel.test\" rel=\"noreferrer noopener\">mytravel.test</a> website (\"Website\" or \"Service\") and any of its related products and services (collectively, \"Services\") is collected, protected and used. It also describes the choices available to you regarding our use of your Personal Information and how you can access and update this information. This Policy is a legally binding agreement between you (\"User\", \"you\" or \"your\") and this Website operator (\"Operator\", \"we\", \"us\" or \"our\"). By accessing and using the Website and Services, you acknowledge that you have read, understood, and agree to be bound by the terms of this Agreement. This Policy does not apply to the practices of companies that we do not own or control, or to individuals that we do not employ or manage.</p>\r\n<h2>Automatic collection of information</h2>\r\n<p>When you open the Website, our servers automatically record information that your browser sends. This data may include information such as your device\'s IP address, browser type and version, operating system type and version, language preferences or the webpage you were visiting before you came to the Website and Services, pages of the Website and Services that you visit, the time spent on those pages, information you search for on the Website, access times and dates, and other statistics.</p>\r\n<p>Information collected automatically is used only to identify potential cases of abuse and establish statistical information regarding the usage and traffic of the Website and Services. This statistical information is not otherwise aggregated in such a way that would identify any particular user of the system.</p>\r\n<h2>Collection of personal information</h2>\r\n<p>You can access and use the Website and Services without telling us who you are or revealing any information by which someone could identify you as a specific, identifiable individual. If, however, you wish to use some of the features on the Website, you may be asked to provide certain Personal Information (for example, your name and e-mail address). We receive and store any information you knowingly provide to us when you create an account, publish content,  or fill any online forms on the Website. When required, this information may include the following:</p>\r\n<ul>\r\n<li>Personal details such as name, country of residence, etc.</li>\r\n<li>Contact information such as email address, address, etc.</li>\r\n<li>Account details such as user name, unique user ID, password, etc.</li>\r\n<li>Information about other individuals such as your family members, friends, etc.</li>\r\n</ul>\r\n<p>Some of the information we collect is directly from you via the Website and Services. However, we may also collect Personal Information about you from other sources such as public databases and our joint marketing partners. You can choose not to provide us with your Personal Information, but then you may not be able to take advantage of some of the features on the Website. Users who are uncertain about what information is mandatory are welcome to contact us.</p>\r\n<h2>Use and processing of collected information</h2>\r\n<p>In order to make the Website and Services available to you, or to meet a legal obligation, we need to collect and use certain Personal Information. If you do not provide the information that we request, we may not be able to provide you with the requested products or services. Any of the information we collect from you may be used for the following purposes:</p>\r\n<ul>\r\n<li>Create and manage user accounts</li>\r\n<li>Send administrative information</li>\r\n<li>Request user feedback</li>\r\n<li>Improve user experience</li>\r\n<li>Enforce terms and conditions and policies</li>\r\n<li>Run and operate the Website and Services</li>\r\n</ul>\r\n<p>Processing your Personal Information depends on how you interact with the Website and Services, where you are located in the world and if one of the following applies: (i) you have given your consent for one or more specific purposes; this, however, does not apply, whenever the processing of Personal Information is subject to European data protection law; (ii) provision of information is necessary for the performance of an agreement with you and/or for any pre-contractual obligations thereof; (iii) processing is necessary for compliance with a legal obligation to which you are subject; (iv) processing is related to a task that is carried out in the public interest or in the exercise of official authority vested in us; (v) processing is necessary for the purposes of the legitimate interests pursued by us or by a third party.</p>\r\n<p> Note that under some legislations we may be allowed to process information until you object to such processing (by opting out), without having to rely on consent or any other of the following legal bases below. In any case, we will be happy to clarify the specific legal basis that applies to the processing, and in particular whether the provision of Personal Information is a statutory or contractual requirement, or a requirement necessary to enter into a contract.</p>\r\n<h2>Managing information</h2>\r\n<p>You are able to delete certain Personal Information we have about you. The Personal Information you can delete may change as the Website and Services change. When you delete Personal Information, however, we may maintain a copy of the unrevised Personal Information in our records for the duration necessary to comply with our obligations to our affiliates and partners, and for the purposes described below. If you would like to delete your Personal Information or permanently delete your account, you can do so by contacting us.</p>\r\n<h2>Disclosure of information</h2>\r\n<p> Depending on the requested Services or as necessary to complete any transaction or provide any service you have requested, we may share your information with your consent with our trusted third parties that work with us, any other affiliates and subsidiaries we rely upon to assist in the operation of the Website and Services available to you. We do not share Personal Information with unaffiliated third parties. These service providers are not authorized to use or disclose your information except as necessary to perform services on our behalf or comply with legal requirements. We may share your Personal Information for these purposes only with third parties whose privacy policies are consistent with ours or who agree to abide by our policies with respect to Personal Information. These third parties are given Personal Information they need only in order to perform their designated functions, and we do not authorize them to use or disclose Personal Information for their own marketing or other purposes.</p>\r\n<p>We will disclose any Personal Information we collect, use or receive if required or permitted by law, such as to comply with a subpoena, or similar legal process, and when we believe in good faith that disclosure is necessary to protect our rights, protect your safety or the safety of others, investigate fraud, or respond to a government request.</p>\r\n<h2>Retention of information</h2>\r\n<p>We will retain and use your Personal Information for the period necessary to comply with our legal obligations, resolve disputes, and enforce our agreements unless a longer retention period is required or permitted by law. We may use any aggregated data derived from or incorporating your Personal Information after you update or delete it, but not in a manner that would identify you personally. Once the retention period expires, Personal Information shall be deleted. Therefore, the right to access, the right to erasure, the right to rectification and the right to data portability cannot be enforced after the expiration of the retention period.</p>\r\n<h2>The rights of users</h2>\r\n<p>You may exercise certain rights regarding your information processed by us. In particular, you have the right to do the following: (i) you have the right to withdraw consent where you have previously given your consent to the processing of your information; (ii) you have the right to object to the processing of your information if the processing is carried out on a legal basis other than consent; (iii) you have the right to learn if information is being processed by us, obtain disclosure regarding certain aspects of the processing and obtain a copy of the information undergoing processing; (iv) you have the right to verify the accuracy of your information and ask for it to be updated or corrected; (v) you have the right, under certain circumstances, to restrict the processing of your information, in which case, we will not process your information for any purpose other than storing it; (vi) you have the right, under certain circumstances, to obtain the erasure of your Personal Information from us; (vii) you have the right to receive your information in a structured, commonly used and machine readable format and, if technically feasible, to have it transmitted to another controller without any hindrance. This provision is applicable provided that your information is processed by automated means and that the processing is based on your consent, on a contract which you are part of or on pre-contractual obligations thereof.</p>\r\n<h2>Privacy of children</h2>\r\n<p>We do not knowingly collect any Personal Information from children under the age of 18. If you are under the age of 18, please do not submit any Personal Information through the Website and Services. We encourage parents and legal guardians to monitor their children\'s Internet usage and to help enforce this Policy by instructing their children never to provide Personal Information through the Website and Services without their permission. If you have reason to believe that a child under the age of 18 has provided Personal Information to us through the Website and Services, please contact us. You must also be old enough to consent to the processing of your Personal Information in your country (in some countries we may allow your parent or guardian to do so on your behalf).</p>\r\n<h2>Cookies</h2>\r\n<p>The Website and Services use \"cookies\" to help personalize your online experience. A cookie is a text file that is placed on your hard disk by a web page server. Cookies cannot be used to run programs or deliver viruses to your computer. Cookies are uniquely assigned to you, and can only be read by a web server in the domain that issued the cookie to you.</p>\r\n<p>We may use cookies to collect, store, and track information for statistical purposes to operate the Website and Services. You have the ability to accept or decline cookies. Most web browsers automatically accept cookies, but you can usually modify your browser setting to decline cookies if you prefer. To learn more about cookies and how to manage them, visit <a target=\"_blank\" href=\"https://www.internetcookies.org\" rel=\"noreferrer noopener\">internetcookies.org</a></p>\r\n<h2>Do Not Track signals</h2>\r\n<p>Some browsers incorporate a Do Not Track feature that signals to websites you visit that you do not want to have your online activity tracked. Tracking is not the same as using or collecting information in connection with a website. For these purposes, tracking refers to collecting personally identifiable information from consumers who use or visit a website or online service as they move across different websites over time. How browsers communicate the Do Not Track signal is not yet uniform. As a result, the Website and Services are not yet set up to interpret or respond to Do Not Track signals communicated by your browser. Even so, as described in more detail throughout this Policy, we limit our use and collection of your personal information.</p>\r\n<h2>Email marketing</h2>\r\n<p>We offer electronic newsletters to which you may voluntarily subscribe at any time. We are committed to keeping your e-mail address confidential and will not disclose your email address to any third parties except as allowed in the information use and processing section or for the purposes of utilizing a third party provider to send such emails. We will maintain the information sent via e-mail in accordance with applicable laws and regulations.</p>\r\n<p>In compliance with the CAN-SPAM Act, all e-mails sent from us will clearly state who the e-mail is from and provide clear information on how to contact the sender. You may choose to stop receiving our newsletter or marketing emails by following the unsubscribe instructions included in these emails or by contacting us. However, you will continue to receive essential transactional emails.</p>\r\n<h2>Links to other resources</h2>\r\n<p>The Website and Services contain links to other resources that are not owned or controlled by us. Please be aware that we are not responsible for the privacy practices of such other resources or third parties. We encourage you to be aware when you leave the Website and Services and to read the privacy statements of each and every resource that may collect Personal Information.</p>\r\n<h2>Information security</h2>\r\n<p>We secure information you provide on computer servers in a controlled, secure environment, protected from unauthorized access, use, or disclosure. We maintain reasonable administrative, technical, and physical safeguards in an effort to protect against unauthorized access, use, modification, and disclosure of Personal Information in its control and custody. However, no data transmission over the Internet or wireless network can be guaranteed. Therefore, while we strive to protect your Personal Information, you acknowledge that (i) there are security and privacy limitations of the Internet which are beyond our control; (ii) the security, integrity, and privacy of any and all information and data exchanged between you and the Website and Services cannot be guaranteed; and (iii) any such information and data may be viewed or tampered with in transit by a third party, despite best efforts.</p>\r\n<h2>Data breach</h2>\r\n<p>In the event we become aware that the security of the Website and Services has been compromised or users Personal Information has been disclosed to unrelated third parties as a result of external activity, including, but not limited to, security attacks or fraud, we reserve the right to take reasonably appropriate measures, including, but not limited to, investigation and reporting, as well as notification to and cooperation with law enforcement authorities. In the event of a data breach, we will make reasonable efforts to notify affected individuals if we believe that there is a reasonable risk of harm to the user as a result of the breach or if notice is otherwise required by law. When we do, we will post a notice on the Website, send you an email.</p>\r\n<h2>Changes and amendments</h2>\r\n<p>We reserve the right to modify this Policy or its terms relating to the Website and Services from time to time in our discretion and will notify you of any material changes to the way in which we treat Personal Information. When we do, we will post a notification on the main page of the Website. We may also provide notice to you in other ways in our discretion, such as through contact information you have provided. Any updated version of this Policy will be effective immediately upon the posting of the revised Policy unless otherwise specified. Your continued use of the Website and Services after the effective date of the revised Policy (or such other act specified at that time) will constitute your consent to those changes. However, we will not, without your consent, use your Personal Information in a manner materially different than what was stated at the time your Personal Information was collected. Policy was created with <a style=\"color:inherit;\" target=\"_blank\" href=\"https://www.websitepolicies.com/privacy-policy-generator\" rel=\"noreferrer noopener\">WebsitePolicies</a>.</p>\r\n<h2>Acceptance of this policy</h2>\r\n<p>You acknowledge that you have read this Policy and agree to all its terms and conditions. By accessing and using the Website and Services you agree to be bound by this Policy. If you do not agree to abide by the terms of this Policy, you are not authorized to access or use the Website and Services.</p>\r\n<h2>Contacting us</h2>\r\n<p>If you would like to contact us to understand more about this Policy or wish to contact us concerning any matter relating to individual rights and your Personal Information, you may do so via the <a target=\"_blank\" href=\"http://mytravel.test/contact\" rel=\"noreferrer noopener\">contact form</a></p>\r\n<p>This document was last updated on October 6, 2020</p>', NULL, 'publish', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `core_page_translations`
--

DROP TABLE IF EXISTS `core_page_translations`;
CREATE TABLE IF NOT EXISTS `core_page_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `short_desc` text DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `core_page_translations_origin_id_locale_unique` (`origin_id`,`locale`),
  KEY `core_page_translations_locale_index` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_roles`
--

DROP TABLE IF EXISTS `core_roles`;
CREATE TABLE IF NOT EXISTS `core_roles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `commission` decimal(8,2) DEFAULT NULL,
  `commission_type` varchar(40) DEFAULT 'default',
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_roles`
--

INSERT INTO `core_roles` (`id`, `name`, `code`, `commission`, `commission_type`, `create_user`, `update_user`, `status`, `created_at`, `updated_at`) VALUES
(1, 'administrator', 'administrator', NULL, 'default', NULL, NULL, NULL, '2023-12-13 01:01:35', '2023-12-13 01:01:35'),
(2, 'vendor', 'vendor', NULL, 'default', NULL, NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(3, 'customer', 'customer', NULL, 'default', NULL, NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36');

-- --------------------------------------------------------

--
-- Table structure for table `core_role_permissions`
--

DROP TABLE IF EXISTS `core_role_permissions`;
CREATE TABLE IF NOT EXISTS `core_role_permissions` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `permission` varchar(191) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `core_role_permissions_role_id_permission_unique` (`role_id`,`permission`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_role_permissions`
--

INSERT INTO `core_role_permissions` (`id`, `role_id`, `permission`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 1, 'report_view', NULL, NULL, '2023-12-13 01:01:35', '2023-12-13 01:01:35'),
(2, 1, 'contact_manage', NULL, NULL, '2023-12-13 01:01:35', '2023-12-13 01:01:35'),
(3, 1, 'newsletter_manage', NULL, NULL, '2023-12-13 01:01:35', '2023-12-13 01:01:35'),
(4, 1, 'language_manage', NULL, NULL, '2023-12-13 01:01:35', '2023-12-13 01:01:35'),
(5, 1, 'language_translation', NULL, NULL, '2023-12-13 01:01:35', '2023-12-13 01:01:35'),
(6, 1, 'booking_view', NULL, NULL, '2023-12-13 01:01:35', '2023-12-13 01:01:35'),
(7, 1, 'booking_update', NULL, NULL, '2023-12-13 01:01:35', '2023-12-13 01:01:35'),
(8, 1, 'booking_manage_others', NULL, NULL, '2023-12-13 01:01:35', '2023-12-13 01:01:35'),
(9, 1, 'enquiry_view', NULL, NULL, '2023-12-13 01:01:35', '2023-12-13 01:01:35'),
(10, 1, 'enquiry_update', NULL, NULL, '2023-12-13 01:01:35', '2023-12-13 01:01:35'),
(11, 1, 'enquiry_manage_others', NULL, NULL, '2023-12-13 01:01:35', '2023-12-13 01:01:35'),
(12, 1, 'template_view', NULL, NULL, '2023-12-13 01:01:35', '2023-12-13 01:01:35'),
(13, 1, 'template_create', NULL, NULL, '2023-12-13 01:01:35', '2023-12-13 01:01:35'),
(14, 1, 'template_update', NULL, NULL, '2023-12-13 01:01:35', '2023-12-13 01:01:35'),
(15, 1, 'template_delete', NULL, NULL, '2023-12-13 01:01:35', '2023-12-13 01:01:35'),
(16, 1, 'news_view', NULL, NULL, '2023-12-13 01:01:35', '2023-12-13 01:01:35'),
(17, 1, 'news_create', NULL, NULL, '2023-12-13 01:01:35', '2023-12-13 01:01:35'),
(18, 1, 'news_update', NULL, NULL, '2023-12-13 01:01:35', '2023-12-13 01:01:35'),
(19, 1, 'news_delete', NULL, NULL, '2023-12-13 01:01:35', '2023-12-13 01:01:35'),
(20, 1, 'news_manage_others', NULL, NULL, '2023-12-13 01:01:35', '2023-12-13 01:01:35'),
(21, 1, 'role_manage', NULL, NULL, '2023-12-13 01:01:35', '2023-12-13 01:01:35'),
(22, 1, 'role_view', NULL, NULL, '2023-12-13 01:01:35', '2023-12-13 01:01:35'),
(23, 1, 'role_create', NULL, NULL, '2023-12-13 01:01:35', '2023-12-13 01:01:35'),
(24, 1, 'role_update', NULL, NULL, '2023-12-13 01:01:35', '2023-12-13 01:01:35'),
(25, 1, 'role_delete', NULL, NULL, '2023-12-13 01:01:35', '2023-12-13 01:01:35'),
(26, 1, 'permission_view', NULL, NULL, '2023-12-13 01:01:35', '2023-12-13 01:01:35'),
(27, 1, 'permission_create', NULL, NULL, '2023-12-13 01:01:35', '2023-12-13 01:01:35'),
(28, 1, 'permission_update', NULL, NULL, '2023-12-13 01:01:35', '2023-12-13 01:01:35'),
(29, 1, 'permission_delete', NULL, NULL, '2023-12-13 01:01:35', '2023-12-13 01:01:35'),
(30, 1, 'dashboard_access', NULL, NULL, '2023-12-13 01:01:35', '2023-12-13 01:01:35'),
(31, 1, 'dashboard_vendor_access', NULL, NULL, '2023-12-13 01:01:35', '2023-12-13 01:01:35'),
(32, 1, 'setting_update', NULL, NULL, '2023-12-13 01:01:35', '2023-12-13 01:01:35'),
(33, 1, 'menu_view', NULL, NULL, '2023-12-13 01:01:35', '2023-12-13 01:01:35'),
(34, 1, 'menu_create', NULL, NULL, '2023-12-13 01:01:35', '2023-12-13 01:01:35'),
(35, 1, 'menu_update', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(36, 1, 'menu_delete', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(37, 1, 'user_view', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(38, 1, 'user_create', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(39, 1, 'user_update', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(40, 1, 'user_delete', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(41, 1, 'page_view', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(42, 1, 'page_create', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(43, 1, 'page_update', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(44, 1, 'page_delete', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(45, 1, 'page_manage_others', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(46, 1, 'setting_view', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(47, 1, 'media_upload', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(48, 1, 'media_manage', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(49, 1, 'location_view', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(50, 1, 'location_create', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(51, 1, 'location_update', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(52, 1, 'location_delete', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(53, 1, 'location_manage_others', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(54, 1, 'review_manage_others', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(55, 1, 'system_log_view', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(56, 1, 'theme_manage', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(57, 1, 'social_manage_forum', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(58, 1, 'plugin_manage', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(59, 1, 'vendor_payout_view', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(60, 1, 'vendor_payout_manage', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(61, 1, 'popup_view', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(62, 1, 'popup_create', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(63, 1, 'popup_update', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(64, 1, 'popup_delete', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(65, 1, 'media_manage_others', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(66, 1, 'hotel_view', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(67, 1, 'hotel_create', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(68, 1, 'hotel_update', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(69, 1, 'hotel_delete', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(70, 1, 'hotel_manage_others', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(71, 1, 'hotel_manage_attributes', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(72, 1, 'space_view', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(73, 1, 'space_create', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(74, 1, 'space_update', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(75, 1, 'space_delete', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(76, 1, 'space_manage_others', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(77, 1, 'space_manage_attributes', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(78, 1, 'car_view', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(79, 1, 'car_create', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(80, 1, 'car_update', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(81, 1, 'car_delete', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(82, 1, 'car_manage_others', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(83, 1, 'car_manage_attributes', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(84, 1, 'event_view', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(85, 1, 'event_create', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(86, 1, 'event_update', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(87, 1, 'event_delete', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(88, 1, 'event_manage_others', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(89, 1, 'event_manage_attributes', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(90, 1, 'tour_view', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(91, 1, 'tour_create', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(92, 1, 'tour_update', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(93, 1, 'tour_delete', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(94, 1, 'tour_manage_others', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(95, 1, 'tour_manage_attributes', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(96, 1, 'flight_view', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(97, 1, 'flight_create', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(98, 1, 'flight_update', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(99, 1, 'flight_delete', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(100, 1, 'flight_manage_others', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(101, 1, 'flight_manage_attributes', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(102, 1, 'boat_view', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(103, 1, 'boat_create', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(104, 1, 'boat_update', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(105, 1, 'boat_delete', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(106, 1, 'boat_manage_others', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(107, 1, 'boat_manage_attributes', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(108, 1, 'coupon_view', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(109, 1, 'coupon_create', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(110, 1, 'coupon_update', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(111, 1, 'coupon_delete', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(112, 2, 'media_upload', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(113, 2, 'tour_view', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(114, 2, 'tour_create', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(115, 2, 'tour_update', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(116, 2, 'tour_delete', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(117, 2, 'dashboard_vendor_access', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(118, 2, 'space_view', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(119, 2, 'space_create', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(120, 2, 'space_update', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(121, 2, 'space_delete', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(122, 2, 'hotel_view', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(123, 2, 'hotel_create', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(124, 2, 'hotel_update', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(125, 2, 'hotel_delete', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(126, 2, 'car_view', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(127, 2, 'car_create', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(128, 2, 'car_update', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(129, 2, 'car_delete', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(130, 2, 'event_view', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(131, 2, 'event_create', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(132, 2, 'event_update', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(133, 2, 'event_delete', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(134, 2, 'news_view', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(135, 2, 'news_create', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(136, 2, 'news_update', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(137, 2, 'news_delete', NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36'),
(138, 2, 'enquiry_view', NULL, NULL, '2023-12-13 01:01:54', '2023-12-13 01:01:54'),
(139, 2, 'enquiry_update', NULL, NULL, '2023-12-13 01:01:54', '2023-12-13 01:01:54'),
(140, 2, 'flight_create', NULL, NULL, '2023-12-13 01:01:55', '2023-12-13 01:01:55'),
(141, 2, 'flight_view', NULL, NULL, '2023-12-13 01:01:55', '2023-12-13 01:01:55'),
(142, 2, 'flight_update', NULL, NULL, '2023-12-13 01:01:55', '2023-12-13 01:01:55'),
(143, 2, 'flight_delete', NULL, NULL, '2023-12-13 01:01:55', '2023-12-13 01:01:55'),
(144, 2, 'boat_create', NULL, NULL, '2023-12-13 01:01:57', '2023-12-13 01:01:57'),
(145, 2, 'boat_view', NULL, NULL, '2023-12-13 01:01:57', '2023-12-13 01:01:57'),
(146, 2, 'boat_update', NULL, NULL, '2023-12-13 01:01:57', '2023-12-13 01:01:57'),
(147, 2, 'boat_delete', NULL, NULL, '2023-12-13 01:01:57', '2023-12-13 01:01:57'),
(148, 2, 'boat_manage_others', NULL, NULL, '2023-12-13 01:01:57', '2023-12-13 01:01:57'),
(149, 2, 'boat_manage_attributes', NULL, NULL, '2023-12-13 01:01:57', '2023-12-13 01:01:57');

-- --------------------------------------------------------

--
-- Table structure for table `core_settings`
--

DROP TABLE IF EXISTS `core_settings`;
CREATE TABLE IF NOT EXISTS `core_settings` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `group` varchar(50) DEFAULT NULL,
  `val` text DEFAULT NULL,
  `autoload` tinyint(4) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `lang` varchar(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_settings`
--

INSERT INTO `core_settings` (`id`, `name`, `group`, `val`, `autoload`, `create_user`, `update_user`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'site_locale', 'general', 'en', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'site_enable_multi_lang', 'general', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'enable_rtl_egy', 'general', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'menu_locations', 'general', '{\"primary\":1}', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'admin_email', 'general', 'contact@mytravel.com', NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'email_from_name', 'general', 'My Travel', NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'email_from_address', 'general', 'contact@mytravel.com', NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'phone_contact', 'general', '(+84) 666-888-999', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'logo_id', 'general', '200', NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'logo_id_2', 'general', '8', NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'logo_text', 'general', 'MyTravel', NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'site_favicon', 'general', '10', NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'topbar_left_text', 'general', '<div class=\"socials\">\r\n<a href=\"#\"><i class=\"fa fa-facebook\"></i></a>\r\n<a href=\"#\"><i class=\"fa fa-linkedin\"></i></a>\r\n<a href=\"#\"><i class=\"fa fa-google-plus\"></i></a>\r\n</div>\r\n<span class=\"line\"></span>\r\n<a href=\"mailto:contact@mytravel.com\">contact@mytravel.com</a>', NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'footer_info_text', 'general', '<div class=\"d-md-flex d-lg-block\">\r\n    <div class=\"mb-5 mr-md-7 mr-lg-0\">\r\n        <h4 class=\"h6 mb-4 font-weight-bold\">Need My Travel Help?</h4>\r\n        <a href=\"tel:(+84) 666-888-999\">\r\n            <div class=\"d-flex align-items-center\">\r\n                <div class=\"mr-4\">\r\n                    <i class=\"fa fa-phone font-size-50\" aria-hidden=\"true\"></i>\r\n                </div>\r\n                <div>\r\n                    <div class=\"mb-2 h6 font-weight-normal text-gray-1\">Got Questions ? Call us 24/7</div>\r\n                    <small class=\"d-block font-size-16 font-weight-normal text-primary\">Call Us: <span class=\"text-primary font-weight-semi-bold\">(+84) 666-888-999</span></small>\r\n                </div>\r\n            </div>\r\n        </a>\r\n    </div>\r\n    <div class=\"ml-md-6 ml-lg-0\">\r\n        <div class=\"mb-4\">\r\n            <h4 class=\"h6 font-weight-bold mb-2 font-size-17\">Contact Info</h4>\r\n            <address class=\"pr-4\">\r\n                    <span class=\"mb-2 h6 font-weight-normal text-gray-1\">\r\n                        PO Box CT16122 Collins Street West, Victoria 8007,Australia.\r\n                    </span>\r\n            </address>\r\n        </div>\r\n        <ul class=\"list-inline mb-0\">\r\n            <li class=\"list-inline-item mr-2\">\r\n                <a class=\"btn btn-icon btn-social btn-bg-transparent\" href=\"#\">\r\n                    <span class=\"fa fa-facebook-f btn-icon__inner\"></span>\r\n                </a>\r\n            </li>\r\n            <li class=\"list-inline-item mr-2\">\r\n                <a class=\"btn btn-icon btn-social btn-bg-transparent\" href=\"#\">\r\n                    <span class=\"fa fa-twitter  btn-icon__inner\"></span>\r\n                </a>\r\n            </li>\r\n            <li class=\"list-inline-item mr-2\">\r\n                <a class=\"btn btn-icon btn-social btn-bg-transparent\" href=\"#\">\r\n                    <span class=\"fa fa-instagram btn-icon__inner\"></span>\r\n                </a>\r\n            </li>\r\n            <li class=\"list-inline-item mr-2\">\r\n                <a class=\"btn btn-icon btn-social btn-bg-transparent\" href=\"#\">\r\n                    <span class=\"fa fa-linkedin btn-icon__inner\"></span>\r\n                </a>\r\n            </li>\r\n        </ul>\r\n    </div>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'footer_text_left', 'general', '© 2021 MyTravel. All rights reserved', NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'footer_text_right', 'general', 'MyTravel', NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'list_widget_footer', 'general', '[{\"title\":\"Company\",\"size\":\"4\",\"content\":\"<ul class=\\\"list-group list-group-flush list-group-borderless mb-0\\\">\\r\\n                                <li><a class=\\\"text-decoration-on-hover list-group-item list-group-item-action\\\" href=\\\"#\\\">About us<\\/a><\\/li>\\r\\n                                <li><a class=\\\"text-decoration-on-hover list-group-item list-group-item-action\\\" href=\\\"#\\\">Careers<\\/a><\\/li>\\r\\n                                <li><a class=\\\"list-group-item list-group-item-action text-decoration-on-hover\\\" href=\\\"#\\\">Terms of Use<\\/a><\\/li>\\r\\n                                <li><a class=\\\"list-group-item list-group-item-action text-decoration-on-hover\\\" href=\\\"#\\\">Privacy Statement<\\/a><\\/li>\\r\\n                                <li><a class=\\\"list-group-item list-group-item-action text-decoration-on-hover\\\" href=\\\"#\\\">Give Us Feedbacks<\\/a><\\/li>\\r\\n                            <\\/ul>\"},{\"title\":\"Other Services\",\"size\":\"4\",\"content\":\"<ul class=\\\"list-group list-group-flush list-group-borderless mb-0\\\">\\r\\n                                <li><a class=\\\"list-group-item list-group-item-action text-decoration-on-hover\\\" href=\\\"#\\\">Investor Relations<\\/a><\\/li>\\r\\n                                <li><a class=\\\"list-group-item list-group-item-action text-decoration-on-hover\\\" href=\\\"#\\\">Rewards Program<\\/a><\\/li>\\r\\n                                <li><a class=\\\"list-group-item list-group-item-action text-decoration-on-hover\\\" href=\\\"#\\\">PointsPLUS<\\/a><\\/li>\\r\\n                                <li><a class=\\\"list-group-item list-group-item-action text-decoration-on-hover\\\" href=\\\"#\\\">Partners<\\/a><\\/li>\\r\\n                                <li><a class=\\\"list-group-item list-group-item-action text-decoration-on-hover\\\" href=\\\"#\\\">List My Hotel<\\/a><\\/li>\\r\\n                            <\\/ul>\"},{\"title\":\"Support\",\"size\":\"4\",\"content\":\"<ul class=\\\"list-group list-group-flush list-group-borderless mb-0\\\">\\r\\n                                <li>\\r\\n                                    <a class=\\\"list-group-item list-group-item-action text-decoration-on-hover\\\" href=\\\"#\\\">Account<\\/a>\\r\\n                                <\\/li>\\r\\n                                <li>\\r\\n                                    <a class=\\\"list-group-item list-group-item-action text-decoration-on-hover\\\" href=\\\"#\\\">Legal<\\/a>\\r\\n                                <\\/li>\\r\\n                                <li>\\r\\n                                    <a class=\\\"list-group-item list-group-item-action text-decoration-on-hover\\\" href=\\\"#\\\">Contact<\\/a>\\r\\n                                <\\/li>\\r\\n                                <li>\\r\\n                                    <a class=\\\"list-group-item list-group-item-action text-decoration-on-hover\\\" href=\\\"#\\\">Affiliate Program<\\/a>\\r\\n                                <\\/li>\\r\\n                                <li>\\r\\n                                    <a class=\\\"list-group-item list-group-item-action text-decoration-on-hover\\\" href=\\\"#\\\">Privacy Policy<\\/a>\\r\\n                                <\\/li>\\r\\n                            <\\/ul>\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'page_contact_title', 'general', 'We\'d love to hear from you', NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'page_contact_sub_title', 'general', 'Send us a message and we\'ll respond as soon as possible', NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'page_contact_desc', 'general', '<!DOCTYPE html><html><head></head><body><h3>My Travel</h3><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>Tell. + 00 222 444 33</p><p>Email. hello@yoursite.com</p><p>1355 Market St, Suite 900San, Francisco, CA 94103 United States</p></body></html>', NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'page_contact_image', 'general', '9', NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'home_page_id', 'general', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'page_contact_title', 'general', 'Contact Us', NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'page_contact_lists', 'general', '[{\"title\":\"London\",\"address\":\"82 Bernie Greens Apt. 210, <br>  Hendon Way, London, UK\",\"phone\":\"+53 213 5941 295\",\"email\":\"contact@mytravel.com\",\"link_map\":\"#\"},{\"title\":\"Viet Nam\",\"address\":\"Thanh pho Ha Noi, <br> Viet Nam\",\"phone\":\"+0985 5941 295 213\",\"email\":\"contact@mytravel.com\",\"link_map\":\"#\"},{\"title\":\"New York\",\"address\":\"21 Valentin Rapids Apt. 335 New <br> Jersey, New York, USA\",\"phone\":\"+47 213 5941 295\",\"email\":\"contact@mytravel.test\",\"link_map\":\"#\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'page_contact_iframe_google_map', 'general', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3151.835253576489!2d144.95372995111143!3d-37.817327679652266!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6ad65d4c2b349649%3A0xb6899234e561db11!2sEnvato!5e0!3m2!1sen!2sin!4v1581584770980!5m2!1sen!2sin\" width=\"100%\" height=\"500\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'page_contact_image', 'general', '9', NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'currency_main', 'payment', 'usd', NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'currency_format', 'payment', 'left', NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'currency_decimal', 'payment', ',', NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'currency_thousand', 'payment', '.', NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'currency_no_decimal', 'payment', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'extra_currency', 'payment', '[{\"currency_main\":\"eur\",\"currency_format\":\"left\",\"currency_thousand\":\".\",\"currency_decimal\":\",\",\"currency_no_decimal\":\"2\",\"rate\":\"0.902807\"},{\"currency_main\":\"jpy\",\"currency_format\":\"right_space\",\"currency_thousand\":\".\",\"currency_decimal\":\",\",\"currency_no_decimal\":\"0\",\"rate\":\"0.00917113\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'map_provider', 'advance', 'gmap', NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'map_gmap_key', 'advance', '', NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'g_offline_payment_enable', 'payment', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'g_offline_payment_name', 'payment', 'Offline Payment', NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'date_format', 'general', 'm/d/Y', NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'site_title', 'general', 'My Travel', NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'site_timezone', 'general', 'UTC', NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'site_title', 'general', 'My Travel', NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'email_header', 'general', '<h1 class=\"site-title\" style=\"text-align: center\">My Travel</h1>', NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'email_footer', 'general', '<p class=\"\" style=\"text-align: center\">&copy; 2021 My Travel. All rights reserved</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'enable_mail_user_registered', 'user', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'user_content_email_registered', 'user', '<h1 style=\"text-align: center\">Welcome!</h1>\r\n                    <h3>Hello [first_name] [last_name]</h3>\r\n                    <p>Thank you for signing up with My Travel! We hope you enjoy your time with us.</p>\r\n                    <p>Regards,</p>\r\n                    <p>My Travel</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'admin_enable_mail_user_registered', 'user', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'admin_content_email_user_registered', 'user', '<h3>Hello Administrator</h3>\r\n                    <p>We have new registration</p>\r\n                    <p>Full name: [first_name] [last_name]</p>\r\n                    <p>Email: [email]</p>\r\n                    <p>Regards,</p>\r\n                    <p>My Travel</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'user_content_email_forget_password', 'user', '<h1>Hello!</h1>\r\n                    <p>You are receiving this email because we received a password reset request for your account.</p>\r\n                    <p style=\"text-align: center\">[button_reset_password]</p>\r\n                    <p>This password reset link expire in 60 minutes.</p>\r\n                    <p>If you did not request a password reset, no further action is required.\r\n                    </p>\r\n                    <p>Regards,</p>\r\n                    <p>My Travel</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'email_driver', 'email', 'log', NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'email_host', 'email', 'smtp.mailgun.org', NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'email_port', 'email', '587', NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'email_encryption', 'email', 'tls', NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'email_username', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'email_password', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'email_mailgun_domain', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
(55, 'email_mailgun_secret', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'email_mailgun_endpoint', 'email', 'api.mailgun.net', NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'email_postmark_token', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'email_ses_key', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'email_ses_secret', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'email_ses_region', 'email', 'us-east-1', NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'email_sparkpost_secret', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'booking_enquiry_for_hotel', 'enquiry', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(63, 'booking_enquiry_for_tour', 'enquiry', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(64, 'booking_enquiry_for_space', 'enquiry', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(65, 'booking_enquiry_for_car', 'enquiry', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(66, 'booking_enquiry_for_event', 'enquiry', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(67, 'booking_enquiry_for_boat', 'enquiry', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(68, 'booking_enquiry_type', 'enquiry', 'booking_and_enquiry', NULL, NULL, NULL, NULL, NULL, NULL),
(69, 'booking_enquiry_enable_mail_to_vendor', 'enquiry', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(70, 'booking_enquiry_mail_to_vendor_content', 'enquiry', '<h3>Hello [vendor_name]</h3>\r\n                            <p>You get new inquiry request from [email]</p>\r\n                            <p>Name :[name]</p>\r\n                            <p>Emai:[email]</p>\r\n                            <p>Phone:[phone]</p>\r\n                            <p>Content:[note]</p>\r\n                            <p>Service:[service_link]</p>\r\n                            <p>Regards,</p>\r\n                            <p>My Travel</p>\r\n                            </div>', NULL, NULL, NULL, NULL, NULL, NULL),
(71, 'booking_enquiry_enable_mail_to_admin', 'enquiry', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(72, 'booking_enquiry_mail_to_admin_content', 'enquiry', '<h3>Hello Administrator</h3>\r\n                            <p>You get new inquiry request from [email]</p>\r\n                            <p>Name :[name]</p>\r\n                            <p>Emai:[email]</p>\r\n                            <p>Phone:[phone]</p>\r\n                            <p>Content:[note]</p>\r\n                            <p>Service:[service_link]</p>\r\n                            <p>Vendor:[vendor_link]</p>\r\n                            <p>Regards,</p>\r\n                            <p>My Travel</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(73, 'vendor_enable', 'vendor', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(74, 'vendor_commission_type', 'vendor', 'percent', NULL, NULL, NULL, NULL, NULL, NULL),
(75, 'vendor_commission_amount', 'vendor', '10', NULL, NULL, NULL, NULL, NULL, NULL),
(76, 'vendor_role', 'vendor', '2', NULL, NULL, NULL, NULL, NULL, NULL),
(77, 'role_verify_fields', 'vendor', '{\"phone\":{\"name\":\"Phone\",\"type\":\"text\",\"roles\":[\"1\",\"2\",\"3\"],\"required\":null,\"order\":null,\"icon\":\"fa fa-phone\"},\"id_card\":{\"name\":\"ID Card\",\"type\":\"file\",\"roles\":[\"1\",\"2\",\"3\"],\"required\":\"1\",\"order\":\"0\",\"icon\":\"fa fa-id-card\"},\"trade_license\":{\"name\":\"Trade License\",\"type\":\"multi_files\",\"roles\":[\"1\",\"3\"],\"required\":\"1\",\"order\":\"0\",\"icon\":\"fa fa-copyright\"}}', NULL, NULL, NULL, NULL, NULL, NULL),
(78, 'enable_mail_vendor_registered', 'vendor', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(79, 'vendor_content_email_registered', 'vendor', '<h1 style=\"text-align: center;\">Welcome!</h1>\r\n                            <h3>Hello [first_name] [last_name]</h3>\r\n                            <p>Thank you for signing up with My Travel! We hope you enjoy your time with us.</p>\r\n                            <p>Regards,</p>\r\n                            <p>My Travel</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(80, 'admin_enable_mail_vendor_registered', 'vendor', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(81, 'admin_content_email_vendor_registered', 'vendor', '<h3>Hello Administrator</h3>\r\n                            <p>An user has been registered as Vendor. Please check the information bellow:</p>\r\n                            <p>Full name: [first_name] [last_name]</p>\r\n                            <p>Email: [email]</p>\r\n                            <p>Registration date: [created_at]</p>\r\n                            <p>You can approved the request here: [link_approved]</p>\r\n                            <p>Regards,</p>\r\n                            <p>My Travel</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(82, 'cookie_agreement_enable', 'advance', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(83, 'cookie_agreement_button_text', 'advance', 'Got it', NULL, NULL, NULL, NULL, NULL, NULL),
(84, 'cookie_agreement_content', 'advance', '<p>This website requires cookies to provide all of its features. By using our website, you agree to our use of cookies. <a href=\'#\'>More info</a></p>', NULL, NULL, NULL, NULL, NULL, NULL),
(85, 'booking_why_book_with_us', 'booking', '[{\"title\":\"No-hassle best price guarantee\",\"link\":\"#\",\"icon\":\"flaticon-star\"},{\"title\":\"Customer care available 24\\/7\",\"link\":\"#\",\"icon\":\"flaticon-support\"},{\"title\":\"Hand-picked Tours & Activities\",\"link\":\"#\",\"icon\":\"flaticon-favorites-button\"},{\"title\":\"Free Travel Insureance\",\"link\":\"#\",\"icon\":\"flaticon-airplane\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(86, 'logo_invoice_id', 'booking', '8', NULL, NULL, NULL, NULL, NULL, NULL),
(87, 'invoice_company_info', 'booking', '<p><span style=\"font-size: 14pt;\"><strong>My Travel Company</strong></span></p>\r\n                                <p>Ha Noi, Viet Nam</p>\r\n                                <p>www.mytravel.test</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(88, 'user_plans_enable', NULL, '1', NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(89, 'news_page_list_title', 'news', 'News', NULL, NULL, NULL, NULL, NULL, NULL),
(90, 'news_page_list_banner', 'news', '121', NULL, NULL, NULL, NULL, NULL, NULL),
(91, 'news_sidebar', 'news', '[{\"title\":null,\"content\":null,\"type\":\"search_form\"},{\"title\":\"About Us\",\"content\":\"Nam dapibus nisl vitae elit fringilla rutrum. Aenean sollicitudin, erat a elementum rutrum, neque sem pretium metus, quis mollis nisl nunc et massa\",\"type\":\"content_text\"},{\"title\":\"Recent News\",\"content\":null,\"type\":\"recent_news\"},{\"title\":\"Categories\",\"content\":null,\"type\":\"category\"},{\"title\":\"Tags\",\"content\":null,\"type\":\"tag\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(92, 'tour_page_search_title', 'tour', 'Search for tour', NULL, NULL, NULL, NULL, NULL, NULL),
(93, 'tour_page_limit_item', 'tour', '9', NULL, NULL, NULL, NULL, NULL, NULL),
(94, 'tour_page_search_banner', 'tour', '20', NULL, NULL, NULL, NULL, NULL, NULL),
(95, 'tour_layout_search', 'tour', 'normal', NULL, NULL, NULL, NULL, NULL, NULL),
(96, 'tour_enable_review', 'tour', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(97, 'tour_review_approved', 'tour', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(98, 'tour_review_stats', 'tour', '[{\"title\":\"Service\"},{\"title\":\"Organization\"},{\"title\":\"Friendliness\"},{\"title\":\"Area Expert\"},{\"title\":\"Safety\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(99, 'tour_booking_buyer_fees', 'tour', '[{\"name\":\"Service fee\",\"desc\":\"This helps us run our platform and offer services like 24\\/7 support on your trip.\",\"name_ja\":\"\\u30b5\\u30fc\\u30d3\\u30b9\\u6599\",\"desc_ja\":\"\\u3053\\u308c\\u306b\\u3088\\u308a\\u3001\\u5f53\\u793e\\u306e\\u30d7\\u30e9\\u30c3\\u30c8\\u30d5\\u30a9\\u30fc\\u30e0\\u3092\\u5b9f\\u884c\\u3057\\u3001\\u65c5\\u884c\\u4e2d\\u306b\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(100, 'tour_map_search_fields', 'tour', '[{\"field\":\"location\",\"attr\":null,\"position\":\"1\"},{\"field\":\"category\",\"attr\":null,\"position\":\"2\"},{\"field\":\"date\",\"attr\":null,\"position\":\"3\"},{\"field\":\"price\",\"attr\":null,\"position\":\"4\"},{\"field\":\"advance\",\"attr\":null,\"position\":\"5\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(101, 'tour_search_fields', 'tour', '[{\"title\":\"Location\",\"field\":\"location\",\"size\":\"6\",\"position\":\"1\"},{\"title\":\"From - To\",\"field\":\"date\",\"size\":\"6\",\"position\":\"2\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(102, 'space_page_search_title', 'space', 'Search for space', NULL, NULL, NULL, NULL, NULL, NULL),
(103, 'space_page_limit_item', 'space', '9', NULL, NULL, NULL, NULL, NULL, NULL),
(104, 'space_page_search_banner', 'space', '62', NULL, NULL, NULL, NULL, NULL, NULL),
(105, 'space_layout_search', 'space', 'normal', NULL, NULL, NULL, NULL, NULL, NULL),
(106, 'space_enable_review', 'space', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(107, 'space_review_approved', 'space', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(108, 'space_review_stats', 'space', '[{\"title\":\"Sleep\"},{\"title\":\"Location\"},{\"title\":\"Service\"},{\"title\":\"Clearness\"},{\"title\":\"Rooms\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(109, 'space_booking_buyer_fees', 'space', '[{\"name\":\"Cleaning fee\",\"desc\":\"One-time fee charged by host to cover the cost of cleaning their space.\",\"name_ja\":\"\\u30af\\u30ea\\u30fc\\u30cb\\u30f3\\u30b0\\u4ee3\",\"desc_ja\":\"\\u30b9\\u30da\\u30fc\\u30b9\\u3092\\u6383\\u9664\\u3059\\u308b\\u8cbb\\u7528\\u3092\\u30db\\u30b9\\u30c8\\u304c\\u8acb\\u6c42\\u3059\\u308b1\\u56de\\u9650\\u308a\\u306e\\u6599\\u91d1\\u3002\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Service fee\",\"desc\":\"This helps us run our platform and offer services like 24\\/7 support on your trip.\",\"name_ja\":\"\\u30b5\\u30fc\\u30d3\\u30b9\\u6599\",\"desc_ja\":\"\\u3053\\u308c\\u306b\\u3088\\u308a\\u3001\\u5f53\\u793e\\u306e\\u30d7\\u30e9\\u30c3\\u30c8\\u30d5\\u30a9\\u30fc\\u30e0\\u3092\\u5b9f\\u884c\\u3057\\u3001\\u65c5\\u884c\\u4e2d\\u306b\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(110, 'space_map_search_fields', 'space', '[{\"field\":\"location\",\"attr\":null,\"position\":\"1\"},{\"field\":\"attr\",\"attr\":\"3\",\"position\":\"2\"},{\"field\":\"date\",\"attr\":null,\"position\":\"3\"},{\"field\":\"price\",\"attr\":null,\"position\":\"4\"},{\"field\":\"advance\",\"attr\":null,\"position\":\"5\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(111, 'space_search_fields', 'tour', '[{\"title\":\"Location\",\"field\":\"location\",\"size\":\"4\",\"position\":\"1\"},{\"title\":\"From - To\",\"field\":\"date\",\"size\":\"4\",\"position\":\"2\"},{\"title\":\"Guests\",\"field\":\"guests\",\"size\":\"4\",\"position\":\"3\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(112, 'hotel_page_search_title', 'hotel', 'Search for hotel', NULL, NULL, NULL, NULL, NULL, NULL),
(113, 'hotel_page_limit_item', 'hotel', '9', NULL, NULL, NULL, NULL, NULL, NULL),
(114, 'hotel_page_search_banner', 'hotel', '92', NULL, NULL, NULL, NULL, NULL, NULL),
(115, 'hotel_layout_item_search', 'hotel', 'list', NULL, NULL, NULL, NULL, NULL, NULL),
(116, 'hotel_attribute_show_in_listing_page', 'hotel', '6', NULL, NULL, NULL, NULL, NULL, NULL),
(117, 'hotel_layout_search', 'hotel', 'normal', NULL, NULL, NULL, NULL, NULL, NULL),
(118, 'hotel_enable_review', 'hotel', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(119, 'hotel_review_approved', 'hotel', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(120, 'hotel_review_stats', 'hotel', '[{\"title\":\"Service\"},{\"title\":\"Organization\"},{\"title\":\"Friendliness\"},{\"title\":\"Area Expert\"},{\"title\":\"Safety\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(121, 'hotel_booking_buyer_fees', 'hotel', '[{\"name\":\"Service fee\",\"desc\":\"This helps us run our platform and offer services like 24\\/7 support on your trip.\",\"name_ja\":\"\\u30b5\\u30fc\\u30d3\\u30b9\\u6599\",\"desc_ja\":\"\\u3053\\u308c\\u306b\\u3088\\u308a\\u3001\\u5f53\\u793e\\u306e\\u30d7\\u30e9\\u30c3\\u30c8\\u30d5\\u30a9\\u30fc\\u30e0\\u3092\\u5b9f\\u884c\\u3057\\u3001\\u65c5\\u884c\\u4e2d\\u306b\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(122, 'hotel_map_search_fields', 'hotel', '[{\"field\":\"location\",\"attr\":null,\"position\":\"1\"},{\"field\":\"attr\",\"attr\":\"7\",\"position\":\"2\"},{\"field\":\"date\",\"attr\":null,\"position\":\"3\"},{\"field\":\"price\",\"attr\":null,\"position\":\"4\"},{\"field\":\"advance\",\"attr\":null,\"position\":\"5\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(123, 'hotel_search_fields', 'hotel', '[{\"title\":\"Location\",\"field\":\"location\",\"size\":\"4\",\"position\":\"1\"},{\"title\":\"Check In - Out\",\"field\":\"date\",\"size\":\"4\",\"position\":\"2\"},{\"title\":\"Guests\",\"field\":\"guests\",\"size\":\"4\",\"position\":\"3\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(124, 'car_page_search_title', 'car', 'Search for car', NULL, NULL, NULL, NULL, NULL, NULL),
(125, 'car_page_limit_item', 'car', '9', NULL, NULL, NULL, NULL, NULL, NULL),
(126, 'car_page_search_banner', 'car', '62', NULL, NULL, NULL, NULL, NULL, NULL),
(127, 'car_layout_search', 'car', 'normal', NULL, NULL, NULL, NULL, NULL, NULL),
(128, 'car_enable_review', 'car', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(129, 'car_review_approved', 'car', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(130, 'car_review_stats', 'car', '[{\"title\":\"Equipment\"},{\"title\":\"Comfortable\"},{\"title\":\"Climate Control\"},{\"title\":\"Facility\"},{\"title\":\"Aftercare\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(131, 'car_booking_buyer_fees', 'car', '[{\"name\":\"Equipment fee\",\"desc\":\"One-time fee charged by host to cover the cost of cleaning their space.\",\"name_ja\":\"\\u30af\\u30ea\\u30fc\\u30cb\\u30f3\\u30b0\\u4ee3\",\"desc_ja\":\"\\u30b9\\u30da\\u30fc\\u30b9\\u3092\\u6383\\u9664\\u3059\\u308b\\u8cbb\\u7528\\u3092\\u30db\\u30b9\\u30c8\\u304c\\u8acb\\u6c42\\u3059\\u308b1\\u56de\\u9650\\u308a\\u306e\\u6599\\u91d1\\u3002\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Facility fee\",\"desc\":\"This helps us run our platform and offer services like 24\\/7 support on your trip.\",\"name_ja\":\"\\u30b5\\u30fc\\u30d3\\u30b9\\u6599\",\"desc_ja\":\"\\u3053\\u308c\\u306b\\u3088\\u308a\\u3001\\u5f53\\u793e\\u306e\\u30d7\\u30e9\\u30c3\\u30c8\\u30d5\\u30a9\\u30fc\\u30e0\\u3092\\u5b9f\\u884c\\u3057\\u3001\\u65c5\\u884c\\u4e2d\\u306b\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(132, 'car_map_search_fields', 'car', '[{\"field\":\"location\",\"attr\":null,\"position\":\"1\"},{\"field\":\"attr\",\"attr\":\"9\",\"position\":\"2\"},{\"field\":\"date\",\"attr\":null,\"position\":\"3\"},{\"field\":\"price\",\"attr\":null,\"position\":\"4\"},{\"field\":\"advance\",\"attr\":null,\"position\":\"5\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(133, 'car_search_fields', 'car', '[{\"title\":\"Location\",\"field\":\"location\",\"size\":\"6\",\"position\":\"1\"},{\"title\":\"From - To\",\"field\":\"date\",\"size\":\"6\",\"position\":\"2\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(134, 'event_page_search_title', 'event', 'Search for event', NULL, NULL, NULL, NULL, NULL, NULL),
(135, 'event_page_limit_item', 'event', '9', NULL, NULL, NULL, NULL, NULL, NULL),
(136, 'event_page_search_banner', 'event', '161', NULL, NULL, NULL, NULL, NULL, NULL),
(137, 'event_layout_search', 'event', 'normal', NULL, NULL, NULL, NULL, NULL, NULL),
(138, 'event_enable_review', 'event', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(139, 'event_review_approved', 'event', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(140, 'event_review_stats', 'event', '[{\"title\":\"Service\"},{\"title\":\"Organization\"},{\"title\":\"Friendliness\"},{\"title\":\"Area Expert\"},{\"title\":\"Safety\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(141, 'event_booking_buyer_fees', 'event', '[{\"name\":\"Service fee\",\"desc\":\"This helps us run our platform and offer services like 24\\/7 support on your trip.\",\"name_ja\":\"\\u30b5\\u30fc\\u30d3\\u30b9\\u6599\",\"desc_ja\":\"\\u3053\\u308c\\u306b\\u3088\\u308a\\u3001\\u5f53\\u793e\\u306e\\u30d7\\u30e9\\u30c3\\u30c8\\u30d5\\u30a9\\u30fc\\u30e0\\u3092\\u5b9f\\u884c\\u3057\\u3001\\u65c5\\u884c\\u4e2d\\u306b\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(142, 'event_map_search_fields', 'event', '[{\"field\":\"location\",\"attr\":null,\"position\":\"1\"},{\"field\":\"category\",\"attr\":null,\"position\":\"2\"},{\"field\":\"date\",\"attr\":null,\"position\":\"3\"},{\"field\":\"price\",\"attr\":null,\"position\":\"4\"},{\"field\":\"advance\",\"attr\":null,\"position\":\"5\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(143, 'event_search_fields', 'event', '[{\"title\":\"Location\",\"field\":\"location\",\"size\":\"6\",\"position\":\"1\"},{\"title\":\"From - To\",\"field\":\"date\",\"size\":\"6\",\"position\":\"2\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(144, 'flight_page_search_title', 'flight', 'Search for flight', NULL, NULL, NULL, NULL, NULL, NULL),
(145, 'flight_page_limit_item', 'flight', '9', NULL, NULL, NULL, NULL, NULL, NULL),
(146, 'flight_page_search_banner', 'flight', '232', NULL, NULL, NULL, NULL, NULL, NULL),
(147, 'flight_layout_search', 'flight', 'normal', NULL, NULL, NULL, NULL, NULL, NULL),
(148, 'flight_enable_review', 'flight', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(149, 'flight_review_approved', 'flight', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(150, 'flight_review_stats', 'flight', '', NULL, NULL, NULL, NULL, NULL, NULL),
(151, 'flight_booking_buyer_fees', 'flight', '', NULL, NULL, NULL, NULL, NULL, NULL),
(152, 'flight_map_search_fields', 'flight', '', NULL, NULL, NULL, NULL, NULL, NULL),
(153, 'flight_search_fields', 'flight', '[{\"title\":\"From where\",\"title_ja\":null,\"title_egy\":null,\"field\":\"from_where\",\"size\":\"3\",\"position\":\"1\"},{\"title\":\"To where\",\"title_ja\":null,\"title_egy\":null,\"field\":\"to_where\",\"size\":\"3\",\"position\":\"2\"},{\"title\":\"Depart\",\"title_ja\":null,\"title_egy\":null,\"field\":\"date\",\"size\":\"3\",\"position\":\"3\"},{\"title\":\"Travelers\",\"title_ja\":null,\"title_egy\":null,\"field\":\"seat_type\",\"size\":\"3\",\"position\":\"4\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(154, 'boat_page_search_title', 'boat', 'Search for boat', NULL, NULL, NULL, NULL, NULL, NULL),
(155, 'boat_page_limit_item', 'boat', '9', NULL, NULL, NULL, NULL, NULL, NULL),
(156, 'boat_page_search_banner', 'boat', '237', NULL, NULL, NULL, NULL, NULL, NULL),
(157, 'boat_layout_search', 'boat', 'normal', NULL, NULL, NULL, NULL, NULL, NULL),
(158, 'boat_enable_review', 'boat', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(159, 'boat_review_approved', 'boat', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(160, 'boat_review_stats', 'boat', '[{\"title\":\"Equipment\"},{\"title\":\"Comfortable\"},{\"title\":\"Climate Control\"},{\"title\":\"Facility\"},{\"title\":\"Aftercare\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(161, 'boat_booking_buyer_fees', 'boat', '[{\"name\":\"Equipment fee\",\"desc\":\"One-time fee charged by host to cover the cost of cleaning their space.\",\"name_ja\":\"\\u30af\\u30ea\\u30fc\\u30cb\\u30f3\\u30b0\\u4ee3\",\"desc_ja\":\"\\u30b9\\u30da\\u30fc\\u30b9\\u3092\\u6383\\u9664\\u3059\\u308b\\u8cbb\\u7528\\u3092\\u30db\\u30b9\\u30c8\\u304c\\u8acb\\u6c42\\u3059\\u308b1\\u56de\\u9650\\u308a\\u306e\\u6599\\u91d1\\u3002\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Facility fee\",\"desc\":\"This helps us run our platform and offer services like 24\\/7 support on your trip.\",\"name_ja\":\"\\u30b5\\u30fc\\u30d3\\u30b9\\u6599\",\"desc_ja\":\"\\u3053\\u308c\\u306b\\u3088\\u308a\\u3001\\u5f53\\u793e\\u306e\\u30d7\\u30e9\\u30c3\\u30c8\\u30d5\\u30a9\\u30fc\\u30e0\\u3092\\u5b9f\\u884c\\u3057\\u3001\\u65c5\\u884c\\u4e2d\\u306b\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(162, 'boat_map_search_fields', 'boat', '[{\"field\":\"location\",\"attr\":null,\"position\":\"1\"},{\"field\":\"attr\",\"attr\":\"14\",\"position\":\"2\"},{\"field\":\"date\",\"attr\":null,\"position\":\"3\"},{\"field\":\"price\",\"attr\":null,\"position\":\"4\"},{\"field\":\"advance\",\"attr\":null,\"position\":\"5\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(163, 'boat_search_fields', 'boat', '[{\"title\":\"Location\",\"field\":\"location\",\"size\":\"6\",\"position\":\"1\"},{\"title\":\"Start Date\",\"field\":\"date\",\"size\":\"6\",\"position\":\"2\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(164, 'MT_update_to_130', NULL, '1.3.0', NULL, NULL, NULL, NULL, '2023-12-13 01:01:53', '2023-12-13 01:01:53'),
(165, 'update_to_110', NULL, '1', NULL, NULL, NULL, NULL, '2023-12-13 01:01:54', '2023-12-13 01:01:54'),
(166, 'update_to_120', NULL, '1', NULL, NULL, NULL, NULL, '2023-12-13 01:01:54', '2023-12-13 01:01:54'),
(167, 'update_to_130', NULL, '1', NULL, NULL, NULL, NULL, '2023-12-13 01:01:54', '2023-12-13 01:01:54'),
(168, 'update_to_140', NULL, '1', NULL, NULL, NULL, NULL, '2023-12-13 01:01:54', '2023-12-13 01:01:54'),
(169, 'update_to_150', NULL, '1', NULL, NULL, NULL, NULL, '2023-12-13 01:01:54', '2023-12-13 01:01:54'),
(170, 'update_to_151', NULL, '1', NULL, NULL, NULL, NULL, '2023-12-13 01:01:54', '2023-12-13 01:01:54'),
(171, 'update_to_160', NULL, '1', NULL, NULL, NULL, NULL, '2023-12-13 01:01:54', '2023-12-13 01:01:54'),
(172, 'booking_enquiry_enable_mail_to_vendor_content', 'enquiry', '<h3>Hello [vendor_name]</h3>\r\n                        <p>You get new inquiry request from [email]</p>\r\n                        <p>Name :[name]</p>\r\n                        <p>Emai:[email]</p>\r\n                        <p>Phone:[phone]</p>\r\n                        <p>Content:[note]</p>\r\n                        <p>Service:[service_link]</p>\r\n                        <p>Regards,</p>\r\n                        <p>Booking Core</p>\r\n                        </div>', NULL, NULL, NULL, NULL, NULL, NULL),
(173, 'booking_enquiry_enable_mail_to_admin_content', 'enquiry', '<h3>Hello Administrator</h3>\r\n                        <p>You get new inquiry request from [email]</p>\r\n                        <p>Name :[name]</p>\r\n                        <p>Emai:[email]</p>\r\n                        <p>Phone:[phone]</p>\r\n                        <p>Content:[note]</p>\r\n                        <p>Service:[service_link]</p>\r\n                        <p>Vendor:[vendor_link]</p>\r\n                        <p>Regards,</p>\r\n                        <p>Booking Core</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(174, 'update_to_170', NULL, '1', NULL, NULL, NULL, NULL, '2023-12-13 01:01:54', '2023-12-13 01:01:54'),
(175, 'wallet_credit_exchange_rate', NULL, '1', NULL, NULL, NULL, NULL, '2023-12-13 01:01:54', '2023-12-13 01:01:54'),
(176, 'wallet_deposit_rate', NULL, '1', NULL, NULL, NULL, NULL, '2023-12-13 01:01:54', '2023-12-13 01:01:54'),
(177, 'wallet_deposit_type', NULL, 'list', NULL, NULL, NULL, NULL, '2023-12-13 01:01:54', '2023-12-13 01:01:54'),
(178, 'wallet_deposit_lists', NULL, '[{\"name\":\"100$\",\"amount\":100,\"credit\":100},{\"name\":\"Bonus 10%\",\"amount\":500,\"credit\":550},{\"name\":\"Bonus 15%\",\"amount\":1000,\"credit\":1150}]', NULL, NULL, NULL, NULL, '2023-12-13 01:01:54', '2023-12-13 01:01:54'),
(179, 'wallet_new_deposit_admin_subject', NULL, 'New credit purchase', NULL, NULL, NULL, NULL, '2023-12-13 01:01:54', '2023-12-13 01:01:54'),
(180, 'wallet_new_deposit_admin_content', NULL, '\r\n            <h1>Hello [first_name]!</h1>\r\n            <p>New order has been made:</p>\r\n            <p>User ID: [create_user]</p>\r\n            <p>Amount: [amount]</p>\r\n            <p>Credit: [credit]</p>\r\n            <p>Gateway: [payment_gateway]</p>\r\n            <p>Regards,<br>My Travel</p>', NULL, NULL, NULL, NULL, '2023-12-13 01:01:54', '2023-12-13 01:01:54'),
(181, 'wallet_new_deposit_customer_subject', NULL, 'Thank you for your purchasing', NULL, NULL, NULL, NULL, '2023-12-13 01:01:54', '2023-12-13 01:01:54'),
(182, 'wallet_new_deposit_customer_content', NULL, '\r\n            <h1>Hello [first_name]!</h1>\r\n            <p>New order has been made:</p>\r\n            <p>User ID: [create_user]</p>\r\n            <p>Amount: [amount]</p>\r\n            <p>Credit: [credit]</p>\r\n            <p>Gateway: [payment_gateway]</p>\r\n            <p>Regards,<br>My Travel</p>', NULL, NULL, NULL, NULL, '2023-12-13 01:01:54', '2023-12-13 01:01:54'),
(183, 'wallet_update_deposit_admin_subject', NULL, 'Credit purchase updated', NULL, NULL, NULL, NULL, '2023-12-13 01:01:54', '2023-12-13 01:01:54'),
(184, 'wallet_update_deposit_admin_content', NULL, '\r\n            <h1>Hello [first_name]!</h1>\r\n            <p>Order has been updated:</p>\r\n            <p>Order Status: <strong>[status_name]</strong></p>\r\n            <p>User ID: [create_user]</p>\r\n            <p>Amount: [amount]</p>\r\n            <p>Credit: [credit]</p>\r\n            <p>Gateway: [payment_gateway]</p>\r\n            <p>Regards,<br>My Travel</p>', NULL, NULL, NULL, NULL, '2023-12-13 01:01:54', '2023-12-13 01:01:54'),
(185, 'wallet_update_deposit_customer_subject', NULL, 'Your credit purchase updated', NULL, NULL, NULL, NULL, '2023-12-13 01:01:54', '2023-12-13 01:01:54'),
(186, 'wallet_update_deposit_customer_content', NULL, '\r\n            <h1>Hello [first_name]!</h1>\r\n            <p>Order has been updated:</p>\r\n            <p>Order Status: <strong>[status_name]</strong></p>\r\n            <p>User ID: [create_user]</p>\r\n            <p>Amount: [amount]</p>\r\n            <p>Credit: [credit]</p>\r\n            <p>Gateway: [payment_gateway]</p>\r\n            <p>Regards,<br>My Travel</p>', NULL, NULL, NULL, NULL, '2023-12-13 01:01:54', '2023-12-13 01:01:54'),
(187, 'update_to_182', NULL, '1', NULL, NULL, NULL, NULL, '2023-12-13 01:01:54', '2023-12-13 01:01:54'),
(188, 'update_to_190', NULL, '1', NULL, NULL, NULL, NULL, '2023-12-13 01:01:54', '2023-12-13 01:01:54'),
(189, 'update_to_200', NULL, '2.0.9', NULL, NULL, NULL, NULL, '2023-12-13 01:01:55', '2023-12-13 01:01:55'),
(190, 'update_to_210', NULL, '2.1.0', NULL, NULL, NULL, NULL, '2023-12-13 01:01:55', '2023-12-13 01:01:55'),
(191, 'search_open_tab', NULL, 'current_tab', NULL, NULL, NULL, NULL, '2023-12-13 01:01:56', '2023-12-13 01:01:56'),
(192, 'map_clustering', NULL, 'on', NULL, NULL, NULL, NULL, '2023-12-13 01:01:56', '2023-12-13 01:01:56'),
(193, 'map_fit_bounds', NULL, 'on', NULL, NULL, NULL, NULL, '2023-12-13 01:01:56', '2023-12-13 01:01:56'),
(194, 'update_to_220', NULL, '2.2.0.1', NULL, NULL, NULL, NULL, '2023-12-13 01:01:56', '2023-12-13 01:01:56'),
(195, 'update_to_230', NULL, '2.3.0', NULL, NULL, NULL, NULL, '2023-12-13 01:01:56', '2023-12-13 01:01:56'),
(196, 'update_to_240', NULL, '1.0.6', NULL, NULL, NULL, NULL, '2023-12-13 01:01:57', '2023-12-13 01:01:57'),
(197, 'user_role', NULL, '3', NULL, NULL, NULL, NULL, '2023-12-13 01:01:57', '2023-12-13 01:01:57'),
(198, 'user_plans_page_title', NULL, 'Pricing Packages', NULL, NULL, NULL, NULL, '2023-12-13 01:01:57', '2023-12-13 01:01:57'),
(199, 'user_plans_page_sub_title', NULL, 'Choose your pricing plan', NULL, NULL, NULL, NULL, '2023-12-13 01:01:57', '2023-12-13 01:01:57'),
(200, 'user_plans_sale_text', NULL, 'Save up to 10%', NULL, NULL, NULL, NULL, '2023-12-13 01:01:57', '2023-12-13 01:01:57'),
(201, 'booking_enquiry_type_hotel', NULL, 'booking_and_enquiry', NULL, NULL, NULL, NULL, '2023-12-13 01:01:57', '2023-12-13 01:01:57'),
(202, 'booking_enquiry_type_tour', NULL, 'booking_and_enquiry', NULL, NULL, NULL, NULL, '2023-12-13 01:01:57', '2023-12-13 01:01:57'),
(203, 'booking_enquiry_type_space', NULL, 'booking_and_enquiry', NULL, NULL, NULL, NULL, '2023-12-13 01:01:57', '2023-12-13 01:01:57'),
(204, 'booking_enquiry_type_car', NULL, 'booking_and_enquiry', NULL, NULL, NULL, NULL, '2023-12-13 01:01:57', '2023-12-13 01:01:57'),
(205, 'booking_enquiry_type_event', NULL, 'booking_and_enquiry', NULL, NULL, NULL, NULL, '2023-12-13 01:01:57', '2023-12-13 01:01:57'),
(206, 'booking_enquiry_type_boat', NULL, 'booking_and_enquiry', NULL, NULL, NULL, NULL, '2023-12-13 01:01:57', '2023-12-13 01:01:57'),
(207, 'update_to_250', NULL, '1.5.5', NULL, NULL, NULL, NULL, '2023-12-13 01:01:57', '2023-12-13 01:01:57'),
(208, 'update_to_300', NULL, '1.4', NULL, NULL, NULL, NULL, '2023-12-13 01:01:57', '2023-12-13 01:01:57'),
(209, 'update_to_310', NULL, '1.1', NULL, NULL, NULL, NULL, '2023-12-13 01:01:57', '2023-12-13 01:01:57');

-- --------------------------------------------------------

--
-- Table structure for table `core_subscribers`
--

DROP TABLE IF EXISTS `core_subscribers`;
CREATE TABLE IF NOT EXISTS `core_subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_subscribers`
--

INSERT INTO `core_subscribers` (`id`, `email`, `first_name`, `last_name`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'admin@mytravel.test', NULL, NULL, NULL, NULL, NULL, '2023-12-18 09:38:51', '2023-12-18 09:38:51');

-- --------------------------------------------------------

--
-- Table structure for table `core_tags`
--

DROP TABLE IF EXISTS `core_tags`;
CREATE TABLE IF NOT EXISTS `core_tags` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `create_user` varchar(255) DEFAULT NULL,
  `update_user` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_tags`
--

INSERT INTO `core_tags` (`id`, `name`, `slug`, `content`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'park', 'park', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(2, 'National park', 'national-park', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(3, 'Moutain', 'moutain', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(4, 'Travel', 'travel', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(5, 'Summer', 'summer', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37'),
(6, 'Walking', 'walking', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-13 01:01:37', '2023-12-13 01:01:37');

-- --------------------------------------------------------

--
-- Table structure for table `core_tag_translations`
--

DROP TABLE IF EXISTS `core_tag_translations`;
CREATE TABLE IF NOT EXISTS `core_tag_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `core_tag_translations_locale_index` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_templates`
--

DROP TABLE IF EXISTS `core_templates`;
CREATE TABLE IF NOT EXISTS `core_templates` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_templates`
--

INSERT INTO `core_templates` (`id`, `title`, `content`, `type_id`, `create_user`, `update_user`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'Home Page', '[{\"type\":\"form_search_all_service\",\"name\":\"Form Search All Service\",\"model\":{\"service_types\":[\"hotel\",\"space\",\"tour\",\"car\",\"event\",\"flight\",\"boat\"],\"title\":\"Let\'s The World Together!\",\"sub_title\":\"Find awesome hotel, tour, car and activities in London\",\"bg_image\":16,\"style\":\"\",\"list_slider\":[],\"title_for_car\":\"\",\"title_for_event\":\"\",\"title_for_space\":\"\",\"title_for_hotel\":\"\",\"title_for_tour\":\"\",\"hide_form_search\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_locations\",\"name\":\"List Locations\",\"model\":{\"service_type\":[\"space\",\"hotel\",\"tour\"],\"title\":\"Top Destinations\",\"desc\":\"It is a long established fact that a reader\",\"number\":6,\"layout\":\"style_1\",\"order\":\"id\",\"order_by\":\"asc\",\"to_location_detail\":\"\",\"custom_ids\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_all_service\",\"name\":\"List All Service\",\"model\":{\"title_for_car\":\"\",\"title_for_event\":\"\",\"title_for_space\":\"\",\"title_for_hotel\":\"\",\"title_for_tour\":\"\",\"service_types\":[\"hotel\",\"space\",\"tour\",\"event\",\"car\"],\"title\":\"Trending\",\"style\":\"\",\"number\":\"\",\"order\":\"id\",\"order_by\":\"asc\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"call_to_action\",\"name\":\"Call To Action\",\"model\":{\"title\":\"Travel Tips\",\"sub_title\":\"Northern Ireland’s is now contingent. Britain is getting a divorce Northern Ireland is being offered a trial separation for Britain there is a one\",\"link_title\":\"Get Inspired\",\"link_more\":\"#\",\"style\":\"\",\"bg_color\":\"\",\"bg_image\":195},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"box_category_tour\",\"name\":\"Tour: Box Category\",\"model\":{\"title\":\"Top activity\",\"desc\":\"One way to vertically center is to use my-auto\",\"list_item\":[{\"_active\":true,\"category_id\":\"4\",\"image_id\":189},{\"_active\":true,\"category_id\":\"3\",\"image_id\":190},{\"_active\":true,\"category_id\":\"2\",\"image_id\":191},{\"_active\":true,\"category_id\":\"1\",\"image_id\":192}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_tours\",\"name\":\"Tour: List Items\",\"model\":{\"title\":\"Trending Tour\",\"desc\":\"One way to vertically center is to use my-auto\",\"number\":4,\"style\":\"\",\"category_id\":\"\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_hotel\",\"name\":\"Hotel: List Items\",\"model\":{\"title\":\"Recommended Hotels\",\"desc\":\"One way to vertically center is to use my-auto\",\"number\":4,\"style\":\"\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_space\",\"name\":\"Space: List Items\",\"model\":{\"title\":\"Trending Space\",\"number\":4,\"style\":\"\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\",\"is_featured\":\"\",\"desc\":\"One way to vertically center is to use my-auto\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"testimonial\",\"name\":\"List Testimonial\",\"model\":{\"title\":\"Our Happy\",\"list_item\":[{\"_active\":true,\"name\":\"Ali Tufan \",\"desc\":\"This is the 3rd time I’ve used Travelo website and telling you the truth their services are always realiable and it only takes few minutes to plan and finalize\",\"number_star\":null,\"avatar\":1,\"position\":\"Client\"},{\"_active\":true,\"name\":\"Augusta Silva\",\"desc\":\"This is the 3rd time I’ve used Travelo website and telling you the truth their services are always realiable and it only takes few minutes to plan and finalize\",\"position\":\"Client\",\"avatar\":2},{\"_active\":true,\"name\":\"Jessica Brown\",\"desc\":\"This is the 3rd time I’ve used Travelo website and telling you the truth their services are always realiable and it only takes few minutes to plan and finalize\",\"position\":\"Client\",\"avatar\":3}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_car\",\"name\":\"Car: List Items\",\"model\":{\"title\":\"Trending Car\",\"number\":4,\"style\":\"\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\",\"is_featured\":\"\",\"desc\":\"One way to vertically center is to use my-auto\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_event\",\"name\":\"Event: List Items\",\"model\":{\"title\":\"Popular Event\",\"number\":4,\"style\":\"\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\",\"is_featured\":\"\",\"desc\":\"One way to vertically center is to use my-auto\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_featured_item\",\"name\":\"List Featured Item\",\"model\":{\"title\":\"Why Choose\",\"list_item\":[{\"_active\":true,\"title\":\"Competitive Pricing\",\"link\":\"#\",\"sub_title\":\"With 500+ suppliers and the purchasing power of 300 million members, mytravel.com can save you more!\",\"icon\":\"flaticon-price \",\"icon_image\":null,\"order\":null},{\"_active\":true,\"title\":\"Award-Winning Service\",\"sub_title\":\"Travel worry-free knowing that we\'re here if you needus, 24 hours a day\",\"link\":\"#\",\"icon_image\":null,\"icon\":\"flaticon-medal\",\"order\":null},{\"_active\":true,\"title\":\"Worldwide Coverage\",\"sub_title\":\"Over 1,200,000 hotels in more than 200 countries and regions & flights to over 5,000 cities\",\"link\":\"#\",\"icon_image\":null,\"icon\":\"flaticon-global-1\",\"order\":null}],\"style\":\"style_2\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_news\",\"name\":\"News: List Items\",\"model\":{\"title\":\"Today\'s Top Deals\",\"number\":4,\"category_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', NULL, 1, NULL, NULL, NULL, '2023-12-13 01:01:36', NULL),
(2, 'Become a vendor', '[{\"type\":\"breadcrumb_section\",\"name\":\"Breadcrumb Section\",\"model\":{\"title\":\"Become Local Expert\",\"sub_title\":\"About\",\"bg_image\":206},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_featured_item\",\"name\":\"List Featured Item\",\"model\":{\"list_item\":[{\"_active\":true,\"title\":\"Sign up\",\"sub_title\":\"Click edit button to change this text  to change this text\",\"icon_image\":207,\"order\":null},{\"_active\":true,\"title\":\" Add your services\",\"sub_title\":\" Click edit button to change this text  to change this text\",\"icon_image\":208,\"order\":null},{\"_active\":true,\"title\":\"Get bookings\",\"sub_title\":\" Click edit button to change this text  to change this text\",\"icon_image\":209,\"order\":null}],\"style\":\"\",\"title\":\"How it Works\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"video_player\",\"name\":\"Video Player\",\"model\":{\"title\":\"Travelling Highlights\",\"youtube\":\"https://www.youtube.com/watch?v=hHUbLv4ThOo\",\"bg_image\":210,\"sub_title\":\"Your New Travelling Idea\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_featured_item\",\"name\":\"List Featured Item\",\"model\":{\"list_item\":[{\"_active\":true,\"title\":\"Competitive Pricing\",\"sub_title\":\"With 500+ suppliers and the purchasing power of 300 million members, mytravel.com can save you more!\",\"icon_image\":\"\",\"order\":null,\"icon\":\"flaticon-price\",\"link\":\"\"},{\"_active\":true,\"title\":\"Award-Winning Service\",\"sub_title\":\"Travel worry-free knowing that we\'re here if you needus, 24 hours a day\",\"icon_image\":\"\",\"order\":null,\"icon\":\"flaticon-medal\"},{\"_active\":true,\"title\":\"Worldwide Coverage\",\"sub_title\":\"Over 1,200,000 hotels in more than 200 countries and regions & flights to over 5,000 cities\",\"icon_image\":\"\",\"order\":null,\"icon\":\"flaticon-global-1\"}],\"style\":\"style_2\",\"title\":\"Why be a Local Expert\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"vendor_register_form\",\"name\":\"Vendor Register Form\",\"model\":{\"title\":\"Become a vendor\",\"desc\":\"Join our community to unlock your greatest asset and welcome paying guests into your home.\",\"youtube\":\"https://www.youtube.com/watch?v=AmZ0WrEaf34\",\"bg_image\":211},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', NULL, 1, NULL, NULL, NULL, '2023-12-13 01:01:36', NULL),
(3, 'Home Hotel', '[{\"type\":\"form_search_all_service\",\"name\":\"Form Search All Service\",\"model\":{\"title_for_car\":\"\",\"title_for_event\":\"\",\"title_for_flight\":\"\",\"title_for_hotel\":\"\",\"title_for_space\":\"\",\"title_for_tour\":\"\",\"service_types\":[\"hotel\"],\"title\":\"Find Your Ideal Hotel and Compare Prices\",\"sub_title\":\"Check out the best deals on over 2,000,000 hotels worldwide\",\"style\":\"\",\"bg_image\":212,\"hide_form_search\":\"\",\"single_form_search\":true},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_hotel\",\"name\":\"Hotel: List Items\",\"model\":{\"title\":\"Most Popular Hotels\",\"desc\":\"\",\"number\":20,\"style\":\"style_2\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"desc\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_locations\",\"name\":\"List Locations\",\"model\":{\"service_type\":[\"hotel\"],\"title\":\"Top Destinations\",\"number\":6,\"layout\":\"style_2\",\"order\":\"id\",\"order_by\":\"asc\",\"custom_ids\":\"\",\"to_location_detail\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"call_to_action\",\"name\":\"Call To Action\",\"model\":{\"title\":\"Enjoy Summer Deals\",\"sub_title\":\"Up to 40% Discount!\",\"link_title\":\"Learn more\",\"link_more\":\"#\",\"style\":\"\",\"bg_image\":213},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_services_by_location\",\"name\":\"List Services By Location\",\"model\":{\"service_types\":\"hotel\",\"title\":\"Recommended Hotels\",\"sub_title\":\"\",\"style\":\"\",\"bg_image\":\"\",\"hide_form_search\":\"\",\"location_id\":[1,2,3,4,5,6,7]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_featured_item\",\"name\":\"List Featured Item\",\"model\":{\"title\":\"Why Choose\",\"list_item\":[{\"_active\":true,\"title\":\"Competitive Pricing\",\"sub_title\":\"With 500+ suppliers and the purchasing power of 300 million members, mytravel.com can save you more!\",\"link\":\"#\",\"icon_image\":null,\"icon\":\"flaticon-price\",\"order\":null},{\"_active\":true,\"title\":\"Award-Winning Service\",\"sub_title\":\"Travel worry-free knowing that we are here if you needus, 24 hours a day\",\"link\":\"#\",\"icon_image\":null,\"icon\":\"flaticon-medal\",\"order\":null},{\"_active\":true,\"title\":\"Worldwide Coverage\",\"sub_title\":\"Over 1,200,000 hotels in more than 200 countries and regions & flights to over 5,000 cities\",\"link\":\"#\",\"icon_image\":null,\"icon\":\"flaticon-global-1\",\"order\":null}],\"style\":\"style_2\",\"border_none\":true},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', NULL, 1, NULL, NULL, NULL, '2023-12-13 01:01:36', NULL),
(4, 'Home Tour', '[{\"type\":\"form_search_all_service\",\"name\":\"Form Search All Service\",\"model\":{\"title_for_car\":\"\",\"title_for_event\":\"\",\"title_for_flight\":\"\",\"title_for_hotel\":\"\",\"title_for_space\":\"\",\"title_for_tour\":\"\",\"service_types\":[\"tour\"],\"title\":\"Find Next Place To Visit\",\"sub_title\":\"Discover amzaing places at exclusive deals\",\"style\":\"\",\"bg_image\":214,\"hide_form_search\":\"\",\"single_form_search\":true},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_featured_item\",\"name\":\"List Featured Item\",\"model\":{\"title\":\"\",\"list_item\":[{\"_active\":true,\"title\":\"2.000 +Destinations\",\"sub_title\":\"Our expert team handpicked all destinations in this site\",\"link\":\"#\",\"icon_image\":null,\"icon\":\"flaticon-placeholder-2\",\"order\":null},{\"_active\":true,\"title\":\" Best Price Guarantee\",\"sub_title\":\"Price match within 48 hours of order confirmation\",\"link\":\"#\",\"icon_image\":null,\"icon\":\"flaticon-price-1\",\"order\":null},{\"_active\":true,\"title\":\"Top Notch Support\",\"sub_title\":\"We are here to help, before, during, and even after your trip.\",\"link\":\"#\",\"icon_image\":null,\"icon\":\"flaticon-customer-service\",\"order\":null}],\"style\":\"style_3\",\"border_none\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_locations\",\"name\":\"List Locations\",\"model\":{\"service_type\":[\"tour\"],\"title\":\"Popular Destination\",\"number\":7,\"layout\":\"style_3\",\"order\":\"id\",\"order_by\":\"asc\",\"custom_ids\":\"\",\"to_location_detail\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_tours\",\"name\":\"Tour: List Items\",\"model\":{\"title\":\"Popular Tours\",\"desc\":\"\",\"number\":20,\"style\":\"style_2\",\"category_id\":\"\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"desc\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"video_player\",\"name\":\"Video Player\",\"model\":{\"title\":\"Travelling Highlights\",\"sub_title\":\"Your New Travelling Idea\",\"youtube\":\"https://www.youtube.com/watch?v=hHUbLv4ThOo\",\"bg_image\":210,\"bg_gradient\":\"gradient_overlay_half_bg_blue_light\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"testimonial\",\"name\":\"List Testimonial\",\"model\":{\"title\":\"Customer Reviews\",\"list_item\":[{\"_active\":true,\"name\":\"Jessica Brown\",\"desc\":\"This is the 3rd time I’ve used Travelo website and telling you the truth their services are always realiable and it only takes few minutes to plan and finalize\",\"position\":\"client\",\"avatar\":215},{\"_active\":true,\"name\":\"Augusta Silva\",\"desc\":\"This is the 3rd time I’ve used Travelo website and telling you the truth their services are always realiable and it only takes few minutes to plan and finalize\",\"position\":\"client\",\"avatar\":216},{\"_active\":true,\"name\":\"Ali Tufan\",\"desc\":\"This is the 3rd time I’ve used Travelo website and telling you the truth their services are always realiable and it only takes few minutes to plan and finalize\",\"position\":\"client\",\"avatar\":217},{\"_active\":true,\"name\":\"Jessica Brown\",\"desc\":\"This is the 3rd time I’ve used Travelo website and telling you the truth their services are always realiable and it only takes few minutes to plan and finalize\",\"position\":\"client\",\"avatar\":215},{\"_active\":true,\"name\":\"Ali Tufan\",\"desc\":\"This is the 3rd time I’ve used Travelo website and telling you the truth their services are always realiable and it only takes few minutes to plan and finalize\",\"position\":\"client\",\"avatar\":216},{\"_active\":true,\"name\":\"Augusta Silva\",\"desc\":\"This is the 3rd time I’ve used Travelo website and telling you the truth their services are always realiable and it only takes few minutes to plan and finalize\",\"position\":\"client\",\"avatar\":217}],\"style\":\"style_2\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_news\",\"name\":\"News: List Items\",\"model\":{\"title\":\"Recent Article\",\"number\":3,\"category_id\":\"\",\"order\":\"id\",\"order_by\":\"desc\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"brands_list\",\"name\":\"Brands List\",\"model\":{\"list_item\":[{\"_active\":true,\"title\":\"Expedia\",\"image_id\":218},{\"_active\":true,\"title\":\"American Airlines\",\"image_id\":219},{\"_active\":true,\"title\":\"Trip advisor\",\"image_id\":220},{\"_active\":true,\"title\":\"Carlson\",\"image_id\":221},{\"_active\":true,\"title\":\"booking.com\",\"image_id\":222}]},\"component\":\"RegularBlock\",\"open\":true}]', NULL, 1, NULL, NULL, NULL, '2023-12-13 01:01:37', NULL),
(5, 'Home Space', '[{\"type\":\"form_search_all_service\",\"name\":\"Form Search All Service\",\"model\":{\"title_for_car\":\"\",\"title_for_event\":\"\",\"title_for_flight\":\"\",\"title_for_hotel\":\"\",\"title_for_space\":\"\",\"title_for_tour\":\"\",\"service_types\":[\"space\"],\"title\":\"Find your next rental\",\"sub_title\":\"Book experiences you’ll want to tell the world about\",\"style\":\"\",\"bg_image\":223,\"hide_form_search\":\"\",\"single_form_search\":true},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"space_term_featured_box\",\"name\":\"Space: Term Featured Box\",\"model\":{\"title\":\"Find a Home Type\",\"term_space\":[\"15\",\"16\",\"17\",\"18\",\"35\",\"34\",\"33\",\"32\"]},\"component\":\"RegularBlock\",\"open\":true},{\"type\":\"list_space\",\"name\":\"Space: List Items\",\"model\":{\"title\":\"Trending Rental\",\"desc\":\"\",\"number\":20,\"style\":\"style_2\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"desc\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"call_to_action\",\"name\":\"Call To Action\",\"model\":{\"title\":\"Airbnb plus places to stay\",\"sub_title\":\"A selection of places to stay verified for quality and design\",\"link_title\":\"Explore Stays\",\"link_more\":\"#\",\"style\":\"\",\"bg_image\":225},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_locations\",\"name\":\"List Locations\",\"model\":{\"service_type\":[\"space\"],\"title\":\"Top Destination\",\"number\":20,\"layout\":\"style_4\",\"order\":\"id\",\"order_by\":\"desc\",\"custom_ids\":\"\",\"to_location_detail\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"testimonial\",\"name\":\"List Testimonial\",\"model\":{\"title\":\"Customer Reviews\",\"list_item\":[{\"_active\":true,\"name\":\"Jessica Brown\",\"desc\":\"This is the 3rd time I’ve used Travelo website and telling you the truth their services are always realiable and it only takes few minutes to plan and finalize\",\"position\":\"client\",\"avatar\":215},{\"_active\":true,\"name\":\"Augusta Silva\",\"desc\":\"This is the 3rd time I’ve used Travelo website and telling you the truth their services are always realiable and it only takes few minutes to plan and finalize\",\"position\":\"client\",\"avatar\":216},{\"_active\":true,\"name\":\"Ali Tufan\",\"desc\":\"This is the 3rd time I’ve used Travelo website and telling you the truth their services are always realiable and it only takes few minutes to plan and finalize\",\"position\":\"client\",\"avatar\":217},{\"_active\":true,\"name\":\"Jessica Brown\",\"desc\":\"This is the 3rd time I’ve used Travelo website and telling you the truth their services are always realiable and it only takes few minutes to plan and finalize\",\"position\":\"client\",\"avatar\":215},{\"_active\":true,\"name\":\"Ali Tufan\",\"desc\":\"This is the 3rd time I’ve used Travelo website and telling you the truth their services are always realiable and it only takes few minutes to plan and finalize\",\"position\":\"client\",\"avatar\":216},{\"_active\":true,\"name\":\"Augusta Silva\",\"desc\":\"This is the 3rd time I’ve used Travelo website and telling you the truth their services are always realiable and it only takes few minutes to plan and finalize\",\"position\":\"client\",\"avatar\":217}],\"style\":\"style_2\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', NULL, 1, NULL, NULL, NULL, '2023-12-13 01:01:37', NULL),
(6, 'Home Event', '[{\"type\":\"form_search_all_service\",\"name\":\"Form Search All Service\",\"model\":{\"title_for_car\":\"\",\"title_for_event\":\"\",\"title_for_flight\":\"\",\"title_for_hotel\":\"\",\"title_for_space\":\"\",\"title_for_tour\":\"\",\"service_types\":[\"event\"],\"title\":\"Love where you are going\",\"sub_title\":\"Book experiences you’ll want to tell the world about\",\"style\":\"\",\"bg_image\":226,\"hide_form_search\":\"\",\"single_form_search\":true},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"unmissable_destinations\",\"name\":\"Unmissable Destinations\",\"model\":{\"title\":\"Unmissable Destinations\",\"service_types\":\"event\",\"number_item\":\"\",\"location_name\":\"New York\",\"location_desc\":\"Take in the iconic skyline and visit the neighborhood hangouts that you’ve only ever seen on TV.\",\"bg_image\":227,\"location_btn\":\"Explore things to do\",\"location_link\":\"#\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"call_to_action\",\"name\":\"Call To Action\",\"model\":{\"title\":\"Who is the Local Expert?\",\"sub_title\":\"Morbi semper fames lobortis ac hac penatibus\",\"link_title\":\"Become Local Expert\",\"link_more\":\"#\",\"style\":\"\",\"bg_image\":228,\"bg_gradient\":\"gradient_overlay_half_bg_orange\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_event\",\"name\":\"Event: List Items\",\"model\":{\"title\":\"Popular Activities\",\"desc\":\"\",\"number\":\"\",\"style\":\"style_2\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"desc\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_locations\",\"name\":\"List Locations\",\"model\":{\"service_type\":[\"event\"],\"title\":\"Top Destination\",\"number\":10,\"layout\":\"style_5\",\"order\":\"id\",\"order_by\":\"desc\",\"custom_ids\":\"\",\"to_location_detail\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"testimonial\",\"name\":\"List Testimonial\",\"model\":{\"title\":\"Our Happy\",\"list_item\":[{\"_active\":true,\"name\":\"Ali Tufan \",\"desc\":\"This is the 3rd time I’ve used Travelo website and telling you the truth their services are always realiable and it only takes few minutes to plan and finalize\",\"number_star\":null,\"avatar\":1,\"position\":\"Client\"},{\"_active\":true,\"name\":\"Augusta Silva\",\"desc\":\"This is the 3rd time I’ve used Travelo website and telling you the truth their services are always realiable and it only takes few minutes to plan and finalize\",\"position\":\"Client\",\"avatar\":2},{\"_active\":true,\"name\":\"Jessica Brown\",\"desc\":\"This is the 3rd time I’ve used Travelo website and telling you the truth their services are always realiable and it only takes few minutes to plan and finalize\",\"position\":\"Client\",\"avatar\":3}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"brands_list\",\"name\":\"Brands List\",\"model\":{\"list_item\":[{\"_active\":true,\"title\":\"Expedia\",\"image_id\":218},{\"_active\":true,\"title\":\"American Airlines\",\"image_id\":219},{\"_active\":true,\"title\":\"Trip advisor\",\"image_id\":220},{\"_active\":true,\"title\":\"Carlson\",\"image_id\":221},{\"_active\":true,\"title\":\"booking.com\",\"image_id\":222}]},\"component\":\"RegularBlock\",\"open\":true}]', NULL, 1, NULL, NULL, NULL, '2023-12-13 01:01:37', NULL),
(7, 'Home Car', '[{\"type\":\"form_search_all_service\",\"name\":\"Form Search All Service\",\"model\":{\"title_for_car\":\"\",\"title_for_event\":\"\",\"title_for_flight\":\"\",\"title_for_hotel\":\"\",\"title_for_space\":\"\",\"title_for_tour\":\"\",\"service_types\":[\"car\"],\"title\":\"Discover The World With MyCars\",\"sub_title\":\"\",\"style\":\"\",\"bg_image\":229,\"hide_form_search\":\"\",\"single_form_search\":true},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"term_car\",\"name\":\"Car: List Term Items\",\"model\":{\"title\":\"Select by Category\",\"location_id\":\"\",\"number\":\"\",\"order\":\"\",\"order_by\":\"\",\"is_featured\":\"\",\"term_car\":[\"65\",\"66\",\"67\",\"68\",\"64\",\"63\",\"62\",\"61\"]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_car\",\"name\":\"Car: List Items\",\"model\":{\"title\":\"Top Hire Cars\",\"desc\":\"\",\"number\":20,\"style\":\"style_2\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"desc\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"call_to_action\",\"name\":\"Call To Action\",\"model\":{\"title\":\"Tell us where you would like to go.\",\"sub_title\":\"3,000+ VIP Transport Options!\",\"link_title\":\"Search Options\",\"link_more\":\"#\",\"style\":\"\",\"bg_image\":230,\"bg_gradient\":\"gradient_overlay_half_bg_dark\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_locations\",\"name\":\"List Locations\",\"model\":{\"service_type\":[\"car\"],\"title\":\"Top Destination\",\"number\":10,\"layout\":\"style_5\",\"order\":\"id\",\"order_by\":\"desc\",\"custom_ids\":\"\",\"to_location_detail\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_news\",\"name\":\"News: List Items\",\"model\":{\"title\":\"Recent Article\",\"number\":3,\"category_id\":\"\",\"order\":\"id\",\"order_by\":\"desc\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', NULL, 1, NULL, NULL, NULL, '2023-12-13 01:01:37', NULL),
(8, 'Home v2', '[{\"type\":\"form_search_all_service\",\"name\":\"Form Search All Service\",\"model\":{\"title_for_car\":\"\",\"title_for_event\":\"\",\"title_for_flight\":\"\",\"title_for_hotel\":\"\",\"title_for_space\":\"\",\"title_for_tour\":\"\",\"service_types\":[\"car\",\"event\",\"flight\",\"hotel\",\"space\",\"tour\"],\"title\":\"Let\'s The World Together!\",\"sub_title\":\"Find awesome hotel, tour, car and activities in London\",\"style\":\"style_2\",\"bg_image\":231,\"hide_form_search\":\"\",\"single_form_search\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_locations\",\"name\":\"List Locations\",\"model\":{\"service_type\":[\"car\",\"event\"],\"title\":\"Top Destination\",\"number\":10,\"layout\":\"style_5\",\"order\":\"id\",\"order_by\":\"asc\",\"custom_ids\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_all_service\",\"name\":\"List All Service\",\"model\":{\"title_for_car\":\"\",\"title_for_event\":\"\",\"title_for_hotel\":\"\",\"title_for_space\":\"\",\"title_for_tour\":\"\",\"service_types\":[\"car\",\"event\",\"hotel\",\"space\",\"tour\"],\"title\":\"Trending\",\"style\":\"\",\"number\":4,\"order\":\"id\",\"order_by\":\"asc\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"testimonial\",\"name\":\"List Testimonial\",\"model\":{\"title\":\"Our Happy\",\"list_item\":[{\"_active\":true,\"name\":\"Ali Tufan \",\"desc\":\"This is the 3rd time I’ve used Travelo website and telling you the truth their services are always realiable and it only takes few minutes to plan and finalize\",\"position\":\"Client\",\"avatar\":1},{\"_active\":true,\"name\":\"Augusta Silva\",\"desc\":\"This is the 3rd time I’ve used Travelo website and telling you the truth their services are always realiable and it only takes few minutes to plan and finalize\",\"position\":\"Client\",\"avatar\":2},{\"_active\":true,\"name\":\"Jessica Brown\",\"desc\":\"This is the 3rd time I’ve used Travelo website and telling you the truth their services are always realiable and it only takes few minutes to plan and finalize\",\"position\":\"Client\",\"avatar\":3}],\"style\":\"index\"},\"component\":\"RegularBlock\",\"open\":true},{\"type\":\"video_player\",\"name\":\"Video Player\",\"model\":{\"title\":\"Travel Viet Nam\",\"sub_title\":\"Hello Viet Nam | Wellcome To Paradise\",\"youtube\":\"https://www.youtube.com/watch?v=3FqtRWLlg9k\",\"bg_image\":228,\"bg_gradient\":\"gradient_overlay_half_bg_grayish_blue\"},\"component\":\"RegularBlock\",\"open\":true}]', NULL, 1, NULL, NULL, NULL, '2023-12-13 01:01:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `core_template_translations`
--

DROP TABLE IF EXISTS `core_template_translations`;
CREATE TABLE IF NOT EXISTS `core_template_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `core_template_translations_locale_index` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_translations`
--

DROP TABLE IF EXISTS `core_translations`;
CREATE TABLE IF NOT EXISTS `core_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `locale` varchar(10) DEFAULT NULL,
  `string` text DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `last_build_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_vendor_plans`
--

DROP TABLE IF EXISTS `core_vendor_plans`;
CREATE TABLE IF NOT EXISTS `core_vendor_plans` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `base_commission` int(11) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_vendor_plan_meta`
--

DROP TABLE IF EXISTS `core_vendor_plan_meta`;
CREATE TABLE IF NOT EXISTS `core_vendor_plan_meta` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `vendor_plan_id` int(11) NOT NULL,
  `post_type` varchar(255) DEFAULT NULL,
  `enable` tinyint(4) DEFAULT NULL,
  `maximum_create` int(11) DEFAULT NULL,
  `auto_publish` tinyint(4) DEFAULT NULL,
  `commission` int(11) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `location_category`
--

DROP TABLE IF EXISTS `location_category`;
CREATE TABLE IF NOT EXISTS `location_category` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `icon_class` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `_lft` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `_rgt` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `location_category__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `location_category`
--

INSERT INTO `location_category` (`id`, `name`, `icon_class`, `content`, `slug`, `status`, `_lft`, `_rgt`, `parent_id`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'Education', 'icofont-education', NULL, NULL, 'publish', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Health', 'fa fa-hospital-o', NULL, NULL, 'publish', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Transportation', 'fa fa-subway', NULL, NULL, 'publish', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `location_category_translations`
--

DROP TABLE IF EXISTS `location_category_translations`;
CREATE TABLE IF NOT EXISTS `location_category_translations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `origin_id` bigint(20) DEFAULT NULL,
  `locale` varchar(10) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `location_category_translations_origin_id_locale_unique` (`origin_id`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
CREATE TABLE IF NOT EXISTS `media_files` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `file_size` varchar(255) DEFAULT NULL,
  `file_type` varchar(255) DEFAULT NULL,
  `file_extension` varchar(255) DEFAULT NULL,
  `driver` varchar(255) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `app_id` int(11) DEFAULT NULL,
  `app_user_id` int(11) DEFAULT NULL,
  `file_width` int(11) DEFAULT NULL,
  `file_height` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `folder_id` bigint(20) DEFAULT 0,
  `author_id` bigint(20) DEFAULT NULL,
  `file_edit` tinyint(4) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_files`
--

INSERT INTO `media_files` (`id`, `file_name`, `file_path`, `file_size`, `file_type`, `file_extension`, `driver`, `create_user`, `update_user`, `deleted_at`, `app_id`, `app_user_id`, `file_width`, `file_height`, `created_at`, `updated_at`, `folder_id`, `author_id`, `file_edit`) VALUES
(1, 'avatar', 'mytravel/general/avatar.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(2, 'avatar-2', 'mytravel/general/avatar-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(3, 'avatar-3', 'mytravel/general/avatar-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(4, 'ico_adventurous', 'mytravel/general/ico_adventurous.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(5, 'ico_localguide', 'mytravel/general/ico_localguide.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(6, 'ico_maps', 'mytravel/general/ico_maps.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(7, 'ico_paymethod', 'mytravel/general/ico_paymethod.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(8, 'logo', 'mytravel/general/logo.svg', NULL, 'image/svg+xml', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(9, 'bg_contact', 'mytravel/general/bg-contact.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(10, 'favicon', 'mytravel/general/favicon.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(11, 'thumb-vendor-register', 'mytravel/general/thumb-vendor-register.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(12, 'bg-video-vendor-register1', 'mytravel/general/bg-video-vendor-register1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(13, 'ico_chat_1', 'mytravel/general/ico_chat_1.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(14, 'ico_friendship_1', 'mytravel/general/ico_friendship_1.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(15, 'ico_piggy-bank_1', 'mytravel/general/ico_piggy-bank_1.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(16, 'home-mix', 'mytravel/general/home-mix.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(17, 'image_home_mix_1', 'mytravel/general/image_home_mix_1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(18, 'image_home_mix_2', 'mytravel/general/image_home_mix_2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(19, 'image_home_mix_3', 'mytravel/general/image_home_mix_3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(20, 'banner-search', 'mytravel/tour/banner-search.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(21, 'tour-1', 'mytravel/tour/tour-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(22, 'tour-2', 'mytravel/tour/tour-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(23, 'tour-3', 'mytravel/tour/tour-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(24, 'tour-4', 'mytravel/tour/tour-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(25, 'tour-5', 'mytravel/tour/tour-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(26, 'tour-6', 'mytravel/tour/tour-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(27, 'tour-7', 'mytravel/tour/tour-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(28, 'tour-8', 'mytravel/tour/tour-8.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(29, 'tour-9', 'mytravel/tour/tour-9.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(30, 'tour-10', 'mytravel/tour/tour-10.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(31, 'tour-11', 'mytravel/tour/tour-11.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(32, 'tour-12', 'mytravel/tour/tour-12.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(33, 'tour-13', 'mytravel/tour/tour-13.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(34, 'tour-14', 'mytravel/tour/tour-14.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(35, 'tour-15', 'mytravel/tour/tour-15.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(36, 'tour-16', 'mytravel/tour/tour-16.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(37, 'gallery-1', 'mytravel/tour/gallery-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(38, 'gallery-2', 'mytravel/tour/gallery-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(39, 'gallery-3', 'mytravel/tour/gallery-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(40, 'gallery-4', 'mytravel/tour/gallery-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(41, 'gallery-5', 'mytravel/tour/gallery-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(42, 'gallery-6', 'mytravel/tour/gallery-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(43, 'gallery-7', 'mytravel/tour/gallery-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(44, 'banner-tour-1', 'mytravel/tour/banner-detail/banner-tour-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(45, 'banner-tour-2', 'mytravel/tour/banner-detail/banner-tour-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(46, 'banner-tour-3', 'mytravel/tour/banner-detail/banner-tour-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(47, 'banner-tour-4', 'mytravel/tour/banner-detail/banner-tour-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(48, 'banner-tour-5', 'mytravel/tour/banner-detail/banner-tour-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(49, 'banner-tour-6', 'mytravel/tour/banner-detail/banner-tour-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(50, 'banner-tour-7', 'mytravel/tour/banner-detail/banner-tour-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(51, 'banner-tour-8', 'mytravel/tour/banner-detail/banner-tour-8.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(52, 'banner-tour-9', 'mytravel/tour/banner-detail/banner-tour-9.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(53, 'banner-tour-10', 'mytravel/tour/banner-detail/banner-tour-10.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(54, 'banner-tour-11', 'mytravel/tour/banner-detail/banner-tour-11.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(55, 'banner-tour-12', 'mytravel/tour/banner-detail/banner-tour-12.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(56, 'banner-tour-13', 'mytravel/tour/banner-detail/banner-tour-13.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(57, 'banner-tour-14', 'mytravel/tour/banner-detail/banner-tour-14.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(58, 'banner-tour-15', 'mytravel/tour/banner-detail/banner-tour-15.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(59, 'banner-tour-16', 'mytravel/tour/banner-detail/banner-tour-16.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(60, 'banner-tour-17', 'mytravel/tour/banner-detail/banner-tour-17.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(61, 'banner-search-space', 'mytravel/space/banner-search-space.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(62, 'banner-search-space-2', 'mytravel/space/banner-search-space-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(63, 'space-1', 'mytravel/space/space-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(64, 'space-2', 'mytravel/space/space-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(65, 'space-3', 'mytravel/space/space-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(66, 'space-4', 'mytravel/space/space-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(67, 'space-5', 'mytravel/space/space-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(68, 'space-6', 'mytravel/space/space-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(69, 'space-7', 'mytravel/space/space-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(70, 'space-8', 'mytravel/space/space-8.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(71, 'space-9', 'mytravel/space/space-9.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(72, 'space-10', 'mytravel/space/space-10.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(73, 'space-11', 'mytravel/space/space-11.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(74, 'space-12', 'mytravel/space/space-12.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(75, 'space-13', 'mytravel/space/space-13.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(76, 'space-gallery-1', 'mytravel/space/gallery/space-gallery-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(77, 'space-gallery-2', 'mytravel/space/gallery/space-gallery-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(78, 'space-gallery-3', 'mytravel/space/gallery/space-gallery-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(79, 'space-gallery-4', 'mytravel/space/gallery/space-gallery-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(80, 'space-gallery-5', 'mytravel/space/gallery/space-gallery-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(81, 'space-gallery-6', 'mytravel/space/gallery/space-gallery-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(82, 'space-gallery-7', 'mytravel/space/gallery/space-gallery-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(83, 'space-single-1', 'mytravel/space/space-single-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(84, 'space-single-2', 'mytravel/space/space-single-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(85, 'space-single-3', 'mytravel/space/space-single-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(86, 'icon-space-box-1', 'mytravel/space/featured-box/icon-space-box-1.png', NULL, 'image/png', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(87, 'icon-space-box-2', 'mytravel/space/featured-box/icon-space-box-2.png', NULL, 'image/png', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(88, 'icon-space-box-3', 'mytravel/space/featured-box/icon-space-box-3.png', NULL, 'image/png', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(89, 'icon-space-box-4', 'mytravel/space/featured-box/icon-space-box-4.png', NULL, 'image/png', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(90, 'icon-space-box-5', 'mytravel/space/featured-box/icon-space-box-5.png', NULL, 'image/png', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(91, 'icon-space-box-6', 'mytravel/space/featured-box/icon-space-box-6.png', NULL, 'image/png', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(92, 'banner-search-hotel', 'mytravel/hotel/banner-search-hotel.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(93, 'hotel-featured-1', 'mytravel/hotel/hotel-featured-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(94, 'hotel-featured-2', 'mytravel/hotel/hotel-featured-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(95, 'hotel-featured-3', 'mytravel/hotel/hotel-featured-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(96, 'hotel-featured-4', 'mytravel/hotel/hotel-featured-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(97, 'hotel-gallery-1', 'mytravel/hotel/gallery/hotel-gallery-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(98, 'hotel-gallery-2', 'mytravel/hotel/gallery/hotel-gallery-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(99, 'hotel-gallery-3', 'mytravel/hotel/gallery/hotel-gallery-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(100, 'hotel-gallery-4', 'mytravel/hotel/gallery/hotel-gallery-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(101, 'hotel-gallery-5', 'mytravel/hotel/gallery/hotel-gallery-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(102, 'hotel-gallery-6', 'mytravel/hotel/gallery/hotel-gallery-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(103, 'hotel-icon-1', 'mytravel/hotel/hotel-icon-1.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(104, 'hotel-icon-2', 'mytravel/hotel/hotel-icon-2.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(105, 'hotel-icon-3', 'mytravel/hotel/hotel-icon-3.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(106, 'location-1', 'mytravel/location/location-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(107, 'location-2', 'mytravel/location/location-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(108, 'location-3', 'mytravel/location/location-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(109, 'location-4', 'mytravel/location/location-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(110, 'location-5', 'mytravel/location/location-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(111, 'banner-location-1', 'mytravel/location/banner-detail/banner-location-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(112, 'trip-idea-1', 'mytravel/location/trip-idea/trip-idea-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(113, 'trip-idea-2', 'mytravel/location/trip-idea/trip-idea-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(114, 'news-1', 'mytravel/news/news-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(115, 'news-2', 'mytravel/news/news-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(116, 'news-3', 'mytravel/news/news-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(117, 'news-4', 'mytravel/news/news-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(118, 'news-5', 'mytravel/news/news-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(119, 'news-6', 'mytravel/news/news-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(120, 'news-7', 'mytravel/news/news-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(121, 'news-banner', 'mytravel/news/news-banner.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(122, 'banner-search-car', 'mytravel/car/banner-search-car.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(123, 'Convertibles', 'mytravel/car/terms/convertibles.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(124, 'Coupes', 'mytravel/car/terms/couple.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(125, 'Hatchbacks', 'mytravel/car/terms/hatchback.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(126, 'Minivans', 'mytravel/car/terms/minivans.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(127, 'Sedan', 'mytravel/car/terms/sedan.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(128, 'SUVs', 'mytravel/car/terms/suv.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(129, 'Trucks', 'mytravel/car/terms/trucks.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(130, 'Wagons', 'mytravel/car/terms/wagons.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(131, 'home-car-bg-1', 'mytravel/car/home-car-bg-1.png', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(132, 'number-1', 'mytravel/car/number-1.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(133, 'number-2', 'mytravel/car/number-2.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(134, 'number-3', 'mytravel/car/number-3.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(135, 'banner-car-single', 'mytravel/car/banner-single.jpg', NULL, 'image/jpg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(136, 'Airbag', 'mytravel/car/feature/Airbag.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(137, 'FM Radio', 'mytravel/car/feature/Radio.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(138, 'Sensor', 'mytravel/car/feature/Sensor.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(139, 'Speed Km', 'mytravel/car/feature/Speed.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(140, 'Steering Wheel', 'mytravel/car/feature/Steering.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(141, 'Power Windows', 'mytravel/car/feature/Windows.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(142, 'car-1', 'mytravel/car/car-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(143, 'car-2', 'mytravel/car/car-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(144, 'car-3', 'mytravel/car/car-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(145, 'car-4', 'mytravel/car/car-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(146, 'car-5', 'mytravel/car/car-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(147, 'car-6', 'mytravel/car/car-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(148, 'car-7', 'mytravel/car/car-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(149, 'car-8', 'mytravel/car/car-8.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(150, 'car-9', 'mytravel/car/car-9.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(151, 'car-10', 'mytravel/car/car-10.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(152, 'car-11', 'mytravel/car/car-11.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(153, 'car-12', 'mytravel/car/car-12.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(154, 'car-gallery-1', 'mytravel/car/gallery-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(155, 'car-gallery-2', 'mytravel/car/gallery-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(156, 'car-gallery-3', 'mytravel/car/gallery-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(157, 'car-gallery-4', 'mytravel/car/gallery-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(158, 'car-gallery-5', 'mytravel/car/gallery-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(159, 'car-gallery-6', 'mytravel/car/gallery-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(160, 'car-gallery-7', 'mytravel/car/gallery-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(161, 'banner-search-event', 'mytravel/event/banner-search.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(162, 'event-1', 'mytravel/event/event-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(163, 'event-2', 'mytravel/event/event-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(164, 'event-3', 'mytravel/event/event-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(165, 'event-4', 'mytravel/event/event-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(166, 'event-5', 'mytravel/event/event-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(167, 'event-6', 'mytravel/event/event-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(168, 'event-7', 'mytravel/event/event-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(169, 'event-8', 'mytravel/event/event-8.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(170, 'event-9', 'mytravel/event/event-9.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(171, 'event-10', 'mytravel/event/event-10.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(172, 'event-11', 'mytravel/event/event-11.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(173, 'event-12', 'mytravel/event/event-12.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(174, 'gallery-event-1', 'mytravel/event/gallery-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(175, 'gallery-event-2', 'mytravel/event/gallery-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(176, 'gallery-event-3', 'mytravel/event/gallery-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(177, 'gallery-event-4', 'mytravel/event/gallery-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(178, 'gallery-event-5', 'mytravel/event/gallery-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(179, 'gallery-event-6', 'mytravel/event/gallery-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(180, 'banner-event-1', 'mytravel/event/banner-detail/banner-event-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(181, 'banner-event-2', 'mytravel/event/banner-detail/banner-event-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(182, 'banner-event-3', 'mytravel/event/banner-detail/banner-event-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(183, 'icon_global', 'mytravel/general/icon_global.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(184, 'icon_global_white', 'mytravel/general/icon_global_white.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(185, 'icon_price', 'mytravel/general/icon_price.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(186, 'icon_price_white', 'mytravel/general/icon_price_white.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(187, 'icon_support', 'mytravel/general/icon_support.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(188, 'icon_support_white', 'mytravel/general/icon_support_white.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(189, 'box-tour-1', 'mytravel/tour/box-tour-1.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(190, 'box-tour-2', 'mytravel/tour/box-tour-2.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(191, 'box-tour-3', 'mytravel/tour/box-tour-3.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(192, 'box-tour-4', 'mytravel/tour/box-tour-4.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(193, 'banner-new-1', 'mytravel/general/banner-new-1.jpg', NULL, 'image/jpg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(194, 'banner-new-2', 'mytravel/general/banner-new-2.jpg', NULL, 'image/jpg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(195, 'call-to-action-bg-1', 'mytravel/general/call-to-action-bg-1.jpg', NULL, 'image/jpg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(196, 'call-to-action-bg-2', 'mytravel/general/call-to-action-bg-2.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(197, 'call-to-action-bg-3', 'mytravel/general/call-to-action-bg-3.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(198, 'customer-feedback', 'mytravel/general/customer-feedback.jpg', NULL, 'image/jpg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(199, 'customer-feedback-2', 'mytravel/general/customer-feedback-2.jpg', NULL, 'image/jpg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(200, 'logo-white', 'mytravel/general/logo_white.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(201, 'location-6', 'mytravel/location/location-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(202, 'location-7', 'mytravel/location/location-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(203, 'location-8', 'mytravel/location/location-8.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(204, 'location-9', 'mytravel/location/location-9.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(205, 'location-10', 'mytravel/location/location-10.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(206, 'become-expert-1', 'mytravel/general/become-expert-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(207, 'become-expert-2', 'mytravel/general/become-expert-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(208, 'become-expert-3', 'mytravel/general/become-expert-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(209, 'become-expert-4', 'mytravel/general/become-expert-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(210, 'become-expert-5', 'mytravel/general/become-expert-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(211, 'thumb-vendor-register', 'mytravel/general/thumb-vendor-register.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(212, 'home-hotel-banner', 'mytravel/general/home-hotel-banner.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(213, 'call-to-action-bg-4', 'mytravel/general/call-to-action-bg-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(214, 'home-tour-banner', 'mytravel/general/home-tour-banner.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(215, 'avatar-4', 'mytravel/general/avatar-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(216, 'avatar-5', 'mytravel/general/avatar-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(217, 'avatar-6', 'mytravel/general/avatar-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(218, 'brand-1', 'mytravel/general/brand-1.png', NULL, 'image/jpeg', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(219, 'brand-2', 'mytravel/general/brand-2.png', NULL, 'image/jpeg', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(220, 'brand-3', 'mytravel/general/brand-3.png', NULL, 'image/jpeg', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(221, 'brand-4', 'mytravel/general/brand-4.png', NULL, 'image/jpeg', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(222, 'brand-5', 'mytravel/general/brand-5.png', NULL, 'image/jpeg', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(223, 'home-space-banner', 'mytravel/general/home-space-banner.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(224, 'bg-space-type', 'mytravel/space/bg-space-type.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(225, 'space-call-to-action', 'mytravel/space/space-call-to-action.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(226, 'home-event-banner', 'mytravel/general/home-event-banner.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(227, 'new-york', 'mytravel/general/new-york.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(228, 'call-to-action-bg-5', 'mytravel/general/call-to-action-bg-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(229, 'home-car-banner', 'mytravel/general/home-car-banner.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(230, 'call-to-action-bg-6', 'mytravel/general/call-to-action-bg-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(231, 'banner-home-2', 'mytravel/general/banner-home-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(232, 'banner-flight', 'demo/flight/banner-flight.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(233, 'airline-img1', 'demo/flight/airline/img1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(234, 'airline-img2', 'demo/flight/airline/img2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(235, 'airline-img3', 'demo/flight/airline/img3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(236, 'banner-boat-single', 'demo/boat/banner-single.jpg', NULL, 'image/jpg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(237, 'banner-search-boat', 'demo/boat/banner-search-boat.jpg', NULL, 'image/jpg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(238, 'boat-1', 'demo/boat/boat-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(239, 'boat-2', 'demo/boat/boat-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(240, 'boat-3', 'demo/boat/boat-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(241, 'boat-4', 'demo/boat/boat-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(242, 'boat-5', 'demo/boat/boat-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(243, 'boat-6', 'demo/boat/boat-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(244, 'boat-7', 'demo/boat/boat-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(245, 'boat-8', 'demo/boat/boat-8.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(246, 'boat-9', 'demo/boat/boat-9.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(247, 'boat-10', 'demo/boat/boat-10.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(248, 'boat-11', 'demo/boat/boat-11.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(249, 'boat-12', 'demo/boat/boat-12.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(250, 'boat-gallery-1', 'demo/boat/gallery-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(251, 'boat-gallery-2', 'demo/boat/gallery-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(252, 'boat-gallery-3', 'demo/boat/gallery-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(253, 'boat-gallery-4', 'demo/boat/gallery-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(254, 'boat-gallery-5', 'demo/boat/gallery-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0),
(255, 'boat-gallery-6', 'demo/boat/gallery-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
CREATE TABLE IF NOT EXISTS `media_folders` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `parent_id` bigint(20) DEFAULT 0,
  `user_id` bigint(20) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `media_folders_parent_id_name_unique` (`parent_id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_03_17_114820_create_table_core_pages', 1),
(5, '2019_03_17_140539_create_media_files_table', 1),
(6, '2019_03_20_072502_create_bravo_tours', 1),
(7, '2019_03_20_081256_create_core_news_category_table', 1),
(8, '2019_03_27_081940_create_core_setting_table', 1),
(9, '2019_03_28_101009_create_bravo_booking_table', 1),
(10, '2019_03_28_165911_create_booking_meta_table', 1),
(11, '2019_03_29_093236_update_bookings_table', 1),
(12, '2019_04_01_045229_create_user_meta_table', 1),
(13, '2019_04_01_150630_create_menu_table', 1),
(14, '2019_04_02_150630_create_core_news_table', 1),
(15, '2019_04_03_073553_bravo_tour_category', 1),
(16, '2019_04_03_080159_bravo_location', 1),
(17, '2019_04_05_143248_create_core_templates_table', 1),
(18, '2019_04_18_152537_create_bravo_tours_meta_table', 1),
(19, '2019_05_07_085430_create_core_languages_table', 1),
(20, '2019_05_07_085442_create_core_translations_table', 1),
(21, '2019_05_17_074008_create_bravo_review', 1),
(22, '2019_05_17_074048_create_bravo_review_meta', 1),
(23, '2019_05_17_113042_create_tour_attrs_table', 1),
(24, '2019_05_21_084235_create_bravo_contact_table', 1),
(25, '2019_05_28_152845_create_core_subscribers_table', 1),
(26, '2019_06_17_142338_bravo_seo', 1),
(27, '2019_07_03_070406_update_from_1_0_to_1_1', 1),
(28, '2019_07_08_075436_create_core_vendor_plans', 1),
(29, '2019_07_08_083733_create_vendors_plan_payments', 1),
(30, '2019_07_11_083501_update_from_110_to_120', 1),
(31, '2019_07_30_072809_create_flight_table', 1),
(32, '2019_07_30_072809_create_space_table', 1),
(33, '2019_07_30_072809_create_tour_dates_table', 1),
(34, '2019_08_05_031018_create_core_vendor_plan_meta_table', 1),
(35, '2019_08_09_163909_create_inbox_table', 1),
(36, '2019_08_16_094354_update_from_120_to_130', 1),
(37, '2019_08_19_000000_create_failed_jobs_table', 1),
(38, '2019_08_20_162106_create_table_user_upgrade_requests', 1),
(39, '2019_09_13_070650_update_from_130_to_140', 1),
(40, '2019_09_20_072809_create_hotel_table', 1),
(41, '2019_10_22_151319_create_car_table', 1),
(42, '2019_11_05_092516_update_from_140_to_150', 1),
(43, '2019_11_18_085024_update_from_150_to_151', 1),
(44, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(45, '2020_03_09_102753_update_from_151_to_160', 1),
(46, '2020_04_02_150631_create_core_tags_table', 1),
(47, '2020_04_05_101016_create_event_table', 1),
(48, '2020_05_16_073120_update_from_160_to_170', 1),
(49, '2020_11_23_092238_create_notifications_table', 1),
(50, '2021_03_19_102157_update_190', 1),
(51, '2021_03_19_102157_update_core_190', 1),
(52, '2021_04_02_150632_create_core_tag_new_table', 1),
(53, '2021_04_20_102158_update_from_190_to_200', 1),
(54, '2021_08_22_173931_create_role_table', 1),
(55, '2021_09_16_072809_create_coupon_table', 1),
(56, '2021_09_28_174324_create_jobs_table', 1),
(57, '2021_09_29_041836_create_user_plan_table', 1),
(58, '2021_10_26_151319_create_boat_table', 1),
(59, '2022_02_08_072809_create_popup_table', 1),
(60, '2022_02_14_134137_create_bravo_booking_payment_meta', 1),
(61, '2022_02_28_999999_add_active_status_to_users', 1),
(62, '2022_02_28_999999_add_dark_mode_to_users', 1),
(63, '2022_02_28_999999_add_messenger_color_to_users', 1),
(64, '2022_02_28_999999_create_favorites_table', 1),
(65, '2022_02_28_999999_create_messages_table', 1),
(66, '2022_03_01_002101_update_user_table', 1),
(67, '2022_03_15_040235_update_241_to_242', 1),
(68, '2022_03_23_042635_update_242_to_243', 1),
(69, '2022_03_24_035712_mytravel_custom_fields', 1),
(70, '2022_07_11_085656_create_enquiry_reply_table', 1),
(71, '2022_07_13_082318_create_media_folder_table', 1),
(72, '2022_07_25_132120_create_vendor_team', 1),
(73, '2022_07_31_132706_update_to_250', 1),
(74, '2022_10_19_140925_update_to_300', 1),
(75, '2023_01_05_095322_update_core_to_300', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
CREATE TABLE IF NOT EXISTS `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(191) NOT NULL,
  `notifiable_type` varchar(191) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `for_admin` tinyint(1) DEFAULT 0,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `for_admin`, `read_at`, `created_at`, `updated_at`) VALUES
('c0fb850f-58f8-4658-893a-83867484a570', 'App\\Notifications\\AdminChannelServices', 'App\\User', 1, '{\"id\":\"c0fb850f-58f8-4658-893a-83867484a570\",\"for_admin\":1,\"notification\":{\"id\":1,\"event\":\"UserSubscriberSubmit\",\"to\":\"admin\",\"name\":\"Someone\",\"avatar\":\"\",\"link\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/module\\/user\\/subscriber\",\"type\":\"subscriber\",\"message\":\"You have just gotten a new Subscriber\"}}', 1, NULL, '2023-12-18 09:38:51', '2023-12-18 09:38:51');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `business_name` varchar(255) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `zip_code` int(11) DEFAULT NULL,
  `last_login_at` datetime DEFAULT NULL,
  `avatar_id` bigint(20) DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `vendor_commission_amount` int(11) DEFAULT NULL,
  `vendor_commission_type` varchar(30) DEFAULT NULL,
  `need_update_pw` tinyint(4) DEFAULT 0,
  `role_id` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payment_gateway` varchar(30) DEFAULT NULL,
  `total_guests` int(11) DEFAULT NULL,
  `locale` varchar(10) DEFAULT NULL,
  `user_name` varchar(191) DEFAULT NULL,
  `verify_submit_status` varchar(30) DEFAULT NULL,
  `is_verified` smallint(6) DEFAULT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT 0,
  `dark_mode` tinyint(1) NOT NULL DEFAULT 0,
  `messenger_color` varchar(191) NOT NULL DEFAULT '#2180f3',
  `stripe_customer_id` varchar(191) DEFAULT NULL,
  `total_before_fees` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_user_name_unique` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `first_name`, `last_name`, `business_name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `address`, `address2`, `phone`, `birthday`, `city`, `state`, `country`, `zip_code`, `last_login_at`, `avatar_id`, `bio`, `status`, `create_user`, `update_user`, `vendor_commission_amount`, `vendor_commission_type`, `need_update_pw`, `role_id`, `deleted_at`, `remember_token`, `created_at`, `updated_at`, `payment_gateway`, `total_guests`, `locale`, `user_name`, `verify_submit_status`, `is_verified`, `active_status`, `dark_mode`, `messenger_color`, `stripe_customer_id`, `total_before_fees`) VALUES
(1, 'System Admin', 'System', 'Admin', NULL, 'admin@mytravel.test', '2023-12-13 01:01:36', '$2y$10$aW52UE68PUs4NbY9wBL3yeUhjjVEHSjnI9sy8/0Rtwj.87Jqkq3EC', NULL, NULL, NULL, NULL, '112 666 888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, 0, 1, NULL, 'uZf2e3ZzdJfmoKvfD2gP0ZKgaoUs0AvuputNUFGMrYzj2Aj3DfEXbVDrXm8R', '2023-12-13 01:01:36', '2023-12-13 01:12:11', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '#2180f3', NULL, NULL),
(2, 'Vendor 01', 'Vendor', '01', NULL, 'vendor1@mytravel.test', '2023-12-13 01:01:36', '$2y$10$KCpEUfUGg9jq064S0hK7aOaYuj4oNc0WkXLc3yNxxEY/QJ6.mQh/K', NULL, NULL, NULL, NULL, '112 666 888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, 1, 2, NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '#2180f3', NULL, NULL),
(3, 'Customer 01', 'Customer', '01', NULL, 'customer1@mytravel.test', '2023-12-13 01:01:36', '$2y$10$YUBcroChztS28AzehTq7OuH4fmpSlNPjTVwXAHFMXqlTpqXSic6oq', NULL, NULL, NULL, NULL, '112 666 888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, 1, 3, NULL, NULL, '2023-12-13 01:01:36', '2023-12-13 01:01:36', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '#2180f3', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
CREATE TABLE IF NOT EXISTS `user_meta` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `val` text DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_upgrade_request`
--

DROP TABLE IF EXISTS `user_upgrade_request`;
CREATE TABLE IF NOT EXISTS `user_upgrade_request` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `role_request` int(11) DEFAULT NULL,
  `approved_time` datetime DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_wishlist`
--

DROP TABLE IF EXISTS `user_wishlist`;
CREATE TABLE IF NOT EXISTS `user_wishlist` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `object_model` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vendors_plan_payments`
--

DROP TABLE IF EXISTS `vendors_plan_payments`;
CREATE TABLE IF NOT EXISTS `vendors_plan_payments` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `vendor_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_gateway` varchar(191) DEFAULT NULL,
  `free_trial` int(11) NOT NULL,
  `price_per` enum('onetime','per_time') NOT NULL DEFAULT 'onetime',
  `price_unit` enum('day','month','year') NOT NULL DEFAULT 'day',
  `status` varchar(20) DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vendor_team`
--

DROP TABLE IF EXISTS `vendor_team`;
CREATE TABLE IF NOT EXISTS `vendor_team` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `vendor_id` bigint(20) NOT NULL,
  `member_id` bigint(20) NOT NULL,
  `permissions` text DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
