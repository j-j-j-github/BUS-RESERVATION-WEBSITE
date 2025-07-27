-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2022 at 07:27 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `transport`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add registration', 7, 'add_registration'),
(26, 'Can change registration', 7, 'change_registration'),
(27, 'Can delete registration', 7, 'delete_registration'),
(28, 'Can view registration', 7, 'view_registration');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bus_bookingg`
--

CREATE TABLE `bus_bookingg` (
  `id` int(11) NOT NULL,
  `bustitle` varchar(200) NOT NULL,
  `seat_id` varchar(200) NOT NULL,
  `passenger_firstname` varchar(200) NOT NULL,
  `passenger_lastname` varchar(200) NOT NULL,
  `noof_paasenger` varchar(200) NOT NULL,
  `startingpoint` varchar(200) NOT NULL,
  `endingpoint` varchar(200) NOT NULL,
  `amount` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `uid` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus_bookingg`
--

INSERT INTO `bus_bookingg` (`id`, `bustitle`, `seat_id`, `passenger_firstname`, `passenger_lastname`, `noof_paasenger`, `startingpoint`, `endingpoint`, `amount`, `status`, `uid`) VALUES
(5, 'Saranya', '45', 'Sreeja', 'Madhu', '45', 'Kollam', 'Pathanamthitta', '60', 'paid', 'Aswin'),
(9, 'Kottoor', '65', 'Dwayn', 'Jonson', '45', 'Kottayam', 'Chennai', '800', 'paid', 'Aswin'),
(10, 'Sree Ayyappa', '46', 'Sreeja', 'Madhu', '34', 'Pathanamthitta', 'Kottayam', '80', 'paid', 'Aswin');

-- --------------------------------------------------------

--
-- Table structure for table `bus_busdetails`
--

