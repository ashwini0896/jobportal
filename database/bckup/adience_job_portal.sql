-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2024 at 10:09 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `adience_job_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `job_type` enum('full-time','part-time','contract') NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `user_id`, `title`, `description`, `company_name`, `location`, `job_type`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Electric Meter Installer', 'Vel provident tenetur veniam est dolores quae blanditiis qui. Quas sequi non illo neque sit et et non. Fugiat sed iste quia et aut inventore. Fugiat animi aspernatur dicta et. Dolorem vel quasi quae nobis qui voluptates atque. Totam sint aperiam ea qui fuga vitae. Aut natus eum excepturi delectus.', 'Larson-Daugherty', 'North Christelle, Nebraska', 'full-time', 'active', '2024-05-17 03:12:05', '2024-05-17 03:12:05'),
(2, 1, 'Technical Director', 'Necessitatibus occaecati eum quos voluptatum suscipit officiis laboriosam. Est neque harum qui quod voluptates animi deserunt ut. Facere eius exercitationem qui non itaque. Veniam tenetur qui optio laborum.', 'Osinski PLC', 'North Lora, Oklahoma', 'full-time', 'active', '2024-05-17 03:12:05', '2024-05-17 03:12:05'),
(3, 1, 'Actor', 'Dolorem cum exercitationem quidem est. Temporibus deserunt at qui perspiciatis sit. Ut dolorem similique molestias aut. Qui qui minus natus optio qui. Nihil ut qui nisi voluptates magnam saepe libero.', 'Adams, Pfannerstill and Satterfield', 'East Lelia, Georgia', 'contract', 'active', '2024-05-17 03:12:05', '2024-05-17 03:12:05'),
(4, 1, 'Signal Repairer OR Track Switch Repairer', 'Quo qui occaecati enim ullam. Qui nihil quo inventore quae vero dolores distinctio. Iure reprehenderit sed alias est ducimus quis ipsam ut. Nulla eum eaque illo tenetur.', 'Keeling-Daniel', 'East Estell, West Virginia', 'contract', 'active', '2024-05-17 03:12:05', '2024-05-17 03:12:05'),
(5, 1, 'Baker', 'Omnis quae aut dolore eveniet. Ipsam quibusdam voluptatem modi exercitationem. Minus voluptatem excepturi dolor ut in nihil ipsum. Ex doloremque deleniti perferendis ut error. Et nulla ea alias laborum beatae. Doloribus occaecati quaerat vitae ut qui placeat dolorum.', 'Schoen-Christiansen', 'Collierview, Indiana', 'contract', 'active', '2024-05-17 03:12:05', '2024-05-17 03:12:05'),
(6, 1, 'Engraver', 'Qui recusandae eum dolorum consectetur accusamus enim. Ipsam nihil qui dignissimos non. Porro fuga sapiente sunt nostrum vel molestiae. Autem repellendus praesentium recusandae qui quod aut. Quis aut error quasi assumenda consequatur dolorum dolorem rerum. Et cum eaque rerum repellendus accusantium assumenda nihil.', 'Moore-Mann', 'North Bradleyfort, Hawaii', 'contract', 'active', '2024-05-17 03:12:05', '2024-05-17 03:12:05'),
(7, 1, 'Telephone Station Installer and Repairer', 'Enim eum voluptatem minima tempore veniam modi fuga. Magnam officia explicabo mollitia culpa est animi eum eveniet. Et repudiandae quo incidunt et. Similique aut omnis aut recusandae enim sit sit. Impedit optio rem odio. Est fugit nesciunt eum provident qui eos debitis.', 'Fritsch-Bradtke', 'North Hipolitoborough, Alaska', 'part-time', 'active', '2024-05-17 03:12:05', '2024-05-17 03:12:05'),
(8, 1, 'Photoengraver', 'Consequatur quaerat qui odit. Porro harum et dolorem dolorem. Repellendus optio magnam unde occaecati esse eveniet. Sed ducimus quia omnis cumque aut voluptate. Quis voluptatibus voluptatem sit facilis.', 'Welch-Huel', 'Lake Johnsonfurt, Florida', 'part-time', 'active', '2024-05-17 03:12:05', '2024-05-17 03:12:05'),
(9, 1, 'Manager of Weapons Specialists', 'Maiores omnis enim cum. Numquam accusantium esse excepturi facilis. Qui aut voluptas blanditiis porro. Omnis cupiditate suscipit ut expedita praesentium at. Ut dignissimos non est est veritatis saepe vel excepturi. Quia ut suscipit exercitationem velit praesentium eos provident.', 'Stokes-Jerde', 'Taratown, District of Columbia', 'full-time', 'active', '2024-05-17 03:12:05', '2024-05-17 03:12:05'),
(10, 1, 'Avionics Technician', 'Quae laudantium unde est. Vero vel atque nihil ad ut. Iusto saepe ratione omnis qui voluptas quia eveniet. Necessitatibus id minus aspernatur minus. Molestias accusantium asperiores fuga voluptate. Repellat consectetur et similique est est repellat quasi.', 'Kris, Thiel and DuBuque', 'Nellieborough, Oregon', 'part-time', 'active', '2024-05-17 03:12:05', '2024-05-17 03:12:05'),
(11, 1, 'Courier', 'Unde ea dolorem ut voluptatem fuga consequuntur soluta. Facere qui et et unde dolorum inventore. Officiis et consequatur in est iusto possimus eius. Adipisci sit amet explicabo ab labore a doloribus delectus. Aut saepe et aut dolores velit voluptates.', 'Kling, Wuckert and Cremin', 'Spinkafort, South Carolina', 'contract', 'active', '2024-05-17 03:12:05', '2024-05-17 03:12:05'),
(12, 1, 'Pharmaceutical Sales Representative', 'Sit eveniet eligendi id laudantium quia voluptatem consequatur. Vel exercitationem delectus non aut vero est. Enim reprehenderit beatae voluptatem doloremque odit consequuntur. Dolorem corporis quasi occaecati doloremque modi neque iure. Dolorem sed at vel totam nostrum ut. Cum consequatur porro qui voluptates.', 'Blick Inc', 'New Arvilla, New Jersey', 'full-time', 'active', '2024-05-17 03:12:05', '2024-05-17 03:12:05'),
(13, 1, 'Historian', 'Itaque culpa aut dolor deserunt ad omnis atque. In necessitatibus rem porro veritatis a fugit voluptate. Iure dolores tempore aut enim debitis laborum illum. Rem commodi totam dolores delectus possimus et ducimus. Velit est sint quo officiis. Cum sed mollitia sunt.', 'Kemmer-Cassin', 'Isobelstad, Virginia', 'contract', 'active', '2024-05-17 03:12:05', '2024-05-17 03:12:05'),
(14, 1, 'Forest Fire Fighter', 'Et et laboriosam minima quis sapiente rerum. Voluptatem eum ad eaque impedit. Quos aut in dolor non adipisci doloremque. Ex id fugit non ex reprehenderit dicta. Nostrum similique fugit et nemo debitis iusto. Ad pariatur et deleniti sed.', 'Rohan, Conroy and Kuhic', 'Maudiechester, Washington', 'full-time', 'active', '2024-05-17 03:12:05', '2024-05-17 03:12:05'),
(15, 1, 'Title Examiner', 'Voluptas mollitia enim voluptate in. Cumque totam iste qui aut animi doloribus qui. Enim repudiandae hic fugiat deleniti id officia aut. Quis vel eos et veritatis eveniet dicta minus. Rerum et voluptas ea. Sit est totam consequatur qui.', 'Greenholt-Hoppe', 'Reicherttown, Oregon', 'contract', 'active', '2024-05-17 03:12:05', '2024-05-17 03:12:05'),
(16, 1, 'Gas Processing Plant Operator', 'Accusamus quae earum velit sapiente nihil eveniet consequatur. Non voluptas necessitatibus recusandae atque incidunt voluptas rem aut. Aliquam dicta tenetur sunt iure molestiae aliquam amet. Asperiores molestiae blanditiis corporis soluta facilis dolores. Minus possimus culpa optio id vel.', 'Smith-Bauch', 'West Maxie, Utah', 'contract', 'active', '2024-05-17 03:12:05', '2024-05-17 03:12:05'),
(17, 1, 'Control Valve Installer', 'Minus magni optio ab animi. Quo ab nostrum provident et qui dolores animi est. Reprehenderit explicabo veritatis ratione voluptatum omnis. Dolorum recusandae ut omnis officiis blanditiis.', 'Christiansen Group', 'Kassulkechester, California', 'contract', 'active', '2024-05-17 03:12:05', '2024-05-17 03:12:05'),
(18, 1, 'Ambulance Driver', 'Omnis adipisci a commodi. Aut neque excepturi dignissimos. Illum iste sint inventore et dignissimos molestiae. Et et eaque est dicta. Consequatur ipsam non quisquam perspiciatis sint possimus quis. Voluptatum qui non saepe quia est et. Aut eum neque magnam facilis repellendus.', 'Miller Group', 'Windlermouth, Maine', 'full-time', 'active', '2024-05-17 03:12:05', '2024-05-17 03:12:05'),
(19, 1, 'Casting Machine Set-Up Operator', 'Modi doloribus repellat autem accusantium. Voluptate unde magni aspernatur animi. Quisquam magnam ad est doloribus non qui. Nemo tempora aut et nisi. Qui laboriosam quia ad voluptas. Ut itaque possimus architecto temporibus.', 'Larkin-Rohan', 'East Lamont, North Dakota', 'part-time', 'active', '2024-05-17 03:12:05', '2024-05-17 03:12:05'),
(20, 1, 'Rail Car Repairer', 'Dolores et debitis in voluptatem harum. Recusandae harum suscipit consectetur hic corrupti. Autem enim quo dolore animi placeat in. Velit dolorum commodi voluptatibus est aut ipsa. Repudiandae exercitationem aliquid eos consequatur dignissimos. Consequuntur eum et incidunt molestiae voluptates dolorem.', 'Greenholt-Larson', 'East Bettyeport, South Carolina', 'full-time', 'active', '2024-05-17 03:12:05', '2024-05-17 03:12:05'),
(21, 1, 'Aircraft Launch Specialist', 'Distinctio rem amet dolorem ullam omnis. Accusamus nihil quam et sunt quod est. Rerum aut optio id facere. Cum sunt aut et ipsam. Provident aut libero omnis tempore blanditiis laborum. Iste repellendus odio itaque. Earum fugiat officia omnis minus.', 'Rutherford PLC', 'West Abrahammouth, Michigan', 'full-time', 'active', '2024-05-17 03:12:05', '2024-05-17 03:12:05'),
(22, 1, 'Counselor', 'Ipsam distinctio autem est voluptates. Sit dolorem perspiciatis dolorem voluptas laboriosam. Voluptatem iste unde commodi minus. Est occaecati voluptas dolorum magnam pariatur occaecati blanditiis. Dolore consequuntur accusantium soluta eligendi similique. Harum molestiae sed repellat ipsum labore.', 'Dare-Stehr', 'Port Zechariah, Virginia', 'part-time', 'active', '2024-05-17 03:12:05', '2024-05-17 03:12:05'),
(23, 1, 'Benefits Specialist', 'Corrupti voluptatem quibusdam rerum. Magnam cum voluptatibus enim dolor. Porro veniam et id. Quia magnam corrupti qui esse. Culpa eligendi architecto cum est.', 'Kling, Hegmann and Ferry', 'Beatricestad, Alaska', 'contract', 'active', '2024-05-17 03:12:05', '2024-05-17 03:12:05'),
(24, 1, 'Bookkeeper', 'Exercitationem possimus a tempora quod enim recusandae sequi. Nisi saepe et quisquam ipsa blanditiis quod in. Et laboriosam omnis molestiae velit sequi adipisci aut architecto. Sint optio placeat fuga praesentium est molestiae. Placeat in corrupti optio aliquid blanditiis laborum.', 'Kreiger Inc', 'South Turnerland, Michigan', 'full-time', 'active', '2024-05-17 03:12:05', '2024-05-17 03:12:05'),
(25, 1, 'Radio Operator', 'Laboriosam perferendis ea harum alias. Blanditiis iusto ipsam dignissimos numquam magnam sed. Ipsum praesentium alias enim accusantium aliquam ut sint. Dolore expedita qui similique voluptatum ut deleniti neque. Nobis aut amet ex aspernatur et.', 'Legros LLC', 'Lake Anselview, Texas', 'part-time', 'active', '2024-05-17 03:12:05', '2024-05-17 03:12:05'),
(26, 1, 'Insurance Sales Agent', 'Et voluptatem autem et. Et quam nemo dolores soluta dolores sed saepe praesentium. Et id sapiente id veritatis. Porro et aspernatur necessitatibus. Qui animi eos sed dicta.', 'Witting, Stracke and Erdman', 'Pascalemouth, Alaska', 'full-time', 'active', '2024-05-17 03:12:05', '2024-05-17 03:12:05'),
(27, 1, 'Social Scientists', 'Tempore et quas qui quo sunt mollitia et suscipit. Earum alias excepturi non ipsam sint. Quia tempore sed vel autem. Est enim ex quo.', 'Schoen-O\'Kon', 'North Alessandro, Delaware', 'contract', 'active', '2024-05-17 03:12:05', '2024-05-17 03:12:05'),
(28, 1, 'Recordkeeping Clerk', 'Sapiente in cum ut qui omnis quos aut. Libero ut et perferendis voluptatem harum reprehenderit perferendis. Ut sed error incidunt tempora impedit. Similique sint beatae alias quis fugit voluptas quod qui. Ipsam vel voluptatem qui sit. Reprehenderit dolorem soluta sequi blanditiis voluptate. Omnis molestiae reprehenderit dolorem nihil natus.', 'Hagenes LLC', 'Bednartown, Florida', 'part-time', 'active', '2024-05-17 03:12:05', '2024-05-17 03:12:05'),
(29, 1, 'Agricultural Technician', 'Quia sunt itaque enim quisquam expedita iste et quia. Aut accusamus quia ex qui. Eos enim id voluptatem repudiandae atque. Est veritatis quidem assumenda earum aperiam.', 'Graham Group', 'Arloside, Indiana', 'full-time', 'active', '2024-05-17 03:12:05', '2024-05-17 03:12:05'),
(30, 1, 'Agricultural Sales Representative', 'Aliquam ut assumenda eaque dolor velit omnis. Ea debitis error molestiae voluptas iure voluptatibus ratione repellendus. Rerum rerum ut modi ut eius ut alias ea. Dolorum corporis aut quis vel. Ipsam architecto occaecati dicta quos fuga ducimus aliquam.', 'Price PLC', 'South Alfredaborough, Texas', 'full-time', 'active', '2024-05-17 03:12:05', '2024-05-17 03:12:05'),
(31, 1, 'Tank Car', 'Laboriosam molestias quod rem reiciendis consequatur explicabo amet. Natus qui minima fugiat alias. Rem mollitia necessitatibus deserunt odio atque commodi non. Doloremque eveniet ut voluptatem nemo illum. Eligendi ab sed eaque exercitationem ducimus.', 'Larson, Zieme and Waters', 'Port Adahstad, Alabama', 'part-time', 'active', '2024-05-17 03:12:05', '2024-05-17 03:12:05'),
(32, 1, 'Equal Opportunity Representative', 'Odio sed harum ipsa iste ea aut veritatis. Est sed mollitia aspernatur voluptatem consectetur. Nihil eius et illo inventore earum. Quidem eveniet dolor ut aperiam est. Repellat delectus minima quisquam dolor occaecati.', 'Paucek Group', 'South Crawfordbury, Montana', 'part-time', 'active', '2024-05-17 03:12:05', '2024-05-17 03:12:05'),
(33, 1, 'Bill and Account Collector', 'Est eaque dolor provident et adipisci. Dolor sit est unde consequatur fuga ut voluptatem. Consectetur asperiores aut ut incidunt non amet libero. Aut tempora fugiat nihil voluptatem fugiat facere. Praesentium ipsum consequatur ut aliquam eum est. Minus et sequi rem cum perferendis iste.', 'Johnson, Runolfsson and Strosin', 'North Enaview, Florida', 'full-time', 'active', '2024-05-17 03:12:05', '2024-05-17 03:12:05'),
(34, 1, 'Forestry Conservation Science Teacher', 'Et voluptas id culpa velit voluptatibus doloribus a. Eius odit possimus dolore adipisci culpa et. Accusamus a quia laborum dignissimos est. Voluptas nesciunt ipsum id sed ab iusto laborum. Quisquam vel id quos ab reiciendis est ducimus doloremque. Cum ipsam tempora autem. Minima qui enim itaque nesciunt.', 'Keebler-Daniel', 'Waelchiville, Iowa', 'contract', 'active', '2024-05-17 03:12:05', '2024-05-17 03:12:05'),
(35, 1, 'Forensic Investigator', 'Suscipit quasi omnis repellat magnam sint. Cupiditate magnam minima eligendi atque sed. Porro fuga nisi accusantium tempora. Qui tempore perspiciatis ipsa magnam non omnis dolor. Modi non odit aspernatur facilis aut totam rerum sunt.', 'Krajcik Group', 'New Pearlie, Minnesota', 'part-time', 'active', '2024-05-17 03:12:05', '2024-05-17 03:12:05'),
(36, 1, 'Animal Husbandry Worker', 'Architecto ut iure officia illum. Sint assumenda molestiae vel quod aut dolore. Eligendi similique sint et repellat sed voluptates quis. Non a totam ad dolorum enim natus numquam. Optio magni vel tempore illum non.', 'Fay LLC', 'Stehrland, Ohio', 'contract', 'active', '2024-05-17 03:12:05', '2024-05-17 03:12:05'),
(37, 1, 'Outdoor Power Equipment Mechanic', 'Eos possimus quia molestias rem enim aut maxime provident. Atque ipsa et totam nemo. Odio ipsum eum iste numquam asperiores repudiandae. Rem atque facere ut. Nesciunt facilis non laboriosam. Nostrum fuga assumenda voluptas libero.', 'Hagenes, Rohan and Boehm', 'Kubbury, Virginia', 'contract', 'active', '2024-05-17 03:12:05', '2024-05-17 03:12:05'),
(38, 1, 'Timing Device Assemblers', 'Dignissimos non animi non ut mollitia quo. Officia sit ea aut dolorem repellat nihil. Quidem nemo placeat sed. Eum consequatur architecto natus magni iusto rerum et aliquid.', 'Runolfsdottir, Kuhn and Beer', 'Lake Gloria, Alabama', 'full-time', 'active', '2024-05-17 03:12:05', '2024-05-17 03:12:05'),
(39, 1, 'Health Services Manager', 'Iste corporis odit qui odit et et a. Consequuntur sequi nihil quas qui. Laudantium voluptas ratione magnam aut ut. Autem sint et aspernatur et dolor. Sint sint error soluta aut perspiciatis perferendis eius. Aperiam ut asperiores voluptate eveniet ea quia officiis. Repellendus tempore vitae ut voluptatem. Minus porro temporibus autem.', 'Adams-Buckridge', 'East Desmond, Mississippi', 'part-time', 'active', '2024-05-17 03:12:05', '2024-05-17 03:12:05'),
(40, 1, 'Structural Metal Fabricator', 'Facilis voluptatem earum laudantium sapiente omnis rerum. Officia numquam ex necessitatibus optio temporibus. Et quisquam ullam praesentium in placeat. Et nesciunt culpa reprehenderit cumque et debitis voluptatem. Ratione omnis eveniet aut reiciendis.', 'Casper-Osinski', 'Jeramyborough, Iowa', 'full-time', 'active', '2024-05-17 03:12:05', '2024-05-17 03:12:05'),
(41, 1, 'Train Crew', 'Et vero minus non atque quia ut. Cupiditate velit qui debitis asperiores sequi. Sit veniam quia quis vel dolorem nihil sequi maiores. Vel dolorem eveniet sed pariatur pariatur sit.', 'Friesen-Morissette', 'Reillymouth, Oklahoma', 'part-time', 'active', '2024-05-17 03:12:05', '2024-05-17 03:12:05'),
(42, 1, 'Typesetting Machine Operator', 'Accusantium quis praesentium delectus sint qui quidem voluptatem. Est dolor molestiae eos officiis exercitationem. Saepe consequatur voluptatem ut. Molestiae tenetur esse possimus ullam voluptatem aut omnis ut.', 'Considine LLC', 'Sandrineton, Georgia', 'part-time', 'active', '2024-05-17 03:12:05', '2024-05-17 03:12:05'),
(43, 1, 'Refrigeration Mechanic', 'Alias ut cupiditate maxime aut ad. Atque et quam voluptas deleniti et. Fugiat libero qui ut iure enim sequi voluptas. Ut eligendi ad voluptas sunt doloribus velit.', 'Jast Inc', 'East Isaac, Tennessee', 'contract', 'active', '2024-05-17 03:12:05', '2024-05-17 03:12:05'),
(44, 1, 'Public Transportation Inspector', 'Aut ut eos libero quae. Enim ut deserunt nemo molestiae. Sed possimus atque quae error. Amet laborum odio nostrum repellat. Odio ex illum blanditiis sed quia.', 'Funk, Stokes and Bernier', 'Tillmanbury, Wisconsin', 'contract', 'active', '2024-05-17 03:12:05', '2024-05-17 03:12:05'),
(45, 1, 'Letterpress Setters Operator', 'Dolores officiis provident inventore et quia quis. Nemo dicta ullam tempore qui odio sequi corrupti. Non repellat consequuntur aperiam. Ut blanditiis voluptatem nihil adipisci sed. Praesentium in voluptatum debitis rerum voluptas possimus eum. Ea molestiae nemo facilis voluptatem et et.', 'Kutch and Sons', 'East Dominic, New York', 'part-time', 'active', '2024-05-17 03:12:05', '2024-05-17 03:12:05'),
(46, 1, 'Highway Patrol Pilot', 'Autem eum expedita ad minima quas sunt earum. Maiores sed ab et quia dolor delectus. Nobis in repellat architecto molestias. Beatae dignissimos qui deserunt nihil tenetur dicta quia et. Vero dolor quia dolor est cumque laborum.', 'Spinka, Hickle and Carter', 'Fabianburgh, Arizona', 'full-time', 'active', '2024-05-17 03:12:05', '2024-05-17 03:12:05'),
(47, 1, 'Proofreaders and Copy Marker', 'Iusto et iusto sit dolor. Eos quia incidunt est vel et dolorem. Ipsum est suscipit sit nesciunt aut quasi omnis. Rem et nihil dolores consequatur et.', 'Crona, Stracke and Schaefer', 'West Brooklyn, Kentucky', 'full-time', 'active', '2024-05-17 03:12:05', '2024-05-17 03:12:05'),
(48, 1, 'Nuclear Equipment Operation Technician', 'Adipisci voluptatem tempora pariatur doloribus aut similique. Minima et est expedita et rem quia magnam. Perspiciatis vitae ut aut labore deleniti eos sequi accusantium. Sed non voluptate corrupti error non aliquam quis. Dolor non enim itaque rerum ipsum temporibus.', 'Moore LLC', 'Wilhelmberg, Wyoming', 'contract', 'active', '2024-05-17 03:12:05', '2024-05-17 03:12:05'),
(49, 1, 'Credit Checker', 'Qui dolore sit illo voluptas dolor et. Et porro sequi ea sint. Rerum eum pariatur iure sequi tempora quasi quis. Laudantium dignissimos quisquam eum culpa dolorem similique. Est ea est dolor voluptatem a odit quibusdam.', 'Rippin Inc', 'Robertsland, Vermont', 'full-time', 'active', '2024-05-17 03:12:05', '2024-05-17 03:12:05'),
(51, 1, 'Laravel Developer', 'Test', 'Test', 'Mumbai1', 'full-time', 'active', '2024-05-17 06:21:56', '2024-05-17 08:31:04'),
(52, 1, 'test', 'test', 'test', 'test', 'full-time', 'active', '2024-05-18 00:56:03', '2024-05-18 00:56:03');

-- --------------------------------------------------------

--
-- Table structure for table `job_applications`
--

CREATE TABLE `job_applications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED NOT NULL,
  `resume` text NOT NULL,
  `cover_letter` text DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_applications`
--

INSERT INTO `job_applications` (`id`, `user_id`, `job_id`, `resume`, `cover_letter`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 51, '1715972082_Aquaweb Senior Laravel Developer Test Project.pdf', 'Test', 'approve', '2024-05-17 13:24:42', '2024-05-17 13:24:42'),
(8, 2, 48, '1716017973_sample.pdf', 'Test', 'pending', '2024-05-18 02:09:33', '2024-05-18 02:09:33');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(21, '2014_10_12_000000_create_users_table', 1),
(22, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(23, '2014_10_12_100000_create_password_resets_table', 1),
(24, '2019_08_19_000000_create_failed_jobs_table', 1),
(25, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(26, '2024_05_16_161725_create_jobs_table', 1),
(27, '2024_05_16_172152_create_job_applications_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'ashwiniasingh0817@gmail.com', NULL, '$2y$12$ZCd/2yVOAowpKQGD0Ug23uj/62oAmdtkmwNYRQNZl.xGYTBR9juay', 'admin', '7OvCfgBDiC7Zv0eOJj5QwNbSwO0ROgrFv66tIqGUilNjBL85H8lTP03Nu1S9', '2024-05-17 02:25:52', '2024-05-17 02:25:52'),
(2, 'Ashwini Singh', 'ashwiniuksingh@gmail.com', NULL, '$2y$12$5OtduG9m4NFbFxU.dPkj4uA6lhECun74SxttXzL2YeJZVRTH3Ownq', 'user', NULL, '2024-05-17 06:04:59', '2024-05-17 06:04:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_user_id_foreign` (`user_id`);

--
-- Indexes for table `job_applications`
--
ALTER TABLE `job_applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_applications_user_id_foreign` (`user_id`),
  ADD KEY `job_applications_job_id_foreign` (`job_id`);

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `job_applications`
--
ALTER TABLE `job_applications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `jobs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `job_applications`
--
ALTER TABLE `job_applications`
  ADD CONSTRAINT `job_applications_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `job_applications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
