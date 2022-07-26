-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2022 at 09:33 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Programming', 'web-programming', '2022-07-14 00:44:20', '2022-07-14 00:44:20'),
(2, 'Web Design', 'web-design', '2022-07-14 00:44:20', '2022-07-14 00:44:20'),
(3, 'Personal', 'personal', '2022-07-14 00:44:20', '2022-07-14 00:44:20');

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
(4, '2021_06_23_092926_create_posts_table', 1),
(5, '2021_06_23_102156_create_categories_table', 1),
(6, '2022_07_15_065547_add_is_admin_to_users_table', 2);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 'Enim aut sit qui deleniti ut minima et.', 'assumenda-ullam-doloremque-omnis-doloremque-occaecati-ut', NULL, 'Rem in consequatur sunt ut rerum ab ratione. Minima mollitia earum magni sint in adipisci.', '<p>Magnam sunt velit rerum reiciendis sequi corporis consequuntur. Esse officiis tempora non at. Sequi eveniet non magnam dolorem est voluptatum rerum natus.</p><p>Incidunt quasi temporibus ratione aut quasi quam. Voluptate quo voluptatem est animi. Facilis totam quam voluptas ad omnis ullam. Perferendis occaecati vero omnis iusto natus odio.</p><p>Quibusdam sit sed architecto consequatur. Officia dicta ipsam excepturi rerum qui laborum eveniet. Impedit aut voluptas molestiae quia laboriosam.</p><p>Molestiae sed ipsam fugit excepturi qui iste. Saepe nihil quod praesentium blanditiis. Qui fugit aliquam porro enim sequi impedit reprehenderit. Error eum nihil neque.</p><p>Ea fugit dicta et. Officia accusamus nemo autem alias. Possimus ullam possimus magni necessitatibus eveniet eligendi quia. Sed optio nostrum omnis exercitationem repellat voluptatem.</p><p>Deserunt eum autem praesentium quos aperiam est. Qui voluptas delectus saepe quia.</p><p>Dicta nobis et laborum nulla eligendi incidunt optio. Maxime aliquid hic vel ea voluptas rerum. Distinctio quia quisquam voluptas odit.</p><p>Eum alias quia exercitationem qui odit. Omnis est et officiis recusandae eaque id.</p><p>In placeat veritatis maiores quasi omnis vel. Est ducimus dicta fugit alias optio qui. Tenetur hic commodi modi laboriosam doloribus.</p>', NULL, '2022-07-14 00:44:20', '2022-07-14 00:44:20'),
(2, 2, 1, 'Optio natus voluptatem illum.', 'occaecati-possimus-rerum-commodi-perspiciatis-sint', NULL, 'Rem nam nostrum quos quaerat aut sapiente. Libero deserunt aperiam veniam. Facere dicta illo cupiditate hic voluptate dolorem.', '<p>Dolores dolorem ea qui et et in beatae. Sint deleniti aut molestias in. Voluptas odio adipisci occaecati non. Nisi aut et temporibus praesentium consequatur.</p><p>Atque voluptates quae eius vero quae. Sit natus a veritatis impedit. Ad porro corporis non in veniam sunt.</p><p>Explicabo ut accusantium nemo est aperiam voluptatem. Repudiandae dicta perspiciatis modi iusto praesentium possimus ut. Soluta et saepe veniam et. Aut voluptates pariatur est minima saepe. Corrupti autem at deleniti accusantium ea.</p><p>Unde eligendi illum nostrum voluptatem deserunt. Dolorem nisi pariatur soluta tempora ex enim fugit. Itaque eveniet impedit nulla cumque. Eos aut exercitationem modi qui eligendi.</p><p>Inventore maiores assumenda excepturi ipsa. Officiis dolore exercitationem pariatur quasi doloribus omnis. Consectetur voluptates qui exercitationem id laborum voluptatem vero. Non voluptatum quo eos.</p><p>Consequatur eaque consectetur minus nemo sint harum cupiditate. Rem aut facilis sint dignissimos iure in nemo. Dolor libero laboriosam veniam aut voluptatibus quas. Ut nam voluptates aspernatur.</p><p>Dignissimos dolores saepe sint sapiente molestias tempora facilis. Nemo rerum quos dignissimos a doloremque. Ea est accusantium itaque ab dolorem suscipit ullam. Vel et quasi earum aut recusandae. Vitae assumenda ipsa maiores perspiciatis ut.</p><p>Blanditiis aut officia facilis iusto. Ipsa et autem ut. Totam laboriosam omnis eos.</p><p>Tempora enim dicta nam perferendis. Eius molestias eos dolor corporis. Quisquam voluptatem ut adipisci rerum quae.</p><p>Fugit quod debitis pariatur in in quibusdam ab dignissimos. Architecto est distinctio qui vero. Id architecto ut veritatis velit blanditiis.</p>', NULL, '2022-07-14 00:44:20', '2022-07-14 00:44:20'),
(3, 2, 1, 'Saepe et magni voluptas adipisci rerum qui similique.', 'nesciunt-consequatur-sed-dolore-et-beatae-dolorum', NULL, 'Temporibus eum beatae dolorem non enim corrupti consequatur ut. Est quae neque eum culpa molestiae. Et atque eum sunt numquam ea tempora deserunt.', '<p>Harum eos qui iure totam est occaecati voluptate. Odit est enim omnis et ipsum dolor iusto quis. Animi itaque cum rerum optio.</p><p>Officia voluptas sed amet in pariatur. Quis fuga atque qui nesciunt inventore eos ad.</p><p>Illo dolorem voluptatem nostrum tempora. Ipsum vitae optio cum ut et. Nostrum vel perferendis voluptatem. Reprehenderit voluptas nostrum ab ipsa.</p><p>Hic expedita dicta cum tempora voluptatem recusandae. Architecto et quod quas nulla quia repudiandae. Ut eos dicta et at sint nulla necessitatibus consequatur. Ad et optio possimus pariatur.</p><p>Maxime rerum voluptatem enim enim magnam distinctio et aperiam. Numquam provident molestias beatae tenetur error. Et labore veniam id error.</p><p>Consequuntur harum accusantium eum unde quia cum. Voluptas iste eveniet voluptatem eos. Quaerat adipisci molestiae totam vel quisquam qui minus. Perferendis quia suscipit velit dolor ullam vel sint.</p><p>Sunt sunt laudantium blanditiis illo. Error libero quia enim perspiciatis excepturi numquam magni. Dicta voluptatem aut dolorum est. Vitae rem ipsum est nisi consequatur.</p><p>Repudiandae qui est doloremque accusamus voluptate dolore non corporis. Et aut ducimus blanditiis molestiae praesentium. Qui expedita eius voluptate quo dolores repellat molestias. Nesciunt doloribus culpa impedit ea.</p><p>Culpa culpa quo saepe tenetur. Voluptatem a sint blanditiis dolorum accusantium dolorum vel. Autem et quod quia et enim illo. Voluptatem quae odit enim illo laborum autem ratione.</p>', NULL, '2022-07-14 00:44:20', '2022-07-14 00:44:20'),
(4, 1, 3, 'Dolores perspiciatis est eos aliquid.', 'nam-consectetur-aut-non-minima-ut-eos', NULL, 'At maxime porro delectus laudantium iste atque molestias. Magni aut veritatis deleniti eum sed debitis saepe. Similique placeat asperiores necessitatibus inventore velit assumenda.', '<p>Minus eum aliquam facere doloremque quas architecto. Ipsa maiores unde consequatur eum cum eveniet dicta sit. Libero quo reprehenderit vel vitae eos perspiciatis tempore. Dicta eaque quas facilis quam repudiandae eum.</p><p>Non nisi voluptas est ex quas labore. Ab sit dolor perferendis unde. Vel qui enim perspiciatis dolorem nihil voluptatem. Ipsa labore atque accusamus non veritatis ea sunt aut.</p><p>Et fugit perferendis ut est est quo. Est et dicta quibusdam odio. Illum tempora dolores fuga commodi exercitationem sint voluptate.</p><p>Voluptate explicabo quod magni ab blanditiis. Aut similique dolore facilis eveniet ad vero et minus. Cupiditate dolorem voluptatum modi ipsum asperiores. Ut aliquid temporibus quaerat.</p><p>Et maiores laborum debitis nemo. Consequatur nulla veniam repellendus autem rerum at. Sit excepturi facilis quae eos.</p><p>Quos quae ut qui exercitationem exercitationem sequi. Doloremque qui sequi nihil enim quis dolor. Voluptate harum qui animi qui omnis eos assumenda eum. Tempora officia consectetur debitis ea nihil qui ducimus aut.</p><p>Aliquid dolorem eaque sed. Occaecati qui libero ab. Illum quia ab et earum.</p><p>Accusamus necessitatibus ratione sint dignissimos est. Illo voluptatem nostrum a et. Ut accusamus ratione libero esse. Minima ea sit pariatur eos porro.</p>', NULL, '2022-07-14 00:44:20', '2022-07-14 00:44:20'),
(5, 2, 3, 'Ipsa reprehenderit ut ut ut suscipit a.', 'cumque-voluptatem-dolorem-in-culpa-dolorem-sequi-dolores', NULL, 'Culpa maiores aut aut quo nisi rerum adipisci. Ex quasi incidunt sapiente omnis. Aspernatur qui vitae saepe soluta eaque. Iste placeat quia voluptatem et laborum in. Dolores possimus suscipit recusandae magnam labore.', '<p>Nihil saepe ipsa nihil exercitationem voluptatum recusandae ea. Aut sapiente mollitia quibusdam doloribus commodi. Sequi possimus molestiae ex odit eius unde. Voluptatibus quia amet facere sequi velit quis natus.</p><p>Autem qui corrupti aspernatur debitis. Sed necessitatibus quam nam non. Ipsam corrupti corporis dolores consequatur molestiae quo. Est sed iste est eius animi. Repellendus eos non eum labore assumenda.</p><p>Eos omnis quae odit provident facere. Dolorum dolorem amet totam provident. Odio ut ea cum similique voluptas repellat.</p><p>Quos aut a deleniti culpa ad eius. Fugit assumenda eos commodi vel accusantium. Quia velit quas dolore accusantium amet animi fugiat. Ex ex saepe asperiores at ullam sapiente possimus.</p><p>Id voluptas nisi sequi facere cum non aut. Qui earum ea rerum et ab quia et eligendi. Voluptate aspernatur doloremque non aut tempore. Ipsa odio officiis in.</p><p>Nesciunt doloribus voluptates nisi aliquam eos necessitatibus. Sunt quis itaque quisquam commodi id earum. Consequatur eveniet qui aut quos earum autem.</p><p>Nesciunt nemo dolores incidunt quia. Sed non perspiciatis reiciendis aliquam rerum est. Ut accusamus laborum voluptatem minus voluptatem.</p><p>Dolores voluptatem quis eos ea necessitatibus. Ex deleniti ad facere molestiae fugit molestiae ipsum occaecati. Sit facilis nobis quo nostrum.</p><p>Impedit est eligendi optio ut omnis velit facilis. Explicabo itaque officia eos ut et. Esse dolores nulla sed corrupti architecto unde.</p>', NULL, '2022-07-14 00:44:21', '2022-07-14 00:44:21'),
(6, 1, 3, 'Facere animi.', 'consequatur-quisquam-dolores-eos-in-sunt-reprehenderit-omnis', NULL, 'Doloribus quae nesciunt tenetur minus sunt nihil voluptate et. Et qui commodi natus sed molestiae. Itaque incidunt voluptatem velit. Sint quae quo quis repudiandae vitae.', '<p>Modi soluta eligendi accusamus quae quia assumenda. Facere perspiciatis sapiente vel culpa quo sunt sapiente. Ad autem optio qui porro. Rem corrupti tempora ut earum qui. Molestiae quidem inventore suscipit libero.</p><p>Suscipit omnis vitae error est ex. Repudiandae optio molestiae nam iure soluta et. Et voluptas aut architecto blanditiis et corrupti quae. Molestiae consequatur vitae magni et sed consequatur. Et id nulla pariatur voluptatem velit asperiores rerum.</p><p>At porro laboriosam tenetur hic. Accusantium consectetur exercitationem necessitatibus optio. Et impedit officiis nulla repudiandae.</p><p>Ipsum recusandae ea sed eligendi. Temporibus doloremque ea voluptatem dolorem provident hic odio. Est sed vero hic laborum sapiente tempora culpa quis.</p><p>Voluptatibus maxime et ut repellat quia cumque. Similique necessitatibus qui aliquam nostrum et suscipit ea. Totam quia atque et nemo.</p><p>Quidem dolores velit quasi. Pariatur quae quidem et qui magnam blanditiis sit. Eos aut dolor repellendus et eligendi nulla. Commodi repudiandae dolor similique officiis et eligendi consequatur est.</p><p>Qui eos consequuntur laborum. Harum est et vel voluptatibus ipsa. Sit excepturi voluptatem tempora sunt aut itaque. Magnam ut rerum consequatur quisquam amet nobis libero.</p><p>Est provident asperiores id eos cumque et. Id voluptatem ullam quas provident repellendus. Reprehenderit aut similique cumque nemo voluptas nostrum. Fugit facere amet qui alias suscipit dolores quasi omnis.</p><p>Excepturi laboriosam magni nihil ad voluptatibus explicabo voluptatem. Nisi sed quia distinctio ab sint repudiandae. Architecto cum ex error ut quas.</p><p>Unde iure voluptate sit doloremque ut consequatur quas. Labore omnis vel expedita perferendis rerum ab. Provident dolorum distinctio vel non ut autem perspiciatis.</p>', NULL, '2022-07-14 00:44:21', '2022-07-14 00:44:21'),
(7, 2, 1, 'Expedita unde eos.', 'explicabo-soluta-porro-culpa-sapiente', NULL, 'Sit officiis accusamus fugit eum. Omnis quis neque porro necessitatibus tempora sint repellat ut. Id at voluptates aut qui nihil quasi autem.', '<p>Sed perspiciatis asperiores sunt sint. Voluptatem iusto soluta rerum numquam rem magnam. Enim eligendi veritatis nisi doloribus quo incidunt voluptates nostrum.</p><p>Modi repellendus necessitatibus est et voluptas necessitatibus ratione. Modi facere assumenda ipsam id dignissimos expedita. Dolor reprehenderit incidunt nihil quia.</p><p>Rem commodi unde et vel quis assumenda delectus. Dolorem saepe consequatur voluptate ex.</p><p>Debitis velit non sunt rem aut eum. Voluptatum at ad rerum dolores in aut. Velit qui aut dicta reiciendis.</p><p>Ut omnis perferendis ex quidem. Fuga omnis et voluptatem delectus et. Officia quia est officia ducimus laudantium. Eos consectetur nulla est omnis et.</p><p>Et exercitationem exercitationem optio ut quasi et eum. Rerum ut alias a esse nisi rem quia voluptatem. Aut non a et deserunt aut qui tempore. Optio dolore nesciunt consequatur.</p><p>Magni non rem vel iusto atque. Dolore aut accusantium dolores est officiis officiis. Reiciendis dolore rerum omnis et. Labore illum mollitia sunt excepturi.</p><p>Amet et atque enim quia. Praesentium eaque deserunt assumenda similique neque nisi iusto. Ullam repudiandae tenetur corporis numquam.</p><p>Voluptate laboriosam alias necessitatibus velit consequuntur eaque maiores. Sapiente sunt ipsa esse in at veniam rerum nemo.</p>', NULL, '2022-07-14 00:44:21', '2022-07-14 00:44:21'),
(8, 2, 2, 'Eius molestiae autem incidunt esse natus molestias.', 'et-consequuntur-illum-quos-fugit-sunt-voluptas-laborum', NULL, 'Ea iste quia id adipisci eaque iste. Aliquam similique placeat nihil quasi aspernatur et odit et. Qui maiores velit ab et itaque qui. Fugiat voluptas fuga deleniti ullam aliquam exercitationem.', '<p>Quod sint accusamus ad culpa repellat et. Architecto odit possimus vel veniam dicta a. Ducimus vitae omnis ea voluptatibus. Voluptas voluptate cumque quia est.</p><p>Dolores temporibus adipisci non nihil quod. Quia maxime beatae perferendis dignissimos. Ex dolor sint illum quia porro voluptatem minus quis. Magni fugiat ratione vitae nisi. Aspernatur asperiores nihil doloribus dolores soluta.</p><p>Quia vel voluptatibus quisquam ad alias veniam deleniti iusto. Autem inventore debitis incidunt eaque quia accusamus sed. Voluptates laborum magni sapiente qui commodi sed. Quia minus et aut quis velit. Maiores sunt qui hic velit fuga reprehenderit.</p><p>Doloremque aliquid exercitationem temporibus dolorum sint alias ratione. Magnam blanditiis cum qui aliquam in sed. Expedita et sit totam enim officiis architecto.</p><p>Excepturi laudantium molestias et esse. Repellat nostrum voluptatem aut ut dolores. Deleniti voluptate sed praesentium asperiores ipsum id voluptatem. Ea provident delectus placeat tenetur. Et est ex nihil illo dolorem quia rerum.</p><p>Qui dolorum quidem temporibus corporis porro praesentium sunt. Minima consequatur non rerum nobis sint magni. Non in et praesentium dolores vero. Labore quos architecto voluptate nostrum.</p><p>Et dolor aliquid soluta laudantium quos. Repellendus sit officia quaerat rerum et maxime consectetur quam. Dolor minus in vitae rerum.</p>', NULL, '2022-07-14 00:44:21', '2022-07-14 00:44:21'),
(9, 2, 1, 'Suscipit nihil ex ut animi magnam molestias delectus deserunt corrupti.', 'sit-rerum-ut-voluptas', NULL, 'Perspiciatis voluptas ratione necessitatibus beatae rerum illum beatae. Explicabo cupiditate a vel adipisci. Accusamus consequatur et magnam.', '<p>Eveniet earum maiores fugiat voluptatem est corrupti deserunt iure. Voluptatem aspernatur quisquam eos est voluptatem et officia. Sunt qui eius quia atque fugiat. Velit voluptatem aut deleniti voluptatem vitae.</p><p>Qui aut voluptates expedita alias. Hic voluptates eum est sit beatae quia odio reiciendis. Aut exercitationem magnam repudiandae.</p><p>Quisquam enim possimus debitis quibusdam nesciunt. Voluptatum est ut illum est inventore iure. Enim sint id cum omnis et.</p><p>Nihil rem quidem omnis eius sit. Dolorem qui sint cupiditate voluptatem iste voluptas et magni. Vel et temporibus dicta dolor.</p><p>Mollitia facilis asperiores blanditiis dolor. Ut aut quam dicta consequuntur quisquam voluptatem. Eum minus labore ut sit vitae explicabo.</p><p>Sunt est deserunt quas vitae id illum quo quo. Nostrum cupiditate fugiat odio est impedit iure suscipit.</p><p>Ea est nulla voluptas enim dolorum quo velit occaecati. Voluptatem eius quibusdam provident temporibus eveniet possimus cumque. Ipsa cumque dolor quidem non.</p><p>Illum in recusandae aut molestiae. Eligendi id et eos in voluptates. Et dicta harum tempore fuga ipsam. Consequatur aut sunt accusamus praesentium porro aliquid incidunt. Hic ut error vero vitae.</p>', NULL, '2022-07-14 00:44:21', '2022-07-14 00:44:21'),
(10, 1, 2, 'Voluptate alias illum aspernatur qui numquam et omnis magnam.', 'odio-necessitatibus-est-possimus-nisi-optio-est-hic', NULL, 'Sed quam ducimus itaque et. Tempore unde qui quis quas sint.', '<p>Repellat et a maxime perferendis veritatis veritatis. Culpa eum qui qui autem quidem enim.</p><p>Maiores non dolores molestiae ipsam mollitia aut inventore quidem. Molestias soluta delectus excepturi praesentium non. Dolores hic et dolores quod sit enim quia. Similique quibusdam laudantium officiis enim.</p><p>Veritatis et quia hic reprehenderit. Nihil cum dignissimos unde unde eligendi aut. Ipsa voluptatum non animi ratione ut saepe. A et voluptatem et autem non distinctio facilis et.</p><p>Dolorem debitis dolorum libero placeat itaque. Doloribus cumque consequatur vel deleniti eum. Soluta magnam et id.</p><p>Vitae ab nesciunt at corporis. Aut iusto et qui qui est voluptatem et accusamus.</p><p>Et eius eum enim occaecati animi adipisci aliquid deleniti. Rerum in aliquid sapiente nesciunt cumque aperiam. Debitis beatae laudantium sunt natus doloribus non dolorem sapiente.</p><p>Sint veritatis aut quia eos est veniam at. Earum recusandae ea qui voluptate ut. Dolorum voluptatem iure quos. Dolorem quisquam eveniet expedita quia iure.</p><p>Aliquam adipisci sed enim aliquam error magni. Expedita sequi debitis nam vel id ut vitae. Alias beatae possimus at inventore cupiditate culpa qui. Quia deserunt aperiam rerum.</p><p>Adipisci sed repellendus recusandae. Amet harum numquam maxime tempore quia error recusandae. Quia vel error laboriosam assumenda minima recusandae veniam. Maxime magnam animi harum fuga veritatis aut id ut.</p><p>Ducimus dignissimos voluptates neque iste. Voluptatem ut eos aut ad. Est sint et voluptas expedita harum animi cupiditate animi.</p>', NULL, '2022-07-14 00:44:21', '2022-07-14 00:44:21'),
(11, 2, 3, 'Dolores est et nam quibusdam laborum qui.', 'et-quisquam-esse-qui-eos-quia', NULL, 'Necessitatibus qui illo enim nisi ea vel. Blanditiis eligendi ab occaecati. Consequatur ipsa impedit reprehenderit maxime quis ipsa consequatur.', '<p>Eum ea sit ratione magnam provident ipsam. Illum aut qui sed id iure enim similique. Aliquam suscipit ad perferendis tempore numquam. Id modi earum impedit ut.</p><p>Et velit suscipit eligendi doloribus. Quod harum suscipit ea quo rerum suscipit.</p><p>Labore dicta fugiat sit doloremque quia. Ab est excepturi eius labore in assumenda quisquam. Voluptatem laboriosam sed exercitationem reiciendis cumque aut.</p><p>Recusandae omnis non consequatur perferendis consequatur magni et. Voluptas ad earum id. Dolor dolore fugiat esse minima cupiditate doloremque consequuntur. Aut praesentium eos sunt.</p><p>Temporibus eos autem asperiores sit. Esse ea et et at maxime ducimus laudantium tempore. Illum rerum nesciunt unde quos quia voluptatem libero vel. Quia et est repudiandae totam.</p><p>Distinctio voluptatibus dolores alias vel. Odit cum sapiente molestias tenetur eum cupiditate. Rerum nihil aut cupiditate fugiat sed id corporis.</p><p>Rerum harum fugit voluptatem in sunt ut quia. Eveniet ullam odio quidem sunt. Nihil non quae voluptas minus explicabo. Officiis molestias et perspiciatis numquam. Voluptatum suscipit cupiditate qui id eius eveniet.</p><p>Architecto et doloremque incidunt saepe. Nostrum sunt nesciunt laborum ipsa quia reprehenderit. Culpa libero voluptatibus tempora et.</p><p>Est id pariatur aut similique aut. Perspiciatis architecto nihil accusantium non nulla dolore harum occaecati.</p>', NULL, '2022-07-14 00:44:21', '2022-07-14 00:44:21'),
(12, 2, 1, 'Blanditiis adipisci ab eos fugit.', 'voluptates-sequi-veniam-et-aliquid-odit-vitae-quia', NULL, 'Voluptas ut sed quia earum quia mollitia voluptas molestiae. Nisi quos qui itaque fugit. Aut labore et et.', '<p>Quasi aut aut maxime eum sit. Est alias repellat est dolores.</p><p>Ad omnis et deserunt corporis. Necessitatibus illo magnam molestiae deserunt. Repellat possimus labore dolorem sit nulla. Et natus provident et est ut.</p><p>Ipsa laudantium unde ab vel ratione molestiae quia. Aut laboriosam optio voluptatem aut occaecati. Officiis rerum non quidem asperiores ex dolorem cupiditate.</p><p>Voluptatem repellendus laboriosam velit quo vel. Et odit aut provident dolor. Qui sint laborum enim et commodi qui rem nihil. Quo inventore et porro tempore et aut eum voluptatem.</p><p>Consequatur et mollitia sint repellat doloribus. Quibusdam dignissimos ut accusantium ullam.</p><p>Molestias eius aspernatur qui optio ut aliquid totam. Dolorum quos totam quidem quia consequatur esse impedit. Dignissimos ut doloremque non omnis qui voluptatem molestias.</p><p>Officiis neque sapiente accusamus vitae adipisci enim ab. Esse omnis laudantium non molestiae molestiae sit consequatur. Officia omnis in dolore dolorum illum voluptatibus. Recusandae quis ea esse quae quo.</p><p>Quis omnis minus sit iusto autem. Omnis ut dolorem nihil esse dolorum id et. Reiciendis sit sequi ut dolorum sit iure perspiciatis. Voluptates omnis omnis et repudiandae quo illo sunt atque.</p><p>Facere occaecati cupiditate atque. Deserunt sequi maiores eos quis tempora. Fugiat dignissimos labore in placeat.</p><p>Earum possimus error sit iste et. Officiis et dicta quam molestiae est dolore. Aut laudantium accusamus temporibus unde sit dolores. Sequi facere minima corrupti quo consequuntur delectus.</p>', NULL, '2022-07-14 00:44:21', '2022-07-14 00:44:21'),
(13, 1, 3, 'Et repellendus et voluptatibus aliquid.', 'voluptas-placeat-omnis-illum-sit-est-reprehenderit-officiis', NULL, 'Quibusdam ipsam ut non eos. Ex voluptatem voluptas et sunt sed consequatur et. Et esse similique et sapiente incidunt eos ut. Qui non sed in aspernatur aut molestiae.', '<p>Iure eos maiores dolorum quis dicta odio quisquam. Qui expedita consequatur accusantium vitae possimus. Nihil recusandae placeat debitis eaque a quia necessitatibus. In dicta voluptatem cupiditate a.</p><p>Temporibus accusantium est consequuntur porro ullam ipsum iure temporibus. Aut quibusdam nobis quia totam ipsum ea. Et ut vero quaerat consectetur. Repellat similique in qui officiis.</p><p>Voluptatem sint aliquam rerum sit. Est voluptas excepturi labore repellendus. Et et et quas corrupti eaque quidem. Excepturi architecto incidunt natus magnam et.</p><p>Et cum quo reiciendis ab dicta itaque. Ipsum quam quia quasi corrupti in error aspernatur. Est dolores amet quia ut quam dicta.</p><p>Itaque nulla ut incidunt et ipsam quaerat. Aut rem quasi quibusdam sed praesentium molestias quis vero. Nihil enim velit quas omnis et itaque.</p><p>Quidem libero aut perspiciatis porro quia. Laborum consequuntur voluptate iusto dolorum. Debitis qui non vel occaecati repellendus amet magni.</p>', NULL, '2022-07-14 00:44:21', '2022-07-14 00:44:21'),
(14, 1, 1, 'Accusamus laborum amet aliquid quis earum ut assumenda eveniet beatae.', 'est-sit-perspiciatis-ipsam-nisi-illo', NULL, 'Officia saepe omnis tempora est. Aspernatur est qui earum. Excepturi magnam dolores rem ut quo alias. Maiores ea quae aut ad id.', '<p>Id soluta maiores sint provident qui magnam. Nihil quis maiores numquam molestias. In esse est corporis quas hic. Autem voluptas consequatur commodi suscipit eius qui iusto.</p><p>Nisi culpa aut veritatis incidunt velit. Quasi consequatur et omnis voluptate. Id mollitia esse non debitis veritatis. Ducimus eos ad quo accusantium eos voluptatum possimus. Quaerat quasi voluptate reiciendis.</p><p>Fugit incidunt consequatur non ab veritatis necessitatibus aut. Tenetur libero qui occaecati.</p><p>Qui rem quos laborum sint. Accusantium ut libero ut quidem voluptatem doloribus voluptate.</p><p>Harum dignissimos excepturi aut culpa eum facere voluptates. Dolor cumque reiciendis modi enim maxime. Qui architecto aut ducimus nisi asperiores vel quam doloribus.</p><p>Eligendi accusantium at ut voluptatem pariatur. Ratione velit sed quo recusandae sunt ea et.</p><p>Aspernatur qui maiores sint. Aut voluptates minus et explicabo. Officiis omnis velit accusamus esse beatae inventore.</p>', NULL, '2022-07-14 00:44:21', '2022-07-14 00:44:21'),
(15, 1, 2, 'Officia ut dolorem dolores tempora.', 'est-dolorum-maxime-sed-id-laborum-aut-reprehenderit-eligendi', NULL, 'Corporis repellendus voluptas ea eos ipsam et itaque. Ut corporis nostrum aut laboriosam. Velit porro a voluptas aut enim.', '<p>Consequatur nam ut excepturi id. Beatae sunt sed nihil reiciendis aperiam est illo.</p><p>Error nesciunt commodi porro doloremque vel et error. Illo dicta minima occaecati qui eos nam velit quia. Dolorum aliquam consectetur iusto deserunt voluptates.</p><p>Quis est rerum odit ipsam. Error esse provident quo recusandae mollitia ex. Aut explicabo quasi laudantium hic porro. Sequi porro aspernatur sit quos voluptas. Non saepe autem sit sunt impedit aliquid.</p><p>Unde libero minima voluptatem molestias ut illo. Tempore in illo tenetur aut sit dolorum.</p><p>Dicta autem recusandae dolor et. Eos nemo unde quia molestiae. Nisi quo sit eum voluptatum tenetur. Voluptates quisquam neque impedit incidunt explicabo.</p><p>Explicabo eos ullam ab excepturi tempore fuga temporibus architecto. Vel mollitia asperiores quaerat veritatis eligendi nisi laboriosam eos.</p><p>Dolores atque maxime dolores eos. Sit eius id cupiditate nam tempora natus est vel. Vitae animi eos quia corporis molestiae aut consequatur.</p><p>Est fugiat possimus voluptatem at. Nostrum quia asperiores consectetur corporis id asperiores.</p><p>Consequatur odio blanditiis repudiandae aperiam magni. Aut voluptates ut dolor. Sapiente explicabo est quae eaque nisi. Sit quo veniam in et minus quisquam.</p>', NULL, '2022-07-14 00:44:21', '2022-07-14 00:44:21'),
(16, 1, 3, 'Rerum corrupti omnis consectetur deserunt.', 'facere-non-qui-minus-optio-sed-in', NULL, 'Recusandae velit nesciunt quo alias facere est omnis iusto. Sint sed enim occaecati fugit voluptatibus provident. Repellendus nihil adipisci quos eligendi sit temporibus vitae.', '<p>Suscipit aliquam quo doloribus tempore quae vel natus a. Et minus molestias et distinctio.</p><p>Quo repellat animi mollitia quas dolorem aliquam. Tempore non vel et eos explicabo odio. Quia officiis perferendis alias consequuntur reprehenderit sed dolor.</p><p>Ipsum nihil nemo voluptatum iusto eius soluta. Incidunt nisi vel nostrum sunt quis sit molestiae dolorem. Itaque dolor quidem quia.</p><p>Natus non adipisci laborum facilis. Ad quos fugit eligendi est ut dolore veritatis non. Reprehenderit modi iusto placeat expedita.</p><p>Totam sed voluptate minima consequuntur repudiandae consequatur. Minima amet et dolorem quo. Sequi voluptatum accusamus impedit iste modi aliquid. Molestiae nisi ipsum provident a maiores corporis.</p><p>Eos distinctio sit dolore est similique nesciunt. Qui consectetur qui molestiae iste velit numquam labore. Aliquam nisi illo nulla.</p><p>Qui aut omnis eius nemo laudantium. Assumenda dolorem eos qui dolores ducimus adipisci.</p><p>Pariatur quod asperiores ea quae voluptas suscipit. Quibusdam assumenda accusantium sit quo quia omnis laborum. Facere nesciunt voluptates eaque corrupti est quaerat. Dolorum dicta aut tempora veniam rerum est asperiores.</p>', NULL, '2022-07-14 00:44:21', '2022-07-14 00:44:21'),
(17, 2, 1, 'Suscipit vero ullam impedit.', 'porro-tempora-totam-impedit-asperiores-facere', NULL, 'Voluptatem aut id et occaecati vero. Quia repudiandae tempore eos voluptatibus veritatis non ipsam. Dolorem ut sed excepturi.', '<p>Est perspiciatis qui quaerat est aliquam. Necessitatibus facilis possimus incidunt voluptatem. Consequuntur tempora fugit officiis veritatis quisquam eaque. Voluptatem ab quisquam ut est doloremque.</p><p>Quia doloribus sapiente dicta eos corporis et numquam iusto. Iure in quia animi natus illum eaque. Facilis omnis quae quas qui.</p><p>Voluptates inventore est non deserunt. Optio ducimus enim dolores pariatur molestias delectus at voluptas. Voluptas illo rerum illo ratione. Qui eum cupiditate quis dolore ab id quisquam consequatur.</p><p>Laborum eligendi sed nesciunt voluptatem sit explicabo. Est unde id tenetur sit sint qui. Ipsam esse natus in neque veniam eaque non omnis. Similique non repudiandae optio quidem laborum et.</p><p>Reprehenderit hic id velit amet illo illum aliquam reiciendis. Adipisci aut repellat dignissimos iure expedita iure beatae. Ipsa dolores vel pariatur commodi quam corrupti. Dolores eum architecto dolorum voluptatem vero expedita.</p><p>Temporibus aliquid aperiam sed dolor quasi id. Repellat qui minima non quod saepe iste ratione. Ut qui sit voluptas explicabo et quibusdam sint. Eum sequi non est ullam libero.</p><p>Vero enim sint maxime perferendis. Quia distinctio ad ipsa ea velit odio voluptas. Consectetur animi incidunt eligendi corporis et hic cum ipsam.</p>', NULL, '2022-07-14 00:44:21', '2022-07-14 00:44:21'),
(18, 2, 3, 'Ducimus repudiandae nihil aperiam.', 'autem-animi-velit-molestias-repellat-aliquam', NULL, 'Aut doloremque ut modi soluta magni eum architecto. Esse perferendis nemo ut dignissimos. Nulla architecto provident est eaque quasi ipsum sunt.', '<p>Repudiandae numquam et vel. Et mollitia ipsam magni vel quia. Tempore velit ipsum aut. Vero autem dolorem nulla dolores.</p><p>Sed officia maxime voluptas cupiditate cum aut dolor. Earum vero quia quis repellendus quibusdam. Aliquid quas voluptatum nobis numquam rerum. Quis labore voluptas qui. Sunt aut eos velit.</p><p>Ut voluptas reprehenderit nam cumque quis sapiente qui. Natus consequuntur nisi dolorem eum ad. Aut esse non natus saepe neque molestiae modi. Quam animi consequatur incidunt impedit porro aut sed dicta.</p><p>Accusamus tempora ducimus repellendus facilis quia qui tempora totam. Blanditiis cumque explicabo id qui nobis et cum. Itaque et praesentium iusto quidem sint id. Nihil est sed temporibus itaque impedit soluta saepe.</p><p>Distinctio voluptate et quibusdam saepe. Ipsam perferendis reiciendis veniam aut reiciendis. Expedita ut non sit nulla temporibus.</p><p>Nam voluptate a natus rerum. Eos odit delectus exercitationem ab. Ut voluptatem excepturi qui accusamus numquam deserunt.</p>', NULL, '2022-07-14 00:44:21', '2022-07-14 00:44:21'),
(19, 2, 3, 'Id earum nobis.', 'animi-et-fuga-cumque-voluptate-maiores-minima', NULL, 'Quisquam cupiditate necessitatibus quae distinctio eaque. Praesentium maiores unde est dolore dolor. Molestias doloribus et dolore beatae velit illo. Perferendis dolore sit sed ducimus alias voluptatem ut.', '<p>Ratione alias cum assumenda dolorem. Ab ut occaecati sed dignissimos a doloremque. Non illo sint minus. Quae praesentium dolorem est aliquid quam. Non est sunt expedita deleniti delectus culpa.</p><p>Architecto explicabo distinctio voluptas magnam quisquam at officia eum. Aperiam ducimus et ut consequatur dolor nisi ut ducimus. Quod neque sed velit laborum nostrum dolores iusto ipsum.</p><p>Blanditiis rerum tempore excepturi commodi qui. Odit quo eos autem excepturi fugiat et aut. Et deserunt perferendis in earum.</p><p>Aut laborum iusto dolores quod animi. Ex eius possimus voluptas nostrum perspiciatis ut. Repudiandae corporis dolorum quis laboriosam mollitia atque. Natus quisquam molestiae itaque voluptas est.</p><p>Consequatur illum modi iure voluptates reprehenderit qui similique. Nobis repellendus voluptate libero voluptatem voluptas. Ut et delectus voluptatibus. Hic suscipit optio modi qui cumque itaque.</p><p>Explicabo accusantium voluptas maiores reprehenderit incidunt officia facere. Aliquid sapiente dolorum voluptatum. Quisquam qui velit quis vel modi unde. Non voluptate suscipit dolor ut non.</p><p>Eum beatae exercitationem vel esse dolorem. Minima in non exercitationem aut incidunt distinctio iusto excepturi. Vitae hic molestiae minus rerum consequuntur voluptatibus. Impedit dignissimos sit et sit sit aliquid molestiae.</p><p>Doloremque quo neque maiores aut. Doloribus enim ut et repudiandae repellendus. Rerum voluptas dolore excepturi.</p><p>Ipsum facere earum temporibus. Cupiditate vero maxime magnam aut. Voluptas aut natus sit voluptatem error. Blanditiis autem ut enim dolor cumque minus.</p><p>Nemo sapiente facere numquam. Quis cupiditate facere et praesentium. Eligendi id sequi dolore quam id. Dolorem quod vel dolor similique quas et in. Laboriosam veniam saepe eaque fugiat ipsam.</p>', NULL, '2022-07-14 00:44:21', '2022-07-14 00:44:21'),
(20, 1, 1, 'Illum aut maxime officia tenetur.', 'incidunt-adipisci-iusto-fuga-assumenda-ratione-aliquid-voluptas', NULL, 'Magnam nihil nihil debitis a quidem nulla aut. Est dolorem sint eaque sequi corrupti quasi. Et necessitatibus quasi dolores quisquam fugit quia. Expedita ratione corrupti similique.', '<p>Adipisci voluptatibus a quia vero officia saepe quod. Quidem et ad quae impedit et ea. Distinctio ad ut quae tenetur dolores ex. Molestiae repellat in eum perspiciatis ullam eos. Molestiae in deleniti et voluptatum nihil.</p><p>Perferendis voluptas ipsam ut officiis. Nobis minima placeat accusamus. Dicta ut consequatur sed laboriosam quam aut. Ratione facere eos iusto ipsa sed expedita.</p><p>Quisquam id dolores id repellendus quis. Adipisci ad reiciendis aut velit corrupti facere. Eum molestiae maiores voluptatum aut iure reiciendis adipisci. Quasi sunt quis omnis nulla.</p><p>Molestiae non ullam voluptatem ipsum animi. Ab aperiam blanditiis incidunt neque et ut dolorem.</p><p>Beatae ut et aut eos eos. Sit facere nihil at sunt sit commodi minima ea. Minus qui iure voluptas laudantium autem deserunt corporis. Sed ratione nulla nemo nihil velit accusantium.</p><p>Quidem cum eius rerum enim pariatur. In voluptates velit in qui omnis ratione natus.</p><p>Reiciendis totam numquam excepturi unde animi adipisci. Et doloremque expedita nulla sequi. Accusantium molestias eos beatae est aliquid.</p><p>Et aut ut laborum asperiores. Ut quo id sunt est eaque. Ipsam delectus cupiditate reprehenderit iusto.</p><p>Eligendi est aliquid odit saepe tempora omnis. Vel omnis quia cumque aut nesciunt magnam qui repellendus. Nesciunt rerum voluptas quidem illum rerum nostrum sint. Odit sit similique commodi quis facere ab iste. Necessitatibus magnam corporis earum non enim fugit impedit et.</p>', NULL, '2022-07-14 00:44:21', '2022-07-14 00:44:21'),
(21, 1, 2, 'Web Sinau', 'web-sinau', 'post-images/yhUYjFi56myIyFw7uGnnKCbafudSXuVfMgeXuSHG.jpg', 'Sinau Bareng', '<div>Sinau Bareng</div>', NULL, '2022-07-14 00:56:40', '2022-07-14 00:56:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Sidan Yusuf', 'sidan', 'sidan@gmail.com', NULL, '$2y$10$PMfkqOJ6WPV.18Go/l61h.4GFN0IknPWmpUxZjPdon4oW6rKAYTzm', NULL, '2022-07-14 00:44:16', '2022-07-14 00:44:16', 1),
(2, 'Shakila Fujiati', 'cinta.saptono', 'fathonah38@example.net', '2022-07-14 00:44:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9CtT2uNmaOANcewpyEnc3DTxklITf9VI7LqZ3OznaUfqtpSzJo1iIz9uWUjb', '2022-07-14 00:44:20', '2022-07-14 00:44:20', 1),
(3, 'Jatmiko Putra S.H.', 'wpuspita', 'vicky.irawan@example.net', '2022-07-14 00:44:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sBA7WdSgo1', '2022-07-14 00:44:20', '2022-07-14 00:44:20', 0),
(4, 'Puput Nuraini', 'dadi.sinaga', 'wahyuni.anastasia@example.net', '2022-07-14 00:44:20', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eynwxkongU', '2022-07-14 00:44:20', '2022-07-14 00:44:20', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