CREATE TABLE `bus_busdetails` (
  `id` int(11) NOT NULL,
  `type_id` varchar(200) NOT NULL,
  `registerno` varchar(200) NOT NULL,
  `bustitle` varchar(200) NOT NULL,
  `makeyear` varchar(200) NOT NULL,
  `busstation` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus_busdetails`
--

INSERT INTO `bus_busdetails` (`id`, `type_id`, `registerno`, `bustitle`, `makeyear`, `busstation`) VALUES
(3, 'Tour Bus', 'KL 06 C 9087', 'Saranya', '2018', 'Ernakulam'),
(4, 'Traveller', 'KL 12 JK 3549', 'Murahara', '2017', 'Kozhikkod'),
(6, 'Long Tour Bus', 'KL 03 D 7567', 'Sree Ayyappa', '2012', 'Pathanamthitta'),
(8, 'Luxury Tourer', 'KL 02 AC 2087', 'Kallada', '2020', 'Kollam'),
(9, 'Caravan', 'KL 03 A 8907', 'Kottoor', '2019', 'Vallicode');

-- --------------------------------------------------------

--
-- Table structure for table `bus_bustype`
--

CREATE TABLE `bus_bustype` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus_bustype`
--

INSERT INTO `bus_bustype` (`id`, `name`, `description`) VALUES
(3, 'Tour Bus', 'For short tours, minimum number of seats'),
(4, 'Long Tour Bus', 'For long tours with maximum seat capacity'),
(5, 'Traveller', 'For tour or transportation for events'),
(6, 'Luxury Tourer', 'Luxury A/c tour bus , sleeper'),
(7, 'Caravan', 'Small van with camping room');

-- --------------------------------------------------------

--
-- Table structure for table `bus_fare`
--

CREATE TABLE `bus_fare` (
  `id` int(11) NOT NULL,
  `startingpoint` varchar(200) NOT NULL,
  `endingpoint` varchar(200) NOT NULL,
  `amountperseat` varchar(200) NOT NULL,
  `bustitle` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus_fare`
--

INSERT INTO `bus_fare` (`id`, `startingpoint`, `endingpoint`, `amountperseat`, `bustitle`) VALUES
(9, 'Kollam', 'Pathanamthitta', '60', 'Saranya'),
(10, 'Kollam', 'Bangaloor', '600', 'Kallada'),
(11, 'Kottayam', 'Chennai', '800', 'Kottoor'),
(12, 'Pathanamthitta', 'Kottayam', '80', 'Sree Ayyappa'),
(13, 'Kollam', 'Ernakulam', '85', 'Murahara');

-- --------------------------------------------------------

--
-- Table structure for table `bus_payment`
--

CREATE TABLE `bus_payment` (
  `id` int(11) NOT NULL,
  `amount` varchar(200) NOT NULL,
  `cardno` varchar(200) NOT NULL,
  `ccvno` varchar(200) NOT NULL,
  `expdate` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `bustitle` varchar(200) NOT NULL,
  `passenger_firstname` varchar(200) NOT NULL,
  `noof_paasenger` varchar(200) NOT NULL,
  `uid` varchar(200) NOT NULL,
  `payment_type` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus_payment`
--

INSERT INTO `bus_payment` (`id`, `amount`, `cardno`, `ccvno`, `expdate`, `date`, `status`, `bustitle`, `passenger_firstname`, `noof_paasenger`, `uid`, `payment_type`) VALUES
(3, '60', '3444', '6765678987', '2022-05-15', '2022-05-15', 'paid', 'Saranya', 'Sreeja', 'Madhu', 'Aswin', 'Gpay'),
(4, '80', '566', '67769788', '2022-05-22', '2022-05-15', 'paid', 'Sree Ayyappa', 'Sreeja', 'Madhu', 'Aswin', 'Gpay');

-- --------------------------------------------------------

--
-- Table structure for table `bus_place`
--

CREATE TABLE `bus_place` (
  `name` varchar(200) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus_place`
--

INSERT INTO `bus_place` (`name`, `id`) VALUES
('Vallicode', 2),
('Pathanamthitta', 3),
('Kollam', 4),
('Kottayam', 5),
('Ernakulam', 6),
('Thiruvananthapuram', 7),
('Bangaloor', 8),
('Chennai', 9),
('Madhurai', 10);

-- --------------------------------------------------------

--
-- Table structure for table `bus_registration`
--

CREATE TABLE `bus_registration` (
  `id` int(11) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `place` varchar(200) NOT NULL,
  `phone` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus_registration`
--

INSERT INTO `bus_registration` (`id`, `firstname`, `lastname`, `place`, `phone`, `email`, `username`, `password`) VALUES
(1, 'sreelekshmi', 'm', 'ktym', '+917306692045', 'anu123@gmail.com', 'ammu123', '333'),
(2, 'Aswin', 'Das', 'Pathanamthitta', '8876854948', 'aswin@gmail.com', 'aswin', '1234das');

-- --------------------------------------------------------

--
-- Table structure for table `bus_route`
--

CREATE TABLE `bus_route` (
  `id` int(11) NOT NULL,
  `startingpoint` varchar(200) NOT NULL,
  `endingpoint` varchar(200) NOT NULL,
  `busname` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus_route`
--

INSERT INTO `bus_route` (`id`, `startingpoint`, `endingpoint`, `busname`) VALUES
(3, 'Kollam', 'Pathanamthitta', 'Murahara');

-- --------------------------------------------------------

--
-- Table structure for table `bus_seat`
--

CREATE TABLE `bus_seat` (
  `id` int(11) NOT NULL,
  `seatnumber` varchar(200) NOT NULL,
  `bus_id` varchar(200) NOT NULL,
  `seatstatus` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus_seat`
--

INSERT INTO `bus_seat` (`id`, `seatnumber`, `bus_id`, `seatstatus`) VALUES
(3, '45', '3', 'not available'),
(4, '45', '3', 'not available'),
(5, '35', '4', 'not available'),
(6, '65', '9', 'not available'),
(7, '45', '6', 'not available'),
(8, '25', '8', 'not available'),
(11, '46', '6', 'not available');

-- --------------------------------------------------------

--
-- Table structure for table `bus_stop`
--

CREATE TABLE `bus_stop` (
  `id` int(11) NOT NULL,
  `route_id` varchar(200) NOT NULL,
  `trip_id` varchar(200) NOT NULL,
  `arrivingtime` varchar(200) NOT NULL,
  `departuretime` varchar(200) NOT NULL,
  `bus_id` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bus_trip`
--

CREATE TABLE `bus_trip` (
  `busname` int(11) NOT NULL,
  `startingstop` int(11) NOT NULL,
  `endingstop` int(11) NOT NULL,
  `contactno` varchar(200) NOT NULL,
  `trip_id` varchar(200) NOT NULL,
  `route_id` varchar(200) NOT NULL,
  `bus_id` varchar(200) NOT NULL,
  `startingpoint` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'bus', 'registration'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-05-05 05:50:15.581918'),
(2, 'auth', '0001_initial', '2022-05-05 05:50:32.359386'),
(3, 'admin', '0001_initial', '2022-05-05 05:50:35.630132'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-05-05 05:50:35.701971'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-05-05 05:50:35.770777'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-05-05 05:50:37.978708'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-05-05 05:50:39.285572'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-05-05 05:50:40.591200'),
(9, 'auth', '0004_alter_user_username_opts', '2022-05-05 05:50:40.683727'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-05-05 05:50:42.059924'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-05-05 05:50:42.111738'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-05-05 05:50:42.167642'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-05-05 05:50:43.364601'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-05-05 05:50:44.552972'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-05-05 05:50:46.672363'),
(16, 'auth', '0011_update_proxy_permissions', '2022-05-05 05:50:46.742190'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-05-05 05:50:47.963324'),
(18, 'sessions', '0001_initial', '2022-05-05 05:50:49.340955');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('3rzfzea9z799qpc3sc0p6ipapyk6ha1o', '.eJyrVirNTFGyMtRRKs1LzE1VslIqLkpNzUnNLs7IzVQCiqbmJmbmAIUT80oNjYwd0kFcveT8XJBccWoRUAZM1QIAcWIX8g:1nmvOq:PWhTQPFrx-fdHRnM4W4IlU8lxA8KJqREYwOoy3OYAPM', '2022-05-20 10:41:28.200337'),
('jmiduoh5mdmuevw7taso6he2d7rsh1p6', 'e30:1nnIIA:323yg0KS74zXXOPamJG9ZKThNwx-fXVHWx5fMt5KM0E', '2022-05-21 11:08:06.536661'),
('jv119m1qhdwsnwpkjk8vjxxa9r4l95s5', '.eJyrVsrJT8_MK0lJLUnMzFGyUkpMyc3Mc0jPBfL0kvNzlXSgCmBSSrUA38QR_w:1npnwZ:r_Kv6pUC5B6ukHp5cpeFphDxiMRQm6bVJOPtc1Sc4Mc', '2022-05-28 09:20:11.427774'),
('ppuquhcrf7e4262at9kl4hi89zms1bte', '.eJyrVirNTFGyMtJRKs1LzE1VslJyLC7PzFMC8lNzEzNzgAKJIAGHdBBPLzk_FyRVnFoElABTtQDEqBWh:1nqHvo:WFY_03GDMR8sW4rPl5cgJgsOTHiq3_I1FzKlkXCKeUM', '2022-05-29 17:21:24.990927'),
('s61hnieqdcn5ezogbjyismqfsgeds8vg', '.eJyrVsrJT8_MK0lJLUnMzFGyUkpMyc3Mc0jPBfL0kvNzlXSgCmBSSrUA38QR_w:1npkZX:lpO2792yKIycSqaJw-7HJRhHG2lV895LVI-blicKOlk', '2022-05-28 05:44:11.606108'),
('tm1of7uyxor49lwkn5hpib8xugv80c9t', 'e30:1nq4fG:4BzFONjVwXkX9YVZpPywc27fH9a7mjpXsrA0PVt1VlA', '2022-05-29 03:11:26.742147');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `bus_bookingg`
--
ALTER TABLE `bus_bookingg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus_busdetails`
--
ALTER TABLE `bus_busdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus_bustype`
--
ALTER TABLE `bus_bustype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus_fare`
--
ALTER TABLE `bus_fare`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus_payment`
--
ALTER TABLE `bus_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus_place`
--
ALTER TABLE `bus_place`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus_registration`
--
ALTER TABLE `bus_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus_route`
--
ALTER TABLE `bus_route`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus_seat`
--
ALTER TABLE `bus_seat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus_stop`
--
ALTER TABLE `bus_stop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bus_bookingg`
--
ALTER TABLE `bus_bookingg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `bus_busdetails`
--
ALTER TABLE `bus_busdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `bus_bustype`
--
ALTER TABLE `bus_bustype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `bus_fare`
--
ALTER TABLE `bus_fare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `bus_payment`
--
ALTER TABLE `bus_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bus_place`
--
ALTER TABLE `bus_place`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `bus_registration`
--
ALTER TABLE `bus_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bus_route`
--
ALTER TABLE `bus_route`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bus_seat`
--
ALTER TABLE `bus_seat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `bus_stop`
--
ALTER TABLE `bus_stop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
