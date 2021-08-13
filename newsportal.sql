-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2021 at 11:58 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newsportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `title`, `image`, `url`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Doloribus eaque eveniet voluptatem distinctio accusamus consequatur voluptas sed.', NULL, 'http://lebsack.com/', 7, '2021-08-13 05:21:45', '2021-08-13 05:21:45'),
(2, 'Modi nostrum quasi voluptatem id necessitatibus modi dicta sed veritatis nobis et fuga.', NULL, 'http://www.parker.org/similique-libero-sint-quia-odit-voluptatem-veniam-illo.html', 8, '2021-08-13 05:21:45', '2021-08-13 05:21:45'),
(3, 'Porro voluptatem modi reprehenderit quaerat voluptas sint vitae.', NULL, 'http://koss.com/natus-aut-illo-quasi-voluptatem-aliquam-et-nemo', 9, '2021-08-13 05:21:45', '2021-08-13 05:21:45'),
(4, 'Exercitationem non quia ea modi ipsum quae in quis esse quia omnis qui repudiandae.', NULL, 'http://witting.biz/numquam-animi-optio-impedit-culpa-rerum-quia.html', 10, '2021-08-13 05:21:45', '2021-08-13 05:21:45'),
(5, 'Aliquid quibusdam excepturi fugit aut nam occaecati veniam quaerat.', NULL, 'http://www.barrows.biz/', 11, '2021-08-13 05:21:45', '2021-08-13 05:21:45');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `news_id`, `created_at`, `updated_at`) VALUES
(1, 'Rod Beatty', 6, '2021-08-13 05:21:45', '2021-08-13 05:21:45'),
(2, 'Prof. Aryanna Hintz', 7, '2021-08-13 05:21:45', '2021-08-13 05:21:45'),
(3, 'Ms. Madisyn Altenwerth', 8, '2021-08-13 05:21:45', '2021-08-13 05:21:45'),
(4, 'Jules Herzog', 9, '2021-08-13 05:21:45', '2021-08-13 05:21:45'),
(5, 'Eve Considine I', 10, '2021-08-13 05:21:45', '2021-08-13 05:21:45');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `content`, `news_id`, `created_at`, `updated_at`) VALUES
(1, 'Ea sit natus voluptatum ea. Consequatur laudantium mollitia explicabo. Dolor accusantium blanditiis corporis inventore animi nesciunt expedita.', 1, '2021-08-13 05:21:45', '2021-08-13 05:21:45'),
(2, 'Earum vero voluptas voluptas ipsum. Harum facilis debitis sint facilis eum ut. Neque ad labore aut est eligendi voluptatem. Ut iure amet incidunt consectetur dolorem doloremque sed.', 2, '2021-08-13 05:21:45', '2021-08-13 05:21:45'),
(3, 'Sint aut provident aut temporibus voluptatem ut sunt. Neque nisi rerum velit. Deleniti velit rerum cum ullam itaque. Rerum eum laborum eos voluptatum ad.', 3, '2021-08-13 05:21:45', '2021-08-13 05:21:45'),
(4, 'Sint qui maiores et autem quasi quis. Praesentium voluptates laborum numquam et sit quibusdam. In in sed a at. Doloremque in veritatis consectetur eaque temporibus.', 4, '2021-08-13 05:21:45', '2021-08-13 05:21:45'),
(5, 'Neque voluptate sit et vitae. Provident est illo illum voluptatibus dignissimos sit. Omnis eos cum commodi magni est ut repellat.', 5, '2021-08-13 05:21:45', '2021-08-13 05:21:45'),
(6, 'Quod neque quia dolor ut omnis asperiores. Eos reprehenderit beatae officia ab quo ut aliquam. Ipsam et commodi qui quos. Voluptas porro sapiente nesciunt et.', 16, '2021-08-13 05:21:46', '2021-08-13 05:21:46'),
(7, 'Iusto odio quas ut reprehenderit consequatur quia ullam modi. Consequuntur ipsam a ad dolorem in. Voluptate eum ipsum dolorem numquam libero.', 17, '2021-08-13 05:21:46', '2021-08-13 05:21:46'),
(8, 'A sunt et est voluptatum facilis sequi qui. Ut delectus laboriosam commodi eum ut. Ea maxime repellendus rerum enim natus. Omnis voluptatem quia omnis culpa ea.', 18, '2021-08-13 05:21:46', '2021-08-13 05:21:46'),
(9, 'Facere et animi quaerat vero omnis cupiditate. Enim ut accusamus expedita delectus eligendi et. Ex assumenda nam excepturi ut optio quod quo.', 19, '2021-08-13 05:21:46', '2021-08-13 05:21:46'),
(10, 'Nisi ex aperiam accusamus qui qui molestiae expedita. Quasi accusantium doloremque beatae asperiores et reiciendis vel.', 20, '2021-08-13 05:21:46', '2021-08-13 05:21:46');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_08_13_000001_create_comments_table', 1),
(6, '2021_08_13_000002_create_ads_table', 1),
(7, '2021_08_13_000003_create_categories_table', 1),
(8, '2021_08_13_000004_create_news_table', 1),
(9, '2021_08_13_000005_create_replies_table', 1),
(10, '2021_08_13_000006_create_views_table', 1),
(11, '2021_08_13_009001_add_foreigns_to_comments_table', 1),
(12, '2021_08_13_009002_add_foreigns_to_ads_table', 1),
(13, '2021_08_13_009003_add_foreigns_to_categories_table', 1),
(14, '2021_08_13_009004_add_foreigns_to_news_table', 1),
(15, '2021_08_13_009005_add_foreigns_to_replies_table', 1),
(16, '2021_08_13_009006_add_foreigns_to_views_table', 1),
(17, '2021_08_13_082047_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `image`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Quos explicabo ut perferendis voluptatem iure amet repellat.', 'Corporis officia illum sunt repellendus. Temporibus eveniet quia necessitatibus quidem quibusdam. Et debitis quia dolores non qui.', NULL, 2, '2021-08-13 05:21:44', '2021-08-13 05:21:44'),
(2, 'Adipisci voluptatem eligendi quis eum veritatis et error in qui mollitia debitis.', 'Dolorem molestias alias doloribus qui dignissimos. Nam provident ea totam laudantium reiciendis debitis. Qui voluptates qui dicta maxime atque voluptate laboriosam.', NULL, 3, '2021-08-13 05:21:44', '2021-08-13 05:21:44'),
(3, 'Qui quia doloribus ducimus sint quam praesentium dolore alias odio nobis in voluptatem rerum.', 'Facere dolor qui quis assumenda. Odio quisquam deleniti vel in molestias. Provident consectetur adipisci est non omnis iure esse molestiae.', NULL, 4, '2021-08-13 05:21:45', '2021-08-13 05:21:45'),
(4, 'Dignissimos hic aut laborum ipsum modi itaque hic ut dolor ea.', 'Non dolorem corporis corporis est. Dicta ea excepturi assumenda.', NULL, 5, '2021-08-13 05:21:45', '2021-08-13 05:21:45'),
(5, 'Ea ducimus illum odit quod omnis rerum voluptatibus.', 'Aspernatur iusto illum delectus. Consequatur quae sequi consequatur non laboriosam magni. Unde ut officia in officia consequatur voluptate.', NULL, 6, '2021-08-13 05:21:45', '2021-08-13 05:21:45'),
(6, 'Aut quaerat et explicabo doloribus unde repudiandae placeat fugit velit ut sed.', 'Natus iste blanditiis culpa minus aliquam optio. Ad et voluptas eum velit consequuntur omnis saepe harum. Maiores officiis pariatur occaecati velit.', NULL, 12, '2021-08-13 05:21:45', '2021-08-13 05:21:45'),
(7, 'Doloremque deserunt quo occaecati et et facilis numquam quia nulla similique reprehenderit.', 'Voluptas omnis aut soluta omnis esse. Rerum repellat rem animi est. Minima inventore quibusdam amet voluptatibus blanditiis.', NULL, 13, '2021-08-13 05:21:45', '2021-08-13 05:21:45'),
(8, 'Ut esse recusandae laboriosam occaecati placeat ullam facilis quasi natus.', 'Dolores doloribus dolorum et dolorum qui accusamus esse. Quis ut voluptatibus qui. Qui ea veniam qui sed sunt ad occaecati sunt.', NULL, 14, '2021-08-13 05:21:45', '2021-08-13 05:21:45'),
(9, 'Aut quidem asperiores sunt ad incidunt distinctio ipsa quis inventore aliquam.', 'Ut fugiat sed magni debitis doloribus illo animi. Architecto quia quia veritatis esse est. Temporibus sequi est dolore et. Aut quos eum eius omnis vel.', NULL, 15, '2021-08-13 05:21:45', '2021-08-13 05:21:45'),
(10, 'Quia est aliquid aliquam aut error reiciendis ab non placeat blanditiis sed corporis.', 'Totam aut minima voluptates cumque error voluptatum doloribus. Sequi ad et iusto nihil natus laboriosam. Est aperiam dolores nam ducimus eaque voluptas. Mollitia quo iure delectus.', NULL, 16, '2021-08-13 05:21:45', '2021-08-13 05:21:45'),
(11, 'Voluptatem asperiores vel molestiae fuga sint architecto.', 'Similique quos et dolor nesciunt explicabo enim nisi. Optio recusandae animi voluptas molestiae. Quis quasi aliquam qui commodi explicabo hic.', NULL, 17, '2021-08-13 05:21:46', '2021-08-13 05:21:46'),
(12, 'Eos natus dolore earum consequatur beatae similique velit.', 'Voluptates est consequatur nobis non totam. Perspiciatis sapiente laboriosam corrupti sapiente ducimus perspiciatis voluptatibus.', NULL, 18, '2021-08-13 05:21:46', '2021-08-13 05:21:46'),
(13, 'Reprehenderit consectetur accusantium fugiat corporis sed cupiditate dolorem dolorem ab in cumque dicta velit pariatur.', 'Animi qui nihil aperiam atque. Velit neque sed porro non nemo voluptatum. Omnis dignissimos minima fuga vero ut sunt eos est.', NULL, 19, '2021-08-13 05:21:46', '2021-08-13 05:21:46'),
(14, 'Necessitatibus ullam quo perspiciatis voluptas omnis in voluptas enim explicabo in rerum.', 'Perferendis eos nemo voluptatibus est maiores voluptatem consequatur. Sed a et quo rerum quidem vel fuga. Et quaerat et accusantium aut.', NULL, 20, '2021-08-13 05:21:46', '2021-08-13 05:21:46'),
(15, 'Et rerum ipsam fuga similique quisquam et iusto animi corrupti deleniti voluptatem.', 'Hic dolorem fuga doloribus nulla culpa. Placeat est dignissimos adipisci occaecati fugit natus facere. Autem ipsam dolores quo unde aut. Fugit debitis architecto eos quisquam magnam magni.', NULL, 21, '2021-08-13 05:21:46', '2021-08-13 05:21:46'),
(16, 'Numquam veniam vel veritatis sint assumenda repellendus quaerat et.', 'Fugit nihil quisquam vel aut ut. Eum occaecati voluptate assumenda aspernatur veniam qui quaerat vitae. Deleniti voluptatibus est sed. Enim voluptas voluptatum optio tempora iure expedita est.', NULL, 22, '2021-08-13 05:21:46', '2021-08-13 05:21:46'),
(17, 'Quo minima quisquam et excepturi et quo et ex totam quia ipsam aut praesentium.', 'Non consequatur non qui doloremque. Ea accusamus soluta quia. Est consequuntur dolor consequuntur non rerum deleniti incidunt. Praesentium beatae voluptatem quibusdam error.', NULL, 23, '2021-08-13 05:21:46', '2021-08-13 05:21:46'),
(18, 'Et dicta est non voluptatem error voluptatem animi ut natus est quia ut nobis.', 'Incidunt adipisci est ea optio. Necessitatibus eum eaque perspiciatis laboriosam enim labore. Quia ut eius maiores sit et autem. Molestiae qui qui suscipit quas.', NULL, 24, '2021-08-13 05:21:46', '2021-08-13 05:21:46'),
(19, 'Praesentium similique dolor facere quia modi eaque fugiat totam ipsa doloribus officia perspiciatis.', 'Cupiditate veniam laborum voluptas soluta. Et iusto nemo pariatur autem. Sit id excepturi enim esse et sit.', NULL, 25, '2021-08-13 05:21:46', '2021-08-13 05:21:46'),
(20, 'Aut quo aut tempora asperiores vero numquam eveniet.', 'Est provident sit cupiditate ut minus deserunt earum. Tempore aspernatur sed tempora eligendi ea ipsum. Nostrum aut natus aspernatur et est. Qui dolorum dolore expedita et et placeat.', NULL, 26, '2021-08-13 05:21:46', '2021-08-13 05:21:46'),
(21, 'Tempore delectus quo aut corporis rerum molestiae enim officiis ut debitis illo.', 'Qui dolor cumque rerum quos quod quia. Non nemo corrupti est similique est dolores et. Voluptatem possimus est rerum minus consequatur id.', NULL, 27, '2021-08-13 05:21:46', '2021-08-13 05:21:46'),
(22, 'Velit unde dolor accusantium temporibus voluptatibus id.', 'Voluptatem quis consequatur porro enim voluptatem cumque. Culpa aperiam ullam iusto suscipit temporibus aut beatae. Voluptas pariatur eaque suscipit est. Aut in maxime voluptatem eos similique aut.', NULL, 28, '2021-08-13 05:21:46', '2021-08-13 05:21:46'),
(23, 'Omnis doloribus in error rerum molestiae omnis saepe incidunt quo nobis.', 'In sed dolor occaecati dolorum optio id consequatur. Aperiam voluptatum laborum maiores ad iste porro omnis. Occaecati ut provident occaecati cupiditate veniam voluptatum.', NULL, 29, '2021-08-13 05:21:46', '2021-08-13 05:21:46'),
(24, 'Consequatur voluptatem officia facilis et dicta molestiae quam voluptas ipsa sunt et.', 'Qui officiis voluptate voluptatem consequatur. Quasi non harum rerum. Voluptatum tempora consequatur animi qui aut aut. Minus eligendi illo nulla consequatur velit quis sint est.', NULL, 30, '2021-08-13 05:21:46', '2021-08-13 05:21:46'),
(25, 'Tempore quam deserunt molestias in dicta omnis quis reiciendis est ut reiciendis.', 'Ex numquam laudantium cum veritatis sed corrupti voluptate. Pariatur facilis soluta beatae architecto sequi repellat magnam. In corrupti in officia harum dolorem est.', NULL, 31, '2021-08-13 05:21:46', '2021-08-13 05:21:46');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'list comments', 'web', '2021-08-13 05:21:43', '2021-08-13 05:21:43'),
(2, 'view comments', 'web', '2021-08-13 05:21:43', '2021-08-13 05:21:43'),
(3, 'create comments', 'web', '2021-08-13 05:21:43', '2021-08-13 05:21:43'),
(4, 'update comments', 'web', '2021-08-13 05:21:43', '2021-08-13 05:21:43'),
(5, 'delete comments', 'web', '2021-08-13 05:21:43', '2021-08-13 05:21:43'),
(6, 'list allads', 'web', '2021-08-13 05:21:43', '2021-08-13 05:21:43'),
(7, 'view allads', 'web', '2021-08-13 05:21:43', '2021-08-13 05:21:43'),
(8, 'create allads', 'web', '2021-08-13 05:21:43', '2021-08-13 05:21:43'),
(9, 'update allads', 'web', '2021-08-13 05:21:43', '2021-08-13 05:21:43'),
(10, 'delete allads', 'web', '2021-08-13 05:21:43', '2021-08-13 05:21:43'),
(11, 'list categories', 'web', '2021-08-13 05:21:43', '2021-08-13 05:21:43'),
(12, 'view categories', 'web', '2021-08-13 05:21:43', '2021-08-13 05:21:43'),
(13, 'create categories', 'web', '2021-08-13 05:21:43', '2021-08-13 05:21:43'),
(14, 'update categories', 'web', '2021-08-13 05:21:43', '2021-08-13 05:21:43'),
(15, 'delete categories', 'web', '2021-08-13 05:21:43', '2021-08-13 05:21:43'),
(16, 'list allnews', 'web', '2021-08-13 05:21:43', '2021-08-13 05:21:43'),
(17, 'view allnews', 'web', '2021-08-13 05:21:44', '2021-08-13 05:21:44'),
(18, 'create allnews', 'web', '2021-08-13 05:21:44', '2021-08-13 05:21:44'),
(19, 'update allnews', 'web', '2021-08-13 05:21:44', '2021-08-13 05:21:44'),
(20, 'delete allnews', 'web', '2021-08-13 05:21:44', '2021-08-13 05:21:44'),
(21, 'list replies', 'web', '2021-08-13 05:21:44', '2021-08-13 05:21:44'),
(22, 'view replies', 'web', '2021-08-13 05:21:44', '2021-08-13 05:21:44'),
(23, 'create replies', 'web', '2021-08-13 05:21:44', '2021-08-13 05:21:44'),
(24, 'update replies', 'web', '2021-08-13 05:21:44', '2021-08-13 05:21:44'),
(25, 'delete replies', 'web', '2021-08-13 05:21:44', '2021-08-13 05:21:44'),
(26, 'list views', 'web', '2021-08-13 05:21:44', '2021-08-13 05:21:44'),
(27, 'view views', 'web', '2021-08-13 05:21:44', '2021-08-13 05:21:44'),
(28, 'create views', 'web', '2021-08-13 05:21:44', '2021-08-13 05:21:44'),
(29, 'update views', 'web', '2021-08-13 05:21:44', '2021-08-13 05:21:44'),
(30, 'delete views', 'web', '2021-08-13 05:21:44', '2021-08-13 05:21:44'),
(31, 'list roles', 'web', '2021-08-13 05:21:44', '2021-08-13 05:21:44'),
(32, 'view roles', 'web', '2021-08-13 05:21:44', '2021-08-13 05:21:44'),
(33, 'create roles', 'web', '2021-08-13 05:21:44', '2021-08-13 05:21:44'),
(34, 'update roles', 'web', '2021-08-13 05:21:44', '2021-08-13 05:21:44'),
(35, 'delete roles', 'web', '2021-08-13 05:21:44', '2021-08-13 05:21:44'),
(36, 'list permissions', 'web', '2021-08-13 05:21:44', '2021-08-13 05:21:44'),
(37, 'view permissions', 'web', '2021-08-13 05:21:44', '2021-08-13 05:21:44'),
(38, 'create permissions', 'web', '2021-08-13 05:21:44', '2021-08-13 05:21:44'),
(39, 'update permissions', 'web', '2021-08-13 05:21:44', '2021-08-13 05:21:44'),
(40, 'delete permissions', 'web', '2021-08-13 05:21:44', '2021-08-13 05:21:44'),
(41, 'list users', 'web', '2021-08-13 05:21:44', '2021-08-13 05:21:44'),
(42, 'view users', 'web', '2021-08-13 05:21:44', '2021-08-13 05:21:44'),
(43, 'create users', 'web', '2021-08-13 05:21:44', '2021-08-13 05:21:44'),
(44, 'update users', 'web', '2021-08-13 05:21:44', '2021-08-13 05:21:44'),
(45, 'delete users', 'web', '2021-08-13 05:21:44', '2021-08-13 05:21:44');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `content`, `comment_id`, `created_at`, `updated_at`) VALUES
(1, 'Nam sint mollitia et et ea velit. Quis ipsam rerum omnis. Iusto sapiente distinctio adipisci qui ut aliquam ad.', 6, '2021-08-13 05:21:46', '2021-08-13 05:21:46'),
(2, 'Dolor repellendus quam et minus dolore voluptatem. Sunt ab ab tenetur quod corporis maxime fugiat. Ratione iste enim velit deserunt vel maiores eveniet voluptatem.', 7, '2021-08-13 05:21:46', '2021-08-13 05:21:46'),
(3, 'Sed reprehenderit officia vero molestias. Ea nulla quaerat sint quidem dolor perspiciatis. Quia enim voluptatibus culpa aut. Rem quia est enim laborum ex doloribus quos.', 8, '2021-08-13 05:21:46', '2021-08-13 05:21:46'),
(4, 'Quo dolores ea qui. Beatae in numquam magni sit. Laboriosam illum quis architecto provident enim. Dicta perferendis dolores voluptatem ex perferendis est voluptate.', 9, '2021-08-13 05:21:46', '2021-08-13 05:21:46'),
(5, 'Sunt voluptas vel non saepe. Veritatis sit ab et eligendi. Eos sed occaecati totam cumque. Architecto aliquam consequuntur possimus reprehenderit enim dolores.', 10, '2021-08-13 05:21:46', '2021-08-13 05:21:46');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'user', 'web', '2021-08-13 05:21:44', '2021-08-13 05:21:44'),
(2, 'super-admin', 'web', '2021-08-13 05:21:44', '2021-08-13 05:21:44');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 1),
(5, 2),
(6, 1),
(6, 2),
(7, 1),
(7, 2),
(8, 1),
(8, 2),
(9, 1),
(9, 2),
(10, 1),
(10, 2),
(11, 1),
(11, 2),
(12, 1),
(12, 2),
(13, 1),
(13, 2),
(14, 1),
(14, 2),
(15, 1),
(15, 2),
(16, 1),
(16, 2),
(17, 1),
(17, 2),
(18, 1),
(18, 2),
(19, 1),
(19, 2),
(20, 1),
(20, 2),
(21, 1),
(21, 2),
(22, 1),
(22, 2),
(23, 1),
(23, 2),
(24, 1),
(24, 2),
(25, 1),
(25, 2),
(26, 1),
(26, 2),
(27, 1),
(27, 2),
(28, 1),
(28, 2),
(29, 1),
(29, 2),
(30, 1),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 2),
(36, 2),
(37, 2),
(38, 2),
(39, 2),
(40, 2),
(41, 2),
(42, 2),
(43, 2),
(44, 2),
(45, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Antonetta Lang PhD', 'admin@admin.com', '2021-08-13 05:21:43', '$2y$10$CxFcQ/LVDhFrnT.4DAzckeUXLmV53oU9GF37hNJEKwbcD/AY6yfxS', '9sypzautIO5wP8tNF6PF1Y0UGCSo9o937pEY9QaGynBmuxjZFeqqGH18xkba', '2021-08-13 05:21:43', '2021-08-13 05:21:43'),
(2, 'Dr. Dylan Koepp', 'loraine66@yahoo.com', '2021-08-13 05:21:44', '$2y$10$Hr3STqT0KpUorM1i8uI8Ye6F6W2H2kxCHhS6A.1xMK5OByg/jA.6C', 'q0KGGWWoRE', '2021-08-13 05:21:44', '2021-08-13 05:21:44'),
(3, 'Lue Cremin', 'lschroeder@yahoo.com', '2021-08-13 05:21:44', '$2y$10$npgTlTqs4XZZzMnIKax0Ue1ZPhYzGySAKYtjKyu2TioJMmTnj.3by', 'cwRvXtGE05', '2021-08-13 05:21:44', '2021-08-13 05:21:44'),
(4, 'Mrs. Marlene Wintheiser', 'odessa53@yahoo.com', '2021-08-13 05:21:44', '$2y$10$DjDtQxg8Jl6dNBzC7T095.EhS1MGHddLfuT0/jL5PNs1HtCeBRf92', '8Gd7baRTJZ', '2021-08-13 05:21:45', '2021-08-13 05:21:45'),
(5, 'Greta Jones', 'larson.kari@satterfield.com', '2021-08-13 05:21:45', '$2y$10$f99F5KN/ECZOM.DkMLkvfOdLT3m.OCEdBCXgsPdFwai3yg6OLTSj6', 'bcaP35pnC6', '2021-08-13 05:21:45', '2021-08-13 05:21:45'),
(6, 'Danika Miller', 'samara38@willms.org', '2021-08-13 05:21:45', '$2y$10$R9urWTI6CeW01YrQkhhrIuI8wJ5WRKv5SO9RXOlodeJpzOUQJ1Qfe', 'Qmg3bL1dj1', '2021-08-13 05:21:45', '2021-08-13 05:21:45'),
(7, 'Forest Waters V', 'matilde.luettgen@swaniawski.com', '2021-08-13 05:21:45', '$2y$10$x.AlEsbOd.QTFY/qmhTQyupPV1XhlToJQyvf8P9mqL0ggPjjO7aPe', 'B58vZtG95F', '2021-08-13 05:21:45', '2021-08-13 05:21:45'),
(8, 'Wilma Marquardt DDS', 'hudson.toby@gmail.com', '2021-08-13 05:21:45', '$2y$10$gavoKyIMdBJO.97BG87czOPekmIKdDJFNtQw/pAeXDF.9Sd9g8jiC', 'XOoZJLwvpp', '2021-08-13 05:21:45', '2021-08-13 05:21:45'),
(9, 'Vito Treutel', 'nicklaus.kris@schiller.info', '2021-08-13 05:21:45', '$2y$10$DTCdAG06LYMAHnmWturKU.cBnsrVjUwuOBQ01TjQYKxMBYw3.m4jW', 'Wm2bsE69BQ', '2021-08-13 05:21:45', '2021-08-13 05:21:45'),
(10, 'Carolina Bogan', 'fkunde@hotmail.com', '2021-08-13 05:21:45', '$2y$10$K6OeKuRpSwWClELtddJgguuXY9PC2BBn2XhwES/ChV8DQbBTHIlzq', 'te9XHVTMkB', '2021-08-13 05:21:45', '2021-08-13 05:21:45'),
(11, 'Keshaun Breitenberg I', 'mcclure.jadyn@cronin.biz', '2021-08-13 05:21:45', '$2y$10$AAdkjp2zHOj0dLPj4OM1yuNDx8N/wJRYEFZWr3iiBwBZqmAtDzbbO', 'YjNMOYni2K', '2021-08-13 05:21:45', '2021-08-13 05:21:45'),
(12, 'Vada McKenzie', 'cschmidt@yahoo.com', '2021-08-13 05:21:45', '$2y$10$QCCIy4SU33m0AoG/fL8tr.0LiMLrYSD05xnLjfpCnl6c6ie7iACOm', 'KUSJXfvrPL', '2021-08-13 05:21:45', '2021-08-13 05:21:45'),
(13, 'Miss Whitney Bergnaum', 'laurel42@gmail.com', '2021-08-13 05:21:45', '$2y$10$4CVuZ40BX5NqQBSii9IZ..TXWxcVgmWWvk/UL4P2U3ZDEX4vND0mq', '1Qclk0CjZx', '2021-08-13 05:21:45', '2021-08-13 05:21:45'),
(14, 'Dr. Garland Schneider DVM', 'caesar63@wehner.com', '2021-08-13 05:21:45', '$2y$10$hmrcgLEWmNN28uXspLqNtehcKcnBw4cBNKL5uAlTxUdEXm2MSVeLK', 'zOrVK5YYJQ', '2021-08-13 05:21:45', '2021-08-13 05:21:45'),
(15, 'Mr. Wilhelm Gleason V', 'reid.oreilly@gleason.org', '2021-08-13 05:21:45', '$2y$10$3tEdFD2f3YP5HYTVjjthZO9R8AbzyEZmC6Wa8eLeVpXIYDBDLpsVa', 'ZABO8CLryg', '2021-08-13 05:21:45', '2021-08-13 05:21:45'),
(16, 'Mrs. Jaqueline Cummerata II', 'walter.alden@boyle.com', '2021-08-13 05:21:45', '$2y$10$HxTxK1P1dodZNq81SmaTGesT8uEE0hd0BnGvh5uSDBBAj9fGkiBYO', 'mXabG9FQtK', '2021-08-13 05:21:45', '2021-08-13 05:21:45'),
(17, 'Beatrice Kirlin', 'dagmar45@hotmail.com', '2021-08-13 05:21:45', '$2y$10$U.I.bzzYU5oQglVz0Hc05ewuqmL/Ne2ywjpmEul52ZT64Y0If.bYq', '1l71ajlwcJ', '2021-08-13 05:21:45', '2021-08-13 05:21:45'),
(18, 'Brittany Kutch V', 'hermann.mabel@greenholt.com', '2021-08-13 05:21:45', '$2y$10$rec/WTUzXCyxKj2VtC8OyOhtBsbXvqyQJMPdTguntUyx.843W2l8.', 'icQpUdEPnG', '2021-08-13 05:21:45', '2021-08-13 05:21:45'),
(19, 'Dr. Conor Dicki DVM', 'santa31@leffler.com', '2021-08-13 05:21:45', '$2y$10$E9LyxdlHSB3xVwNES.cbFuCUadMU8M2QLJYvcMxQNChyVwOMvhHHu', '8fSm2dpRmC', '2021-08-13 05:21:46', '2021-08-13 05:21:46'),
(20, 'Ms. Naomi Hintz Jr.', 'fzemlak@gmail.com', '2021-08-13 05:21:46', '$2y$10$z9ZVYVY/kc.pLpb0l5fz7OQEIk6UqQL5uktcJhuA0S8xCMXtj.FLm', 'nULMGfNHzx', '2021-08-13 05:21:46', '2021-08-13 05:21:46'),
(21, 'Nils Upton', 'torphy.rhett@stracke.com', '2021-08-13 05:21:46', '$2y$10$8upKTR67UAtg5ubO8Zu9cucz5iv/1Ry.SidqG2n8ICfaIQGGOTRpa', 'faRPM3ighU', '2021-08-13 05:21:46', '2021-08-13 05:21:46'),
(22, 'Darlene Abshire', 'mitchell.augustine@hotmail.com', '2021-08-13 05:21:46', '$2y$10$plROixiHPerfRhJhfG1zU.3Y8Od55VPhYLisHkAxUzC1fhGS3UhZ.', '0xPV32WFmm', '2021-08-13 05:21:46', '2021-08-13 05:21:46'),
(23, 'Herman Kassulke', 'gladys.christiansen@gmail.com', '2021-08-13 05:21:46', '$2y$10$ODimRfI8cdQzI9/mhpkuEe4xbTh5j/JJCZsN4SQzi89jo7f2r1qku', 'M3qysI6aNq', '2021-08-13 05:21:46', '2021-08-13 05:21:46'),
(24, 'Mr. Irving Douglas', 'natasha.reynolds@hotmail.com', '2021-08-13 05:21:46', '$2y$10$xmzBXj.RT24c6kyQBrxKKeqhcDc34qjEKRpPI3kDT9zL7IY6e6CXi', '5liHTNkxhp', '2021-08-13 05:21:46', '2021-08-13 05:21:46'),
(25, 'Dr. Vernie Kshlerin', 'krunolfsson@gmail.com', '2021-08-13 05:21:46', '$2y$10$vkKvdzLLSPXls54CnpHNOucdj4qXK4HyjmYl.qRmRtq1MR20eG0IG', '48rx9SGUOM', '2021-08-13 05:21:46', '2021-08-13 05:21:46'),
(26, 'Dr. Arlie Rolfson', 'grady.kozey@mosciski.biz', '2021-08-13 05:21:46', '$2y$10$OHinIMsDy0DH4lv75USpe.TRBTL3L60JBY64.aIAH2dftSM/XLlsm', 'VckWmuWNR1', '2021-08-13 05:21:46', '2021-08-13 05:21:46'),
(27, 'Maude Ward Jr.', 'zkozey@hotmail.com', '2021-08-13 05:21:46', '$2y$10$Jye/a0/ylLHbK5PqqDb9bu31gR7Uj4ZTYMxNhCEZOCPZpdXWaH.se', 'O4EVwZxDJQ', '2021-08-13 05:21:46', '2021-08-13 05:21:46'),
(28, 'Syble Schulist', 'xheller@wintheiser.com', '2021-08-13 05:21:46', '$2y$10$zP5SlE.Qh92y7jDhswRoSunJogOoTCXGqP6oFh5QTaBquGsdwNd7q', 'jxHMi5DDQh', '2021-08-13 05:21:46', '2021-08-13 05:21:46'),
(29, 'Kayley Murazik', 'elisabeth93@lynch.com', '2021-08-13 05:21:46', '$2y$10$Xdnz/.jn9jSsTKnb9nFdW.l/Ws6yDsMSAmDULnVU0Tyu6GqKK7GYq', 'nltZhKjFDW', '2021-08-13 05:21:46', '2021-08-13 05:21:46'),
(30, 'Hyman Ryan', 'isabelle36@hotmail.com', '2021-08-13 05:21:46', '$2y$10$R2oLI9ZEKfjfTf0KNwchLe4pdhiNCjn1EbP1LQ1HK/xq8FNdYHxzG', 'g70faAKDWr', '2021-08-13 05:21:46', '2021-08-13 05:21:46'),
(31, 'Ollie Dibbert', 'altenwerth.gunner@gmail.com', '2021-08-13 05:21:46', '$2y$10$rZS8sc.DLaurxrHiRv.jTeq.woh4xO2Cn.NUWLce5QmXNcUKEVpWK', 'cXmObMOVB3', '2021-08-13 05:21:46', '2021-08-13 05:21:46'),
(32, 'Chadrick Prohaska', 'dillan.cummerata@yahoo.com', '2021-08-13 05:21:46', '$2y$10$mT./rMwTKUDRXwHzlGrqQeCFBZN98.kh28yrLDJ/CvQUhK42uLQ2u', 'FSNEOMeiBx', '2021-08-13 05:21:47', '2021-08-13 05:21:47'),
(33, 'Miss Aurelia Luettgen', 'parker.janice@yahoo.com', '2021-08-13 05:21:46', '$2y$10$CXYpRPBYo5P3/VvoLg2sxeO4rwgSExN2.WXQwBixjhSZsQoRV5Yx6', 'kyUE0P0wA7', '2021-08-13 05:21:47', '2021-08-13 05:21:47'),
(34, 'Dusty Zulauf', 'fhowell@dickens.org', '2021-08-13 05:21:47', '$2y$10$sMQp8FC7zDym6MjeUBIKH..LHsb9HYKm9XMZWmRdNSUaH2ARkCqd6', '3guZYgKm0m', '2021-08-13 05:21:47', '2021-08-13 05:21:47'),
(35, 'Mr. Madyson Gulgowski III', 'gkoss@gmail.com', '2021-08-13 05:21:47', '$2y$10$tGgP5vQXtDab7Hqo8Cvio.7IwbKa2kM8O.HVqaPaiGnfgyOWtLX5W', '9poBM8LqHA', '2021-08-13 05:21:47', '2021-08-13 05:21:47'),
(36, 'Garth Wyman', 'pfannerstill.gino@hermiston.net', '2021-08-13 05:21:47', '$2y$10$24wPNA2J10NeO8dCmVq0z.tt6QNPuXr8.e.VaH/l88a5zmNSQgtTy', 'myZ2tM4azU', '2021-08-13 05:21:47', '2021-08-13 05:21:47');

-- --------------------------------------------------------

--
-- Table structure for table `views`
--

CREATE TABLE `views` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `number` int(11) NOT NULL,
  `ip` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `views`
--

INSERT INTO `views` (`id`, `number`, `ip`, `news_id`, `created_at`, `updated_at`) VALUES
(1, 27378, '7.64.149.3', 21, '2021-08-13 05:21:46', '2021-08-13 05:21:46'),
(2, 628361927, '210.73.87.215', 22, '2021-08-13 05:21:46', '2021-08-13 05:21:46'),
(3, 1, '92.52.136.167', 23, '2021-08-13 05:21:46', '2021-08-13 05:21:46'),
(4, 814106091, '33.203.0.135', 24, '2021-08-13 05:21:46', '2021-08-13 05:21:46'),
(5, 26, '156.163.166.15', 25, '2021-08-13 05:21:46', '2021-08-13 05:21:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ads_user_id_foreign` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_news_id_foreign` (`news_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_news_id_foreign` (`news_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `replies_comment_id_foreign` (`comment_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `views`
--
ALTER TABLE `views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `views_news_id_foreign` (`news_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `views`
--
ALTER TABLE `views`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ads`
--
ALTER TABLE `ads`
  ADD CONSTRAINT `ads_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_news_id_foreign` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_news_id_foreign` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `replies`
--
ALTER TABLE `replies`
  ADD CONSTRAINT `replies_comment_id_foreign` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `views`
--
ALTER TABLE `views`
  ADD CONSTRAINT `views_news_id_foreign` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
