-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 01, 2021 at 07:16 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `new`
--
CREATE DATABASE IF NOT EXISTS `new` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `new`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add addtocard_ model', 7, 'add_addtocard_model'),
(20, 'Can change addtocard_ model', 7, 'change_addtocard_model'),
(21, 'Can delete addtocard_ model', 7, 'delete_addtocard_model'),
(22, 'Can add feeback_ model', 8, 'add_feeback_model'),
(23, 'Can change feeback_ model', 8, 'change_feeback_model'),
(24, 'Can delete feeback_ model', 8, 'delete_feeback_model'),
(25, 'Can add user registration', 9, 'add_userregistration'),
(26, 'Can change user registration', 9, 'change_userregistration'),
(27, 'Can delete user registration', 9, 'delete_userregistration'),
(28, 'Can add admin model', 10, 'add_adminmodel'),
(29, 'Can change admin model', 10, 'change_adminmodel'),
(30, 'Can delete admin model', 10, 'delete_adminmodel'),
(31, 'Can add adminregister_ model', 11, 'add_adminregister_model'),
(32, 'Can change adminregister_ model', 11, 'change_adminregister_model'),
(33, 'Can delete adminregister_ model', 11, 'delete_adminregister_model');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `customer_addtocard_model`
--

CREATE TABLE IF NOT EXISTS `customer_addtocard_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Quality` int(11) NOT NULL,
  `day` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `requeststatus` varchar(300) NOT NULL,
  `salesid_id` int(11) NOT NULL,
  `userid_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Customer_addtocard_m_salesid_id_c57e4156_fk_Owner_adm` (`salesid_id`),
  KEY `Customer_addtocard_m_userid_id_18ad16b0_fk_Customer_` (`userid_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=144 ;

--
-- Dumping data for table `customer_addtocard_model`
--

INSERT INTO `customer_addtocard_model` (`id`, `Quality`, `day`, `month`, `year`, `requeststatus`, `salesid_id`, `userid_id`, `amount`) VALUES
(136, 2, 6, 5, 2019, 'PROCESS', 1, 1, 10),
(137, 2, 12, 12, 2019, 'PROCESS', 1, 1, 20),
(138, 3, 2, 9, 2019, 'PROCESS', 1, 1, 30),
(139, 2, 15, 4, 2018, 'PROCESS', 10, 1, 34),
(141, 4, 12, 7, 2019, 'PROCESS', 1, 1, 40),
(142, 2, 12, 7, 2019, 'PROCESS', 1, 1, 20),
(143, 10, 9, 5, 2021, 'PROCESS', 1, 6, 100);

-- --------------------------------------------------------

--
-- Table structure for table `customer_feeback_model`
--

CREATE TABLE IF NOT EXISTS `customer_feeback_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `productname` varchar(50) NOT NULL,
  `ratings` varchar(10) NOT NULL,
  `feedback` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `customer_feeback_model`
--

INSERT INTO `customer_feeback_model` (`id`, `name`, `productname`, `ratings`, `feedback`) VALUES
(1, 'praga', 'carrot	', '5', 'its good taste and fresh'),
(2, 'praga', 'Apple - Red Delicious', '3', 'its not good taste ,little fresh '),
(3, 'naveen', 'tomato', '4', 'its good color and fresh product ,not damage'),
(4, 'praga', 'carrot', '3', 'its Good Product, good taste and fresh');

-- --------------------------------------------------------

--
-- Table structure for table `customer_userregistration`
--

CREATE TABLE IF NOT EXISTS `customer_userregistration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(300) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobilenumber` varchar(100) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `customer_userregistration`
--

INSERT INTO `customer_userregistration` (`id`, `firstname`, `email`, `password`, `mobilenumber`, `dob`, `gender`, `address`) VALUES
(1, 'praga', 'pragatheeswaran222@gmail.com', '123456', '9790163803', '23/01/1998', 'Male', '2 9 A Main Road Kadakkam Killiyanur Post Mayiladuthurai'),
(2, 'naveen', 'naveenpauly@gmail.com', '789456', '9597901568', '22/01/1999', 'Male', '3 9 New Street Kulikari Road Mayiladuthurai'),
(3, 'sabari', 'sabari@gmail.com', '51525354', '9895969898', '23/03/1998', 'Male', '39 88 Main Road Kadakkam Kiliyanur Post Mayiladuthurai'),
(4, 'praga', 'pragatheswaran33@gmail.com', '51525354', '97901689848', '23/02/1998', 'Male', '2 9 jain Street Kadakkam Mailaduthurai'),
(5, 'arivu', 'arivu@gmail.com', 'arivu', '8767676767', '12-09-1994', 'male', 'chennai'),
(6, 'deva', 'deva@gmail.com', 'deva', '9878676767', '12-09-1992', 'deva', 'deva');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'Customer', 'addtocard_model'),
(8, 'Customer', 'feeback_model'),
(9, 'Customer', 'userregistration'),
(10, 'Owner', 'adminmodel'),
(11, 'Owner', 'adminregister_model'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'Owner', '0001_initial', '2019-07-09 05:23:23.828125'),
(2, 'Owner', '0002_adminregister_model', '2019-07-09 05:23:24.031250'),
(3, 'Customer', '0001_initial', '2019-07-09 05:23:25.708007'),
(4, 'contenttypes', '0001_initial', '2019-07-09 05:23:26.145507'),
(5, 'auth', '0001_initial', '2019-07-09 05:23:31.125000'),
(6, 'admin', '0001_initial', '2019-07-09 05:23:32.171875'),
(7, 'admin', '0002_logentry_remove_auto_add', '2019-07-09 05:23:32.265625'),
(8, 'contenttypes', '0002_remove_content_type_name', '2019-07-09 05:23:32.968750'),
(9, 'auth', '0002_alter_permission_name_max_length', '2019-07-09 05:23:33.593750'),
(10, 'auth', '0003_alter_user_email_max_length', '2019-07-09 05:23:34.205078'),
(11, 'auth', '0004_alter_user_username_opts', '2019-07-09 05:23:34.286132'),
(12, 'auth', '0005_alter_user_last_login_null', '2019-07-09 05:23:34.552734'),
(13, 'auth', '0006_require_contenttypes_0002', '2019-07-09 05:23:34.616210'),
(14, 'auth', '0007_alter_validators_add_error_messages', '2019-07-09 05:23:34.709960'),
(15, 'auth', '0008_alter_user_username_max_length', '2019-07-09 05:23:35.100585'),
(16, 'auth', '0009_alter_user_last_name_max_length', '2019-07-09 05:23:35.631835'),
(17, 'sessions', '0001_initial', '2019-07-09 05:23:35.959960'),
(18, 'Customer', '0002_addtocard_model_amount', '2019-07-11 07:18:57.012695'),
(19, 'Customer', '0003_remove_addtocard_model_amount', '2019-07-11 09:18:40.054687'),
(20, 'Customer', '0004_addtocard_model_amount2', '2019-07-11 09:54:32.134765'),
(21, 'Customer', '0005_remove_addtocard_model_amount2', '2019-07-11 12:00:54.316406'),
(22, 'Customer', '0006_addtocard_model_price', '2019-07-11 12:04:28.362304'),
(23, 'Customer', '0007_auto_20190712_1153', '2019-07-12 06:24:09.546875');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('c2qljqj1dlr1fzqclkpe5pzzcvi3qr69', 'N2NmZWVkOThmZDdlZTJkNWZhNzllZDhjZWFjMjhmZDBhMmZkMzM0MDp7InVzZXJpZCI6MX0=', '2019-07-24 09:17:43.106445'),
('d8zkaele7ry65fl9rshkb2kzhzi4n4zm', 'N2NmZWVkOThmZDdlZTJkNWZhNzllZDhjZWFjMjhmZDBhMmZkMzM0MDp7InVzZXJpZCI6MX0=', '2019-07-26 06:36:48.638671'),
('kh5tcakgp1w1wtmpgjy9grknzljzuz4d', 'N2NmZWVkOThmZDdlZTJkNWZhNzllZDhjZWFjMjhmZDBhMmZkMzM0MDp7InVzZXJpZCI6MX0=', '2019-07-26 13:31:32.747070'),
('oz36pe95xrgajqe3m2lbsvju6sruu2ik', 'N2NmZWVkOThmZDdlZTJkNWZhNzllZDhjZWFjMjhmZDBhMmZkMzM0MDp7InVzZXJpZCI6MX0=', '2019-07-24 06:27:00.715820'),
('t2z6cnjqmuih6uspezm59sq5oey0o60y', 'OTJjNzA1MDBhMzg1OGRiZjE2NjY0NDVmYTMxYzQ0N2ZjZGZhNDAyODp7InVzZXJpZCI6Nn0=', '2021-06-15 19:10:32.152628');

