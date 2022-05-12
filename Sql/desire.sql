-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2022 at 10:40 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `desire`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mission` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descmission` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `choose` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descchoose` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descmessage` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `about`, `desc`, `mission`, `descmission`, `choose`, `descchoose`, `message`, `photo`, `photo1`, `descmessage`, `created_at`, `updated_at`) VALUES
(1, 'Who we are:', 'We founded our organization with the main purpose of providing students with services about studying abroad, test preparation and guiding them on how to choose the right path for their future success. Since 2015, we provide services for students to study abroad and test preparation continuously. We\'ve helped students realize their goals of studying abroad by connecting them with the correct study opportunities at over 250+ renowned educational institutions. We work in tandem with the spirit of entirety, positivity, and authenticity. Earnestness of effort and ingenuity of approach are the rudiments of our organization. It has taken a considerable amount of hard work, commitment and dedication to provide excellent Customer service, which is being recognized by the students, parents, partner institutions and our associates that we work with.', 'Mission & visson', 'Provide genuine career counseling to the student and guide them as per their interest of area, student ability and performance\r\nas per user.\r\nProvide effective test preparation classes and other supports.\r\nMaintain healthy relation with our partners.\r\nTo provide genuine career guidance for study abroad and effective test preparation.', 'Why Choose Desire Education ?', 'We established our organization with the aim to provide students with a one-stop study abroad solution and help them achieve their goals through appropriate career guidance and counseling, effective test preparation.', 'Message from M.D', '/storage/files/1/images/logo-lg.png', '/storage/files/1/images/logo-lg.png', 'Our CEO Speaks\r\nSundeep Tripathi\r\nCEO\r\n“International education matters because it can inspire us to do whatever and be whatever we want to be.”- Ann Wong, OWN Alumna\r\nLike the saying, we established our organization with the aim to support the students to achieve their goals by getting abroad degree. We always focused on genuine counseling, authentic guidance and effective test preparation.  We established our organization on 2015 with the aim to support and provide students and parent’s authentic and genuine guidance regarding study abroad. As the world grows more global, we\'ve established strong partnerships with international universities and colleges in order to connect students to their long-term goals and open up new horizons of knowledge and opportunity for the future generation.', NULL, '2022-03-11 10:05:58');

-- --------------------------------------------------------

--
-- Table structure for table `applynows`
--

