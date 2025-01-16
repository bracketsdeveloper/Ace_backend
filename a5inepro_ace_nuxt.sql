-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 19, 2022 at 06:24 AM
-- Server version: 5.7.23-23
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `a5inepro_ace_nuxt`
--

-- --------------------------------------------------------

--
-- Table structure for table `enquiries`
--

CREATE TABLE `enquiries` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enquiries`
--

INSERT INTO `enquiries` (`id`, `name`, `email`, `phone`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(4, 'subham', 'subham.s@jurysoft.com', '1234567890', 'test', 'test', '2022-03-18 10:05:12', '2022-03-18 10:05:12'),
(5, 'subham saha', 'subham.s@jurysoft.com', '1234567890', 'test', 'dsdfsdf', '2022-03-18 10:08:53', '2022-03-18 10:08:53'),
(6, 'subham saha', 'subham.5ine@gmail.com', '1234567890', 'test\'s subject', 'message from home page', '2022-03-23 11:08:31', '2022-03-23 11:08:31'),
(7, 'dsfsdf', 'subham@gmail.com', '1234567890', 'subham', 'subham', '2022-03-23 11:15:53', '2022-03-23 11:15:53'),
(8, 'dsdfdsfd', 'adas@gnvbg.bom', '1234678905', 'asdasd', 'asdasdads', '2022-03-23 11:22:25', '2022-03-23 11:22:25'),
(9, 'ttt', 'sss@dddf.bom', '1234567890', 'ddsd', 'sdfsdf', '2022-03-24 10:07:45', '2022-03-24 10:07:45');

-- --------------------------------------------------------

--
-- Table structure for table `homePageFifthSectionContents`
--

CREATE TABLE `homePageFifthSectionContents` (
  `id` int(11) NOT NULL,
  `heading` text NOT NULL,
  `paragraph` text NOT NULL,
  `userId` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `homePageFifthSectionContents`
--

INSERT INTO `homePageFifthSectionContents` (`id`, `heading`, `paragraph`, `userId`, `created_at`, `updated_at`) VALUES
(3, 'Employee Welcome Kits', 'A beautifully packaged welcome gift will set the positive energy of the workplace, celebrating your newly begun collaboration. Uplift the morale through our specially designed welcome kits.', 1, '2022-03-23 10:25:59', '2022-03-23 10:25:59'),
(4, 'Curated Gift Hampers', 'Your company\'s deep values can be tangible through our curated gift hampers. Let your client realise that you esteem their alliance. Select from a host of options that are best suited for the purpose.', 1, '2022-03-23 10:26:17', '2022-03-23 10:26:17'),
(5, 'Festive Gifts', 'Festive seasons are the perfect time to express to the families of clients, associates and employees that they are esteemed and that their happiness matters to you. We provide specific gifting options to deliver the warmth of care bundled in the festive gifts.', 1, '2022-03-23 10:26:34', '2022-03-23 10:26:34'),
(6, 'Milestone Gifting', 'Work anniversary gifts are the means to turn notable milestones into special commemorations. Employees enjoy receiving heartwarming tokens of appreciation. In turn, this strengthens their loyalty. Ace Gifting Solutions helps you build that bond.', 1, '2022-03-23 10:26:53', '2022-03-23 10:26:53'),
(7, 'Client Gifting', 'To build a substantial and long term business relationship, ensuring that the client feels valued is crucial in todays competitive world. We can partner with you to achieve this through our well-designed client gifting solutions.', 1, '2022-03-23 10:28:15', '2022-03-23 10:28:15'),
(8, 'Gift Cards', 'We provide an ideal platform for your employees, clients and vendors to access luxury through our gift cards. Gift cards give the recipient the royalty to choose from an expansive collection suitable for any season.', 1, '2022-03-23 10:28:45', '2022-03-23 10:28:45'),
(9, 'Corporate Gifts', 'We are a distinguished corporate gifting company that suits the needs of enterprise-level efficiency or small business savvy. You can count on a best-in-class gifting experience, aesthetic and a touch of thoughtfulness. We promise to be your go-to for gifting! ', 1, '2022-03-23 10:29:05', '2022-03-23 10:29:05');

-- --------------------------------------------------------

--
-- Table structure for table `homePageFifthSections`
--

CREATE TABLE `homePageFifthSections` (
  `id` int(11) NOT NULL,
  `heading` text NOT NULL,
  `paragraph` text NOT NULL,
  `userId` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `homePageFifthSections`
--

INSERT INTO `homePageFifthSections` (`id`, `heading`, `paragraph`, `userId`, `created_at`, `updated_at`) VALUES
(1, 'We aspire to connect!!', 'Gifting solutions that speak the best of your brand', 1, '2022-03-16 10:24:48', '2022-03-16 10:24:48');

-- --------------------------------------------------------

--
-- Table structure for table `homePageSecondSectionBanners`
--

CREATE TABLE `homePageSecondSectionBanners` (
  `id` int(11) NOT NULL,
  `image` text NOT NULL,
  `userId` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `homePageSecondSectionBanners`
--

INSERT INTO `homePageSecondSectionBanners` (`id`, `image`, `userId`, `created_at`, `updated_at`) VALUES
(1, 'd607118c-17cc-4d50-8a7a-e00e7b87b828-4889aa55-5ac9-4c2b-a300-17fbcf7e7115-bg3 (1).jpg', 2, '2022-03-16 06:20:46', '2022-03-16 06:20:46');

-- --------------------------------------------------------

--
-- Table structure for table `homePageSecondSections`
--

CREATE TABLE `homePageSecondSections` (
  `id` int(11) NOT NULL,
  `heading` text NOT NULL,
  `paragraph` text NOT NULL,
  `userId` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `homePageSecondSections`
--

INSERT INTO `homePageSecondSections` (`id`, `heading`, `paragraph`, `userId`, `created_at`, `updated_at`) VALUES
(1, 'Ace elevates the idea of thoughtful corporate gifting ', 'Fostering business relationships with innovative and creative gifting', 1, '2022-03-16 05:57:09', '2022-03-16 05:57:09');

-- --------------------------------------------------------

--
-- Table structure for table `homePageThirdSectionContents`
--

CREATE TABLE `homePageThirdSectionContents` (
  `id` int(11) NOT NULL,
  `heading` text NOT NULL,
  `paragraph` text NOT NULL,
  `image` text NOT NULL,
  `userId` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `homePageThirdSectionContents`
--

INSERT INTO `homePageThirdSectionContents` (`id`, `heading`, `paragraph`, `image`, `userId`, `created_at`, `updated_at`) VALUES
(3, 'Value-added Gifting', 'Our thoughtful gifting solutions can drive higher customer retention by providing positive experiences, which show that you value them as clients and as people.', '14e8ec2f-db8f-4e94-b47e-6a98bf3d3a6c-giftbox.png', 1, '2022-03-23 10:34:31', '2022-03-23 10:34:31'),
(4, 'Client-Centric', 'At Ace, we understand your preferences and integrate them to personalise your gifting experience. We align our processes accordingly to design gifts inspired by your vision.', '0fae4dd1-7f98-498f-a483-7d5d576392f8-rating.png', 1, '2022-03-23 10:35:01', '2022-03-23 10:35:01'),
(5, 'Impressive Intent', 'We endeavour to create masterpieces to build your brand name and impress your clients. At Ace, we are driven to provide our clients with a consistently great experience at each step from our first interaction.', 'f0a6aed3-6870-450e-8391-2fd70a497c72-programmer.png', 1, '2022-03-23 10:35:28', '2022-03-23 10:35:28'),
(6, 'Secure Services', 'We are a reputed company and take extreme care to ensure the Gifts just the way you expect. We, at Ace Gifting Solutions, conduct regular quality checks of all our products to provide a seamless experience to our clients.', '62b4e3d0-affa-492a-be75-190e017b091c-insurance.png', 1, '2022-03-23 10:35:51', '2022-03-23 10:35:51'),
(7, 'Door-Step-Delivery', 'Ace Gifting Solutions aim to provide unparalleled customer service with end to end support. We deliver on time to your doorstep across India and to many other countries by working intently with our logistic partners, even in the USA, Australia, Singapore, to name a few.', '25511c46-8828-41e3-82b2-848a1d5d89ef-delivery-truck.png', 1, '2022-03-23 10:36:14', '2022-03-23 10:36:14');

-- --------------------------------------------------------

--
-- Table structure for table `homePageThirdSections`
--

CREATE TABLE `homePageThirdSections` (
  `id` int(11) NOT NULL,
  `heading` text NOT NULL,
  `paragraph` text NOT NULL,
  `userId` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `homePageThirdSections`
--

INSERT INTO `homePageThirdSections` (`id`, `heading`, `paragraph`, `userId`, `created_at`, `updated_at`) VALUES
(1, 'Together we are the best!! Here\'s why!!', 'We are driven by a clear vision and constant innovation to create unique gifts.', 1, '2022-03-16 06:45:41', '2022-03-16 06:45:41');

-- --------------------------------------------------------

--
-- Table structure for table `orderRequestProducts`
--

CREATE TABLE `orderRequestProducts` (
  `id` int(11) NOT NULL,
  `orderRequestId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderRequestProducts`
--

INSERT INTO `orderRequestProducts` (`id`, `orderRequestId`, `productId`, `created_at`, `updated_at`) VALUES
(20, 18, 620, '2022-03-29 11:39:20', '2022-03-29 11:39:20'),
(21, 19, 624, '2022-03-29 11:41:54', '2022-03-29 11:41:54'),
(22, 20, 624, '2022-03-29 11:43:32', '2022-03-29 11:43:32'),
(23, 21, 1157, '2022-04-05 07:14:40', '2022-04-05 07:14:40'),
(24, 21, 1154, '2022-04-05 07:14:40', '2022-04-05 07:14:40');

-- --------------------------------------------------------

--
-- Table structure for table `orderRequests`
--

CREATE TABLE `orderRequests` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `message` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderRequests`
--

INSERT INTO `orderRequests` (`id`, `name`, `email`, `phone`, `message`, `created_at`, `updated_at`) VALUES
(18, 'subham saha', 'subham.5ine@gmail.com', '1234567890', 'ttt', '2022-03-29 11:39:20', '2022-03-29 11:39:20'),
(19, 'subham', 'subham.5ine@gmail.com', '1234567890', 'ccc', '2022-03-29 11:41:54', '2022-03-29 11:41:54'),
(20, 'subham', 'subham.5ine@gmail.com', '1234567890', 'jjj', '2022-03-29 11:43:32', '2022-03-29 11:43:32'),
(21, 'Ritika', 'ritika@acegiftingsolutions.com', '9986659537', 'Please call', '2022-04-05 07:14:40', '2022-04-05 07:14:40');

-- --------------------------------------------------------

--
-- Table structure for table `productCategories`
--

CREATE TABLE `productCategories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `userId` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `productCategories`
--

INSERT INTO `productCategories` (`id`, `name`, `userId`, `created_at`, `updated_at`) VALUES
(3, ' Electronics / Speaker ', 1, '2022-03-21 10:29:57', '2022-03-21 10:29:57'),
(4, 'Electronics / Neck bands', 1, '2022-03-22 05:07:10', '2022-03-22 05:07:10'),
(5, 'Electronics / Headphone', 1, '2022-03-22 08:34:27', '2022-03-22 08:34:27'),
(6, 'Electronics /Power bank ', 1, '2022-03-22 08:40:05', '2022-03-22 08:40:05'),
(7, 'Electronics /Earphone', 1, '2022-03-28 06:09:30', '2022-03-28 06:09:30'),
(8, 'Electronics /Cable', 1, '2022-03-28 06:09:52', '2022-03-28 06:09:52'),
(9, 'Electronics /Earbuds ', 1, '2022-03-28 06:10:25', '2022-03-28 06:10:25'),
(10, 'Electronics /Wall Charger', 1, '2022-03-28 06:11:00', '2022-03-28 06:11:00'),
(11, 'Electronics /Wireless Mobile Charger', 1, '2022-03-28 06:11:11', '2022-03-28 06:11:11'),
(12, 'Electronics /USB Cables ', 1, '2022-03-28 06:11:35', '2022-03-28 06:11:35'),
(13, 'Electronics /Fitness Tracker', 1, '2022-03-28 06:12:36', '2022-03-28 06:12:36'),
(14, 'Electronics /Smart Watch', 1, '2022-03-28 06:12:55', '2022-03-28 06:12:55'),
(15, 'Electronics /Travel gadgets', 1, '2022-03-28 06:13:06', '2022-03-28 06:13:06'),
(16, 'Electronics /Headset ', 1, '2022-03-28 06:13:30', '2022-03-28 06:13:30'),
(17, 'Electronics /SPEAKERPHONE', 1, '2022-03-28 06:13:58', '2022-03-28 06:13:58'),
(18, 'Electronics /Desk Lamp ', 1, '2022-03-28 06:14:33', '2022-03-28 06:14:33'),
(19, 'Electronics /Accessories', 1, '2022-03-28 06:14:43', '2022-03-28 06:14:43'),
(20, 'Electronics /CHARGING HUB', 1, '2022-03-28 06:15:00', '2022-03-28 06:15:00'),
(21, 'Electronics /FITNESS BAND', 1, '2022-03-28 06:16:11', '2022-03-28 06:16:11'),
(22, 'Electronics /SMART FITNESS WATCH', 1, '2022-03-28 06:16:23', '2022-03-28 06:16:23'),
(23, 'Electronics / Mouse ', 1, '2022-03-28 06:17:02', '2022-03-28 06:17:02'),
(24, 'Electronics / Single USB port', 1, '2022-03-28 06:18:13', '2022-03-28 06:18:13'),
(25, 'Electronics / Dual USB port', 1, '2022-03-28 06:18:30', '2022-03-28 06:18:30'),
(26, 'Electronics / Mini USB Car Charger', 1, '2022-03-28 06:18:59', '2022-03-28 06:18:59'),
(27, 'Electronics / SpeakerPods', 1, '2022-03-28 06:19:30', '2022-03-28 06:19:30'),
(28, ' Mobile Charging stand ', 1, '2022-03-28 06:19:47', '2022-03-28 06:19:47'),
(29, 'Electronics / Wireless Power bank', 1, '2022-03-28 06:20:16', '2022-03-28 06:20:16'),
(30, 'Eye Massager', 1, '2022-03-28 06:20:35', '2022-03-28 06:20:35'),
(31, 'Multifunction Calculator', 1, '2022-03-28 06:20:45', '2022-03-28 06:20:45'),
(32, 'Fast Charging Cable', 1, '2022-03-28 06:21:06', '2022-03-28 06:21:06'),
(33, 'Bluetooth', 2, '2022-03-28 06:21:19', '2022-03-28 06:21:19'),
(34, 'Wired Headphone', 1, '2022-03-28 06:21:58', '2022-03-28 06:21:58'),
(35, 'Car Accessories', 1, '2022-03-28 06:23:07', '2022-03-28 06:23:07'),
(36, 'Car Charger', 1, '2022-03-28 06:24:41', '2022-03-28 06:24:41'),
(37, 'T-Shirt', 2, '2022-03-30 06:23:09', '2022-03-30 06:23:09'),
(38, 'Track Suit ', 1, '2022-03-30 06:23:30', '2022-03-30 06:23:30'),
(39, 'Track Jacket', 1, '2022-03-30 06:23:41', '2022-03-30 06:23:41'),
(40, ' Sweat Jacket', 1, '2022-03-30 06:23:51', '2022-03-30 06:23:51'),
(41, 'Jacket', 1, '2022-03-30 06:24:05', '2022-03-30 06:24:05'),
(42, 'Sweatshirt', 1, '2022-03-30 06:24:18', '2022-03-30 06:24:18'),
(43, 'Belt', 1, '2022-03-30 06:24:33', '2022-03-30 06:24:33'),
(44, 'Shirt', 1, '2022-03-30 06:28:50', '2022-03-30 06:28:50'),
(45, 'Deskmat ', 1, '2022-03-30 06:46:25', '2022-03-30 06:46:25'),
(46, 'Photo frame', 1, '2022-03-30 06:46:38', '2022-03-30 06:46:38'),
(47, 'Card holder ', 1, '2022-03-30 06:46:49', '2022-03-30 06:46:49'),
(48, 'Desktop Products', 2, '2022-03-30 06:47:03', '2022-03-30 06:47:03'),
(49, 'Travel Accessories', 1, '2022-03-30 07:01:21', '2022-03-30 07:01:21'),
(50, 'Steel Bottle', 1, '2022-03-30 08:23:55', '2022-03-30 08:23:55'),
(51, 'Metal bottle ', 1, '2022-03-30 08:24:10', '2022-03-30 08:24:10'),
(52, 'Plastic Bottle', 1, '2022-03-30 08:24:22', '2022-03-30 08:24:22'),
(53, 'Mug ', 1, '2022-03-30 08:24:37', '2022-03-30 08:24:37'),
(54, 'Steel Mug ', 1, '2022-03-30 08:24:54', '2022-03-30 08:24:54'),
(55, 'Glass ', 1, '2022-03-30 08:25:04', '2022-03-30 08:25:04'),
(56, 'Jug', 1, '2022-03-30 08:25:13', '2022-03-30 08:25:13'),
(57, 'Bottle ', 1, '2022-03-30 08:25:33', '2022-03-30 08:25:33'),
(58, 'Backpack ', 1, '2022-04-02 15:15:26', '2022-04-02 15:15:26'),
(59, 'Pouch ', 1, '2022-04-02 15:15:36', '2022-04-02 15:15:36'),
(60, 'Duffle ', 2, '2022-04-02 15:15:46', '2022-04-02 15:15:46'),
(61, 'Passport holder', 1, '2022-04-02 15:15:57', '2022-04-02 15:15:57'),
(62, 'Laptop bag', 1, '2022-04-02 15:16:17', '2022-04-02 15:16:17'),
(63, 'Sling bag', 1, '2022-04-02 15:16:38', '2022-04-02 15:16:38'),
(64, 'Messager bag', 1, '2022-04-02 15:16:46', '2022-04-02 15:16:46'),
(65, 'Laptop sleeve', 1, '2022-04-02 15:16:57', '2022-04-02 15:16:57'),
(66, 'Travel bag ', 1, '2022-04-02 15:17:14', '2022-04-02 15:17:14'),
(67, 'Duffle bag ', 1, '2022-04-02 15:17:34', '2022-04-02 15:17:34'),
(68, 'Travel Kit', 1, '2022-04-02 15:17:45', '2022-04-02 15:17:45'),
(69, 'Gym bag', 1, '2022-04-02 15:17:54', '2022-04-02 15:17:54'),
(70, 'Strolly bag ', 1, '2022-04-02 15:18:04', '2022-04-02 15:18:04'),
(71, 'Hand bag ', 1, '2022-04-02 15:18:39', '2022-04-02 15:18:39'),
(72, 'Loptop Trolly ', 1, '2022-04-02 15:18:52', '2022-04-02 15:18:52'),
(73, 'Sports bag ', 1, '2022-04-02 15:19:03', '2022-04-02 15:19:03'),
(74, ' Trolley ', 1, '2022-04-02 15:19:22', '2022-04-02 15:19:22'),
(75, 'Wallet', 2, '2022-04-02 15:28:09', '2022-04-02 15:28:09'),
(76, 'Diary ', 1, '2022-04-02 16:49:26', '2022-04-02 16:49:26'),
(77, 'Note Books', 1, '2022-04-02 16:49:44', '2022-04-02 16:49:44'),
(78, 'Pen', 1, '2022-04-02 16:49:58', '2022-04-02 16:49:58'),
(79, 'Deskmat', 1, '2022-04-02 16:50:09', '2022-04-02 16:50:09'),
(80, 'Wallet ', 2, '2022-04-02 16:50:44', '2022-04-02 16:50:44'),
(81, 'Gift set ', 1, '2022-04-02 16:50:54', '2022-04-02 16:50:54'),
(82, 'Organizer ', 1, '2022-04-02 16:51:05', '2022-04-02 16:51:05'),
(83, 'Mobile stand ', 1, '2022-04-02 20:59:35', '2022-04-02 20:59:35'),
(84, 'Arm band ', 1, '2022-04-02 20:59:49', '2022-04-02 20:59:49'),
(85, 'Bookmark ', 1, '2022-04-02 21:00:01', '2022-04-02 21:00:01'),
(86, 'Torch ', 1, '2022-04-02 21:00:08', '2022-04-02 21:00:08'),
(87, 'Keychain ', 1, '2022-04-02 21:00:18', '2022-04-02 21:00:18'),
(88, 'Table clock ', 1, '2022-04-02 21:00:27', '2022-04-02 21:00:27'),
(89, 'Stationery', 2, '2022-04-02 21:01:11', '2022-04-02 21:01:11'),
(90, 'Electronics', 1, '2022-04-02 21:01:28', '2022-04-02 21:01:28'),
(91, 'Bag ', 2, '2022-04-02 21:01:51', '2022-04-02 21:01:51'),
(92, 'Toolkit', 2, '2022-04-02 21:02:05', '2022-04-02 21:02:05'),
(93, 'Drinkware ', 1, '2022-04-02 21:02:14', '2022-04-02 21:02:14'),
(94, 'Healthcare', 1, '2022-04-02 21:03:01', '2022-04-02 21:03:01'),
(95, 'Beautycare', 2, '2022-04-02 21:03:13', '2022-04-02 21:03:13'),
(96, 'Passport holder', 1, '2022-04-02 21:03:25', '2022-04-02 21:03:25'),
(97, 'Awards', 2, '2022-04-11 06:36:10', '2022-04-11 06:36:10'),
(98, 'Kitchenware', 2, '2022-04-12 05:48:39', '2022-04-12 05:48:39'),
(99, 'Cap', 2, '2022-04-12 12:15:04', '2022-04-12 12:15:04');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `price` text NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `userId` int(11) NOT NULL,
  `productCategoryId` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `description`, `image`, `userId`, `productCategoryId`, `created_at`, `updated_at`) VALUES
(17, 'boAt 182 Earphone', '810-990', 'boAt BassHeads 182 Wired in Ear Earphone with Mic (Black)', 'boAt 182 Earphone.jpg', 2, 7, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(18, 'boAt 210 Speaker', '2000-2250', 'boAt Stone 200 3 Watt 1.0 Channel Wireless Bluetooth Outdoor Speaker', 'boAt 210 Speaker.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(19, 'boAt 230 Speaker', '1800-2100', 'boAt Stone 230 3 W Bluetooth Speaker  (Midnight blue, Mono Channel)', 'boAt 230 Speaker.webp', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(20, 'boAt 255R Neck band', '1800-2100', 'boAt In-Ear Wireless Earphones with Mic (Bluetooth 4.1, boAt Signature Sound, Rockerz 255F RTL, Neon)', 'boAt 255R Neckband.jpg', 2, 4, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(21, 'Desk Lamp With Mobile Stand - BRYTO 2.0', '750-870', 'Touch sensor LED desk lamp', 'Desk Lamp With Mobile Stand - BRYTO 2.0.jpg', 2, 18, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(22, 'Pebble Bass X PRIME', '1500-1800', 'Pebble BassX Prime - Bluetooth Speaker with Heavy Bass Stereo Sound & Built-in Mic, 70mm high-sensitivity Speaker, Worry-Free Battery Life: with 1200mAh built-in rechargeable battery, 4-5 hours of continuous music playback.', 'Pebble Bass X PRIME.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(23, 'Pebble Groove Slide Speaker', '1000-1260', 'Pebble Groove Slide Portable Wireless Bluetooth Speaker with FM/USB/TF Card Reader/AUX, Colour - grey.', 'Pebble Groove Slide Speaker.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(24, 'PORTRONICS POWER PLATE 6', '900-1180', 'PORTRONICS POWER PLATE 6 WITH 5 POWER & 5 USB SOCKETS WITH 3MTR CABLE, SHORT CIRCUIT, OVER VOLTAGE & OVER TEMPERATURE PROTECTION.', 'PORTRONICS POWER PLATE 6.webp', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(25, 'Zoook-POWERMATE-3', '1260-1500', 'Polymer 10000mAh PB with 2 USB O/P and 1 Micro USB I/P', 'ZK-POWERMATE-3 .png', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(26, 'ZEBRONICS BUZZ MULTIMEDIA HEADPHONE', '750-950', 'Buzz is a stylish wired headphone for that extra added bass. It comes along with a mic and volume control option. It has a 40mm driver, a single 3.5mm jack and is compatible with mobile/tablet.', 'Zebronics Buzz Multimedia HeadphoneA.jpg', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(27, 'ZEBRONICS MC10000 POWER BANK', '1260-1440', 'The ZEB MC 10000 is a compact power bank with a 10000mAh capacity. It comes with 2 USB ports and has an LED indicator display. It also has an LED torch, which can be used during an emergency.', 'ZEBRONICS MC10000 POWER BANK.jpg', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(28, 'Zoook-ZF-JAZZCLAWS / ZK-ZFJAZZCLAW-N', '2100-2500', 'Zoook neck bt earphones with 20 hrs. backup', 'ZK-ZF-JAZZCLAWS _ ZK-ZFJAZZCLAW-N.webp', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(29, '2 in 1 Car and Home Charger with 2 USB Ports', '550-750', 'Black, White', '_2 in 1 Car and  Home Charger  with 2 USB Ports _.jpg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(30, 'Ambrane AQC-56 Quick Charge 3.0 Enabled Wall Charger', '550-750', 'Ambrane AQC-56 Quick Charge 3.0 Enabled Wall Charger (Qualcomn Certified)', '_Ambrane AQC-56 Quick Charge 3.0 Enabled Wall Charger  _.webp', 2, 10, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(31, 'BLUETOOTH EARPHONE DBE 004', '500-700', 'Earphone', '_BLUETOOTH EARPHONE  DBE-004 _.jpg', 2, 33, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(32, 'BLUETOOTH EARPHONE DBE 005', '600-800', 'Headphone', '_BLUETOOTH EARPHONE  DBE-005_.jpg', 2, 33, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(33, 'BLUETOOTH HEADPHONE DBH 005', '900-1200', 'Headphones', '_BLUETOOTH HEADPHONE  DBH-005_.jpg', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(34, 'BLUETOOTH HEADPHONE DBH 006', '900-1200', 'Headphone', '_BLUETOOTH HEADPHONE  DBH-006_.jpg', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(35, 'BLUETOOTH HEADPHONE DBH-011', '1200-1500', 'Headphones', '_BLUETOOTH HEADPHONE  DBH-011_.webp', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(36, 'DIGITEK 10W DPWC Fast Wireless Charger 10W R', '801-1100', 'Wireless Charger', '_DIGITEK 10W DPWC Fast Wireless Charger 10W R _.jpg', 2, 11, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(37, 'Zoook BASS X1000 (RED/BLACK/WHITE/BROWN)', '1100-1440', 'Zoook Bluetooth Headphones Bass X1000', '_BASS X1000 (RED_BLACK_WHITE_BROWN)_.jpg', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(38, 'DIGITEK Fast Wireless Charger 10W RGB Lamp DPWC 10W SL', '1080-1350', 'Wireless Mobile Charger', '_DIGITEK Fast Wireless Charger 10W  RGB Lamp DPWC 10W SL_.jpg', 2, 11, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(39, 'DIGITEK Fast Wireless Charger Desk lamp DPWC 10W ', '1350-1530', 'Desk lamp', '_DIGITEK Fast Wireless Charger Desk lamp  DPWC 10W DL_.jpg', 2, 18, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(40, 'DIGITEK PAD 10WDPMC 10W WIRELESS CHARGING', '900-1170', 'Material: Plastic case and Silicone', '_DIGITEK PAD 10W DPMC-10W WIRELESS CHARGING_.png', 2, 11, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(41, 'DIGITEK SUPER BASS BLUETOOTH SPEAKER', '800-1000', 'Compact Palm Sized 6 Watt Deep Bass Bluetooth Speaker. Waterproof: IPX5 rated housing splash proof. Easy Connect to Smartphones, Tablets, Laptops etc via Bluetooth.', '_DIGITEK SUPER BASS BLUETOOTH SPEAKER  DBS-008_.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(42, 'PORTRONICS CHARGE ROLL 2000 mAh', '450-550', 'Smart , Powerful , Slim Battery Bank. Available in Black & Blue Colors', '_PORTRONICS  CHARGE ROLL  2000 MAH_.webp', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(43, 'PORTRONICS KONNECT AUX CABLE', '175-275', 'PREMIUM 2 MTR AUX CABLE WITH 24K GOLD PLATED CONNECTORS. FLEXIBLE, DURABLE & LEAST LOSS OF SIGNAL.AVAILABLE IN 3 COLORS-GRAY, GOLD & SILVER', '_PORTRONICS   KONNECT   AUX CABLE_.jpg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(44, 'PORTRONICS SOUND WALLET', '1000-1350', 'Portable Bluetooth Speaker with AUX .Supports Bluetooth Hands Free, Sleek and Stylish Metal Design. Gold and Gray color', '_PORTRONICS   SOUND  WALLET_.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(45, 'PORTRONICS TOUCH X WIRELESS MOBILE CHARGER', '950-1200', 'PORTRONICS TOUCH X WIRELESS MOBILE CHARGER. WIRELESSLY CHARGE QI ENABLED MOBILE PHONES . DC 5 VOLTS 2 AMPS. OVER VOLTAGE, OVER CURRENT, SHORT CIRCUIT & OVER TEMPERATURE PROTECTION', '_PORTRONICS   TOUCH X  WIRELESS MOBILE CHARGER_.jpg', 2, 11, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(46, 'STEREO PHONE WITH MIC DE-018', '200-275', 'Earphones', '_STEREOPHONE WITH MIC  DE-018_.jpg', 2, 7, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(47, 'STEREO PHONE WITH MIC DE-019', '200-300', 'Earphones', '_STEREOPHONE WITH MIC  DE-019_.jpg', 2, 7, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(48, 'SUPER BASS BLUETOOTH SPEAKER DBS-009', '1500-1800', 'Speaker: 52mm, 10Wx1Bluetooth 5.0 + EDR, easy connect to Bluetooth Device. Operating Distance > 10 Meters (30 Feet)Frequency Response: 150Hz~18 KHz Functions: SNR: >83dB', '_SUPER BASS BLUETOOTH SPEAKER DBS-009_.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(49, 'SUPER BASS BLUETOOTH SPEAKER DBS-021', '700-900', 'Compact mini bluetooth speaker with 5w output. Supports bluetooth, TF Card, Line-In, USB and built_x0002_in radio. Easy to connect to Smartphones, iPads, iPods and other MP3 and MP4 players.', '_SUPER BASS BLUETOOTH SPEAKER DBS-021_.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(50, 'Ubon BT - 3519 HIPPO SERIES NECKBANDS', '699-899', 'Wireless Calling Control & Music. Tangle free - Round Cable Design. Headset with Built in mic. Easy to Operate. Built in Rechargeable battery', '_Ubon  __BT - 3519 HIPPO SERIES__NECKBANDS_.jpg', 2, 4, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(51, 'Ubon BT - 3516 SPORTS WIRELESS EARPHONES', '699-899', 'Wireless Calling Control &Music. Tangle free - Round Cable Design. Headset with Built in mic. Easy to Operate. Built in Rechargeable battery', '_Ubon  BT - 3516 SPORTS WIRELESS EARPHONES_.jpg', 2, 7, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(52, 'Ubon BT - 3518 SPORTS WIRELESS EARPHONES', '500-600', 'Wireless Calling Control & Music. Tangle free - Round Cable Design. Headset with Built in mic. Easy to Operate.', '_Ubon  BT - 3518 SPORTS WIRELESS EARPHONES_.jpg', 2, 7, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(53, 'Ubon BT - 3551SPORTS WIRELESS EARPHONES', '1100-1300', 'Wireless Calling Control & Music Tangle free - Round Cable Design. Headset with Built in mic. Easy to Operate. Built in Rechargeable battery', '_Ubon  BT - 3551 SPORTS WIRELESS EARPHONES_.webp', 2, 7, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(54, 'Ubon BT 5730 SPORTSERIES NECKBANDS', '1600-1890', 'Wireless Calling Control & Music. Tangle free - Round Cable Design. Headset with Built in mic. Easy to Operate. Built in Rechargeable battery', '_Ubon BT - 5730 SPORT SERIES NECKBANDS_.jpg', 2, 4, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(55, 'Ubon BT 5514 DRIFT SPEAKER', '699-799', 'TF Card Play USB input Bluetooth FM 6 hours backup', '_Ubon BT 5514 DRIFT SPEAKER_.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(56, 'Ubon BT 5660FEATHER LIGHTSERIES Headphone', '1200-1400', 'Aux connectivity Volume control FM Radio Calling Function', '_Ubon  BT 5660 FEATHER LIGHT SERIES Headphone_.webp', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(57, 'Ubon  BT 5670 RUN FREE Headphone', '1600-1800', 'Aux connectivity, wireless calls & music TF Card play, FM Radio', '_Ubon  BT 5670 RUN FREE Headphone_.webp', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(58, 'Ubon BT 5680 RICH BASS Headphone', '1500-1800', 'Aux connectivity, Volume control, Calling Function', '_Ubon  BT 5680 RICH BASS Headphone_.jpg', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(59, 'Ubon BT 5745RUGGED SERIES Headphone', '1700-2000', 'Aux connectivity TF card slot, Volume control Mode button, FM Radio, Calling Function', '_Ubon  BT 5745 RUGGED SERIES Headphone_.jpg', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(60, 'Ubon BT 5750 BASS GURU SERIES Headphone', '1500-1800', 'Aux connectivity wireless calls & music TF Card play FM Radio', '_Ubon  BT 5750 BASS GURU SERIES Headphone_.jpg', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(61, 'Ubon BT- 3531 SPORTS WIRELESS EARPHONES', '500-700', 'Wireless Calling Control & Music. Tangle free - Round Cable Design, Headset with Built in mic. Easy to Operate. Built in Rechargeable battery.', '_Ubon BT- 3531  SPORTS WIRELESS EARPHONES_.webp', 2, 7, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(62, 'Ubon GBT 1270 PUREBASS SOUND Wired Headphone', '799-999', 'Headphones', '_Ubon  GBT 1270 PURE BASS SOUND Wired Headphone_.webp', 2, 34, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(63, 'Ubon GBT 50 A WATERPROOF & SHOCKPROOOF SPEAKER', '1350-1650', 'TF Card Play, Aux Input, Bluetooth Calling, Waterproof & Shockproof. FM Radio Control Panel, Hanging Clip', '_Ubon GBT 50 A WATERPRO OF & SHOCKPRO OOF SPEAKER_.webp', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(64, 'Ubon GBT270 mick', '1350-1500', 'Wireless Karaoke Speaker Frequency Response 50Hz. Material Plastic. Battery Capacity 5 Hours', '_Ubon GBT270 mick.png', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(65, 'Ubon GH 1370BIG DADDY BASS Wired Headphone', '700-900', 'Wired Headphone', '_Ubon  GH 1370 BIG DADDY BASS Wired Headphone_.jpg', 2, 34, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(66, 'Ubon HP 1605 CURVING TEXTURE Wired Headphone', '801-999', 'Wired Headphone', '_Ubon  HP 1605 CURVING TEXTURE Wired Headphone_.jpg', 2, 34, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(67, 'Ubon  HP 210(MP3) HP220(MP3) HP222(Champ) HP230(Universal)', '900-1200', 'Frequency Response: 20kHz Driver unit: 40 mm', '_Ubon  HP 210(MP3) HP220(MP3) HP222(Champ) HP230(Universal )_.png', 2, 34, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(68, 'Ubon HP 60 ECONOMY SERIES Headphone', '900-1350', 'Aux connectivity. Mode button. FM Radio. Calling Function', '_Ubon  HP 60 ECONOMY SERIES Headphone_.jpg', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(69, 'Ubon HP45 BIGDADDY BASS Headphone', '1800-2100', 'Aux connectivity TF card slot. Volume control Mode button. FM Radio. Calling Function', '_Ubon  HP45 BIG DADDY BASS Headphone_.jpg', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(70, 'Ubon HP50 MEGABASS Headphone', '1300-1620', 'Aux connectivity TF card slot, Volume control Mode button FM Radio, Calling Function', '_Ubon  HP50 MEGA BASS Headphone_.webp', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(71, 'Ubon  HP800 WITH ANC Headphone', '1800-2250', '1 year warranty. Aux connectivity wireless calls & music', '_Ubon  HP800 WITH ANC Headphone_.webp', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(72, 'Ubon  PB 10025 10000 mAh World Smallest Power Bank', '1500-1800', 'Rubber Finishing. Pocket Size. Fast Charging For Tablet & Smart Phones 2 USB Port V8 and TYPE C charging input', '_Ubon  PB 10025 10000mAh World Smallest Power Bank_.jpg', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(73, 'Ubon  PB 10046 10000 mAh', '1500-1800', '3 USB Port. LED Light. Intelligent Protection. Fast Charging', '_Ubon  PB 10046 10000mAh_.jpg', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(74, 'Ubon PB 10111 TIGER POWER 5000 mAh', '1350-1620', '2 USB Port. LED TOURCH. Intelligent Protection. Fast Charging', '_Ubon PB 10111 TIGER POWER 5000mAh _.webp', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(75, 'Ubon PB 10999 THRILL POWER HOUSE', '1450-1750', 'Polymer Battery. 2 USB Port. LED Light. Intelligent Protection. Fast Charging', '_Ubon  PB 10999 THRILL POWER HOUSE_.webp', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(76, 'Ubon  PB 4025 POWER SLIM', '700-900', '1 USB Port. LED Light. Intelligent Protection. Fast Charging', '_Ubon  PB 4025 POWER SLIM_.png', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(77, 'Ubon PB 5010 5000mAh', '900-1260', '1 USB Port. LED Light. Intelligent Protection. Fast Charging', '_Ubon PB 5010 5000mAh POWER BAR _.jpg', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(78, 'Ubon  PB 10010 QI PARADISE', '2000-2400', 'Wireless Charging. Polymer Battery. 2 USB Port. LED Light. Intelligent Protection. Fast Charging', '_Ubon  PB10010 QI PARADISE_.jpg', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(79, 'Ubon  PB1002010000 mAh', '900-1100', 'Polymer Bettery. 2 USB Port. LED Light. Intelligent Protection. Fast Charging', '_Ubon  PB10020 10000mAh_.jpg', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(80, 'Ubon PB10055 POCKET POWER', '1400-1710', 'Pocket Size. Fast Charging For Tablet & Smart Phones. 3 USB Port V8 and TYPE C charging input', '_Ubon  PB10055 POCKET POWER_.jpg', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(81, 'Ubon  PB10070 FIRST DUAL SIDE WIRELESS POWER BANK', '2400-2700', 'Dual side Wireless Charging. Polymer Battery. 2 USB Port. LED Light Intelligent Protection. Fast Charging', '_Ubon  PB10070 INDIA\'S FIRST DUAL SIDE WIRELESS POWER BANK_.webp', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(82, 'Ubon PB80158800 mAh POWER SLICE', '1800-2200', 'Wireless Charging. Polymer Battery. 2 USB Port. LED Light. Intelligent Protection. Fast Charging', '_Ubon  PB8015 8800mAh POWER SLICE_.jpg', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(83, 'Ubon SP 135 SELFIESPEAKER', '1800-2100', 'Bluetooth Selfistick. Powerbank. BT speaker. Torch. Mobile Holder', '_Ubon SP 135 SELFIE SPEAKER _.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(84, 'Ubon  SP 15 ASWANKY BASS Speaker', '900-1200', 'TF Card Play. Aux Input. USB input. Bluetooth. FM Radio', '_Ubon  SP 15A SWANKY BASS Speaker_.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(85, 'Ubon SP 6550 J3 SPEAKER', '1500-1800', 'TF Card Play. Aux Input. USB input. Bluetooth. FM Radio. 4 hours backup', '_Ubon SP 6550 J3 SPEAKER _.webp', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(86, 'Ubon  SP20A POSH SERIES Speaker', '1000-1250', 'TF Card Play, Aux Input, USB input, Bluetooth, FM Radio', '_Ubon  SP20A POSH SERIES Speaker_.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(87, 'Ubon PB 4015 POWER BAR', '800-1100', '1 USB Port. LED Light. Intelligent Protection. Fast Charging', '_UbonPB 4015 POWER BAR _.png', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(88, '3-in-1 Charging Cable (Lanyard) Lan-C', '100-126', 'Black, White, Blue', '_UG-GC13 Black, White,  Blue _.jpg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(89, '2-in-1 Charging Cable (Keychain) Kiky', '200-270', 'White', '_Urban gear 2-in-1 Charging  Cable (Keychain) Kiky_.jpg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(90, 'Charging Cable with Carabner Clip N Chrg', '225-270', 'Black, White', '_Urban gear 3-in-1 Charging  Cable with  Carabner Clip N Chrg_.jpg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(92, 'Charging Retracting Cable Yoyo Pro', '300-400', 'Black Cable, Blue Cable', '_Urban gear 3-in-1 Charging  Retracting Cable Yoyo M_.jpg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(93, '5-in-1 Multifunction Desk Lamp', '650-850', 'White', '_Urban gear 5-in-1  Multifunction  Desk Lamp_.jpg', 2, 18, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(94, 'Bluetooth Neckband Loop 2.0', '900-1200', 'Black', '_Urban gear Bluetooth  Neckband Loop 2.0_.jpg', 2, 4, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(95, 'Bluetooth Speaker & Mirrored Alarm Clock', '900-1200', 'Black', '_Urban gear Bluetooth  Speaker &  Mirrored Alarm  Clock Clocky_.jpg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(96, 'Bluetooth speakers Mist 2.0', '555-666', 'Black, Blue', '_Urban gear Bluetooth  speakers Mist 2.0_.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(98, 'Rechargeable COB Led Flash Light Zoom Pro', '450-550', 'Black', '_Urban gear Rechargeable  COB Led Flash  Light Zoom Pro_.jpg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(99, 'Slim Powerbank 5000mAhPalm 5 (Display)', '550-700', 'Black, White', '_Urban gear Slim Powerbank  5000mAh Palm 5  (Display)_.jpg', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(100, 'Slim Powerbank 5000mAh Palm 5', '450-550', 'White', '_Urban gear Slim Powerbank  5000mAh Palm 5_.jpg', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(101, 'Stereo Bluetooth Headset Blaze', '720-900', 'Silver, Blue, Red', '_Urban gear Stereo Bluetooth  Headset Blaze_.jpg', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(102, 'Universal Travel Adapter with case', '200-275', 'Black, White - Universal Travel Adapter with case', '_Urban gear Universal Travel  Adapter with case_.jpg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(103, 'USB Travel Adapter with Case', '450-550', 'White', '_Urban gear USB Travel  Adapter with  Case _.jpg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(104, 'Waterproof Bluetooth Speaker Aquabeats', '750-900', 'Gold, Silver', '_Urban gear Waterproof  Bluetooth  Speaker Aquabeats_.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(105, 'Worldwide Travel Adapter with 2usb (2100ma) & case', '450-600', 'Black, White', '_Worldwide Travel  Adapter with  2usb (2100ma) &  case_.jpg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(106, 'XECH Asymmetrix  S Desk Lamp', '2200-2610', 'Ease of watching movies with mobile holder. Aesthetic design. Micro USB input. Touch buttons for volume control', '_XECH Asymmetrix  S Desk Lamp  _.webp', 2, 18, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(107, 'ZEBRONICS 2100 HMV MULTIMEDIA HEADPHONE', '900-1100', 'ZEB-2100HMV headphone is a perfect companion for your movie nights. This wired headphone has padded earcups and comes with a 3mm jack along with a mic. It is compatible to mobile/tablet and has a volume control option for ease of access.', '_ZEBRONICS 2100 HMV MULTIMEDIA HEADPHONE _.png', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(108, 'ZEBRONICS COLT 3 MULTIMEDIA HEADPHONE', '900-1200', 'Colt 3 is a headphones which comes with a 3.5MM jack. The headphone features a 30mm driver, it comes with padded earcups, adjustable mic and volume control button. This headphone is compatible with a mobile/tab and with a 3.5mm jack.', '_ZEBRONICS COLT 3 MULTIMEDIA HEADPHONE _.jpg', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(109, 'Zebronics  ESTEEM ( 6 IN 1 ) POWER BANK CUM BLUETOOTH SPEAKER', '900-1260', 'This devices multi-functionality is boastful with it is 6 in one product which has wireless audio support, speaker, an LED torch, FM radio, Micro SD, a 2000 mAh capacity power bank.', '_Zebronics  ESTEEM ( 6 IN 1 ) POWER BANK CUM BLUETOOTH SPEAKER _.jpg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(110, 'ZEBRONICS NEPTUNE BLUETOOTH HEADPHONE', '2000-2500', 'Neptune is a stylish premium headphone that offers complete wireless experience with a high end chipset that makes the sound even better, rhythmic LED lights and up to 10 hours of playback. It has extra padded cushions and comes with a mic, call function and media volume control button.', '_ZEBRONICS NEPTUNE BLUETOOTH HEADPHONE _.jpg', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(111, 'ZEBRONICS PLEASANT MULTIMEDIA  HEADPHONE', '800-1000', 'Pleasant is a sleek looking headphone which comes with 3.5MM jack. The headphone features a 30MM driver, mic along with a volume control button. The headphone is known for its deep base.', '_ZEBRONICS PLEASANT MULTIMEDIA  HEADPHONE _.webp', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(112, 'ZEBRONICS STORM MULTIMEDIA HEADPHONE', '500-750', 'Storm is stylish over the head headphone that comes with an inbuilt mic for calls. It has a 3.5 mm jack and is compatible with Phone/Tablet. If you love bass, this would be the right fit with its monstrous bass and extra soft cushion cups for long usage. It has a 1.15 Meter long cable with a button to take/disconnect calls. It comes in blue and black colors.', '_ZEBRONICS STORM MULTIMEDIA HEADPHONE _.jpg', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(113, 'Zebronics ZEB-UFO', '2400-2950', 'Futuristic looking portable BT speaker with cordless handset helps you to Take / Make Calls, Stream music via BT, Playback via USB, AUX, Micro SD.', '_Zebronics ZEB-UFO _.webp', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(114, 'Zoook-ZM-ROCKER-WBD / ZK-ZMROK-WBD-BR', '650-810', 'Zoook Earphone with Mic ZM-Rocker Wraps. Colour: Black and Brown', '_Zoook Earphone with Mic ZM-Rocker Wraps Colour_ Black and Brown_.webp', 2, 7, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(115, 'pTron Dynamo Evo', '2000-2250', 'Input: Micro USB & Type-C. Output: Dual 2.1A', '516ICAwMLWL._SL1100_.jpg', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(116, 'ACC-29 QC 3.0 Dual Port Car Charger (Black)', '500-600', 'ACC-29 QC 3.0 Dual Port Car Charger (Black)', 'ACC-29 QC 3.0 Dual Port Car Charger (Black).jpg', 2, 36, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(117, 'Ambrane 3A Fast Charging Micro USB', '175-275', 'Ambrane 3A Fast Charging Micro USB Unbreakable Braided Cable, Quick Charge 2.0/3.0, 480 Mbps Data Transmission, Durable 1.5m Length', 'Ambrane 3A Fast Charging Micro USB .webp', 2, 12, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(118, 'Ambrane ACC-11-QC Dual Port 5.4A Car Charger', '1260-1530', 'Ambrane ACC-11-QC Dual Port 5.4A Car Charger (Qualcomm Certified) with Quick Charge 3.0', 'Ambrane ACC-11-QC Dual Port 5.4A Car Charger .jpg', 2, 36, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(119, 'Ambrane ACC-56 Car Charger', '350-450', 'Ambrane ACC-56 Car Charger With Rapid Charging of 12 Watt / 2.4A via Dual USB Ports (Black)', 'Ambrane ACC-56 Car Charger.jpg', 2, 36, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(120, 'Ambrane ACC-74 Car Charger', '600-800', 'Ambrane ACC-74 Car Charger with Fast Charging of 12 Watt / 2.4A via Dual USB Ports (Black & Silver)', 'Ambrane ACC-74 Car Charger.webp', 2, 36, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(121, 'Ambrane Aura-S Cordless Rechargeable Trimmer', '1050-1300', 'Ambrane Aura-S Cordless Rechargeable Trimmer with 20 Length Settings (Black)', 'Ambrane Aura-S Cordless Rechargeable Trimmer.webp', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(122, 'Ambrane Aura-X Cordless Rechargeable Trimmer', '900-1100', 'Ambrane Aura-X Cordless Rechargeable Trimmer with 60 Mins Cordless Experience and One Big Adjustable Comb (Black)', 'Ambrane Aura-X Cordless Rechargeable Trimmer.webp', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(123, 'Ambrane AWC-29 Wall Charger', '450-550', 'Ambrane AWC-29 Wall Charger with 12 Watt / 2.4A Fast Charging via Dual USB Ports', 'Ambrane AWC-29 Wall Charger.jpg', 2, 10, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(124, 'Ambrane AWC-38 Wall Charger', '400-495', 'Ambrane AWC-38 Wall Charger with 10.5 Watt / 2.1A Fast Charging via USB Port with LED Indicator', 'Ambrane AWC-38 Wall Charger.jpg', 2, 10, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(125, 'Ambrane AWC-65 Single Port Wall Charger', '300-375', 'Ambrane AWC-65 Single Port Wall Charger with 10.5 Watt / 2.1A Swift Charging via USB Port', 'Ambrane AWC-65 Single Port Wall Charger .webp', 2, 10, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(126, 'Ambrane Bassband Active Bluetooth Earphones', '1100-1440', 'Bluetooth Version: V5.0. ', 'Ambrane Bassband Active Bluetooth Earphones.jpg', 2, 4, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(127, 'Ambrane Bassband Beat Wireless Bluetooth Earphones', '900-1200', 'Ambrane Bassband Beat Wireless Bluetooth Earphones with Boosted Sound, Lightweight Design, Magnetic Clasps and IPX4 Water & Sweat Resistant', 'Ambrane Bassband Beat Wireless Bluetooth Earphones.jpg', 2, 4, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(128, 'Ambrane Bassband Beat Wireless Bluetooth Earphones', '1260-1530', 'Ambrane Bassband Wireless Bluetooth Earphones with Long-lasting Battery, Google Assistant/Siri, Magnetic Clasps and Sweatproof Use', 'Ambrane Bassband Beat Wireless Bluetooth Earphones.jpg', 2, 4, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(129, 'Ambrane Bassband Hyper Wireless Bluetooth Earphones', '1260-1530', 'Bluetooth Version: V5.0', 'Ambrane Bassband Hyper Wireless Bluetooth Earphones.jpg', 2, 4, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(130, 'Ambrane Bassband Wireless Bluetooth Earphones', '1260-1530', 'Ambrane Bassband Wireless Bluetooth Earphones with Long-lasting Battery, Google Assistant/Siri, Magnetic Clasps and Sweatproof Us (Yellow / Black)', 'Ambrane Bassband Wireless Bluetooth Earphones.jpg', 2, 4, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(131, 'Ambrane BT-47 5 Watt Portable Bluetooth Speaker', '1260-1530', 'Ambrane BT-47 5 Watt Portable Bluetooth Speaker with Inbuilt Mic, SD Card & AUX-In Ports and IPX6 Water Resistant Feature', 'Ambrane BT-47 5 Watt Portable Bluetooth Speaker.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(132, 'Ambrane BT-83 10 Watt Portable Bluetooth Speaker', '2100-2400', 'Ambrane BT-83 10 Watt Portable Bluetooth Speaker with High Bass, Inbuilt Mic, SD Card & AUX-In Port and IPX6 Waterproof Feature', 'Ambrane BT-83 10 Watt Portable Bluetooth Speaker .webp', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(133, 'Ambrane Capsule 10K 10000 mAh Li-Polymer Powerbank', '900-1200', 'Ambrane Capsule 10K 10000 mAh Li-Polymer Powerbank with 12 Watt / 2.4A Smart Charging', 'Ambrane Capsule 10K 10000 mAh Li-Polymer Powerbank .jpg', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(134, 'Ambrane Dots 11 True Wireless Earphones', '2250-2610', 'Ambrane Dots 11 True Wireless Earphones with Premium Sound Quality, Smart Touch Control and IPX4 Sweat & Splashproof Resistant', 'Ambrane Dots 11 True Wireless Earphones.jpg', 2, 9, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(135, 'Ambrane Dots 38 True Wireless Earphones', '1800-2100', 'Ambrane Dots 38 True Wireless Earphones with Hi-Fi Sound Quality, Ultra-easy Touch Operations and IPX4 Sweat & Splashproof Resistant', 'Ambrane Dots 38 True Wireless Earphones.png', 2, 9, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(136, 'Ambrane Dots Asta True Wireless Earphones', '1800-2100', 'Bluetooth V5.1', 'Ambrane Dots Asta True Wireless Earphones.jpg', 2, 9, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(137, 'Ambrane Dots Hype True Wireless Earphones', '2100-2400', 'BT Version: V5.2', 'Ambrane Dots Hype True Wireless Earphones.jpg', 2, 9, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(138, 'Ambrane Dots Muse True Wireless Earphones', '1350-1600', 'BT Version: V5.1', 'Ambrane Dots Muse True Wireless Earphones.webp', 2, 9, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(139, 'Ambrane Dots Tune True Wireless Earphones', '1350-1600', 'Bluetooth V5.1', 'Ambrane Dots Tune True Wireless Earphones.webp', 2, 9, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(140, 'Ambrane EP-38 Wired Earphones', '270-370', 'Ambrane EP-38 Wired Earphones with Metal Connectors, In-Line Mic and Tangle free Design', 'Ambrane EP-38 Wired Earphones .jpg', 2, 7, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(141, 'Ambrane EP-56 Wired Earphones', '150-250', 'Ambrane EP-56 Wired Earphones with Powerful Bass, In-Line Mic and Extra Soft Eartips', 'Ambrane EP-56 Wired Earphones.jpg', 2, 7, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(142, 'Ambrane Fireboom 20W True Wireless Bluetooth Speaker', '2900-3300', 'Ambrane Fireboom 20W True Wireless Bluetooth Speaker with 2-in-1 detachable design', 'Ambrane Fireboom 20W True Wireless Bluetooth Speaker.webp', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(143, 'Ambrane FitShot Grip Smart Watch', '3200-3550', 'Ambrane FitShot Grip Smart Watch', 'Ambrane FitShot Grip Smart Watch.webp', 2, 14, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(144, 'Ambrane FitShot Loop Smart Watch', '3000-3300', 'Ambrane FitShot Loop Smart Watch', 'Ambrane FitShot Loop Smart Watch.png', 2, 14, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(145, 'Ambrane FitShot Sphere Smart Watch', '3300-3600', 'Ambrane FitShot Sphere Smart Watch', 'Ambrane FitShot Sphere Smart Watch.webp', 2, 14, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(146, 'Ambrane FitShot Zest Smart Watch', '2999-3200', 'Ambrane FitShot Zest Smart Watch', 'Ambrane FitShot Zest Smart Watch.webp', 2, 14, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(147, 'Ambrane Melody Pro Wireless Bluetooth Earphones', '900-1200', 'Ambrane Melody Pro Wireless Bluetooth Earphones', 'Ambrane Melody Pro Wireless Bluetooth Earphones.jpg', 2, 4, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(148, 'Ambrane NeoBuds 11 True Wireless Earphones', '1800-2200', 'Ambrane NeoBuds 11 True Wireless Earphones with Authentic Sound, One-Touch Control and IPX4 Splash & Sweatproof Resistant', 'Ambrane NeoBuds 11 True Wireless Earphones.webp', 2, 9, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(149, 'Ambrane Neobuds 29 True Wireless Earphones', '1620-1800', 'Bluetooth Version: V5.0', 'Ambrane Neobuds 29 True Wireless Earphones .jpg', 2, 9, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(151, 'Ambrane Neobuds Alpha True Wireless Earphones', '1600-1900', 'BT Version: V5.0. ', 'Ambrane Neobuds Alpha True Wireless Earphones .jpg', 2, 9, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(152, 'Ambrane PowerLit Pro 10000 mAh Li-Polymer Powerbank', '1300-1600', 'Ambrane PowerLit Pro 10000 mAh Li-Polymer Powerbank with Swift Charging of 22.5 Watt via USB Port', 'Ambrane PowerLit Pro 10000 mAh Li-Polymer Powerbank.jpg', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(153, 'Ambrane PP-20 Pro 20000 mAh Li-Polymer Powerbank', '1500-1800', 'Ambrane PP-20 Pro 20000 mAh Li-Polymer Powerbank with Quick Charge 3.0 and 20 Watt PD Two-Way Fast Charging Technology via Type C Port', 'Ambrane PP-20 Pro 20000 mAh Li-Polymer Powerbank.jpg', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(154, 'Ambrane PP-200 10000 mAh Li-Polymer Powerbank', '1350-1620', 'Ambrane PP-200 10000 mAh Li-Polymer Powerbank with 20 Watt (PD) Two-Way Fast Charging Technology via Type C Port', 'Ambrane PP-200 10000 mAh Li-Polymer Powerbank.png', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(155, 'Ambrane PP-501 5000 mAh Li-Polymer Powerbank', '700-810', 'Ambrane PP-501 5000 mAh Li-Polymer Powerbank with 12 Watt / 2.4A Charging Via Dual USB Ports', 'Ambrane PP-501 5000 mAh Li-Polymer Powerbank.jpg', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(156, 'Ambrane Stringz 29 Wired Earphones', '300-400', 'Ambrane Stringz 29 Wired Earphones with Powerful Bass, Ear Hook Design, In-Line Mic and Volume Control Slider', 'Ambrane Stringz 29 Wired Earphones.jpg', 2, 7, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(157, 'Ambrane Stringz 47 Wired Earphones', '500-650', 'Ambrane Stringz 47 Wired Earphones with High Bass Audio Quality, In-Line Mic and Single Button & Volume Slider Controller', '_Ambrane Stringz 47 Wired Earphones.jpg', 2, 7, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(158, 'Ambrane Stringz 56 Wired Earphones', '500-650', 'Ambrane Stringz 56 Wired Earphones with Thrilling Bass, Tangle-free Cord, In-Line Mic and Single Button & Volume Slider Controller', 'Ambrane Stringz 56 Wired Earphones.webp', 2, 7, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(159, 'Ambrane Stringz 65 Wired Earphones', '325-400', 'Ambrane Stringz 65 Wired Earphones with Dope Bass, Long Cord, In-Line Mic and Single Button Operations', 'Ambrane Stringz 65 Wired Earphones with Dope Bass, Long Cord, In-Line Mic and Single Button Operations .jpg', 2, 7, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(160, 'Ambrane Stylo 10k 10000 mAh Li-Polymer Power Bank', '900-1200', 'Ambrane Stylo 10k 10000 mAh Li-Polymer Power Bank With 20 Watt (PD) Two-Way Fast Charging via Type C Port and 3A Fast Charging via USB Ports', 'Ambrane Stylo 10k 10000 mAh Li-Polymer Power Bank.jpg', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(161, 'Ambrane Stylo 20K 20000 mAh Li-Polymer Power Bank', '1100-1350', 'Ambrane Stylo 20K 20000 mAh Li-Polymer Power Bank with 20 Watt (PD) Two-Way Fast Charging via Type C Port and 3A Fast Charging via USB Ports', 'Ambrane Stylo 20K 20000 mAh Li-Polymer Power Bank .jpg', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(162, 'Ambrane Stylo Pro 27000 mAh Li-Polymer Powerbank', '2000-2400', 'Ambrane Stylo Pro 27000 mAh Li-Polymer Powerbank with 20 Watt PD Fast Charging Output via Type C Port and Charge Triple device at Same Time Power Bank', 'Ambrane Stylo Pro 27000 mAh Li-Polymer Powerbank .jpg', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(163, 'Ambrane travel Kit ATK-01', '1099-1299', '1 x Single Port Wall Charger. 1 x Dual Port Car Charger. 1 x Micro USB Cable. 1 x Wired Earphone', 'Ambrane travel Kit ATK-01.jpg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(164, 'Ambrane Travel Kit ATK-03', '1600-1980', '1 x 10000mAh Lithium Polymer Power Bank. 1 x Dual Port Car Charger. 1 x Micro USB Cable. 1 x Wired Earphone', 'Ambrane Travel Kit ATK-03.jpg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(165, 'Ambrane Unbreakable 3A Fast Charging Braided Micro USB Cable', '170-250', 'Ambrane Unbreakable 3A Fast Charging Braided Micro USB Cable for Android Devices: 1 Meter (RC M 10)', 'Ambrane Unbreakable 3A Fast Charging Braided Micro USB Cable.jpg', 2, 12, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(166, 'Ambrane WC-38 Wireless Charger', '900-1260', 'Ambrane WC-38 Wireless Charger with Fast Charging of 10 Watt / 2A with all Qi Enabled Devices and Sleek & LIghtweight Design', 'Ambrane WC-38 Wireless Charger .jpg', 2, 11, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(167, 'Ambrane WiFi Smart Plug 10A', '600-810', 'Ambrane WiFi Smart Plug 10A - Control Your Devices from Anywhere, No Hub Required, Works with Amazon Alexa and Google Assistant (ASP-10, White)', 'Ambrane WiFi Smart Plug 10A .jpg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(168, 'Ambrane WiFi Smart Plug 16A', '900-1260', 'Ambrane WiFi Smart Plug 16A - Control Your Devices from Anywhere, No Hub Required, Works with Amazon Alexa and Google Assistant (ASP-16, White)', 'Ambrane WiFi Smart Plug 16A.jpg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(169, 'Ambrane Travel Kit ATK-02', '1260-1530', '1 x 5000mAh Lithium Polymer Power Bank. 1 x Dual Port Car Charger. 1 x Micro USB Cable. 1 x Wired Earphone', 'ambrane-travel-kit-atk-02-blue--500x500.jpg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(170, 'Artis 30 Watts USB Type C Laptop Adapter/Charger', '2000-2520', 'The Artis 30 Watt Compatible Laptop Adapter helps to charge your Macbook Pro without compromising on its performance. It has a low ripple operating noise and comes with short circuit protection. ', 'Artis 30 Watts USB Type C Laptop Adapter_Charger.jpg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(171, 'Artis E410M in-Ear Headphones with Mic(Black)', '450-594', 'The Artis E410M earphones Soft Touch Plastic, 1.2 m Cord Length and 3.5mm Audio Jack, Frequency : 20-20KHz', 'Artis E410M in-Ear Headphones with Mic(Black).jpg', 2, 7, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(172, 'BE310M Wireless Bluetooth Neckband Earphone (Black)', '900-1350', 'Artis BE310M is the latest Qualcomm CSR 5.0 Bluetooth earphone from the house of Artis. It provides up to 8 hours of playback time on a single charge, Fast charging capability & 100 hours of standby time. It is IPx4 Water Resistance Certified to combat sweat and moisture during strenuous physical activities.', 'BE310M Wireless Bluetooth Neckband Earphone (Black).jpg', 2, 4, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(173, 'BE810M TWS Earbuds', '3000-3400', 'The Artis 810M earbuds are equipped with latest wireless technology and chip-set which provide superior audio quality and lets you experience crystal and powerful sound without anything to hold you back.', 'BE810M TWS Earbuds.jpg', 2, 9, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(174, 'BE910M Sports Bluetooth Wireless Neckband Earphone (Black)', '1620-1980', 'The Artis BE910M is light yet sturdy providing supreme comfort and sharp sound. The Artis BE910M is a powerhouse providing upto 10 hours of playback on a single charge. It is IPX5 certified for water resistance and the 10mm sound driver helps to produce deep thumping bass.', 'BE910M Sports Bluetooth Wireless Neckband Earphone (Black).webp', 2, 4, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(175, 'Swiss military Bluetooth Speaker With Digital Alarm Clock', '1710-2070', 'It has the functions of clock display with complementary mirror. Dual alarm clock function (Optional functions of setting Alarm 2 along with Alarm 1 settings). The alarm clock volume can be turned up or down freely.', 'BL22 – Bluetooth Speaker With Digital Alarm Clock.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(176, 'Swiss Military Bluetooth Flame Speaker', '1350-1620', '3 Mode LED Flame Lamp. (Yellow Night Lamp, Fast Dancing Flame Lamp, Slow Dancing FlameLamp). Portable Wireless Bluetooth Speaker. Easy to Carry Handle.', 'BL24 – Swiss Military Bluetooth Flame Speaker.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(177, 'BLUETOOTH EARPHONE DBE-007', '990-1350', 'Bluetooth Version : V 5.0. Output Power : 3mW x 2. Working distance : 10m ( Barrier Free Space). Working Hours : 25 Hours Talking Time. 25 Hours for playing time. Standby time : 180 Hrs. charging Time : 1-2 Hrs. Charging Voltage : DC 5V 110mA. Speaker : 10mm. Sensitivity : 110dB/mW. Impedance : 32 Ohm', 'BLUETOOTH EARPHONE DBE-007.webp', 2, 4, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(178, 'BLUETOOTH EARPHONE DBE-008', '990-1350', 'Magnet Adsorption. Bluetooth Version : V 5.0. Output Power : 3mW x 2 . Working distance : 10m ( Barrier Free Space). Working Hours : 25 Hours Talking Time. 25 Hours for playing time', 'BLUETOOTH EARPHONE DBE-008.jpg', 2, 4, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(179, 'BLUETOOTH EARPHONE DBE-021', '860-1170', 'Secure and Comfortable fit during workouts. Independent audio controls. Noise cancelling. Micro USB charging. Comfort seal tips.', 'BLUETOOTH EARPHONE DBE-021.webp', 2, 4, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(180, 'BLUETOOTH EARPHONE DBE-022', '1100-1350', 'Bluetooth Version : V 5.0. Output Power : 10mW x 2 . Working distance : 10m (Barrier Free Space). Working Hours : 8 Hours Talking Time. 8 Hours for playing time', 'BLUETOOTH EARPHONE DBE-022.jpg', 2, 4, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(181, 'Zoook-UPBEAT', '810-1170', 'Bluetooth Earphone with Mic Up-beat', 'Bluetooth Earphone with Mic Up-beat.webp', 2, 7, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(182, 'boAt 10000 mAh Li-Polymer Power Bank PB08', '1170-1400', 'boAt 10000 mAh Li-Polymer Power Bank PB08 EnergyShroom, 18W Fast Charging with Quick Charge 3.0, Power Delivery, 2 USB A Output, Micro USB Input, 2 Way Type C Ports', 'boAt 10000 mAh Li-Polymer Power Bank PB08 .jpg', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(183, 'boAt1010 Speaker', '3600-4500', 'boAt Stone 1000 14 W Portable Bluetooth Speaker Battery life: 8 hrs. Charging time: 4 hrs', 'boAt 1010 Speaker.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(184, 'boAt 122 Earphone', '600-810', 'boAt Bassheads 122 In-Ear Wired Earphone with Mic (Premium HD Sound, Gun Metal)', 'boAt 122 Earphone.webp', 2, 7, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(185, 'boAt 132 Earphone', '750-999', 'boAt BassHeads 132 Wired in Ear Earphone with Mic (Silver Surfer)', 'boAt 132 Earphone.jpg', 2, 7, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(186, 'boAt 1508 Speaker', '7000-8500', 'boAt Stone 1508 40 Watts Portable Bluetooth Speaker (Water Resistant, Active Black)', 'boAt 1508 Speaker.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(187, 'boAt 193 Speaker', '1530-1800', 'boAt Stone 193 5W Bluetooth Speaker Bluetooth Version 5.0+EDR /Battery Capacity 800 mAh', 'boAt 193 Speaker.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(188, 'boAt 228 Earphone', '500-700', 'boAt BassHeads 225 Wired in Ear Earphone with Mic and Carry Case(Black)', 'boAt 228 Earphone.jpg', 2, 7, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(189, 'boAt 275 Neck band', '1800-2250', 'boAt Rockerz 275 Sports Bluetooth Wireless Earphone with Stereo Sound and Hands Free Mic', 'boAt 275 Neck band.jpg', 2, 4, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(190, 'boAt 350 Speaker', '2070-2340', 'boAt Stone 350 Stereo Sound Bluetooth Speaker', 'boAt 350 Speaker.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(191, 'boAt 410 Headphone', '1800-2250', 'boAt Rockerz 410 Wireless Bluetooth On Ear Headphone with Mic (Black/Red)', 'boAt 410 Headphone .jpg', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(192, 'boAt 450 Headphone', '2250-2520', 'boAt Rockerz 450 Bluetooth Wireless On Ear Headphone with Mic', 'boAt 450 Headphone .jpg', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(193, 'boAt 480 Headphone', '1900-2250', 'boAt Rockerz 480 Bluetooth Headset', 'boAt 480 Headphone.webp', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(194, 'boAt 640 Headphone', '3600-4000', 'boAt Rockerz 640 Wireless On-Ear Headphone', 'boAt 640 headphone.jpg', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(195, 'boAt 910 Headphone', '1710-2100', 'boAt Bassheads 910 Wired Headphone (Black) with Super Extra Bass, In Line Microphone, High Grade Corroison Resisitant Jack', 'boAt 910 Headphone .jpg', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(196, 'boAt 950 Headphone', '1800-2250', 'boAt Bassheads 900 Wired On Ear Headphones with Mic', 'boAt 950 Headphone .webp', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(197, 'boAt A500 Cable', '500-600', 'boAt A500 1.2m USB Type-C to USB-A 2.0 Male Data Cable (Grey)', 'boAt A500 Cable.jpg', 2, 8, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(198, 'boAt Flash Edition Smartwatch', '3900-4320', 'boAt Flash Edition Smartwatch with Activity Tracker,Multiple Sports Modes,Full Touch 1.3 inches Screen,Sleep Monitor,Gesture, Camera & Music Control,IP68 Dust, Sweat & Splash Resistance', 'boAt Flash Edition Smartwatch .jpg', 2, 14, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(199, 'boAt A400 Cable', '500-700', 'boAt A400 USB Type-C to USB-A 2.0 Male Data Cable, 2 Meter', 'boAt TypeC A400.jpg', 2, 8, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(200, 'boAt Xtend Smartwatch', '4230-4770', 'boAt Xtend Smartwatch with Alexa Built-in, 1.69 inch HD Display, Multiple Watch Faces, Stress Monitor, Heart & SpO2 Monitoring, 14 Sports Modes, Sleep Monitor & 5 ATM Water Resistance', 'boAt Xtend Smartwatch.jpg', 2, 14, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(201, 'Boat Storm Smartwatch', '3000-3300', 'Boat Storm Smartwatch With Blood-Oxygen Monitoring Features and 9 Sports Modes', 'boat_storm_smartwatch_small_1603874380855.webp', 2, 14, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(202, 'Bose Home Speaker 499', '34000-38000', 'Bose Home Speaker 500Black, Luxe Silver', 'Bose Home Speaker 499.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(203, 'Bose Noise Cancelling Headphones 699', '30000-33000', 'Bose Noise Cancelling Headphones 700 Black, Luxe Silver', 'Bose Noise Cancelling Headphones 699.jpg', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(204, 'Bose QuietComfort 35 II', '25000-27000', 'Bose QuietComfort 35 II Silver', 'Bose QuietComfort 35 II.jpg', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(205, 'Bose Quietcomfort Earbuds', '22500-24300', 'Bose Quietcomfort Earbuds Black, Soapstone', 'Bose Quietcomfort Earbuds.jpg', 2, 9, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(206, 'Bose Sport Earbuds', '14400-15300', 'Bose Sport Earbuds Black, Baltic Blue, Glacier White', 'Bose Sport Earbuds.jpg', 2, 9, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(207, 'BR200 Bluetooth Stereo Headset', '1800-2100', 'The Artis BR200 is a ultra portable and durable Bluetooth headset providing a premium and enhanced wireless experience. As a stereo headset, it has music playback capabilities and it comes with in ear noise isolation. The BR200 can connect to 2 phones simultaneously.', 'BR200 Bluetooth Stereo Headset.jpg', 2, 16, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(208, 'DIGITEK (DTWS-003)  Earbuds', '1350-1620', 'DIGITEK (DTWS-003) AIRDRUM in-Ear True Wireless Earbuds (TWS), with Premium Deep Bass, Bluetooth 5.0, Upto 4 Hours Playtime, in-Built Mic, and LED Display Charging Case', 'DIGITEK (DTWS-003)  Earbuds .jpg', 2, 9, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(209, 'DIGITEK Alarm Clock Wireless Charger  SY-W0258', '2000-2340', 'Material: ABS. Color: Black', 'DIGITEK Alarm Clock Wireless Charger  SY-W0258 .jpg', 2, 11, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(210, 'DIGITEK DIP - 10400 L  POWER BANK', '1098-1260', 'Battery Type : Li-ion Battery. Capacity : 14000mAh', 'DIGITEK DIP - 10400 L  POWER BANK.jpg', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(211, 'DIGITEK  DIP - 12000 PLB POWER BANK', '1260-1440', 'Battery Type : Li-Polymer Battery. Capacity : 12000 mAh', 'DIGITEK  DIP - 12000 PLB POWER BANK.jpg', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(212, 'DIGITEK  DIP - 13000 BPOWER BANK', '1350-1500', 'Capacity: 13000mAh', 'DIGITEK  DIP - 13000 BPOWER BANK .jpg', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(213, 'DIGITEK  DIP - 6000 PLB POWER BANK', '720-810', 'Battery Type: Li-Polymer. Battery Capacity: 6000 mAh Input: DC 5V 1000mAh. Output: DV 5v 1500mA', 'DIGITEK  DIP - 6000 PLB POWER BANK.webp', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(214, 'DIGITEK SUPER BASS BLUETOOTH SPEAKER DBS-007', '900-1100', 'Plam size with Sporty design. Waterproof IPX6 rated housing. Bulit-in Microphone, support Hands Free Call. Speaker: 52mm 5W x 1', 'DIGITEK SUPER BASS BLUETOOTH SPEAKER DBS-007 .jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(215, 'DIGITEK(DTWS-004) Earbud', '2700-3000', 'DIGITEK(DTWS-004) AIRTUNE In-Ear True Wireless Earbuds (TWS) with Premium Deep Bass, Bluetooth 5.0, Upto 10 Hours Playtime & 200 Hours Standby Time, In-Built Mic, IPX7 Waterproof, And LED Indicators', 'DIGITEK(DTWS-004) Earbud.webp', 2, 9, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(216, 'DIGITEK(DTWS-005) Earbuds', '1260-1620', 'DIGITEK(DTWS-005) AIRTUNE in-Ear True Wireless Earphone (TWS) with Premium Deep Bass, Bluetooth 5.1, Up to 4 Hours Playtime Time, in-Built Mic, and LED Indicators', 'DIGITEK(DTWS-005) Earbuds .jpg', 2, 9, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(217, 'DISNEY HEADPHONES WITH INTEGRATED MIC AND VOLUME CONTROL', '700-810', 'Padded ear cushions and adjustable headband offer comfortable wear. Integrated Volume control and mic for phone conversations.', 'DISNEY HEADPHONES WITH INTEGRATED MIC AND VOLUME CONTROL.jpg', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(218, 'E400M Earphones With Mic (Black)', '550-750', 'The Artis E400M earphones provide exceptional clarity, sharp sound, powerful bass & dynamic stereo output to truly awaken your senses.', 'E400M Earphones With Mic (Black).webp', 2, 7, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(219, 'GATE USB BIOMETRIC MOUSE', '4500-5400', 'USB MOUSE WITH BUILT IN FINGER PRINT SCANNER. USE FOR AUTHENTICATION OF WINDOWS LOGON AND VARIOUS APPLICATION PASSWORD FUNCTION', 'GATE USB BIOMETRIC MOUSE.jpg', 2, 23, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(220, 'IOMEGA 500GB EGO GLOSSY RED COLOR PORTABLE HDD', '6300-7000', 'EXTREMELY PORTABLE AND STYLISH EXTERNAL HDD WITH USB AND FIREWIRE INTERFACE. GLOSSY RED ATTRACTIVE FINISH', 'IOMEGA 500GB EGO GLOSSY RED COLOR PORTABLE HDD.jpg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(221, 'JABRA ELITE 2 EARBUDS', '4700-5500', 'Jabra Elite 2 in Ear Wireless Bluetooth Earbuds. Noise Isolating with 2 Built-in Microphones for Clear Calls, Rich Bass and Customizable', 'JABRA ELITE 2 EARBUDS.jpg', 2, 9, '2022-03-28 08:08:09', '2022-03-28 08:08:09');
INSERT INTO `products` (`id`, `name`, `price`, `description`, `image`, `userId`, `productCategoryId`, `created_at`, `updated_at`) VALUES
(222, 'JABRA ELITE 3 EARBUDS', '5500-6500', 'Jabra Elite 3 in Ear Wireless Bluetooth Earbuds. Noise Isolating with 4 Built-in Microphones for Clear Calls, Rich Bass, Customizable Sound and Mono Mode', 'JABRA ELITE 3 EARBUDS.jpg', 2, 9, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(223, 'JABRA ELITE 75T EARBUDS', '12600-13500', 'Jabra Elite 75t True Wireless Active Noise Cancelling (ANC) Bluetooth Earbuds, Long Battery Life for Calls & Music, Voice Assistant Enabled', 'JABRA ELITE 75T EARBUDS.jpg', 2, 9, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(224, 'JABRA ELITE 85T EARBUDS', '15000-17100', 'Jabra Elite 85t True Wireless Earbuds- Advanced Active Noise Cancellation with Long Battery Life and Powerful Speakers - Wireless Charging Case -', 'JABRA ELITE 85T EARBUDS.jpg', 2, 9, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(225, 'JABRA EVOLVE 30 II USB + STERIO HEADSET', '8100-9900', 'JABRA EVOLVE 30 II OVERHEAD HEADPHONE WITH MIC WITH NOISE CANCELLATION WITH USB AND STERIO 3.5MM INPUT. WORKS ON LAPTOP AS WELL AS MOBILE IDEAL FOR VOICE AND VIDEO CONFERENCES (LONG HOURS)', 'JABRA EVOLVE 30 II USB + STERIO HEADSET.jpg', 2, 16, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(226, 'JABRA EVOLVE 65 WIRELESS HEADPHONE WITH MIC', '22500-24000', 'JABRA EVOLVE 65 WIRELESS HEADPHONE WITH MIC WITH NOISE CANCELLATION WITH USB DONGLE WHICH SUPPORTS UPTO 30 FEET DISTANCE. IDEAL FOR LONG HOURS CONFERENCE CALLS', 'JABRA EVOLVE 65 WIRELESS HEADPHONE WITH MIC.jpg', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(227, 'JABRA SPEAK 510 USB + BT SPEAKERPHONE', '15000-17100', 'JABRA SPEAK 510 RECHARGEABLE USB + BLUETOOTH SPEAKER PHONE . 2 HOURS CHARGE TIME, 15 HOURS TALK TIME . CRYSTAL CLEAR CONVERSATIONS, IN ROOM COVERAGE,PORTABLE TO CARRY', 'JABRA SPEAK 510 USB + BT SPEAKERPHONE.jpg', 2, 17, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(228, 'JBL 220 Earphone', '550-650', 'Infinity (JBL) WYND 220 Earphone (Black)', 'JBL 220 Earphone.jpg', 2, 7, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(229, 'JBL 300 Earphone', '555-675', 'Infinity (JBL) WYND 300 Earphone (Black)', 'JBL 300 Earphone.jpg', 2, 7, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(230, 'JBL 700 Headphone', '1350-1620', 'JBL Tune 700BT by Harman, 27-Hours Playtime with Quick Charging, Wireless Over Ear Headphones with Mic, Dual Pairing, AUX & Voice Assistant Support for Mobile Phones', 'JBL 700 Headphone.jpg', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(231, 'JBL  Charge4 Speaker', '12600-13500', 'JBL Charge 4 - Waterproof Portable Bluetooth Speaker', 'JBL Charge4 Speaker .jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(232, 'JBL  Clip3 Speaker', '3300-3900', 'JBL Clip 3 Portable Waterproof Wireless Bluetooth Speaker', 'JBL  Clip3 Speaker .jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(233, 'JBL  Flip3 Speaker', '8100-9000', 'JBL Flip 3 Splash-Proof Portable Wireless Bluetooth Speakers', 'JBL  Flip3 Speaker .jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(234, 'JBL  Flip4 Speaker', '8100-9000', 'JBL Flip 4 Waterproof Portable Bluetooth Speaker', 'JBL  Flip4 Speaker .jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(235, 'JBL  GO 2 Speaker', '2250-2500', 'JBL Go 3, Wireless Ultra Portable Bluetooth Speaker, JBL Pro Sound, Vibrant Colors with Rugged Fabric Design, Waterproof, Type C (Without Mic, Teal), Standard', 'JBL  GO 2 Speaker .jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(236, 'JBL I TUNE 600BTNC Headphone', '5400-6300', 'JBL Tune 600BTNC by Harman On-Ear Wireless Bluetooth Noise Canceling Headphones', 'JBL I TUNE 600BTNC Headphone.jpg', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(237, 'JBL infinity clubz 150 Speaker', '1800-2200', 'Infinity by Harman CLUBZ 150 Wireless Bluetooth Portable Speaker', 'JBL infinity clubz 150 Speaker .jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(238, 'JBL infinity clubz 250 Speaker', '2200-2700', 'INFINITY by Harman CLUBZ 250 15 W Bluetooth Speaker', 'JBL infinity clubz 250 Speaker .jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(239, 'JBL infinity clubz 750 Speaker', '4500-5400', 'Infinity (JBL) Clubz 750 Dual EQ Deep Bass 20W Portable Stereo Speaker with 10 Hours Playtime, Built-in Powerbank, Bluetooth 5.0 and IPX7 Waterproof', 'JBL infinity clubz 750 Speaker .jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(240, 'JBL infinity clubz mini  Speaker', '1440-1620', 'Infinity (JBL) Fuze Pint, Wireless Ultra Portable Mini Speaker with Mic, Deep Bass, Dual Equalizer, Bluetooth 5.0 with Voice Assistant Support for Mobiles', 'JBL infinity clubz mini  Speaker .jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(241, 'JBL ITUNE 120TWS Earbuds', '5000-6000', 'JBL Tune 120 Bluetooth Truly Wireless in Ear Earbuds with Mic', 'JBL ITUNE 120TWS Earbuds .jpg', 2, 9, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(242, 'JBL LIVE 100 Earphone', '1800-2100', 'JBL LIVE 100 - In-Ear Headphones with Remote', 'JBL LIVE 100 Earphone.jpg', 2, 7, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(243, 'JBL  Pulse3 Speaker', '14400-16200', 'JBL Pulse 3 - Wireless Bluetooth Waterproof Speaker', 'JBL  Pulse3 Speaker .jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(244, 'JBL T110 Earphone', '900-1170', 'JBL T110 Wired In Ear Headphone with Mic', 'JBL T110 Earphone.jpg', 2, 7, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(245, 'JBL T210 Earphone', '810-990', 'JBL T210 by Harman Pure Bass Premium Aluminum Build in-Ear Headphones with Mic & Tangle Free Cable (Rose Gold)', 'JBL T210 Earphone.jpg', 2, 7, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(246, 'JBL T290 Earphone', '1260-1530', 'JBL T290 by Harman Pure Bass All Metal in-Ear Headphones with Mic', 'JBL T290 Earphone.webp', 2, 7, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(247, 'JBL Tune 0BT Neck band', '1800-2000', 'JBL Tune 205BT by Harman Wireless Earbud Headphones with Mic 6 hours of playtime under optimum audio settings', 'JBL Tune 0BT Neck band.jpg', 2, 4, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(248, 'JBL Tune 205 Earphone', '1100-1400', 'JBL TUNE 205 - In-Ear Headphone with One-Button Remote/Mic', 'JBL Tune 205 Earphone.jpg', 2, 7, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(249, 'JBL Tune500 Headphone', '1800-2250', 'JBL Tune 500 Wired On Ear Headphones with Mic', 'JBL Tune500 Headphone.jpg', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(250, 'JBL Tune500BT Headphone', '3000-3300', 'JBL Tune 500BT by HarmanPowerful Bass Wireless On-Ear Headphones with Mic, 16 Hours Playtime & Multi Connect Connectivity', 'JBL Tune500BT Headphone.jpg', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(251, 'Klef TWS Earbuds', '3000-3600', 'Type True wireless earbuds. Functions: Multiple functions including on/off, play/pause, call receive/ reject, volume adjustment, track change, previous/next and activate the voice assistant. Compatibility All mobile, laptop and tablet. Lithium Ion battery. Operation Range 10 meters', 'Klef TWS Earbuds.jpg', 2, 9, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(252, 'Klef X1 EARPHONE', '700-850', 'Sound HD Clarity with Super Bass. Warranty 1 year. Compatibility All mobiles, laptop and tablets. Cable length 1.2M. Functions One multiple function button for play/pause, activate voice assistant, call receive/reject, track change previous/next', 'Klef X1.jpg', 2, 7, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(253, 'Klef X2 WIRELESS EARPHONES', '1800-2000', 'Type In-ear with ear hook. Functions: Multiple functions including on/off, play/pause, call receive/reject, volume adjustment, track change previous/next and activate voice assistant. Compatibility All mobile, laptop and tablet. Battery type Rechargeable 100 mAh Li-polymer. Operation Range 10 meters', 'Klef X2.jpg', 2, 7, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(254, 'Klef X3 Speaker', '2500-3000', 'Battery type Rechargeable 1000 mAh Li-polymer. Connectivity Bluetooth, TF card, Aux. Warranty 1-year warranty for manufacturing defects. Rated Power 5 W. In the box Bluetooth Speaker, Manual, Aux Cable, Charging Cable', 'Klef X3.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(255, 'PEBBLE 10000 MAH ULTRA COMPACT POWER BANK', '1440-1710', 'PEBBLE 10000 MAH ULTRA COMPACT POWER BANK FAST CHARGE LI-POLYMER DIGITAL DISPLAY', 'PEBBLE 10000 MAH ULTRA COMPACT POWER BANK.jpg', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(256, 'Pebble Ace Pro 10000 mAh Power Bank', '1200-1500', 'Pebble Ace Pro 10000 mAh Power Bank with in-Built Micro, Type-C & Lightning Cables and Fast Charging', 'Pebble Ace Pro 10000 mAh Power Bank.jpg', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(257, 'Pebble Aqua Speaker', '1800-2100', 'Pebble BassX Aqua IPX7 Waterproof Bluetooth Speaker with Heavy Bass. Rock Solid Connection. Built in Microphone. Rugged', 'Pebble Aqua Speaker.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(258, 'Pebble Dome Speaker', '1350-1710', 'Pebble Dome Heavy Bass 5W Bluetooth Speaker', 'Pebble Dome Speaker.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(259, 'Pebble Duo Earbuds', '1800-2100', 'Pebble Duo True Wireless Earbuds (TWS Bluetooth 5.0) with Magnetic Charging Case, HD Stereo Sound, IPX5 Waterproof and Inbuilt-Mic', 'Pebble Duo Earbud.jpg', 2, 9, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(260, 'Pebble Echo Stereo Headphone', '900-1100', 'Pebble Echo Stereo Headphone ', 'Pebble Echo Stereo Headphone.jpg', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(261, 'Pebble Extreme Speaker', '2000-2400', 'Pebble BassX Extreme - Heavy Bass Stereo Sound Splashproof Bluetooth Speaker', 'Pebble Extreme Speaker.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(262, 'Pebble impulse Smart Watch', '1900-2250', 'PEBBLE KARDIO PFB01 Fitness Tracker for Monitoring Heart Rate, Step Pedometer, Calorie, Notifications, Call Alert, BP, Remote Shoot, Alarm and Sleep Monitor', 'Pebble impulse Smart Watch .webp', 2, 14, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(263, 'Pebble  PB33B Power bank', '1000-1250', 'Pebble Pluto, Slimmest Inbuilt Cable Power Bank 6000 mAh', 'Pebble  PB33[B] Power bank .jpg', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(264, 'Pebble  PB60 Power bank', '1100-1350', 'Universal Compatibility, works well with all kinds of smartphones, tablets and headphones, has a robust power output of 5000mAh, Safe and Efficient, Small and Powerful.', 'Pebble  PB60 Power bank .jpg', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(265, 'Pebble  PB88 Power bank', '1000-1200', 'Pebble 10000mAh Li-Polymer Power Bank, Dual USB Outputs and Type-C and Micro-USB Input, Input: 5V - 2A, 12W Fast Charging.', 'Pebble  PB88 Power bank .jpg', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(266, 'Pebble  PB99 Power bank', '1500-1800', 'Portable Charger for Phones,Tablets,Cameras & iPods, Type C & Micro USB inputs, 10-way circuit protection, 20000 mAh Power Bank.', 'Pebble  PB99 Power bank .webp', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(267, 'Pebble PBCM10  Cables', '250-360', 'Pebble Micro USB Cable (3.2 Feet/1 Meter). Fast Charging Upto 2.4A. Compatible with Samsung, Nexus, LG, Motorola, Android Smartphones and More', 'Pebble PBCM10 Cables .jpg', 2, 8, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(268, 'Pebble PFB01 Fitness Tracker', '1800-2200', 'PEBBLE KARDIO PFB01 Fitness Tracker for Monitoring Heart Rate, Step Pedometer, Calorie, Notifications, Call Alert, BP, Remote Shoot, Alarm and Sleep Monitor', 'Pebble PFB01 Fitness Tracker.jpg', 2, 13, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(269, 'Pebble Pico PPC100BUC(N)Power Bank', '1620-1800', 'Pebble Pico Pocket Sized 10,000 mAh Power Bank. Fast Charging 2.1 A, Compatible with All Android Phones & iPhones, 6 Months Warranty', 'Pebble Pico PPC100BUC(N)Power Bank.jpg', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(270, 'Pebble PNCL10 Cables', '400-500', 'Pebble Rapid Type-C - Nylon Braided, Sync/Charge, Fast Charging Type C Cable', 'Pebble PNCL10 Cables .jpg', 2, 12, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(271, 'Pebble PNCM10  Cables', '250-350', 'Pebble MicroUSB Fast Charge & Sync Cable (3.2 Feet / 1 Meter). Premium Nylon Braided with Fast Charging Upto 2.4 A & High Speed Data Sync', 'Pebble PNCM10 Cables .jpg', 2, 12, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(272, 'Pebble Ppc26Auc Power Bank', '750-1000', 'Pebble PPC26AUC 2600mAH Portable Power Bank', 'Pebble Ppc26Auc Power Bank  .jpg', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(273, 'Pebble PUCM30 USB Cables', '360-450', 'Pebble Extra Long Micro USB Cable for Charge and sync - 3 Meters Long', 'Pebble PUCM30 USB Cables .jpg', 2, 12, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(274, 'Pebble PWC 21 Wall Charger', '500-600', 'Pebble Smart USB Charger with 2.4A Fast Charge and 2 Output', 'Pebble PWC 21 Wall Charger .jpg', 2, 10, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(275, 'Pebble  PWLP 2 Wireless Mobile Charger', '3600-4000', 'Pebble Crux 10 Watts/2 Amps Wireless Charging Pad (Qi Compatible, PWLP2, Charcoal Black)', 'Pebble  PWLP 2 Wireless Mobile Charger.png', 2, 11, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(276, 'Pebble  PWLPWireless Mobile Charger', '2400-2650', 'Pebble Sense - Wireless Charging Pad 5W/7.5W/10W with Smart temprature Control', 'Pebble  PWLP Wireless Mobile Charger.jpg', 2, 11, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(277, 'Pebble Spirit Verve Wired Headphone', '1260-1530', 'Pebble Spirit Verve Wired Headphone Black And White Over The Head', 'Pebble Spirit Verve Wired Headphone.webp', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(278, 'Pebble Sync Speaker', '1100-1350', 'Pebble Sync - Wireless Portable Bluetooth Speaker with Microphone/USB/FM/SD Card Reader/AUX', 'Pebble Sync Speaker.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(279, 'Pebble Twins Earbuds', '2000-2250', 'Deep Bass True Wireless Earbuds, Bluetooth 5.0 with Magnetic Charging Case, HD Stereo Sound, Sweat and Waterproof, 20+ Hours of Play time and Noise Cancellation, Pebble Twin is IPX54 rated.', 'Pebble Twins Earbuds .jpg', 2, 9, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(280, 'Pebble Urbane Neckband', '1500-1800', 'The Deep Bass true Wireless Neckband Earphone has a powerful stereo high definition sound output. The massive 150 mAh battery provide 300 hours of standby time and 12 hours of play time, V5.0 Bluetooth connectivity, Passive Noise Control, Voice Assistance and has IPX5 rating for water proof.', 'Pebble Urbane Neckband.jpg', 2, 4, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(281, 'PEBBLE Wave ON Ear Headphones', '810-1000', 'PEBBLE Wave ON Ear Headphones, BLACK/WHITE.', 'PEBBLE Wave ON Ear Headphones.jpg', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(282, 'Pebble XS Speaker', '900-1260', 'Pebble XS - Wireless Portable Bluetooth Speaker with Microphone/USB/SD Card Reader/AUX, Full High-Def Stereo Sound, Multifunction : XS Speaker comes with Mic, TF card Support, USB adapter, 3.5mm AUX in port, hands free phone calls, Built-In Battery.', 'Pebble XS Speaker.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(283, 'PLANTRONICS CALISTO 620M USB + BT SPEAKERPHONE', '13000-15000', 'PLANTRONICS CALISTO 620M INSTANTLY TRANSFORMS YOUR LAPTOP OR SMART PHONE INTO A HIGH QUALITY AUDIO CONFERENCING DEVICE. RECHARGEABLE, LIGHT WEIGHT, SUPERIOR SOUND QUALITY', 'PLANTRONICS CALISTO 620M USB + BT SPEAKERPHONE.jpg', 2, 17, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(284, 'POORTRONICS BREEZE BLUETOOTH SPEAKER', '2000-2200', 'Breeze Portable Rechargeable Bluetooth Speaker with True Wireless Sterio and FM . 8 Watts output. Function Keys. Pair 2 of these with same device', 'POORTRONICS BREEZE BLUETOOTH SPEAKER.webp', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(285, 'PORTRONICS AURAL 1 WIRED HEADPHONE WITH MIC 3.5MM', '1000-1200', 'Foldable wired headphone with mic with 3.5mm sterio jack. Commfortable fit, easy controls for volume, skipping tracks etc, excellent sound and calling experience. White/Black option', 'PORTRONICS AURAL 1 WIRED HEADPHONE WITH MIC 3.5MM.jpg', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(286, 'PORTRONICS BOUNCE PORTABLE BR SPEAKER WITH FM & USB', '750-950', 'Portable Bluetooth powerful 5 watts speaker with FM & USB. Compact size and ultra modern design. Built in FM, On .device controls. Black and Blue Option', 'PORTRONICS BOUNCE PORTABLE BR SPEAKER WITH FM & USB.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(287, 'PORTRONICS BREEZE II TRUE WIRELESS STERIO SPEAKER', '2700-3000', 'Bluetooth 4.2 True Wireless , Water Resistant Speakers with 2000 Mah Battery Pack. Available in 2 Attractive Colors . Black and Camouflage, TWS, MICRO SD', 'PORTRONICS BREEZE II TRUE WIRELESS STERIO SPEAKER.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(288, 'PORTRONICS BREEZE PLUS TWS BLUETOOTH SPEAKER', '2500-2700', 'Bluetooth 4.2 True Wireless , Water Resistant Speakers with 2500 Mah Battery Pack. Available in Attractive Grey Colors . TWS, AUX INPUT', 'PORTRONICS BREEZE PLUS TWS BLUETOOTH SPEAKER.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(289, 'PORTRONICS BRILLO 2 LAMP WITH WIRELESS CHARGER', '800-1000', 'Sleek, Beautiful, Flexible Lamp with Wireless Charger for Smart Phones. Pen Holder, Portable, Foldable & Light weight', 'PORTRONICS BRILLO 2 LAMP WITH WIRELESS CHARGER.jpg', 2, 18, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(290, 'PORTRONICS C-KONNECT TYPE C TO MULTI PORT', '1800-2000', 'TYPE C TO HDMI 4K & USB 3.0 + TYPE C CONVERTER', 'PORTRONICS C-KONNECT TYPE C TO MULTI PORT.jpg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(291, 'PORTRONICS CHARGE BLISS WIRELESS CHARGER WITH NIGHT LAMP', '999-1200', 'WIRELESS CHARGER. LED LAMP THAT CAN BE TURNED INTO NIGHT LAMP AS WELL. RAPID CHARGING. OVERCHARGE AND OVER CURRENT PROTECTION', 'PORTRONICS CHARGE BLISS WIRELESS CHARGER WITH NIGHT LAMP.jpg', 2, 11, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(292, 'PORTRONICS CHARGE M 7800MAH POWER BANK', '1600-1900', 'POWERFUL 7800 MAH POWER BANK. EASILY CARRY IN THE POCKET. Lightest & Slimmest Power 7800 Mah Power Bank.CHARGE PHONES/TABS/ CAMERAS & OTHER 5 V DEVICES. ELEGANT DESIGN', 'PORTRONICS CHARGE M 7800MAH POWER BANK.jpg', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(294, 'PORTRONICS COMET BLUETOOTH SPEAKER WITH FM', '1260-1500', 'Bluetooth rechargeable speaker to play fromk tablet, smart phone, pc, etc.Hands free mobile feature. Micro sd slot supports upto 32gb . FM Radio', 'PORTRONICS COMET BLUETOOTH SPEAKER WITH FM.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(295, 'PORTRONICS CONCH 10 WIRED EARPHONE WITH MIC', '350-450', 'IN EAR EARPHONE WITH 3.5MM JACKK, CRYSTAL CLEAR AUDIO , INLINE HIGH QUALITY MIC, SUPPORTS NOISE ISOLATION', 'PORTRONICS CONCH 10 WIRED EARPHONE WITH MIC.jpg', 2, 7, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(296, 'PORTRONICS CONCH 20 WIRED EARPHONES WITH MIC WITH TYPE C', '400-500', 'IN EAR EARPHONE WITH TYPE C JACK, CRYSTAL CLEAR AUDIO , INLINE HIGH QUALITY MIC, SUPPORTS NOISE ISOLATION', 'PORTRONICS CONCH 20 WIRED EARPHONES WITH MIC WITH TYPE C.webp', 2, 7, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(297, 'PORTRONICS CONCH 212 IN EAR EARPHONE', '299-350', 'In ear earphone with superior sound quality . It has a unique shape to fit well with noise isolation design. In line conntrols.', 'PORTRONICS CONCH 212 IN EAR EARPHONE.jpg', 2, 7, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(298, 'PORTRONICS CONCH 30 WIRED IN EAR EARPHONE WITH MIC WITH 8 PIN JACK', '400-500', 'IDEAL FOR IPHONE USERS, ULTRA STYLISH ERGONOMIC DESIGN, EXCELLENT SOUND & CALLING EXPERIENCE. IN LINE CONTROLS, PORTABLE , DURABLE', 'PORTRONICS CONCH 30 WIRED IN EAR EARPHONE WITH MIC WITH 8 PIN JACK.jpg', 2, 7, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(299, 'PORTRONICS CONCH 40 WIRED IN EAR EARPHONE WITH MIC WITH 8 PIN JACK', '400-500', 'IDEAL FOR IPHONE USERS, ULTRA STYLISH ERGONOMIC DESIGN, EXCELLENT SOUND & CALLING EXPERIENCE. IN LINE CONTROLS, PORTABLE , DURABLE', 'PORTRONICS CONCH 40 WIRED IN EAR EARPHONE WITH MIC WITH 8 PIN JACK.webp', 2, 7, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(300, 'PORTRONICS CONCH DELTA IN EARPHONE WITH HD MIC', '297-350', 'Ergonnomic design , comfortable wearing, Super bass, HD Mic', 'PORTRONICS CONCH DELTA IN EARPHONE WITH HD MIC.webp', 2, 7, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(301, 'PORTRONICS DISKI MULTI PURPOSE CARD READER FOR ANDROID,IPHONE, WINDOWS', '2000-2250', 'Multipurpose Card Reader which works with iPhone, Android Phones, Tabs, Windows PC, Laptops. Share data, music, images, videos across these platforms, increase your device storage space', 'PORTRONICS DISKI MULTI PURPOSE CARD READER FOR ANDROID,IPHONE, WINDOWS.jpg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(302, 'PORTRONICS DYNAMO PORTABLE SPEAKER WITH FM', '1350-1530', 'COOL , COMPACT PORTABLE POWERFULE BLUETOOTHS SPEAKERS WITH FM & TWS. AVAILABLE IN BACK & BLUE COLORS', 'PORTRONICS DYNAMO PORTABLE SPEAKER WITH FM.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(303, 'PORTRONICS EAR 100 TYPE C INTERFACE EARPHONE WITH KARAOKE MIC', '1260-1440', 'CRYSTAL CLEAR SOUND WITH BASE FOR MUSIC, CALLS AND HIGH QUALITY MIC FOR KARAOKE SINGING AND RECORDING. 7.1 SURROUND SOUND, VARIOUS SOUND MODES. HIFI SOUND OUT', 'PORTRONICS EAR 100 TYPE C INTERFACE EARPHONE WITH KARAOKE MIC.jpg', 2, 7, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(304, 'PORTRONICS FREEDOM 4A DESKTOP WIRELESS CHARGER WITH DIGITAL ALARM CLOCK', '1350-1530', 'PORTRONICS FREEDOME 4A DESKTOP WIRELESS CHARGER WITH DIGITAL ALARM CLOCK. SAFETY FEATURES LIKE OVER CURRENT PROTECTION /ADJUSTABLE SCREEN BRIGHTNESS/AL ALARM CLOCK', 'PORTRONICS FREEDOM 4A DESKTOP WIRELESS CHARGER WITH DIGITAL ALARM CLOCK.jpg', 2, 11, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(305, 'PORTRONICS GOLDEN CUBE 5200MAH', '1260-1440', '5200 MAH POWER BANK, Shake to indicate battery status, sleek enogh to carry in pocket, elegant design with mat finish.', 'PORTRONICS GOLDEN CUBE 5200MAH.jpg', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(306, 'PORTRONICS HANGER WIRED OPTICAL MOUSE', '175-250', 'WIRED OPTICAL MOUSE WITH SILICONE GRIP, 1.2M LONG CABLE, USB INTERFACE, 1000DPI, 3 COLORS', 'PORTRONICS HANGER WIRED OPTICAL MOUSE.webp', 2, 23, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(307, 'PORTRONICS HARMONICS 206 BLUETOOTH STERIO EARPHONES', '900-1350', 'Best in class In Line In Ear Bluetooth sterio earphones with mic with magnetic Latch.Harmony of music and call. 3 color options.', 'PORTRONICS HARMONICS 206 BLUETOOTH STERIO EARPHONES.png', 2, 7, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(308, 'PORTRONICS HARMONICS 216 WIRELESS SPORTS HEADSET WITH MIC', '1350-1710', 'ENJOY MUSIC WHILE DOING OUTDOOR ACTIVITIES. MAGNETIC LATCH, MULTI POINT CONNECTION. WIRELESS CONNECT', 'PORTRONICS HARMONICS 216 WIRELESS SPORTS HEADSET WITH MIC.jpg', 2, 4, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(309, 'PORTRONICS HARMONICS 300', '1800-2160', 'PORTRONICS HARMONICS 300 BLUETOOTH SPORTS HEADSET STERIO WITH MIC. NO FALL MAGNET, BLUETOOTH 5.0 , SEAMLESS CONNECTIVITY.LONG BATTERY LIFE. MULTI CONNECTIVITY', 'PORTRONICS HARMONICS 300.jpg', 2, 4, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(310, 'PORTRONICS HARMONICS KLIP 4 RETRACTABLE BLUETOOTH MUSIC & CALLING EARPHONE', '1350-1710', 'Ergonomic Design, Connect & Control, Multi point Connectivity. Ideal for calls 7 Music. Long Battery Life', 'PORTRONICS HARMONICS KLIP 4 RETRACTABLE BLUETOOTH MUSIC & CALLING EARPHONE.jpg', 2, 7, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(311, 'PORTRONICS HARMONICS TWINS 11 TWS EARBUDS', '2100-2520', 'Portronics Harmonics Twins 11 Smart TWS Earbuds with charging case. Available in white 7 Black option. Latest Bluetooth 5.1 . High Fidelity Sound. Feather Touch Control', 'PORTRONICS HARMONICS TWINS 11 TWS EARBUDS.webp', 2, 9, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(312, 'PORTRONICS HARMONICS TWINS 23 SMART TWS EAR BUDS', '1350-1620', 'ENJOY HI FIDELITY MUSIC , BUILT IN HIGH SENSITIVITY MIC, IDEAL FOR INDOOR & OUTDOOR USE. FEATHERTOUCH CONTROL, LONG BATTERY BACKUP, BUILT IN VOICE ASSISTANT', 'PORTRONICS HARMONICS TWINS 23 SMART TWS EAR BUDS.webp', 2, 9, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(313, 'PORTRONICS HARMONICS TWINS 24', '1350-1710', 'HARMONICS 24 , SMART TWS EARBUDS. TYPE C CHARGING PORT, FEATHER TOUCH, VOICE ASSISTANT, 15 HOURS BATTERY LIFE', 'PORTRONICS HARMONICS TWINS 24.jpg', 2, 9, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(314, 'PORTRONICS HARMONICS TWINS S WIRELESS SPORTS EARBUDS', '2000-2250', 'HARMONICS TWINS S SPORTS EARBUDS WITH HOOK TO FIT INTO YOUR EAR WHILE RUNNING, CYCLING, GYMMING . 48 HRS PLAY TIME, IPX5 WATER RESISTANT. FEATHER TOUCH CONTROLS , VOICE ASSISTANT. DISPLAY CHARGING CASE', 'PORTRONICS HARMONICS TWINS S WIRELESS SPORTS EARBUDS.webp', 2, 9, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(315, 'PORTRONICS HARMONICS TWINS S1 WIRELESS SPORTS EARBUDS', '2000-2250', 'AVAILABLE IN BLACK AND WHITE COLOR OPTIONS. BLUETOOTH 5.0 , FEATHER TOUCH, BATTERY DISPLAY, 28 HOURS PLAY TIME WITH CASE, VOICE ASSISTANT', 'PORTRONICS HARMONICS TWINS S1 WIRELESS SPORTS EARBUDS.webp', 2, 9, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(316, 'PORTRONICS HARMONICS TWINS S2 WIRELESS SPORTS EARBUDS', '2000-2400', 'AVAILABLE IN WHITE, BLACK, PINK& CREAM COLOR OPTIONS. BLUETOOTH 5.0, FEATHER TOUCH, VOICE ASSISTANT, 20 HRS PLAY TIME WITH CASE', 'PORTRONICS HARMONICS TWINS S2 WIRELESS SPORTS EARBUDS.jpg', 2, 9, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(317, 'PORTRONICS HARMONICS X', '1260-1530', 'PORTRONICS HARMONICS X WIRELESS BLUETOOTH HEADSET WITH MIC. SUPREME SOUND, RAPID CHARGINGBLUETOOTH 5.0, LONG LASTING BATTERY, SWEAT RESISTANT', 'PORTRONICS HARMONICS X.webp', 2, 4, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(318, 'PORTRONICS HARMONICS X1 WIRELESS SPORTS HEAFSET WITH MIC', '1260-1350', 'WIRELESS SPORTS HEADSET AVAILABLE IN 3 VIBRANT COLORS BLACK, ORANGE & GREEN. LATEST BLUETOOTH 5.0 , SEAMLESS CONNECTIVITY. POWERFUL SOUND, LONG PLAY TIME, MAGNETIC LATCH', 'PORTRONICS HARMONICS X1 WIRELESS SPORTS HEAFSET WITH MIC.jpg', 2, 4, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(319, 'PORTRONICS iKONNECT ONE', '1800-2100', 'I KONNECT ONE 2 IN 1 8 PIN TO AUX ALONG WITH 8 PIN CONNECTOR . ALLOWS CHARGING AND MUSIC OUT AT THE SAME TIME', 'PORTRONICS iKONNECT ONE.webp', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(320, 'PORTRONICS ILUMI LAMP WITH SPEAKER', '1500-1980', 'ILUMI LAMP ALSO PLAYS SONGS. 2 WATTS LAMP WITH 3 WATTS BLUETOOTH SPEAKER. DIMMABLE LAMP. MULTI COLOR LED SETTING . BUILT IN MIC TO ANSWER CALLS', 'PORTRONICS ILUMI LAMP WITH SPEAKER.webp', 2, 15, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(321, 'PORTRONICS IN TUNE 1 SOUND BAR 6W WITH LIGHT', '650-800', 'HIGH QUALITY SOUND, USB POWERED, 3.5MM AUDIO JACK, IN LINE VOLUME CONTROLLER, LED LIGHT', 'PORTRONICS IN TUNE 1 SOUND BAR 6W WITH LIGHT.webp', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(322, 'PORTRONICS IN TUNE 2 USB 6 W SOUND BAR', '550-650', 'HIGH QUALITY SOUND, USB POWERED, 3.5MM AUDIO JACK, IN LINE VOLUME CONTROLLER,', 'PORTRONICS IN TUNE 2 USB 6 W SOUND BAR.jpg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(323, 'PORTRONICS JUST IN', '500-650', 'CORDLESS USB 2.0 3 PORT HUB WITH MICRO SD CARD READER', 'PORTRONICS JUST IN.jpg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(324, 'PORTRONICS KEY 4 COMBO WIRELESS KEYBOARD & MOUSE', '1350-1620', 'ULTRA SLIM & SLEEK KEYBOARD & MOUSE, 2.4GHZ WIRELESS TECHNOLOGY, SILENT KEYS, WIDE COMPATIBILITY, 1 YEAR WARRRANTY', 'PORTRONICS KEY 4 COMBO WIRELESS KEYBOARD & MOUSE.webp', 2, 15, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(325, 'PORTRONICS KEY 5 COMBO WIRELESS KEYBOARD & MOUSE', '1350-1620', 'LATEST WIRELESS TECHNOLOGY SILENT WIRELESS KEYBOARD & MOUSE COMBO. INTELLIGENT POWER SAVING FEATURE. ULTRA SLIM ERGONOMIC DESIGN', 'PORTRONICS KEY 5 COMBO WIRELESS KEYBOARD & MOUSE.webp', 2, 15, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(326, 'PORTRONICS KONNECT STAR MICRO USB CABLE', '250-333', 'USB TO MICRO USB CABLE FOR CHARGING AND DATA TRANSFER AVAILABLE IN 3 COLOR OPTIONS', 'PORTRONICS KONNECT STAR MICRO USB CABLE.jpg', 2, 12, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(327, 'PORTRONICS KRONOS BETA', '3600-4200', 'KRONOS BETA SMART TECH FASHIONABLE WATCH. 3 COLORS BLACK, GREY & ROSE GOLD. 10 SPORTS MODES, IP 68 RATING, 100 FACE OPTIONS, 300 SONGS STORAGE, BP & HEARTRATE MONITOR. TOUCH SCREEN HIGH RESOLUTION DISPLAY', 'PORTRONICS KRONOS BETA.jpg', 2, 14, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(328, 'PORTRONICS KRONOS X3 SMART FITNESS BAND', '1200-1600', 'Smart, Sleek & Stylish Fitnesss band. Monitors Steps, Calories, Sleep, Blood Pressure, Heart Monitor. Message & Call reminder. Blue / Black/ Red Color options', 'PORTRONICS KRONOS X3 SMART FITNESS BAND.jpg', 2, 21, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(329, 'PORTRONICS KRONOS Y1 SMART CALLING WATCH', '3330-4000', 'Smart , Stylish & Sleek Smart Calling Watch. Dial from Watch feature. Blood Pressure, SPO2 , Heart monitoring . 200+ Watch faces, Multiple sports modes. Music controller, Notifications. Grey 7 Black option', 'PORTRONICS KRONOS Y1 SMART CALLING WATCH.webp', 2, 14, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(332, 'PORTRONICS MPORT 45', '1350-1530', 'PORTRONICS MPORT 45 USB 3.0 TO LAN', 'PORTRONICS MPORT 45.webp', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(333, 'PORTRONICS MPORT 45C', '2700-3300', 'PORTRONICS MPORT 45C TYPE C TO LAN', 'PORTRONICS MPORT 45C.webp', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(334, 'PORTRONICS MPORT 4B', '600-750', 'MULTI PORT USB HUB WITH 4 X USB PORT AND 1 TYPE C PORT. EXPAND YOUR LAPTOP /DESKTOP TO CONNECT MULTIPLE DEVICES', 'PORTRONICS MPORT 4B.webp', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(335, 'PORTRONICS MPORT 4C1', '1350-1530', 'USB TYPE C TO VGA, HDMI, TYPE C AND TYPE A PORT. COMPATIBLE WITH ALL LATEST MACHINES PC/MAC WITH TYPE C PORTS', 'PORTRONICS MPORT 4C1.webp', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(336, 'PORTRONICS MPORT 51 TYPE C MULTI PORT HUB', '3000-4000', 'EXPAND YOUR MAC OR WINDOWS BASED LAPTOP / DESKTOP WITHY TYPE C PORT TO 4K HDMI OUT, GIGA LAN PORT, 2X USB 3.0 PORT AND TYPE C PD CHARGING INTERFACE PORT', 'PORTRONICS MPORT 51 TYPE C MULTI PORT HUB.webp', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(337, 'PORTRONICS MPORT 9C', '900-1260', '9 IN 1 USB TYPE C DOCKING STATION FOR MAC & PC WITH USB 3.0X3, TYPE C PD PORT 1, HDMI 4K, VGA, SD & TF CARD RDR, GIGA LAN', 'PORTRONICS MPORT 9C.jpg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(338, 'PORTRONICS MUFFS L BLUETOOTH HEADPHONE SUPER BASS', '1350-1530', 'PORTRONICS MUFFS L BLUETOOTH HEADPHONE WITH MIC AND AUX. STRONG BASS EFFECT FOR SUPER MUSIC QUALITY', 'PORTRONICS MUFFS L BLUETOOTH HEADPHONE SUPER BASS.jpg', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(339, 'PORTRONICS MUFFS M BLUETOOTH HEADPHONE WITH MIC & AUX', '1260-1530', 'PORTABLE MUFFS M BLUETOOTH HEADPHONE WITH MIC & AUX INPUT. COMFORTABLE & CLASSY DESIGN. LONG BATTERY LIFE', 'PORTRONICS MUFFS L BLUETOOTH HEADPHONE SUPER BASS.jpg', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(340, 'PORTRONICS MUFFS R BLUETOOTH HEADPHONE WITH MIC', '2400-2900', 'COMFORTABLE , CLASSY, FOLDABLE, DURABLE, EASY CONTROLS , POWERFUL SOUND', 'PORTRONICS MUFFS R BLUETOOTH HEADPHONE WITH MIC.webp', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(341, 'PORTRONICS MULTIMEDIA WIRELESS KEYBOARD & MOUSE', '900-1170', 'PORTRONICS WIRELESS MULTIMEDIA KEYBOARD & MOUSE COMBO. AVAILABLE IN 2 ATTTRACTIVE COLORS. COMPACT & SMALL KEYBOARD, HIGHLY RESPONSIVE MOUSE. 2.4GHZ WIRELESS CONNECTION', 'PORTRONICS MULTIMEDIA WIRELESS KEYBOARD & MOUSE.jpg', 2, 15, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(342, 'PORTRONICS PHONI 3 RETRO HEADSET', '450-550', 'RETRO HEADSET FOR MOBILE PHONE WITH AUX CABLE, KEEPS RADIATION AWAY', 'PORTRONICS PHONI 3 RETRO HEADSET.webp', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(343, 'PORTRONICS PLUGS', '860-1080', 'Portable Rechargeable Sound System with FM. Directly plug in the micro SD card, compact size & sleek design Easy to carry. Available in three attractive colors black, blue and red.', 'PORTRONICS PLUGS.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(344, 'PORTRONICS PLUS SOUND PLUS BT SPEAKER', '1800-2100', 'Portable rechargeable slim speaker . Bluetooth, Aux, Mic, FM. 6 watts', 'PORTRONICS PLUS SOUND PLUS BT SPEAKER.webp', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(345, 'PORTRONICS POWER 10 WIRELESS PD POWER BANK', '2970-3300', '10000 MAH PD POWER BANK WITH WIRELESS CHARGING FEATURE. TYPE C INPUT, 10W WIRELESS CHARGING OUTPUT. LIGHT WEIGHT , LED DISPLAY, 18W TYPE C PD OUT', 'PORTRONICS POWER 10 WIRELESS PD POWER BANK.jpg', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(346, 'PORTRONICS POWER 45 20000 MAH POWER BANK 45 WATTS FOR SMART PHONES, TABS, LAPTOPS', '3000-3600', '45 WATTS 20000 MAH SMART POWER BANK. DUAL INPUT TYPE C & MICRO USB. DUAL USB OUT. SUPPORTS SMART PHONES, TABS, OTHER USB DEVICES & LAPTOPS UPTO 45 WATTS TYPE C CHARGING', 'PORTRONICS POWER 45 20000 MAH POWER BANK 45 WATTS FOR SMART PHONES, TABS, LAPTOPS.jpg', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(347, 'PORTRONICS POWER BOX 5K', '600-900', '5000MAH Power Bank with Single USB Out. Indias most pocket frienddly power bank. High ppower 2 amps output. White & Pink options', 'PORTRONICS POWER BOX 5K.jpg', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(348, 'PORTRONICS POWER BRICK II 10000MAH POWER BANK', '1100-1350', 'PORTRONICS POWER BRICK II 10000 MAH POWER BANK WITH DUAL USB INPUT (MICRO & TYPE C) & DUAL USB OUT LED INDICATION, 6 LEVEL PROTECTION FOR DEVICE', 'PORTRONICS POWER BRICK II 10000MAH POWER BANK.jpg', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(349, 'PORTRONICS POWER BUN 3 USB & 2 AC SOCKETS', '500-600', 'Portronics Power Bun Connects to your mains and provides 2 USB and 2 Mains Sockets most ideal to charge and power up all devices. 10amps output with Mobile stand', 'PORTRONICS POWER BUN 3 USB & 2 AC SOCKETS.jpg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(350, 'PORTRONICS POWER G 10K POWER BANK', '1260-1500', 'HIGH POWER CAPACITY 10000MAH POWER BANK, DUAL USB INPUT(MICRO & C), TRIPLE OUT INCLUDING TYPE C PD, LED CHARGE INDICATION', 'PORTRONICS POWER G 10K POWER BANK.jpg', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(351, 'PORTRONICS POWER M 10K 10000MAH POWER BANK WITH DUAL INPUT', '1100-1350', 'COMPACT PORTABLE POWER BANK. MICRO USB AND TYPE C INPUT. TRIPLE OUTPUT. SLEEK & STYLISH', 'PORTRONICS POWER M 10K 10000MAH POWER BANK WITH DUAL INPUT.jpg', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(352, 'PORTRONICS POWER M 20K 20000 MAH POWER BANK WITH DUAL IN AND TRIPLE OUT', '1800-2100', 'COMPACT PORTABLE POWER BANK. MICRO USB AND TYPE C INPUT. TRIPLE OUTPUT. SLEEK & STYLISH', 'PORTRONICS POWER M 10K 10000MAH POWER BANK WITH DUAL INPUT.jpg', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(353, 'PORTRONICS POWER PERK 5K POWER BANK', '1100-1350', 'POWERFUL 5000MAH POWER BANK WITH DUAL INPUT(MICRO AND TYPE C) 5000 MAH LITHIUM POLYMER BATTERY, 6 LEVEL PROTECTION. BLACK & SILVER OPTIONS', 'PORTRONICS POWER PERK 5K POWER BANK.webp', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(354, 'PORTRONICS POWER PLATE 4 SURGE PROTECTOR WITH 1 USB', '450-650', '4 POWER SOCKETS & 1 USB PORT. MULTI PURPOSE USAGE. SPIKE GUARD PROTECTED', 'PORTRONICS POWER PLATE 4 SURGE PROTECTOR WITH 1 USB.jpg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(355, 'PORTRONICS POWER PLATE 5', '700-850', '3 SOCKET MAINS WITH 3 USB PORTS ALONG WITH MOBILE STAND. STURDY DESIGN, IN BUILT SMART CHIP , 1.5MTR CABLE . SPACE SAVING DESIGN. UPTO 1500W LOAD', 'PORTRONICS POWER PLATE 5.jpg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(356, 'PORTRONICS POWER PLATE 7', '1260-1440', 'PORTRONICS POWER PLATE 7 WITH 8 POWER SOCKETS & 6 USB PORTS WITH 3MTR CABLE, SHORT CIRCUIT, OVER VOLTAGE & OVER TEMPERATURE PROTECTION', 'PORTRONICS POWER PLATE 7.jpg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(357, 'PORTRONICS POWER PRO 20K 20000MAH SMART POWER BANK', '1500-2000', 'POWERFUL 20000MAH LITHIUM POLYMER POWR BANK, DUAL USB OUTPUT, TYPC & MICRO USB INPUT, LED INDICATION FOR BATTERY LEVEL', 'PORTRONICS POWER PRO 20K 20000MAH SMART POWER BANK.jpg', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(358, 'PORTRONICS POWER SLICE 10 POWER BANK 10000MAH', '900-1200', '10000MAH POWER BANK, POCKET SIZE, WHITE COLOR, MOST IDEAL FOR BRANDING, DUAL USB OUTPUT. LIPOLYMER BATTERY', 'PORTRONICS POWER SLICE 10 POWER BANK 10000MAH.jpg', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(359, 'PORTRONICS PURIFI UV GADGET STERILIZATION BOX', '1800-2100', 'MULTIPURPOSE UV STERILIZATION BOX FOR ALL YOUR SMALL SIZE GADGETS AND OTHER ACCESSORIES , WALLETS ETC', 'PORTRONICS PURIFI UV GADGET STERILIZATION BOX.jpg', 2, 15, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(360, 'PORTRONICS ROAR PORTABLE BLUETOOTH SPEAKER', '3000-3600', 'POWERFUL 12+12 24 WATTS SOUND OUTPUT. BUILT IN 6000 MAH RECARGEABLE BATTERY FOR 7 HRS PLAYTIME ON 70 percent VOL. PLAYS FROM SD & AUX AS WELL', 'PORTRONICS ROAR PORTABLE BLUETOOTH SPEAKER.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(361, 'PORTRONICS RUFF PAD 12 +', '1400-1710', 'PORTRONICS RUFFPAD 12 + Rewritable 12 inches LCD PAD with content safety button. Go paperless, lets you scribble, write, doodle etc', 'PORTRONICS RUFF PAD 12 +.webp', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(362, 'PORTRONICS RUFF PAD 12D', '900-1200', 'REWRITABLE LCD 12 inches TABLET WITH CONTACT SAFETY BUTTON.', 'PORTRONICS RUFF PAD 12D.jpg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(363, 'PORTRONICS RUFFPAD 10 +', '900-1100', 'PORTRONICS RUFFPAD 10 + Rewritable 10 inches LCD PAD with content safety button. Go paperless, lets you scribble, write, doodle etc', 'PORTRONICS RUFFPAD 10 +.webp', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(364, 'PORTRONICS RUFFPAD 15', '1800-2100', 'REWRITABLE LCD 15 inches TABLET WITH CONTACT SAFETY BUTTON FOR PAPERLESS NOTES & SKETCHES. EXTRA LARGE & DURABLE', 'PORTRONICS RUFFPAD 15.jpg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(365, 'PORTRONICS RUFFPAD 8.5 M MULTICOLOR WRITING PAD', '600-800', '8.5 inches REWRITABLE MULTI COLOR LCD PAD FOR PAPER LESS NOTES & SKETCHES. IDEAL FOR ANY AND EVERY NOTE TAKING AND ERASE FEATURE', 'PORTRONICS RUFFPAD 8.5 M MULTICOLOR WRITING PAD.webp', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(366, 'PORTRONICS RUFFPAD 8.5 inches REWRITABLE LCD PAD', '550-650', '8.5 inches REWRITABLE LCD PAD FOR PAPER LESS NOTES & SKETCHES. IDEAL FOR ANY AND EVERY NOTE TAKING AND ERASE FEATURE', 'PORTRONICS RUFFPAD 8.5_ REWRITABLE LCD PAD.jpg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(367, 'PORTRONICS RUFFPAD 8.5E REWRITABLE LCD PAD WITH SAFETY BUTTON', '500-600', '8.5 inches REWRITABLE LCD PAD FOR PAPER LESS NOTES & SKETCHES. IDEAL FOR ANY AND EVERY NOTE TAKING AND ERASE FEATURE', 'PORTRONICS RUFFPAD 8.5E REWRITABLE LCD PAD WITH SAFETY BUTTON.webp', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(368, 'PORTRONICS SOUND BOWL USB PORTABLE SPEAKER', '500-699', 'PORTABLE SLEEK & STYLISH SPEAKER WITH POWERFUL 6 WATTS OUTPUT. SINGLE USB CABLE HELPS IN AVOIDING CLUTTER.3 COLOR OPTIONS', 'PORTRONICS SOUND BOWL USB PORTABLE SPEAKER.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(369, 'PORTRONICS SOUND DRUM + 15 WATTS BLUETOOTH SPEAKER', '2900-3400', 'POWER FUL 15 WATTS PORTABLE BLUETOOTH SPEAKER WITH 6 HOURS BACKUP . BLUETOOTH , AUX & PEN DRIVE INPUT & BASE TREBLE CONTROL', 'PORTRONICS SOUND DRUM + 15 WATTS BLUETOOTH SPEAKER.webp', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(370, 'PORTRONICS SOUND DRUM 1 PORTABLE BLUETOOTH SPEAKER', '1600-1900', 'RUBBER MAT FINISH 10 W TWS PORTABLE RECHARGEABLE BLUETOOTH SPEAKER . MULTIPLE BLUETOOTH CONNECTIVITY, LONG PLAY TIME', 'PORTRONICS SOUND DRUM 1 PORTABLE BLUETOOTH SPEAKER.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(371, 'PORTRONICS SOUND DRUM PORTABLE BT SPEAKER', '1800-2000', 'Portable Bluetooth Speaker with FM, Aux, Mic. Powerful 10 Watts output. Rechargeable', 'PORTRONICS SOUND DRUM PORTABLE BT SPEAKER.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(372, 'PORTRONICS SOUND GRIP BLUETOOTH SPEAKER', '2000-2340', 'Portable rechargeable bluetooth speaker. Stylish look. 3x @watt powerful out put with amazing clarity. Available in 3 colors RED/GREY/BLUE. BT, AUX, Mic, OTG', 'PORTRONICS SOUND GRIP BLUETOOTH SPEAKER.webp', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(373, 'PORTRONICS TIMEOUT COUNTDOWN TIMER CUBE', '900-1100', 'PERFECT FOR TIME MANAGEMENT, SCHOOL KIDS, HOMEWORK, CHORES, KITCHEN, CCOOKING, WORKOUT, YOGA,MEETING, ETC. PLEASING ALARM TONE, EASY TO USE. 2 COLORS WHITE & BLUE', 'PORTRONICS TIMEOUT COUNTDOWN TIMER CUBE.jpg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(374, 'PORTRONICS TOAD 10 WIRED', '297-360', 'COMPACT ERGONOMIC DESIGN, WIRED OPTICAL MOUSE, 1600 DPI RESOLUTION', 'PORTRONICS TOAD 10 WIRED.jpg', 2, 23, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(375, 'PORTRONICS TOAD 12 NEW WIRELESS MOUSE', '450-540', 'PORTRONICS TOAD 12 WIRELESS OPTICAL MOUSE. COMACT CONTROL COMFORT, HIGH FLOW DESIGN, WORLD CLASS QUALITY BLACK BLUE AND BLACK RED OPTIONS', 'PORTRONICS TOAD 12 NEW WIRELESS MOUSE.webp', 2, 23, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(376, 'PORTRONICS TOAD 12 WIRELESS MOUSE', '450-540', 'PORTRONICS TOAD 12 WIRELESS OPTICAL MOUSE. COMACT CONTROL COMFORT, HIGH FLOW DESIGN, WORLD CLASS QUALITY', 'PORTRONICS TOAD 12 WIRELESS MOUSE.webp', 2, 23, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(377, 'PORTRONICS TOAD 13 WIRELESS MOUSE', '360-450', 'PORTRONICS TOAD 13 WIRELESS OPTICAL MOUSE. SMART LINK AUTO CONNECT. AUTO POWER SSAVING FEATURE', 'PORTRONICS TOAD 13 WIRELESS MOUSE.webp', 2, 23, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(378, 'PORTRONICS TOAD 14 WIRELESS OPTICAL MOUSE', '360-459', 'PORTRONICS TOAD 14 WIRELESS OPTICAL MOUSE, ADJUSTABLE DPI, UPTO 30 LAKH CLICKS, ERGONOMIC DESIGN', 'PORTRONICS TOAD 14 WIRELESS OPTICAL MOUSE.webp', 2, 23, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(379, 'PORTRONICS TOAD 21 WIRED OPTICAL MOUSE', '275-360', 'PORTRONICS TOAD 21 WIRED OPTICAL MOUSE. ADJUSTABLE DPI, UPTO 30 LAKH CLICKS, ERGONOMIC DESIGN', 'PORTRONICS TOAD 21 WIRED OPTICAL MOUSE.webp', 2, 23, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(380, 'PORTRONICS TOAD II WIRELESS MOUSE', '333-450', 'PORTRONICS TOAD II WIRELESS MOUSE BLUE AND GREY COLOR OPTIONS', 'PORTRONICS TOAD II WIRELESS MOUSE.jpg', 2, 23, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(381, 'PORTRONICS TORK 7800MAH POWER BANK', '1350-1620', 'POWERFUL 7800 MAH POWER BANK. EASILY CARRY IN THE POCKET. Lightest & Slimmest Power 7800 Mah Power Bank.CHARGE PHONES/TABS/ CAMERAS & OTHER 5 V DEVICES. ELEGANT DESIGN WITH PLASTIC FINISH', 'PORTRONICS TORK 7800MAH POWER BANK.jpg', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(382, 'PORTRONICS TURTLE MICRO USB CABLE', '400-500', 'TURTLE USB TO MICRO USB CABLE . ELEGANT, RUGGED & LONG LIFE FAUX LEATHER CABLES. AVAILABLE IN BLACK & BROWN COLOR. 1 MTR & 2 MTRLENGTH', 'PORTRONICS   TURTLE   MICRO USB CABLE.jpg', 2, 12, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(383, 'PORTRONICS U BOX 4 PORT CHARGING HUB', '1500-1800', 'Universal Plug, Overcharge Protection, powerful 4.2 amps output. Short Circuit Protection, 110 to 220 V input.', 'PORTRONICS U-BOX  4 PORT CHARGING HUB.jpg', 2, 20, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(384, 'PORTRONICS UFO PRO WITH QC CHARGER', '1000-1200', '6 PORT 60 WATTS CHARGING STATION WITH PD & QC CHARGER. IDEAL FOR CHARGING MANY DEVICES SIMULTANEOUSLY.', 'PORTRONICS UFO PRO WITH QC CHARGER.jpg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(385, 'PORTRONICS UFO', '900-1100', '6 PORTS 8 AMPS CHARGING STATION. CHARGE 8 DEVICES SIMULTANEOUSLY', 'PORTRONICS UFO.jpg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(386, 'PORTRONICS VAYU RECHARGEABLE TYRE INFLATOR', '2400-2700', '150 PSI TYRE INFLATOR, 4000 MAH RECHARGEABLE BATTERY. TYE C CHARGING. USEFUL TO INFLATE FOOTBALL, CYCLE TYRE, BIKE TYRE, CAR TYRE', 'PORTRONICS VAYU RECHARGEABLE TYRE INFLATOR.webp', 2, 15, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(387, 'PORTRONICS VIBE PORTABLE BT SPEAKER WITH FM', '2250-2430', 'Slimmest Portable Rechargable Bluetooth Power Speaker with FM. 8 Watts power output. Ultra Thin, Easy to carry, Atreactive Color', 'PORTRONICS VIBE PORTABLE BT SPEAKER WITH FM.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(388, 'PORTRONICS WIRELESS RECHARGEABLE FOLDABLE CHICKLET KEYBOARD', '1000-1350', 'SIMPLY PAIR THE WIRELESS KEYBOARD WITH YOUR DEVICE ON BLUETOOTH WITHOUT NEEDING TO LOAD SOFTWARE.LIGHTWEIGHT, POWERFUL, COMPATIBLE WITH WINDOWS, IOS, ANDROID DEVICES', 'PORTRONICS WIRELESS RECHARGEABLE FOLDABLE CHICKLET KEYBOARD.webp', 2, 15, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(389, 'PORTRONICS X1 SMART FITNESS WATCH ', '3900-4200', 'SMART WRIST WATCH. IP67 WATER PROOF RATING, 100+ WATCH FACES, BODY TEMPERATURE, SPO2, HEART BEAT TRACKING, MUSIC CONTROL, 100+ WATCH FACES', 'PORTRONICS X1 SMART FITNESS WATCH 1.7_HD DISPLAY.jpg', 2, 22, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(390, 'PORTRONICS SMART FITNESS WATCH 1.3 inch HD DISPLAY', '2700-3240', 'SMART WRIST WATCH. IP67 WATER PROOF RATING, 100+ WATCH FACES, REMOTE CAMERA, SPO2 MONITOR, HEART BEAT TRACKING, MULTIPLE SPORTS MODES, NOTIFICATIONS', 'PORTRONICS X2 SMART FITNESS WATCH 1.3_HD DISPLAY.jpg', 2, 22, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(391, 'POTRONICS HARMONICS TWINS 33', '2340-2700', 'HARMONICS TWINS 33, SMART TWS EARPODS WITH MIC. SMART NOISE REDUCTION, SMART TOUCH FEATURE, HI-FI BASS, REFINED COMFORT FOR EXTENDED HOURS OF USAGE. CRYSTAL CLEAR MUSIC', 'POTRONICS HARMONICS TWINS 33.webp', 2, 9, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(396, 'pTron Bassbuds Plus', '1900-2200', 'Connectivity: Bluetooth v5.0. Sound Type: Stereo. Style: In-Ear. Control Unit: Call and Music. Charging Case: 300mAh. Colors: Black, Blue and Red', 'pTron Bassbuds Plus.jpg', 2, 9, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(397, 'pTron Bassbuds Tango', '3000-3300', 'Connectivity: Bluetooth v5.1. Sound Type: Stereo. Style: In-Ear. Control Unit: Call, Music and Modes. Charging Case: 400mAh. Colors: Black and White', 'pTron Bassbuds Tango.jpg', 2, 9, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(398, 'pTron Bassbuds Ultima', '3600-3900', 'Connectivity: Bluetooth v5.0. Sound Type: Stereo. Style: In-Ear. Control Unit: Call, Music and Modes. Charging Case: 400mAh. Colors: Black and Blue', 'pTron Bassbuds Ultima.jpg', 2, 9, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(399, 'pTron Bassbuds Vista', '2700-3300', 'Connectivity: Bluetooth v5.1. Sound Type: Stereo. Style: In-Ear. Control Unit: Call and Music. Charging Case: 400mAh. Colors: Black, Blue, White and Grey. Also Available Without Wireless Charger', 'pTron Bassbuds Vista.jpg', 2, 9, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(400, 'pTron Basspods 681', '2800-3420', 'Connectivity: Bluetooth v5.1. Sound Type: Stereo. Style: In-Ear. Control Unit: Call, Music and Modes. Charging Case: 340mAh. Colors: Black', 'pTron Basspods 681.jpg', 2, 9, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(401, 'pTron Basspods 781', '1980-2340', 'Connectivity: Bluetooth v5.1. Sound Type: Stereo. Style: In-Ear. Control Unit: Call and Music. Charging Case: 400mAh. Colors: Black/Grey, Black/Blue, Black/Red', 'pTron Basspods 781.jpg', 2, 9, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(402, 'pTron Basspods 881', '1900-2250', 'Connectivity: Bluetooth v5.1. Sound Type: Stereo. Style: In-Ear. Control Unit: Call and Music. Charging Case: 300mAh. Colors: Black, Black/Blue', 'pTron Basspods 881.jpg', 2, 9, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(403, 'pTron Basspods 882', '1800-2250', 'Connectivity: Bluetooth v5.1. Sound Type: Stereo. Style: In-Ear. Control Unit: Call and Music. Charging Case: 400mAh. Colors: Black', 'pTron Basspods 882.jpg', 2, 9, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(404, 'pTron Basspods 991 / Bassbuds Pro', '2200-2400', 'Connectivity: Bluetooth v5.1. Sound Type: Stereo. Style: In-Ear. Control Unit: Call and Music. Charging Case: 300mAh. Colors: Black, Black/Red, Black/Green and Black/Blue', 'pTron Basspods 991 _ Bassbuds Pro.jpg', 2, 9, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(405, 'pTron Basspods 992', '2700-3300', 'Connectivity: Bluetooth v5.0. Sound Type: Stereo. Style: In-Ear. Control Unit: Call and Music. Charging Case: 500mAh. Colors: Black and White', 'pTron Basspods 992.jpg', 2, 9, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(406, 'pTron Basspods P81', '1800-2100', 'Connectivity: Bluetooth v5.1. Sound Type: Stereo. Style: In-Ear. Control Unit: Call and Music. Charging Case: 300mAh. Colors: Black, Blue and White', 'pTron Basspods P81.jpg', 2, 9, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(407, 'pTron Boom E100', '1980-2250', 'Connectivity: 3.5mm Aux. Style: In-Ear Headset With or Without Zip Pouch. Control Unit: Call, Music and Volume. Colors: Grey, Black and Blue', 'pTron Boom E100.jpg', 2, 34, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(408, 'pTron Bullet Pro', '900-1100', 'Input: DC12-32V. Output: 36W max. Type: 2 USB + 1. Type-C. LED Indicator: Yes. Colors: Black', 'pTron Bullet Pro.jpg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(409, 'pTron Bullet WX4', '2340-2610', 'Input: AC 100-240V. Output: 2.4A and 1A. Type: USB. Pin Type: Multiple. Colors: Black', 'pTron Bullet WX4.jpg', 2, 34, '2022-03-28 08:08:09', '2022-03-28 08:08:09');
INSERT INTO `products` (`id`, `name`, `price`, `description`, `image`, `userId`, `productCategoryId`, `created_at`, `updated_at`) VALUES
(410, 'pTron Bullet', '630-810', 'Input: DC 12-24V. Output: 3.1A . Type: 3 USB. LED Indicator: Yes. Colors: Black', 'pTron Bullet.webp', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(411, 'pTron Dynamo Classic', '1620-1980', 'Input: Micro USB & Type-C (PD). Output: Dual 3A (max.). Type: For All Smartphones. LED Indicator: Yes. Colors: Black and Blue', 'pTron Dynamo Evo.jpg', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(412, 'pTron Force X11s', '4500-5000', 'Connectivity: Bluetooth v5.0. Battery: 250mAh Li-Polymer. Colors: Black', 'pTron Force X11s.jpg', 2, 14, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(413, 'pTron Indigo UC3 3.1A', '499-599', 'Output: Up to 3.1A . Type: Type C to USB. Length: 1 m Denim Braided. LED Indicator: No. Colors: Black, Blue', 'pTron Indigo UC3 3.1A_.jpg', 2, 8, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(414, 'pTron InTunes Elite', '1620-1800', 'Connectivity: Bluetooth v5.0. Sound Type: Stereo. Style: Neckband. Control Unit: Call, Music and Volume. Colors: Black', 'pTron InTunes Elite.jpg', 2, 4, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(415, 'pTron InTunes Pro', '2400-2700', 'Connectivity: Bluetooth v5.2. Sound Type: Stereo. Style: Neckband. Control Unit: Call, Music and Volume. Colors: Black', 'pTron InTunes Pro.jpg', 2, 4, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(416, 'pTron Tangent Pro', '1800-2100', 'Connectivity: Bluetooth v5.2. Sound Type: Stereo. Style: Neckband. Control Unit: Call, Music and Volume. Colors: Black', 'pTron InTunes Pro.jpg', 2, 4, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(417, 'pTron InTunes Ultima', '1800-2200', 'Connectivity: Bluetooth v5.0. Sound Type: Stereo. Style: Neckband. Control Unit: Call, Music and Volume. Colors: Black/Red, Black/Grey and Black/Blue', 'pTron InTunes Ultima.webp', 2, 4, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(418, 'pTron Pride Evo', '400-550', 'Connectivity: 3.5mm Aux. Style: In-Ear Headset. Control Unit: Call, Music and Volume. Colours: Grey, Black and Blue', 'pTron Pride Evo.jpg', 2, 34, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(419, 'pTron Pulsefit F121', '1350-1620', 'Connectivity: Bluetooth v4.0. Battery: 90mAh Li-Polymer. Colors: Black, Blue, Red and Green', 'pTron Pulsefit F121 .webp', 2, 14, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(420, 'pTron Pulsefit P461', '2250-2700', 'Connectivity: Bluetooth v4.0. Battery: 150mAh Li-Polymer. Colors: Black and Blue', 'pTron Pulsefit P461.webp', 2, 14, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(421, 'pTron Pulsefit Pro', '2900-3330', 'Connectivity: Bluetooth v5.0. Battery: 250mAh Li-Polymer. Colors: Black and Pink', 'pTron Pulsefit Pro.jpg', 2, 14, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(422, 'pTron Pulsefit watch', '2400-2700', 'Connectivity: Bluetooth v4.0 BLE. Battery: 90mAh Li-Polymer. Colors: Black and Blue', '_pTron Pulsefit watch (1).webp', 2, 14, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(423, 'pTron Quinto Evo', '2400-2700', 'Connectivity: Bluetooth v5.0. Transmission Distance: 10m. Speaker Driver Size: 45mm. Built in Mic. Colors: Black and Blue', 'pTron Quinto Evo.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(424, 'pTron Quinto', '2160-2340', 'Connectivity: Bluetooth v5.0. Transmission Distance: 10m. Speaker: 5Wx1 speaker. Speaker Driver Size: 52mm. Built-in Mic. Colors: Black & Blue', 'pTron Quinto.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(425, 'pTron Solero T241 & M241', '550-690', 'Output: Up to 2.4A. Type: Type-C & Micro USB. Length: 1m PVC. LED Indicator: No. Colors: Black', 'pTron Solero T241 & M241.jpg', 2, 12, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(426, 'pTron Solero TB301 and MB301', '600-810', 'Output: Up to 3A. Type: Type-C & Micro USB. Length: 1.5m Nylon Woven. LED Indicator: No. Colors: Black', 'pTron Solero TB301 & MB301.jpg', 2, 12, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(428, 'pTron Soundster Arcade', '810-1080', 'Connectivity: 3.5mm Aux. Sound Type: Stereo. Style: Over-Ear Headset. Control Unit: Mic and Volume. Colors: Black/Red, Black/Blue & Black/Grey', 'pTron Soundster Arcade.webp', 2, 34, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(429, 'pTron Soundster Lite / Studio', '1350-1530', 'Connectivity: Bluetooth v5.0. Sound Type: Stereo . Style: Over the Ear. Control Unit: Music, Mic and Volume . Colors: Black, Black/Blue', 'pTron Soundster Lite _ Studio.webp', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(430, 'pTron Studio Lite', '1440-1800', 'Connectivity: 3.5mm Aux . Sound Type: Stereo. Style: Over-Ear Headset . Control Unit: Mic and Volume. Colors: Black/Red, Black/Blue & Black/Grey', 'pTron Studio Lite.jpg', 2, 34, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(431, 'pTron Volta Elite', '700-900', 'Input: AC 100-240V . Output: 18W max. Type: Single USB . Pin Type: Indian. Colors: White/Grey. Also Available Without USB Charging Cable', 'pTron Volta Elite.jpg', 2, 10, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(432, 'pTron Volta Plus', '710-900', 'Input: AC 100-240V . Output: 17W (up to 3.4A) . Type: Single USB . Pin Type: Indian . Colors: White. Also Available Without USB Charging Cable', 'pTron Volta Plus.jpg', 2, 10, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(433, 'pTron Volta', '630-810', 'Input: AC 100-240V.  Output: 12W (up to 2.4A). Type: Single USB. Pin Type: Indian. Colors: White. Also Available Without USB Charging Cable', 'pTron Volta.jpg', 2, 10, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(434, 'pTron Bassstrings 2A', '1350-1530', 'Connectivity: Bluetooth v5.0 . Sound Type: Stereo. Style: Neckband. Control Unit: Call, Music and Volume. Colors: Black', 'pTron-Bassstrings-2A-HeadphoneandHeadset-492338487-i-1-1200Wx1200H-300Wx300H.jpg', 2, 4, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(435, 'pTron Bassstrings 2A Pro', '1710-1980', 'Connectivity: Bluetooth v5.0 . Sound Type: Stereo. Style: Neckband. Control Unit: Call, Music, Volume. Colors: Black & Blue', 'ptron-bassstrings-2a.jpg', 2, 4, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(436, 'Sony (MDR-E9)', '2070-2340', 'Sony (MDR-E9) In-Ear Headphones', 'Sony (MDR-E9).jpg', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(437, 'Sony CP-V6/BC', '1960-2250', 'Sony CP-V6/BC Portable Powerbank 6100 mAh', 'Sony CP-V6_BC.jpg', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(438, 'Sony MDR-EX150AP Wired In Ear Headphone', '1180-1350', 'Sony MDR-EX150AP Wired In Ear Headphone with Mic', 'Sony MDR-EX150AP Wired In Ear Headphone .jpg', 2, 7, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(439, 'Sony MDR-XB450AP Wired Extra Bass On-Ear Headphones', '1900-2250', 'Sony MDR-XB450AP Wired Extra Bass On-Ear Headphones with Tangle Free Cable, 3.5mm Jack, Headset with Mic for Phone Calls and 1 Year Warranty', 'Sony MDR-XB450AP Wired Extra Bass On-Ear Headphones.jpg', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(440, 'Sony MDR-XB55AP', '1800-2100', 'Sony MDR-XB55AP Wired in Ear Headphones with Mic', 'Sony MDR-XB55AP .jpg', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(441, 'Sony MDR-XB650BT', '15000-18000', 'Sony MDR-XB650BT Wireless Bluetooth On Ear Headphone with Mic', 'Sony MDR-XB650BT.jpg', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(442, 'Sony MDR-ZX110A', '900-1260', 'Sony MDR-ZX110A Wired On Ear Headphone without Mic', 'Sony MDR-ZX110A.jpg', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(443, 'Sony SRS-XB13 Extra BASS Wireless', '3300-3900', 'Sony SRS-XB13 Extra BASS Wireless Portable Compact Speaker IP67 Waterproof Bluetooth, Black (SRSXB13/B)', 'Sony SRS-XB13 Extra BASS Wireless.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(444, 'Sony SRS-XB23 Wireless Extra Bass Bluetooth Speaker', '9000-10000', 'Sony SRS-XB23 Wireless Extra Bass Bluetooth Speaker with 12 Hours Battery, Party Connect, Waterproof IPX67, Dustproof, Rustproof, Shockproof Speaker with Mic, Loud Audio for Phone Calls/WFH (Blue)', 'Sony SRS-XB23 Wireless Extra Bass Bluetooth Speaker.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(445, 'Sony SRS-XB33 Wireless Extra Bass Bluetooth Speaker', '14000-16000', 'Sony SRS-XB33 Wireless Extra Bass Bluetooth Speaker with 24 hrs Battery, Party Lights, Party Connect, Waterproof IPX67, Dustproof, Rustproof, Speaker with Mic, Loud Audio for Phone Calls/WFH', 'Sony SRS-XB33 Wireless Extra Bass Bluetooth Speaker .jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(446, 'Sony SRS-XG500 X-Series Wireless', '27000-30000', 'Sony SRS-XG500 X-Series Wireless Portable-Bluetooth Party-Speaker IP66 Water-Resistant and Dustproof with 30 Hour-Battery', 'Sony SRS-XG500 X-Series Wireless.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(447, 'Sony WF-1000XM3', '15000-18000', 'Sony WF-1000XM3 Industry Leading Active Noise Cancellation True Wireless (TWS) Bluetooth 5.0 Earbuds with 32hr Battery Life, Alexa Voice Control & mic for Phone Calls Suitable for Workout, WFH', 'Sony WF-1000XM3 .jpg', 2, 9, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(448, 'Sony WF-XB700 Truly Wireless Extra Bass Bluetooth Earbuds', '9000-10000', 'Sony WF-XB700 Truly Wireless Extra Bass Bluetooth Earbuds with 18 Hours Battery Life, True Wireless Earbuds with Mic for Phone Calls, Quick Charge, BT Ver 5.0', 'Sony WF-XB700 Truly Wireless Extra Bass Bluetooth Earbuds.jpg', 2, 9, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(449, 'Sony WH-1000XM4', '2200-2500', 'Sony WH-1000XM4 Industry Leading Wireless Noise Cancelling Bluetooth Headphones with Mic for Phone Calls, 30 Hours Battery Life, Quick Charge, Touch Control and Alexa Voice Control', 'Sony WH-1000XM4.jpg', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(450, 'Sony WI-C400 Wireless in-Ear Neck Band', '3000-3300', 'Sony WI-C400 Wireless in-Ear Neck Band Headphones with 20 hrs Battery Life, Light Weight, Bluetooth Headset with mic for Phone Calls, Vibration Notification, Work from Home, Tangle Free Cable', 'Sony WI-C400 Wireless in-Ear Neck Band.jpg', 2, 4, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(451, 'SP 65NOTEBOOK WIRELESS SPEAKER', '2200-2700', 'TF Card Play. Aux Input. USB input. Bluetooth. FM Radio. 8 hours backup', 'SP 65 NOTEBOOK WIRELESS SPEAKERS.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(452, 'SUPER BASS BLUETOOTH SPEAKER DBS 022', '1000-1260', 'Bluetooth Speaker', 'Super-Bass-Bluetooth-Speaker-Dbs-022-3-750x750.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(453, 'Apple AirPods Pro', '22000-25000', 'Sweat and water resistant (IPX4). H1 headphone chip. Active Noise Cancellation. Custom high-excursion Apple driver', 'Sweat and water resistant (IPX4) H1 headphone chip Active Noise Cancellation Custom high-excursion Apple driver.jpg', 2, 9, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(454, 'Swiss military CAM1 Action Camera', '2100-2400', 'Records full HD 1080p video at 30 fps. Captures 12MP still photos. Ultra-wide Lens. Camera housing waterproof to 30M', 'Swiss military CAM1 – Action Camera.webp', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(455, 'Swiss military CAM2 Wireless Smart Camera', '2100-2500', 'Deliver clear and sharp color video day and night. 3.6mm IR lens, 1.0MP CMOS sensor. 6 pcs IR LEDs, up to 6-meter IR distance.', 'Swiss military CAM2 – Wireless Smart Camera.webp', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(456, 'Swiss military Wireless Headphone', '1440-1800', 'Wireless Connectivity. Adjustable Headband. Soft and Comfortable Headband and Earplugs.', 'Swiss military HPH2 – Wireless Headphone.jpg', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(457, 'Swiss military Wireless Headphone', '1500-1800', 'Stylish design with classy metallic finish. Vibrating call alert. Auto reconnect.', 'Swiss military HPH3_Wireless Headphone.webp', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(458, 'Swiss military True Wireless Earbuds', '1440-1800', 'NFC Technology for fast pairing. Pop-up Pairing window for iOS Devices. Pairing memory function', 'Swiss military HPH4- True Wireless Earbuds.jpg', 2, 9, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(459, 'Swiss military Voice Assistant Speaker', '1800-2250', 'Wireless Speaker Supports Siri & Google Assistant Voice Commands. Easily change the music track and adjust the volume with a Multifunctional button.', 'Swiss military TZ01 – Voice Assistant Speaker.webp', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(460, 'Swiss military Voice Assistant Neckband Headset', '1500-1800', 'Bluetooth Wireless headphones Supports Siri and Google Assistant. Built-in dedicated Voice assistant button, press the voice assistant Button to start a conversation with Siri and google Assistant.', 'Swiss military TZ02 – Voice Assistant Neckband Headset.webp', 2, 16, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(461, 'Swiss military UAM12 Portable Timer Charger', '700-900', 'Dual turbo charging USB 2.1 Ports for simultaneous. Charging of 2 devices. Prolong electronic device battery life.', 'Swiss military UAM12 – Portable Timer Charger.jpg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(462, 'Swiss military UAM15 Extension Cord', '500-650', '2 USB Output (Output: 5V 2.1A charging ports). Built-In Hook to secure the power cord in place. 1.5 Meter cable length. Input: AC110-220V 50~60Hz.', 'Swiss military UAM15 – Extension Cord.jpg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(463, 'Swiss military UAM27  3 IN 1 Travel Adaptor', '450-540', '3-IN-1 Travel Plug set. Covers approx. 150 countries. Compact design.', 'Swiss military UAM27 – 3-IN-1 Travel Adaptor.jpg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(464, 'Ubon B18 5750 Headphone', '1260-1530', '1 year warranty, Aux connectivity, wireless calls & music', 'Ubon  BT 5710 NECKBANDS.jpg', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(465, 'BT 5710 NECKBANDS', '700-810', 'Wireless Calling Control & Music, Tangle free - Round Cable Design, Headset with Built in mic, Easy to Operate Built in Rechargeable battery', 'Ubon  BT 5710 NECKBANDS.jpg', 2, 4, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(466, 'Ubon  BT 5800 Headphone', '900-1200', 'Aux connectivity, wireless calls & music TF Card play, FM Radio', 'Ubon  BT 5800 Headphone.webp', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(467, 'Ubon  BT 70 BLUETOOTH', '600-810', 'HI FI SOUND, BLUETOOTH 5, 10 HOURS BACK UP, UNIVERSAL FIT', 'Ubon  BT 70 BLUETOOTH.jpg', 2, 33, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(468, 'BT 75 BLUETOOTH', '550-750', 'HI FI SOUND, BLUETOOTH 5, 10 HOURS BACK UP', 'Ubon  BT 75 BLUETOOTH.jpg', 2, 33, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(469, 'BT-60 BLUETOOTH', '700-900', 'HI FI SOUND, BLUETOOTH 5, 6 HOURS BACK UP, UNIVERSAL FIT', 'Ubon  BT-60 BLUETOOTH.webp', 2, 33, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(470, 'Ubon  BTH 971 BLUETOOTH', '400-500', 'Chip: CSR chip. BT version: V 4.1. Stand By Time: 120 HOURS. HD audio quality. 6 Hours Back Up. Noise Reduction Function. Volume Control. 100 mAh Battery', 'Ubon  BTH 971 BLUETOOTH.jpg', 2, 33, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(471, 'Ubon  BTH 972 BLUETOOTH', '400-550', 'Chip: CSR chip. BT version: V 4.1. Stand By Time: 120 HOURS. HD audio quality. 6 Hours Back Up. Noise Reduction Function. Volume Control. 100 mAh Battery', 'Ubon  BTH 972 BLUETOOTH.jpg', 2, 33, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(472, 'Ubon  GBT 5605 Headphone', '1000-1350', 'Aux connectivity. Wireless calls & music TF Card play. FM Radio', 'Ubon  GBT 5605 Headphone.jpg', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(473, '2-in-1 Night light with 2 USB Charger Lumi', '400-550', 'Black', 'UG-GA08 Black.jpg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(474, 'Swiss Knife Adaptors - C TYPE KORD - C', '180-270', 'White, Black', 'UG-GC07 White.jpg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(475, '3-in-1 Charging Retracting Cable Yoyo C+', '200-270', 'White', 'UG-GC09 White.jpg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(476, 'Mousepad with 3 Port USB Hub Miky', '375-450', 'White', 'UG-GC17.jpg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(477, 'True Wireless StereoTwins', '1260-1500', 'Black', 'UG-GH12.jpg', 2, 9, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(478, '2-in-1 Torch with Table Light DuoLite', '275-350', 'Black', 'UG-GL08 Black.jpg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(479, '2-in-1 Torch with Desk Lamp Glowy', '475-650', 'White', 'UG-GL09.jpg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(480, 'Smart Tracker Trackfast', '475-650', 'Black, White', 'Urban gear Smart Tracker Trackfast .jpeg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(481, 'USB CAR CHARGER 1A DMC - 028', '200-270', 'USB Car Charger', 'USB CAR CHARGER 1A  DMC-028.jpg', 2, 26, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(482, 'USB TRAVEL CHAGER 1A DMC - 021', '175-250', 'INPUT : 90 ~ 270 V. AC 50/60Hz 50mA. OUTPUT : 4.9 ~ 5.4 V DC 1A. With a standard USB 2.0, output port can charge most of the Mobile Phones, Smart Phones, iPhones, iPads, iPods and usb devices like MP3/MP4 players.', 'USB TRAVEL CHAGER 1A  DMC-021.jpg', 2, 24, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(483, 'USB TRAVEL CHARGER 2.1 A DMC-023', '400-500', 'USB Travel Charger', 'USB TRAVEL CHARGER 2.1A  DMC-023.webp', 2, 25, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(484, 'USB TRAVEL CHARGER QC 3.0 DMC-024', '550-750', 'USB TRAVEL CHARGER', 'USB TRAVEL CHARGER QC 3.0  DMC-024.jpg', 2, 25, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(485, 'WACOM FOLIO', '3900-4950', 'WRITE ON NORMAL PAPER AND SAVE THE CONTENTS ON CLOUD OR YOUR ANDROID / IOS BASED DEVICE', 'WACOM FOLIO.jpg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(486, 'WH-65 Over The Ear Wireless Headphones', '1200-1500', 'WH-65 Over The Ear Wireless Headphones With Mic, Wireless FM, Aux & SD Card Support (Black)', 'WH-65 Over The Ear Wireless Headphones.jpg', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(487, 'WH-74 Over The Ear Wireless Headphones', '1350-1800', 'WH-74 Over The Ear Wireless Headphones With Mic & FM (Black)', 'WH-74 Over The Ear Wireless Headphones.jpg', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(488, 'XECH 3 in 1 Fast Charging Cable', '250-360', 'Length: 1.2 m. Input: 5V 2A. Material: PVC + Nylon + Metal. Product Weight: 40 gms (Approx)', 'XECH 3 in 1 Fast Charging Cable.png', 2, 32, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(489, 'XECH A3 sport  Headphone', '700-900', 'Playback Time: 4-5 Hours. Material: High Quality ABS + PVC. Application: Sports Earphone. Operating Distance: 5-10 Meter', 'XECH A3 sport  Headphone.webp', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(490, 'Xech A6 neckband', '800-1200', 'Bluetooth Version: 5.0. Software Support: Advanced Audio Distribution Profile (A2DP), Audio/Video Remote Control Profile (AVRCP), Hands Free Protocol (HFP), Headset Profile (HSP), Operation Range: Up to 10 Meters (33 Feet), Play Time: Approx. 5 Hours, Standby Time: Approx. 200 Hours', 'Xech A6 neckband.webp', 2, 4, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(491, 'XECH A8 Headphone', '1500-1800', 'Playback Time: 8-9 Hours. Material: ABS Rubber Oil. Functions: Built in Mic / Wireless / Foldable / Adjustable / Ai Function. Operating Distance: 10 Meters. Charging Port: Micro USB', 'XECH A8 Headphone.jpg', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(492, 'XECH ABS 11000mAh  USB Port', '900-1200', 'Battery Type: Li-Polymer. USB Ports: 2 Port. Material: High Quality ABS Leather. Power Bank Capacity: 11000 mAh', 'XECH ABS 11000mAh  USB Port.jpg', 2, 24, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(493, 'XECH Asymmetrix Desk Lamp', '1600-2000', 'Ease of watching movies with mobile holder. Aesthetic design. Micro USB input', 'XECH Asymmetrix Desk Lamp .webp', 2, 18, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(494, 'XECH Athos  Headphone', '900-1350', 'Bluetooth Version: 5.0. Software Support: Advanced Audio Distribution Profile (A2DP), Audio/Video Remote Control Profile (AVRCP), Hands Free Protocol (HFP), Headset Profile (HSP), Operation Range: Up To 10 Meters (33 feet), Play Time: Approx. 5 Hours, Standby Time: Approx. 300 Hours', 'XECH Athos  Headphone.webp', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(495, 'XECH Atlas Power bank', '750-1050', 'Input: 5V-2.1A. Output: USB 5V-2.1A. Capacity: 5000mAh. Material: ABS+PC Plastics. Battery Type: Li-Polymer', 'XECH Atlas  Power bank .jpg', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(496, 'XECH Comet Power bank', '1500-1800', 'Input Micro or Type-C: 5V-3A Max. Output 1: USB 5V-3.0A Max. Type-C 5V-3A Max. Capacity: 10000mAh. Material: ABS+PC Plastics. Battery Type: A Grade', 'XECH Comet Power bank .jpg', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(497, 'XECH Comet X Power bank', '1350-1600', 'Input Micro or Type-C: 5V-3.0A. Output 1: USB 5V-3.0A. Type-C 5V-3A Max. Capacity: 20000mAh. Material: Fireproof V0 ABS+PC Plastics. Battery Type: A Grade', 'XECH Comet X Power bank .jpg', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(498, 'XECH Data Bank 5000 USB Port', '800-1000', 'Battery Type: Li-Polymer. USB Ports: 1. Material: ABS Leather. Power Bank Capacity: 5000 mAh. Flash Drive: 16 GB. Charging Port: Micro USB', 'XECH Data Bank 5000 power bank .webp', 2, 24, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(499, 'XECH Desk Boss Mobile Charging stand', '1500-1900', 'Pen stand with 3W wireless speaker. Ease of watching movies with mobile holder. Portable and durable model', 'XECH Desk Boss Mobile Charging stand .png', 2, 28, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(500, 'XECH Desk Boss Powerbank', '1500-1800', 'Digital display for calendar and time. Ease of watching movies with mobile holder. Portable and durable model', 'XECH Desk Boss-Power bank .png', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(501, 'XECH F1 Cooling Fan', '400-550', 'Input: DC5V 0.5A. Power: 2W. Battery: 500mAh Lead-Acid. Charging Port: Micro USB. Switch: Sensitive Touch Switch. Work Time: 2-3 Hours', 'XECH F1 Cooling Fan.jpg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(502, 'XECH Grow Station Desk Lamp', '1350-1600', 'Special UV Spectrum for enhanced photosynthesis. Soil free plant growth. Air flow for indoor plantation. 3 level dimmable desk lamp', 'XECH Grow Station.jpg', 2, 18, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(503, 'XECH iSoothe Eye Massager', '3000-3600', 'Power: 5W. Heat Resistance: Yes. Working Time: 1-2 Hours. Rechargeable: Yes', 'XECH iSoothe Eye Massager.jpg', 2, 30, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(504, 'XECH Lumos Desk Lamp', '1000-1350', 'Desk lamp with pen stand feature. Best design with mobile holder. 3 level brightness for night light. Lights for good feel. Ease of watching movies with mobile holder', 'XECH Lumos desk lamp .png', 2, 18, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(505, 'XECH Mandala Speaker', '600-810', 'Version: 5.0. Working Time: 2 Hours. Output Power: 3W. Transmission Distance: 10 Meters. Playing Time: Approx. 3 - 4 Hours', 'XECH Mandala Speaker.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(506, 'XECH Mouse Pad with Wireless charger', '700-1100', 'Material: Hard PU Leather. Charging Distance: < 2-5mm. Wireless Charging: 5W', 'XECH Mouse Pad with Wireless charger.jpg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(507, 'XECH Multifunctional Torch', '900-1200', 'Material: High Quality ABS+Plastic. Charging Port: Micro USB. Play Time: 7-8 Hours. Speaker Output: 3W. Torch Power: 1W', 'XECH Multifunctional Torch.jpg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(508, 'XECH Nuke Speaker', '1500-1800', 'Version: 5.0. Output Power: 6W. Transmission Distance: 10 Meters. Playing Time: Approx. 4 Hours. Standby Time: 100 Hours', 'XECH Nuke Speaker.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(509, 'XECH Number Cruncher', '1710-2000', 'LCD Number Display Screen. Can enter 10 digits for calculations. Multi-Operational. Can work through Solar Panels (With natural sunlight). Can work with AAA batteries. USB Connection. 2.4G Wireless Connection. Multi-Device Usage. Supports Windows systems as well as MacBoo', 'XECH Number Cruncher.webp', 2, 31, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(510, 'XECH Satellite Hub power bank', '2300-2800', 'Input: 5V-2.1A. Output: USB 5V-2.1A Max. Wireless 5W. Capacity: 10000mAh. Material: ABS + Rubber Coating. Battery Type: Li-Polymer', 'XECH Satellite Hub.jpg', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(511, 'XECH Satellite Wireless Power bank', '1900-2400', 'Input Micro or Type-C: 5V-2.1A. Output: USB: 5V-2.1A. Type C: 5V-2.1A Max. Wireless: 5W. Capacity: 10000mAh. Material: ABS + Rubber Coating. Battery Type: Li-Polymer', 'XECH Satellite POWER BANK.jpg', 2, 29, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(512, 'XECH Satellite Pro Wireless Power bank', '2000-2500', 'Input: Micro or Type-C: 5V-3.0A. Output: Wireless 10W. USB 5V-3.0A Max. Type-C 5V-3A Max. Capacity: 10000mAh. Charge time (Approx): 10 Hours with 5V 1A Adaptor. 5 Hours with 5V 2A Adaptor. 3 hours with 9V 2A Adaptor. Material: ABS. Battery Type: Li-polymer', 'XECH Satellite Pro Wireless Power bank.jpg', 2, 29, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(513, 'XECH Smart Loop Smart watch', '2400-3000', 'Waterproof: IP67. Chipest: HS. 6620D. Screen Display: 1.3 inch IPS Color Display. Screen: Full Touch Screen. Battery Capacity: 170mAh. Standby Time: 10 to 15 days. Compatiblity: iOS & Android. Dimension: 45.5x37x9.5mm. OTA: Lift Wrist Changeable Screen', 'XECH Smart Loop Smart watch.jpg', 2, 14, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(514, 'XECH SpeakerPods', '3300-3900', 'Bluetooth Version: V5.0 + EDR. Software Support: Advanced Audio Distribution Profile (A2DP). Audio/Video Remote Control Profile (AVRCP). Hands Free Protocol (HFP). Headset Profile (HSP). Operation Range: Up to 10 meters (33 feet). Headset Playtime (Maximum Volume): Approx. 4 Hours. Speaker Playtime (Maximum Volume): Approx. 3.5 Hours. Headset Standby Time: Approx. 100 Hours', 'XECH SpeakerPods.jpg', 2, 27, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(516, 'XECH T2 C Desk Lamp', '700-1000', 'Material: High Quality ABS. Battery Type: Rechargeable Lithium Battery. LED Lumens: 200 Lumens. Working Time: 6-8 Hours. Dimming Type: 3 Modes through Touch Button. Rotating Neck: Yes', 'XECH T2 C Desk Lamp .jpg', 2, 18, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(518, 'XECH Titan Power bank', '1000-1350', 'Input: 5V-2.1A. Output: USB 5V-2.1A. Capacity: 10000mAh. Material: ABS+PC plastics. Charge Time (Approx):  10 Hours with 5V 1A Adaptor, 5 Hours with 5V 2A Adaptor, Battery Type: A Grade', 'XECH Titan Power bank .webp', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(519, 'XECH Voice Assist Speaker', '1750-2050', 'Battery: Built-in Rechargeable Battery. Charging Port: Micro USB. Play Time: 7-8 Hours. Speaker Output: 5W', 'XECH Voice Assist .jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(520, 'XECH X1  Smart watch', '1750-2050', 'Screen Size: 0.66 Inch. Battery Type: Polymer Lithium. Bluetooth: Version 4.0. Device Dimension: 50mmX24mmX11.6mm. Strap Dimension: 235mmX24mmX11.6mm. Waterproof: IP67', 'XECH X1  Smart watch .png', 2, 14, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(521, 'XECH X16  Speaker', '1000-1400', 'Material: ABS Plastic + Iron Mesh + Silicone Gel Pad. Charging Port: Micro USB. Play Time: 7-8 Hours. Speaker Output: 5W', 'XECH X16  Speaker.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(522, 'XECH X2  Smart watch', '2000-2500', 'Screen : 0.96inches TFT Color Screen. Sensor : 3 Axis Acceleration Photoelectric . Battery Type:Polymer Lithium. Waterproof: IP67', 'XECH X2  Smart watch.jpg', 2, 14, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(523, 'XECH X2-TWS', '3500-4000', 'Wireless Headset with Power Bank Capacity Of Charging Base: 1600mah. Single Ear Endurance Time: 4 Hours. Binaural Endurance Time: 2.5 Hours . Total Call Time: 60 Hours. Total Standby Time: 720 Hours', 'XECH X2-TWS Earbuds .jpg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(524, 'XECH SpeakerPods XL', '4000-4500', '- Bluetooth Version: V5.0 + EDR - Software Support:  Advanced Audio Distribution Profile (A2DP). Audio/Video Remote Control Profile (AVRCP). Hands Free Protocol (HFP). Headset Profile (HSP). Operation Range: Up to 10 meters (33 feet). Headset Playtime (Maximum Volume): Approx. 4 Hours. Speaker Playtime (Maximum Volume): Approx. 4 Hours. Headset Standby Time: Approx. 100hrs', 'xech-speaker-pods-xl.jpg', 2, 27, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(525, 'ZEBRONICS AIRDUO EARPOD', '3000-3600', 'Model Name : ZEB-AIR DUO. Color : Metallic Black . Headphone Type : In the Ear. Inline Remote : No. Sales Package : 1 RIGHT EAR BLUETOOTH, 1 LEFT EAR BLUETOOTH, 1 USB CABLE. Connectivity : Bluetooth', 'ZEBRONICS AIRDUO EARPOD.jpg', 2, 9, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(526, 'ZEBRONICS AMAZER BLUETOOTH SPEAKER', '2700-3200', 'The speaker offers app based connectivity via Android, & iOS . And has a 1200mAh built-in rechargeable battery', 'ZEBRONICS AMAZER BLUETOOTH SPEAKER.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(527, 'ZEBRONICS ATOM', '1200-1400', 'Zeb-Atom is a portable wireless speaker that comes with a warm glow of 60 LEDs flame giving you a burning candle effect.The speaker supports BT/mSD and comes with rechargable battery.', 'ZEBRONICS ATOM.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(528, 'ZEBRONICS BE350 BLUETOOTH EARPHONE', '550-725', 'ZEB-BE350 is a sporty BT earphones which comes with an inbuilt battery and it can be paired simultaneously with two devices. It also has a call /media button with a talk time up to 3 hours and audio playback time up to 2 hours.', 'ZEBRONICS BE350 BLUETOOTH EARPHONE.jpg', 2, 7, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(529, 'ZEBRONICS BE360 BLUETOOTH EARPHONE', '475-675', 'ZEB-BE360 is a sporty stereo earphone which has dual pairing mechanism. It has media controls and a call function and has a full charge indication.', 'ZEBRONICS BE360 BLUETOOTH EARPHONE.jpg', 2, 7, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(530, 'ZEBRONICS BE360 BLUETOOTH EARPHONE', '450-675', 'ZEB-BE370 is an in ear type of BT earphone which features a sporty look. This earphone has media controls, dual pairing and comes with a call function. It has a talk time of 4 hours and comes with a full charge indicator.', 'ZEBRONICS BE370 BLUETOOTH EARPHONE.webp', 2, 7, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(531, 'ZEBRONICS BE380T BLUETOOTH EARPHONE', '600-900', 'ZEB-BE380T is a BT wireless module with earphone. It comes with a 3.5mm jack which can be used with any other earphone/headphone.', 'ZEBRONICS BE380T BLUETOOTH EARPHONE.jpg', 2, 7, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(532, 'ZEBRONICS BE390 BLUETOOTH EARPHONE', '500-750', 'ZEB-BE390 is a sporty designed BT earphone that comes with dual pairing. It has a media control and a call function. It also has full charge indication button that shows when the earphone is fully charged.', 'ZEBRONICS BE390 BLUETOOTH EARPHONE.jpg', 2, 7, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(533, 'ZEBRONICS BLUETOOTH HEADPHONE (THUNDER)', '800-1100', 'You can also tune in to your favourite FM channel with built-in FM tuner. 40mm drivers ensures wider frequency response and excellent sound reproduction. All this with long playback time of 8 hours in BT mode.', 'ZEBRONICS BLUETOOTH HEADPHONE (THUNDER).jpg', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(534, 'ZEBRONICS BREW', '950-1275', 'Brew is a wireless portable speaker that looks like a block with its rectangular shape. It comes with multi-connectivity options like BT/USB/ mSD card /AUX . The speaker also has a call function, media controls and a built in FM.', 'ZEBRONICS BREW .webp', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(535, 'ZEBRONICS  CC32A CAR CHARGER', '450-625', 'ZEB-CC32A is a car charger in a compact design with a glossy finish. It has a dual USB port and an LED indicator when connected. It is ultra compact to charge your phone.', 'ZEBRONICS  CC32A CAR CHARGER.webp', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(536, 'ZEBRONICS  CC52AD CAR CHARGER', '600-810', 'ZEB-CC52AD is a car charger in a compact design with a glossy finish. It has a dual USB port and display to show power voltage. It is ultra compact to charge your phone.', 'ZEBRONICS  CC52AD CAR CHARGER.jpg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(537, 'ZEBRONICS CLOSIC MIRROR BLUETOOTH SPEAKER', '2000-2250', 'Closic Mirror is a BT portable speaker that has an LED display which has BT,USB, Micro SD, AUX cable support and comes in with an inbuilt FM radio but apart from all that this exquisite speaker also comes with a temperature sensor and also functions like a clock/alarm and comes with a call function.', 'ZEBRONICS CLOSIC MIRROR BLUETOOTH SPEAKER.webp', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(538, 'ZEBRONICS CRYSTAL MULTIMEDIA SPEAKER', '360-475', 'Look and performance all is packed into our USB powered 2.0 crystal speakers which is a head turner in terms of design and it has volume control button and AUX for all that movie binging.', 'ZEBRONICS CRYSTAL MULTIMEDIA SPEAKER.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(539, 'ZEBRONICS DELIGHT BLUETOOTH SPEAKER', '700-900', 'Delight is a handy portable wireless speaker that comes with a nice fabric finish. It has ample multi-connectivity options like BT/USB/MSD card/FM. The speaker also features a call option and comes with a strap which is very handy for portability.', 'ZEBRONICS DELIGHT BLUETOOTH SPEAKER.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(540, 'ZEBRONICS DOT BLUETOOTH SPEAKER', '675-875', 'Dot is a BT portable speaker with features like BT/ Micro SD /USB/TF card/AUX and comes with call function. It comes with an inbuilt microphone and FM radio. Apart from offers a complete handsfree experience and it comes with a rechargeable lithium battery.', 'ZEBRONICS DOT BLUETOOTH SPEAKER.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(541, 'ZEBRONICS EM880 EARPHONE', '200-275', 'ZEB-EM880 is out to impress you. It is an in-ear earphone along with a built in mic. It is also known for passive noise cancellation. It is ultra light and has dual modes for smartphone and feature phone. It has a long and strong cable for longer usage.', 'ZEBRONICS EM880 EARPHONE.webp', 2, 7, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(542, 'ZEBRONICS EM900 EARPHONE', '200-275', 'ZEB-EM900 are black wired earphones with a call button. They have a deep base to enhance your music experience and come with a 10mm driver and a mic. It also has a dual mode to easily switch between smartphone and feature phone and comes with a long lasting cable.', 'ZEBRONICS EM900 EARPHONE.jpg', 2, 7, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(543, 'ZEBRONICS ETERNITY BLUETOOTH HEADPHONE', '2000-2400', 'The comfy BT headphone have everything in them - the premium looks, the finish and the features. The ear cup comes with an aluminium finish, the extra soft ear cushion is very soft and gentle on the ears.', 'ZEBRONICS ETERNITY BLUETOOTH HEADPHONE.jpg', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(544, 'ZEBRONICS FIT100 FITNESS BAND', '1414-1800', 'It comes with a dedicated iOS and Android App which beautifully displays your fitness goals and everyday activity', 'ZEBRONICS FIT100 FITNESS BAND.webp', 2, 21, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(545, 'ZEBRONICS FIT500 FITNESS BAND', '2000-2300', 'The lifestyle-changing fitness band, with a sedentary reminder and BT option, works with iOS 7.1 and above, and Android 4.1 and above. This impressive fitness wearable also boasts of anti-lost alert feature.', 'ZEBRONICS FIT500 FITNESS BAND.jpg', 2, 21, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(546, 'ZEBRONICS GROOVE BLUETOOTH SPEAKER', '700-950', 'Zeb-Groove is a BT portable speaker with features like BT/USB/TF card/AUX and it has an inbuilt microphone. It has an inbuilt radio and comes with a rechargeable lithium battery.', 'ZEBRONICS GROOVE BLUETOOTH SPEAKER.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(547, 'ZEBRONICS HERO BLUETOOTH SPEAKER', '400-576', 'Hero is a BT portable speaker which comes with multiple connectivity options like BT. This speaker has a call function option and has li polymer battery. It has a suction cup with a rubber finish', 'ZEBRONICS HERO BLUETOOTH SPEAKER.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(548, 'ZEBRONICS  ICON BLUETOOTH HEADSET', '725-950', 'Sleeved cable. 2A current. USB type C port. USB 2.0. Charge plus sync and 1 meter. 1 year warranty', 'ZEBRONICS  ICON BLUETOOTH HEADSET.jpg', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(549, 'ZEBRONICS INFINITY SMART BLUETOOTH SPEAKER', '500-650', 'Infinity smart is a BT speaker with features like BT/ Micro SD /USB/TF card/AUX and comes with call function. It comes with an inbuilt microphone and FM radio. Apart from offers a complete handsfree experience and it comes with a rechargeable lithium battery.', 'ZEBRONICS INFINITY SMART BLUETOOTH SPEAKER.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(551, 'ZEBRONICS KNIGHT BLUETOOTH SPEAKER', '1000-1250', 'Knight is a BT portable speaker which has a supreme fabric finish. It has multi-connectivity options like BT/ USB/Micro SD it comes with AUX support and call function.', 'ZEBRONICS KNIGHT BLUETOOTH SPEAKER.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(552, 'ZEBRONICS MAESTRO BLUETOOTH SPEAKER', '1170-1350', 'Maestro is a big sized portable BT speaker with a fabric finish. It has multi-connectivity options like BT/USB/ Micro SD and all has a call function feature along with inbuilt radio. Available in orange/ black/white and brown this piece comes with a detachable stand is a head turner at any party.', 'ZEBRONICS MAESTRO BLUETOOTH SPEAKER.webp', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(553, 'ZEBRONICS MC12500 POWER BANK', '1400-1750', 'The ZEB-MC12500 is sleek, compatible and stylish power bank with a capacity of 12500mAh. It comes with 2 USB ports and maximum output of 2.1 A. It comes with a built-in LED torch to back you up in emergency and it is overall good finish is a statement by itself.', 'ZEBRONICS MC12500 POWER BANK.jpg', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(554, 'ZEBRONICS MC13200 POWER BANK', '1700-1900', 'ZEB-MC13200 is a compact power bank with a 13200mAh capacity. It comes with 2 USB ports and a max output of 2.1A. It also doubles up as an LED torch during emergencies', 'ZEBRONICS MC13200 POWER BANK.jpg', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(555, 'ZEBRONICS MC15000D POWER BANK', '1800-2200', 'ZEB MC15000 D is a sleek, compact and is high on style with a black finish and a capacity of 15000mAh. It comes with 2 USB ports and a maximum output of 2.1A. It has an LED torch, for easy accessibility.', 'ZEBRONICS MC15000D POWER BANK.jpg', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(556, 'ZEBRONICS MC6000 POWER BANK', '850-1050', 'ZEB-MC6000 is a stylish power bank with 6000 mAh and comes with two USB ports. It has an LED indicator for power indication and comes with an LED light which is very handy.', 'ZEBRONICS MC6000 POWER BANK.png', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(557, 'ZEBRONICS MOKSHA EARPHONE', '550-750', 'Moksha is a wired in ear type of earphone that comes with a 3.5mm jack which is compatible with mobile/tablet. It comes with a call button and a mic. It has a Tangle free, strong and long lasting cable for long usage.', 'ZEBRONICS MOKSHA EARPHONE.jpg', 2, 7, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(558, 'ZEBRONICS NOBLE BLUETOOTH SPEAKER', '450-675', 'Noble portable BT speakers are high on sound and style. It is compatible with Micro SD Card/AUX input and you can stream music wirelessly through BT.', 'ZEBRONICS NOBLE BLUETOOTH SPEAKER.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(559, 'ZEBRONICS PASSION BLUETOOTH SPEAKER', '550-750', 'Passion is a lightweight portable BT speaker which has a fabric finish. It has AUX function and supports Micro SD card. It has a built-in FM radio function along with a call function.', 'ZEBRONICS PASSION BLUETOOTH SPEAKER.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(560, 'ZEBRONICS PG10000 POWER BANK', '1250-1500', 'The ZEB PG10000 is a compact power bank with a 10000mAh capacity. It comes with 2 USB ports and has an LED indicator display. It also has an LED torch, which can be used during an emergency.', 'ZEBRONICS PG10000 POWER BANK.jpg', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(561, 'ZEBRONICS PG20000D POWER BANK', '2500-2900', 'Zeb-PG20000D is a 20000 mAh power bank with fast charge feature. It comes with a digital display and has 2 USB outputs along with one type C and micro USB input. This is a heavy duty power bank that can charge your phone doubly faster.', 'ZEBRONICS PG20000D POWER BANK.jpg', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(562, 'ZEBRONICS PG20000PD POWER BANK', '2500-2900', 'ZEB-PG20000PD Power Bank comes with a capacity of 20000mAh with informative digital display with 2 USB output along with one Type C and Micro USB input. It has a fast charge feature to charge up your device even more quick.', 'ZEBRONICS PG20000D POWER BANK.jpg', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(563, 'ZEBRONICS PG4000 POWER BANK', '600-750', 'This sleek 4000mAh power bank has two USB ports, which can help charge two devices at the same time, it had an LED indicator when any device is attached and comes in an attractive gold/silver finish.', 'ZEBRONICS PG4000 POWER BANK.png', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(564, 'ZEBRONICS PG4000S1 POWER BANK', '800-1000', 'ZEB-PG4000S1 is a 4000 MAH power bank, it has a USB to charge up your device and it comes with over charge protection, over discharging protection, input short protection to keep you hassle free an interesting add on to this stylish power bank is that the handy suction cups behind the power bank, helps in attaching the power bank firmly onto your phone.', 'ZEBRONICS PG4000S1 POWER BANK.png', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(565, 'ZEBRONICS PG8000 POWER BANK', '1350-1630', 'Gold & Silver metal finish 8000 mAh Power Bank with 2 USB Charging Ports and LED Indicator for battery left.', 'ZEBRONICS PG8000 POWER BANK.jpg', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(566, 'ZEBRONICS PINE BLUETOOTH HEADSET', '650-900', 'Model Zebronics PINE Headset - BLACK Package. ', 'ZEBRONICS PINE BLUETOOTH HEADSET.jpg', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(567, 'ZEBRONICS PORTABLE BLUETOOTH SOUND BAR (ASTRA)', '2300-2550', 'Zebronics Zeb-Astra Portable BT Sound bar with SD, USB, FM, AUX, Mic, LED Display & Remote Control', 'ZEBRONICS PORTABLE BLUETOOTH SOUND BAR (ASTRA).jpg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(568, 'ZEBRONICS PORTABLE BLUETOOTH SPEAKER (OLIVER)', '2200-2500', 'Get more out of your smartphone entertainment with Oliver speaker, which comes with elevated stand for smartphone that can create perfect ambience to binge watch episodes of your favourite shows or movies.', 'ZEBRONICS PORTABLE BLUETOOTH SPEAKER (OLIVER).jpg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(569, 'ZEBRONICS PRISM BLUETOOTH SPEAKER', '1800-2200', 'Prism is a wireless speaker with connectivity options like SD card/ BT/AUX. It has Multi-color LED light which comes in dual mode automatic and manual mode which truly brings in a rather quirky feel to your room', 'ZEBRONICS PRISM BLUETOOTH SPEAKER.webp', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(570, 'ZEBRONICS RAGA BLUETOOTH HEADPHONE', '750-950', 'Raga is a wireless headphone that comes with deep bass and has a 40 mm drive compatible with mobile phone/tablet. It supports TF card, comes with media control buttons BT, Mic, and an inbuilt FM.', 'ZEBRONICS RAGA BLUETOOTH HEADPHONE.jpg', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(571, 'ZEBRONICS SAGA BLUETOOTH SPEAKER', '400-550', 'Saga is a compact portable BT speaker which can easily glide into a pocket. It supports USB & Micro SD card. It has call function and a built in FM radio', 'ZEBRONICS SAGA BLUETOOTH SPEAKER.webp', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(572, 'ZEBRONICS SHELL MULTIMEDIA SPEAKER', '250-330', 'Shell is a 2.0 multimedia speaker that is powered by USB and comes with a 3.5mm cable. It also has a volume controller.', 'ZEBRONICS SHELL MULTIMEDIA SPEAKER.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(573, 'Zebronics Smart Fitness Band ZEB-FIT450', '1200-1550', 'Support iOS 8.0 & Above / Android 4.4 & Above. Water resistant Yes (Not suitable for swimming or diving). Standby time 20-25 days. Charge time 1- 1.5 hours', 'Zebronics Smart Fitness Band _ZEB-FIT450_.jpg', 2, 21, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(574, 'Zebronics Smart Fitness Band ZEB-FIT650', '3000-3333', 'Zeb-Fit650 is a fitness band with a circular style. The fitness band has features like pedometer, heart rate monitor, calorie burnt, distance tracker, alarm, sedentary reminder, sleep monitor and so much more. Just strap up and start your fitness journey', 'Zebronics Smart Fitness Band _ZEB-FIT650_.jpg', 2, 21, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(575, 'ZEBRONICS SMART TIME200 SMART WATCH', '2100-2500', 'Smart Time 200 is a smartwatch has a 2.71 cms capacitive touch screen display. It supports a sim card, a micro SD card and has an inbuilt mic, speaker, camera, alarm clock and more. Apart from informing about who is calling, the watch gives notifications for SMS, Email and much more.', 'ZEBRONICS SMART TIME200 SMART WATCH.jpg', 2, 14, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(576, 'ZEBRONICS SPLASH', '1350-1600', 'Splash is a wireless speaker that easily fits into a palm. It comes with multi-connectivy options like BT/ AUX / USB / Micro SD / Built-in FM and Call Function.', 'ZEBRONICS SPLASH.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(577, 'ZEBRONICS  TS202 POWER SOCKET', '600-850', 'Input voltage : 110 - 250V Rated input current : 10 A Output power : 2500W Power sockets : 4 nos USB ports : 4 nos Power switch : 2 nos DC voltage for USB : 5V DC current for USB : 2.1 A Frequency : 50 - 60Hz Safe protect : Overload protector Cable length : 2 meters Material : ABS + fireproof material Plug standard : BS-546 (6 A) Product dimension : 117 x 148 x 88mm (HxWxD) Net. weight : 0.672kg', 'ZEBRONICS  TS202 POWER SOCKET.webp', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(578, 'ZEBRONICS VOGUE', '1000-1200', 'Zeb-Vogue is a boat like speaker which has dual drivers. It looks elegant and has multi-connectivity options like BT/USB/SD card/AUX. It also has a call function and comes with an FM radio too.', 'ZEBRONICS VOGUE.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(579, 'ZEBRONICS Wonder Bar Smart', '1800-2200', 'Zeb-Wonder bar smart is a portable BT speaker that comes with a remote control. It has multi-connectivity options like BT/USB/ Micro SD card/AUX and a call function too. It also comes with multi-color LED along with an inbuilt FM radio.', 'ZEBRONICS Wonder Bar Smart.jpg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(580, 'ZEBRONICS WONDERBAR BLUETOOTH SPEAKER', '1100-1350', 'Wonderbar is a sleek portable soundbar which comes with BT. Not only can one can stream music wirelessly through BT but it also has a 3.5mm AUX Jack. It can be mounted on any wall, keeping it easy and clutter-free. It has an inbuilt FM and it comes with a remote control.', 'ZEBRONICS WONDERBAR BLUETOOTH SPEAKER.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(581, 'ZEBRONICS ZAPPY', '900-1200', 'Zeb-Zappy is a wireless speaker that comes with a strap. It supports BT/Micro SD and has a call function. It has a camera shutter mode and comes with a compact design and strap for you to Zap it and make a move.', 'ZEBRONICS ZAPPY.png', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(582, 'ZEBRONICS ZEB LUNA', '954-1150', 'ZEB-Luna, a wireless speaker that comes with a sleek desk lamp. The speaker comes with multi-connectivity options, stream your music wirelessly or use microSD card/Aux port.', 'ZEBRONICS ZEB LUNA.jpg', 2, 18, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(583, 'ZEBRONICS MC4000 POWER BANK', '600-875', '4000 mAh Power Bank with single USB Charging Ports and LED Indicator for battery left.', 'Zebronics ZEB MC4000 Power BankA.jpg', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(584, 'ZEBRONICS ZEB ROVER', '1250-1500', 'Meet Rover, a wireless speaker whose mission is to quench your thirst, literally. It\'s a two in one product with a 400ML water bottle on one side and a wireless speaker that supports a Micro SD on another side. The bottle also comes with a compass and a cup for easy drinking.', 'ZEBRONICS ZEB ROVER.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(585, 'Zoook-AIRPOWER-B/W', '700-950', 'Zoook Induction Pad Black AirPower', 'ZK-AIRPOWER-B_W.jpg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(586, 'Zoook-AIRPOWER-PRO', '700-950', 'Zoook Induction Pad White AirPower Pro', 'ZK-AIRPOWER-PRO .jpg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(587, 'Zoook-ARSHIELD-C100', '225-375', 'Charge &Sync Cable Armor Shield C100', 'ZK-ARSHIELD-C100.jpg', 2, 8, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(588, 'Zoook-ARSHIELD-M100', '175-270', 'Charge &Sync Cable Armor Shield M100', 'ZK-ARSHIELD-M100.webp', 2, 8, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(589, 'Zoook-C-HD4K', '800-1100', 'Type-C to HDMI Adapter C-HD 4K', 'ZK-C-HD4K.jpg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09');
INSERT INTO `products` (`id`, `name`, `price`, `description`, `image`, `userId`, `productCategoryId`, `created_at`, `updated_at`) VALUES
(590, 'Zoook-C-HUBI4', '800-1200', 'Type-C Adapter C-Hub i4', 'ZK-C-HUBI4.jpg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(591, 'Zoook-C-HUBI5', '1100-1500', '5-in-1 USB C Hub C-Hub i5', 'ZK-C-HUBI5.png', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(592, 'Zoook-CHARGEMATE1', '400-600', '2.4 amp bis certified wall charger with 2 usb ports and a charging cable', 'ZK-CHARGEMATE1.jpg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(593, 'Zoook-CHARGEMATE3', '360-450', '2.4 amp bis certified wall charger with 2 usb ports and a charging cable', 'ZK-CHARGEMATE3.jpg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(594, 'Zoook-DAZZLER', '800-1000', 'Zoook Rocker Bluetooth Speaker Dazzler with Lamp', 'ZK-DAZZLER.jpg', 2, 18, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(595, 'Zoook-DIGIPAD', '450-500', 'Zoook Digi Pad', 'ZK-DIGIPAD.jpg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(596, 'Zoook-ZB-BTX4-N', '550-700', 'Zoook Headset ZB-BTX4', 'ZK-ZB-BTX4-N.png', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(597, 'Zoook-ZB-DOT', '2000-2350', 'Worlds Smallest Bluetooth Earbud', 'ZK-ZB-DOT.jpg', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(598, 'Zoook-ZB-ELECTRA', '1500-1800', 'Zoook Bluetooth Headphone ZB-Electra', 'ZK-ZB-ELECTRA.jpg', 2, 4, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(599, 'Zoook-ZB-JAZZDUO-N', '1600-1800', '2 in 1 Bluetooth Headphone ( Headphone+ Speaker) Supports Mobile App', 'ZK-ZB-JAZZDUO-N.jpg', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(600, 'Zoook-ZB-PKT-DYNAMO', '1400-1600', 'Bluetooth Portable Speaker ZB-Dynamo', 'ZK-ZB-PKT-DYNAMO.png', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(601, 'Zoook-ZB-RETRACT', '2500-2700', 'Zoook Bluetooth Headset ZB-Retract', 'ZK-ZB-RETRACT.jpg', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(602, 'Zoook-ZB-ROCKER', '900-1200', 'Zoook Bluetooth Speaker ZB-ROCKERwith FM ( ROCKER 1)', 'ZK-ZB-ROCKER.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(603, 'ZK-ZB-ROCKPLUSH', '4000-4500', 'Zoook Bluetooth Speaker with NFC ZB-Rocker Plush', 'ZK-ZB-ROCKPLUSH.jpg', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(604, 'Zoook-ZB-ROCKRVIBES / ZK-ZBRKRVIBES-N', '2700-3300', 'Zoook truewireless earphones', 'ZK-ZB-ROCKRVIBES _ ZK-ZBRKRVIBES-N.jpg', 2, 5, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(605, 'Zoook-ZB-ROCKTWPODS / ZK-ZBRKTWPODS-B', '3000-4000', 'True Wireless Bluetooth Earbuds TWS White', 'ZK-ZB-ROCKTWPODS _ ZK-ZBRKTWPODS-B.jpg', 2, 7, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(606, 'Zoook-ZF-AUXC', '200-250', 'Zoook Coiled Aux Cable ZF-AUXC', 'ZK-ZF-AUXC.png', 2, 8, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(607, 'Zoook-ZF-CU4P', '400-500', 'Car Charger with 4 USB Ports ZF-CU4P', 'ZK-ZF-CU4P.jpg', 2, 35, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(608, 'Zoook-ZF-DENIM-M', '500-700', 'Universal Charge & Sync Cable-ZF-Denim (Micro)', 'ZK-ZF-DENIM-M .png', 2, 8, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(609, 'Zoook-ZF-POSH', '450-550', '2 in 1 cable for iphone and android ( For both android and apple)', 'ZK-ZF-POSH.jpg', 2, 8, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(610, 'Zoook-ZF-STATION1', '3000-3300', 'Zoook 3 Port USB Charging Station ZF-Charge Station 1', 'ZK-ZF-STATION1 .jpg', 2, 19, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(611, 'Zoook-ZMT-CMV', '250-360', 'Magnetic car mobile holder', 'ZK-ZMT-CMV.jpg', 2, 35, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(612, 'Zoook-ZP-PBS10-R', '1800-2000', 'Zoook Rocker Power Bank Polymer 10000mAh ZP-PBS10 -Polymer', 'ZK-ZP-PBS10-R.jpg', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(613, 'Zoook-ZP-PBS10A', '2100-2450', 'Polymer 10000mAh Powermate 1 with 1 USB O/P & 1 Micro & 1 C- Type I/P', 'ZK-ZP-PBS10A.png', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(614, 'Zoook-ZP-PBS10B', '2500-2700', 'Polymer 10000mAh Powermate2 with 2 USB O/P & 1 Micro & 1 C- Type I/P', 'ZK-ZP-PBS10B.png', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(615, 'Zoook-ZP-PBS10C', '1800-2200', 'Zoook Rocker Power Bank with LED Display 10000mAh ZPPBS10C - Polymer', 'ZK-ZP-PBS10C.png', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(616, 'Zoook-ZP-PBS10E', '2000-2200', 'WORLD\'S SMALLEST CARD SIZE FAST CHARGING POWER BANK -Polymer', 'ZK-ZP-PBS10E.jpg', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(617, 'Zoook-ZP-PBS10F', '2100-2400', 'Wireless charging power bank- Polymer', 'ZK-ZP-PBS10F.jpg', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(618, 'Zoook-ZP-PBS10H-BL / ZK-ZPPBS10H-G', '1800-2300', 'Zoook Mobile Battery Charger for Mobile 10000 mAh - Polymer. Available in Black and Blue', 'ZK-ZP-PBS10H-BL_ZK-ZPPBS10H-G.jpg', 2, 6, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(619, 'Zoook-ZS-ISMART', '2999-3400', 'Zoook Rocker Fitness Band ZS-iSmart', 'ZK-ZS-ISMART.png', 2, 14, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(620, 'Zoook-ROCKSTAR-B', '1350-1500', 'Zoook Bluetooth Speaker Rockstar', 'Zoook Bluetooth Speaker Rockstar.webp', 2, 3, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(621, 'Zoook-ZM-BASS-330', '400-500', 'Zoook Earphone with Mic Bass Monster 330', 'Zoook Earphone with Mic Bass Monster 330.jpg', 2, 7, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(622, 'Zoook-ZM-RKSYMPHONY', '900-1100', 'Zoook Earphone with Mic ZM-ROCKER Symphony', 'Zoook Earphone with Mic ZM-ROCKER Symphony.jpg', 2, 7, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(623, 'Zoook-ZM-RK-HARMONY', '500-600', 'Zoook Earphone withMic ZM-Rocker Harmony', 'Zoook Earphone withMic ZM-Rocker Harmony.jpg', 2, 7, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(624, 'Zoook-PANACHE', '400-500', 'Zoook Wired Earphone with Mic Panache', 'Zoook Wired Earphone with Mic Panache.jpg', 2, 7, '2022-03-28 08:08:09', '2022-03-28 08:08:09'),
(625, 'PUMA ESN Polo- T-Shirt', '750-900', 'PUMA ESN Polo Grey and Navy Blue/ Black,  Red/White. 60%ctn 40%ply - circular knitted; pique; 220gsm', 'aparel1.webp', 2, 37, '2022-03-30 06:30:55', '2022-03-30 06:30:55'),
(626, 'PUMA ESS Pique Tipping Polo', '750-950', '60% cotton 40% ply - circular knitted; pique; 220gsm. Sodalite (White Tipping), Peacoat (White Tipping), Black (Maroon Tipping). Red (White Tipping)White (Sodalite Blue Tipping). Grey (Black Tipping)', 'aparel2.webp', 2, 37, '2022-03-30 06:30:55', '2022-03-30 06:30:55'),
(627, 'PUMA Train Polo', '600-800', '100% polyester pique; 170gsm. White / Peacoat. Peacoat / White Sodalite / White. Black / Grey', 'aparel3.webp', 2, 37, '2022-03-30 06:30:55', '2022-03-30 06:30:55'),
(628, 'PUMA Dry Cell DEZIRE Polo', '700-900', '100% polyester pique; 170gsm Black/Steelgrey. Peacoat/White. White/Steelgrey', 'aparel4.jpg', 2, 37, '2022-03-30 06:30:55', '2022-03-30 06:30:55'),
(629, 'Puma Woven Track Suit', '3000-3600', '100% polyester-poplin-WR: PFC-free; 85.00 GSM Peacoat', 'aparel6.jpg', 2, 38, '2022-03-30 06:30:55', '2022-03-30 06:30:55'),
(630, 'Puma Woven Track Jacket', '2500-2900', '100% polyester-poplin-WR: PFC-free; 85.00 GSMPeacoat. Black (02)', 'aparel7.jpg', 2, 39, '2022-03-30 06:30:55', '2022-03-30 06:30:55'),
(631, 'PUMA Dry Cell Team ESS Tee', '700-860', 'Essential Tee - 100% polyester interlock. 160gsm White / Red Royal / Blue / Navy Blue/ Black', 'aparel5.jpg', 2, 37, '2022-03-30 06:30:55', '2022-03-30 06:30:55'),
(632, 'Puma Sweat Jacket', '2500-2700', 'Black / Grey / Navy Blue French Terry 280 GSM', 'aparel8.jpg', 2, 40, '2022-03-30 06:30:55', '2022-03-30 06:30:55'),
(633, 'Collar Cotton Arrow T-Shirts', '850-1000', 'White with red & blue tipping -Grey with red and white tipping -Navy blue with red and white tipping-Royal blue with white and red tipping -Black with red and white tipping -white with red and blue tipping', 'aparel10.png', 2, 37, '2022-03-30 06:30:55', '2022-03-30 06:30:55'),
(634, 'Adidas Self Design Polo T-Shirt', '800-1000', '100% Polyester Made with underarm inserts to allow a natural range of motion, this slim-fit shirt has a Collar neck.', 'aparel9.jpg', 2, 37, '2022-03-30 06:30:55', '2022-03-30 06:30:55'),
(635, 'Arrow Polo T-Shirts', '900-1100', 'Black-grey-light blue-royal blue -red Cotton and regular fit', 'aparel11.jpg', 2, 37, '2022-03-30 06:30:55', '2022-03-30 06:30:55'),
(636, 'Arrow sleeveless jacket', '2100-2500', 'Black,Polyster, regular fit.', 'aparel12.jpg', 2, 41, '2022-03-30 06:30:55', '2022-03-30 06:30:55'),
(637, 'Arrow quilted jacket', '2500-2700', 'Arrow Black men\'s quilted jacket', 'aparel13.png', 2, 41, '2022-03-30 06:30:55', '2022-03-30 06:30:55'),
(638, 'Men Cotton Flying Machine', '600-700', 'Men Cotton Flying Machine T Shirt Navy Blue With Red Tipping/Red with navy blue tipping/Grey with black tipping/Navy blue with white tipping/Navy blue with red tipping', 'aparel14.jpg', 2, 37, '2022-03-30 06:30:55', '2022-03-30 06:30:55'),
(639, 'US Polo sleeveless jacket', '2200-2500', 'US Polo sleeveless jacket--Black/Navy blue.', 'aparel15.jpg', 2, 41, '2022-03-30 06:30:55', '2022-03-30 06:30:55'),
(640, 'US Polo Unisex Windcheater Jacket ( USPA)', '2400-2650', 'Navy blue with red/Black with red/Black with white- Regular fit', 'aparel16.jpg', 2, 41, '2022-03-30 06:30:55', '2022-03-30 06:30:55'),
(641, 'US Polo sweatshirt', '2000-2250', 'US Polo sweatshirt Black/Navy blue/Grey.', 'aparel17.jpg', 2, 42, '2022-03-30 06:30:55', '2022-03-30 06:30:55'),
(642, 'Collar Cotton U S Polo T-Shirts', '800-1000', 'Grey malenga/jade green/pista green /Bottle green/Nectarine/Blue atoll/Red /maroon/Orange/White/Black/charcoal green/Navy blue.', 'aparel18.jpg', 2, 37, '2022-03-30 06:30:55', '2022-03-30 06:30:55'),
(643, 'Awg t-shirt super bio', '350-500', 'Super bio,180 GSM,Navy blue/Charcoal/Red/Yellow/Royal blue/Light blue', 'aparel19.jpg', 2, 37, '2022-03-30 06:30:55', '2022-03-30 06:30:55'),
(644, 'Awg t-shirt I-Run', '350-500', '160 GSM,Red/Green/Black/Drak grey/Royal blue/Navy blue /White', 'aparel21.webp', 2, 37, '2022-03-30 06:30:55', '2022-03-30 06:30:55'),
(645, 'Awg t-shirt dryfit', '299-399', '140 GSM,White/Royal blue/Navy blue/black /Red/Orange/Yellow.', 'aparel20.jpg', 2, 37, '2022-03-30 06:30:55', '2022-03-30 06:30:55'),
(646, 'Awg t-shirt Pop-R/N', '375-550', '180 GSM,/Black/Drak grey/Royal blue/White', 'aparel22.jpg', 2, 37, '2022-03-30 06:30:55', '2022-03-30 06:30:55'),
(647, 'T-shirt super fastees', '450-550', '240 GSM,Navy blue/Charcoal/Red/Yellow/Royal blue/Light blue/White', 'aparel23.jpg', 2, 37, '2022-03-30 06:30:55', '2022-03-30 06:30:55'),
(648, 'Awg t-shirt Green polo', '450-550', '230-240 GSM,Red+white/Royal blue+white/Charcoal+white/Navy blue+white/Black+Red/White+royal blue.', 'aparel24.jpg', 2, 37, '2022-03-30 06:30:55', '2022-03-30 06:30:55'),
(649, 'Awg t-shirt Solid  polo', '400-500', '230-240 GSM,Red/white/Royal blue/Charcoal/Navy blue/Black+Red/+royal blue.', 'aparel25.jpg', 2, 37, '2022-03-30 06:30:55', '2022-03-30 06:30:55'),
(650, 'Awg t-shirt Crackle polo', '400-500', 'Micro poly-Red/white/Charcoal/Navy blue/Black/royal blue.', 'aparel26.webp', 2, 37, '2022-03-30 06:30:55', '2022-03-30 06:30:55'),
(651, 'Awg t-shirt GOLFITO', '475-550', 'Steel grey/Ash grey/Navy blue 100% polyster fabric', 'aparel27.jpg', 2, 37, '2022-03-30 06:30:55', '2022-03-30 06:30:55'),
(652, 'Awg t-shirt TMY POLO', '400-500', '230-240 GSM,100% Cotton,Red/white/Royal blue/Charcoal/Navy blue/Black+Red/+royal blue.', 'aparel28.webp', 2, 37, '2022-03-30 06:30:55', '2022-03-30 06:30:55'),
(653, 'Awg jacket GRINDLE', '750-950', '400 GSM, Black and Royal blue', 'aparel29.png', 2, 41, '2022-03-30 06:30:55', '2022-03-30 06:30:55'),
(654, 'Awg jacket High neck', '800-1000', '401 GSM, Navy blue +Black+green/Black + red/Grey +Black.', 'aparel30.jpg', 2, 41, '2022-03-30 06:30:55', '2022-03-30 06:30:55'),
(655, 'Awg jacket - JKT 3', '800-1000', '450 GSM -Black.', 'aparel31.png', 2, 41, '2022-03-30 06:30:55', '2022-03-30 06:30:55'),
(656, 'Awg jacket - JKT 4', '800-1000', '451 GSM -Black.', 'aparel32.png', 2, 41, '2022-03-30 06:30:55', '2022-03-30 06:30:55'),
(657, 'Awg jacket -Torch jacket', '750-950', 'Black,Jacket,Ziped,Casual and sport wear.', 'aparel33.png', 2, 41, '2022-03-30 06:30:55', '2022-03-30 06:30:55'),
(658, 'Awg jacket -Sliver jacket', '650-850', '300 GSM,Black and Charcoal,Maroon.', 'aparel34.jpg', 2, 41, '2022-03-30 06:30:55', '2022-03-30 06:30:55'),
(659, 'Awg jacket -Spectra jacket', '600-800', '301 GSM,Black and Grey.', 'aparel35.jpg', 2, 41, '2022-03-30 06:30:55', '2022-03-30 06:30:55'),
(660, 'Blackberrys POLO T-SHIRTS', '800-1000', 'Charcoal grey with white tipping/ Red with black tipping/ Royal blue with black tipping/Black with maroon tipping/Grey with black tipping/Navy blue with red tipping/', 'aparel36.webp', 2, 37, '2022-03-30 06:30:55', '2022-03-30 06:30:55'),
(661, 'Blackberrys Cotton Polo', '700-800', 'Pink,Yellow,Blue,White,Light blue,Royal blue,Grey,Blue.', 'aparel37.jpg', 2, 37, '2022-03-30 06:30:55', '2022-03-30 06:30:55'),
(662, 'Blackberrys FORMAL SHIRTS', '850-1050', 'CUMMINS WHITE,CUMMINS SKY BLUE', 'aparel38.webp', 2, 44, '2022-03-30 06:30:55', '2022-03-30 06:30:55'),
(663, 'Blackberrys FORMAL SHIRTS', '850-1050', 'CACKPINE WHITE, CACKPINE GREY, CACKPINE SKY BLUE, CACKPINE DARK BLUE.', 'aparel39.webp', 2, 44, '2022-03-30 06:30:55', '2022-03-30 06:30:55'),
(664, 'Blackberrys Belt', '900-1200', 'Reversible Leather Belt In Black Brown', 'aparel40.jpg', 2, 43, '2022-03-30 06:30:55', '2022-03-30 06:30:55'),
(665, 'Anti Skid Desk Mat', '400-500', ' Lt Gray, Dk gray', 'desktop1.jpg', 2, 45, '2022-03-30 06:52:37', '2022-03-30 06:52:37'),
(666, 'Photo Frame with Memo Board Mark N Pix', '450-550', 'silver', 'desktop2.jpg', 2, 46, '2022-03-30 06:52:37', '2022-03-30 06:52:37'),
(667, 'Photo Clock Time Frame', '400-450', 'Silver', 'desktop3.jpg', 2, 46, '2022-03-30 06:52:37', '2022-03-30 06:52:37'),
(668, 'Foldable Business Card Holder Carduo', '125-175', 'Black', 'desktop5.jpg', 2, 47, '2022-03-30 06:52:37', '2022-03-30 06:52:37'),
(669, 'Photo Clock Time Frame 2.0', '350-450', 'Silver', 'desktop4.jpg', 2, 46, '2022-03-30 06:52:37', '2022-03-30 06:52:37'),
(670, 'LCD Alram clocks Arc', '300-350', 'Blue / Red', 'desktop6.jpg', 2, 48, '2022-03-30 06:52:37', '2022-03-30 06:52:37'),
(671, 'Wooden Table Clock Viking', '500-600', 'Brown', 'desktop7.jpg', 2, 48, '2022-03-30 06:52:37', '2022-03-30 06:52:37'),
(672, 'RFID Card Holder Guard', '375-450', 'UG-CH04 Black, Brown', 'desktop8.jpg', 2, 47, '2022-03-30 06:52:37', '2022-03-30 06:52:37'),
(673, 'Foldable Memory Foam Travel PillowBuddy 2.0', '600-700', 'Grey', 't1.jpg', 2, 49, '2022-03-30 07:14:40', '2022-03-30 07:14:40'),
(674, 'Foldable Umbrella with Eva Case', '500-600', 'Blue, Green', 't2.jpg', 2, 49, '2022-03-30 07:14:40', '2022-03-30 07:14:40'),
(675, 'Stainless Steel Bottle', '550-650', 'Hot n Cold Bottle (500ml) Cola, Blue, Grey', 'dw3.jpg', 2, 50, '2022-03-30 08:31:26', '2022-03-30 08:31:26'),
(676, 'Stainless Steel Hot n Cold Bottle', '550-650', 'Black, Blue, Red, White, 500ml,Ultra', 'dw1.jpg', 2, 50, '2022-03-30 08:31:26', '2022-03-30 08:31:26'),
(677, 'Stainless Steel Hot n Cold Bottle', '500-600', 'Stainless Steel bottle, 500ml Ultra, Woody', 'dw2.jpg', 2, 50, '2022-03-30 08:31:26', '2022-03-30 08:31:26'),
(678, 'Stainless Steel bottle', '550-650', 'Hot n Cold Bottle (750ml) Cola, Grey', 'dw4.jpg', 2, 50, '2022-03-30 08:31:26', '2022-03-30 08:31:26'),
(679, 'Stainless Steel Bottle', '660-770', 'Hot n Cold Bottle (500ml) Zen - 500 Black, White, Turq. Green', 'dw5.jpg', 2, 50, '2022-03-30 08:31:26', '2022-03-30 08:31:26'),
(680, 'Stainless Steel Bottle', '800-900', 'Hot n Cold Bottle (750ml) Black, White, Turq. Green', 'dw6.jpg', 2, 50, '2022-03-30 08:31:26', '2022-03-30 08:31:26'),
(681, 'Stainless Steel Bottle', '650-750', 'Hot n Cold Bottle (500ml) Camper, Black', 'dw7.jpg', 2, 50, '2022-03-30 08:31:26', '2022-03-30 08:31:26'),
(682, 'Stainless Steel Bottle', '650-750', 'Hot n Cold Bottle (500ml)Torino, black', 'dw8.jpg', 2, 50, '2022-03-30 08:31:26', '2022-03-30 08:31:26'),
(683, 'Stainless Steel Bottle', '550-650', 'Hot n Cold Bottle (500ml) Gothic, Blue, Red', 'dw9.jpg', 2, 50, '2022-03-30 08:31:26', '2022-03-30 08:31:26'),
(684, 'Stainless Steel Bottle', '550-650', 'Stainless Steel Hot n Cold Bottle - 500ml (BPA FREE) Delta', 'dw10.jpg', 2, 50, '2022-03-30 08:31:26', '2022-03-30 08:31:26'),
(685, 'Stainless Steel 2-in-1 Bottle', '800-990', 'Hot n Cold Flask (800ml). Red, Orange, Green, Blue', 'dw11.jpg', 2, 50, '2022-03-30 08:31:26', '2022-03-30 08:31:26'),
(686, 'Stainless Steel Sports Bottle', '405-475', '750ml Electra Flip, Black, Blue, Red', 'dw14.jpg', 2, 50, '2022-03-30 08:31:26', '2022-03-30 08:31:26'),
(687, 'Stainless Steel 2-in-1 Bottle', '700-800', 'Hot n Cold ,Flask (800ml) Red, Orange, Green, Blue', 'dw12.jpg', 2, 50, '2022-03-30 08:31:26', '2022-03-30 08:31:26'),
(688, 'Stainless Steel Bottle', '400-495', 'Stainless Steel water bottle with Silicon Grip (850ml) Gripo Black, Silver, Blue', 'dw15.jpg', 2, 50, '2022-03-30 08:31:26', '2022-03-30 08:31:26'),
(689, 'Stainless Steel  Bottle', '425-490', 'Red, Blue, Black, White, SilverSports Bottle - 750ml, Sigma', 'dw13.jpg', 2, 50, '2022-03-30 08:31:26', '2022-03-30 08:31:26'),
(690, 'Stainless Steel Bottle', '475-575', 'Silicon Grip (750ml). Silica, Blue, Grey, Orange, Silver', 'dw16.jpg', 2, 50, '2022-03-30 08:31:26', '2022-03-30 08:31:26'),
(691, 'Stainless Steel Sports Bottle', '450-550', 'Capacity :1000ml (BPA FREE). Omega, Black, Blue, Red', 'dw17.jpg', 2, 50, '2022-03-30 08:31:26', '2022-03-30 08:31:26'),
(692, 'Metal Sports Bottle', '425-500', '750ml (BPA FREE) Matte, Silver (blue, red)', 'dw19.jpg', 2, 51, '2022-03-30 08:31:26', '2022-03-30 08:31:26'),
(693, 'Sports Bottle', '300-400', '(650ml) Knight, Black, Red, Blue', 'dw18.jpg', 2, 50, '2022-03-30 08:31:26', '2022-03-30 08:31:26'),
(694, 'Stainless Steel Bottle', '425-470', 'Stainless Steel (750ml) Curvy, Copper', 'dw20.jpg', 2, 50, '2022-03-30 08:31:26', '2022-03-30 08:31:26'),
(695, 'Stainless Steel Bottle', '495-550', 'Stainless Steel bottle, (750ml) Magnum, Black, Red, Blue', 'dw21.jpg', 2, 50, '2022-03-30 08:31:26', '2022-03-30 08:31:26'),
(696, 'Stainless Steel Bottle', '495-590', 'Stainless Steel Bottle capacity (1000ml) Magnum, Red', 'dw22.jpg', 2, 50, '2022-03-30 08:31:26', '2022-03-30 08:31:26'),
(697, 'Tritan Sports Bottle', '425-480', 'Sports bottle (780ml) Elite, Red, Black', 'dw23.jpg', 2, 52, '2022-03-30 08:31:26', '2022-03-30 08:31:26'),
(698, 'Tritan Sports Bottle', '450-550', 'Sports bottle, 800ml (BPA FREE), Blue/Gray, Red/Gray, Green/Gray', 'dw24.jpg', 2, 52, '2022-03-30 08:31:26', '2022-03-30 08:31:26'),
(699, 'Tritan Sports Bottle Flipper', '450-550', 'Sports bottle, (945ml) Red, Blue, Black', 'dw25.jpg', 2, 52, '2022-03-30 08:31:26', '2022-03-30 08:31:26'),
(700, 'Stainless Steel Double Wall Can', '400-475', 'Stainless Steel Double wall can, (350ml), White, Black', 'dw26.jpg', 2, 50, '2022-03-30 08:31:26', '2022-03-30 08:31:26'),
(701, 'Sports Bottle', '400-500', 'Stainless Steel Double Wall sports bottle, Red, 550ml, Crysta', 'dw27.jpg', 2, 50, '2022-03-30 08:31:26', '2022-03-30 08:31:26'),
(702, 'Stainless Steel Travel Mug', '425-500', 'Stainless Steel Travel Mug, Capacity : 470ml, Trendy, Dark Gray, Red', 'dw28.jpg', 2, 50, '2022-03-30 08:31:26', '2022-03-30 08:31:26'),
(703, 'Stainless Steel Travel Mug', '400-475', 'Double Wall SS Mug (500ML) Bristo, Bronze', 'dw29.jpg', 2, 54, '2022-03-30 08:31:26', '2022-03-30 08:31:26'),
(704, '2-in-1 Moblie Holder Sports Bottle (600ml)Mobilo', '450-550', 'White/Blue, Royal Blue', 'dw30.jpg', 2, 50, '2022-03-30 08:31:26', '2022-03-30 08:31:26'),
(705, 'Sports Bottle (470ml) Tristar', '360-450', 'White, Blue, Black', 'dw31.jpg', 2, 50, '2022-03-30 08:31:26', '2022-03-30 08:31:26'),
(706, 'Stainless Steel Mug (350ml) Steelo', '300-400', 'Blue, Black, White', 'dw32.jpg', 2, 54, '2022-03-30 08:31:26', '2022-03-30 08:31:26'),
(707, 'Stainless Steel Mug with Handle (350ml)Mont', '450-550', 'Red, Black, White', 'dw33.jpg', 2, 54, '2022-03-30 08:31:26', '2022-03-30 08:31:26'),
(708, 'Stainless Steel Mug with Handle (350ml)Tork 350', '450-550', 'Black, White', 'dw34.jpg', 2, 54, '2022-03-30 08:31:26', '2022-03-30 08:31:26'),
(709, 'Stainless Steel Mug with Handle (400ml) Vento', '400-500', 'Red, Blue, Black, White', 'dw35.jpg', 2, 54, '2022-03-30 08:31:26', '2022-03-30 08:31:26'),
(710, 'Borosil Vision Black Krip Glass', '500-650', 'Borosil Vision Black Krip Glass', 'dw36.jpg', 2, 55, '2022-03-30 08:31:26', '2022-03-30 08:31:26'),
(711, 'Borosil Wonder Water Jug', '1800-2000', 'Wonder Jug, is ideal to store water at home or offices or for outdoor travel for a bigger group. Its a saviour at time of water shortage. Its wide mouth makes its easy to clean and refill water.', 'dw37.jpg', 2, 56, '2022-03-30 08:31:26', '2022-03-30 08:31:26'),
(712, 'Borosil Neo Glass Bottle - Silver Lid 550ml', '350-450', 'Made of 100% borosilicate glass, the Neo Glass bottle keeps your water perfectly pure and 100% safe.', 'dw38.jpg', 2, 57, '2022-03-30 08:31:26', '2022-03-30 08:31:26'),
(713, 'Borosil Puro Neo Bottle Green 550ml', '350-450', 'Made of 100% borosilicate glass, the Puro Glass bottle keeps your water perfectly pure and 100% safe.', 'dw39.jpg', 2, 57, '2022-03-30 08:31:26', '2022-03-30 08:31:26'),
(714, 'Borosil Glassstrong Bottle Blue 450ml', '600-700', 'Made of borosilicate glass and are guaranteed to withstand high temperatures. Glass Strong bottles has a Glass Inside and Plastic outside. Double wall design with silicon grip allows for a dry and easy to grip surface.', 'dw40.jpg', 2, 57, '2022-03-30 08:31:26', '2022-03-30 08:31:26'),
(715, 'Borosil Trek Bottle 700ml', '800-900', 'Borosil Trek Bottle Black and Green. Keeps your drink hot and cold for 24 hours Insulated double wall vacuum with copper coating for maximum temperature retention 100% food grade and rust proof steel both inside and outside for safety, strength and durability (18/8 quality, Grade 304)', 'dw41.jpg', 2, 57, '2022-03-30 08:31:26', '2022-03-30 08:31:26'),
(716, 'Borosil Sportsip Bottle', '900-1000', 'Borosil Sportsip Bottle Black and Light blue  710ml', 'dw42.jpg', 2, 57, '2022-03-30 08:31:26', '2022-03-30 08:31:26'),
(717, 'Borosil Flair Flask (Blue)  500ml', '700-840', 'Borosil Flair Flask (Blue and Pink)  500ml', 'dw43.jpg', 2, 57, '2022-03-30 08:31:26', '2022-03-30 08:31:26'),
(718, 'Borosil Quartz Bolt Bottle', '695-750', 'Quartz Bolt Bottle 500ml', 'dw44.jpg', 2, 57, '2022-03-30 08:31:26', '2022-03-30 08:31:26'),
(719, 'Borosil Rose Bolt Bottle', '695-750', 'Borosil Rose Gold and sliver Bolt Bottle 500ml', 'dw45.jpg', 2, 57, '2022-03-30 08:31:26', '2022-03-30 08:31:26'),
(720, 'Borosil Trendy Bottle', '595-675', 'Borosil Cruise Bottle 600ml', 'dw46.webp', 2, 57, '2022-03-30 08:31:26', '2022-03-30 08:31:26'),
(721, 'Borosil Cruise Bottle', '600-675', 'Borosil Trendy Bottle-Light blue 600ml', 'dw47.webp', 2, 57, '2022-03-30 08:31:26', '2022-03-30 08:31:26'),
(722, 'Borosil Nova Bottle Stainless Steel', '725-825', 'Borosil Nova Bottle Stainless Steel 500ml', 'dw48.jpg', 2, 57, '2022-03-30 08:31:26', '2022-03-30 08:31:26'),
(723, 'Borosil Aqua Bottle', '800-900', 'Borosil Aqua Bottle', 'dw49.jpg', 2, 57, '2022-03-30 08:31:26', '2022-03-30 08:31:26'),
(724, 'Borosil Travelmate', '800-950', 'Borosil - Vacuum Insulated Hydra Travelmate Tea & Coffee Stainless Steel Travel Mug - Spill Proof - hot and Cold', 'dw50.jpg', 2, 57, '2022-03-30 08:31:26', '2022-03-30 08:31:26'),
(725, 'Slim Backpack', '800-1100', 'Navy, Lt Gray, DK Gray Slim Backpack ', 'b1.jpg', 2, 58, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(726, 'Urban gear Folding Backpack', '350-450', 'Black, Navy, Green, Gray, Blue Folding Backpack iPACy', 'b3.jpg', 2, 58, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(727, 'Business Bag', '1500-1800', 'Navy, Lt Gray, DK Gray Business Bag with Overnighter Weekender', 'b2.jpg', 2, 58, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(728, 'Folding Backpack Ipacy 2.0', '500-650', 'Dark Blue, Midnight Gray Multi pockets with 2 side pouch,  Lightweight with heavy volume', 'b5.jpg', 2, 58, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(729, 'Multipurpose Pouch', '275-350', 'Gray, Navy Multipurpose Pouch Multipack', 'b4.jpg', 2, 59, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(730, 'Folding Duffel BagDuflpac', '450-500', 'Adjustable carrying straps, Water resistant, Supports trolley handle', 'b6.jpg', 2, 60, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(731, 'Travel Digital Pouch Digipouch', '400-450', '5 elastic bands & 5 mesh pockets to hold gadgets,  Adjustable compartment to organize even heavy gadgets, Handle includes for easy carry, Zipper pullers for easy open or close. Dark Blue, Midnight Gray, Black', 'b8.jpg', 2, 59, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(732, 'Travel Digital Pouch, Digi pouch Compact', '350-425', 'Dark Blue, Midnight Gray,5 elastic bands & 5 mesh pockets to hold gadgets, water resistant.', 'b10.jpg', 2, 59, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(733, 'Folding Duffel Bag Duflpac Sport', '450-550', 'UG-TB14 Gray, Navy, Adjustable carrying straps, Water resistant, Premium nylon material.', 'b7.jpg', 2, 60, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(734, 'Travel Toiletry Pouch Carepac 2.0', '450-550', 'Dark Blue, Breathable mesh pockets, Hanging hook attached for easy usage, Zipper pullers for easy open or close,Wrist strap included.', 'b9.jpg', 2, 59, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(735, 'Multipurpose Passport & Mobile Cover Aviator', '450-550', 'Black, Brown -High quality faux leather, Comes with card slot, ticket slot & passport slot, Designed to hold travel & monetary essentials.', 'b14.jpg', 2, 61, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(736, 'Travel Digital Pouch Digi pouch Pro', '450-550', 'Dark Blue, Midnight Gray, 5 elastic bands & 5 mesh pockets to hold gadgets,Premium denim finish.', 'b11.jpg', 2, 59, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(737, 'Passport Cover Avion', '400-500', 'Black, Brown-High Quality faux leather,  Comes with card slot, ticket slot & passport slot.', 'b12.jpg', 2, 61, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(738, 'Passport Cover Avion Jr', '225-250', 'Black, Brown-Sleek & very stylish, Designed to hold travel & monetary essentials,.', 'b13.jpg', 2, 61, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(739, 'Travel Passport Case - Trvl pack', '450-500', 'Black, Navy- Designed to keep passport, tickets, card, money etc, Exterior back pocket for boarding pass, etc.', 'b15.jpg', 2, 61, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(740, 'Travel Passport Case - trvlpac Jr', '275-350', 'Navy, Black-Exterior back pocket for boarding pass, etc-Wrist strap included,Water resistant.', 'b16.jpg', 2, 61, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(741, 'Travel & Mobile CoverTycoon', '500-600', 'Black, Brown- Zip-up all your travel needs in one pouch,Deluxe zippered case, Cable of earphone organizer.', 'b17.jpg', 2, 61, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(742, 'Complete Organiser Pouch Champ', '650-800', 'Black, Brown-Zip-up all your important documents & accessories in this pouch, Mobile & pen holder provided, A5 Eco book included.', 'b18.jpg', 2, 59, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(743, 'Manicure Kit Manipac', '400-500', 'Brown - Contains nail buffer, nail file, tweezers, cuticle tool & nail clipper, Induces 6 heavy duty stainless steel grooming tools.', 'b19.jpg', 2, 59, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(744, 'BERLIN LAPTOP BAG', '2000-2250', 'COL 1. NAVY / COL 2. GREY/ COL 3. KHAKI-Canvas & Vegan Leather Laptop Bag,( CANVAS + VEGAN LEATHER )', 'b20.jpg', 2, 62, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(745, 'HARRIS LAPTOP BAG 16\'\'', '2000-2250', 'COL 1. NAVY / COL 2. GREY/ COL 3. KHAKI-Canvas & Vegan Leather Compact Laptop Bag,( CANVAS + VEGAN LEATHER )', 'b21.jpg', 2, 62, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(746, 'FRANKFURT LAPTOP BAG', '2200-2500', 'Canvas & Vegan Leather Laptop Bag (REF SAMSUNG ) COL 1. NAVY / COL 2. GREY/ COL 3. KHAKI ( CANVAS+ VEGAN LEATHER )', 'b22.jpg', 2, 62, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(747, 'CHRISTIAN LAPTOP BAG', '1500-1800', 'Vegan Leather Compact Laptop Bag COL 1. GREY / COL 2. BLACK / COL 3. BROWN-( VEGAN LEATHER )', 'b23.jpg', 2, 62, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(748, 'STEPHEN LAPTOP BAG', '1200-1400', 'Vegan Leather Laptop Bag COL 1. BLACK-( VEGAN LEATHER )', 'b24.png', 2, 62, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(749, 'BOSTON UNISEX SLING BAG', '800-1000', '( VEGAN LEATHER ) COL 1. GREY / COL 2. BLACK / COL 3. BROWN-sling bag', 'b25.jpg', 2, 63, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(750, 'MILAN SLING BAG', '800-1000', '( CANVAS+ VEGAN LEATHER ). COL 1. NAVY / COL 2. GREY/ COL 3. KHAKI', 'b26.jpg', 2, 63, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(751, 'OUTBACK MESSENGER BAG', '1200-1400', '( CANVAS + VEGAN LEATHER )COL 1. NAVY / COL 2. GREY/ COL 3. KHAKI', 'b27.jpg', 2, 64, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(752, 'STOCKHOLM MESSENGER BAG', '750-950', 'COL 1 - GREY(REF BOSE )  ( VEGAN LEATHER )', 'b28.jpg', 2, 64, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(753, 'PACIFIC LAPTOP SLEEVE', '1100-1300', '( CANVAS + VEGAN LEATHER ) WITH METAL ZIPPER CLOSURE. COL 1. NAVY / COL 2. GREY/ COL 3. KHAKI', 'b29.jpg', 2, 65, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(754, 'RETRO LAPTOP SLEEVE', '1000-1200', 'COL 1. NAVY / COL 2. GREY/ COL 3. KHAKI-Dimensions: 14 x 10 (inches),Vegan Leather.', 'b30.jpg', 2, 65, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(755, 'XAVIER LAPTOP SLEEVE', '1000-1200', 'COL 1. NAVY / COL 2. GREY/ COL 3. KHAKI-Dimensions: 14 x 10 (inches),Vegan leather & Canvas.', 'b31.jpg', 2, 65, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(756, 'CLASSIC LAPTOP SLEEVE', '750-950', 'COL 1 . BLACK / COL 2. NAVY / COL 3. TAN-Dimensions: 14 x 10 (inches),Vegan Leather.', 'b32.jpg', 2, 65, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(757, 'MANHATTAN LAPTOP SLEEVE', '800-1000', 'COL 1 . BLACK / COL 2. NAVY / COL 3. TAN- Vegan Leather. Dimensions: 14 x 10 (inches)', 'b33.jpg', 2, 65, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(758, 'CAMBRIDGE LAPTOP SLEEVE', '900-1100', 'COL 1 . BLACK / COL 2. NAVY / COL 3. TAN-Vegan Leather. Dimensions: 14 x 10 (inches)', 'b34.jpg', 2, 66, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(759, 'FOLIO LAPTOP SLEEVE', '750-950', 'COL 1 . BLACK / COL 2. NAVY-Vegan Leather. Dimensions: 14 x 10 (inches)', 'b35.jpg', 2, 65, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(760, 'OXFORD MULTI UTILITY DOPP KIT', '800-1000', 'COL 1. NAVY / COL 2. GREY/ COL 3. KHAKI (CANVAS+ VEGAN LEATHER )Vegan leather & Cotton Canvas', 'b36.jpg', 2, 66, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(761, 'ESSENTIAL MULTI UTILITY DOPP KIT', '750-950', 'COL 1 - GREY-( VEGAN LEATHER ) Vegan leather. Color: Grey / Tan', 'b37.jpg', 2, 66, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(762, 'DOMINIC DUFFLE BAG', '1400-1600', 'COL 1. GREY / COL 2. BLACK / COL 3. BROWN-( VEGAN LEATHER ) / PERFECT CABIN BAG', 'b38.jpg', 2, 67, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(763, 'DEXTER DUFFLE BAG', '1350-1500', 'COL 1. NAVY / COL 2. GREY/ COL 3. KHAKI-( VEGAN LEATHER ) / PERFECT CABIN BAG', 'b39.jpg', 2, 67, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(764, 'Blackberrys WALLETS', '1100-1300', 'Multi colors,BLACKBERRY BLACK AND BROWN WALLET', 'b40.jpg', 2, 75, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(765, 'Blackberrys EXECUTIVE LAPTOP BAGS', '2600-2800', 'BLACKBERRY LEATHER BAG-Premium Material Waterproof Construction,Plenty of Space & Padded Laptop Sleeve, Incredibly Stylish .', 'b41.jpg', 2, 62, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(766, 'Blackberrys Travel bag', '2700-2900', 'Travel bag  -tan This travelling bag is fully lined with very stylish handles that has strong weight lifting capacity due to three level re-enforcement.', 'b42.jpg', 2, 66, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(767, 'Blackberrys Sling bag', '2000-2200', 'Sling bag  -tan A slim silhouette and premium hardware makes this sling as beautiful as it is versatile. A just-right interior will keep your essentials at ease.', 'b43.jpg', 2, 63, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(768, 'Blackberrys Travel Kit', '900-1100', 'Easy access to the main compartment through the center zipper opening One quick access zippered pocket to secure your accessories Ample space to organize accessories.', 'b44.jpg', 2, 68, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(769, 'Blackberrys Backpack', '2000-2200', 'Laptop backpack black with green zip.Without Trolley, Original BLACKBERRY everyday backpacks/bags.', 'b45.jpg', 2, 58, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(770, 'Blackberrys Backpack', '2500-2700', 'Laptop backpack black with red zip. Bag Style Backpack Strap Adjustable -Unisex -Number Of Pockets -5 Without Trolley', 'b46.jpg', 2, 58, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(771, 'Blackberrys Travel bag', '1200-1400', 'Foldable Travel bag -sky blue-Unisex- Personalized Blackberry Products,', 'b47.jpg', 2, 66, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(772, 'Blackberrys Gym bag', '900-1100', 'Black with Yellow/Red/Green/Sky blue-Closure Type-Zipper, Zipper Type-Single Shape-Rectangle.', 'b48.jpg', 2, 69, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(773, 'Blackberrys Travel bag with shoe pocket', '1800-2000', 'Travel bag with shoe pocket, Material-Cotton Fabric, Number of Pockets-5.', 'b49.jpg', 2, 66, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(774, 'Blackberrys Travel bag', '1000-1200', 'Foldable Travel bag Blue  with grey. Travel Lightweight Waterproof Carry Luggage Bag', 'b50.png', 2, 66, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(775, 'Blackberrys Strolly bag', '3500-4000', 'Blackberrys Strolly bag -Blue Color Usage/Application, Travelling Pattern-Solid Wheel Material-Plastic.', 'b51.jpg', 2, 70, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(776, 'Blackberrys Laptop Strolly bag', '3000-3500', 'Laptop Strolly bag -black -Wheel Material-Plastic, Laptop Compatible, Trolley Support.', 'b52.jpg', 2, 70, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(777, 'Foldable Backpack', '300-400', 'Foldable backpack. Water resistant. Multiple pockets with 2 side pouch.', 'b53.jpg', 2, 58, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(778, '3 in 1 Bag', '1200-1600', '3 in 1 duffle, sling and laptop bag, premium polyester fabric, USB charging socket, luggage trolley holder.', 'b54.jpg', 2, 66, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(779, 'Laptop Sleeve LS 01 - Wblack', '400-550', 'The materials used to create these Felt Laptop Sleeves offer superior strength and a soft hand feel. These durable and lightweight, Felt Laptop Sleeves protect your favourite device from scratches, dints, dust, spills and scrapes and allows for easy transport.', 'b55.jpg', 2, 65, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(780, 'Laptop Sleeve LS 05-B02', '500-700', 'The materials used to create these Felt Laptop Sleeves offer superior strength and a soft hand feel. These durable and lightweight.', 'b56.jpg', 2, 65, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(781, 'Laptop Sleeve LS 08- Bgr', '400-525', 'The materials used to create these Felt Laptop Sleeves offer superior strength and a soft hand feel. These durable and lightweight.', 'b57.jpg', 2, 65, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(782, 'Laptop Sleeve LS 11 -W04', '450-575', 'The materials used to create these Felt Laptop Sleeves offer superior strength and a soft hand feel. These durable and lightweight.', 'b58.jpg', 2, 65, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(783, 'Laptop Bags LB 04B - LG04', '575-675', 'The materials used to create these Felt Laptop Sleeves offer superior strength and a soft hand feel. These durable and lightweight.', 'b59.jpg', 2, 62, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(784, 'Laptop Bags OHB 01 - Wprpl', '500-650', 'Bags are crafted with style so that you can look elegant and effortlessly.', 'b60.jpg', 2, 62, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(785, 'Hand Bag OHB 07 - LG04', '500-700', 'Bags are crafted with style so that you can look elegant and effortlessly.', 'b61.jpg', 2, 71, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(786, 'Hand Bag HB 011B -LG', '400-600', 'Bags are crafted with style so that you can look elegant and effortlessly.', 'b62.jpg', 2, 71, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(787, 'Hand Bag HB 014 - LG 012', '700-900', 'Bags are crafted with style so that you can look elegant and effortlessly.', 'b63.jpg', 2, 71, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(788, 'Backpack BP 06 - W07', '750-900', 'Bags are crafted with style so that you can look elegant and effortlessly.', 'b64.jpg', 2, 58, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(789, 'Backpack BP 12 - B04', '650-800', 'Bags are crafted with style so that you can look elegant and effortlessly.', 'b65.jpg', 2, 58, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(790, 'Swiss Miliaty Laptop Trolley Briefcase CumBackpack', '3300-3800', 'Padded laptop compartment that fits upto 15.6 inch laptop. Trolley cum backpack LTB5. Capacity: 23L, Size: L 44 x W 17 x 31 cm.', 'b66.jpg', 2, 72, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(791, 'SM Laptop Backpack with USB Charging Port LBP73', '1800-2100', 'Laptop backpack with USB charging port. Padded compartment that fits upto 15.6 inch laptop. Capacity: 26L, Size: 30.5 x 12 x 41 cm.', 'b67.jpg', 2, 58, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(792, 'SM Multi-Utility Messenger Sling Bag SLB4', '1800-2100', 'Separate compartment to store files, folders. Padded compartment that fits upto 15.6 inch laptop. Capacity: 12L, Size: 39 x 10 x 30 cm.', 'b68.jpg', 2, 63, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(793, 'Swiss Military Sports Bag BP5', '900-1100', 'Sports bag can be folded and expanded into a sports bag, foldable and portable, 100% polyster, H: 24.5 x L : 47 x W: 24 in cms.', 'b69.jpg', 2, 73, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(794, 'Adidas Gym Bag', '1600-1800', '100% polyester fabric. Front zip pocket, shoe compart with mesh insert. Color: black.', 'b70.webp', 2, 69, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(795, 'American Tourister Astro Laptop Backpack', '2500-2800', 'Voluminous sizing. Laptop compartment with padding. Mesh padding on back & shoulder straps. Rain cover included.', 'b71.jpg', 2, 58, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(796, 'American Tourister AIRCONIC SP55/20TSA Trolley', '8000-9500', 'Water repellent security zipper with double wheels.Complementary luggage cover and packing cube. Color: red, grey, black.', 'b72.jpg', 2, 74, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(797, 'American Tourister SUNSIDE SP55 Trolley', '8500-9500', 'Double wheels. Expander in size M&L. True cabin & check-in sizes. Recessed TSA lock. Color: Aero turquoise, navy blue.', 'b73.jpg', 2, 74, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(798, 'American Tourister Skyline Spinner 55 Trolley', '8500-9500', '100% polypropylene. Scratch resistant finish. Full size interior pocket and packing straps. Color: blue, red, black.', 'b74.jpg', 2, 74, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(799, 'American Tourister Colorado Spinner 55 Trolley', '7500-8500', '100% polypropylene. Stylish matte texture. Scratch resistant finish. Full size interior pocket abd packing straps. Combination lock.Color: blue, red, black.', 'b75.jpg', 2, 74, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(800, 'American Tourister Cosmo Wheel 57CM Duffle', '3500-4200', 'Main compartment with lockable pullers. Twin grap handles with soft padded handle strap.', 'b76.jpg', 2, 67, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(801, 'American Tourister Cosmo Wheel 67CM Duffle', '3000-3500', 'Main compartment with lockable pullers. Twin grap handles with soft padded handle strap.', 'b77.webp', 2, 67, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(802, 'American Tourister Rexton Briefcase', '2300-2700', 'Smart sleeve provision. Padded back pocket for laptop. Color: black, blue.', 'b78.jpg', 2, 62, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(803, 'American Tourister Norton rolling trolley', '1500-1800', '2 compartments, quic access pocket, lockable main compartment.', 'b79.jpg', 2, 74, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(804, 'American Tourister Akron LP BP 01 Backpack', '2250-2650', '450d dobby polyester. 3 full compartment. Tractum suspension shoulder strap. Compatible with 17 inch laptop. Rain cover included. Color: Sporty red, teal, black.', 'b80.jpg', 2, 58, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(805, 'American Tourister KEPLER Soft Luggage 68CmTrolley', '6500-7500', 'Trendy Geometric Design. 2 Front Pockets. Color Matched Fixed Combination Lock. Color: blue, grey.', 'b81.jpg', 2, 74, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(806, 'American Tourister Segno 01 Backpack', '3000-3600', 'Texture Dobby Polyster, 3 full compartment, padded top handle,Fleece pocket. Mobile pocket on shoulder strap,Smart sleeve, Rain Cover, 17inch laptop compatible. Color: black, blue.', 'b82.jpg', 2, 58, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(807, 'American Tourister Segno 02 Backpack', '2500-3000', 'Texture Dobby Polyster, 3 full compartment, padded top handle,Fleece pocket. Mobile pocket on shoulder strap,Smart sleeve, Rain Cover, 17inch laptop compatible. Color: black, blue.', 'b83.webp', 2, 58, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(808, 'American Tourister Segno 03 Backpack', '3000-3500', 'Texture Dobby Polyster, 3 full compartment, padded top handle,Fleece pocket. Mobile pocket on shoulder strap,Smart sleeve, Rain Cover, 17inch laptop compatible. Color: black.', 'b84.webp', 2, 58, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(809, 'American Tourister Segno 04 Backpack', '2500-3000', 'Texture Dobby Polyster, 3 full compartment, padded top handle,Fleece pocket. Mobile pocket on shoulder strap,Smart sleeve, Rain Cover, 17inch laptop compatible. Color: black, blue.', 'b85.webp', 2, 58, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(810, 'Urban Tribe Driffter V2 Backpack', '1500-1800', 'Backpack cum briefcase, Detachable neoprene laptop sleeve, laptop compartment, compartment with organiser , water bottle pocket/ laptop charger pocket, size - 13 x 17.7 x 49.5 cm.', 'b86.jpg', 2, 58, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(811, 'Urban Tribe Manifesto Bag', '1900-2200', 'Compartment for laptop and laptop charger, separate compartment for A4 files and folders, neoprene 15.6 inch laptop compartment which can be converted into private desk, size - 29 x 10 x 40.6 cm.', 'b87.jpg', 2, 62, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(812, 'Urban Tribe Fitpack Pro Bag', '1800-2000', '36 L, super-sized beast in disguise, USB cable slot, separate isolated shoe chamber at the bottom, size - 32 x 38 x 49 cm.', 'b88.jpg', 2, 58, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(813, 'Urban Tribe Rumble Bag', '2200-2400', 'Separate lunch box with anti microbial & velcro closing system, laptop compartment, water bottle compartment, size - 29.2 x 13.9 x 44.4 cm.', 'b89.jpg', 2, 58, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(814, 'Urban Tribe battle Tank Backpack', '1450-1650', '15.6 inch laptop compatible, 2 main compartments, chest strap and anti-theft features, quick access pocket, compression straps, size - 34 x 16 49 cm.', 'b90.jpg', 2, 58, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(815, 'Urban Tribe Bruiser Duffle Bag', '1350-1500', 'Slip on pocket on the side for easy access, flat zipper pocket on the front for small accessories, shoe compartment on one side, quick grab handles & adjustable shoulder strap, size - 54 x 25 x 28 cm.', 'b91.webp', 2, 67, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(816, 'Urban Tribe Battalion Duffle Bag', '1800-2000', 'Multiple shoulder straps, shoe compartment on one side, easily locate keys and small accessories in internal, size - 56 x 25 x 28 cm.', 'b92.webp', 2, 67, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(817, 'Urban Tribe Disc Duffle Bag', '1100-1400', 'Foldable duffle bag, smart and spacious, compact easy to carry, size - 51 x 25 x 25 cm.', 'b93.jpg', 2, 67, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(818, 'Urban Tribe Smart Shell Messenger Bag', '1100-1300', 'Slim & compact with padded laptop compartment, removable and adjustable padded shoulder strap, grip handle which can be hidden, size - 40 x 05 x 31 cm.', 'b94.jpg', 2, 64, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(819, 'Urban Tribe Buff Duffle Bag', '900-1100', 'Compartment with padded surface, adjustable strap and reverse zipper, duffle handles, size - 44x 19 x 27 cm.', 'b95.jpg', 2, 67, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(820, 'Urban Tribe Trailblazer Trolley', '2000-2500', '20 inch cabin size ABS trolley, separate laptop compartment, TSA lock for both compartment, high quality trolley handle, 360 spinning wheels, 38 x 24 x 54 cm.', 'b96.png', 2, 74, '2022-04-02 15:30:46', '2022-04-02 15:30:46'),
(821, 'HomeDesk', '700-800', 'Lap pillow, laptop stand and laptop sleeve, ultralight lap pillow, Ergonomic Anti-Slid Design, soft cushioned wrist rest, side pockets for phone, wires and accessories.', '8664ddb0-580b-40fc-871e-24bd9d83fcbd-HomeDesk.jpg', 2, 49, '2022-04-02 15:34:03', '2022-04-02 15:34:03'),
(822, 'Executive Organizer Diary Classic (Made in India)', '500-600', 'Black, Red, Grey, Tan', 'st1.jpeg', 2, 76, '2022-04-02 16:54:30', '2022-04-02 16:54:30'),
(823, 'Executive Organizer Diary Senate', '500-600', 'Black, Brown', 'st3.jpg', 2, 76, '2022-04-02 16:54:30', '2022-04-02 16:54:30'),
(824, 'Executive Organizer Diary Heritage', '550-650', 'Black', 'st4.jpg', 2, 76, '2022-04-02 16:54:30', '2022-04-02 16:54:30'),
(825, 'Heritage Power', '1100-1400', 'Executive Organizer Diary + Detachable Powerbank (5000mAh) Heritage Power Black', 'st5.jpg', 2, 76, '2022-04-02 16:54:30', '2022-04-02 16:54:30'),
(826, 'Executive Organizer DiaryElegant (Made in India)', '500-600', 'Black, Tan', 'st2.jpg', 2, 76, '2022-04-02 16:54:30', '2022-04-02 16:54:30'),
(827, 'Vintage Style Refillable Notebooks Traveller', '400-500', 'Black, Tan', 'st6.jpg', 2, 76, '2022-04-02 16:54:30', '2022-04-02 16:54:30'),
(828, 'Note Books Basic', '290-360', 'Black, Blue, Brown, White', 'st7.jpg', 2, 77, '2022-04-02 16:54:30', '2022-04-02 16:54:30'),
(829, 'Note Books Basic Plus', '200-270', 'Orange, green, blue, black', 'st8.jpg', 2, 77, '2022-04-02 16:54:30', '2022-04-02 16:54:30'),
(830, 'Note Books Rainbow', '350-450', 'Black, Brown', 'st9.jpg', 2, 77, '2022-04-02 16:54:30', '2022-04-02 16:54:30'),
(831, 'Note Books Wytbook', '350-450', 'Black, Brown, White', 'st10.jpg', 2, 77, '2022-04-02 16:54:30', '2022-04-02 16:54:30'),
(832, 'Note Books Hardy Plus', '200-275', 'Black, Blue, White', 'st11.jpg', 2, 77, '2022-04-02 16:54:30', '2022-04-02 16:54:30'),
(833, 'Note Books Neon', '375-475', 'A5 size notebooks with neon band', 'st12.jpg', 2, 77, '2022-04-02 16:54:30', '2022-04-02 16:54:30'),
(834, 'Note Books Zigy', '375-475', 'Blue, Black, Red', 'st13.jpg', 2, 77, '2022-04-02 16:54:30', '2022-04-02 16:54:30'),
(835, 'Premium Notebooks Optima', '275-375', 'Black, Tan', 'st15.jpg', 2, 77, '2022-04-02 16:54:30', '2022-04-02 16:54:30'),
(836, 'Note Books Primo', '275-375', 'Black, Tan', 'st14.jpg', 2, 77, '2022-04-02 16:54:30', '2022-04-02 16:54:30'),
(837, 'Note Books Korsa', '400-500', 'Black, Brown, Blue', 'st16.jpg', 2, 77, '2022-04-02 16:54:30', '2022-04-02 16:54:30'),
(838, 'Premium Notebooks Roca', '475-575', 'Black, Brown, Blue', 'st18.jpg', 2, 77, '2022-04-02 16:54:30', '2022-04-02 16:54:30'),
(839, 'Premium Notebooks Element', '500-600', 'Blue, Red', 'st19.jpg', 2, 77, '2022-04-02 16:54:30', '2022-04-02 16:54:30'),
(840, 'Premium Note Books Color', '375-475', 'Blue, Green, Yellow', 'st20.jpg', 2, 77, '2022-04-02 16:54:30', '2022-04-02 16:54:30'),
(841, 'Premium Notebooks Korsa Premium', '400-500', 'Gray, Brown, Dark Gray', 'st17.jpg', 2, 77, '2022-04-02 16:54:30', '2022-04-02 16:54:30'),
(842, 'Note Books Mobi', '400-500', 'Black, Tan', 'st21.jpg', 2, 77, '2022-04-02 16:54:30', '2022-04-02 16:54:30'),
(843, 'Note Books Trika', '350-450', 'Gray', 'st22.jpg', 2, 77, '2022-04-02 16:54:30', '2022-04-02 16:54:30'),
(844, 'Note Books Double Deck', '450-550', 'Black/Brown', 'st23.jpg', 2, 77, '2022-04-02 16:54:30', '2022-04-02 16:54:30'),
(845, 'Premium NotebooksUSB Pro Notes (16gb pen drive)', '550-650', 'Black, Blue', 'st24.jpg', 2, 77, '2022-04-02 16:54:30', '2022-04-02 16:54:30'),
(846, 'Premium Notebooks Wrinkle', '370-470', 'Black, Brown', 'st25.jpg', 2, 77, '2022-04-02 16:54:30', '2022-04-02 16:54:30'),
(847, 'Metal Pens Parma', '250-350', 'Black/Silver', 'st26.jpg', 2, 78, '2022-04-02 16:54:30', '2022-04-02 16:54:30'),
(848, 'Metal Pens Turin', '350-450', 'Maroon', 'st27.jpg', 2, 78, '2022-04-02 16:54:30', '2022-04-02 16:54:30'),
(849, 'Basic Pen Reva', '25-50', 'White Body (Red, Blue, Orange, Green)', 'st28.jpg', 2, 78, '2022-04-02 16:54:30', '2022-04-02 16:54:30'),
(850, 'Metal Pens Flynn', '50-90', 'Black body - stylus ( white, red, blue, green, orange, purple)', 'st29.jpg', 2, 78, '2022-04-02 16:54:30', '2022-04-02 16:54:30'),
(851, 'Metal Pens Styliter', '60-90', 'Blue, Red, Black', 'st30.jpg', 2, 78, '2022-04-02 16:54:30', '2022-04-02 16:54:30'),
(852, '6-in-1 Tool Pen Tool Pen', '85-125', 'MP10 Black, Silver', 'st31.jpg', 2, 78, '2022-04-02 16:54:30', '2022-04-02 16:54:30'),
(853, 'Metal Pens Venice', '225-275', 'MP09 White, Black', 'st32.jpg', 2, 78, '2022-04-02 16:54:30', '2022-04-02 16:54:30'),
(854, 'Metal Pens Recoil', '150-200', 'MP12 Black', 'st33.jpg', 2, 78, '2022-04-02 16:54:30', '2022-04-02 16:54:30'),
(855, 'Metal Pens Verona', '150-200', 'Silver (steel finish)', 'st34.jpg', 2, 78, '2022-04-02 16:54:30', '2022-04-02 16:54:30'),
(856, 'Metal Pens Roma', '180-250', 'MP15 Black/Silver', 'st35.jpg', 2, 78, '2022-04-02 16:54:30', '2022-04-02 16:54:30'),
(857, 'MANCHESTER DESK MAT ( VEGAN LEATHER )', '350-450', 'Vegan Leather Desk Mat. COL 1 . BLACK / COL 2. NAVY / COL 3. TAN', 'st36.jpg', 2, 79, '2022-04-02 16:54:30', '2022-04-02 16:54:30');
INSERT INTO `products` (`id`, `name`, `price`, `description`, `image`, `userId`, `productCategoryId`, `created_at`, `updated_at`) VALUES
(858, 'MOBILE WALLET PRO WITH 3M TAPE', '330-450', 'Vegan Leather Mobile Wallet. COL 1 . BLACK / COL 2. NAVY / COL 3. TAN', 'st37.jpg', 2, 80, '2022-04-02 16:54:30', '2022-04-02 16:54:30'),
(859, 'FRANKFURT CARD WALLET ( CANVAS & VEGAN LEATHER )', '400-500', 'Canvas & Vegan Leather Card Wallet. COL 1. NAVY / COL 2. GREY/ COL 3. KHAKI', 'st38.jpg', 2, 80, '2022-04-02 16:54:30', '2022-04-02 16:54:30'),
(860, 'HOUSTON CARD WALLET ( CANVAS & VEGAN LEATHER )', '400-500', 'Canvas & Vegan Leather Card Wallet. COL 1. NAVY / COL 2. GREY/ COL 3. KHAKI', 'st39.jpg', 2, 80, '2022-04-02 16:54:30', '2022-04-02 16:54:30'),
(861, 'BRUSSELS CARD WALLET ( VEGAN LEATHER )', '400-500', 'Vegan Leather Card Wallet. COL 1. NAVY / COL 2. BLACK / COL 3. NAVY+TAN', 'st40.jpg', 2, 80, '2022-04-02 16:54:30', '2022-04-02 16:54:30'),
(862, 'PK OF 7 -VEGAN LEATHER WORK ESSENTIALS GIFT BOX', '1400-1600', 'COL 1 . BLACK / COL 2. NAVY / COL 3. TAN', 'st41.jpg', 2, 81, '2022-04-02 16:54:30', '2022-04-02 16:54:30'),
(863, 'TRAVEL COMPANION GIFT BOX ( PACK OF 4) / (VEGAN LEATHER )', '900-1100', 'COL 1 . BLACK / COL 2. NAVY / COL 3. TAN', 'st42.jpg', 2, 81, '2022-04-02 16:54:30', '2022-04-02 16:54:30'),
(864, 'UTILITY GIFT BOX (PK OF 7)', '1000-1200', 'COL 1. NAVY / COL 2. GREY/ COL 3. KHAKI', 'st43.jpg', 2, 81, '2022-04-02 16:54:30', '2022-04-02 16:54:30'),
(865, 'EXPLORER GIFT BOX ( PACK OF 5) CANVAS + VEGAN LEATHER )', '1000-1200', 'COL 1. NAVY / COL 2. GREY/ COL 3. KHAKI', 'st44.jpg', 2, 81, '2022-04-02 16:54:30', '2022-04-02 16:54:30'),
(866, 'CANVAS & VEGAN LEATHER - ON THE GO GIFT BOX  (PK OF 4 )', '1000-1200', 'COL 1. NAVY / COL 2. GREY/ COL 3. KHAKI', 'st45.jpg', 2, 81, '2022-04-02 16:54:30', '2022-04-02 16:54:30'),
(867, 'OXFORD GIFT BOX ( PACK OF 4 -VEGAN LEATHER )', '1200-1400', 'COL 1. GREY / COL.2 BLACK / COL 3. BROWN / COL 4. BLUE', 'st46.jpg', 2, 81, '2022-04-02 16:54:30', '2022-04-02 16:54:30'),
(868, 'SAFE TRAVEL GIFT BOX( PACK OF 5 - VEGAN LEATHER )', '600-800', 'COL 1. GREY / COL.2 BLACK / COL 3. BROWN / COL.4 BLUE', 'st47.jpg', 2, 81, '2022-04-02 16:54:30', '2022-04-02 16:54:30'),
(869, 'VEGAN LEATHER - PK OF 4, CLASSIC BANK ORGANIZER GIFT BOX', '1000-1200', 'COL 1. GREY / COL.2 BLACK / COL 3. BROWN / COL.4 BLUE', 'st48.jpg', 2, 81, '2022-04-02 16:54:30', '2022-04-02 16:54:30'),
(870, 'BANK ORGANIZER GIFT BOX( PACK OF 3) - VEGAN LEATHER', '850-1000', 'COL 1. BLACK / COL 2. NAVY', 'st49.jpg', 2, 81, '2022-04-02 16:54:30', '2022-04-02 16:54:30'),
(871, 'STATIONARY GIFT BOX ( PACK OF 6 : VEGAN LEATHER )', '550-750', 'COL 1. GREY / COL.2 BLACK / COL 3. BROWN / COL.4 BLUE', 'st50.jpg', 2, 81, '2022-04-02 16:54:30', '2022-04-02 16:54:30'),
(872, 'BIRMINGHAM NOTEBOOK ORGANIZER with REPLACABLE NOTEBOOK', '500-600', 'COL 1 . BLACK / COL 2. NAVY / COL 3. TAN', 'st51.jpg', 2, 81, '2022-04-02 16:54:30', '2022-04-02 16:54:30'),
(873, 'BROOKLYN NOTEBOOK ORGANIZER with REPLACABLE NOTEBOOK', '550-650', 'COL 1. BROWN / COL.2 NAVY / COL 3. GREY+ TAN / COL 4. GREY+NAVY', 'st52.jpg', 2, 82, '2022-04-02 16:54:30', '2022-04-02 16:54:30'),
(874, 'MANHATTAN NOTEBOOK ORGANIZER with REPLACABLE NOTEBOOK', '550-650', 'COL 1. BROWN / COL.2 NAVY / COL 3. GREY+ TAN / COL 4. GREY+NAVY', 'st53.jpg', 2, 82, '2022-04-02 16:54:30', '2022-04-02 16:54:30'),
(875, 'CHRISTIAN NOTEBOOK ORGANIZER with REPLACABLE NOTEBOOK', '550-650', 'COL 1. BROWN / COL.2 NAVY / COL 3. GREY+ TAN. COL 4. GREY+NAVY', 'st54.jpg', 2, 82, '2022-04-02 16:54:30', '2022-04-02 16:54:30'),
(876, 'YORKSHIRE NOTEBOOK ORGANIZER with REPLACABLE NOTEBOOK', '550-650', 'COL 1. GREY / COL.2 BLACK / COL 3. BROWN / COL.4 BLUE', 'st55.jpg', 2, 82, '2022-04-02 16:54:30', '2022-04-02 16:54:30'),
(877, 'JOE NOTEBOOK ORGANIZER CANVAS VEGAN LEATHER ) with REPLACABLE NOTEBOOK', '450-550', 'COL 1. NAVY / COL 2. GREY/ COL 3. KHAKI', 'st56.jpg', 2, 82, '2022-04-02 16:54:30', '2022-04-02 16:54:30'),
(878, 'DOWNTOWN NOTEBOOK ORGANIZER', '550-650', 'COL 1. NAVY / COL 2. GREY/ COL 3. KHAKI', 'st57.jpg', 2, 82, '2022-04-02 16:54:30', '2022-04-02 16:54:30'),
(879, 'METROPOLITAN NOTEBOOK ORGANIZER ( CANVAS VEGAN LEATHER ) with REPLACABLE NOTEBOOK', '450-540', 'COL 1. NAVY / COL 2. GREY/ COL 3. KHAKI', 'st58.jpg', 2, 82, '2022-04-02 16:54:30', '2022-04-02 16:54:30'),
(880, 'BROOKLYN CONFERENCE ORGANIZER', '450-540', 'COL 1. GREY', 'st59.jpg', 2, 82, '2022-04-02 16:54:30', '2022-04-02 16:54:30'),
(881, 'OXFORD CONFERENCE ORGANIZER', '450-540', 'COL 1. NAVY / COL 2. GREY/ COL 3. KHAKI', 'st60.jpg', 2, 82, '2022-04-02 16:54:30', '2022-04-02 16:54:30'),
(882, 'Mobile Stand Pop Stand', '25-45', 'Black, White, Black/white Adjustable Pop Up', 'pi1.jpg', 2, 83, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(883, 'Silicon Mobile Holder', '75-125', 'Black, White, Blue Silicon -Mobile Holder', 'pi2.jpg', 2, 83, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(884, 'Mobile Stand', '145-195', 'UG-GM18 Black, WhiteMobile Stand for Online Classes, Mobile Stand for Table and Bed, Mobile Holder for Bed, Phone Holder, Phone Stand for Table', 'pi3.jpg', 2, 83, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(885, 'Book mark Reading Light Flexilite', '150-200', 'UG-GL11 Black-Flexible LED Book Light - FLEXILITE - Flexible LED Book Light - Clips easy into books - Double as a bookmark', 'pi6.jpg', 2, 85, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(886, 'Ring - Mobile Stand', '35-60', 'Size 45 x 35 x 6 mm Material Metal + Plastic Color Black, White, Pink, Silver, Gold N. W / G. W 13g / 26g Function 3-in-1 design, phone grip, table holder, car mount holder Feature reusable, 360degree rotates, Support: universal for smartphone, tablets. White', 'pi4.jpg', 2, 83, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(887, 'Torch Flashlight', '150-250', 'UG-GM02 Silver-Premium metal casing,One button operation - On/Off. Super bright LED bulb light. Ideal for Home, Office, and Outdoor activity etc..', 'pi7.jpg', 2, 86, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(888, '3 in 1 Mobile Stand with Torch Holdey', '75-140', 'UG-KC01 Red, Blue-Multi-utility key chain, Built in torch, Doubles as a mobile stand, Ample branding space, Power source: Button cells (included)', 'pi8.jpg', 2, 86, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(889, 'Sports Arm Band', '380-450', 'UG-GT91 Black-Arm band suitable for outdoor activities,  Music headphone hole on upper pocket, Double zipper pocket,Sweat & water resistant.', 'pi5.jpg', 2, 84, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(890, 'Key chain COB light Coby', '150-200', 'UG-KC10 Red, Blue-Mini COB Flash light3 Lightning modes: high, low, blinkingDoubles as a key chain, Ample branding space, Power source: 3 x AAA (not included)', 'pi9.jpg', 2, 87, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(891, 'Key Finder; Car', '300-400', 'Find your keys with a whistle. Whistle to make it beep and flash. To silence it - simple switch off. Built in red LED torch. Comes with a key chain. On/off switch operation. Great novelty gift. ', 'pi10.jpg', 2, 87, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(892, 'KeyFinder Key Finder', '250-300', 'UG-GM17 Black-Lost keys are just a whistle away with this innovative keychain!', 'pi11.jpg', 2, 87, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(893, 'Multi Tool Keychain', '400-475', 'UG-GT91 red, grey, silver, blue -Key Ring. Medium Screw Driver. Bottle Opener. Small Screw Driver. LED Light. Phillips Screw Driver. Knife', 'pi12.jpg', 2, 87, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(894, 'Hydraulic 10 cd holder (Pop-up)', '390-450', 'Hydraulic 10 cd holder (Pop-up) Silver-Size. 19.6 x 21.4 x 18.2-Weight-49.8', 'pi13.jpg', 2, 87, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(895, 'Backlit table clock', '245-325', 'Backlit table clock White -Power Source-Battery', 'pi14.jpg', 2, 88, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(896, 'See thru table clock', '360-425', 'See thru table clock White-Material Plastic Mounting Type-Tabletop. Batteries not Included', 'pi15.jpg', 2, 88, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(897, 'Flip display clock', '390-460', 'Flip display clock with touch light / snooze function White', 'pi16.jpg', 2, 88, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(898, 'Large display clock', '390-450', 'Large display clock (with table and wall option) White', 'pi17.jpg', 2, 88, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(899, 'Large display clock with backlight', '360-435', 'Large display clock with backlight (wall / table) White', 'pi18.jpg', 2, 88, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(900, 'Bubble Clock', '333-400', 'Bubble Clock with Photo Frame White', 'pi19.jpg', 2, 88, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(901, 'Vista Backlight clock', '330-400', 'Vista Backlight clock with Temperature White', 'pi20.jpg', 2, 88, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(902, 'Wave table cum wall clock Black', '225-300', 'Wave table cum wall clock Black', 'pi21.jpg', 2, 88, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(903, 'Table top with Clock and pad', '340-440', 'Table top with Clock and pad (with mobile,card and pen holder) (Branding included) (MOQ: 100) Black', 'pi22.jpg', 2, 88, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(904, 'Table clock with pad and mobile holder', '190-275', 'Table clock with pad and mobile holder (4 Side branding area) (Branding included) Black, Blue', 'pi23.jpg', 2, 88, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(905, 'Triangle LED wooden clock', '400-500', 'Triangle LED wooden clock (actual wood used) (USB cable included) Wooden', 'pi24.jpg', 2, 88, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(906, 'Make in India Lion Table clock', '1500-2000', 'Make in India Lion Table clock with moving gears Gray', 'pi25.jpg', 2, 88, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(907, '3 pc Folding alarm clock', '200-275', '3 pc Folding alarm clock with Photo frame and mirror White', 'pi26.jpg', 2, 88, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(908, 'Tumbler with clock & 2 side branding area', '250-325', 'Tumbler with clock & 2 side branding area (Branding included) Red, Blue, Black, White', 'pi27.jpg', 2, 88, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(909, 'Clock with pad and pen holder', '180-250', 'Clock with pad and pen holder (with writing pad) (Branding included). Red, Blue, White', 'pi28.jpg', 2, 48, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(910, 'Wooden Table top with Detachable LED Clock', '350-425', 'Wooden Table top with Detachable LED Clock, Visiting card holder and Tumbler (Branding included) (MOQ: 100) Black', 'pi29.jpg', 2, 48, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(911, 'Wooden Tabletop With Digital LED', '475-550', 'Wooden Tabletop With Digital LED Clock And Tumbler (Dual Power) (USB Cable Included)', 'pi30.jpg', 2, 48, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(912, 'Hut shape wooden LED clock', '425-500', 'Hut shape wooden LED clock with temperature and sound sensor. Dual power (Battery / USB) Wooden', 'pi31.jpg', 2, 48, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(913, 'Night lamp clock', '400-500', 'Night lamp clock with Alarm and Super Sweep movement. Rechargeable Lamp. 3 Level backlight. White, Gray, Pink, Blue', 'pi33.jpg', 2, 48, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(914, 'Chipper: Table clock', '160-225', 'Chipper: Table clock with Fluorescent ring. 5 inch dial. Branding included. Orange, Green, Pink', 'pi34.jpg', 2, 48, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(915, 'Clock with temperature', '360-435', 'Clock with temperature and magnetic photo frame. 4 x 6 size White', 'pi32.jpg', 2, 48, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(916, 'Super Sweep Alarm Clock With Light Up Numbers', '261-330', 'Super Sweep Alarm Clock With Light Up Numbers', 'pi35.jpg', 2, 48, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(917, 'Table clock with Double pen holder', '190-260', 'Table clock with Double pen holder and card holder. Branding included Red, Blue, Black, White', 'pi36.jpg', 2, 48, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(918, 'Chip: Table clock', '198-275', 'Chip: Table clock with Silver ring, 5 inch dial, Branding included White', 'pi37.jpg', 2, 48, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(919, 'Round Digital clock', '345-450', 'Round Digital clock with backlight, projection clock and FM White', 'pi38.jpg', 2, 48, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(920, 'Hanging Visiting card holder White, Black', '50-75', 'Hanging Visiting card holder White, Black', 'pi39.jpg', 2, 48, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(921, 'Mouse shape 4 in 1 table top', '50-75', 'Mouse shape 4 in 1 table top (with pen holder, memo holder, paper clip holder & keyboard cleaning brush). Red, blue, black, yellow', 'pi40.jpg', 2, 48, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(922, 'Club shape single paper dispenser Red, Blue', '80-120', 'Club shape single paper dispenser Red, Blue', 'pi41.jpg', 2, 48, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(923, 'Pocket magnifier White', '35-60', 'Pocket magnifier White', 'pi42.jpg', 2, 48, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(924, 'Set of 20 paper clips with box Red/Blue', '45-60', 'Set of 20 paper clips with box Red/Blue', 'pi43.jpg', 2, 48, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(925, 'Mobile stand with metal look stylus & pen Blue, Red', '54-90', 'Mobile stand with metal look stylus & pen Blue, Red', 'pi44.jpg', 2, 48, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(926, 'Double side card holder Black', '140-170', 'Double side card holder Black', 'pi45.jpg', 2, 48, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(927, 'Letter opener with Staple remover and sticky note strips Red, Blue', '60-90', 'Letter opener with Staple remover and sticky note strips Red, Blue', 'pi46.jpg', 2, 89, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(928, 'Magnetic Paper clip with memo/card and pen holder Red, Blue', '60-90', 'Magnetic Paper clip with memo/card and pen holder Red, Blue', 'pi47.jpg', 2, 89, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(929, 'Plungee: 3 In 1 Table Top (Pen With Stylus And Cleaner)', '45-70', 'Plungee: 3 In 1 Table Top (Pen With Stylus And Cleaner)', 'pi48.jpg', 2, 89, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(930, 'Folding paper cube (with memo pad and tumbler) Brown', '125-175', 'Folding paper cube (with memo pad and tumbler) Brown', 'pi49.jpg', 2, 89, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(931, 'Folding paper cube in color', '135-170', 'Folding paper cube in color (with memo pad and tumbler) Red, Blue', 'pi50.jpg', 2, 89, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(932, 'Pocket card holder (curvy design) (for credit cards)', '30-50', 'Pocket card holder (curvy design) (for credit cards)', 'pi51.jpg', 2, 89, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(933, 'Eco notebook with pen and sticky pads Black', '75-100', 'Eco notebook with pen and sticky pads Black', 'pi52.jpg', 2, 89, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(934, 'Gel Highlighter With Keyboard Brush And Screen Cleaner', '54-75', 'Gel Highlighter With Keyboard Brush And Screen Cleaner', 'pi53.jpg', 2, 89, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(935, 'Grass Mobile stand', '75-115', 'Grass Mobile stand with Pen stand, screen cleaner & paper clip holder. Red, Blue, PUR, BLK', 'pi54.jpg', 2, 89, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(936, 'Grippo Mobile Holder', '99-135', 'Grippo Mobile Holder With Angle Adjustment, Pen Stand, And Notepad', 'pi55.jpg', 2, 89, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(937, 'Eco stationery set', '90-125', 'Eco stationery set with memo pads Brown', 'pi56.jpg', 2, 89, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(938, 'Transformer expandable cube', '205-255', 'Transformer expandable cube: complete desk set Brown', 'pi57.jpg', 2, 89, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(939, 'Transformer expandable cube: complete desk set', '200-250', 'Transformer expandable cube: complete desk set Red, Blue', 'pi58.jpg', 2, 89, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(940, 'Writing buddy: Diary', '125-150', 'Writing buddy: Diary with pen, wallet, sticky pads and carrying handle (60 sheets) Brown', 'pi59.jpg', 2, 89, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(941, 'Leatherette Card holder', '90-126', 'Leatherette Card holder with soft fabric feel Black', 'pi60.jpg', 2, 89, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(942, '3 in 1 Hut style table top', '180-250', '3 in 1 Hut style table top with Pen stand, sticky notes and writing slips (250 sheets) Red', 'pi61.jpg', 2, 89, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(943, 'Power Glow Mobile', '115-150', 'Power Glow Mobile stand with Pen and visiting card holder (Grass style). Red, Blue, Black, White', 'pi62.jpg', 2, 89, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(944, 'Collapsible 3 in 1 Tumbler Red, Blue', '126-160', 'Collapsible 3 in 1 Tumbler Red, Blue', 'pi63.jpg', 2, 89, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(945, 'Gray PU with Linen A5 notebook (Slash design) Red', '145-190', 'Gray PU with Linen A5 notebook (Slash design) Red, Brown', 'pi64.jpg', 2, 89, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(946, 'Colored Linen with PU round patch A5 notebook', '145-190', 'Colored Linen with PU round patch A5 notebook (Binary design) Red ,Blue, Black .', 'pi65.jpg', 2, 89, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(947, 'PU 3 color A5 notebook with elastic fastener', '160-199', 'PU 3 color A5 notebook with elastic fastener Gray', 'pi66.jpg', 2, 89, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(948, 'Powerglow Mobile Stand', '115-160', 'Powerglow Mobile Stand With Paper Clip Holder, Visiting Card Holder And Tumbler (Works On 2 X AA Batteries)', 'pi67.jpg', 2, 89, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(949, 'Brand me Tumbler', '90-126', 'Brand me Tumbler with metallic highlight (Branding included) (MOQ: 200) Silver, Golden', 'pi68.jpg', 2, 89, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(950, 'Revolving wooden table top', '350-450', 'Revolving wooden table top with Clock, Tumbler, mobile holder and Card holder Black', 'pi69.jpg', 2, 89, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(951, 'Card holder', '90-135', 'Card holder with clik on lock Black, Brown', 'pi70.jpg', 2, 89, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(952, 'Double plate card holder', '90-126', 'Double plate card holder Black, Red', 'pi71.jpg', 2, 89, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(953, 'Neon notebook', '126-180', 'Neon notebook with zig zag stitch Red, Blue, Yellow', 'pi72.jpg', 2, 89, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(954, '3 fold notebook', '180-225', '3 fold notebook with wooden stationery set Red, Blue, Brown', 'pi73.jpg', 2, 89, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(955, 'PU notebook', '145-190', 'PU notebook with alphabet design by Castillo Milano Red, BLUE, BLK, YLW, GRN', 'pi74.jpg', 2, 89, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(956, 'A5 notebook', '175-350', 'A5 notebook with mobile pocket, card holder pocket & pen loop by Castillo Milano Gray, Brown', 'pi75.jpg', 2, 89, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(957, 'Pencil style tumbler', '60-90', 'Pencil style tumbler Red, Blue, Yellow, Green', 'pi76.jpg', 2, 89, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(958, 'Table triangle: Pen stand', '99-135', 'Table triangle: Pen stand with sliding drawersRed, Blue, Yellow, Tricolor', 'pi77.jpg', 2, 89, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(959, 'Paper insert tumbler', '99-125', 'Paper insert tumbler Red, Blue', 'pi78.jpg', 2, 89, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(960, 'Axle multipurpose tumbler', '90-150', 'Axle multipurpose tumbler with detachable partitions Brown', 'pi79.jpg', 2, 89, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(961, 'Smiley Cork notepad with Sticky notepad and strips', '36-50', 'Smiley Cork notepad with Sticky notepad and strips Brown', 'pi80.jpg', 2, 89, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(962, 'Mini Cork notepad', '75-125', 'Mini Cork notepad with Double Sticky notepad and strips. Hard cover Brown', 'pi81.jpg', 2, 89, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(963, 'Cork Eco Friendly notebook', '115-150', 'Cork Eco Friendly notebook with Recycled pages. A5 Size Brown', 'pi82.jpg', 2, 89, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(964, 'Eco friendly Sticky pad notebook', '115-150', 'Eco friendly Sticky pad notebook with clear cover (with pen) Brown', 'pi83.jpg', 2, 89, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(965, 'Power Plus mini Notebook / PC speakers', '310-400', 'Power Plus mini Notebook / PC speakers (with volume control) Black', 'pi84.jpg', 2, 90, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(966, 'Backlit Car charger', '180-250', 'Backlit Car charger (Dual USB ports) Red, Blue', 'pi85.jpg', 2, 90, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(967, 'USB style swivel car charger', '125-200', 'USB style swivel car charger Red, blue, black', 'pi86.jpg', 2, 90, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(968, 'Wireless speaker', '375-475', 'Wireless speaker (No connection required) White', 'pi87.jpg', 2, 90, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(969, 'Magic box Premium Power Bank', '850-1100', 'Magic box Premium Power Bank (10000 mAh) (in-built cables) (for all smartphones) Golden', 'pi88.jpg', 2, 90, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(970, 'Folding laptop stand', '150-200', 'Folding laptop stand (suitable for travelling) Black', 'pi89.jpg', 2, 90, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(971, 'Multi Connector Data Cable set', '216-300', 'Multi Connector Data Cable set (Swiss Knife style)', 'pi90.jpg', 2, 90, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(972, 'Triple USB Car charger', '225-300', 'Triple USB Car charger Red, Blue', 'pi91.jpg', 2, 90, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(973, 'Round data cable with keyring', '198-300', 'Round data cable with keyring (for android / windows / iPhone) Red, Blue', 'pi92.jpg', 2, 90, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(974, 'Power Plus Power House', '700-810', 'Power Plus Power House : Triangle shape Power Bank with Lamp and Torch (Dual USB Port) (6000 mAh) Silver', 'pi93.jpg', 2, 90, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(975, 'Power Plus Power House', '850-999', 'Power Plus Power House : Triangle shape Power Bank with Lamp and Torch (Dual USB Port)(9000 mAh) Silver', 'pi94.jpg', 2, 90, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(976, 'Folding Table USB Fan', '200-250', 'Folding Table USB Fan With Safety Blades And USB Cable', 'pi95.jpg', 2, 90, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(977, 'Boxed: Multi connector Data', '165-225', 'Boxed: Multi connector Data and charging cable White', 'pi96.jpg', 2, 90, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(978, 'Compact 4 USB hub', '150-225', 'Compact 4 USB hub with Mobile Stand White', 'pi97.jpg', 2, 90, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(979, '3 In 1 Mobile Fan:', '126-200', '3 In 1 Mobile Fan: Android/ Windows/ IOS', 'pi98.jpg', 2, 90, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(980, 'Power Glow Sliding power bank', '500-600', 'Power Glow Sliding power bank with mobile stand (6,000 mAh) Red, Blue', 'pi99.jpg', 2, 90, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(981, 'Power Glow Desk power bank', '500-600', 'Power Glow Desk power bank with dual USB ports (3,000 mAh) Black, White', 'pi100.jpg', 2, 90, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(982, 'Family Power Bank', '855-950', 'Family Power Bank With Triple USB Ports (Set Of 3) (9,000 MAh)', 'pi101.jpg', 2, 90, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(983, 'Power Glow Round edge \'Mini\' power bank', '405-500', 'Power Glow Round edge \'Mini\' power bank with loop (3,000 mAh) Black', 'pi102.jpg', 2, 90, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(984, 'Caplet Power bank', '400-500', 'Caplet Power bank with hidden wire (3,000 mAh) Red, Blue', 'pi103.jpg', 2, 90, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(985, '2 Side Cable For Android', '110-180', '2 Side Cable For Android And IPhone', 'pi104.jpg', 2, 90, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(986, '3 speed portable fan', '310-400', '3 speed portable fan with torch and emergency power bank (1,200 mAh) White', 'pi105.jpg', 2, 90, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(987, 'Glow in the dark dual car charger', '198-275', 'Glow in the dark dual car charger Red, Blue, White', 'pi106.jpg', 2, 90, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(988, 'Metal Power bank', '450-550', 'Metal Power bank with Lighter, two level Torch and blinker Silver, Golden', 'pi107.jpg', 2, 90, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(989, 'Finger power bank', '270-360', 'Finger power bank (2000 mAh) White', 'pi107.jpg', 2, 90, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(990, 'New Multi Connector Data Cable set', '190-270', 'New Multi Connector Data Cable set (Swiss Knife style) (With USB C Type) White', 'pi108.jpg', 2, 90, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(991, '3 in 1 Data cable with spinner', '175-250', '3 in 1 Data cable with spinner White', 'pi109.jpg', 2, 90, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(992, '3 USB hub with spinner', '198-275', '3 USB hub with spinner (cable included) White', 'pi110.jpg', 2, 90, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(993, 'BrandGlow: Light up car charger', '200-300', 'BrandGlow: Light up car charger with Full branding area (Dual USB Ports) (2.4A output) Black', 'pi111.jpg', 2, 90, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(994, 'Yo yo 3 in 1 Data & Charging cable', '200-270', 'Yo yo 3 in 1 Data & Charging cable (with USB C type port) White', 'pi112.jpg', 2, 90, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(995, 'Magnetic 3 in 1 charging cable', '150-225', 'Magnetic 3 in 1 charging cable with Keychain Red, Blue, Black', 'pi113.jpg', 2, 90, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(996, 'Power Glow USB hub', '175-270', 'Power Glow USB hub with mobile stand and logo highlight (Back USB ports) Black', 'pi114.jpg', 2, 90, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(997, 'Lanyard charging cable', '125-175', 'Lanyard charging cable with Lightning, Micro USB and USB type C port. Red, Blue, Black', 'pi115.jpg', 2, 90, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(998, 'Clip-on charging cable', '200-300', 'Clip-on charging cable with double side light up logo (iOS, Micro_x0002_USB, Type C) Black', 'pi116.jpg', 2, 90, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(999, 'PowerPad: Mouse Pad', '150-250', 'PowerPad: Mouse Pad With Usb Hub (USB cable included) White', 'pi117.jpg', 2, 48, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1000, 'Tumbler With Usb Hub, Lamp', '250-350', 'Tumbler With Usb Hub, Lamp and Mobile stand (adjustable lamp light) Black', 'pi118.jpg', 2, 48, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1001, 'Car charger with keychain', '225-300', 'Car charger with keychain and charging cable (dual side iOS & Android) Red, Blue, Black', 'pi119.jpg', 2, 90, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1002, 'All in 1 charging cable', '200-275', 'All in 1 charging cable with travel case and keychain White', 'pi120.jpg', 2, 90, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1003, '360 Degree magnetic charging cable', '400-500', '360 Degree magnetic charging cable with connectors Supports Fast charging. Light glow at tip (for Micro USB, iPhone and type C) Mix', 'pi121.jpg', 2, 90, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1004, 'Power Glow 3 USB hub', '230-330', 'Power Glow 3 USB hub with mobile stand and logo highlight (Top USB). Red, Blue, Black, White', 'pi122.jpg', 2, 90, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1005, 'Powerglow Handy USB Hub', '225-350', 'Powerglow Handy USB Hub With Logo Highlight, 4 USB Ports, Silicon Strap, Built-In Cable', 'pi122.jpg', 2, 90, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1006, 'Earphones with gecko mobile stand dome case White', '90-135', 'Earphones with gecko mobile stand dome case White', 'pi123.jpg', 2, 87, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1007, 'Folding USB Hub Tumbler', '225-350', 'Folding USB Hub Tumbler With Notepad And Sticky Pads. 3 USB Ports', 'pi124.jpg', 2, 48, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1008, 'Small USB Hub With Sticky Notes', '200-300', 'Small USB Hub With Sticky Notes And Drawer, 3 USB Ports', 'pi125.jpg', 2, 48, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1009, 'Big USB Hub With Sticky Notes,', '225-315', 'Big USB Hub With Sticky Notes, Writing Pad And Pen. 3 USB Ports', 'pi126.jpg', 2, 48, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1010, 'Cable with Wireless Charger', '400-500', 'Cable with Wireless Charger (iOS, Micro, Type C) White', 'pi127.jpg', 2, 48, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1011, 'USB Hub with detachable cable', '200-300', 'USB Hub with detachable cable (iOS, Micro, Type C) 3 USB ports. Red, Blue, White', 'pi128.jpg', 2, 48, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1012, 'Voice controlled LED light charging cable', '240-325', 'Voice controlled LED light charging cable (Multicolor). Light flashes based on music, 1 mtr Length White, Black', 'pi129.jpg', 2, 90, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1013, 'PowerGlow USB Hub With Tumbler', '297-396', 'PowerGlow USB Hub With Tumbler And Logo Highlight. 3 USB Ports, With Mobile Stand', 'pi130.jpg', 2, 48, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1014, 'Bluetooth Sound bar speaker', '1350-1500', 'Bluetooth Sound bar speaker with USB / TF card / Aux / FM / Mic in (YO 588) Mix', 'pi131.jpg', 2, 90, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1015, 'Bluetooth Large Sound bar speaker', '1800-2000', 'Bluetooth Large Sound bar speaker with USB / TF card / Aux / FM / Mic in (YO 596) Mix', 'pi132.jpg', 2, 90, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1016, 'Mini power bank 5,000 mAh White', '450-550', 'Mini power bank 5,000 mAh White', 'pi133.jpg', 2, 90, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1017, 'Mini power bank 10,00 mAh White', '600-700', 'Mini power bank 10,00 mAh White', 'pi134.jpg', 2, 90, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1018, 'Dual USB fast charger with night lamp', '400-500', 'Dual USB fast charger with night lamp White', 'pi135.jpg', 2, 90, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1019, '3 in 1 Fast charging soft touch cable', '154-225', '3 in 1 Fast charging soft touch cable, 2.5A output (for Micro, Type C and iOS) White, Black', 'pi136.jpg', 2, 90, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1020, 'Folding Wired Headphone set', '450-540', 'Folding Wired Headphone set (with Mic) Black', 'pi137.jpg', 2, 90, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1021, 'USB hub tumbler with wireless charger', '360-450', 'USB hub tumbler with wireless charger and Phone stand Red, Blue', 'pi138.jpg', 2, 90, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1022, 'Bamboo Yo yo charging cable', '207-300', 'Bamboo Yo yo charging cable with USB A & USB C input. Output: Micro USB, iOS, Type C White', 'pi139.jpg', 2, 90, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1023, 'Power Glow Wireless Charger', '385-450', 'Power Glow Wireless Charger. Charging Cable (iOS, Micro, Type C). Logo glow function Black', 'pi140.jpg', 2, 90, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1024, 'Folding Laptop stand with USB Fan', '198-250', 'Folding Laptop stand with USB Fan (Small) White', 'pi141.jpg', 2, 90, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1025, 'Magic Photo Frame', '405-540', 'Magic Photo Frame with Mirror (10 LED) (Dual Power) (USB cable included) White', 'pi142.jpg', 2, 90, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1026, 'Modern Photo Frame BRN/Gold, BK', '126-175', 'Modern Photo Frame BRN/Gold, BK', 'pi143.jpg', 2, 48, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1027, 'Wooden photo frame with Metal plate', '198-297', 'Wooden photo frame with Metal plate (4x6 size) (printing included MOQ 100 pc) Wooden', 'pi144.jpg', 2, 48, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1028, 'Hanging 3 pc wooden photo frame with Metal plate', '400-500', 'Hanging 3 pc wooden photo frame with Metal plate (4x6 size) (printing included MOQ 100 pc) Wooden', 'pi145.jpg', 2, 48, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1029, 'Mouse pad with paper insert', '81-126', 'Mouse pad with paper insert', 'pi146.jpg', 2, 48, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1030, 'Mobile charging stand', '30-50', 'Mobile charging stand', 'pi147.jpg', 2, 48, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1031, 'Silicon vacuum mobile stand with earphone holder', '45-75', 'Silicon vacuum mobile stand with earphone holder Red, blue, Black', 'pi148.jpg', 2, 48, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1032, '4 layer Toiletry kit Black', '450-550', '4 layer Toiletry kit Black', 'pi149.jpg', 2, 91, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1033, 'Gecko multifuction mobile stand', '90-145', 'Gecko multifuction mobile stand (for home/ office/ car use) Red, Blue', 'pi150.jpg', 2, 48, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1034, 'Mr. Notty: Flexible Mobile Holder (Multipurpose)', '60-120', 'Mr. Notty: Flexible Mobile Holder (Multipurpose)', 'pi151.jpg', 2, 48, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1035, 'Folding Shopping Bag', '225-325', 'Folding Shopping Bag', 'pi152.jpg', 2, 91, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1036, 'Premium Leather Free laptop bag', '750-900', 'Premium Leather Free laptop bag (15 inch and above) Black', 'pi153.jpg', 2, 91, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1037, 'Rotating mobile finger ring', '40-75', 'Rotating mobile finger ring (with mobile stand) Red, Blue, White, Black', 'pi154.jpg', 2, 83, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1038, 'Sliding mobile finger loop', '50-75', 'Sliding mobile finger loop (with mobile stand) Red, Blue', 'pi155.jpg', 2, 48, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1039, 'Leather finish Plastic coaster set of 4', '125-175', 'Leather finish Plastic coaster set of 4 with stand (square) Brown, White, Multi-color', 'pi156.jpg', 2, 48, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1040, 'Passport Holder with sim card safe case', '250-360', 'Passport Holder with sim card safe case & sim card jackets (L) (wide design) Black', 'pi157.jpg', 2, 96, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1041, 'Passport Holder with sim card safe case, sim card jackets', '350-450', 'Passport Holder with sim card safe case & sim card jackets (XL) (Long design) Black', 'pi158.jpg', 2, 96, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1042, 'Pop up Mobile stand', '15-27', 'Pop up Mobile stand (Double pop out) White, White/Black', 'pi159.jpg', 2, 48, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1043, 'Folding mobile stand with detachable screen', '75-120', 'Folding mobile stand with detachable screen cleaner (XL branding area) Red, Blue', 'pi160.jpg', 2, 48, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1044, 'Mechano mobile stand round Red, Blue', '18-30', 'Mechano mobile stand round Red, Blue', 'pi161.jpg', 2, 48, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1045, 'AC vent car magnetic holder', '160-225', 'AC vent car magnetic holder, Shock proof, Super strong magnet Black', 'pi162.jpg', 2, 48, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1046, 'Wooden Music Amplifier', '150-250', 'Wooden Music Amplifier for Smartphones. Universal Design White', 'pi163.jpg', 2, 48, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1047, 'Brighto Rechargeable LED lamp', '504-605', 'Brighto Rechargeable LED lamp with mobile stand. 3 Color light. Brightness adjustment White', 'pi164.jpg', 2, 48, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1048, 'Donut Rechargeable LED lamp', '495-600', 'Donut Rechargeable LED lamp with mobile stand, 3 Color light, Brightness adjustment White', 'pi165.jpg', 2, 48, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1049, 'Rechargeable lamp with drawers and Tumbler White', '495-595', 'Rechargeable lamp with drawers and Tumbler White', 'pi166.jpg', 2, 48, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1050, 'Metal universal mobile stand Black', '135-190', 'Metal universal mobile stand Black', 'pi167.jpg', 2, 48, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1051, 'Face Mask Holder, Ear Protector', '150-225', 'Face Mask Holder . Ear Protector (Hook Style) White, Black', 'pi168.jpg', 2, 48, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1052, 'Metal multi mobile stand', '150-200', 'Metal multi mobile stand with Visiting card holder Black', 'pi169.jpg', 2, 48, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1053, 'PowerGlow coaster', '90-160', 'PowerGlow coaster with Reverse logo highlight. With Black plate (batteries included). Red, Blue,  Black', 'pi170.jpg', 2, 48, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1054, 'Emergency trekking toolkit', '450-540', 'Emergency trekking toolkit (9 function with 5 mode torch & 2 mode flasher) Black', 'pi171.jpg', 2, 92, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1055, 'Mini emergency trekking toolkit', '180-270', 'Mini emergency trekking toolkit (10 function with 5 mode torch & 2 mode flasher) Black/silver', 'pi172.jpg', 2, 92, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1056, 'Folding toolkit', '250-360', 'Folding toolkit with 4 LED torch Yellow', 'pi173.jpg', 2, 92, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1057, 'Folding Mini Pliers', '243-345', 'Folding Mini Pliers with 9 tools (superior quality) Red, Blue', 'pi174.jpg', 2, 92, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1058, 'Digital tyre pressure gauge', '450-550', 'Digital tyre pressure gauge with 7 emergency tools Black', 'pi175.jpg', 2, 92, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1059, '6 in 1 keychain', '306-405', '6 in 1 keychain with glass window breaker & LED torch Black', 'pi176.jpg', 2, 92, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1060, 'Luxury double torch toolkit', '330-396', 'Luxury double torch toolkit with magnetic antenna Yellow', 'pi177.jpg', 2, 92, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1061, 'Padlock shape toolkit', '297-360', 'Padlock shape toolkit (20 pc) White', 'pi178.jpg', 2, 92, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1062, '8 function folding toolkit', '270 - 360', '8 function folding toolkit with torch and working light Red', 'pi179.jpg', 2, 92, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1063, 'Car shape toolkit', '270-360', 'Car shape toolkit with free wheels (21 pc) with working headlights Red', 'pi180.jpg', 2, 92, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1064, 'Power Plus Vacuumized travel flask', '450-540', 'Power Plus Vacuumized travel flask (500 ml approx) Brown, Gray', 'pi181.jpg', 2, 93, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1065, 'Power Plus Crystal sipper', '495-594', 'Power Plus Crystal sipper (350 ml approx) Gray, Wine Red', 'pi182.jpg', 2, 93, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1066, 'Grippy water bottle', '81-153', 'Grippy water bottle (800 ml) BL,RD,YL,WH, GRN', 'pi183.jpg', 2, 93, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1067, 'Vacuumized Travel flask', '495-594', 'Vacuumized Travel flask (700 ml approx) Brown, Gray', 'pi184.jpg', 2, 93, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1068, 'Car Heater Mug: With Car', '495-594', 'Car Heater Mug: With Car / USB Charger (500ml)', 'pi185.jpg', 2, 93, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1069, 'Vacuumized Tea/ Fruit Infuser', '558-657', 'Vacuumized Tea/ Fruit Infuser SS Sipper In Honeycomb Design (550 Ml)', 'pi186.jpg', 2, 93, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1070, 'Vacuum Flask With Flick Open Top', '522-630', 'Vacuum Flask With Flick Open Top (600 Ml)', 'pi187.jpg', 2, 93, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1071, 'Cola Premium Vacuum Flask', '504-603', 'Cola Premium Vacuum Flask (750ml) (Storage pouch included) Wine Red, Metallic Gray', 'pi188.jpg', 2, 93, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1072, 'Easy pour flask', '1100-1260', 'Easy pour flask 1.5L Black, White', 'pi189.jpg', 2, 93, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1073, 'Ultra shaker with compartment', '297-396', 'Ultra shaker with compartment (4 pc) Red, Blue, Black', 'pi190.jpg', 2, 93, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1074, 'Neon Shaker', '270-360', 'Neon Shaker (with steel ball) Black, White', 'pi191.jpg', 2, 93, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1075, 'Venus Vacuumized Stainless steel Flask', '510-603', 'Venus Vacummized Stainless steel Flask (550 ml approx) Wine Red, Gray', 'pi192.jpg', 2, 93, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1076, 'Lustre Stainless steel Double wall mug', '297-396', 'Lustre Stainless steel Double wall mug (425 ml approx) White, Black', 'pi193.jpg', 2, 93, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1077, 'Ferrero Stainless Steel Magic Coffee Mug', '450-540', 'Ferrero Stainless Steel Magic Coffee Mug (300 ml approx) (Spill free design) White, Black', 'pi194.jpg', 2, 93, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1078, 'Mighty Stainless Steel Magic Coffee Mug', '414-504', 'Mighty Stainless Steel Magic Coffee Mug with silicon strap (350 ml) (Spill free design). Black, Blue, Red', 'pi195.jpg', 2, 93, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1079, 'Pearl Double cap Vacuum bottle in powder coated finish', '504-603', 'Pearl Double cap Vacuum bottle in powder coated finish (750ml) White', 'pi196.jpg', 2, 93, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1080, 'Slick Stainless Steel Vacuum Flask with silicon strap', '423-513', 'Slick Stainless Steel Vacuum Flask with silicon strap (500 ml) White, Black', 'pi197.jpg', 2, 93, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1081, 'Shake it Cyclone shaker with Tablet compartment', '225-324', 'Shake it Cyclone shaker with Tablet compartment Blue, Orange', 'pi198.jpg', 2, 93, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1082, 'Halo Premium Vacuum Flask', '540-630', 'Halo Premium Vacuum Flask (500 ml) Silver, Black', 'pi199.jpg', 2, 93, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1083, 'Coco Vacuum Flask with soft handle', '396-495', 'Coco Vacuum Flask with soft handle (500 ml approx) Wine Red, Gray', 'pi200.jpg', 2, 93, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1084, 'Wilson: Stainless steel flask with carry handle', '360-450', 'Wilson: Stainless steel flask with carry handle (500 ml approx) Black', 'pi201.jpg', 2, 93, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1085, 'Metal water bottle with black body', '360-450', 'Metal water bottle with black body (750 ml approx) Blue, Red, Yellow, Orange', 'pi202.jpg', 2, 93, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1086, 'Ultima: Premium revolving kettle in stainless steel', '1000-1100', 'Ultima: Premium revolving kettle in stainless steel (2L approx). 304 Steel Inside & Outside Black', 'pi203.jpg', 2, 93, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1087, 'Pearl Double cap Vacuum bottle in powder coated finish', '504-603', 'Pearl Double cap Vacuum bottle in metallic finish with carry loop (750 ml approx) Black', 'pi204.jpg', 2, 93, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1088, 'Curvy Bullet Vacuum flask', '450-540', 'Curvy Bullet Vacuum flask (500 ml approx)', 'pi205.jpg', 2, 93, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1089, 'Fruit infuser bottle', '225-300', 'Fruit infuser bottle with silicon handle grip (700ml approx). BPA free. Black, Red, Blue', 'pi206.jpg', 2, 93, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1090, 'Victor: Borosilicate glass bottle', '315-396', 'Victor: Borosilicate glass bottle (850 ml approx) Clear', 'pi207.jpg', 2, 93, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1091, 'Pride Stainless Steel Vacuum flask', '400-495', 'Pride Stainless Steel Vacuum flask (750ml Approx) Black, White', 'pi208.jpg', 2, 93, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1092, 'Metal water bottle', '270-360', 'Metal water bottle with carrying strap (700 ml approx) White, Black', 'pi209.jpg', 2, 93, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1093, 'Electro Steel: 3 container electric steel lunch box', '500-650', 'Electro Steel: 3 container electric steel lunch box with Auto cut function Blue', 'pi210.jpg', 2, 93, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1094, 'Ripple: 750ml Stainless steel bottle', '333-396', 'Ripple: 750ml Stainless steel bottle Silver', 'pi211.jpg', 2, 93, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1095, 'Revel Stainless Steel Vacuum flask', '423-504', 'Revel Stainless Steel Vacuum flask with pull out Silicon Handle (500ml Approx), Moonlight White, Yellow', 'pi212.jpg', 2, 93, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1096, 'Ripple: 1 Ltr Stainless steel bottle', '378-477', 'Ripple: 1 Ltr Stainless steel bottle Silver', 'pi213.jpg', 2, 93, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1097, 'EcoMug: Eco Friendly Coffee mug', '144-225', 'EcoMug: Eco Friendly Coffee mug with steel inside. Made with Wheat fibre Beige', 'pi214.jpg', 2, 93, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1098, 'EcoCup Elite: Eco Friendly Glasses', '257-396', 'EcoCup Elite: Eco Friendly Glasses. Set of 4 in gift box Beige', 'pi215.jpg', 2, 93, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1099, 'EcoCup Elite: Eco Friendly Glasses', '297-393', 'EcoCup Elite: Eco Friendly Glasses . Set of 4 in gift box Beige', 'pi216.jpg', 2, 93, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1100, '6 in 1 military keychain', '150-250', '6 in 1 military keychain (with toolkit and torch) Black', 'pi217.jpg', 2, 92, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1101, 'Wooden round edge key ring', '54-81', 'Wooden round edge key ring (both side wooden)', 'pi218.jpg', 2, 87, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1102, 'Round shape keychain', '40-81', 'Round shape keychain with torch Blue, Red, Black', 'pi219.jpg', 2, 87, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1103, 'Oval metal / PU keychain', '60-90', 'Oval metal / PU keychain', 'pi220.jpg', 2, 87, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1104, 'Multiple ring keychain', '81-117', 'Multiple ring keychain (Round) Silver', 'pi221.jpg', 2, 87, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1105, 'Oval yin-yang keychain', '63-90', 'Oval yin-yang keychain', 'pi222.jpg', 2, 87, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1106, 'Easy carry keychain', '54-99', 'Easy carry keychain with hook Silver', 'pi223.jpg', 2, 87, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1107, 'Round metal keychain', '45-81', 'Round metal keychain with PU base (gunmetal finish) Black', 'pi224.jpg', 2, 87, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1108, 'Round metal keychain with PU base', '45-81', 'Round metal keychain with PU base (gunmetal finish) Black', 'pi225.jpg', 2, 87, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1109, 'Rectangle metal keychain', '54-81', 'Rectangle metal keychain with PU base (gunmetal finish) Black', 'pi226.jpg', 2, 87, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1110, 'Barrel shape metal keychain', '54-81', 'Barrel shape metal keychain with PU base (gunmetal finish) Black', 'pi227.jpg', 2, 87, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1111, 'Eye shape keychain with Carabiner', '54-90', 'Eye shape keychain with Carabiner (gunmetal finish) Black', 'pi228.jpg', 2, 87, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1112, 'Barrel shape keychain', '45-63', 'Barrel shape keychain with highlights Red, Blue', 'pi229.jpg', 2, 87, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1113, 'Square shape keychain', '45-63', 'Square shape keychain with highlights Red, Blue', 'pi230.jpg', 2, 87, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1114, 'Droplet shape keychain', '45-72', 'Droplet shape keychain with highlights Red, Blue', 'pi231.jpg', 2, 87, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1115, 'Rotating Barrel shape keychain Black', '45-81', 'Rotating Barrel shape keychain Black', 'pi232.jpg', 2, 87, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1116, 'Rotating Round shape keychain Black', '45-81', 'Rotating Round shape keychain Black', 'pi233.jpg', 2, 87, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1117, 'Metal plate keychain, Square', '45-60', 'Metal plate keychain. Square (double side engraving) Black', 'pi234.jpg', 2, 87, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1118, 'Metal plate keychain, Rectangle', '45-60', 'Metal plate keychain, Rectangle (double side engraving) Black', 'pi235.jpg', 2, 87, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1119, '5 in 1 keychain with Logo glow, stylus, mobile stand', '30-60', '5 in 1 keychain with Logo glow, stylus, mobile stand and pen Red, Blue, Black', 'pi236.jpg', 2, 87, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1120, 'Logo highlight keychain', '45-70', 'Logo highlight keychain (white backlight) Red, Black', 'pi237.jpg', 2, 87, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1121, 'Round metal keychain in Black finish', '30-60', 'Round metal keychain in Black finish (single side laser) Black', 'pi238.jpg', 2, 87, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1122, 'Rectangle metal keychain', '27-54', 'Rectangle metal keychain in Black finish (Double side laser) Black', 'pi239.jpg', 2, 87, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1123, 'Round style hanging carabiner keychain', '40-75', 'Round style hanging carabiner keychain (with PU strap). Gunmetal finish Gunmetal', 'pi240.jpg', 2, 87, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1124, 'Rectangle style hanging carabiner keychain', '40-75', 'Rectangle style hanging carabiner keychain (with PU strap). Double side branding area. Gunmetal finish Gunmetal', 'pi241.jpg', 2, 87, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1125, 'Bottle Shape Pen Brown', '25-54', 'Bottle Shape Pen Brown', 'pi242.jpg', 2, 78, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1126, 'Triangular plastic pen White, Red', '25-45', 'Triangular plastic pen White, Red', 'pi243.jpg', 2, 78, '2022-04-02 21:12:16', '2022-04-02 21:12:16');
INSERT INTO `products` (`id`, `name`, `price`, `description`, `image`, `userId`, `productCategoryId`, `created_at`, `updated_at`) VALUES
(1127, 'Ripple grip pen Black', '27-45', 'Ripple grip pen Black', 'pi244.jpg', 2, 78, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1128, 'Metal pen Red, Black', '25-45', 'Metal pen Red, Black', 'pi245.jpg', 2, 78, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1129, 'Pen With 2 Way Screwdriver', '14-45', 'Pen With 2 Way Screwdriver', 'pi246.jpg', 2, 78, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1130, 'Set of 3 chrome plated liquid highlighters', '150-225', 'Set of 3 chrome plated liquid highlighters Silver', 'pi247.jpg', 2, 78, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1131, 'Wooden curvy pen', '30-60', 'Wooden curvy pen (with chrome finish) Wooden', 'pi248.jpg', 2, 78, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1132, 'Submarine pen', '30-54', 'Submarine pen RD, BL, PUR, BLK,', 'pi249.jpg', 2, 78, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1133, 'Metal chrome pen', '27-45', 'Metal chrome pen', 'pi250.jpg', 2, 78, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1134, 'Belt pen White, Blue', '27-45', 'Belt pen White, Blue', 'pi251.jpg', 2, 78, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1135, 'Hexagon pen with stylus Silver', '22-45', 'Hexagon pen with stylus Silver', 'pi252.jpg', 2, 78, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1136, 'String pen with stylus Red, Blue', '36-63', 'String pen with stylus Red, Blue', 'pi253.jpg', 2, 78, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1137, 'Metal pen with stylus', '45-72', 'Metal pen with stylus & torch Gunmetal, Black', 'pi254.jpg', 2, 78, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1138, 'Double clip plastic pen Red', '23-45', 'Double clip plastic pen Red', 'pi255.jpg', 2, 78, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1139, 'Big Highlighter set of 3', '27-63', 'Big Highlighter set of 3 (gel based) 3 color set', 'pi256.jpg', 2, 78, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1140, 'Pen shape sanitizer in spray bottle', '27-60', 'Pen shape sanitizer in spray bottle (10 ml)', 'pi257.jpg', 2, 94, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1141, '10 ml Sanitizer spray bottle', '27-60', '10 ml Sanitizer spray bottle (without spray)', 'pi258.jpg', 2, 94, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1142, 'Folding double mirror', '54-126', 'Folding double mirror (Round) (with zoom mirror) White', 'pi259.jpg', 2, 95, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1143, 'Folding mirror with sewing kit', '54-126', 'Folding mirror with sewing kit (D shape) White', 'pi260.jpg', 2, 95, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1144, 'Light up Looking mirror', '144-207', 'Light up Looking mirror with Face illumination LEDs (works on 3xAA batteries) White', 'pi261.jpg', 2, 95, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1145, 'Swinging Metal table clock', '369-463', 'Swinging Metal table clock', 'pi262.jpg', 2, 95, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1146, 'Feather Touch All In 1 Passport Holder', '225-297', 'Feather Touch All In 1 Passport Holder (With Pen)', 'pi263.jpg', 2, 96, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1147, 'Folding backpack with hard case', '550-625', 'Folding backpack with hard case, double shell, by Castillo Milano Black', 'pi264.jpg', 2, 91, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1148, 'Folding backpack with hard case', '330-396', 'Folding backpack with hard case (single shell) by Castillo Milano Black', 'pi265.jpg', 2, 91, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1149, 'Tuff stuff Backpack', '675-756', 'Tuff stuff Backpack (3 shell pockets) by Castillo Milano Black', 'pi266.jpg', 2, 91, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1150, 'Folding duffle bag', '477-576', 'Folding duffle bag (D shape) (cabin size compliant) by Castillo Milano Black', 'pi267.jpg', 2, 91, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1151, 'Slimz black backpack', '360-450', 'Slimz black backpack with double front pocket by Castillo Milano Black', 'pi268.jpg', 2, 91, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1152, 'Slimz gray backpack', '360-450', 'Slimz gray backpack with double front pocket by Castillo Milano Gray', 'pi269.jpg', 2, 91, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1153, 'High Roller backpack', '405-504', 'High Roller backpack. Single partition by Castillo Milano Black', 'pi270.jpg', 2, 91, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1154, 'High Roller backpack', '477-570', 'High Roller backpack. Double partition by Castillo Milano Black', 'pi271.jpg', 2, 91, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1155, 'Eco-Friendly Cork Laptop Bag', '333-396', 'Eco-Friendly Cork Laptop Bag with 2 tone finish Brown', 'pi272.jpg', 2, 91, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1156, 'Eco-Friendly Cork Sling Messenger Bag', '333-396', 'Eco-Friendly Cork Sling Messenger Bag with 2 tone finish Brown', 'pi273.jpg', 2, 91, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1157, 'Eco-Friendly Cork Cheque Book Holder', '333-396', 'Eco-Friendly Cork Cheque Book Holder / Passport Holder With Sim Card Safe Case & Sim Card Jackets Brown', 'pi274.jpg', 2, 91, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1158, 'Eco-Friendly Cork All in 1 Passport holder', '321-378', 'Eco-Friendly Cork All in 1 Passport holder With Sim Card Safe Case & Sim Card Jackets (with carrying strap) Brown', 'pi275.jpg', 2, 91, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1159, 'Durable Folding Travel Bag', '333-396', 'Durable Folding Travel Bag (Flight cabin size compliant) Gray', 'pi276.jpg', 2, 91, '2022-04-02 21:12:16', '2022-04-02 21:12:16'),
(1160, 'Star Crystal Trophy 10\'\'inch ', '1050-1300', 'Crystal star trophy, Colors are available in bronze, Golden and Silver. Size are available in 10 inch, 10.5 inch and 12 inch.', '44705bb6-1c8c-47a7-92e6-38d115342bf6-Star Crystal Trophy.jpg', 2, 97, '2022-04-11 06:48:39', '2022-04-11 06:48:39'),
(1161, 'Wooden Trophy 7 inch ', '275-350', 'Available in 9 inch, wooden trophy 8 inch, wooden trophy 7  inch, wooden trophy.', 'd36465a1-dc81-487c-845f-2cc09268c711-Wooden Trophy.jpg', 2, 97, '2022-04-11 06:52:31', '2022-04-11 06:52:31'),
(1162, 'Fiber trophy  5.5 inch ', '275-340', 'Available in 7.5 inch, 6.5 inch and 5.5 inch Fiber trophy.', 'fc5e69b2-d7d8-42da-a70d-7124e7ab9b9c-Fiber trophy.jpg', 2, 97, '2022-04-11 07:00:02', '2022-04-11 07:00:02'),
(1163, 'Wooden memento', '400-450', 'Available in 9.5 inch and 8 inch Wooden memento', 'ff416629-e6cf-457e-9497-ad1df2d26464-Wooden memento .jpg', 2, 97, '2022-04-11 07:08:22', '2022-04-11 07:08:22'),
(1164, 'Wooden memento 7 inch ', '360-490', 'Available in 7 inch ,8 inch, and 9 inch Wooden memento', '3ca152f7-c86c-4d53-95e6-8dfe401f5a9c-Wooden memento -2.jpg', 2, 97, '2022-04-11 07:11:23', '2022-04-11 07:11:23'),
(1166, 'Wooden memento -6inch ', '665-960', 'Available in 6 inch,7 inch, and 8 inch Wooden memento.', '123c5394-66a4-44e3-b7b1-8fc00843c9cd-Wooden memento -4.jpg', 2, 97, '2022-04-11 07:16:44', '2022-04-11 07:16:44'),
(1167, 'Wooden memento-6 inch', '500-740', 'Available in 6 inch and 7 inch  Wooden memento', 'd058ca4a-7136-4dfe-8839-92482477c858-Wooden memento -5.jpg', 2, 97, '2022-04-11 07:18:38', '2022-04-11 07:18:38'),
(1168, 'Wooden memento-7 inch ', '430-650', 'Available in 7 inch, 8 inch, and 9 inch Wooden memento.', '109ae9d6-ee00-494a-a28f-27644ee5327c-Wooden memento -6.jpg', 2, 97, '2022-04-11 07:21:38', '2022-04-11 07:21:38'),
(1169, 'Wooden memento- 8.5 inch ', '525-860', 'Available in  8.5inch and 9.5inch Wooden memento.', '3b7c6a0f-473f-4699-9041-f8f37bf5bd75-Wooden memento -7.jpg', 2, 97, '2022-04-11 07:24:00', '2022-04-11 07:24:00'),
(1170, 'Wooden memento- 9.5 inch ', '385-485', 'Available in 9.5inch Wooden memento', '7e69d345-591e-46d0-bdeb-c5ee1ffa016b-Wooden memento -8.jpg', 2, 97, '2022-04-11 07:26:50', '2022-04-11 07:26:50'),
(1171, 'Wooden memento- 7.5 inch ', '500-850', 'Available in 7.5inch, 8.5inch, and 9.5inch Wooden memento', '7e2b584d-2a67-429a-8ea8-6a4c747cfeaa-Wooden memento -9.jpg', 2, 97, '2022-04-11 07:28:50', '2022-04-11 07:28:50'),
(1172, 'Wooden memento ', '300-500', '7.5inch,8.5inch, and 9.5inch Wooden memento', '8b3e83f5-32e3-47e5-b2b1-47b22f7f5861-Wooden memento -10.jpg', 2, 97, '2022-04-11 07:30:59', '2022-04-11 07:30:59'),
(1173, 'Wooden memento-9.5 inch ', '500-800', 'Available in 9.5inch Wooden memento- Black and white color. ', '190b9b21-20c5-47b0-b767-d5738a9f5196-Wooden memento -11.jpg', 2, 97, '2022-04-11 07:33:51', '2022-04-11 07:33:51'),
(1174, 'Wooden trophy - 11 inch ', '800-1300', 'Available in 11 inch, 12inch  and 14 inch Wooden memento', '76c42bee-8181-4297-8022-cec4a91b4f32-Wooden memento -12.jpg', 2, 97, '2022-04-11 07:36:11', '2022-04-11 07:36:11'),
(1175, 'Wooden memento - 11 inch ', '900-1300', 'Available in 11 inch,  13 inch and   15 inch Wooden memento', '54aed863-73b4-4df5-8434-4ee6f3856dc4-Wooden memento -13.jpg', 2, 97, '2022-04-11 07:38:32', '2022-04-11 07:38:32'),
(1176, 'Wooden memento-10 inch ', '750-1500', 'Available in 10inch,  11 inch  and 12 inch Wooden memento with metal ', 'a3dd51aa-dde4-4965-800c-af147f00cf90-Wooden memento -14.jpg', 2, 97, '2022-04-11 07:42:00', '2022-04-11 07:42:00'),
(1177, 'Star memento -8.5 inch ', '575-950', 'Available in 8.5 inch,  9.5 inch and  10.5 inch Wooden memento', 'aef5a5cf-ee05-456f-9a9f-b562197888b3-Wooden memento -155.jpg', 2, 97, '2022-04-11 07:44:12', '2022-04-11 07:44:12'),
(1178, 'Wooden memento ', '575-950', 'Available in 10 inch, 11 inch and  13 inch Wooden memento', '64dd63d9-dcff-46c8-9d16-900cb0bcf8a6-Wooden memento -15.jpg', 2, 97, '2022-04-11 07:46:26', '2022-04-11 07:46:26'),
(1179, '3 star trophy- 11 inch ', '950-1250', 'Available in 11 inch  Bronze, 11 inch Silver and 11 inch Gold ', '1748eb28-b39f-4254-9147-9a5d56ac3934-634ff8a0-349f-4c6e-93ec-1a9272a206f6.jpg', 2, 97, '2022-04-11 07:49:36', '2022-04-11 07:49:36'),
(1180, 'Trophy ', '1300-2000', 'Available in 11 inch, 13 inch and 15 inch  Trophy', '510504ec-6452-4025-9d48-07a32d3a8f9f-Metal Trophy 3.jpg', 2, 97, '2022-04-11 07:52:11', '2022-04-11 07:52:11'),
(1181, 'Star  Trophy', '850-1100', 'Available in Bronze 9 inch, Silver  9 inch and Gold  9 inch.', '46b6aead-b0ae-4434-aa07-ee64deaf96a2-Star  Trophy.jpg', 2, 97, '2022-04-11 07:56:11', '2022-04-11 07:56:11'),
(1182, 'Star  Trophy 11\' inch ', '990-1650', 'Available 11 inch,12 inch, and 13 inch. ', 'dd2e5bca-7c53-4f6d-920b-fd6908c25fca-Star  Trophy 11\' inch .jpg', 2, 97, '2022-04-11 07:58:07', '2022-04-11 07:58:07'),
(1184, '3 Star  Trophy 12\' inch', '1125-1960', 'Available in 12 inch,14 inch and 15 inch ', '70453d00-1217-479c-8070-909c2ecb9ad5-3 Star  Trophy 12.5\' inch .jpg', 2, 97, '2022-04-11 08:03:04', '2022-04-11 08:03:04'),
(1185, '3 Star  Trophy 12\' inch', '1300-1800', 'Available in 12 inch,14 inch and 15 inch ', '8fea592f-401f-40a9-8e41-ef6250dd65d0-3 Star  Trophy 12\' inch.jpg', 2, 97, '2022-04-11 08:09:53', '2022-04-11 08:09:53'),
(1186, 'Hand shake golden trophy 10\'\'inch ', '1150-1500', 'Available in  10 inch,11 inch and 12 inch', '517b1ae7-494e-4548-8a9f-bf34d89893d4-Hand shake golden trophy 10\'\'inch .jpg', 2, 97, '2022-04-11 08:11:14', '2022-04-11 08:11:14'),
(1187, 'Wooden memento 8 inch ', '580-750', 'Available in 8 inch, 9  inch and 10 inch ', '67e38d5a-cda3-4d1c-82e6-8a6d6c999faf-Wooden memento 8 inch.png', 2, 97, '2022-04-11 08:15:18', '2022-04-11 08:15:18'),
(1188, 'Wooden memento-9 inch ', '800-1500', 'Available in 9 inch, 10.5 inch and 11 inch ', '6fa860d8-c4b9-4ae6-a237-31d26076fa36-FGE.jpg', 2, 97, '2022-04-11 08:18:11', '2022-04-11 08:18:11'),
(1189, 'Wooden memento 8 inch ', '500-900', 'Available in 8 inch and 14 inch.', '772f47a3-94a6-464b-97fe-af0ff77895ee-Wooden memento 8\'\'inch .png', 2, 97, '2022-04-11 08:19:41', '2022-04-11 08:19:41'),
(1190, 'Wooden memento-11 inch', '750-1050', 'Available in 11 inch and 13 inch.', '6ad26e30-7313-4faf-9ec1-156126a18551-fhtryh.jpg', 2, 97, '2022-04-11 08:23:58', '2022-04-11 08:23:58'),
(1191, '3 star wooden memento-11 inch ', '750-902', 'Available in 11 inch golden 3 star wooden memento.', 'ebde6e4f-9af6-4fe1-890c-6d8ad59e3e49-3 star wooden memento .jpg', 2, 97, '2022-04-11 08:26:42', '2022-04-11 08:26:42'),
(1192, 'Single star wooden memento', '650-900', '10 inch golden single star.', '2469366b-0a56-4fcd-a11d-4a4e540ec29f-1 star wooden memento.jpg', 2, 97, '2022-04-11 08:28:19', '2022-04-11 08:28:19'),
(1193, '1 star memento 9 inch ', '1075-1650', 'Available in Gold,Silver,Bronze.', '7a3a8e08-7fb9-4d9e-be51-8ec54312677d-1 star memento 9\'\'inch .jpg', 2, 97, '2022-04-11 08:29:39', '2022-04-11 08:29:39'),
(1194, 'Single star 9 inch Trophy  ', '825-1050', 'Available in 9 Bronze, 9 Silver and  9 inch  Gold.  ', '54a825a7-279a-4388-b5b5-5a4b87980f16-Single star 9\'\'inch memento .jpg', 2, 97, '2022-04-11 08:31:53', '2022-04-11 08:31:53'),
(1195, 'Single star 8 inch trophy  ', '900-1500', 'Available in 8 inch  Gold      ', '1bffe41d-199d-4f5d-a23f-585a6496a110-Single star 8\'\'inch memento .png', 2, 97, '2022-04-11 08:33:36', '2022-04-11 08:33:36'),
(1196, ' Double Star trophy ', '900-1200', 'Available in 10 inch  Bronze,10 inch Silver and 10 inchGold.   ', 'd29b2505-de70-460d-a140-dc6b4241e585-WhatsApp Image 2022-04-11 at 2.06.24 PM.jpeg', 2, 97, '2022-04-11 08:38:21', '2022-04-11 08:38:21'),
(1197, 'Single star 8 inch trophy ', '900-1300', 'Available in 8 inch Gold and 8 inch Silver.', 'a7da0996-3de1-41c0-a04c-a25df08af9db-Single star 8\'\'inch trophy .png', 2, 97, '2022-04-11 08:39:54', '2022-04-11 08:39:54'),
(1198, 'Wooden memento 7.5 inch', '450-700', 'Available in 7.5 inch and 9 inch.', 'dc111972-7857-46be-9547-8da9b35f428b-Wooden memento 7.5\'\'inch .jpg', 2, 97, '2022-04-11 08:41:43', '2022-04-11 08:41:43'),
(1199, 'Wooden round shape  memento 7.5 inch ', '400-900', 'Available in 7.5 inch , 9 inch and 10 inch.', '96ae49a2-952c-4a12-add6-1fdfb1922212-Wooden round shape  memento 7.5\'\'inch .jpg', 2, 97, '2022-04-11 08:43:04', '2022-04-11 08:43:04'),
(1200, 'Wooden memento 6x8 inch ', '400-999', 'Available in 6X 8  inch,8x10 inch and 10 x12 inch ', '2685aeb2-f23e-41d2-b664-af1c74be1901-Wooden memento 6_8\'\'inch .jpg', 2, 97, '2022-04-11 08:45:12', '2022-04-11 08:45:12'),
(1201, ' Piano Wooden Plaque 6x8 inch ', '330-900', 'Available in 6x8 inch, 8x10 inch and 10x12 inch.', 'c4057fa8-46bb-4c46-80bf-5be9a628d9a6-_ Piano Wooden Plaque 6_8 inch .png', 2, 97, '2022-04-11 08:50:53', '2022-04-11 08:50:53'),
(1202, '  Piano Wooden Plaque ', '650-750', 'Available in 11x9.5 inch', 'd2734b2c-2d79-4343-945a-81eb069da369-_ Piano Wooden Plaque .jpg', 2, 97, '2022-04-11 09:39:34', '2022-04-11 09:39:34'),
(1203, 'Wooden Plaque Gold & Silver', '600-900', ' Available in ABS Star 8X10 inch Metal Star', '8029ecc0-e35b-4c8c-a4b9-0abfe3b4069f-Wooden Plaque Gold & Silver.jpg', 2, 97, '2022-04-11 09:41:02', '2022-04-11 09:41:02'),
(1204, 'Star memento ', '495-595', 'Available in 6 X 8 inch Gold & Silver ABS 6 X 8 inch  Silver Metal and  6 X 8  inch Gold Metal', '09200f6e-455c-4455-b761-e3c9c889dc7f-Star memento .jpg', 2, 97, '2022-04-11 09:42:44', '2022-04-11 09:42:44'),
(1205, 'Star memento ', '300-800', 'Available in 6\'\'X 8\' inch ', '4d3f54e2-c0e5-4f11-a93d-27d439b2ee94-Star memento  (1).jpg', 2, 97, '2022-04-11 09:43:38', '2022-04-11 09:43:38'),
(1206, ' Gold & Silver 10x10 inch ', '1100-2200', 'Available in 10x10inch, 12x12inch and 13x13inch.', '539e3b43-f7e5-49cf-962a-32d4d94cd4e5-_Gold & Silver 10_10\'\' inch .jpg', 2, 97, '2022-04-11 09:44:57', '2022-04-11 09:44:57'),
(1207, 'Award 6x8 inch', '700-1300', 'Available in 6x8inch, 8x10 inch and 10x12inch   ', 'e371a6d6-9da9-4b17-ab88-ab6b1200bc21-Award 6_8\'\' inch .jpg', 2, 97, '2022-04-11 09:46:32', '2022-04-11 09:46:32'),
(1208, 'Golden plate award ', '900-1600', 'Available in 8x10 inch, 9x11inch and 10x12 inch .', '1dd1602f-006f-4d34-823f-efb05ddf98d0-Golden plate award .jpg', 2, 97, '2022-04-11 09:47:44', '2022-04-11 09:47:44'),
(1209, 'Wooden silver memento', '750-1600', 'Available in 6x8 inch,8x10 inch, 9x11inch and 10x12inch.', '5281e360-6ac3-4c68-962b-363fde62c5d7-Wooden silver memento .jpg', 2, 97, '2022-04-11 09:48:58', '2022-04-11 09:48:58'),
(1210, 'Wooden golden  memento 8x10 inch ', '900-1600', 'Available in 8x10 inch,9x11 inch and 10x12inch.', 'a244bfab-aa13-4f24-8598-58a8e5a36c71-Wooden golden  memento 8_10 inch .jpg', 2, 97, '2022-04-11 10:07:53', '2022-04-11 10:07:53'),
(1211, 'Wooden silver memento 10x8 inch ', '500-950', 'Available in 10x8 inch gold and silver ', 'aff43b5d-83dd-43be-b283-657642c29837-Wooden silver memento 10_8 inch .jpg', 2, 97, '2022-04-11 10:08:48', '2022-04-11 10:08:48'),
(1212, 'Award 8x10 inch ', '700-1200', 'Available in 8x10 inch and 10x12inch ', 'f14af71d-a3d8-44c3-a246-f64d1b5a2bab-Award 8_10 inch .jpg', 2, 97, '2022-04-11 10:10:48', '2022-04-11 10:10:48'),
(1213, 'White Photo wood Plate 4x6 inch  ', '400-985', 'Available in 4 X 6 inch,  6 X 8inch 8 X10inch and 10 X 12 inch ', '06d7b33b-7456-4d8e-9bd8-f5791cc76be5-_White Photo wood Plate 4_6 inch  _.jpg', 2, 97, '2022-04-11 10:12:02', '2022-04-11 10:12:02'),
(1214, 'Steambeech 4x6 inch ', '300-4000', 'Avaialble in 4 X 6 inch , 6 X 8 inch, 8 X10inch, 10 X 12inch, 12 X 16inch and 18x24inch ', 'bb18ae8b-60a1-4e90-9e9e-3e56bab33847-Steambeech 4_6 inch .jpg', 2, 97, '2022-04-11 10:13:29', '2022-04-11 10:13:29'),
(1215, 'Crystal trophy ', '400-699', 'Available in 5 inch ', '74f2ee23-9d9e-43a6-bc60-9694205041fe-Crystal trophy .jpg', 2, 97, '2022-04-11 10:14:49', '2022-04-11 10:14:49'),
(1216, 'Handshake Crystal Trophy 4.5 inch ', '450-999', 'Handshake crystal trophy, available size, height - 4.5 inch ,5 inch and 5.5 inch ', '853f8802-165a-4eb8-b815-ea3e81bf9504-Handshake Crystal Trophy 4.5\'\'inch .png', 2, 97, '2022-04-11 10:17:56', '2022-04-11 10:17:56'),
(1217, 'Crystal trophy ', '2000-6000', 'Available in 8.5 inch, 10 inch and 11 inch.', '83ac9d7c-6543-4986-b462-b7f63837c3e1-WhatsApp Image 2022-04-11 at 3.48.53 PM.jpeg', 2, 97, '2022-04-11 10:20:23', '2022-04-11 10:20:23'),
(1218, 'Crystal handshake trophy -7 inch ', '950-1800', 'Available in 7 inch 8 inch and 9 inch.', '09a3e3cf-fed3-4316-ad31-e33fe622b499-WhatsApp Image 2022-04-11 at 3.50.47 PM.jpeg', 2, 97, '2022-04-11 10:22:32', '2022-04-11 10:22:32'),
(1219, 'Crystal star -8 inch.', '820-1150', 'Available in 8 inch and 9 inch.', 'cd8f19ad-5e8c-462f-974e-d06242f41d2c-WhatsApp Image 2022-04-11 at 3.52.56 PM.jpeg', 2, 97, '2022-04-11 10:24:28', '2022-04-11 10:24:28'),
(1220, 'Crystal star-9 inch', '950-1550', 'Available in 9 inch, 9.5 inch and 10.5 inch.', 'cabd4cd1-b6fa-4caf-bc1b-a7f2477d3d1f-WhatsApp Image 2022-04-11 at 3.54.57 PM.jpeg', 2, 97, '2022-04-11 10:26:19', '2022-04-11 10:26:19'),
(1221, 'Crystal single star-9 inch ', '1075-2100', 'Available in 9 inch, 10 inch and 11 inch.', 'a8c448f1-0de7-4157-b51c-c462dbe16f39-WhatsApp Image 2022-04-11 at 3.56.33 PM.jpeg', 2, 97, '2022-04-11 10:30:16', '2022-04-11 10:30:16'),
(1222, 'Crystal trophy with 5 star-9 inch', '999-1999', 'Available in 9 inch, 9.5 inch and 10.5 inch.', '4777fe9a-18f4-4bd3-b903-cb03faa4354a-WhatsApp Image 2022-04-11 at 3.56.38 PM.jpeg', 2, 97, '2022-04-11 10:31:56', '2022-04-11 10:31:56'),
(1223, 'Crystal trophy-Single blue star', '1250-2100', 'Available in 11 inch and 12 inch.', 'e757301e-06ce-4c20-b5f9-d0fd0d685c40-WhatsApp Image 2022-04-11 at 3.56.43 PM.jpeg', 2, 97, '2022-04-11 10:33:47', '2022-04-11 10:33:47'),
(1224, 'Golden star- crystal trophy ', '1350-2100', 'Available in 10 inch.', '08eed367-dff6-43b2-9f7d-ec76044dc75a-WhatsApp Image 2022-04-11 at 3.56.52 PM.jpeg', 2, 97, '2022-04-11 10:35:01', '2022-04-11 10:35:01'),
(1225, 'Crystal trophy ', '750-1899', 'Available in 6.5 inch, 9.5 inch and 10.5 inch.', '871c1ab0-83fc-4c3d-828f-c226e341797a-WhatsApp Image 2022-04-11 at 3.56.57 PM.jpeg', 2, 97, '2022-04-11 10:36:32', '2022-04-11 10:36:32'),
(1226, 'Single blue star- crystal trophy ', '875-1450', 'Available in 9 inch, 10 inch and 11 inch.', 'be0a794d-5945-4d4a-a108-637cd1c4fcd1-WhatsApp Image 2022-04-11 at 3.57.04 PM.jpeg', 2, 97, '2022-04-11 10:37:55', '2022-04-11 10:37:55'),
(1227, 'Crystal trophy-9 inch', '850-1450', 'Available in 9 inch, 10 inch and 11 inch.', '47849f94-d7af-4288-9ae7-38dc8f17baad-WhatsApp Image 2022-04-11 at 3.57.22 PM.jpeg', 2, 97, '2022-04-11 10:40:26', '2022-04-11 10:40:26'),
(1228, 'Crystal trophy-7inch ', '525-1450', 'Available in 7 inch, 10 inch, and 10.5 inch.', '0ee365d7-2bbf-4d5d-b306-14c97bb12f52-WhatsApp Image 2022-04-11 at 3.57.12 PM.jpeg', 2, 97, '2022-04-11 10:42:23', '2022-04-11 10:42:23'),
(1229, 'Single star crystal trophy ', '1250-1950', 'Available in 10 inch.', '25505e4f-d79a-493c-bfc7-30f4bb42d648-WhatsApp Image 2022-04-11 at 4.12.49 PM.jpeg', 2, 97, '2022-04-11 10:45:34', '2022-04-11 10:45:34'),
(1230, 'Crystal trophy ', '1000-1900', 'Single star crystal trophy Available in 8 inch, 9 inch and 10 inch.', 'df23d3ff-8d77-4833-bd15-5cc86f1069dd-WhatsApp Image 2022-04-11 at 4.13.03 PM.jpeg', 2, 97, '2022-04-11 10:47:03', '2022-04-11 10:47:03'),
(1231, 'Crystal trophy combination blue color', '950-1895', 'Available in 8 inch, 9 inch and 10 inch.', '00bcc6de-cc1b-49a5-86f4-48f638712a92-WhatsApp Image 2022-04-11 at 4.13.08 PM.jpeg', 2, 97, '2022-04-11 10:48:45', '2022-04-11 10:48:45'),
(1232, 'Crystal trophy ', '725-1400', 'Available in 6 inch, 7 inch and 8 inch.', '180c5edf-2eeb-43cb-b2d2-8b478282e823-WhatsApp Image 2022-04-11 at 4.13.41 PM.jpeg', 2, 97, '2022-04-11 10:49:50', '2022-04-11 10:49:50'),
(1233, 'Crystal trophy-6 inch ', '836-1500', 'Available in 6 inch, 7 inch and 8 inch. ', '1e2726c2-cc75-45ed-a540-4342e9682bd9-WhatsApp Image 2022-04-11 at 4.13.52 PM.jpeg', 2, 97, '2022-04-11 10:51:04', '2022-04-11 10:51:04'),
(1234, 'Crystal trophy ', '850-1232', 'Available in 10 inch.', '660206e5-b0a4-47af-a2be-464b94954da8-WhatsApp Image 2022-04-11 at 4.22.16 PM.jpeg', 2, 97, '2022-04-11 10:53:20', '2022-04-11 10:53:20'),
(1235, 'Crystal trophy ', '900-1200', 'Available in 8 inch.', 'fd676d5c-c329-4eaa-9757-5861fe567794-WhatsApp Image 2022-04-11 at 4.23.43 PM.jpeg', 2, 97, '2022-04-11 11:01:57', '2022-04-11 11:01:57'),
(1236, 'Crystal trophy ', '900-1200', 'Available in 8.5 inch.', 'ea5da0de-c0c5-42f6-816b-d10b066bb3e7-WhatsApp Image 2022-04-11 at 4.24.12 PM.jpeg', 2, 97, '2022-04-11 11:02:45', '2022-04-11 11:02:45'),
(1237, 'Crystal trophy-8.5 inch ', '900-1200', 'Available in 8.5 inch.', '2d1547b3-699f-43ed-afce-5ab9d1928900-WhatsApp Image 2022-04-11 at 4.24.29 PM.jpeg', 2, 97, '2022-04-11 11:03:38', '2022-04-11 11:03:38'),
(1238, 'Crystal award ', '950-1499', 'Available in 9 inch.', '59f7efe5-d05c-4fc8-813d-3ef39ca65df3-WhatsApp Image 2022-04-11 at 4.24.56 PM.jpeg', 2, 97, '2022-04-11 11:05:50', '2022-04-11 11:05:50'),
(1239, 'crystal trophy ', '650-999', 'Available in 7 inch.', '864d356d-2029-4cef-b3aa-9dce79c6d5f0-WhatsApp Image 2022-04-11 at 4.25.15 PM.jpeg', 2, 97, '2022-04-11 11:06:55', '2022-04-11 11:06:55'),
(1240, 'Crystal trophy-7 inch', '675-1300', 'Available in 7  inch and 10 inch.', '7dfd4fc4-faad-44ac-a7b0-f65592e9f493-WhatsApp Image 2022-04-11 at 4.25.27 PM.jpeg', 2, 97, '2022-04-11 11:08:38', '2022-04-11 11:08:38'),
(1241, 'Crystal trophy-8.5 inch', '900-1300', 'Available in 8.5 inch.', '43d8dba8-e067-4b73-82dc-81da775eddf6-WhatsApp Image 2022-04-11 at 4.25.32 PM.jpeg', 2, 97, '2022-04-11 11:09:33', '2022-04-11 11:09:33'),
(1242, 'Crystal trophy ', '900-1399', 'Available in 8.5 inch.', '6de3c231-b474-4bff-8c70-8d9814b4be16-WhatsApp Image 2022-04-11 at 4.25.47 PM.jpeg', 2, 97, '2022-04-11 11:10:29', '2022-04-11 11:10:29'),
(1243, 'Crystal trophy- blue star ', '1200-1900', 'Available in 9.5 inch.', 'b29a516b-eabb-4e1a-8094-f36c7fe3ec01-WhatsApp Image 2022-04-11 at 4.25.56 PM.jpeg', 2, 97, '2022-04-11 11:11:34', '2022-04-11 11:11:34'),
(1244, 'crystal trophy with blue color ', '900-1600', 'Available in 8 inch, 8.5 inch and 9.5 inch.', '7b2993b4-a437-4366-bd7f-e7e89cc67470-WhatsApp Image 2022-04-11 at 4.26.02 PM.jpeg', 2, 97, '2022-04-11 11:13:07', '2022-04-11 11:13:07'),
(1245, 'Round crystal trophy ', '499-1350', 'Available in 4.5 inch,5.75 inch,6.5 inch 8inch and 8.5 inch.', 'ac7fdc38-dae1-41ca-bf1e-422712454c21-WhatsApp Image 2022-04-11 at 4.26.32 PM.jpeg', 2, 97, '2022-04-11 11:15:02', '2022-04-11 11:15:02'),
(1246, 'Round crystal trophy with black base', '625-1450', 'Available in 5.5 inch and 7 inch.', '5a59ce0c-b32f-48d3-8cdd-95eb0e9f0145-WhatsApp Image 2022-04-11 at 4.26.48 PM.jpeg', 2, 97, '2022-04-11 11:16:42', '2022-04-11 11:16:42'),
(1247, 'Star crystal trophy ', '1375-2500', 'Available in 8 inch.', '04054383-d307-4885-a1cf-fb8ffe8098f0-WhatsApp Image 2022-04-11 at 4.49.05 PM.jpeg', 2, 97, '2022-04-11 11:22:28', '2022-04-11 11:22:28'),
(1248, 'Crystal trophy ', '975-1550', 'Available in 6 inch.', '5111dfed-43ee-4aa7-b0ea-f217e6c635e4-WhatsApp Image 2022-04-11 at 4.48.49 PM.jpeg', 2, 97, '2022-04-11 11:23:15', '2022-04-11 11:23:15'),
(1249, 'Acrylic trophy ', '560-990', 'Available in 6 inch.', 'a7dd7365-94ee-46ed-a3d1-1143db8eb3e8-WhatsApp Image 2022-04-11 at 4.48.23 PM.jpeg', 2, 97, '2022-04-11 11:24:14', '2022-04-11 11:24:14'),
(1250, 'Acrylic trophy ', '425-999', 'Available in 7 inch.', '62e10047-4ef8-4eaf-a93a-891869d98b42-WhatsApp Image 2022-04-11 at 4.47.58 PM.jpeg', 2, 97, '2022-04-11 11:26:09', '2022-04-11 11:26:09'),
(1251, 'Acrylic trophy ', '250-450', 'Available in 4.5 inch, 5 inch and 5.5 inch.', 'c99a797c-8635-495c-8f35-127958eaca7a-WhatsApp Image 2022-04-11 at 4.56.26 PM.jpeg', 2, 97, '2022-04-11 11:27:59', '2022-04-11 11:27:59'),
(1252, 'Acrylic trophy ', '270-850', 'Available in 6 inch.', '1b9d7cc8-03fd-4a60-9a67-b1f9ea88b3fe-WhatsApp Image 2022-04-11 at 4.58.16 PM.jpeg', 2, 97, '2022-04-11 11:29:08', '2022-04-11 11:29:08'),
(1253, 'Crystal Cube CC ', '240-950', 'Available in 40x40x 60 inch, 50x50x 80 inch and 60x60 x 100 inch.', '884fb9dd-7f2d-4ca5-8e77-318ce599c937-WhatsApp Image 2022-04-11 at 5.00.33 PM.jpeg', 2, 97, '2022-04-11 11:32:39', '2022-04-11 11:32:39'),
(1254, 'Crystal Cube Edge Round CCER', '210-750', 'Available in 40x40x 40 inch, 50x50x 50 inch and 60x60x 60 inch.', '32e6b3d6-2abc-46f0-9d84-8e0e9b74b93e-WhatsApp Image 2022-04-11 at 5.00.21 PM.jpeg', 2, 97, '2022-04-11 11:33:57', '2022-04-11 11:33:57'),
(1255, 'Crystal Paperweight   ', '135-499', 'Available in 1.5 inch, 2 inch, 2.5 inch and 3 inch.', '69eae6a3-7bfb-408d-a9ac-d12ea806ef42-WhatsApp Image 2022-04-11 at 4.59.53 PM.jpeg', 2, 97, '2022-04-11 11:35:56', '2022-04-11 11:35:56'),
(1256, 'Crystal Pyramid', '240-999', 'Available in 2 inch, 2.5 inch, 3 inch and 4 inch.', '711a1fed-5fcb-41a2-b4a5-30ed7546ad87-WhatsApp Image 2022-04-11 at 4.59.44 PM.jpeg', 2, 97, '2022-04-11 11:37:48', '2022-04-11 11:37:48'),
(1257, 'Crystal Globe', '250-350', 'Available in 2 inch.', '8a13389c-87e2-4fc2-aee6-e949587e18b4-WhatsApp Image 2022-04-11 at 4.59.32 PM.jpeg', 2, 97, '2022-04-11 11:40:06', '2022-04-11 11:40:06'),
(1258, 'Desk top with Photo frame ', '499-899', 'Wooden desktop', '98f40955-a99a-4399-ac47-2bf7c5731102-WhatsApp Image 2022-04-11 at 5.12.04 PM (1).jpeg', 2, 48, '2022-04-11 11:49:49', '2022-04-11 11:49:49'),
(1259, 'Wooden pen stnad ', '370-850', 'Wooden pen stand-2.5x3 inch', 'cc987256-64b5-4489-b9a8-3c05c8ec4d68-WhatsApp Image 2022-04-11 at 5.12.29 PM (1).jpeg', 2, 48, '2022-04-11 11:53:03', '2022-04-11 11:53:03'),
(1260, 'Wooden pen stand ', '380-880', 'Available in 3x3inch', 'e43e359a-2c9f-4f3d-9337-46ce327894af-WhatsApp Image 2022-04-11 at 5.12.37 PM (1).jpeg', 2, 48, '2022-04-11 11:55:42', '2022-04-11 11:55:42'),
(1261, 'Wooden pen stand with clock ', '450-990', 'Bhim stand- wooden desktop', '31535cfd-65d0-4855-8974-4fbcd97abc56-WhatsApp Image 2022-04-11 at 5.13.02 PM.jpeg', 2, 48, '2022-04-11 11:58:07', '2022-04-11 11:58:07'),
(1262, 'Crystal desktop ', '700-1100', 'Crystal desktop with clock, pen stand and card holder. ', '97118fcb-5389-4d8a-84c1-938855de3351-WhatsApp Image 2022-04-11 at 5.13.15 PM.jpeg', 2, 48, '2022-04-11 12:00:13', '2022-04-11 12:00:13'),
(1263, 'Wooden single  pen stand ', '245-550', 'Wooden pen stand with clock ', 'cf2c0a4e-4048-44e5-a7e3-b5a9a5fbf667-WhatsApp Image 2022-04-11 at 5.13.25 PM.jpeg', 2, 48, '2022-04-11 12:01:32', '2022-04-11 12:01:32'),
(1264, 'Mobile stand ', '255-550', 'Wooden pen stand ', '87e8c6d3-3afe-4a94-b7ac-f7dbf4208c5d-WhatsApp Image 2022-04-11 at 5.13.49 PM.jpeg', 2, 83, '2022-04-11 12:03:41', '2022-04-11 12:03:41'),
(1265, 'Top Line Crome  Steel Pocket ', '150-450', 'Crad holder ', '87f7bf06-02e7-438c-8490-3f483e9dc88b-WhatsApp Image 2022-04-11 at 5.34.45 PM.jpeg', 2, 47, '2022-04-11 12:05:35', '2022-04-11 12:05:35'),
(1266, 'Magnet Leather Pocket', '205-450', 'Card holder black and silver.', 'a092e712-6a4b-4f12-aed5-e2a9c02523cc-WhatsApp Image 2022-04-11 at 5.35.55 PM.jpeg', 2, 47, '2022-04-11 12:07:00', '2022-04-11 12:07:00'),
(1267, 'Leather Pocket', '155-290', 'card holder- brown color ', 'f6371fed-7af6-4ad1-8f1b-80bfc7838a66-WhatsApp Image 2022-04-11 at 5.37.09 PM.jpeg', 2, 47, '2022-04-11 12:08:31', '2022-04-11 12:08:31'),
(1268, 'Card holder ', '160-250', 'Magnet Leather Pocket', '7020694d-bae1-4f9e-bc0b-c2bb753e0210-WhatsApp Image 2022-04-11 at 5.38.48 PM.jpeg', 2, 47, '2022-04-11 12:09:58', '2022-04-11 12:09:58'),
(1269, 'Temperature Bottle', '400-999', 'Temperature Bottle Black/White  500 mL Steel Water Bottle set of 1', 'c56f04e7-9dee-457c-be4d-7d8996ad8e68-Life-and-Me-Temperature-Bottle-SDL041142003-1-49d4a.jpg', 2, 57, '2022-04-11 12:20:46', '2022-04-11 12:20:46'),
(1270, 'NOAH MESSENGER', '1000-1333', 'NOAH MESSENGER MC-238 C 15 W X 12 H X 5 D CARRY HANDLE 20 ADJ. STRAP FRONT POCKET W/ ZIPPER INTERIOR PADDEDPOCKET SLIP POCKET W/ PEN HOLDERS Z', '1815d96d-c2b4-4148-9625-3b6158130130-NOAH MESSENGER.jpg', 2, 64, '2022-04-11 12:27:11', '2022-04-11 12:27:11'),
(1271, 'Dumbo Stainless Steel Spill Proof Travel Mug', '910-1200', 'Dumbo Stainless Steel Spill Proof Travel Mug with Flip Top Lid, Patented Design & Suction Technology, Hot & Cold-2 Hours, Tea & Coffee Mug (450 ML)Green/Black/White/Yellow/Pink.', 'bf624150-b166-44f4-837b-ebb79f89c6a8-d-3-500x500.jpg', 2, 53, '2022-04-11 12:41:46', '2022-04-11 12:41:46'),
(1272, 'Grace Stainless Steel Spill Proof Suction Mug', '840-1500', 'Grace Stainless Steel Spill Proof Suction Mug with Flip Top Lid, Patented Design & Suction Technology, Keeps Hot & Cold for 2 Hours (470 ML)White/Black/Pink.', '949d8677-8145-4fc2-ae70-5faa190cdf0a-71N+8ue1mYL._SL1500_.jpg', 2, 53, '2022-04-11 12:43:53', '2022-04-11 12:43:53'),
(1273, 'Elephant Grip Pad Suction Mug ', '960-1899', 'ARTIART Elephant Grip Pad Suction Mug with Flip Top Lid  Patented Design & Suction Technology Vacuum Insulated, Hot & Cold for Tea, Coffee 400ml ', 'fe75b051-4c46-48ad-9d7f-6344642f429e-81mRMJBpr1L._SL1500_.jpg', 2, 53, '2022-04-11 12:45:52', '2022-04-11 12:45:52'),
(1274, 'ARTIART Butterfly Stainless  Suction Bottle', '1225-2599', 'ARTIART Taiwan Butterfly Stainless Steel Double Wall Vacuum Insulated Suction Bottle with Twist Open Lid, Tea Filter, Patented Design Technology, Keeps Hot and Cold for 12 Hours 400 ml', '845ac13e-2eaf-4e91-b1a7-e3e4916fb907-71z058sr--S._SL1500_.jpg', 2, 57, '2022-04-11 12:48:00', '2022-04-11 12:48:00'),
(1275, ' Artist PP Travel Bottle', '700-1449', 'ARTIART Artist PP Travel Bottle with Spout Lid, Patented Design & Suction Technology, Hot & Cold for 2 Hours 410 ML)Grey/Pink.', '15079011-a287-407d-b24a-5b303d471c27-61e0SCJ+E8L._SX466_.jpg', 2, 57, '2022-04-11 12:50:02', '2022-04-11 12:50:02'),
(1276, 'Suction Bottle (Stainless Steel)', '1290-2599', 'Artist Suction Bottle 450ml  Artist Suction Bottle 450ml Suction Bottle Stainless Steel 450 ml', 'bc5e9003-e1b9-4e80-8034-7b7239601aed-artiact-drin053---artist-suction-bottle-(450ml)-81-2020-04.jpg', 2, 57, '2022-04-11 12:52:20', '2022-04-11 12:52:20'),
(1277, 'ARTIART Swan Tea Pot/ Carafe with Child Lock Technology', '2000-41299', 'ARTIART Swan Tea Pot/ Carafe with Child Lock Technology, Patented Design, Double Walled Vacuum Insulated with 18-20 Hours Hot & Cold  1500 ML White', 'aa753737-78c5-4def-a1b1-84f312b26004-71BcCL2Dl2L._SL1500_.jpg', 2, 93, '2022-04-11 12:54:59', '2022-04-11 12:54:59'),
(1278, 'Electric Kettle PKOSS 1.8', '930-1300', '1.8 Litre CapacityElegant Handles with Single- Touch Lid LockingAutomatic Cut-Off When Water Has BoiledConcealed ElementPower Indicator360 Degree Swivel Base 1500 W', 'a39f97ec-792f-4d52-8988-ab0ee2ede3c7-71zlLSHbJ-L._SL1500_.jpg', 2, 98, '2022-04-12 05:51:01', '2022-04-12 05:51:01'),
(1279, 'Sandwich Toasters With fixed Grill Plate, PGMFB', '1440-1795', 'Fixed Grill PlatesNon-Stick Heating PlateElegant Black Finish Body', 'e695378d-5d21-4094-903d-048d044b0f0a-71MkogwNrCL._SL1500_.jpg', 2, 98, '2022-04-12 05:53:16', '2022-04-12 05:53:16'),
(1280, 'Celebration 90 Pc Cutlery Set for 12 people', '12000-15000', 'FnS Celebration Cutlery Set Included Components:12-Pieces Dinner Spoon/12-Pieces Dinner Fork/12-Pieces Tea Spoon/12-Pieces Dinner Knife/12-Pieces Coffee Spoon/12-Pieces Soup Spoon/12-Pieces Fruit Fork and06-Pieces Serving Spoon FeaturesMade of 304 grade stainless steel Dishwasher safe Anti rust Celebration, classical design with a gold (sunhera) touch, will give the richness in your dining experience the perfect way to celebrate occasions', 'ecbe1f17-2bcc-4b80-8026-73c9d3c8b3e2--MLOXbnhO4-dcse2Mzit.jpg', 2, 98, '2022-04-12 06:05:06', '2022-04-12 06:05:06'),
(1281, 'Kishco SG Luminous 24 Pcs Cutlery Set With Leather Box', '5000-6300', 'Kishco SG Luminous Cutlery Set With Leather Box - 24 Piece Set Package Contents:6 Dinner/Dessert Spoons/6 Tea poons/6 Dinner/Dessert Forks/6 Dinner/Dessert Knives.', '35552709-c9c1-4cda-bb2e-718d9712e055--MNmb7eVcInwLvTAv1W0.jpg', 2, 98, '2022-04-12 06:06:43', '2022-04-12 06:06:43'),
(1282, 'Arian Mug Single Colour', '280-350', 'Micro Oven Dishwasher Safe.Capacity: 300 ml', '991aeab1-7018-42ff-bf89-5a05a1ae9aa1--MeLUduJCbAVImZ8lcbR.jpg', 2, 53, '2022-04-12 06:16:35', '2022-04-12 06:16:35'),
(1283, 'Brunswick Australia Coffee Mugs ', '2249-2500', 'Brunswick Australia Coffee Mugs Set of 4 - 370 ml', '7b76e2a3-6791-4413-83c8-f8ed8b3c6c68--MbtcSfoHeJ-SRUDrvKw.jpg', 2, 53, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(1284, 'Brunswick Round Shape Cup & Saucer ', '2800-4500', 'Brunswick Round Shape Cup & Saucer Set - 6+6 - 200 ml', '5c60a575-b36a-427b-b757-6a15187555a5--MbtfDpafk7wd4YBBgNX.jpg', 2, 98, '2022-04-12 06:23:06', '2022-04-12 06:23:06'),
(1285, 'Chef Collection Nature Mug 300 ml Single pc', '319-450', '36401 LIGHT BROWN USP 80V Coffee MUG 300ML HEIGHT-11CM', '2788192e-d97f-4625-b61f-2c4a14311afa--MN4J7SH1bl3nnL-1ATj.jpg', 2, 53, '2022-04-12 06:26:25', '2022-04-12 06:26:25'),
(1286, 'Chef Collection Nature Mug 300 ml Single pc', '319-499', 'MUG 300ml, HEIGHT 11CM', '5544bf99-f87c-42f3-92ab-9feeade42897--MN4J7SGwe8f5tJyrZ4y.jpg', 2, 53, '2022-04-12 06:27:15', '2022-04-12 06:27:15'),
(1287, 'Chef Collection Nature Mug 300 ml Single pc', '319-499', 'Coffee MUG 300ML', '138be009-6943-4928-8892-0c055a79b501--MN4J7SGwe8f5tJyrZ56.jpg', 2, 53, '2022-04-12 06:28:26', '2022-04-12 06:28:26'),
(1288, 'Chef Collection Nature Mug 300 ml Single pc', '319-499', 'MATT BLACK 300ml', 'bf6ca5bb-0dd6-4c4c-a916-4836f6303562--MN4J7SGwe8f5tJyrZ4s.jpg', 2, 53, '2022-04-12 06:29:29', '2022-04-12 06:29:29'),
(1289, 'Chef Collection Nature Mug 300 ml Single pc', '319-499', 'EGG WITH SPLATTER BAND D1 WHITE 300ml', 'e745c0f1-1695-4e25-b74e-6110509f4b54--MN4J7SH1bl3nnL-1ATl.jpg', 2, 53, '2022-04-12 06:30:18', '2022-04-12 06:30:18'),
(1290, 'Chef Collection Nature Mug 300 ml Single pc', '319-499', 'MATT BLACK 300ml', 'acc5e37f-5ac2-4b2c-8b47-887cf6ffab31--MN4J7SGwe8f5tJyrZ50.jpg', 2, 53, '2022-04-12 06:31:09', '2022-04-12 06:31:09'),
(1291, 'Chef Collection Nature Mug ', '319-499', '300 ml Single pc', '6078d62e-9e8b-43b1-9082-7c6a8f58c6af--MN4J7SGwe8f5tJyrZ4q.jpg', 2, 53, '2022-04-12 06:31:53', '2022-04-12 06:31:53'),
(1292, 'Clay Craft Bone China Orchid Milk Mug Single color', '189-399', 'Clay Craft Orchid- Available in Multi Colors Mug-Dimensions 5.7 cms Capacity 350 ml', 'ca2cab4b-59b9-4a5c-812b-3a20b234cde8--MY4Av00zqn3XRk0ymon.jpg', 2, 53, '2022-04-12 06:34:11', '2022-04-12 06:34:11'),
(1293, 'Clay Craft Bone China Orchid Milk Mug white', '200-699', 'Clay Craft Orchid Single Colour Mug Dimensions 5.7 cms Capacity 350 ml', 'e1f6e401-61fa-43e8-932b-9704c5ad612b--MMQUPmmv0Q62LNsDgrA.jpg', 2, 53, '2022-04-12 06:36:46', '2022-04-12 06:36:46'),
(1294, 'Devnow Pink 8 Pc Teapot Set', '3370-4099', 'Devnow Pink 8 Pc Teapot Set Composition:4 Mugs/1 Teapot/1 Round Dip/1 Creamer/1 Kaden Tray.', '9f9df52f-aa6a-4ebd-a3ba-93db90c79c8c--MV5tSqASMmFh1KVExLd.jpg', 2, 98, '2022-04-12 06:39:51', '2022-04-12 06:39:51'),
(1295, 'Freelance 500 ml Vacuum Mug Gold', '738-900', 'Freelance 500 ml Mug Single Wall', 'f8884356-3827-4e8e-8f01-12dd72c83e30--MKeslHITMJWGzrvNoZK.jpg', 2, 53, '2022-04-12 06:42:41', '2022-04-12 06:42:41'),
(1296, 'Freelance Adventure Vacuum Bottle 800 ml Blue', '794-999', 'High quality materials: 100% rust-free, Food-grade, hygienic, 100% BPA-free, non-toxic, non-leaching Available in gold/blue/red', '09a4619f-e695-4ae9-9547-62f882b4eb2d--MKdWSP1kQrxcxnEqIj2.jpg', 2, 57, '2022-04-12 06:46:09', '2022-04-12 06:46:09'),
(1297, 'Freelance Alpine Vacuum Bottle 420 ml Blue', '725-900', 'Available in Blue/Pink/Green', '7d4e6017-0b2d-410f-8475-306810361448--MKdWSPMfsOPokqpdXpp.jpg', 2, 57, '2022-04-12 06:48:51', '2022-04-12 06:48:51'),
(1298, 'Freelance Ambrosia 1000 ml Fresh Berries', '499-949', 'Material-Glass Sizes Available-600 ml, 1000 ml Package contents-1 Glass Bottle', '65074b4f-b26b-4447-a224-e771e335b14e--MKdWSvHt0vRxhe_Yowo.jpg', 2, 57, '2022-04-12 06:51:45', '2022-04-12 06:51:45'),
(1299, 'Freelance Atlantic Vacuum Bottle 500 ml Copper', '745-899', 'Available in Copper/Grey/Gold colors.', '1bb5dbec-3574-4d57-bd1d-4fd2547b59cc--MKdWSPMfsOPokqpdXps.jpg', 2, 57, '2022-04-12 06:54:16', '2022-04-12 06:54:16'),
(1300, 'Freelance Atom Vacuum Bottle 400 ml Black', '794-999', 'Available in Black/Pink/White colors.', '428d87e4-2686-4376-a76a-1b579a279c93--MKdWSPCXWLC1PgUQioJ.jpg', 2, 57, '2022-04-12 06:55:57', '2022-04-12 06:55:57'),
(1301, 'Freelance Bolt 350 ml Jar Blue', '689-899', 'Available in Green/Pink/Blue.', 'c169b249-d590-4865-8dd4-9c71919a2ee8--MdSdx4Jp_tq3fCzANfU.jpg', 2, 57, '2022-04-12 06:58:46', '2022-04-12 06:58:46'),
(1302, 'Freelance Bullet Vacuum Bottle 1000 ml Laquer', '870-1100', 'High quality materials: 100% rust-free, Food-grade, hygienic, 100% BPA-free, non-toxic, non-leaching.', '4043d71a-7bf8-44d5-b769-20aeda2cfbf8--MKdWSOl27g1CN79ZfeR.jpg', 2, 57, '2022-04-12 07:00:31', '2022-04-12 07:00:31'),
(1303, 'Freelance Bullet Vacuum Bottle 1000 ml Red', '859-999', 'Available in Red and Silver black.', '7f3f467e-67c3-42fd-9062-03f04aee7b39--MKdWSOl27g1CN79ZfeL.jpg', 2, 57, '2022-04-12 07:02:19', '2022-04-12 07:02:19'),
(1304, 'Freelance Bullet Vacuum Bottle 500 ml Laquer', '657-999', 'Available in Red/Silver black.', '171a6363-5b2e-4653-b0fa-c6a1517d9e89--MKdWSOl27g1CN79ZfeU.jpg', 2, 57, '2022-04-12 07:04:17', '2022-04-12 07:04:17'),
(1305, 'Freelance Calibra Vacuum Bottle 530 ml Black', '727-999', 'Available in Black/Gold/Silver.', 'ce38043e-6a56-475f-97ef-f715d4f20934--MKdWSvFOP-pc0UqD7bk.jpg', 2, 57, '2022-04-12 07:13:32', '2022-04-12 07:13:32'),
(1306, 'Freelance Carrera 800 ml Transparent Laquer Stainless Steel', '829-999', 'Available in Yellow/Green/Blue.', '936a16b6-9ee0-48b6-8c3d-6a6962ac15ff--MdSdx0nCHwldvac9Gg_.jpg', 2, 57, '2022-04-12 07:15:51', '2022-04-12 07:15:51'),
(1307, 'Freelance Catalina 450 ml Blue', '762-999', 'Available in Blue/Red/Green.', '1e36bc68-58bd-4592-acbf-ed70cc7756ab--MKdWSObxoQK_a47a4VM.jpg', 2, 57, '2022-04-12 07:19:36', '2022-04-12 07:19:36'),
(1308, 'Freelance Challenger Vacuum Bottle 500 ml Blue', '671-999', 'Available in Blue/Red/Green.', '03141ab8-e5be-44a6-9d04-60f2356cab1f--MKdWSvDJhNmeJxiPEcj.jpg', 2, 57, '2022-04-12 07:21:55', '2022-04-12 07:21:55'),
(1309, 'Freelance Cola Vacuum Bottle 1000 ml Blue', '881-999', 'Available in Blue/Gold/Laquer.', 'b4135243-b183-4dc8-981a-574b717db987--MKdWSOiRr3ozXEeJiZE.jpg', 2, 57, '2022-04-12 07:24:06', '2022-04-12 07:24:06'),
(1310, 'Freelance Cola Vacuum Bottle 500 ml Gold', '692-999', 'Available in Blue/Gold.', '0f1f8f15-3f0e-44f6-aa15-9b2c834403dc--MKdWSOiRr3ozXEeJiZN.jpg', 2, 57, '2022-04-12 07:28:01', '2022-04-12 07:28:01'),
(1311, 'Freelance Fuzz 610 ml Black', '372-899', 'Material- Glass Colors Available: Grey, Black, Blue, Pink, Green Package contents-1 Glass Bottle', '7afd72c6-b44a-48ae-91c7-0bd2d0cc51f5--MKdWSvHt0vRxhe_YoxC.jpg', 2, 57, '2022-04-12 07:29:40', '2022-04-12 07:29:40'),
(1312, 'Freelance Cola Vacuum Bottle 750 ml Brown', '881-999', 'High quality materials: 100% rust-free, Food-grade, hygienic, 100% BPA-free, non-toxic, non-leaching.', '370da1c0-482c-4905-beb3-b927d2ee645c--MKdWSOjqE-LJGYip1lj.jpg', 2, 57, '2022-04-12 07:31:04', '2022-04-12 07:31:04'),
(1313, 'Freelance Cola Vacuum Bottle 750 ml Black', '881-999', 'High quality materials: 100% rust-free, Food-grade, hygienic, 100% BPA-free, non-toxic, non-leaching.', '31ebda6c-49a4-482b-affe-19f39d5b9e3b--MKdWSOjqE-LJGYip1lm.jpg', 2, 57, '2022-04-12 07:32:11', '2022-04-12 07:32:11'),
(1314, 'Freelance Cola Vacuum Bottle 750 ml White', '881-999', 'High quality materials: 100% rust-free, Food-grade, hygienic, 100% BPA-free, non-toxic, non-leaching', '13ad5b92-90db-4f0f-9c0c-b0d535684b3b--MKdWSOjqE-LJGYip1lp.jpg', 2, 57, '2022-04-12 07:33:11', '2022-04-12 07:33:11'),
(1315, 'Freelance Crusader 750 ml Blue', '944-1333', 'Available in Blue/Red/Gold.', '706807b5-e96f-4cef-a5f1-515fca7a6a38--MKdWSOcQiMRrIrHjSgR.jpg', 2, 57, '2022-04-12 07:35:09', '2022-04-12 07:35:09'),
(1316, 'Freelance Eco Travel Mug, 400 ml, Black', '312-499', 'Height: 14 cm; capacity 400 ml Available in Black/Blue/Copper/Brown/Dark pink/Green/Grey/Burgundy.', 'ea731969-68ed-4a55-b839-b06e2cd529df--MKeslHGPgjw6wTehNNd.jpg', 2, 53, '2022-04-12 07:38:16', '2022-04-12 07:38:16'),
(1317, 'Freelance Elan Vacuum Bottle 380 ml Brown', '713-999', 'Available in Pink/Grey/Brown.', '0dc07378-055c-4df4-889c-6df589cce7fa--MKdWSvEt1Jc2kfVwgSw.jpg', 2, 57, '2022-04-12 07:40:02', '2022-04-12 07:40:02'),
(1318, 'Freelance Fierro 400 ml SS Mug Grey', '459-699', 'Freelance Fierro 400 ml Mug Single Wall', '1d3bf487-55ce-4975-b53a-288731d042d3--MKeslHHREhbVi_kp2iS.jpg', 2, 53, '2022-04-12 07:41:31', '2022-04-12 07:41:31'),
(1319, 'Freelance Firebird Vacuum Bottle 730 ml Steel', '849-999', 'High quality materials: 100% rust-free, Food-grade, hygienic, 100% BPA-free, non-toxic, non-leaching.', '1fb18767-e10e-46ec-a863-83386582e2a6--MKdWSPDyty79N7g8XuO.jpg', 2, 57, '2022-04-12 07:42:59', '2022-04-12 07:42:59'),
(1320, 'Freelance Integra 750 ml Black', '797-999', 'High quality materials: 100% rust-free, Food-grade, hygienic, 100% BPA-free, non-toxic, non-leaching', 'b219ce85-3210-4309-8e1f-1254aa026b22--MKdWSOhIAESvTvvJxti.jpg', 2, 57, '2022-04-12 07:45:40', '2022-04-12 07:45:40'),
(1321, 'Freelance Vacuum Flask 500 ml Coffee', '949-1200', 'Sizes Available: 1200 ml, 1500 ml, 1900 ml Package Contents: 1 Vacuum Flask', 'c82427d0-c92d-4f94-aa25-06b1a7881389--MKiLQvLynV0GhnF0HgJ.jpg', 2, 98, '2022-04-12 07:58:19', '2022-04-12 07:58:19'),
(1322, 'Freelance Vacuum Flask 1500 ml', '2407-3299', 'Sizes Available: 1200 ml, 1500 ml, 1900 ml Package Contents: 1 Vacuum Flask', '730e3a5a-4f9b-4318-a9ab-875396d12c32--MLByfLOwobkLZR5jow_.jpg', 2, 98, '2022-04-12 07:59:41', '2022-04-12 07:59:41'),
(1323, 'Morphy Richards At 204 2 Slice Pop-UP Toaster 800 Watts', '1528-1999', 'Dust cover High-lift facility to remove small size bread. Electronic Variable Browning Control. Power: 800 W Operating voltage: 230 volts Includes: pop up toaster, crumb tray, instruction manual', '10bde6a3-00f6-440e-bbe3-973ef361209f--MMtX4Wc10wpX3p6mP_y.jpg', 2, 98, '2022-04-12 08:09:19', '2022-04-12 08:09:19'),
(1324, 'Havelles Aqua Plus Electric Ketle Black 1500 Watts', '2999-3599', 'Color: black Rated Power: 1500 W Rated Voltage : 230 V Net Contents: 1 Kettle(1200 ml), 1 Deatchable base, 1 Instruction manual', '03885460-6830-48f5-840c-a5b4473fd789--MMtX4Wc10wpX3p6mP_N.jpg', 2, 98, '2022-04-12 08:10:49', '2022-04-12 08:10:49'),
(1325, 'Steelo mug ', '327-499', 'Stainless Steel  Mug (350ml) Steelo Available in Blue, Silver.', '4fee2d3d-0203-4d37-a7bd-95010297d919-ug-db51s_steelo_stainless_steel_mug_350ml__1.jpg', 2, 53, '2022-04-12 08:38:49', '2022-04-12 08:38:49'),
(1326, 'Mont mug ', '545-999', 'Stainless Steel Mug with Handle (350ml)Mont Red, White', 'f27ec2ec-3e7b-4194-8467-688d54c44aab-monte-mug-500x500.jpeg', 2, 53, '2022-04-12 08:43:31', '2022-04-12 08:43:31'),
(1327, 'Tork 350 mug ', '532-799', 'Stainless Steel Mug with Handle (350ml)Tork 350', 'cff314d1-8c4d-4d01-a428-5ceaa22cb201-tork-350-stainless-steel-travel-mug-500x500.jpg', 2, 53, '2022-04-12 08:44:36', '2022-04-12 08:44:36'),
(1328, 'Vento mug ', '469-799', 'Stainless Steel Mug with Handle 400ml Vento Colors available in Red, Blue, Black, White.', '8ea67265-77dd-4180-9b2a-053932228737-urban-gear-vento-ugdb60-stainless-steel-travel-mug-500x500.jpeg', 2, 53, '2022-04-12 08:46:51', '2022-04-12 08:46:51'),
(1329, 'Wooden Desk Calendar', '550-900', 'Wooden Desk Calendar with White Board and a Quote - Utility Desk Calendar - Wooden Perpetual Calendar Set for Desk Decor, Study Room - Endless Calendar ', '786f2acf-9a65-4dea-9aed-6d6710ce2048-71ph6eElFoL._SY355_.jpg', 2, 48, '2022-04-12 10:15:31', '2022-04-12 10:15:31'),
(1330, 'Warli Utility Desk Calendar', '591-999', '11in X 9in X 2.5in]Warli Desk Calendar with Whiteboard - Desk Organizer - Multi-Utility Hanging Calendar - Table Top Calendar Set - Desk Calendar Holder with White Board ', '72e25fbc-b92e-49c1-8646-2af24df20f10-91n7fgpduAL._SY450_.jpg', 2, 48, '2022-04-12 10:17:22', '2022-04-12 10:17:22'),
(1331, 'Warli Utility Desk Calendar', '500-900', 'Desk Calendar with Pin Board Desk Organizer Utility Desktop Calendar Table Top Calendar Set Desk Calendar Holder with Pin Board', 'e2f0084e-5d25-49da-a151-95caf7c6f1db-post2-6.jpg', 2, 48, '2022-04-12 10:20:42', '2022-04-12 10:20:42'),
(1332, 'WOODEN CALENDAR', '581-899', ' CIRCULAR PERPETUAL WOODEN CALENDAR (MANUAL)', '819cfdd4-0fb9-4209-b074-23d7c5bbe286-timthumb.jfif', 2, 48, '2022-04-12 10:25:51', '2022-04-12 10:25:51'),
(1333, 'Combination board', '722-1200', 'PIN + WHITE +METAL COMBINATION BOARD', '4eb1f5aa-0296-4fe3-baa9-d2dcb9951daa-ivei-pin-board-whiteboardmetal-board-combination-board-orange-ivei_1200x1200.jpg', 2, 48, '2022-04-12 10:28:03', '2022-04-12 10:28:03'),
(1334, 'Pinewood Sleek Penstand ', '567-899', 'Pine Wood Rectangular Pen Stand Pen/Pencil Holder Minimalistic Office Desk Organizer  Wooden Stationery Holder', '22f67592-f95a-480d-a827-cf46c511c117-51LhWa1zxnL._SL1000_.jpg', 2, 48, '2022-04-12 10:29:44', '2022-04-12 10:29:44'),
(1335, 'Wooden Coasters (Set of 4)', '255-450', 'High quality, wood is used to achieve a smooth finished, durable product.', '7b3cd550-4776-4f26-886e-fa07f11f24d7-img-1181-500x500.jpg', 2, 98, '2022-04-12 10:32:26', '2022-04-12 10:32:26'),
(1336, 'fridge magnets ', '117-199', 'Photo frame fridge magnets ', '9e07958f-7fc8-45e3-9845-b0af32db26da-4cf245c9-eadb-4cb3-ba59-c80e82a75092-removebg-preview.png', 2, 89, '2022-04-12 10:45:33', '2022-04-12 10:45:33'),
(1337, 'fridge magnets ', '216-299', 'Desktop canvas photo frame with printing A5 size.', 'cba23115-8b9f-4f08-b8c6-9648c183d52b-6fa00ecb-ff04-4725-bed3-bee1d00b0b37-removebg-preview.png', 2, 89, '2022-04-12 10:47:45', '2022-04-12 10:47:45'),
(1338, 'fridge magnets ', '107-189', 'Single fridge magnets ', '3056cc08-502d-47f4-b011-7754f944007f-e8a7396e-c843-4f03-8b40-6a2302e76fd1-removebg-preview.png', 2, 89, '2022-04-12 10:49:48', '2022-04-12 10:49:48'),
(1339, 'Popsocket ', '20-99', 'Black / White color available ', '3571a0d1-7f5b-4b30-889e-2d332a5ee846-Plain-Pop-Socket-3M-w300-removebg-preview.png', 2, 89, '2022-04-12 11:04:17', '2022-04-12 11:04:17'),
(1340, 'Laptop bag ', '999-2999', 'Size L 40 W 4 H 26 CM', 'd06f77d5-0ed3-474e-837c-91457f10d3c0-9a6f8e49-7c8b-4ed2-bf80-28328b1b6a66-removebg-preview.png', 2, 91, '2022-04-12 11:08:41', '2022-04-12 11:08:41'),
(1341, 'Laptop bag ', '1300-2499', 'Leatherette laptop bag.', 'c368ef5d-382f-4998-9c51-0f8340c86927-7fd8e74b-4cbe-4b7d-91da-4aeb5d5691c7-removebg-preview.png', 2, 91, '2022-04-12 11:10:46', '2022-04-12 11:10:46'),
(1342, 'Laptop bag ', '1250-2799', 'leatherette laptop bag  ', '7eeabd01-cc3d-405f-9180-8f1fbf0ea47f-566f82f9-1914-43a6-8b51-55dd53bfbd66-removebg-preview.png', 2, 91, '2022-04-12 11:16:10', '2022-04-12 11:16:10'),
(1343, 'Laptop bag ', '699-1499', 'Leatherette laptop bag ', '59a716e7-1068-4916-a3df-c1bb00ffeb2a-7a4bd517-91c1-4576-bfda-5219ec29631c-removebg-preview.png', 2, 91, '2022-04-12 11:18:06', '2022-04-12 11:18:06'),
(1344, 'Trolley bag', '1140-2500', 'Trolley bags leather ', '7f4f7488-ce47-43ba-b16e-afb1adca2f7d-6fe06efc-48df-45ad-b540-09ee698887e2-removebg-preview.png', 2, 74, '2022-04-12 11:20:04', '2022-04-12 11:20:04'),
(1345, 'Leather bag ', '699-1300', 'Leather bag-travelling bags ', '9774f356-7ba2-47f2-9f56-a51eb4080932-2331385b-29be-4539-96c3-099008face32-removebg-preview.png', 2, 66, '2022-04-12 11:21:49', '2022-04-12 11:21:49'),
(1346, 'Coaster set of 6', '225-399', 'Set of 6 coaster, tan color.', 'd62fee12-658f-40a0-ab68-da75934e4acb-WhatsApp Image 2022-04-12 at 4.44.44 PM.jpeg', 2, 98, '2022-04-12 11:23:31', '2022-04-12 11:23:31'),
(1347, 'coaster set of 6', '252-499', 'Leatherette coaster set of 6', '7ce0d28c-6974-42b9-82de-016f5a1ada51-WhatsApp Image 2022-04-12 at 4.44.37 PM.jpeg', 2, 98, '2022-04-12 11:24:40', '2022-04-12 11:24:40'),
(1348, 'set of 6 coaster ', '252-506', 'Leatherette coaster set of 6', 'b6f89309-0d7e-4752-9dc2-292a213b0c79-WhatsApp Image 2022-04-12 at 4.44.44 PM (1).jpeg', 2, 98, '2022-04-12 11:25:52', '2022-04-12 11:25:52'),
(1349, 'Set of 4 coaster ', '126-300', 'set of 4 coaster ', '90fad9b9-358a-40e2-a596-9b4708bbd42d-518nLN3+ENL.jpg', 2, 98, '2022-04-12 11:26:34', '2022-04-12 11:26:34'),
(1350, 'Duffle bag ', '659-1899', 'Duffle bag size L 46 cm W 26 cm H 26 cm', '61d41c64-cafa-4789-82ce-754b1429000a-67aac684-0fc2-428c-95de-61434bebec9a-removebg-preview.png', 2, 60, '2022-04-12 11:31:39', '2022-04-12 11:31:39');
INSERT INTO `products` (`id`, `name`, `price`, `description`, `image`, `userId`, `productCategoryId`, `created_at`, `updated_at`) VALUES
(1351, 'Leatherette bag set', '1300-1999', '3 Pouch/1 Duffle bag/2 travel bags/ 1 backpack / 1 bag.', '6e214fd2-e284-4c18-a3b7-37bc83d84e40-WhatsApp Image 2022-04-12 at 5.02.30 PM.jpeg', 2, 91, '2022-04-12 11:38:38', '2022-04-12 11:38:38'),
(1352, 'leatherette Duffle bag  ', '649-1999', 'Brown and tan colors available. ', 'f33767bc-e5cc-4039-8017-d3520e37f045-dff03d47-5dbe-4dbe-96f8-2fdb810b21df-removebg-preview.png', 2, 91, '2022-04-12 11:43:21', '2022-04-12 11:43:21'),
(1353, 'Gift set ', '499-1500', 'Eyewear case/Men\'s wallet / passport case/Keychain.', 'b53fb005-a6c0-4097-8694-cde7ae39ce0d-fc5c52a3-70ad-4bdc-b865-cd16574bf7a0-removebg-preview.png', 2, 81, '2022-04-12 11:45:30', '2022-04-12 11:45:30'),
(1354, 'I pad sleeves ', '549-1799', 'Size L 15 W 0.75 H 10 Inches. ', 'fa694fc2-5eea-4e5f-a215-106e733818dc-a3277495-ac30-45a2-b2e7-13e2d9201f91-removebg-preview.png', 2, 91, '2022-04-12 11:48:20', '2022-04-12 11:48:20'),
(1355, 'Leatherette Pouch', '249-599', 'Size L 15 cm W 4.5 cm H 10 cm.', '1c96e4a3-cc94-4185-8b52-b8539d5db5ca-70b321a2-6ed9-4213-979e-9fedf3fad60a-removebg-preview.png', 2, 91, '2022-04-12 11:52:04', '2022-04-12 11:52:04'),
(1356, 'Leatherette pouch ', '249-599', 'L 13 cm W 5.5 cm H 09 cm.', '79bb95da-4a5e-49ba-8725-e9f2de99505a-5560779d-ec7c-49f9-9790-39dcfed1dbb0-removebg-preview.png', 2, 91, '2022-04-12 11:55:00', '2022-04-12 11:55:00'),
(1357, 'Cosmetic pouch ', '249-599', 'L 24 cm W 09 cm H 12 cm', '66083b60-ca7a-4e65-b4e8-d5a9cc3cb42a-4cfd6113-b5c9-4d5b-8064-42d6f923accc-removebg-preview.png', 2, 91, '2022-04-12 12:00:08', '2022-04-12 12:00:08'),
(1358, '4 pcs gift set ', '249-1299', 'Passport case/Key chain /Eyewear case/ Wallet.', '338c2d06-1453-4dc4-a89b-ae6b8a322e5a-3cea93ac-f9e5-42ee-a025-e9d36a856ee8-removebg-preview.png', 2, 81, '2022-04-12 12:02:15', '2022-04-12 12:02:15'),
(1359, 'Laptop bag', '1249-2999', 'Unisex canvas laptop bag', 'c1cc6493-1086-434c-b6d2-2c00309687c8-26bf79b4-3e8e-4264-ad1a-6c64c5941263-removebg-preview.png', 2, 91, '2022-04-12 12:05:28', '2022-04-12 12:05:28'),
(1360, 'Cosmetic pouch set of 4 ', '649-1899', 'Size available in  mini/small/big/large.', 'b549d7e9-42cf-4747-b424-e036cb943408-c42c5fe2-ad06-447e-af7c-c91e67260b13-removebg-preview.png', 2, 91, '2022-04-12 12:07:40', '2022-04-12 12:07:40'),
(1361, 'Two wheeler trolley duffle bag ', '1249-2100', 'Two wheeler trolley duffle bag ', '86fa5120-3afe-466c-a0f9-c5c835642f86-b7b892b0-e71e-4fa8-9f0a-7bf49734f1be-removebg-preview.png', 2, 74, '2022-04-12 12:09:21', '2022-04-12 12:09:21'),
(1362, '7 pcs gift set ', '999-1699', '1 Key chain/ 2 Wallet / Passport case/ Diary / Card holder /Tea coaster.', '86211cce-d1c2-4a39-b6f1-a3d3b868c4ff-f18eebfe-c8e3-41b7-bac3-0c05b6219e7a-removebg-preview.png', 2, 81, '2022-04-12 12:11:37', '2022-04-12 12:11:37'),
(1363, 'Cap', '100-499', 'Available in  White/Blue/Black/Red/Green/Yellow/Navy blue/Pink/Orange/Light blue.', '6e53af93-c35a-4648-9d75-3e9638d100ec-1-500x500 (1).jpg', 2, 99, '2022-04-12 12:17:06', '2022-04-12 12:17:06'),
(1364, 'Laptop stickers ', '80-299', 'customized laptop stickers, Round shape stickers.', '7b8a837e-a93a-4dbc-a45d-503852a6c96c-welcome_to_our_team_feather_circle_deep_red_classic_round_sticker-r784fb9e5350e4ee18c784b964de23ef0_0ugmp_8byvr_307.jpg', 2, 89, '2022-04-12 12:28:54', '2022-04-12 12:28:54');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `designation` text NOT NULL,
  `message` text NOT NULL,
  `image` text NOT NULL,
  `userId` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `designation`, `message`, `image`, `userId`, `created_at`, `updated_at`) VALUES
(4, 'Chethan', 'Procurement Head, Samsung', 'Thanks to the continual efforts and impeccable services provided by Ace, gifting has now become convenient and simple.', '91e2ac6c-56fb-42b6-b128-f5234aef08d3-pic_1171831236_1.png', 2, '2022-04-01 10:31:32', '2022-04-01 10:31:32'),
(5, 'Neha', 'HR, Infosys', 'Thank you for making the whole Gifting experience easy and stress-free.', '1b66664b-9533-467b-912f-36c77dbe00ec-pic_1171831236_1.png', 2, '2022-04-01 10:32:30', '2022-04-01 10:32:30'),
(6, 'Gowtham', 'Owner, Eliopower', 'Thanks to Ace, we have now established a well-oiled process, receive great feedback on our gifts.  This further boosts our business relationships.', '459fc1ad-c087-4dc0-af2f-5870bcb39bd3-pic_1171831236_1.png', 2, '2022-04-01 10:33:52', '2022-04-01 10:33:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `otp` int(11) NOT NULL,
  `verified` int(11) NOT NULL DEFAULT '0',
  `userType` int(11) NOT NULL DEFAULT '2',
  `changePassword` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`, `otp`, `verified`, `userType`, `changePassword`, `created_at`, `updated_at`) VALUES
(1, 'subham saha', 'subham.5ine@gmail.com', 7892156160, '$2a$10$pWJh.JAZJipnbah6h0ZSUultWwh2epufgACdqMWRXvSQli6XyMvTK', 123456, 1, 1, 0, '2022-03-11 12:54:28', '2022-03-11 12:54:28'),
(2, 'Ritika', 'admin@ace.com', 7892156160, '$2a$10$vK/ERf4cB6EFzkVnRpQ8ruAfWuDRe/B5Y9neLkwzgKjf01RjJV8KG', 123456, 1, 1, 0, '2022-03-11 12:54:28', '2022-03-11 12:54:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `enquiries`
--
ALTER TABLE `enquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homePageFifthSectionContents`
--
ALTER TABLE `homePageFifthSectionContents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `homePageFifthSections`
--
ALTER TABLE `homePageFifthSections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `homePageSecondSectionBanners`
--
ALTER TABLE `homePageSecondSectionBanners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homePageSecondSections`
--
ALTER TABLE `homePageSecondSections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `homePageThirdSectionContents`
--
ALTER TABLE `homePageThirdSectionContents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `homePageThirdSections`
--
ALTER TABLE `homePageThirdSections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `orderRequestProducts`
--
ALTER TABLE `orderRequestProducts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orderRequestId` (`orderRequestId`);

--
-- Indexes for table `orderRequests`
--
ALTER TABLE `orderRequests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productCategories`
--
ALTER TABLE `productCategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`),
  ADD KEY `productCategoryId` (`productCategoryId`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `enquiries`
--
ALTER TABLE `enquiries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `homePageFifthSectionContents`
--
ALTER TABLE `homePageFifthSectionContents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `homePageFifthSections`
--
ALTER TABLE `homePageFifthSections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `homePageSecondSectionBanners`
--
ALTER TABLE `homePageSecondSectionBanners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `homePageSecondSections`
--
ALTER TABLE `homePageSecondSections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `homePageThirdSectionContents`
--
ALTER TABLE `homePageThirdSectionContents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `homePageThirdSections`
--
ALTER TABLE `homePageThirdSections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orderRequestProducts`
--
ALTER TABLE `orderRequestProducts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `orderRequests`
--
ALTER TABLE `orderRequests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `productCategories`
--
ALTER TABLE `productCategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1365;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `homePageFifthSectionContents`
--
ALTER TABLE `homePageFifthSectionContents`
  ADD CONSTRAINT `homepagefifthsectioncontents_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `homePageFifthSections`
--
ALTER TABLE `homePageFifthSections`
  ADD CONSTRAINT `homepagefifthsections_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `homePageSecondSections`
--
ALTER TABLE `homePageSecondSections`
  ADD CONSTRAINT `homepagesecondsections_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `homePageThirdSectionContents`
--
ALTER TABLE `homePageThirdSectionContents`
  ADD CONSTRAINT `homepagethirdsectioncontents_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `homePageThirdSections`
--
ALTER TABLE `homePageThirdSections`
  ADD CONSTRAINT `homepagethirdsections_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orderRequestProducts`
--
ALTER TABLE `orderRequestProducts`
  ADD CONSTRAINT `orderrequestproducts_ibfk_1` FOREIGN KEY (`orderRequestId`) REFERENCES `orderRequests` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `productCategories`
--
ALTER TABLE `productCategories`
  ADD CONSTRAINT `productcategories_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`productCategoryId`) REFERENCES `productCategories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD CONSTRAINT `testimonials_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