-- --------------------------------------------------------

--
-- Table structure for table `owner_adminmodel`
--

CREATE TABLE IF NOT EXISTS `owner_adminmodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Productname` varchar(100) NOT NULL,
  `Productid` int(11) NOT NULL,
  `Quality` int(11) NOT NULL,
  `uploadimage` varchar(100) NOT NULL,
  `gram` int(11) NOT NULL,
  `Description` varchar(100) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=47 ;

--
-- Dumping data for table `owner_adminmodel`
--

INSERT INTO `owner_adminmodel` (`id`, `Productname`, `Productid`, `Quality`, `uploadimage`, `gram`, `Description`, `amount`) VALUES
(1, 'carrot', 22, 50, 'carrot.jpg', 500, 'A popular sweet-tasting root vegetable, Carrots are narrow and cone shaped.', 10),
(2, 'radish', 22, 22, 'radish.jpg', 500, '\nRadishes are a root crop with a crunchy texture and a sharp, spicy, hot or sweet taste.', 10),
(3, 'Fresho Onion', 3, 1, 'onion_DXb0ydj.jpg', 1000, 'Onion is a vegetable which is almost like a staple in Indian food. This is also known to be one of t', 28),
(4, 'Potato', 4, 4, 'potato_L5NMZ5t.jpg', 500, 'Potatoes have rich and smooth texture filling, reasonable in calories, non-fattening, and are nutrie', 15),
(5, 'tomato', 5, 3, 'tomato_DsxfvpA.jpg', 500, 'Local tomatoes are partly sour and partly sweet and contain many seeds inside which are edible', 21),
(6, 'ladies-finger', 6, 3, 'ladies-finger_uvZZXGi.jpg', 1000, 'Ladies finger is a green vegetable with a tip at the end and a lighter green head, which is inedibe', 44),
(7, 'cauliflower', 7, 5, 'cauliflower_QFPOVsV.jpg', 1, 'Cauliflower is made up of tightly bound clusters of soft, crumbly, sweet cauliflower florets that fo', 42),
(8, 'capsicum-green', 8, 4, 'capsicum-green_Vt2xMy7.jpg', 500, 'Leaving a moderately pungent taste on the tongue, Green capsicums, also known as green peppers', 35),
(9, 'coconut-medium', 9, 4, 'coconut-medium_CJULQaQ.jpg', 1, 'Coconut is a very stable fruit. It is a mature fruit of the cocos nucifera palm. The fruit is nearly', 22),
(10, 'cucumber', 10, 3, 'cucumber_J6xjS4y.jpg', 1, 'With high water content and crunchy flesh, Cucumbers have striped, light to dark green coloured', 17),
(11, 'Chilli - Green', 11, 5, 'chilli_green.jpg', 500, 'Green chillis are the best kitchen ingredient to bring a dash of spiciness to recipes. The fresh', 56),
(12, 'Ginger', 12, 3, 'ginger_oqH5eJA.jpg', 500, 'Firm and fibrous ginger roots are stretched with multiple fingers that have light to dark tan skin a', 124),
(13, 'cabbage', 13, 5, 'cabbage_z8pEzqO.jpg', 1, 'With a texture of crispness and juiciness the moment you take the first bite, cabbages are sweet', 32),
(14, 'beetroot', 13, 4, 'beetroot_433VhfU.jpg', 500, 'These edible ruby red roots are smooth and bulbous and have the highest sugar content than any other', 24),
(15, 'garlic', 14, 3, 'garlic_jhJ4sGe.jpg', 500, 'Garlic is made of several heads wrapped in thin whitish layers. They are firm and have a mild', 69),
(16, 'brinjal-varikatri', 15, 4, 'brinjal-varikatri_Z5VlYFH.jpg', 500, 'One of the bigger varieties, Brinjal Varikatris are egg- shaped with white-purple stripes on the shi', 35),
(17, 'bitter-gourd', 16, 3, 'bitter-gourd_5DTeYBX.jpg', 500, 'The most bitter among all fruits, bitter gourds come with a rough, bumpy and green skin.', 50),
(18, 'Apple - Red Delicious', 17, 4, 'Apple_wnSnDKh.jpg', 4, 'The bright red coloured and heart shaped Red Delicious apples are crunchy, juicy and slightly sweet.', 125),
(19, 'pomegranate', 18, 4, 'pomegranate_SYDpxtz.jpg', 500, 'Fresho is our brand of fresh fruits and vegetables which are individually handpicked everyday by our', 65),
(20, 'tender-coconut-medium', 19, 4, 'tender-coconut-medium_Xx3Oyg6.jpg', 1, 'tender-coconut-medium', 40),
(21, 'watermelon-small', 20, 4, 'watermelon-small_I7MgEhD.jpg', 1, 'With greenish black to smooth dark green surface, Fresho watermelons are globular in shape and are', 42),
(22, 'banana', 21, 4, 'banana_i41DHUE.jpg', 500, 'Fresh, tiny small sized, directly procured from the farm, this variety is called Yelakki in Bangalor', 45),
(23, 'mosambi', 22, 4, 'mosambi_xeTQgDb.jpg', 1, 'Fresho Mosambis are of the best quality, handpicked and sourced directly from the farmers of Anantap', 45),
(24, 'Papaya', 23, 5, 'papaya_ytVEBvT.jpg', 1, 'Fresho Mosambis are of the best quality, handpicked and sourced directly from the farmers of Anantap', 32),
(25, 'Kiwi Green', 23, 1, 'kiwi-green_zVOvndJ.jpg', 1, 'Kiwis are oval shaped with a brownish outer skin. The flesh is bright green and juicy with tiny, edi', 75),
(26, 'banana-red', 24, 5, 'banana-red_LRHLzH0.jpg', 1, 'Standing apart from the common varieties of yellow bananas, Red bananas are short, plump and reddish', 79),
(27, 'Avacado', 25, 4, 'avocado_xuOZYkS.jpg', 500, 'Avocados are oval shaped fruits with a thick green and a bumpy, leathery outer skin. They have a uni', 105),
(28, 'jackfruit-peeled', 26, 4, 'jackfruit-peeled_SBlfp2c.jpg', 250, 'Fresho brings peeled jackfruit to your doorstep in hygienic packs to reduce your effort of cutting', 48),
(29, 'dates-kimia-with-seed', 27, 4, 'dates-kimia-with-seed_vA8geXd.jpg', 1, 'Plump and fibrous, brownish-black coloured oval dates taste like honey and just melt in the mouth. T', 240),
(30, 'Orange', 28, 4, 'orange_62IB4Ym.jpg', 1, 'Fresho brings you an assortment of 4 imported oranges, which make for an ideal gift during the fest', 130),
(31, 'grapes-panner', 29, 5, 'grapes-panner_3rvZ2Yf.jpg', 1, 'The bunch comes with small, round purple-black or reddish black grapes with a tender and semi transl', 240),
(32, 'pineapple', 30, 5, 'pineapple_FPDtBrY.jpg', 1, 'With the shape of a pine cone, the fruit is loosely fibrous and juicy with white to yellowish flesh.', 55),
(33, 'apricot-dried', 31, 5, 'apricot-dried_YXU4yAN.jpg', 1, 'Dried apricots contain a strong sweet-sour flavour and are high in fibre. They create an outstanding', 128),
(34, 'Dried apricots contain a strong sweet-sour flavour and are high in fibre. They create an outstanding', 32, 4, 'banana-flower_Mu9LbIg.jpg', 1, 'Banana flower, also known as banana blossom, is a tear-shaped maroon or purplish flower hanging at t', 22),
(35, 'Tajmahal Tea', 33, 4, 'Tajmahal_Tea.jpg', 1, 'A perfect combination of strength and flavour that leaves you saying WAH TAJ! Same great taste of Ta', 520),
(36, 'TATA Salt', 34, 4, 'TATA_Salt.jpg', 1, 'Vedaka offers high quality Indian food products to you. Our dals are completely free from artificial', 91),
(37, 'Nature Dal', 35, 4, 'Nature_DAl.jpg', 500, 'Items in your Amazon.in shopping cart that are not from the Amazon Pantry store will be shipped sepa', 89),
(38, 'Surf Excel', 36, 45, 'Surf_Excel.jpg', 500, 'Items in your Amazon.in shopping cart that are not from the Amazon Pantry store will be shipped sepa', 95),
(39, 'Vedaka Green Moong', 36, 4, 'Vedaka_Green_Moong.jpg', 500, 'Hygienically packed green moong which is free from impurities such as weevils and stones Dals are so', 52),
(40, 'Head & Shoulders', 37, 4, 'Head_Shoulders.jpg', 1, 'Quantity: 675ml; Item Form: Foam Richly indulgent anti-dandruff shampoo for dry, damaged or frizzy', 370),
(41, 'Vendaka Puffed Rice', 37, 4, 'Vedka_Puffed_Rice.jpg', 200, 'Vedaka Puffed Rice (Murmura) is made with 100% rice HACCP certified hygienic packaging to retain', 29),
(42, 'Himalaya Herbals Neem', 38, 4, 'Himalaya_Herbals_Neem.jpg', 1, 'Quantity: 125g; Item Form: Solid Blends together all the goodness of naturally derived ingredients', 39),
(43, 'Vim Anti Smell Bar - 200 g', 39, 4, 'Vim_Anti_Smell_Bar_200g.jpg', 200, 'Vim Anti Smell Bar - 200 g', 10),
(44, 'chille', 35, 4, 'chilli_green_o3UXemF.jpg', 500, 'its fresh and hot green chilli and low price 20% discount', 70),
(45, 'Carrot', 49, 4, 'carrot_di2x8MX.jpg', 500, 'A popular sweet-tasting root vegetable, Carrots  are narrow and cone shaped. They have thick fleshy,', 10),
(46, 'potato', 1234, 25, 'potato_FW4LcJX.jpg', 500, 'sweet potato', 100);

-- --------------------------------------------------------

--
-- Table structure for table `owner_adminregister_model`
--

CREATE TABLE IF NOT EXISTS `owner_adminregister_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adminid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(10) NOT NULL,
  `phoneno` varchar(15) NOT NULL,
  `address` varchar(500) NOT NULL,
  `dob` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
-- Constraints for table `customer_addtocard_model`
--
ALTER TABLE `customer_addtocard_model`
  ADD CONSTRAINT `Customer_addtocard_m_salesid_id_c57e4156_fk_Owner_adm` FOREIGN KEY (`salesid_id`) REFERENCES `owner_adminmodel` (`id`),
  ADD CONSTRAINT `Customer_addtocard_m_userid_id_18ad16b0_fk_Customer_` FOREIGN KEY (`userid_id`) REFERENCES `customer_userregistration` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