CREATE TABLE `applynows` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Qualification` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ieltsscore` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `condition` enum('slider','accreditions','university','popup') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'slider',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `slug`, `description`, `photo`, `status`, `condition`, `created_at`, `updated_at`) VALUES
(1, 'tfdy', NULL, '<p>rftgrdt</p>', '/storage/files/1/carousel-image - Copy.png', 'active', 'slider', '2022-03-01 19:56:00', '2022-03-01 19:56:00'),
(2, 'sdsa', NULL, '<p>sdfr</p>', '/storage/files/1/blog-detail - Copy.png', 'active', 'slider', '2022-03-01 19:56:16', '2022-03-01 19:56:16'),
(6, 'University 3', 'https://www.coventry.com/', '<p>This is the test university3</p>', '/storage/files/1/images/university-sheffield.png', 'active', 'university', '2022-03-01 13:08:48', '2022-03-01 13:08:48'),
(9, 'Accrediation 1', NULL, '<p>This is the accridation test 1</p>', '/storage/files/1/Rectangle-80.png', 'active', 'accreditions', '2022-03-01 13:13:03', '2022-03-01 13:13:03'),
(10, 'Accrediation2', NULL, '<p>This is the second accrediation&nbsp;</p>', '/storage/files/1/Rectangle-80.png', 'active', 'accreditions', '2022-03-01 13:13:48', '2022-03-01 13:13:48'),
(11, 'Accrediation 3', NULL, '<p>Test 3</p>', 'https://www.desireedunepal.com/storage/files/1/ac5vy5v39KrB2YQu5IJD.jpg', 'active', 'accreditions', '2022-03-01 13:14:26', '2022-03-11 08:12:46'),
(12, 'Accredation 4', NULL, '<p>Accrediation 4</p>', 'https://www.desireedunepal.com/storage/files/1/9gb7vLm4U3dyqyQpcHmk.jpg', 'active', 'accreditions', '2022-03-01 13:15:25', '2022-03-11 08:12:37'),
(13, 'accre 5', NULL, '<p>awdawdawd</p>', 'https://www.desireedunepal.com/storage/files/1/4fAiqKFWBrPNxsV9LgYG.png', 'active', 'accreditions', '2022-03-01 14:54:00', '2022-03-11 08:12:26'),
(14, 'hfikugief', 'ejkgfief', '<p>waihduuoagwudi</p>', 'https://www.desireedunepal.com/storage/files/1/banner-01-02 (1).jpg', 'active', 'slider', '2022-03-11 06:34:29', '2022-03-13 04:51:06'),
(17, 'IOWA Wes university', 'https://www.iw.edu/', '<p>this is iowa uni</p>', 'https://www.desireedunepal.com/storage/files/shares/US.jpg', 'active', 'university', '2022-03-11 07:53:02', '2022-03-11 07:53:02'),
(18, 'IELTS', NULL, '<p>IELTS</p>', 'https://www.desireedunepal.com/storage/files/1/274814166_1585506265147830_1706762163375239148_n.jpg', 'active', 'popup', '2022-03-11 07:57:12', '2022-03-11 07:57:12'),
(19, 'Northwest college', 'https://nwc.edu/', '<p>common</p><p>&nbsp;</p>', 'https://www.desireedunepal.com/storage/files/shares/US_2.jpg', 'active', 'university', '2022-03-11 08:11:34', '2022-03-11 08:11:34'),
(20, 'saint louis university', 'https://www.umsl.edu/', '<p>saint lous missosouri</p>', 'https://www.desireedunepal.com/storage/files/shares/US_3.jpg', 'active', 'university', '2022-03-11 08:18:36', '2022-03-11 08:18:36'),
(21, 'seattle central', 'https://seattlecentral.edu/', '<p>college</p>', 'https://www.desireedunepal.com/storage/files/shares/US 4.jpg', 'active', 'university', '2022-03-11 08:21:50', '2022-03-11 08:21:50'),
(22, 'Shoreline community', 'https://www.shoreline.edu/', '<p>WA</p>', 'https://www.desireedunepal.com/storage/files/shares/US 5.jpg', 'active', 'university', '2022-03-11 08:24:02', '2022-03-11 08:24:02'),
(23, 'Snow college', 'https://www.snow.edu/', '<p>utah</p>', 'https://www.desireedunepal.com/storage/files/shares/US 6.jpg', 'active', 'university', '2022-03-11 08:24:58', '2022-03-11 08:24:58'),
(24, 'University of Wisconsin', 'https://blugolds.com/landing/index', '<p>- Eau Claire</p>', 'https://www.desireedunepal.com/storage/files/shares/US 7.jpg', 'active', 'university', '2022-03-11 08:26:39', '2022-03-11 08:26:39'),
(25, 'griffith college', 'https://www.griffith.ie/', '<p>ireland</p>', 'https://www.desireedunepal.com/storage/files/1/usa uni/griff.png', 'active', 'university', '2022-03-11 08:28:57', '2022-03-11 08:28:57'),
(26, 'demo1', NULL, '<p>slider test</p>', 'https://www.desireedunepal.com/storage/files/1/home-about-bg.png', 'active', 'slider', '2022-03-11 09:59:50', '2022-03-11 09:59:50');

-- --------------------------------------------------------

--
-- Table structure for table `blogcategories`
--

CREATE TABLE `blogcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogcategories`
--

