-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2022 at 02:08 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grims_blog`
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
(1, 'Web Programming', 'web-programming', '2022-03-05 02:15:09', '2022-03-05 02:15:09'),
(2, 'Web Design', 'web-design', '2022-03-05 02:15:09', '2022-03-05 02:15:09'),
(3, 'Personal', 'personal', '2022-03-05 02:15:09', '2022-03-05 02:15:09'),
(4, 'Gaming Corner', 'gaming-corner', '2022-03-08 06:49:35', '2022-03-08 07:06:52');

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
(5, '2021_11_13_142635_create_posts_table', 1),
(6, '2021_12_06_062930_create_categories_table', 1),
(7, '2022_03_08_130539_add_is_admin_to_users_table', 2);

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
  `publish_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `publish_at`, `created_at`, `updated_at`) VALUES
(1, 2, 3, 'Omnis voluptas inventore at corrupti.', 'est-quam-laboriosam-placeat-amet-accusantium-quae', NULL, 'Ea temporibus repellendus sint molestiae. Corrupti eligendi nam numquam ea aut facilis. Expedita iure tempore qui numquam nam repellat. Omnis dolores deserunt sunt voluptas in. Molestiae ut mollitia ducimus consequatur accusantium in hic.', '<p>Omnis sed excepturi dicta doloremque officiis perferendis. Eum et voluptatem modi quae vero. Qui maiores pariatur molestiae illo dolores blanditiis accusantium. In ad non voluptatibus molestiae ipsa ut debitis.</p><p>Reprehenderit atque voluptas assumenda dolores maxime aut. Non autem tempore temporibus quia. Aut et non in commodi quisquam. Molestiae occaecati quia atque consequatur fugit.</p><p>Itaque et sint consequatur sed dolorum temporibus. Tenetur doloremque id expedita et. Non omnis labore blanditiis optio.</p><p>Est iusto vitae minima qui labore. Repudiandae in voluptas rerum explicabo.</p><p>Est rerum facilis voluptatum perferendis tempore dolores. Modi fugiat molestiae dolores sunt facilis. Dicta odio velit ad. Exercitationem ut ea sed consectetur voluptatibus sapiente sit.</p>', NULL, '2022-03-05 02:15:10', '2022-03-05 02:15:10'),
(2, 1, 3, 'Possimus et aut unde minima ipsam.', 'ut-libero-nesciunt-tempore-aliquam-pariatur-et-molestiae-molestiae', NULL, 'Voluptatem cum quia animi. Mollitia aut ut temporibus est et. Quia enim minus quas enim necessitatibus dolores illum. Error architecto quidem soluta sit autem aliquam ipsa.', '<p>Beatae aut dolor temporibus hic sed. Corrupti distinctio unde ut nostrum magni. Assumenda doloribus totam ducimus reprehenderit nesciunt.</p><p>Vero laboriosam facilis possimus dolor autem facilis fugiat. Illo quis quis molestiae placeat. Est dolores rem natus dolor consequuntur quas exercitationem. Eaque et rerum sunt dolor omnis nihil.</p><p>Aliquid similique debitis non. Nulla blanditiis nihil et est laborum. Doloremque sint laudantium eius error ea autem. Commodi tempore aut minima necessitatibus atque.</p><p>Provident et amet nam. Est consequatur dolor dolore in officiis. Et quidem quam voluptate magni laborum nulla et. Quia aliquid est quo nulla dolorum quae modi.</p><p>Ab aut quo nostrum beatae voluptatibus. Laborum quis et iste ducimus eaque id. Id amet autem nihil architecto.</p><p>Ut eos quidem hic alias placeat aut qui. Eligendi velit recusandae quaerat molestias quod. Laborum mollitia eum dicta qui exercitationem. Non est aut architecto corporis voluptatem asperiores doloremque.</p><p>Modi labore dolorum sit doloremque modi quis et. Quibusdam ut dignissimos et iure quia. Nostrum amet consectetur necessitatibus praesentium nihil eius ullam.</p><p>Dicta et sint numquam dolorem nihil sed. Voluptas totam deserunt occaecati laborum nemo tempore aliquid. Ut ex ut omnis. Expedita quisquam repudiandae repellendus inventore voluptatem.</p>', NULL, '2022-03-05 02:15:10', '2022-03-05 02:15:10'),
(3, 3, 3, 'Nam quo.', 'eaque-corrupti-quidem-ut-quae-temporibus-natus', NULL, 'Sed officiis eligendi adipisci recusandae dicta provident. Amet velit sunt nobis aut recusandae corrupti. Nihil quasi quod sed architecto voluptatem id saepe nesciunt.', '<p>Velit velit consequuntur ea. In qui sit in et consequatur a exercitationem. Saepe in nobis nisi cupiditate.</p><p>Ad aut dolor deleniti voluptas quam sint. Itaque optio quaerat odit et cumque et aliquid. Nihil omnis natus rerum consequatur reiciendis ad.</p><p>Inventore eos veniam esse quisquam. Quis rerum itaque ut eos ducimus. Officiis quia repellendus animi quibusdam voluptatum debitis consequatur.</p><p>A impedit placeat fuga distinctio aut. Quis ut est corporis qui. Est similique aperiam est pariatur et quia. Ab aspernatur consectetur amet nisi minima.</p><p>Minima dolorem distinctio maiores assumenda quo. Ea aut praesentium exercitationem at. Ad sint amet est temporibus dolor.</p><p>Voluptatum omnis voluptatum eos omnis deserunt. Fugit sed minus laudantium omnis cum placeat non. Quis quae blanditiis ipsa.</p><p>Minus et voluptatem vitae quae minus ea fugiat. Enim cum et unde est rerum quis rem facilis.</p><p>Nemo laudantium ad expedita asperiores debitis. Temporibus tempore aut tempora et. Iste unde voluptatem reprehenderit ratione.</p><p>Mollitia illo consequatur voluptatem sint nostrum rerum magni. Ratione harum iure ea. Autem qui adipisci mollitia voluptates aliquam sit assumenda. Aut aperiam et dolorem accusantium totam est et.</p>', NULL, '2022-03-05 02:15:10', '2022-03-05 02:15:10'),
(4, 1, 2, 'Nisi ullam sed impedit laboriosam dolor numquam ut nobis quod aliquid natus.', 'autem-necessitatibus-perferendis-facere-magni-eos-quibusdam', NULL, 'Voluptatem qui libero hic amet ratione ut. Dolor quia laboriosam aut. Nostrum harum dignissimos unde ut autem consequatur enim perferendis. Quasi voluptatem eaque soluta a consequatur.', '<p>Vitae explicabo eligendi sint architecto natus vel et. Sunt nam nesciunt expedita rem. Quibusdam quia labore veritatis qui. Provident rerum non aut sit est.</p><p>Qui est facere maiores expedita dolorem sit perferendis. Et fugit dolore ullam eaque reiciendis molestias tempore. Omnis cum omnis omnis quasi. Sunt qui culpa id dolorem.</p><p>Ut voluptatem dolorem et. Voluptas sed atque autem suscipit commodi ut. Incidunt maiores voluptatum debitis quis.</p><p>Nisi deleniti inventore ducimus suscipit laboriosam porro. Consequatur eos consectetur in consequatur dolore blanditiis. Sint omnis quis recusandae voluptatem adipisci vel consectetur. Ipsa exercitationem dolor quia et. Fuga dolore commodi ipsam ipsa.</p><p>Voluptate rerum aspernatur qui consequatur voluptatem quisquam. Dolorum ea et molestiae sint. Placeat qui asperiores quisquam est veritatis autem libero.</p><p>Aperiam iure fugit temporibus vel commodi qui. Sunt accusantium dolorem veritatis reiciendis qui et neque. Sint totam odio laboriosam qui perferendis animi.</p><p>Pariatur id et labore perspiciatis et qui natus numquam. Dignissimos aut ipsam qui voluptatem exercitationem nam magni. Tempore assumenda sit accusantium est ea fugit. Natus totam mollitia officiis temporibus.</p>', NULL, '2022-03-05 02:15:10', '2022-03-05 02:15:10'),
(5, 1, 1, 'Enim architecto sed doloremque et.', 'delectus-nostrum-qui-aut-quo', NULL, 'Qui unde illo ullam et natus quasi qui. Recusandae molestiae eligendi assumenda est quasi commodi ipsum. Officia tenetur laboriosam aut facilis veritatis nisi id culpa. Sequi repudiandae aliquid eligendi in sunt ea deleniti.', '<p>Error a aliquid quo reprehenderit qui omnis et quo. Est praesentium velit provident blanditiis numquam. Nihil quia sed recusandae.</p><p>Voluptatem ratione quidem aut suscipit debitis quas dolores dolorem. Vel numquam asperiores dolore voluptatem. Autem quasi eum corrupti dolorum aliquid voluptatem temporibus veniam.</p><p>Culpa dolorem eius laboriosam necessitatibus sunt aut. Sit aut commodi beatae dolores non voluptas adipisci. Atque aliquam voluptates fuga eum exercitationem.</p><p>Iusto rerum debitis excepturi quidem eius. Nesciunt suscipit et ab in. Voluptatem rem aliquam quod enim temporibus.</p><p>Repudiandae facere dicta magnam tempora quae. Quidem modi placeat consequatur. Ipsum et ut placeat voluptas qui. Quaerat ab sapiente eveniet velit repellendus.</p><p>Quia aperiam et aut. Voluptate sit occaecati quod expedita sed. Officiis quaerat reiciendis perspiciatis earum blanditiis sint praesentium consequatur. Odit est nisi sapiente provident id.</p><p>Dolore tempore alias et et rerum. Ut quo amet similique. Asperiores eum quo architecto laudantium aut. Quaerat nulla perspiciatis nihil beatae.</p><p>Cum aut delectus esse dolore voluptatem. Accusamus asperiores quae recusandae dignissimos. Quia consequuntur enim exercitationem perferendis accusamus aliquam minus.</p><p>Recusandae quis autem architecto soluta. Non dolores saepe repellat occaecati. Tempore harum culpa magni quas quibusdam corporis.</p>', NULL, '2022-03-05 02:15:10', '2022-03-05 02:15:10'),
(6, 2, 2, 'Aut perspiciatis exercitationem natus id accusantium placeat aliquid incidunt modi.', 'quisquam-facere-eos-omnis-explicabo', NULL, 'Accusantium numquam sed unde hic corrupti et ex. Rem voluptas excepturi sunt quasi quo asperiores asperiores. Ipsum expedita expedita deleniti eveniet nihil dolores. Corrupti vitae ullam impedit rem qui.', '<p>Vel voluptates culpa molestias voluptas sequi accusamus sapiente. Maxime numquam qui pariatur dicta non. Facere optio consequatur in sunt vel consequatur quam.</p><p>Blanditiis dolorem est recusandae rerum cumque. Dicta voluptas dolore illum dolores in vero quos. Adipisci maxime nobis ea blanditiis incidunt et corrupti.</p><p>Voluptas aut natus ut in sint eum. Nesciunt ipsam velit beatae qui tempore et magni. Rem dolorum eaque et unde aut doloribus molestiae.</p><p>Voluptatem minima eveniet quidem. Aspernatur quas iusto quod voluptatem quis. Minus voluptatem quia qui eos.</p><p>Quae non vitae at in. Eum iste blanditiis dolores. Mollitia doloribus voluptate architecto sed. Necessitatibus nam possimus eligendi architecto et dicta.</p><p>Qui voluptas et aut ipsa eaque. Nihil accusamus sint sequi omnis minus. Ex iure blanditiis fugit blanditiis molestiae aut. Debitis unde praesentium voluptatem quasi. In ut voluptatem veritatis totam dolorem.</p><p>Ea consequatur et illum eos. Magnam maiores sunt quos quo quaerat.</p>', NULL, '2022-03-05 02:15:10', '2022-03-05 02:15:10'),
(7, 2, 1, 'Labore aut rerum quaerat omnis.', 'provident-qui-expedita-itaque-est', NULL, 'Velit totam nihil est id. Sunt rerum qui dolorum et laudantium magnam perspiciatis. Enim repudiandae officia accusamus itaque aut suscipit et quaerat.', '<p>Impedit minus magni reprehenderit. Facere tenetur nam harum dolorem dolore molestiae ipsum. Maiores aliquam minima porro sapiente. Laudantium et dolorum vero numquam asperiores deleniti.</p><p>Repudiandae non ut quasi dolores voluptatibus quia. Ea similique nisi et nihil quibusdam fugit. Est perferendis ea voluptatibus rem autem veritatis. Fuga dolorem dolor accusantium nemo nobis inventore sed. Labore atque occaecati neque culpa numquam.</p><p>Tempora est nisi id sit rerum enim. Blanditiis ipsa est explicabo voluptas.</p><p>Nam vero suscipit nemo est et. Blanditiis magni voluptatem omnis. Illo cupiditate quaerat illo consequatur ut nisi.</p><p>Tempora exercitationem corporis vitae cum similique ea eum quod. Nam facilis sint atque cupiditate quia est. Doloremque et et consectetur necessitatibus quae magni.</p><p>Impedit sequi vero quis aut enim sit. Ad earum ut sed distinctio quod repellat sequi nam. Ut sequi modi id dolor quia assumenda ut iure. Assumenda similique non quo expedita.</p><p>Excepturi necessitatibus fugit unde assumenda. Pariatur non neque totam ad impedit aperiam vel. Sequi earum et repellat beatae.</p><p>Doloremque et aliquam rem minima nobis. Culpa impedit a expedita nisi.</p><p>Nemo et expedita tempora velit hic assumenda. Quae consectetur rem provident similique placeat ullam sit. Eveniet architecto provident iusto voluptas.</p>', NULL, '2022-03-05 02:15:10', '2022-03-05 02:15:10'),
(8, 1, 2, 'Facilis quia at doloribus quis non dolorem nostrum corporis.', 'aut-corrupti-sit-dolor-sed', NULL, 'Velit voluptate voluptas quae. Totam officia aut neque suscipit nihil aut. Atque qui atque sequi nihil eum. Voluptatibus vel qui beatae ducimus.', '<p>Rerum accusamus unde exercitationem vel neque. Aut placeat voluptatibus qui dolorem. Odit doloremque non et soluta placeat quibusdam dolor.</p><p>Eos ullam officiis impedit velit. Eveniet quia eum nihil est aliquam. Incidunt voluptas dolorem quis eum.</p><p>Aspernatur dolores porro quia consequatur eius tenetur omnis. Quia sit asperiores cum vel. Architecto ut voluptas laboriosam optio.</p><p>Asperiores beatae id aliquid error. Id rerum possimus sapiente commodi sed quos. Tenetur tenetur et officia quo quas.</p><p>Dolore voluptatem consectetur et. Ullam quis eius sequi ea ea et qui. Ut dolorum cum temporibus aut asperiores molestiae quo. Illum tempore consequatur et odio soluta quidem alias.</p><p>Sunt odio libero laudantium reiciendis in perferendis iste. Qui nemo qui earum qui nam. Expedita sed provident qui nesciunt eligendi.</p><p>Dicta dolorum voluptatem voluptatem iusto iusto ratione qui. Error id sit tenetur. Aperiam tempora optio deserunt odio nam. Autem aspernatur nobis corrupti aperiam nisi.</p><p>Et sit dolorum aliquid sequi vero qui. Autem sed reiciendis velit at in quam atque. Quam optio dolores incidunt voluptatem nihil. Quo autem non repudiandae dolores amet eaque ea.</p>', NULL, '2022-03-05 02:15:10', '2022-03-05 02:15:10'),
(9, 1, 2, 'Non dolor doloremque sit quo eaque iure.', 'ullam-explicabo-ipsa-quos-tempore-quas', NULL, 'Sed est ea aliquam modi qui deleniti. Laborum molestias occaecati quos et corporis. Modi et repellat est deleniti et dolorem. Voluptatem eius aut dignissimos maxime nulla aut ut.', '<p>Id distinctio omnis laudantium odit sed eius aut soluta. Eveniet assumenda laudantium necessitatibus sunt. Tempore maxime et ut optio.</p><p>Et sed modi nobis itaque exercitationem sapiente. Ut facilis saepe corrupti laborum.</p><p>Praesentium exercitationem repellat impedit non. Voluptas vero voluptatem earum quis est amet sit. Nulla et possimus aut culpa molestiae. Est deserunt enim harum illo.</p><p>Non ut aut occaecati impedit id nesciunt. In ad porro inventore itaque et. Cupiditate culpa aspernatur non aut placeat sequi. Similique vel voluptas est iusto excepturi ea ut.</p><p>Sunt itaque ducimus dicta consequuntur quisquam dolores. Ad enim quis maiores voluptates voluptatum dolorem voluptatem. Illum a voluptas id enim.</p>', NULL, '2022-03-05 02:15:10', '2022-03-05 02:15:10'),
(10, 3, 1, 'Eius excepturi quidem aut dolores facilis iusto.', 'nostrum-modi-dolore-cumque-eveniet-eligendi-nostrum', NULL, 'Nam dolor eius fugiat tempora et. Quo dolore sed quos occaecati. Hic laboriosam ut libero dolores.', '<p>Corporis consequatur consequatur impedit eaque placeat optio. Et animi sed vitae fugiat quibusdam omnis aut ipsa. Earum quia labore rerum ea minima cupiditate. Et odit impedit consectetur quo voluptas.</p><p>Quas est provident temporibus aliquam autem. Dolorem eaque ipsa iure eius alias molestiae aut quos. Et iusto rem vero similique corrupti. Porro voluptatibus et expedita ut sunt numquam distinctio perspiciatis. Sequi nisi officiis nostrum molestiae provident non.</p><p>Sit eum nam et sequi voluptate quis. Eius delectus nihil dignissimos repellendus. Rerum blanditiis voluptate dolores repellat asperiores voluptate voluptatem. Animi esse minus eius quo quidem excepturi animi eius.</p><p>Et quia magni neque blanditiis animi voluptatem placeat velit. Est voluptatum hic autem eveniet inventore in. Eaque aut id dolorum sunt. Sed officia dolore saepe.</p><p>Et dolores sed consequatur blanditiis. Id dolore eveniet sed in. Aspernatur recusandae officia maiores maxime vel. Quae saepe architecto sit enim aliquid et numquam. Et quos corrupti perspiciatis tenetur velit natus sunt veniam.</p><p>Velit et at occaecati amet deleniti exercitationem necessitatibus. Aspernatur et fuga quia. Aut eveniet sed et ab asperiores. Velit totam omnis et sed laboriosam. Dolorem nam aut nam similique.</p><p>Ex natus labore iusto at earum nam iste. Qui quaerat provident nostrum nulla molestiae occaecati ipsa. Non nihil doloribus accusamus voluptas voluptate quidem quia cupiditate. Voluptatem accusantium beatae est aspernatur dicta dolores nobis.</p>', NULL, '2022-03-05 02:15:10', '2022-03-05 02:15:10'),
(11, 1, 2, 'Facere doloribus quibusdam.', 'nam-qui-labore-expedita-quis-aut-omnis-et', NULL, 'Sunt voluptas natus qui numquam enim. Natus et ipsa modi quo soluta eum. Earum quod soluta dolores aut vitae. Nemo et pariatur omnis voluptas.', '<p>Consequuntur sed facere fugiat sunt corrupti. Rerum dolore voluptate accusantium nobis enim totam debitis. Tenetur distinctio dignissimos ex non quia in.</p><p>Cumque quis et qui earum. Architecto dolore suscipit dolor delectus molestiae sequi nemo.</p><p>Nihil ab velit enim quisquam quae eum voluptates. Est et sequi et magnam.</p><p>Nemo commodi numquam qui ipsum. Provident eum non cupiditate omnis alias ullam qui. Ut consequatur dolores voluptatem hic qui reprehenderit architecto.</p><p>Aut accusamus sit deserunt qui. Dolorem atque labore quis vel eius rerum. Delectus aspernatur quis suscipit. Consectetur est saepe reiciendis nemo rerum error ut.</p><p>Exercitationem id praesentium dolor est quidem. Incidunt inventore ab et id animi. Molestiae perspiciatis ullam placeat dolore natus. Modi velit sint placeat molestiae voluptas eius accusantium dolor. Quisquam quidem minus consequatur ut minima assumenda quae.</p><p>Ea est eum magni quibusdam voluptatum. Consectetur totam eos reprehenderit.</p><p>Voluptatem eius totam accusamus sint. Esse facilis repellendus incidunt minima quaerat. Maiores ex ut sunt.</p><p>Sed vitae velit sit consequatur quis provident doloribus. Quia voluptatibus aut laborum et dolor. Id beatae accusantium enim vero magni itaque.</p><p>Ut placeat quia eveniet quo. Quo hic et eos sint. Aliquid deserunt dolor eveniet. Et nesciunt ut sed nesciunt omnis vel.</p>', NULL, '2022-03-05 02:15:10', '2022-03-05 02:15:10'),
(12, 2, 3, 'Vero velit eum rerum similique.', 'qui-voluptatem-et-quas-repudiandae-iusto-omnis', NULL, 'Facilis ipsam porro omnis autem ut. Quo quo hic quod ut. Eos necessitatibus earum aliquam sit voluptatem ullam. Omnis numquam cum repellendus laborum. Neque et fugit quaerat voluptatem sit nulla voluptatem.', '<p>Magni esse distinctio dolor. Sed ullam similique deserunt sunt ut aut aut error. Sequi commodi fugit consequatur. Rerum amet voluptatibus veritatis voluptatem reiciendis omnis assumenda.</p><p>Rerum nostrum dolor praesentium culpa saepe enim voluptas. Et et labore magnam dolor et mollitia quia. Repellendus asperiores dolores commodi saepe quo magni tempora.</p><p>Officiis delectus eaque ullam consequuntur et tenetur. Vitae aut similique asperiores aut impedit reprehenderit.</p><p>Non vitae ut sit itaque facilis reprehenderit totam. Inventore minima sit nihil ipsa velit atque dignissimos. Voluptate reiciendis in repellendus nobis. Enim illum ipsa cumque molestiae illum voluptatum illo.</p><p>Similique quos doloribus asperiores earum veniam tempora autem beatae. Maiores quia et molestias optio porro. Commodi deserunt corrupti voluptas fugit eos veniam doloribus.</p><p>Ab explicabo quisquam pariatur aspernatur ipsa nemo. Officia deleniti magni dolore quaerat veniam.</p><p>Doloribus eum repudiandae laboriosam eos perspiciatis laudantium voluptas quo. Quidem quisquam magnam quia deleniti.</p><p>Unde animi voluptates sit. Voluptatibus odit omnis excepturi amet necessitatibus qui inventore. Minima eius quia vero quaerat. Facere qui repellat aspernatur repellat.</p>', NULL, '2022-03-05 02:15:10', '2022-03-05 02:15:10'),
(13, 3, 3, 'Libero aut rerum harum numquam cumque totam.', 'qui-fuga-corporis-suscipit-et', NULL, 'Iste in ullam praesentium non dolore veritatis. Beatae repudiandae ex nihil illo placeat non recusandae. Ut ut quo tempora eos nesciunt. Doloribus non sed maiores.', '<p>Autem reiciendis possimus quia. Aliquid consequatur deserunt eum natus.</p><p>Aperiam et asperiores et repellat asperiores cum quas. Numquam molestiae dolore rem qui. Et saepe voluptatum est dolor tempore consequatur culpa. Omnis est rerum labore dolore repudiandae.</p><p>Labore odit distinctio quae praesentium porro excepturi. Quisquam sed non et a necessitatibus sed eos.</p><p>Optio possimus maiores et deserunt occaecati cumque enim. Non qui voluptatem qui qui nam possimus dolor. Eos dolore omnis consequatur ullam et inventore. Dicta rerum illum officia ut assumenda unde quidem.</p><p>Expedita consequatur ipsam tenetur animi rerum. Vero ut est exercitationem aspernatur. Laborum quaerat veritatis non maiores minus omnis dolor. Suscipit facere nostrum dicta dolores aliquid nulla.</p><p>Magnam eos adipisci eius voluptas. Sed qui sit dolorum nisi. Ut nobis sit eum beatae at. Et eos aut rerum veniam occaecati.</p><p>Magnam ad provident sint non maxime. Minima cum provident a voluptas. Est omnis similique aut non quidem eius. Nam consequuntur soluta inventore maxime ea dolorum.</p><p>Iusto nemo provident perferendis porro asperiores. Ut ea voluptatibus asperiores vero odio non quia. Repellat in nam sequi pariatur facilis provident. Iusto praesentium aliquam error unde ratione molestias fugiat et. Suscipit veritatis quaerat dicta porro esse qui.</p>', NULL, '2022-03-05 02:15:10', '2022-03-05 02:15:10'),
(14, 1, 3, 'Debitis itaque sed ut cupiditate amet adipisci et maiores.', 'quis-eos-aperiam-aut-quasi-non-illum-deleniti', NULL, 'Illum explicabo quas perspiciatis voluptatibus iste laudantium et aut. Est qui maxime ipsam sunt aut nihil id quo. Repellendus est laboriosam et sint molestiae voluptatem.', '<p>Aliquid et voluptatum eum rerum tempora ratione. Placeat fuga dolorem consequatur nisi nihil. Architecto quod hic consequatur.</p><p>Deserunt optio totam repudiandae quae facere fugiat. Aut minima non sunt ea dolorem cupiditate temporibus. Earum ut et minus repellat rerum omnis inventore. Consectetur qui reprehenderit quia quam.</p><p>Dolores esse fugiat reiciendis iste. Repellendus ex atque eligendi nulla et. Ipsam sapiente illum magni ea consequuntur iste ipsum. Eius nesciunt sunt harum.</p><p>Eum quis enim ipsum qui fuga veniam ea. Molestias in rerum maiores ea quam sint fugit. Laborum vitae nulla harum. Qui repudiandae quaerat corporis officia soluta quia.</p><p>Dolorem eveniet omnis molestiae qui dignissimos. Dignissimos eum possimus quis debitis. Repudiandae quaerat rerum dolorum voluptates doloribus recusandae repudiandae.</p>', NULL, '2022-03-05 02:15:10', '2022-03-05 02:15:10'),
(15, 3, 1, 'Ut sit voluptas consequatur sint nihil soluta.', 'impedit-quos-minima-dicta-necessitatibus', NULL, 'Ipsum enim est eligendi ea. Qui sunt eveniet eum eum et vel neque. Quas exercitationem corporis quo rerum. Sint perspiciatis repellendus neque porro quos.', '<p>Et accusantium ratione et ut suscipit. Sapiente quo blanditiis in voluptas tenetur quis. Labore tenetur nam velit autem deserunt id vel temporibus. Quos qui at vero possimus quam.</p><p>Et labore veniam maxime est consequatur. Omnis tenetur consequatur accusamus quo vel consequatur. Corporis molestias iste sapiente cum consequatur est expedita.</p><p>Magnam voluptatem exercitationem quae atque in quis. Voluptatem sint consectetur ut incidunt molestiae repellendus. Omnis eligendi corporis fugit fugit quaerat quos quo.</p><p>Hic nobis accusamus magni blanditiis est deleniti. Provident et delectus nesciunt saepe repellendus voluptatem asperiores aliquam. Sit accusamus minima blanditiis aut provident.</p><p>Omnis et enim saepe voluptate earum excepturi sit hic. Praesentium fugiat nam cupiditate dicta voluptatum deserunt et ut. Quia natus perspiciatis ratione doloremque illo nemo. Non rerum aut facilis rerum.</p><p>Repellendus laborum vel id sint a et laboriosam voluptatum. Soluta animi fugiat eos veritatis et voluptates.</p><p>Laboriosam quidem saepe expedita quia maxime. Sint quo assumenda error eum.</p><p>Id rerum dolores saepe voluptatem ipsam ab facere. Est sed vel est voluptas sit beatae.</p>', NULL, '2022-03-05 02:15:10', '2022-03-05 02:15:10'),
(16, 3, 3, 'Excepturi distinctio autem ullam.', 'architecto-similique-et-dolore-ut-tempora-dolore', NULL, 'Facere voluptates molestiae sunt quo aut. Suscipit et corrupti nihil placeat error. Totam consequatur qui velit explicabo et sed. Corporis asperiores nihil facilis ut.', '<p>Mollitia voluptas rerum sint sed aut. Et cupiditate commodi dolores vel aliquam illum. Optio aut voluptatem quia et. At qui facere unde repudiandae laborum.</p><p>Maiores dolores veniam et tempora. Et qui quia ducimus repellendus qui labore quos aut. Aut sint dignissimos optio quia ut.</p><p>Id et excepturi dolorum omnis. Aut qui consequatur officia aut exercitationem. Optio quibusdam eaque sit quia eveniet.</p><p>Inventore quia ut ut facilis id odit. Inventore amet rerum autem repudiandae voluptas totam. Quisquam corporis voluptatum quos.</p><p>Quis at et distinctio maxime dolorem et. Eum suscipit et eos possimus est. Voluptatem commodi natus tenetur delectus provident soluta. Officia quidem autem tempore eum ab.</p><p>Distinctio perferendis et molestiae dicta cupiditate. Placeat provident quaerat perferendis culpa. Et nihil est quod.</p><p>Praesentium fuga dicta adipisci numquam. Fugit consequatur pariatur voluptates itaque id earum non sed. Ad veniam illo assumenda nulla fuga possimus voluptatum.</p>', NULL, '2022-03-05 02:15:10', '2022-03-05 02:15:10'),
(17, 3, 1, 'Impedit in ipsam ea molestiae ut.', 'ut-natus-quaerat-possimus-quia', NULL, 'Repudiandae reiciendis culpa nisi officiis dolorem harum. Consequuntur ut est optio rem eveniet quas necessitatibus. Et dolores voluptate dolores dolorum ducimus aut voluptas.', '<p>Ut voluptas aut sint est. Voluptas sed veritatis et unde. Repellendus itaque dolor est et tempore.</p><p>Quae nesciunt nesciunt odit eos. Ratione consequuntur occaecati commodi et. Quo aut molestiae sed facilis.</p><p>Aut qui velit aut quia numquam est magnam. Nam ab quod voluptatem expedita et et illum. Sed earum voluptas architecto quia expedita voluptatibus vero. Itaque ducimus quia illum nihil.</p><p>Rerum voluptatem architecto consequuntur nulla est. Autem natus placeat omnis. Ad et quas corporis ut explicabo non. Labore atque at et doloremque hic omnis.</p><p>Recusandae aut deleniti eveniet rem beatae illum ut. Repellendus iusto qui velit dolorem. Et ad consequuntur inventore quo sed ut dolores. Odit labore fugit porro quibusdam. Rerum consequuntur illum velit.</p><p>Delectus quo accusantium quia tenetur voluptatibus. Ipsam fugiat autem eos quibusdam voluptatem quidem.</p>', NULL, '2022-03-05 02:15:10', '2022-03-05 02:15:10'),
(18, 3, 3, 'Officiis reprehenderit harum sint recusandae.', 'nemo-cum-voluptas-eum-unde-totam-deserunt', NULL, 'Aliquid nemo dicta minima. Officiis laborum similique voluptatem vel delectus. Ratione repudiandae ut voluptas corporis quasi enim. Maiores dolor sit ratione deserunt at temporibus omnis.', '<p>Laudantium occaecati eum sed ipsam. Perferendis quidem ducimus debitis mollitia laborum sed consequuntur.</p><p>Repellat qui reprehenderit quia omnis qui soluta quidem. Quas aperiam libero dolore velit sit sunt commodi unde. Qui libero fugiat excepturi officiis.</p><p>Reprehenderit quia vitae necessitatibus et nihil et odit neque. Ut omnis pariatur rerum. Quia facilis voluptatem sunt officia non blanditiis asperiores. Deleniti quisquam voluptatem aut corporis voluptatem.</p><p>Eius illo recusandae adipisci beatae. Quidem incidunt quidem sunt et et reiciendis explicabo. Est repellat ipsum qui laborum vel vero aut. Nulla dolore dolorum esse dignissimos magnam voluptatem perspiciatis.</p><p>Qui quia vel dolore cum voluptate porro quas. Nobis eaque et ipsa quaerat nobis. Aut cumque qui tempore aut.</p><p>Odit iusto molestias quasi id debitis. Aut sit temporibus illo.</p>', NULL, '2022-03-05 02:15:10', '2022-03-05 02:15:10'),
(19, 3, 1, 'Aut repudiandae iure a vel aut eos sit.', 'sequi-est-repellendus-eius-facilis-similique', NULL, 'Ducimus ex sed quia eos. Dignissimos quidem qui corrupti aut. Velit est consequatur commodi voluptatum esse. Quasi aliquam suscipit ut.', '<p>Ut ratione explicabo occaecati ut. Fugit sit at quod ad. Provident et deleniti quia culpa. Enim qui rem ea quaerat similique quos consequuntur.</p><p>Et velit velit voluptas reprehenderit dolor eaque. Saepe et quis et optio facere expedita doloremque. Fugit voluptatibus deleniti praesentium. Itaque praesentium laboriosam molestias et ut in ea.</p><p>Ipsum dolores laudantium asperiores in et natus in neque. Expedita culpa adipisci incidunt minus autem. Et minima modi ea amet cupiditate. Fugiat cum aspernatur maiores vero omnis ea debitis.</p><p>Corrupti tempore id quia consectetur cumque. Dolor modi neque aliquid ad nisi quod. Velit alias repudiandae cupiditate.</p><p>Cum libero veniam cumque quasi accusamus. Hic eos tenetur eos dolorem. Modi voluptatem at voluptatem. Quo quia excepturi aut vero reiciendis et. Est at sit soluta beatae commodi repudiandae.</p><p>Modi non exercitationem dolorum autem. Est ipsa eos enim doloribus hic. Reprehenderit et magni asperiores. Vitae rerum qui ipsam voluptatem.</p><p>Incidunt aperiam aliquid magnam doloribus non. Nesciunt possimus dolores ipsum quas aut. Quae eum quia facilis explicabo molestias. Velit cupiditate qui reiciendis fugit.</p><p>Debitis reprehenderit repudiandae incidunt consequuntur. Ratione et magni quod eum perferendis autem officia. Reprehenderit est quia dolor deleniti consectetur ipsam. Aut odio recusandae laborum veniam et voluptas sint repudiandae.</p>', NULL, '2022-03-05 02:15:10', '2022-03-05 02:15:10'),
(20, 2, 1, 'Dignissimos ullam eos iusto officiis temporibus nam.', 'quis-id-aut-dolorum-nostrum', NULL, 'Rerum nam et voluptate voluptas qui dicta non molestias. Nihil omnis consequatur hic sunt harum omnis rerum. Voluptatum consequuntur aliquid voluptatem aliquid sed. Molestias eligendi quam dolor possimus.', '<p>Dolor eveniet ut perspiciatis officia aut. Praesentium laborum aperiam ut saepe praesentium cumque repellat. Officia quidem accusantium ea eum ut magnam. In est quia ut atque animi.</p><p>Itaque quia aspernatur facilis inventore. Asperiores incidunt modi voluptatum harum id.</p><p>Numquam sit possimus corporis. Dolorem molestiae aspernatur aut. Dicta fugiat et mollitia vel dolorem earum. Impedit impedit et assumenda autem. Voluptates qui atque voluptatem enim voluptatem sit.</p><p>Ut dolorum officia reiciendis esse sit vero illo. Natus dolor animi iusto aspernatur ea. Modi deserunt hic repudiandae odio ut labore. Quaerat dolor non nesciunt excepturi qui.</p><p>Quasi ratione cupiditate sit quam. Eos voluptatem quidem nostrum reprehenderit. Nemo labore fugiat esse adipisci tenetur nobis rerum. Voluptatem quae nobis qui dolor numquam esse. Id minima necessitatibus alias qui labore.</p><p>Rerum magni veritatis voluptatem voluptate. Est eos quae mollitia earum at et officia. Voluptatibus cum saepe adipisci ut est.</p>', NULL, '2022-03-05 02:15:10', '2022-03-05 02:15:10'),
(22, 3, 1, 'Travels Incorporate', 'travels-inc', 'post-images/ac91mFwggM5Nn6S3gW2qUn2CN5DoyGutlzfIzM3Y.jpg', 'JAJAN GAESHAAHAHA', '<div><strong>JAJAN GAES</strong><br><br>HAAHAHA</div>', NULL, '2022-03-05 02:36:17', '2022-03-08 07:04:16'),
(26, 4, 1, 'What Is Testing', 'what-is-testing', 'post-images/g1fZ2MjqX1bsytazO8R1tB2SvXMxlheWiSrXyswA.jpg', 'I Dunno MenThis Is CRYY', '<div><strong>I Dunno Men</strong><br><br>This Is CRYY</div>', NULL, '2022-03-09 01:09:39', '2022-03-09 01:09:54');

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
(1, 'GrimsAlphaDev', 'Grims', 'alpha@dev.com', NULL, '$2y$10$CuPyvLSSa0CuQUjZi9lkQOKtk1aN.vw.MdJ51Pp7.l23k0jxq3/0C', NULL, '2022-03-05 02:15:08', '2022-03-05 02:15:08', 1),
(2, 'Galur Estiawan Prasasta S.E.I', 'tardianto', 'amaheswara@hotmail.com', '2022-03-05 02:15:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sukd8fiFKN80b81uzpVdCa3zmKuCCUW4l3xsxd7qplk5HM01N5kXPaI2qw6l', '2022-03-05 02:15:09', '2022-03-05 02:15:09', 0),
(3, 'Lembah Pangestu', 'firgantoro.cindy', 'yance.najmudin@example.net', '2022-03-05 02:15:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OBtkIrrCKX', '2022-03-05 02:15:09', '2022-03-05 02:15:09', 0);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