INSERT INTO `blogcategories` (`id`, `name`, `slug`, `photo`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Test category1', 'test-category1', 'https://www.desireedunepal.com//storage/files/1/carousel-image.png', '<p>If you’re someone who just completed a bachelor\'s and looking forward to a better opportunity for the future, then a M...f you’re someone who just completed a bachelor\'s and looking forward to a better opportunity for the future, then a M</p>', 'active', '2022-03-01 18:08:52', '2022-03-10 08:20:49'),
(2, 'Test 2', 'test-2', '/storage/files/1/blog-card.png', '<p>If you’re someone who just completed a bachelor\'s and looking forward to a better opportunity for the future, then a M...f you’re someone who just completed a bachelor\'s and looking forward to a better opportunity for the future, then a M...</p>', 'active', '2022-03-01 18:10:37', '2022-03-01 18:10:37');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cat_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `name`, `photo`, `slug`, `description`, `user_id`, `cat_id`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Test 1', '/storage/files/2/blog-detail.png', 'test-1', '<p>If you’re someone who just completed a bachelor\'s and looking forward to a better opportunity for the future, then a M...f you’re someone who just completed a bachelor\'s and looking forward to a better opportunity for the then a M...</p>', 1, 1, 'active', '2022-03-06 22:55:55', '2022-03-06 22:55:55'),
(3, 'Test 1', '/storage/files/2/blog-detail.png', '1646628105-test-1', '<h2><i><strong>If you’re someone who just completed a bachelor\'s and looking forward to a better opportunity for the future, then a M...f you’re someone who just completed a bachelor\'s and looking forward to a better opportunity for the then a M...</strong></i></h2>', 1, 1, 'active', '2022-03-06 22:56:45', '2022-03-07 13:13:05');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `general` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `fname`, `lname`, `general`, `phone`, `email`, `Message`, `created_at`, `updated_at`) VALUES
(1, 'shishir', 'bhandari', 'awdawd', '9862625004', 'Shishir.bhandariii@gmail.com', 'awdawdawdawd', NULL, NULL),
(2, 'gamerhubnepal', 'awdawdawd', 'awdawdawd', '+9779861924501', 'Shishir.bhandariii@gmail.com', 'awdawdawd', NULL, NULL),
(3, 'gamerhubnepal', 'awdawd', 'awdawdawd', '+9779861924501', 'Shishir.bhandariii@gmail.com', 'wadawdawd', NULL, NULL),
(4, 'gamerhubnepal', 'awdawdawd', 'awdawd', '+9779861924501', 'Shishir.bhandariii@gmail.com', 'awdawdawdawdad', NULL, NULL),
(6, 'kabfiar', 'BHandari', 'jgjvbnm', '986945', 'shakyakabir1@gmail.com', 'hagjjfaldbdsnn', NULL, NULL),
(7, 'kabfiar', 'BHandari', 'FANEIFOH', '9886155571', 'sssa@gmail.com', 'ALIDHWOGAWFHI', NULL, NULL),
(8, 'hbvjb', 'BHandari', 'FANEIFOH', '986945', 'shaoosjbs1@gmail.com', 'ihhin', NULL, NULL),
(9, 'kabfiar', 'BHandari', 'FANEIFOH', '986945', 'k4birxakya@gmail.com', 'ALIDHWOGAWFHI', NULL, NULL),
(13, 'suyash k', 'adhikary', 'trhr', '324234', 'monknewa@gmail.com', '432424', NULL, NULL),
(14, 'Brian', 'WRIGHT', NULL, '3038006251', 'sales1@dittart.com', 'Please check https://dittart.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `destination_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `description`, `destination_id`, `status`, `created_at`, `updated_at`) VALUES
(12, 'Australia', '<figure class=\"table\"><table><thead><tr><th><strong>Place</strong></th><th><strong>Capital&nbsp;City</strong></th><th><strong>Largest&nbsp;City</strong></th></tr></thead><tbody><tr><td>Australia</td><td>Canberra</td><td>Sydney</td></tr><tr><td>New&nbsp;South Wales</td><td>Sydney</td><td>Sydney</td></tr><tr><td>Victoria</td><td>Melbourne</td><td>Melbourne</td></tr><tr><td>Queensland</td><td>Brisbane</td><td>Brisbane</td></tr><tr><td>South&nbsp;Australia</td><td>Adelaide</td><td>Adelaide</td></tr><tr><td>Western&nbsp;Australia</td><td>Perth</td><td>Perth</td></tr><tr><td>Tasmania</td><td>Hobart</td><td>Hobart</td></tr><tr><td>Northern &nbsp;Territory&nbsp;The&nbsp;\"Australian&nbsp;Outback\"</td><td>Darwin</td><td>Darwin</td></tr><tr><td>Australian Capital&nbsp;Territory</td><td>Canberra</td><td>Canberra</td></tr></tbody></table></figure><p><strong>Study in Australia:</strong></p><p>More than 758,000 international students were studying and living in Australia. More than half of the universities are listed in the&nbsp;<a href=\"https://www.timeshighereducation.com/world-university-rankings/2021/world-ranking#!/page/3/length/25/sort_by/rank/sort_order/asc/cols/stats\">Times Higher Education World University Rankings</a>&nbsp;(2021), six are in the top 100. Australia offers prestigious Australia Award scholarships to emerging leaders from around the world to undertake study, research, and professional development in tertiary institutions in Australia and the region.&nbsp;</p><p><strong>Basic key points to choose Australia for study destination:</strong></p><ul><li>3rd&nbsp;most popular international student destination&nbsp;</li><li>5 out of 30 best student cities in the world</li><li>43 Universities (40 Australian, 2 International &amp; 1 Private)</li><li>6 of the top 100 universities</li><li>More than A$200 million international scholarships provided by the Australian Government each year</li><li>Part-Time job available for international students Dependent can join</li><li>Post- Study Work (PSW) Reasonable tuition fees Aﬀordable living cost</li><li>Friendly people &amp; Safe environment Low population</li><li>Tuition Protection Program Easy Visa Procedure</li></ul><p><strong>Types of tertiary institution:</strong></p><ul><li><strong>Universities</strong></li><li><strong>TAFE Institutes</strong></li><li><strong>Private Colleges/ VET Colleges</strong></li></ul><p><strong>Types of Degree:</strong></p><ul><li><strong>Vocational Education and Training (VET)</strong></li><li><strong>Bachelor’s Degree</strong></li><li><strong>Master’s Degree</strong></li><li><strong>PhD Degree</strong></li></ul>', 2, 'active', '2022-03-11 08:56:01', '2022-03-11 08:56:01'),
(15, 'Canada', '<p><strong>Canada Education System:</strong></p><p>Canada is one of the most developed and&nbsp;world-leading North American countries. Canada is&nbsp;a world&nbsp;leader in business,&nbsp;science and technology.&nbsp;Not only is Canada a developed&nbsp;country, it is also one of the most beautiful countries in the world. According to the&nbsp;World Health Organization, Canada&nbsp;ranks third in the cleanest air in the world. After the United&nbsp;States and&nbsp;Australia, Canada is the most popular and attractive destination for&nbsp;Nepalese students.&nbsp;After graduating from these universities, Canadian universities offer more facilities&nbsp;and globally recognized degrees from these&nbsp;universities, so after&nbsp;graduating from these&nbsp;universities, Canada as well as other American and European countries&nbsp;are highly paid. Jobs are readily available and more&nbsp;Nepalese students are&nbsp;being drawn to Canada. Canada is a&nbsp;country of rich diversity,&nbsp;including the sophisticated nature and&nbsp;wildlife of the city.&nbsp;Canada is one of the most popular destinations for science and technology, health&nbsp;sciences and nursing,&nbsp;information technology,&nbsp;business management, accounting and more. Universities in Canada are&nbsp;cheaper than&nbsp;in other European&nbsp;countries, and the&nbsp;cost of living and traveling in Canada&nbsp;is in other countries.&nbsp;In this way, Canada&nbsp;has become the most attractive destination for&nbsp;Nepalese students.&nbsp;That does not mean that there are no students from developed countries. Canada is the best&nbsp;place to study for students&nbsp;in all countries.</p>', 3, 'active', '2022-03-11 09:09:56', '2022-03-11 09:09:56');

-- --------------------------------------------------------

--
-- Table structure for table `destinations`
--

CREATE TABLE `destinations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `destinations`
--

INSERT INTO `destinations` (`id`, `title`, `slug`, `photo`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'USA', 'Study in USA', 'https://www.desireedunepal.com/storage/files/1/SA.png', '<p><strong>Introduction about the USA:</strong></p><p>American symbols have been recognized around the world. The Statue of Liberty, the White House, and the Bald Eagle are just a few of the iconic images that spring to mind for students when they think of the United States of America (also known as the USA or United States). US). But America is much more than its symbols and stereotypes. For international students, the US education system offers world-renowned educational opportunities of all shapes and sizes. Students can choose from a variety of excellent educational institutions in cities and towns across the country. .You can experience American college life in a nation known for its ethnic and geographic diversity while discovering the sights, sounds and tastes of America.</p><p><strong>Quick facts about the USA:</strong></p><ul><li><strong>The US Offers an Array of High-Quality Education Institutions</strong></li><li><strong>The US Is One of the Well-educated Countries in the World</strong></li><li><strong>The US Is Diverse and Multicultural</strong></li><li><strong>The US Is a Highly Competitive and Powerful Economy</strong></li><li><strong>The US Is a Creative, Innovative Nation</strong></li><li><strong>The US Values Openness and Equality</strong></li></ul><p>&nbsp;</p><p><strong>Education System in the USA:</strong></p><p>For many years, students and parents around the world have recognized the benefits of studying in the United States with state-of-the-art educational facilities and resources. Graduates from such programs emerge not only with job-ready skills, but also with a foundation for learning and success that will serve them throughout their lives.&nbsp;</p><p>Some of the hallmarks of the US education system are:</p><ul><li>High Quality</li><li>Large Variety</li><li>Student Centered</li><li>Well rounded</li></ul><p>&nbsp;</p><p>&nbsp;</p><p><strong>Why Study in the USA:</strong></p><p>The American university system is diverse, with more than 4,000 degree-granting institutions offering a wide range of programs and unique experiences for international students. As a result, the education system is “decentralized”: state governments are responsible for overseeing college activities.<strong>&nbsp;</strong></p><p><strong>&nbsp;</strong>Here are few top reasons why studying in the US could be the best decision of your life:</p><ol><li>Academic Excellence&nbsp;</li><li>Flexible education system</li><li>Excellent support system for International students</li><li>Cultural Diversity</li><li>Lively and vibrant campus life</li><li>Career opportunities</li><li>Provides Scholarship, Teaching Assistantships and research assistantships&nbsp;</li><li>OPT available up to 3 years after graduation</li></ol><p><strong>Living in the USA:</strong></p><p>International student departments will offer foreign students support when it comes to figuring out living arrangements, how to pay for things, and how to engage in the fun of study abroad beyond academics.&nbsp;There are two options to stay for International students i.e. On Campus and Off Campus.&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>', 'active', '2022-03-11 09:26:45', '2022-03-11 09:29:20'),
(2, 'Study in Australia', 'studyinaustralia', '/storage/files/1/images/Rectangle-73.png', '<p>Australia, officially commonwealth of Australia, is one of the most multicultural countries in the world, and home to the world\'s oldest continuing culture. The capital city of Australia is Canberra and largest city is Sydney (5.3 Million) with the total population of 24.7Million. Main language used in Australia is English with more than 300 others. Australia Dollar (AUD) is the currency of Australia. Tourism is one of the Australia’s largest export Industries, it employees over 666000 people. Melbourne, Sydney and Adelaide were the three Australian cities which were listed in the top ten world\'s most live able cities in 2019 by the Economist Intelligence Unit\'s&nbsp;global&nbsp;live ability&nbsp;index. Australian cultures and festivals are highlights nationally and internationally such as the&nbsp;Sydney Biennale, the&nbsp;OzAsia Festival,&nbsp;Splendour in the Grass,&nbsp;WOMADelaide&nbsp;and&nbsp;Vivid Sydney&nbsp;draw large audiences from across Australia and the world.</p><p>&nbsp;</p><p>New Emerging technologies are making an impact across Australia\'s economy and society and are being support by Australian businesses of different sizes, across different sectors over there. The Commonwealth Scientific and Industrial Research Organization is Australia\'s most trusted research institution and most connected innovator working with every Australian university, government department and major Australian industry. CSIRO works in over 80 countries and is ranked in the top one per cent of world scientific institutions in 13 of 22 research fields.</p>', 'active', '2022-03-01 13:39:33', '2022-03-11 09:25:00'),
(3, 'Study in Canada', 'in Canada', 'https://www.desireedunepal.com/storage/files/1/Rectangle-80.png', '<p>Canada is one of the most developed and&nbsp;world-leading North American countries. Canada is&nbsp;a world&nbsp;leader in business,&nbsp;science and technology.&nbsp;Not only is Canada a developed&nbsp;country, it is also one of the most beautiful countries in the world. According to the&nbsp;World Health Organization, Canada&nbsp;ranks third in the cleanest air in the world. After the United&nbsp;States and&nbsp;Australia, Canada is the most popular and attractive destination for&nbsp;Nepalese students.&nbsp;After graduating from these universities, Canadian universities offer more facilities&nbsp;and globally recognized degrees from these&nbsp;universities, so after&nbsp;graduating from these&nbsp;universities, Canada as well as other American and European countries&nbsp;are highly paid. Jobs are readily available and more&nbsp;Nepalese students are&nbsp;being drawn to Canada. Canada is a&nbsp;country of rich diversity,&nbsp;including the sophisticated nature and&nbsp;wildlife of the city.&nbsp;Canada is one of the most popular destinations for science and technology, health&nbsp;sciences and nursing,&nbsp;information technology,&nbsp;business management, accounting and more. Universities in Canada are&nbsp;cheaper than&nbsp;in other European&nbsp;countries, and the&nbsp;cost of living and traveling in Canada&nbsp;is in other countries.&nbsp;In this way, Canada&nbsp;has become the most attractive destination for&nbsp;Nepalese students.&nbsp;That does not mean that there are no students from developed countries. Canada is the best&nbsp;place to study for students&nbsp;in all countries.</p>', 'active', '2022-03-11 09:03:07', '2022-03-11 09:25:28'),
(8, 'IRELAND', 'Study in Ireland', 'https://www.desireedunepal.com/storage/files/1/std ire.jpg', '<p><strong>About Ireland:</strong></p><p>Ireland is also known as Republic of Ireland. Ireland is located on Western Europe. Capital city of Ireland is Dublin. Ireland is listed in the top 15 safest countries in the world&nbsp;by the Global Peace Index 2020. It is known for being a safe and friendly country that offers a warm welcome to tourists and students from around the world. While Ireland has its own language and distinct cultural identity, English is the universal spoken language and is one of the reasons why so many multinational businesses locate their European base here and it also makes Ireland a great choice for international students as well.&nbsp;</p><p>&nbsp;</p><p><strong>Why Study in Ireland?</strong></p><p><strong>STUDY&nbsp;</strong>in&nbsp;one&nbsp;of&nbsp;the&nbsp;best&nbsp;educationsystems&nbsp;in&nbsp;the&nbsp;world&nbsp;for&nbsp;higher&nbsp;education&nbsp;achievements</p><p><strong>BENEFIT&nbsp;</strong>from&nbsp;Ireland\'sinvestment&nbsp;in&nbsp;the&nbsp;education&nbsp;system</p><p><strong>Internationally&nbsp;</strong>RecognizedQualifications</p><p><strong>The&nbsp;Global&nbsp;</strong>Technologyhub</p><p><strong>CHOOSE&nbsp;</strong>from&nbsp;over&nbsp;5000&nbsp;internationally&nbsp;recognized&nbsp;qualifications</p><p><strong>ACCESS&nbsp;</strong>world-class&nbsp;researchopportunities&nbsp;in&nbsp;world-leading&nbsp;programs</p><p><strong>CONNECT&nbsp;</strong>with&nbsp;careeropportunities&nbsp;with&nbsp;leadingglobal&nbsp;companies&nbsp;locatedin&nbsp;Ireland</p><p><strong>ACHIEVE&nbsp;</strong>your&nbsp;ambitionsin&nbsp;Europe\'s&nbsp;most&nbsp;entrepreneurial&nbsp;country</p><p><strong>JOIN&nbsp;</strong>the&nbsp;35,000&nbsp;international&nbsp;studentsfrom&nbsp;161&nbsp;countries&nbsp;enjoying&nbsp;Ireland\'s&nbsp;vibrantculture</p><p><strong>LIVE&nbsp;</strong>in&nbsp;an&nbsp;English&nbsp;speakingcountry</p><p><strong>Environment&nbsp;</strong>is&nbsp;A&nbsp;friendly&nbsp;and&nbsp;Safe</p><p><strong>Excellence&nbsp;</strong>Long&nbsp;Education&nbsp;tradition</p><p><strong>Post&nbsp;study&nbsp;work&nbsp;</strong>for&nbsp;international&nbsp;students-&nbsp;2&nbsp;years&nbsp;</p><p>&nbsp;</p><p><strong>Living in Ireland:</strong></p><p>Ireland is an exciting place to live and study. They have blend of tradition and contemporary living is Unique. Over 4.5Million people enjoy mild, oceanic climate and a landscape that stretches across lakes and mountains, and more than 2000 miles of coastline which attracts over 6 million tourists to shores yearly. In recent years, Ireland has become a global Centre for the banking, telecommunications, and pharmaceutical and software industries. Ireland has one of the highest economic growth rates in the EU and much of this success can be attributed to our education system.&nbsp;</p><figure class=\"table\"><table><thead><tr><th><strong>Cost</strong></th><th><strong>Monthly (€)</strong></th><th><strong>Annual (€)</strong></th></tr></thead><tbody><tr><td>Rent</td><td>€427</td><td>€3,843</td></tr><tr><td>Utilities</td><td>€28</td><td>€252</td></tr><tr><td>Food</td><td>€167</td><td>€1,503</td></tr><tr><td>Travel</td><td>€135</td><td>€1,215</td></tr><tr><td>Books&nbsp; &amp; Class materials</td><td>€70</td><td>€630</td></tr><tr><td>Clothes/Medical</td><td>€41</td><td>€369</td></tr><tr><td>Mobile</td><td>€31</td><td>€279</td></tr><tr><td>Social life/Misc</td><td>€75</td><td>€675</td></tr></tbody></table></figure><p><strong>Source</strong>: Dublin Institute of Technology Cost of Living Guide</p>', 'active', '2022-03-11 09:33:36', '2022-03-11 09:33:36');

-- --------------------------------------------------------

--
-- Table structure for table `enquerynows`
--

CREATE TABLE `enquerynows` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Qualification` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ieltsscore` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enquerynows`
--

INSERT INTO `enquerynows` (`id`, `fullname`, `email`, `mobile`, `Qualification`, `ieltsscore`, `country`, `created_at`, `updated_at`) VALUES
(1, 'bibek maharjan', 'trioplustechnology@gmail.com', '9803377390', '2', '5.5', 'Nepal', NULL, NULL),
(2, 'bibek maharjan', 'trioplustechnology@gmail.com', '9803377390', '2', '5.5', 'Nepal', NULL, NULL),
(3, 'gamerhubnepal', 'Shishir.bhandariii@gmail.com', '+9779861924501', '+2', '8.0', 'Nepal', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `houses`
--

CREATE TABLE `houses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aboutdesc` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a5` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a6` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aphone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `applynow` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `applynowques` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `applynowans` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abroadfocus` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abroadphoto` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abroaddesc` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `career` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `careerphoto` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `careerdesc` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `test` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testphoto` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testdesc` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `env` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `envphoto` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `envdesc` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `houses`
--

INSERT INTO `houses` (`id`, `name`, `aboutdesc`, `a1`, `a2`, `a3`, `a4`, `a5`, `a6`, `aphone`, `applynow`, `applynowques`, `applynowans`, `abroadfocus`, `abroadphoto`, `abroaddesc`, `career`, `careerphoto`, `careerdesc`, `test`, `testphoto`, `testdesc`, `env`, `envphoto`, `envdesc`, `created_at`, `updated_at`) VALUES
(1, 'About Study', 'Desire Educational Consultancy (Best Education Consultancy in Kathmandu Nepal for Australia | USA | Ielts Preparation Classes) was established in the locality of Dillibazar, Kathmandu with an aim to provide effective study abroad counseling to the aspiring students who want to learn in excellent environment with multicultural experience and great life style. We provide professional guidance for higher studies in Australia, New Zealand and USA.', 'Student Counselling', 'Test Preparation', 'University Application', 'Compliance', 'Compliance', 'Compliance', '977 01-4412344', 'Apply Now', 'How to Apply to an International University ?', 'Popular degree subjects in different Country Universities to consider for your studies. Prepare to apply. … Meet the language proficiency requirements. Gather the rest of your university application documents University application deadlines in Abroad Final steps after receiving your acceptance letter.', 'Abroad Focus', '/storage/files/2/why-choose.png', 'Desire Educational Consultancy (Best Education Consultancy in Kathmandu Nepal for Australia | USA | Ielts Preparation Classes) was established in the locality of Dillibazar, Kathmandu with an aim to provide effective study abroad counseling to the aspiring students who want to learn in excellent environment with multicultural experience and great lifestyle. We provide professional guidance for higher studies in Australia, New Zealand and USA.', 'Career', '/storage/files/2/why-choose.png', 'Desire Educational Consultancy (Best Education Consultancy in Kathmandu Nepal for Australia | USA | Ielts Preparation Classes) was established in the locality of Dillibazar, Kathmandu with an aim to provide effective study abroad counseling to the aspiring students who want to learn in excellent environment with multicultural experience and great lifestyle. We provide professional guidance for higher studies in Australia, New Zealand and USA.', 'Test', '/storage/files/2/why-choose.png', 'Desire Educational Consultancy (Best Education Consultancy in Kathmandu Nepal for Australia | USA | Ielts Preparation Classes) was established in the locality of Dillibazar, Kathmandu with an aim to provide effective study abroad counseling to the aspiring students who want to learn in excellent environment with multicultural experience and great lifestyle. We provide professional guidance for higher studies in Australia, New Zealand and USA.', 'Environment', '/storage/files/2/why-choose.png', 'Desire Educational Consultancy (Best Education Consultancy in Kathmandu Nepal for Australia | USA | Ielts Preparation Classes) was established in the locality of Dillibazar, Kathmandu with an aim to provide effective study abroad counseling to the aspiring students who want to learn in excellent environment with multicultural experience and great lifestyle. We provide professional guidance for higher studies in Australia, New Zealand and USA.', NULL, '2022-03-06 12:07:00');

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_02_23_123122_create_about_us_table', 1),
(6, '2022_02_23_130511_create_offers_table', 1),
(7, '2022_02_23_161703_create_banners_table', 1),
(8, '2022_02_23_175605_create_testimonials_table', 1),
(9, '2022_02_23_194841_create_contacts_table', 1),
(10, '2022_02_23_212548_create_applynows_table', 1),
(11, '2022_02_23_221319_create_enquerynows_table', 1),
(12, '2022_02_24_030539_create_blogcategory_table', 1),
(13, '2022_02_24_070449_create_our_offers_table', 1),
(14, '2022_02_24_092641_create__destination_controller_table', 1),
(15, '2022_02_24_142811_create_settings_table', 1),
(16, '2022_02_24_165755_create_blogs_table', 1),
(17, '2022_02_28_092214_create_countries_table', 1),
(18, '2022_03_01_111515_create_houses_table', 2),
(19, '2022_05_04_080412_create_services_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `offer_desc` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `offer_desc`, `photo`, `created_at`, `updated_at`) VALUES
(1, '<p><strong>If you are looking to study in Australia from Nepal and get a visa for travel to Australia, we are here to assist you all the way. Searching for prestigious yet affordable colleges often becomes hectic due to a lack of expert counselling. We can feel such need of the students and make available providers with the best diploma courses offered in Australia for international students. Vocational education is very popular in Australia provided by TAFES and private colleges which is based on a partnership between government and industries. We have an association with prestigious Australian Universities, through which we facilitate potential students enrolment in the best Bachelor and Master degree courses in Australia. These universities offer many grants, scholarships, and bursaries to assist you financially with your studies in Australia.</strong></p><p>&nbsp;</p><p><strong>&nbsp;If you are looking to study in Australia from Nepal and get a visa for travel to Australia, we are here to assist you all the way. Searching for prestigious yet affordable colleges often becomes hectic due to a lack of expert counselling. We can feel such need of the students and make available providers with the best diploma courses offered in Australia for international students.</strong></p>', '/storage/files/1/blog-detail.png', NULL, '2022-03-06 12:12:30');

-- --------------------------------------------------------

--
-- Table structure for table `our_offers`
--

CREATE TABLE `our_offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `our_offers`
--

INSERT INTO `our_offers` (`id`, `title`, `photo`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Free Ielts Services', '/storage/files/1/package-card.png', '<p><strong>If you’re someone who just completed a bachelor\'s and looking forward to a better opportunity for the future, then a M...f you’re someone who just completed a bachelor\'s and looking forward to a better opportunity for the future, then a M...</strong></p>', '2022-03-01 16:58:14', '2022-03-01 16:58:14');

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_phoneone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_phonetwo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_phonethree` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `meta_description`, `meta_keywords`, `logo`, `favicon`, `header_address`, `header_email`, `header_phone`, `facebook`, `twitter`, `instagram`, `footer_address`, `footer_email`, `footer_phoneone`, `footer_phonetwo`, `footer_phonethree`, `footer_logo`, `created_at`, `updated_at`) VALUES
(1, 'Desire Consultency', 'Desire Consultency', 'Desire Consultency', 'assets/images/logo.png', 'https://www.desireedunepal.com//storage/files/1/favicon.png', 'Putalisadak, Kathmandu', 'admissions@desireedunepal.com', '+977-4428538', 'https://www.facebook.com/desireedunepal', 'https://twitter.com/desireedunepal', 'https://www.instagram.com/desireedunepal', 'P.O.BOX: 8954, KATHAMNDU, NEPAL, 44600', 'info@desireconsultancy.com', '+977-984-838-838', '+977-984-838-838', '+977-984-838-838', 'assets/images/logo-lg.png', NULL, '2022-03-11 08:14:59');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `desc`, `photo`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Shishir Bhandari', '<h2>Desire Educational Consultancy (Best Education Consultancy in Kathmandu Nepal for Australia | USA | Ielts Preparation Classes) was established in the locality of Dillibazar, | USA | Ielts Preparation.</h2>', '/storage/files/1/Rectangle-80.png', 'active', NULL, '2022-03-09 00:08:06'),
(2, 'Kabir Raj Shakya', '<blockquote><p>Desire Educational Consultancy (Best Education Consultancy in Kathmandu Nepal for Australia | USA | Ielts Preparation Classes) was established in the locality of Dillibazar, | USA | Ielts Preparation.</p></blockquote>', '/storage/files/1/p-1.png', 'active', '2022-03-01 16:55:49', '2022-03-01 16:55:49'),
(3, 'Kabir Sakya', '<p>Desire Educational Consultancy (Best Education Consultancy in Kathmandu Nepal for Australia | USA | Ielts Preparation Classes) was established in the locality of Dillibazar, | USA | Ielts Preparation.</p>', '/storage/files/1/p-1.png', 'active', '2022-03-01 14:11:12', '2022-03-01 14:11:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `condition` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `role_as` tinyint(4) NOT NULL DEFAULT 0,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employe_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `full_name`, `email`, `email_verified_at`, `password`, `condition`, `status`, `role_as`, `phone`, `photo`, `description`, `address`, `facebook`, `instagram`, `twitter`, `employe_status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Admin', 'admin@admin.com', NULL, '$2y$10$8MY8MMBYPp2yNH9Lyb3df.7XDiV1wAgA3OwENPJuGy5TQ1BEZ4npG', 'no', 'active', 1, NULL, 'https://www.desireedunepal.com/storage/files/1/274814166_1585506265147830_1706762163375239148_n.jpg', NULL, 'Manager', 'https://www.facebook.com/kabir', 'https://www.instagram.com', 'https://www.twitter.com', NULL, NULL, '2022-03-01 15:17:25', '2022-03-11 10:49:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applynows`
--
ALTER TABLE `applynows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `banners_slug_unique` (`slug`);

--
-- Indexes for table `blogcategories`
--
ALTER TABLE `blogcategories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blogcategories_slug_unique` (`slug`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blogs_slug_unique` (`slug`),
  ADD KEY `blogs_user_id_foreign` (`user_id`),
  ADD KEY `blogs_cat_id_foreign` (`cat_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `countries_destination_id_foreign` (`destination_id`);

--
-- Indexes for table `destinations`
--
ALTER TABLE `destinations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquerynows`
--
ALTER TABLE `enquerynows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `our_offers`
--
ALTER TABLE `our_offers`
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
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
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
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `applynows`
--
ALTER TABLE `applynows`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `blogcategories`
--
ALTER TABLE `blogcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `destinations`
--
ALTER TABLE `destinations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `enquerynows`
--
ALTER TABLE `enquerynows`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `houses`
--
ALTER TABLE `houses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `our_offers`
--
ALTER TABLE `our_offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `blogcategories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blogs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `countries`
--
ALTER TABLE `countries`
  ADD CONSTRAINT `countries_destination_id_foreign` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
