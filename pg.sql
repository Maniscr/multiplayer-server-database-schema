-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2022 at 01:44 PM
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
-- Database: `pgrp`
--

-- --------------------------------------------------------

--
-- Table structure for table `addon_account`
--

CREATE TABLE `addon_account` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addon_account`
--

INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
('barber', 'Barbershop', 1),
('society_admin', 'admin', 1),
('society_ambulance', 'Ambulance', 1),
('society_barber', 'Barbershop', 1),
('society_bcso', 'bcso', 1),
('society_bus', 'busdriver', 1),
('society_cardealer', 'Concessionnaire', 1),
('society_delivery', 'Delivery', 1),
('society_farmer', 'Farmer', 1),
('society_gardener', 'Gardener', 1),
('society_gotur', 'Götür', 1),
('society_groove', 'groove', 1),
('society_lawyer', 'vakil', 1),
('society_mechanic', 'mechanic', 1),
('society_police', 'Police', 1),
('society_secretgang', 'SecretGang', 1),
('society_sheriff', 'Sheriff', 1),
('society_specialmechanic', 'Special Mechanic', 1),
('society_suzukigang', 'SuzukiGang', 1),
('society_tattoo', 'Tatto', 1),
('society_taxi', 'Taxi', 1),
('society_test', 'test', 1),
('society_trucker', 'Trucker', 1),
('society_unemployed', 'bikar', 1),
('tattooshop', 'Tatto', 1);

-- --------------------------------------------------------

--
-- Table structure for table `addon_account_data`
--

CREATE TABLE `addon_account_data` (
  `id` int(11) NOT NULL,
  `account_name` varchar(100) DEFAULT NULL,
  `money` int(11) NOT NULL,
  `owner` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addon_account_data`
--

INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
(1, 'society_ambulance', 450, NULL),
(2, 'society_cardealer', 0, NULL),
(3, 'society_police', 1, NULL),
(4, 'secworker', 0, NULL),
(5, 'society_groove', 0, NULL),
(6, 'society_mechanic', 199542911, NULL),
(7, 'society_sheriff', 0, NULL),
(8, 'barber', 0, NULL),
(9, 'tattooshop', 0, NULL),
(10, 'society_taxi', 0, NULL),
(11, 'society_unemployed', 0, NULL),
(12, 'society_tattoo', 0, NULL),
(13, 'society_barber', 0, NULL),
(14, 'society_bus', 0, NULL),
(15, 'society_test', 0, NULL),
(16, 'society_gardener', 0, NULL),
(17, 'society_farmer', 0, NULL),
(18, 'society_trucker', 0, NULL),
(19, 'society_delivery', 0, NULL),
(20, 'society_bcso', 0, NULL),
(21, 'society_lawyer', 0, NULL),
(22, 'society_specialmechanic', 0, NULL),
(23, 'society_secretgang', 5000, NULL),
(24, 'society_suzukigang', 0, NULL),
(25, 'society_gotur', 0, NULL),
(26, 'society_admin', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `addon_inventory`
--

CREATE TABLE `addon_inventory` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addon_inventory`
--

INSERT INTO `addon_inventory` (`name`, `label`, `shared`, `id`) VALUES
('barber', 'Barbershop', 1, 0),
('property', 'Property', 0, 0),
('society_admin', 'admin', 1, 0),
('society_ambulance', 'Ambulance', 1, 0),
('society_barber', 'Barbershop', 1, 0),
('society_bcso', 'bcso', 1, 0),
('society_bus', 'busdriver', 1, 0),
('society_cardealer', 'Concesionnaire', 1, 0),
('society_delivery', 'Delivery', 1, 0),
('society_farmer', 'Farmer', 1, 0),
('society_gardener', 'Gardener', 1, 0),
('society_gotur', 'Götür', 1, 0),
('society_groove', 'groove', 1, 0),
('society_lawyer', 'vakil', 1, 0),
('society_mechanic', 'mechanic', 1, 0),
('society_police', 'Police', 1, 0),
('society_secretgang', 'SecretGang', 1, 0),
('society_sheriff', 'Sheriff', 1, 0),
('society_specialmechanic', 'Special Mechanic', 1, 0),
('society_suzukigang', 'SuzukiGang', 1, 0),
('society_tattoo', 'Tatto', 1, 0),
('society_taxi', 'Taxi', 1, 0),
('society_test', 'test', 1, 0),
('society_trucker', 'Trucker', 1, 0),
('society_unemployed', 'bikar', 1, 0),
('tattooshop', 'Tatto', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `addon_inventory_items`
--

CREATE TABLE `addon_inventory_items` (
  `id` int(11) NOT NULL,
  `inventory_name` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addon_inventory_items`
--

INSERT INTO `addon_inventory_items` (`id`, `inventory_name`, `name`, `count`, `owner`) VALUES
(1, 'society_police', 'pliers', 1, NULL),
(2, 'property', 'tv', 2, '1'),
(3, 'society_police', 'diamond', 1, NULL),
(4, 'society_lawyer', 'water', 1, NULL),
(5, 'society_lawyer', '', -53, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `adminmode_bans`
--

CREATE TABLE `adminmode_bans` (
  `id` int(11) NOT NULL,
  `receiver` text NOT NULL,
  `sender` varchar(60) NOT NULL,
  `length` datetime DEFAULT NULL,
  `reason` text NOT NULL,
  `unbanned` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `adminmode_identifiers`
--

CREATE TABLE `adminmode_identifiers` (
  `steam` varchar(60) NOT NULL,
  `license` varchar(60) NOT NULL,
  `ip` varchar(60) NOT NULL,
  `name` varchar(128) NOT NULL,
  `xbl` varchar(60) DEFAULT NULL,
  `live` varchar(60) DEFAULT NULL,
  `discord` varchar(60) DEFAULT NULL,
  `fivem` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminmode_identifiers`
--

INSERT INTO `adminmode_identifiers` (`steam`, `license`, `ip`, `name`, `xbl`, `live`, `discord`, `fivem`) VALUES
('steam:110000132b7899a', 'license:fa1ac7043ecf6d547b685250975e7609c11fbf62', 'ip:192.168.1.4', 'AliCCR', 'xbl:2535449575788905', 'live:914801514731224', NULL, NULL),
('steam:11000014548f24c', 'license:9f211505b26afbba9a74485826218356b3f4d1f4', 'ip:192.168.1.7', 'AliCCR', 'xbl:2535449575788905', 'live:914801514731224', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `adminmode_warnings`
--

CREATE TABLE `adminmode_warnings` (
  `id` int(11) NOT NULL,
  `receiver` text NOT NULL,
  `sender` varchar(60) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminmode_warnings`
--

INSERT INTO `adminmode_warnings` (`id`, `receiver`, `sender`, `message`) VALUES
(1, 'fa1ac7043ecf6d547b685250975e7609c11fbf62', 'fa1ac7043ecf6d547b685250975e7609c11fbf62', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `bans`
--

CREATE TABLE `bans` (
  `license` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `time` int(20) NOT NULL,
  `reason` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `id` int(11) NOT NULL,
  `identifier` varchar(40) NOT NULL,
  `sender` varchar(40) NOT NULL,
  `target_type` varchar(50) NOT NULL,
  `target` varchar(40) NOT NULL,
  `label` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `billing`
--

INSERT INTO `billing` (`id`, `identifier`, `sender`, `target_type`, `target`, `label`, `amount`) VALUES
(3, 'c4da8c4a83ad78a9cbffea66f2d96c2096b889c7', '513de1b11290da1b5bb28477dcefc5ff89274c7d', 'society', 'society_mechanic', 'mechanic', 40000),
(4, 'c4da8c4a83ad78a9cbffea66f2d96c2096b889c7', '513de1b11290da1b5bb28477dcefc5ff89274c7d', 'society', 'society_mechanic', 'mechanic', 40000),
(5, 'c4da8c4a83ad78a9cbffea66f2d96c2096b889c7', '513de1b11290da1b5bb28477dcefc5ff89274c7d', 'society', 'society_mechanic', 'mechanic', 40000),
(6, 'ab1a2c0b0dadb87b76f981335ff797d57c0535e7', '513de1b11290da1b5bb28477dcefc5ff89274c7d', 'society', 'society_mechanic', 'mechanic', 47000),
(7, 'b3f4681464b6fec9849bce95013942799cd8be97', 'f75479f7f2eea4f06c3d506f916a4eb345de52e7', 'society', 'society_police', 'Police', 2147483647),
(21, 'license:c653440abceaf7cc5934495d0b0ddade', 'license:fa1ac7043ecf6d547b685250975e7609', 'society', 'society_police', 'Police', 50),
(22, 'license:c653440abceaf7cc5934495d0b0ddade', 'license:fa1ac7043ecf6d547b685250975e7609', 'society', 'society_police', 'Police', 5000),
(23, 'license:c653440abceaf7cc5934495d0b0ddade', 'license:fa1ac7043ecf6d547b685250975e7609', 'society', 'society_police', 'Police', 300),
(24, 'license:8c05fbfd6f45a95208865031a56880d7', 'license:fa1ac7043ecf6d547b685250975e7609', 'player', 'license:fa1ac7043ecf6d547b685250975e7609', 'test', 50),
(25, 'license:fa1ac7043ecf6d547b685250975e7609', 'license:8c05fbfd6f45a95208865031a56880d7', 'player', 'license:8c05fbfd6f45a95208865031a56880d7', 'slm', 10),
(26, 'license:fa1ac7043ecf6d547b685250975e7609', 'license:8c05fbfd6f45a95208865031a56880d7', 'player', 'license:8c05fbfd6f45a95208865031a56880d7', 'slm', 10),
(27, 'license:fa1ac7043ecf6d547b685250975e7609', 'license:8c05fbfd6f45a95208865031a56880d7', 'player', 'license:8c05fbfd6f45a95208865031a56880d7', 'slm', 10),
(28, 'license:8c05fbfd6f45a95208865031a56880d7', 'license:fa1ac7043ecf6d547b685250975e7609', 'player', 'license:fa1ac7043ecf6d547b685250975e7609', 'baby', 500),
(29, 'license:8c05fbfd6f45a95208865031a56880d7', 'license:fa1ac7043ecf6d547b685250975e7609', 'player', 'license:fa1ac7043ecf6d547b685250975e7609', 'baby', 500),
(30, 'license:8c05fbfd6f45a95208865031a56880d7', 'license:fa1ac7043ecf6d547b685250975e7609', 'player', 'license:fa1ac7043ecf6d547b685250975e7609', 'test', 500),
(31, 'license:8c05fbfd6f45a95208865031a56880d7', 'license:fa1ac7043ecf6d547b685250975e7609', 'player', 'license:fa1ac7043ecf6d547b685250975e7609', 'test', 500),
(32, 'license:fa1ac7043ecf6d547b685250975e7609', 'license:8c05fbfd6f45a95208865031a56880d7', 'player', 'license:8c05fbfd6f45a95208865031a56880d7', 'sa', 11),
(33, 'license:8c05fbfd6f45a95208865031a56880d7', 'license:fa1ac7043ecf6d547b685250975e7609', 'society', 'society_police', 'Police', 50),
(34, 'license:8c05fbfd6f45a95208865031a56880d7', 'license:fa1ac7043ecf6d547b685250975e7609', 'society', 'society_police', 'Police', 50),
(35, 'license:fa1ac7043ecf6d547b685250975e7609', 'license:8c05fbfd6f45a95208865031a56880d7', 'society', 'society_police', 'Police', 50000),
(36, 'license:fa1ac7043ecf6d547b685250975e7609', 'license:8c05fbfd6f45a95208865031a56880d7', 'society', 'society_police', 'Police', 50000),
(37, 'license:fa1ac7043ecf6d547b685250975e7609', 'license:8c05fbfd6f45a95208865031a56880d7', 'society', 'society_police', 'Police', 500),
(38, 'license:fa1ac7043ecf6d547b685250975e7609', 'license:8c05fbfd6f45a95208865031a56880d7', 'society', 'society_police', 'Police', 500),
(39, 'license:fa1ac7043ecf6d547b685250975e7609', 'license:8c05fbfd6f45a95208865031a56880d7', 'player', 'license:8c05fbfd6f45a95208865031a56880d7', 'asa', 500),
(40, 'license:a93be0d807804df193d247b27080b23c', 'license:fa1ac7043ecf6d547b685250975e7609', 'society', 'society_police', 'Police', 500),
(41, 'license:a93be0d807804df193d247b27080b23c', 'license:fa1ac7043ecf6d547b685250975e7609', 'society', 'society_police', 'Police', 50),
(42, 'license:a93be0d807804df193d247b27080b23c', 'license:fa1ac7043ecf6d547b685250975e7609', 'society', 'society_police', 'Police', 50),
(43, 'license:a93be0d807804df193d247b27080b23c', 'license:fa1ac7043ecf6d547b685250975e7609', 'society', 'society_police', 'Police', 500),
(44, 'license:a93be0d807804df193d247b27080b23c', 'license:fa1ac7043ecf6d547b685250975e7609', 'society', 'society_police', 'Police', 500),
(45, 'fa1ac7043ecf6d547b685250975e7609c11fbf62', 'license:a93be0d807804df193d247b27080b23c', 'society', 'society_police', 'Police', 500),
(46, 'fa1ac7043ecf6d547b685250975e7609c11fbf62', 'license:a93be0d807804df193d247b27080b23c', 'society', 'society_taxi', 'Taxi', 6070),
(47, 'fa1ac7043ecf6d547b685250975e7609c11fbf62', 'license:a93be0d807804df193d247b27080b23c', 'society', 'society_mechanic', 'mechanic', 7005);

-- --------------------------------------------------------

--
-- Table structure for table `cardealer_vehicles`
--

CREATE TABLE `cardealer_vehicles` (
  `id` int(11) NOT NULL,
  `vehicle` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `communityservice`
--

CREATE TABLE `communityservice` (
  `identifier` varchar(100) NOT NULL,
  `actions_remaining` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `datastore`
--

CREATE TABLE `datastore` (
  `name` varchar(60) NOT NULL,
  `label` varchar(100) NOT NULL,
  `shared` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `datastore`
--

INSERT INTO `datastore` (`name`, `label`, `shared`, `id`) VALUES
('barber', 'Barbershop', 1, 0),
('property', 'Property', 0, 0),
('society_admin', 'admin', 1, 0),
('society_ambulance', 'Ambulance', 1, 0),
('society_barber', 'Barbershop', 1, 0),
('society_bcso', 'bcso', 1, 0),
('society_bus', 'busdriver', 1, 0),
('society_cardealer', 'Concessionnaire', 1, 0),
('society_delivery', 'Delivery', 1, 0),
('society_farmer', 'Farmer', 1, 0),
('society_gardener', 'Gardener', 1, 0),
('society_gotur', 'Götür', 1, 0),
('society_groove', 'groove', 1, 0),
('society_lawyer', 'vakil', 1, 0),
('society_mechanic', 'Mechanic', 1, 0),
('society_police', 'Police', 1, 0),
('society_police_outfits', 'Police outfits', 0, 0),
('society_secretgang', 'SecretGang', 1, 0),
('society_sheriff', 'Sheriff', 1, 0),
('society_specialmechanic', 'Special Mechanic', 1, 0),
('society_suzukigang', 'SuzukiGang', 1, 0),
('society_tattoo', 'Tatto', 1, 0),
('society_taxi', 'Taxi', 1, 0),
('society_test', 'test', 1, 0),
('society_trucker', 'Trucker', 1, 0),
('society_unemployed', 'bikar', 1, 0),
('tattooshop', 'Tatto', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `datastore_data`
--

CREATE TABLE `datastore_data` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `owner` varchar(40) DEFAULT NULL,
  `data` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `datastore_data`
--

INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
(1, 'barber', NULL, '{}'),
(2, 'society_ambulance', NULL, '{}'),
(3, 'society_barber', NULL, '{}'),
(4, 'society_bcso', NULL, '{}'),
(5, 'society_bus', NULL, '{}'),
(6, 'society_cardealer', NULL, '{}'),
(7, 'society_delivery', NULL, '{}'),
(8, 'society_farmer', NULL, '{}'),
(9, 'society_gardener', NULL, '{}'),
(10, 'society_gotur', NULL, '{}'),
(11, 'society_groove', NULL, '{}'),
(12, 'society_lawyer', NULL, '{\"weapons\":[{\"name\":\"WEAPON_PISTOL\",\"count\":0}]}'),
(13, 'society_mechanic', NULL, '{}'),
(14, 'society_police', NULL, '{}'),
(15, 'society_secretgang', NULL, '{}'),
(16, 'society_sheriff', NULL, '{\"weapons\":[{\"count\":0,\"name\":\"WEAPON_PISTOL\"},{\"count\":0,\"name\":\"WEAPON_SMG\"}]}'),
(17, 'society_specialmechanic', NULL, '{}'),
(18, 'society_suzukigang', NULL, '{}'),
(19, 'society_tattoo', NULL, '{}'),
(20, 'society_taxi', NULL, '{}'),
(21, 'society_test', NULL, '{}'),
(22, 'society_trucker', NULL, '{}'),
(23, 'society_unemployed', NULL, '{}'),
(24, 'tattooshop', NULL, '{}'),
(25, 'society_police_outfits', 'Char1fa1ac7043ecf6d547b685250975e7609c11', '{}'),
(26, 'property', 'Char1fa1ac7043ecf6d547b685250975e7609c11', '{\"dressing\":[{\"label\":\"1\",\"skin\":{\"mom\":21,\"bags_1\":0,\"hair_2\":0,\"eyebrows_3\":0,\"eyebrows_4\":0,\"lipstick_3\":32,\"moles_2\":0,\"blemishes_2\":0,\"eyebrows_1\":0,\"chest_2\":0,\"moles_1\":0,\"tshirt_1\":15,\"mask_1\":0,\"beard_4\":0,\"bodyb_1\":-1,\"hair_color_1\":0,\"blush_2\":0,\"bproof_2\":0,\"skin_md_weight\":50,\"nose_1\":0,\"makeup_2\":0,\"nose_2\":0,\"hair_1\":3,\"dad\":0,\"complexion_1\":0,\"chest_1\":0,\"pants_1\":0,\"beard_3\":61,\"glasses_1\":-1,\"eyebrows_5\":0,\"beard_2\":0,\"helmet_2\":-1,\"ears_2\":-1,\"chin_3\":0,\"makeup_1\":0,\"cheeks_3\":0,\"shoes_2\":0,\"makeup_4\":0,\"mask_2\":0,\"pants_2\":0,\"blush_1\":0,\"complexion_2\":0,\"decals_1\":0,\"cheeks_2\":0,\"torso_1\":14,\"eye_color\":0,\"lip_thickness\":0,\"nose_3\":0,\"decals_2\":0,\"age_1\":0,\"eye_squint\":0,\"chest_3\":0,\"watches_1\":-1,\"torso_2\":1,\"bodyb_4\":0,\"tshirt_2\":0,\"eyebrows_6\":0,\"jaw_1\":0,\"arms_2\":0,\"helmet_1\":-1,\"bodyb_2\":0,\"sun_2\":0,\"beard_1\":0,\"cheeks_1\":0,\"makeup_3\":0,\"watches_2\":-1,\"eyebrows_2\":10,\"blemishes_1\":0,\"chain_2\":0,\"nose_4\":0,\"face_md_weight\":50,\"bags_2\":0,\"arms\":6,\"chin_4\":0,\"age_2\":0,\"jaw_2\":0,\"bracelets_2\":0,\"chin_2\":0,\"neck_thickness\":0,\"blush_3\":\"2\",\"hair_color_2\":0,\"chain_1\":0,\"ears_1\":-1,\"bproof_1\":0,\"chin_1\":0,\"glasses_2\":-1,\"sex\":0,\"nose_6\":0,\"nose_5\":0,\"lipstick_1\":0,\"lipstick_4\":0,\"bodyb_3\":-1,\"shoes_1\":0,\"bracelets_1\":-1,\"sun_1\":0,\"lipstick_2\":0}},{\"label\":\"2\",\"skin\":{\"mom\":21,\"bags_1\":0,\"hair_2\":0,\"eyebrows_3\":0,\"eyebrows_4\":0,\"lipstick_3\":32,\"moles_2\":0,\"blemishes_2\":0,\"jaw_2\":0,\"chest_2\":0,\"moles_1\":0,\"tshirt_1\":15,\"mask_1\":0,\"bproof_1\":0,\"bodyb_1\":-1,\"hair_color_1\":0,\"blush_2\":0,\"bproof_2\":0,\"skin_md_weight\":50,\"lip_thickness\":0,\"makeup_2\":0,\"nose_2\":0,\"hair_1\":3,\"dad\":0,\"complexion_1\":0,\"chest_1\":0,\"pants_1\":0,\"sex\":0,\"glasses_1\":-1,\"eyebrows_5\":0,\"beard_2\":0,\"helmet_2\":-1,\"ears_2\":-1,\"chin_3\":0,\"makeup_1\":0,\"cheeks_3\":0,\"shoes_2\":0,\"decals_1\":0,\"mask_2\":0,\"pants_2\":5,\"blush_1\":0,\"chest_3\":0,\"makeup_4\":0,\"cheeks_2\":0,\"torso_1\":14,\"complexion_2\":0,\"age_1\":0,\"nose_3\":0,\"decals_2\":0,\"chin_2\":0,\"eye_squint\":0,\"watches_1\":-1,\"torso_2\":1,\"bodyb_4\":0,\"eyebrows_1\":0,\"tshirt_2\":0,\"eyebrows_6\":0,\"jaw_1\":0,\"arms_2\":0,\"helmet_1\":-1,\"bodyb_2\":0,\"eye_color\":0,\"beard_1\":0,\"cheeks_1\":0,\"blemishes_1\":0,\"watches_2\":-1,\"eyebrows_2\":10,\"sun_2\":0,\"makeup_3\":0,\"chin_4\":0,\"face_md_weight\":50,\"nose_4\":0,\"arms\":6,\"bags_2\":0,\"lipstick_1\":0,\"ears_1\":-1,\"bracelets_2\":0,\"age_2\":0,\"neck_thickness\":0,\"blush_3\":\"2\",\"hair_color_2\":0,\"chin_1\":0,\"beard_4\":0,\"chain_1\":0,\"glasses_2\":-1,\"chain_2\":0,\"nose_1\":0,\"nose_6\":0,\"beard_3\":61,\"sun_1\":0,\"lipstick_4\":0,\"bodyb_3\":-1,\"shoes_1\":0,\"bracelets_1\":-1,\"nose_5\":0,\"lipstick_2\":0}}]}'),
(27, 'property', '5', '{}'),
(28, 'property', '4', '{}'),
(29, 'property', '1', '{}'),
(30, 'property', '0000132b7899a', '{}'),
(31, 'society_police_outfits', '0000132b7899a', '{}'),
(32, 'property', 'fa1ac7043ecf6d547b685250975e7609c11fbf62', '{}'),
(33, 'society_police_outfits', 'fa1ac7043ecf6d547b685250975e7609c11fbf62', '{}'),
(34, 'society_admin', NULL, '{}'),
(35, 'property', '9f211505b26afbba9a74485826218356b3f4d1f4', '{}'),
(36, 'society_police_outfits', '9f211505b26afbba9a74485826218356b3f4d1f4', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `esx_manager_bans`
--

CREATE TABLE `esx_manager_bans` (
  `identifier` varchar(60) NOT NULL,
  `name` text NOT NULL,
  `reason` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `esx_manager_warns`
--

CREATE TABLE `esx_manager_warns` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `warned` text NOT NULL,
  `reason` text NOT NULL,
  `date` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fine_types`
--

CREATE TABLE `fine_types` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fine_types`
--

INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Usage abusif du klaxon', 30, 0),
(2, 'Franchir une ligne continue', 40, 0),
(3, 'Circulation à contresens', 250, 0),
(4, 'Demi-tour non autorisé', 250, 0),
(5, 'Circulation hors-route', 170, 0),
(6, 'Non-respect des distances de sécurité', 30, 0),
(7, 'Arrêt dangereux / interdit', 150, 0),
(8, 'Stationnement gênant / interdit', 70, 0),
(9, 'Non respect  de la priorité à droite', 70, 0),
(10, 'Non-respect à un véhicule prioritaire', 90, 0),
(11, 'Non-respect d\'un stop', 105, 0),
(12, 'Non-respect d\'un feu rouge', 130, 0),
(13, 'Dépassement dangereux', 100, 0),
(14, 'Véhicule non en état', 100, 0),
(15, 'Conduite sans permis', 1500, 0),
(16, 'Délit de fuite', 800, 0),
(17, 'Excès de vitesse < 5 kmh', 90, 0),
(18, 'Excès de vitesse 5-15 kmh', 120, 0),
(19, 'Excès de vitesse 15-30 kmh', 180, 0),
(20, 'Excès de vitesse > 30 kmh', 300, 0),
(21, 'Entrave de la circulation', 110, 1),
(22, 'Dégradation de la voie publique', 90, 1),
(23, 'Trouble à l\'ordre publique', 90, 1),
(24, 'Entrave opération de police', 130, 1),
(25, 'Insulte envers / entre civils', 75, 1),
(26, 'Outrage à agent de police', 110, 1),
(27, 'Menace verbale ou intimidation envers civil', 90, 1),
(28, 'Menace verbale ou intimidation envers policier', 150, 1),
(29, 'Manifestation illégale', 250, 1),
(30, 'Tentative de corruption', 1500, 1),
(31, 'Arme blanche sortie en ville', 120, 2),
(32, 'Arme léthale sortie en ville', 300, 2),
(33, 'Port d\'arme non autorisé (défaut de license)', 600, 2),
(34, 'Port d\'arme illégal', 700, 2),
(35, 'Pris en flag lockpick', 300, 2),
(36, 'Vol de voiture', 1800, 2),
(37, 'Vente de drogue', 1500, 2),
(38, 'Fabriquation de drogue', 1500, 2),
(39, 'Possession de drogue', 650, 2),
(40, 'Prise d\'ôtage civil', 1500, 2),
(41, 'Prise d\'ôtage agent de l\'état', 2000, 2),
(42, 'Braquage particulier', 650, 2),
(43, 'Braquage magasin', 650, 2),
(44, 'Braquage de banque', 1500, 2),
(45, 'Tir sur civil', 2000, 3),
(46, 'Tir sur agent de l\'état', 2500, 3),
(47, 'Tentative de meurtre sur civil', 3000, 3),
(48, 'Tentative de meurtre sur agent de l\'état', 5000, 3),
(49, 'Meurtre sur civil', 10000, 3),
(50, 'Meurte sur agent de l\'état', 30000, 3),
(51, 'Meurtre involontaire', 1800, 3),
(52, 'Escroquerie à l\'entreprise', 2000, 2);

-- --------------------------------------------------------

--
-- Table structure for table `gangs`
--

CREATE TABLE `gangs` (
  `id` int(11) NOT NULL,
  `gangName` varchar(65) DEFAULT NULL,
  `expireTime` date DEFAULT NULL,
  `gangColor` tinyint(1) DEFAULT 1,
  `blipRadius` int(11) NOT NULL DEFAULT 100,
  `coords` text DEFAULT NULL,
  `accountMoney` varchar(10) NOT NULL DEFAULT '0',
  `canSearch` tinyint(4) NOT NULL DEFAULT 1,
  `canCuff` tinyint(4) NOT NULL DEFAULT 1,
  `canMove` tinyint(4) NOT NULL DEFAULT 1,
  `canOpenCarsDoor` tinyint(4) NOT NULL DEFAULT 1,
  `haveGPS` tinyint(4) NOT NULL DEFAULT 1,
  `slotPlayer` int(11) NOT NULL DEFAULT 0,
  `maxArmor` int(11) NOT NULL DEFAULT 0,
  `inventory` longtext DEFAULT NULL,
  `discordHook` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gangs_grade`
--

CREATE TABLE `gangs_grade` (
  `gradeId` int(11) NOT NULL,
  `gangId` int(11) NOT NULL,
  `grade` int(11) NOT NULL DEFAULT 0,
  `name` varchar(65) DEFAULT NULL,
  `salary` int(11) NOT NULL DEFAULT 0,
  `maleSkin` text DEFAULT NULL,
  `femaleSkin` text DEFAULT NULL,
  `accessVehicle` tinyint(1) NOT NULL DEFAULT 1,
  `accessArmory` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gangs_member`
--

CREATE TABLE `gangs_member` (
  `playerIdentifiers` varchar(250) DEFAULT NULL,
  `gangId` int(11) NOT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gangs_vehicle`
--

CREATE TABLE `gangs_vehicle` (
  `gangId` int(11) NOT NULL,
  `plate` varchar(10) NOT NULL,
  `vehicle` longtext NOT NULL,
  `type` varchar(20) NOT NULL,
  `stored` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gangs_vehicle`
--

INSERT INTO `gangs_vehicle` (`gangId`, `plate`, `vehicle`, `type`, `stored`) VALUES
(13, 'ATK 771', '{\"neonEnabled\":[false,false,false,false],\"modEngineBlock\":-1,\"typeVehicle\":\"car\",\"modFrame\":-1,\"plateIndex\":3,\"bodyHealth\":998.3,\"dirtLevel\":1.2,\"modWindows\":-1,\"modFrontBumper\":-1,\"plate\":\"ATK 771\",\"modDashboard\":-1,\"classVehicle\":2,\"modXenon\":false,\"modAPlate\":-1,\"modArmor\":-1,\"neonColor\":[255,0,255],\"xenonColor\":255,\"modSpeakers\":-1,\"wheels\":3,\"modGrille\":-1,\"engineHealth\":999.3,\"modRearBumper\":-1,\"modAerials\":-1,\"model\":1701712977,\"windowTint\":-1,\"modFrontWheels\":-1,\"modDial\":-1,\"color2\":112,\"modHorns\":-1,\"modTrimA\":-1,\"modSteeringWheel\":-1,\"modSuspension\":-1,\"modTransmission\":-1,\"wheelColor\":156,\"modSmokeEnabled\":false,\"modArchCover\":-1,\"pearlescentColor\":6,\"modSeats\":-1,\"modTank\":-1,\"modBackWheels\":-1,\"fuelLevel\":76.8,\"color1\":112,\"tyreSmokeColor\":[255,255,255],\"modLivery\":-1,\"modFender\":-1,\"modHydrolic\":-1,\"modRoof\":-1,\"modShifterLeavers\":-1,\"modVanityPlate\":-1,\"modEngine\":-1,\"modRightFender\":-1,\"modTurbo\":false,\"extras\":[],\"modHood\":-1,\"modBrakes\":-1,\"modDoorSpeaker\":-1,\"tankHealth\":999.8,\"modSpoilers\":-1,\"modTrunk\":-1,\"modExhaust\":-1,\"modSideSkirt\":-1,\"modAirFilter\":-1,\"modStruts\":-1,\"modPlateHolder\":-1,\"modOrnaments\":-1,\"modTrimB\":-1}', 'car', 1);

-- --------------------------------------------------------

--
-- Table structure for table `garagekeys`
--

CREATE TABLE `garagekeys` (
  `identifier` varchar(64) NOT NULL DEFAULT '',
  `keys` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `gksphone_app_chat`
--

CREATE TABLE `gksphone_app_chat` (
  `id` int(11) NOT NULL,
  `channel` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gksphone_bank_transfer`
--

CREATE TABLE `gksphone_bank_transfer` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `identifier` longtext DEFAULT NULL,
  `price` longtext NOT NULL,
  `name` longtext NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `gksphone_blockednumber`
--

CREATE TABLE `gksphone_blockednumber` (
  `id` int(11) NOT NULL,
  `identifier` longtext NOT NULL,
  `hex` longtext NOT NULL,
  `number` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `gksphone_calls`
--

CREATE TABLE `gksphone_calls` (
  `id` int(11) NOT NULL,
  `owner` longtext NOT NULL COMMENT 'Num tel proprio',
  `num` longtext NOT NULL COMMENT 'Num reférence du contact',
  `incoming` int(11) NOT NULL COMMENT 'Défini si on est à l''origine de l''appels',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `accepts` int(11) NOT NULL COMMENT 'Appels accepter ou pas'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gksphone_gallery`
--

CREATE TABLE `gksphone_gallery` (
  `id` int(11) NOT NULL,
  `hex` longtext NOT NULL,
  `image` longtext NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `gksphone_gotur`
--

CREATE TABLE `gksphone_gotur` (
  `id` int(11) NOT NULL,
  `label` longtext NOT NULL,
  `price` int(11) DEFAULT 0,
  `count` int(11) NOT NULL,
  `item` longtext NOT NULL,
  `kapat` varchar(50) DEFAULT 'false',
  `adet` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `gksphone_gps`
--

CREATE TABLE `gksphone_gps` (
  `id` int(11) NOT NULL,
  `hex` longtext NOT NULL,
  `nott` longtext DEFAULT NULL,
  `gps` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `gksphone_group_message`
--

CREATE TABLE `gksphone_group_message` (
  `id` int(11) NOT NULL,
  `groupid` int(11) NOT NULL,
  `owner` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `ownerphone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `groupname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `messages` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contacts` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gksphone_insto_accounts`
--

CREATE TABLE `gksphone_insto_accounts` (
  `id` int(11) NOT NULL,
  `forename` longtext COLLATE utf8mb4_bin NOT NULL,
  `surname` longtext COLLATE utf8mb4_bin NOT NULL,
  `username` varchar(250) CHARACTER SET utf8 NOT NULL,
  `password` longtext COLLATE utf8mb4_bin NOT NULL,
  `avatar_url` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `takip` longtext COLLATE utf8mb4_bin DEFAULT '[]'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `gksphone_insto_instas`
--

CREATE TABLE `gksphone_insto_instas` (
  `id` int(11) NOT NULL,
  `authorId` int(11) NOT NULL,
  `realUser` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `filters` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gksphone_insto_likes`
--

CREATE TABLE `gksphone_insto_likes` (
  `id` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `inapId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `gksphone_insto_story`
--

CREATE TABLE `gksphone_insto_story` (
  `id` int(11) NOT NULL,
  `authorId` int(11) NOT NULL,
  `realUser` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stories` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `isRead` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gksphone_job_message`
--

CREATE TABLE `gksphone_job_message` (
  `id` int(11) NOT NULL,
  `name` longtext NOT NULL,
  `number` varchar(50) NOT NULL,
  `message` longtext NOT NULL,
  `photo` longtext DEFAULT NULL,
  `gps` varchar(255) NOT NULL,
  `owner` int(11) NOT NULL DEFAULT 0,
  `jobm` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `gksphone_lapraces`
--

CREATE TABLE `gksphone_lapraces` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `checkpoints` text DEFAULT NULL,
  `records` text DEFAULT NULL,
  `creator` longtext DEFAULT NULL,
  `distance` int(11) DEFAULT NULL,
  `raceid` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `gksphone_mails`
--

CREATE TABLE `gksphone_mails` (
  `id` int(11) NOT NULL,
  `citizenid` varchar(255) NOT NULL DEFAULT '0',
  `sender` varchar(255) NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '0',
  `image` text NOT NULL,
  `message` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gksphone_messages`
--

CREATE TABLE `gksphone_messages` (
  `id` int(11) NOT NULL,
  `transmitter` varchar(50) NOT NULL,
  `receiver` varchar(50) NOT NULL,
  `message` longtext NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `isRead` int(11) NOT NULL DEFAULT 0,
  `owner` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gksphone_messages_group`
--

CREATE TABLE `gksphone_messages_group` (
  `id` int(11) NOT NULL,
  `owner` longtext NOT NULL,
  `ownerphone` varchar(50) NOT NULL,
  `groupname` varchar(255) NOT NULL,
  `gimage` longtext NOT NULL,
  `contacts` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gksphone_news`
--

CREATE TABLE `gksphone_news` (
  `id` int(11) NOT NULL,
  `hex` longtext DEFAULT NULL,
  `haber` longtext DEFAULT NULL,
  `baslik` longtext DEFAULT NULL,
  `resim` longtext DEFAULT NULL,
  `video` longtext DEFAULT NULL,
  `zaman` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gksphone_settings`
--

CREATE TABLE `gksphone_settings` (
  `id` int(11) NOT NULL,
  `identifier` longtext NOT NULL,
  `crypto` longtext NOT NULL DEFAULT '{}',
  `phone_number` varchar(50) DEFAULT NULL,
  `avatar_url` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gksphone_settings`
--

INSERT INTO `gksphone_settings` (`id`, `identifier`, `crypto`, `phone_number`, `avatar_url`) VALUES
(1, 'fa1ac7043ecf6d547b685250975e7609c11fbf62', '{}', '4385437', NULL),
(2, '0000132b7899a', '{}', '6759857', NULL),
(3, '9f211505b26afbba9a74485826218356b3f4d1f4', '{}', '1087341', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gksphone_tinderacc`
--

CREATE TABLE `gksphone_tinderacc` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `passaword` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `identifier` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gksphone_tindermatch`
--

CREATE TABLE `gksphone_tindermatch` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `friend_id` int(11) NOT NULL DEFAULT 0,
  `is_match` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gksphone_tindermessage`
--

CREATE TABLE `gksphone_tindermessage` (
  `id` int(11) NOT NULL,
  `message` text NOT NULL,
  `tinderes` text NOT NULL,
  `owner` int(11) NOT NULL DEFAULT 0,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gksphone_twitter_accounts`
--

CREATE TABLE `gksphone_twitter_accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `password` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `avatar_url` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `profilavatar` longtext COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `gksphone_twitter_likes`
--

CREATE TABLE `gksphone_twitter_likes` (
  `id` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `tweetId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `gksphone_twitter_tweets`
--

CREATE TABLE `gksphone_twitter_tweets` (
  `id` int(11) NOT NULL,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gksphone_users_contacts`
--

CREATE TABLE `gksphone_users_contacts` (
  `id` int(11) NOT NULL,
  `identifier` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `number` varchar(30) CHARACTER SET utf8mb4 DEFAULT NULL,
  `display` longtext CHARACTER SET utf8mb4 DEFAULT '-1',
  `avatar` longtext NOT NULL DEFAULT 'https://cdn.iconscout.com/icon/free/png-256/avatar-370-456322.png'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gksphone_vehicle_sales`
--

CREATE TABLE `gksphone_vehicle_sales` (
  `id` int(11) NOT NULL,
  `owner` longtext NOT NULL,
  `ownerphone` varchar(255) NOT NULL,
  `plate` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `image` longtext NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gksphone_yellow`
--

CREATE TABLE `gksphone_yellow` (
  `id` int(11) NOT NULL,
  `phone_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstname` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `impound_garage`
--

CREATE TABLE `impound_garage` (
  `garage` varchar(64) NOT NULL DEFAULT '',
  `data` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `impound_garage`
--

INSERT INTO `impound_garage` (`garage`, `data`) VALUES
('impound_davis', '[]'),
('impound_mrpd', '{\"CM 159\":{\"date\":1643379549,\"impounder\":\"Ali Ccr\",\"duration\":\"3\",\"fine\":\"50000\",\"reason\":\"\"}}'),
('impound_vespucci', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `inside_jobs`
--

CREATE TABLE `inside_jobs` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) CHARACTER SET latin1 NOT NULL,
  `experience` int(11) NOT NULL,
  `job` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inside_jobs`
--

INSERT INTO `inside_jobs` (`id`, `identifier`, `experience`, `job`) VALUES
(0, 'fa1ac7043ecf6d547b685250975e7609c11fbf62', 0, 'builder'),
(0, '0000132b7899a', 0, 'builder'),
(0, '9f211505b26afbba9a74485826218356b3f4d1f4', 0, 'builder');

-- --------------------------------------------------------

--
-- Table structure for table `inventories`
--

CREATE TABLE `inventories` (
  `id` bigint(20) NOT NULL,
  `identifier` text DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `data` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inventories`
--

INSERT INTO `inventories` (`id`, `identifier`, `type`, `data`) VALUES
(1, 'WWI 418 ', 'glovebox', '[]'),
(2, 'WWI 418', 'trunk', '[]'),
(3, 'ALI', 'glovebox', '[]'),
(4, 'RIU 441', 'glovebox', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `weight` int(11) NOT NULL DEFAULT 1,
  `rare` tinyint(4) NOT NULL DEFAULT 0,
  `can_remove` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
('accesscard', 'Access Card', 10, 0, 1),
('advrepairkit', 'Adv Repair Kit', 8, 0, 1),
('aluminium', 'Aluminium', 50, 0, 1),
('amfetamin', 'Amfetamin (10G)', 1, 0, 1),
('applepie', 'Applepie', 1, 0, 1),
('applewatch', 'Applewatch', 2, 0, 1),
('art', 'Art', 1, 0, 1),
('bag', 'Bag', 2, 0, 1),
('bag_cocaine', 'Cocaine Bag (10G)', 1, 0, 1),
('banana', 'Banana', 1, 0, 1),
('bandage', 'Bandage', 2, 0, 1),
('beef', 'Beef', 1, 0, 1),
('binoculars', 'Binoculars', 1, 0, 1),
('biogasmask', 'bioGasMask', 1, 0, 1),
('blackphone', 'Blackphone', 1, 0, 1),
('blowpipe', 'blowpipe', 2, 0, 1),
('blowtorch', 'Blowtorch', 1, 0, 1),
('blue_phone', 'blue phone', 1, 0, 1),
('box', 'Surprise Box', 1, 0, 1),
('boxbig', 'Ammo Box Big', 1, 0, 1),
('bread', 'Bread', 1, 0, 1),
('bulletproof', 'Bullet-Proof Vest', 1, 0, 1),
('c4', 'C4', 1, 0, 1),
('c4_bomb', 'C4', 2, 0, 1),
('camera', 'Camera', 2, 0, 1),
('carjack', 'Car Jack', 3, 0, 1),
('carokit', 'Car kit', 2, 0, 1),
('carotool', 'body kit', 2, 0, 1),
('car_door', 'Car Door', 3, 0, 1),
('car_hood', 'Car Hood', 3, 0, 1),
('car_trunk', 'Car Trunk', 3, 0, 1),
('car_wheel', 'Car Wheel', 3, 0, 1),
('chocolat', 'Chocolat', 1, 0, 1),
('cleankit', 'Cleaning Kit', 1, 0, 1),
('clip', 'Ammo Box', 1, 0, 1),
('clock', 'clock', 2, 0, 1),
('cocacola', 'Cocacola', 1, 0, 1),
('coffeemaker', 'Coffee Maker', 1, 0, 1),
('coke', 'Coca leaf', 1, 0, 1),
('coke_pooch', 'Coke', 2, 0, 1),
('copper', 'Copper', 50, 0, 1),
('cupcake', 'Cupcake', 1, 0, 1),
('cutter', 'Cutter', 2, 0, 1),
('darknet', 'Dark Net', 1, 0, 1),
('defib', 'Defib', 1, 0, 1),
('diamond', 'Diamond', 2, 0, 1),
('dolphin', 'Dolphin', 3, 0, 1),
('drill', 'Drill', 2, 0, 1),
('electric_scrap', 'Electric Scrap', 50, 0, 1),
('firework', 'Firework', 1, 0, 1),
('firstaidkit', 'First Aid Kit', 1, 0, 1),
('fish', 'Fish', 1, 0, 1),
('fishbait', 'Fish Bait', 2, 0, 1),
('fishingrod', 'Fishing Rod', 2, 0, 1),
('fixkit', 'Fix kit', 2, 0, 1),
('fixtool', 'Fix Tool', 5, 0, 1),
('flour', 'Flour', 1, 0, 1),
('flowerpot', 'Flowerpot', 2, 0, 1),
('gasmask', 'GasMask', 1, 0, 1),
('gas_bomb', 'Gas Bomb', 1, 0, 1),
('gazbottle', 'Gazbottle', 2, 0, 1),
('glass', 'Glass', 50, 0, 1),
('gold', 'Gold', 2, 0, 1),
('goldbar', 'Gold Bar', 250, 0, 1),
('goldnecklace', 'Gold Necklace', 150, 0, 1),
('goldwatch', 'Gold Watch', 2500, 0, 1),
('green_keycard', 'Gruppe Keycard', 1, 0, 1),
('green_phone', 'green phone', 1, 0, 1),
('hackerDevice', 'Hacker Device', 10, 0, 1),
('hackingphone', 'Blackberry', 1, 0, 1),
('hack_usb', 'HackUSB', 2, 0, 1),
('hamburger', 'Hamburger', 1, 0, 1),
('hammerwirecutter', 'Hammer And Wire Cutter', 10, 0, 1),
('handcuffkey', 'Handcuff Keys', 1, 0, 1),
('handcuffs', 'Handcuffs', 1, 0, 1),
('humane_chemicalsH', 'Highly Radioactive Chemicals', 1, 0, 1),
('humane_chemicalsM', 'Radioactive Chemicals', 1, 0, 1),
('humane_chemicalsR', 'Chemicals', 1, 0, 1),
('humane_lockpick', 'HL Lockpick', 5, 0, 1),
('humane_mask', 'Biohazard Mask', 1, 0, 1),
('indica_weed', 'Indica Weed (G)', 1, 0, 1),
('iphone13', 'Iphone13', 1, 0, 1),
('jewels', 'Jewels', 1, 0, 1),
('joint', 'Joint', 1, 0, 1),
('key1', 'key1', 1, 0, 1),
('killerwhale', 'Killer Whale', 2, 0, 1),
('laptop', 'Laptop', 2, 0, 1),
('laptop_h', 'Hacker Laptop', 1, 0, 1),
('lockpick', 'Lockpick', 1, 0, 1),
('medikit', 'Medikit', 2, 0, 1),
('meth', 'Chemicals', 1, 0, 1),
('meth_pooch', 'Meth', 1, 0, 1),
('microwave', 'Microwave', 1, 0, 1),
('moneywash_card', 'ID Card 239587243', 1, 0, 1),
('necklace', 'Necklace', 1, 0, 1),
('opium', 'Opiate', 1, 0, 1),
('opium_pooch', 'Opium', 1, 0, 1),
('oxygenmask', 'Oxygen Mask', 1, 0, 1),
('oxygen_mask', 'Oxygen Mask', 1, 0, 1),
('paintinge', 'Art', 1, 0, 1),
('paintingf', 'Art', 1, 0, 1),
('paintingh', 'Art', 1, 0, 1),
('paintingi', 'Art', 1, 0, 1),
('paintingj', 'Art', 1, 0, 1),
('phone', 'phone', 1, 0, 1),
('pizza', 'Pizza', 1, 0, 1),
('plastic', 'Plastic', 50, 0, 1),
('pliers', 'Pliers', 1, 0, 1),
('pouch', 'Pouch', 1, 0, 1),
('purple_weed', 'Purple Haze Weed (G)', 1, 0, 1),
('raw', 'RAW Rolling Papers', 1, 0, 1),
('redcard', 'RedCard', 1, 0, 1),
('repairkit', 'Repair Kit', 1, 0, 1),
('ring', 'Ring', 2, 0, 1),
('rolex', 'Rolex', 1, 0, 1),
('rubber', 'Rubber', 50, 0, 1),
('sativa_weed', 'Sativa Weed (G)', 1, 0, 1),
('scrap_metal', 'Scrap Metal', 50, 0, 1),
('shark', 'Shark', 1, 0, 1),
('sharkhammer', 'Hammerhead Shark', 3, 0, 1),
('sharktiger', 'Tiger Shark', 3, 0, 1),
('soda', 'Soda', 1, 0, 1),
('statue', 'Statue', 1, 0, 1),
('steel', 'Steel', 50, 0, 1),
('stingray', 'Stingray', 5, 0, 1),
('telescope', 'Telescope', 1, 0, 1),
('thermite', 'Thermite', 1, 0, 1),
('thermite_bomb', 'Thermite', 2, 0, 1),
('tirekit', 'Tire Kit', 1, 0, 1),
('trapphone', 'Trap Phone', 1, 0, 1),
('turtle', 'Sea Turtle', 3, 0, 1),
('turtlebait', 'Turtle Bait', 10, 0, 1),
('tv', 'TV', 1, 0, 1),
('vape', 'Vape', 1, 0, 1),
('vehgps', 'Vehicle GPS', 1, 0, 1),
('videorecord', 'Videorecord', 1, 0, 1),
('watch', 'Watch', 2, 0, 1),
('water', 'Water', 1, 0, 1),
('weakit', 'Weapon Kit', 1, 0, 1),
('weed', 'Weed', 1, 0, 1),
('weed_indica', 'Indica Weed Plant', 1, 0, 1),
('weed_in_pooch', 'Weed in pouch', 1, 0, 1),
('weed_pooch', 'Weed', 2, 0, 1),
('weed_purple', 'Purple Haze Weed Plant', 1, 0, 1),
('weed_sativa', 'Sativa Weed Plant', 1, 0, 1),
('wheel', 'Wheel', 5, 0, 1),
('white_phone', 'white phone', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `name` varchar(50) NOT NULL,
  `label` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`name`, `label`) VALUES
('admin', 'Admin'),
('ambulance', 'Medic'),
('barber', 'Barbershop'),
('bcso', 'Bcso'),
('delivery', 'Delivery'),
('farmer', 'Farmer'),
('gardener', 'Gardener'),
('gotur', 'gotur'),
('lawyer', 'vakil'),
('mechanic', 'Mechanic'),
('offambulance', 'Off-Duty'),
('offmechanic', 'Off-Duty'),
('offpolice', 'Off-Duty'),
('offsheriff', 'Off-Duty'),
('offtaxi', 'Off-Duty'),
('police', 'LSPD'),
('secretgang', 'SecretGang'),
('sheriff', 'Sheriff'),
('specialmechanic', 'Special Mechanic'),
('suzukigang', 'SuzukiGang'),
('taxi', 'Taxi'),
('trucker', 'Trucker'),
('unemployed', 'bikar');

-- --------------------------------------------------------

--
-- Table structure for table `job_grades`
--

CREATE TABLE `job_grades` (
  `id` int(11) NOT NULL,
  `job_name` varchar(50) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `label` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext NOT NULL,
  `skin_female` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job_grades`
--

INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(1, 'unemployed', 0, 'unemployed', 'Unemployed', 8000, '{}', '{}'),
(2, 'ambulance', 0, 'ambulance', 'Ambulancier', 200, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(3, 'ambulance', 1, 'doctor', 'Medecin', 50000, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(4, 'ambulance', 2, 'chief_doctor', 'Medecin-chef', 50000, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(5, 'ambulance', 3, 'boss', 'Chirurgien', 50000, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(6, 'police', 0, 'recruit', 'Recrue', 70000, '{}', '{}'),
(7, 'police', 1, 'officer', 'Officier', 70000, '{}', '{}'),
(8, 'police', 2, 'sergeant', 'Sergent', 70000, '{}', '{}'),
(9, 'police', 3, 'lieutenant', 'Lieutenant', 70000, '{}', '{}'),
(10, 'police', 4, 'boss', 'Commandant', 90000, '{}', '{}'),
(23, 'mechanic', 0, 'recrue', 'Recrue', 50000, '{}', '{}'),
(24, 'mechanic', 1, 'novice', 'Novice', 50000, '{}', '{}'),
(25, 'mechanic', 2, 'experimente', 'Experimente', 50000, '{}', '{}'),
(26, 'mechanic', 3, 'chief', 'chief', 50000, '{}', '{}'),
(27, 'mechanic', 4, 'boss', 'boss', 50000, '{}', '{}'),
(28, 'sheriff', 0, 'recruit', 'Recrue', 80000, '{}', '{}'),
(29, 'sheriff', 1, 'officer', 'Deputy', 80000, '{}', '{}'),
(30, 'sheriff', 2, 'sergeant', 'Major', 80000, '{}', '{}'),
(31, 'sheriff', 4, 'lieutenant', 'Sheriff-Adjoint', 80000, '{}', '{}'),
(32, 'sheriff', 5, 'boss', 'Sheriff', 80000, '{}', '{}'),
(33, 'sheriff', 0, 'recruit', 'Recrue', 80000, '{}', '{}'),
(34, 'sheriff', 1, 'officer', 'Deputy', 80000, '{}', '{}'),
(35, 'sheriff', 2, 'sergeant', 'Major', 80000, '{}', '{}'),
(36, 'sheriff', 4, 'lieutenant', 'Sheriff-Adjoint', 80000, '{}', '{}'),
(37, 'sheriff', 5, 'boss', 'Sheriff', 80000, '{}', '{}'),
(38, 'barber', 0, 'employe', 'Barber', 250, '{}', '{}'),
(39, 'barber', 1, 'boss', 'Boss', 250, '{}', '{}'),
(42, 'taxi', 0, 'recrue', 'Recrue', 12, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(43, 'taxi', 1, 'novice', 'Novice', 24, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(44, 'taxi', 2, 'experimente', 'Experimente', 36, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(45, 'taxi', 3, 'uber', 'Uber', 48, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(46, 'taxi', 4, 'boss', 'Patron', 0, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":29,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":1,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":4,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(47, 'trucker', 0, 'employe', 'Employee', 200, '{}', '{}'),
(586, 'gardener', 0, 'gardener', 'Worker', 250, '{}', '{}'),
(888, 'farmer', 1, 'farmer', 'Farmer', 250, '{}', '{}'),
(889, 'delivery', 0, 'employee', 'Employee', 0, '{}', '{}'),
(890, 'bcso', 0, 'recruit', 'Recrue', 20, '{}', '{}'),
(891, 'bcso', 1, 'officer', 'Officier', 40, '{}', '{}'),
(892, 'bcso', 2, 'sergeant', 'Sergent', 60, '{}', '{}'),
(893, 'bcso', 3, 'lieutenant', 'Lieutenant', 85, '{}', '{}'),
(894, 'bcso', 4, 'boss', 'Commandant', 100, '{}', '{}'),
(895, 'lawyer', 0, 'namayande', 'namayande', 1400, '{}', '{}'),
(896, 'specialmechanic', 0, 'specialmechanic', 'vip', 60, '{}', '{}'),
(897, 'secretgang', 0, 'vip', 'vip', 60, '{}', '{}'),
(898, 'suzukigang', 0, 'suzukigang', 'vip', 60, '{}', '{}'),
(899, 'gotur', 0, 'recrue', 'Recrue', 12, '{}', '{}'),
(900, 'gotur', 1, 'boss', 'Patron', 0, '{}', '{}'),
(901, 'lawyer', 0, 'recruit', 'Daneshjue hoghugh', 1400, '{}', '{}'),
(902, 'lawyer', 1, 'sergeant', 'Karshenas', 1800, '{}', '{}'),
(903, 'lawyer', 2, 'sergeant', 'Karshenase jenayi', 2000, '{}', '{}'),
(904, 'lawyer', 3, 'lieutenant', 'Karshenase nezami', 2400, '{}', '{}'),
(905, 'lawyer', 4, 'lieutenant', 'Masoole vekalat', 2800, '{}', '{}'),
(906, 'lawyer', 5, 'boss', 'modir hoghughi', 3500, '{}', '{}'),
(907, 'offpolice', 0, 'recruit', 'Recruit', 12, '{}', '{}'),
(908, 'offpolice', 1, 'officer', 'Officer', 24, '{}', '{}'),
(909, 'offpolice', 2, 'sergeant', 'Sergeant', 36, '{}', '{}'),
(910, 'offpolice', 3, 'lieutenant', 'Lieutenant', 48, '{}', '{}'),
(911, 'offpolice', 4, 'boss', 'Boss', 0, '{}', '{}'),
(912, 'offambulance', 0, 'ambulance', 'Ambulance', 12, '{}', '{}'),
(913, 'offambulance', 1, 'doctor', 'Doctor', 24, '{}', '{}'),
(914, 'offambulance', 2, 'chief_doctor', 'Chef', 36, '{}', '{}'),
(915, 'offambulance', 3, 'boss', 'Boss', 48, '{}', '{}'),
(916, 'offmechanic', 0, 'recrue', 'Recrue', 12, '{}', '{}'),
(917, 'offmechanic', 1, 'novice', 'Novice', 24, '{}', '{}'),
(918, 'offmechanic', 2, 'experimente', 'Experimente', 36, '{}', '{}'),
(919, 'offmechanic', 3, 'chief', 'Chief', 48, '{}', '{}'),
(920, 'offmechanic', 4, 'boss', 'Boss', 0, '{}', '{}'),
(921, 'offsheriff', 0, 'recruit', 'Recrue', 12, '{}', '{}'),
(922, 'offsheriff', 1, 'officer', 'Deputy', 24, '{}', '{}'),
(923, 'offsheriff', 2, 'sergeant', 'Major', 36, '{}', '{}'),
(924, 'offsheriff', 4, 'lieutenant', 'Sheriff-Adjoint', 0, '{}', '{}'),
(925, 'offsheriff', 5, 'boss', 'Boss', 0, '{}', '{}'),
(926, 'offtaxi', 0, 'recrue', 'Recrue', 12, '{}', '{}'),
(927, 'offtaxi', 1, 'novice', 'Novice', 24, '{}', '{}'),
(928, 'offtaxi', 2, 'experimente', 'Experimente', 36, '{}', '{}'),
(929, 'offtaxi', 3, 'uber', 'Uber', 48, '{}', '{}'),
(930, 'offtaxi', 4, 'boss', 'Patron', 56, '{}', '{}'),
(931, 'admin', 0, 'low admin', 'NoRP', 250, '{}', '{}'),
(932, 'admin', 1, 'meduim admin', 'Meduim admin', 500, '{}', '{}'),
(933, 'admin', 2, 'high admin', 'High admin', 750, '{}', '{}'),
(934, 'admin', 3, 'boss', 'Owner', 1000, '{}', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `licenses`
--

CREATE TABLE `licenses` (
  `type` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `licenses`
--

INSERT INTO `licenses` (`type`, `label`) VALUES
('dmv', 'DMV'),
('drive', 'Mojavez mashin'),
('drive_bike', 'Mojavez motor'),
('drive_truck', 'Mojavez kamiyun'),
('firstname', 'Mojavez taghir esm'),
('lastname', 'Mojavez taghir namekhanevadegi'),
('weapon', 'Weapon license');

-- --------------------------------------------------------

--
-- Table structure for table `owned_vehicles`
--

CREATE TABLE `owned_vehicles` (
  `owner` varchar(40) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `vehicle` longtext DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'car',
  `job` varchar(20) DEFAULT NULL,
  `stored` tinyint(4) NOT NULL DEFAULT 0,
  `garage_id` varchar(32) NOT NULL DEFAULT 'A',
  `impound` int(1) NOT NULL DEFAULT 0,
  `park_coord` longtext DEFAULT NULL,
  `isparked` int(1) DEFAULT 0,
  `garage_type` varchar(255) DEFAULT NULL,
  `health` longtext NOT NULL DEFAULT '[]',
  `carseller` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `owned_vehicles`
--

INSERT INTO `owned_vehicles` (`owner`, `plate`, `vehicle`, `type`, `job`, `stored`, `garage_id`, `impound`, `park_coord`, `isparked`, `garage_type`, `health`, `carseller`) VALUES
('fa1ac7043ecf6d547b685250975e7609c11fbf62', 'ALI', '{\"neonEnabled\":[false,false,false,false],\"modSuspension\":-1,\"deformation\":\"[]\",\"modGrille\":-1,\"modEngine\":-1,\"color2\":111,\"modHorns\":-1,\"modBrakes\":-1,\"wheels\":7,\"dirtLevel\":5.0,\"rgb2\":[240,240,240],\"tyreSmokeColor\":[255,255,255],\"modVanityPlate\":-1,\"modRoof\":-1,\"modHood\":-1,\"modSeats\":-1,\"modTurbo\":false,\"modTank\":-1,\"modSpeakers\":-1,\"modSmokeEnabled\":false,\"modPlateHolder\":-1,\"model\":418536135,\"modArmor\":-1,\"modLivery\":-1,\"vehicle_window\":[1,1,false,false,false,false,1,false],\"modXenon\":false,\"pearlescentColor\":44,\"modAPlate\":-1,\"drift_tire\":false,\"modTransmission\":-1,\"modSpoilers\":-1,\"modAirFilter\":-1,\"modHydrolic\":-1,\"modTrunk\":-1,\"custom_engine\":\"Default\",\"modDial\":-1,\"modFrame\":-1,\"modRightFender\":-1,\"modSteeringWheel\":-1,\"rgb\":[140,4,4],\"modFrontWheels\":-1,\"modStruts\":-1,\"color1\":44,\"modShifterLeavers\":-1,\"windowTint\":-1,\"engineHealth\":1000.0,\"modTrimA\":-1,\"neonColor\":[255,0,255],\"plateIndex\":3,\"modDashboard\":-1,\"wheel_tires\":[false,false,false,false,false,false,false],\"plate\":\"  ALI   \",\"extras\":{\"1\":false},\"modWindows\":-1,\"fuelLevel\":58.4,\"bodyHealth\":998.0,\"modFender\":-1,\"custom_turbo\":\"Default\",\"modDoorSpeaker\":-1,\"tankHealth\":999.8,\"modSideSkirt\":-1,\"modAerials\":-1,\"modFrontBumper\":-1,\"custom_tire\":\"Default\",\"modOrnaments\":-1,\"modRearBumper\":-1,\"modBackWheels\":-1,\"wheelColor\":156,\"modArchCover\":-1,\"modExhaust\":-1,\"xenonColor\":255,\"modEngineBlock\":-1,\"vehicle_doors\":[false,false,false,false,false,false],\"modTrimB\":-1}', 'car', 'civ', 1, 'A', 0, NULL, 0, NULL, '[]', 0),
('fa1ac7043ecf6d547b685250975e7609c11fbf62', 'RIU 441', '{\"modSteeringWheel\":-1,\"fuelLevel\":61.9,\"rgb\":[38,3,11],\"modEngineBlock\":-1,\"modSpoilers\":-1,\"modGrille\":-1,\"modExhaust\":-1,\"neonColor\":[255,0,255],\"plateIndex\":0,\"color1\":34,\"xenonColor\":255,\"modTank\":-1,\"wheel_tires\":[false,false,false,false,false,false,false],\"modRightFender\":-1,\"windowTint\":-1,\"custom_turbo\":\"Default\",\"modXenon\":false,\"modTrimA\":-1,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"plate\":\"RIU 441 \",\"modHydrolic\":-1,\"modAirFilter\":-1,\"modPlateHolder\":-1,\"modDoorSpeaker\":-1,\"modLivery\":-1,\"modSuspension\":-1,\"modFender\":-1,\"vehicle_doors\":[false,false,false,false,false,false],\"modTrunk\":-1,\"modArchCover\":-1,\"modWindows\":-1,\"modDashboard\":-1,\"custom_engine\":\"Default\",\"modSideSkirt\":-1,\"wheelColor\":1,\"modArmor\":-1,\"modShifterLeavers\":-1,\"modVanityPlate\":-1,\"bodyHealth\":997.3,\"modSmokeEnabled\":false,\"modHorns\":-1,\"wheels\":7,\"deformation\":\"[]\",\"tankHealth\":999.7,\"modFrontWheels\":-1,\"modBrakes\":-1,\"modTrimB\":-1,\"model\":1392481335,\"modFrontBumper\":-1,\"modTransmission\":-1,\"pearlescentColor\":158,\"rgb2\":[15,15,15],\"dirtLevel\":8.0,\"modRoof\":-1,\"custom_tire\":\"Default\",\"drift_tire\":false,\"extras\":[],\"modAerials\":-1,\"modAPlate\":-1,\"engineHealth\":1000.0,\"modRearBumper\":-1,\"modSeats\":-1,\"modEngine\":-1,\"modDial\":-1,\"modHood\":-1,\"modTurbo\":false,\"neonEnabled\":[false,false,false,false],\"modStruts\":-1,\"vehicle_window\":[1,false,1,1,false,false,1,1],\"color2\":1,\"modSpeakers\":-1,\"modBackWheels\":-1,\"modOrnaments\":-1}', 'car', 'civ', 1, 'A', 0, NULL, 0, NULL, '[]', 0),
('fa1ac7043ecf6d547b685250975e7609c11fbf62', 'SSM 930', '{\"modSteeringWheel\":-1,\"fuelLevel\":62.9,\"rgb\":[15,15,15],\"modEngineBlock\":-1,\"modSpoilers\":-1,\"modGrille\":-1,\"modExhaust\":-1,\"neonColor\":[255,0,255],\"plateIndex\":0,\"color1\":1,\"xenonColor\":255,\"modTank\":-1,\"wheel_tires\":[false,false,false,false,false,false,false],\"modRightFender\":-1,\"windowTint\":-1,\"custom_turbo\":\"Default\",\"modXenon\":false,\"modTrimA\":-1,\"modFrame\":-1,\"tyreSmokeColor\":[255,255,255],\"plate\":\"SSM 930\",\"modHydrolic\":-1,\"modAirFilter\":-1,\"modPlateHolder\":-1,\"modDoorSpeaker\":-1,\"modLivery\":-1,\"modSuspension\":-1,\"modFender\":-1,\"vehicle_doors\":[false,false,false,false,false,false],\"modTrunk\":-1,\"modArchCover\":-1,\"modWindows\":-1,\"modDashboard\":-1,\"custom_engine\":\"Default\",\"modSideSkirt\":-1,\"wheelColor\":156,\"modArmor\":-1,\"modShifterLeavers\":-1,\"modVanityPlate\":-1,\"bodyHealth\":1000.0,\"modSmokeEnabled\":false,\"modHorns\":-1,\"wheels\":0,\"deformation\":\"[]\",\"tankHealth\":1000.0,\"modFrontWheels\":-1,\"modBrakes\":-1,\"modTrimB\":-1,\"model\":-1041692462,\"modFrontBumper\":-1,\"modTransmission\":-1,\"pearlescentColor\":7,\"rgb2\":[8,8,8],\"dirtLevel\":0.1,\"modRoof\":-1,\"custom_tire\":\"Default\",\"drift_tire\":false,\"extras\":{\"10\":true,\"2\":false,\"1\":true},\"modAerials\":-1,\"modAPlate\":-1,\"engineHealth\":1000.0,\"modRearBumper\":-1,\"modSeats\":-1,\"modEngine\":-1,\"modDial\":-1,\"modHood\":-1,\"modTurbo\":false,\"neonEnabled\":[false,false,false,false],\"modStruts\":-1,\"vehicle_window\":[false,false,false,false,false,false,1,false],\"color2\":0,\"modSpeakers\":-1,\"modBackWheels\":-1,\"modOrnaments\":-1}', 'car', '0', 1, 'A', 0, NULL, 0, NULL, '[]', 0),
('fa1ac7043ecf6d547b685250975e7609c11fbf62', 'WWI 418', '{\"fuelLevel\":72.5,\"modWindows\":-1,\"modTrimB\":-1,\"modPlateHolder\":-1,\"drift_tire\":false,\"modDoorSpeaker\":-1,\"windowTint\":1,\"modStruts\":-1,\"model\":-789894171,\"modTank\":-1,\"modFrame\":-1,\"modBackWheels\":-1,\"custom_turbo\":\"Default\",\"neonEnabled\":[1,1,1,1],\"modRightFender\":-1,\"modArmor\":-1,\"modSideSkirt\":-1,\"modGrille\":-1,\"modSteeringWheel\":-1,\"modDial\":-1,\"modVanityPlate\":-1,\"modLivery\":-1,\"modSpoilers\":-1,\"pearlescentColor\":111,\"neonColor\":[159,231,88],\"rgb\":[46,241,168],\"plate\":\"WWI 418 \",\"modAirFilter\":-1,\"modArchCover\":-1,\"modHorns\":21,\"modShifterLeavers\":-1,\"engineHealth\":1000.0,\"modSpeakers\":-1,\"custom_tire\":\"Default\",\"modTurbo\":false,\"deformation\":\"[[{\\\"x\\\":0.0,\\\"y\\\":2.62653064727783,\\\"z\\\":0.0},0.00483033293858],[{\\\"x\\\":-0.54824489355087,\\\"y\\\":2.62653064727783,\\\"z\\\":0.0},0.00790656171739],[{\\\"x\\\":-0.54824489355087,\\\"y\\\":1.96989786624908,\\\"z\\\":0.0},0.00398389017209],[{\\\"x\\\":-0.54824489355087,\\\"y\\\":2.62653064727783,\\\"z\\\":-0.96033972501754},0.00434196228161]]\",\"modFrontWheels\":13,\"modSmokeEnabled\":1,\"modTransmission\":2,\"custom_engine\":\"Default\",\"vehicle_doors\":[false,false,false,false,false,false],\"modEngine\":-1,\"modDashboard\":-1,\"modTrimA\":-1,\"modBrakes\":2,\"modAerials\":-1,\"modFender\":-1,\"dirtLevel\":1.0,\"rgb2\":[90,94,102],\"modFrontBumper\":-1,\"modRearBumper\":-1,\"extras\":{\"12\":true,\"11\":true,\"10\":true},\"modXenon\":1,\"wheelColor\":156,\"modHood\":-1,\"color2\":4,\"bodyHealth\":999.4,\"wheel_tires\":[false,false,false,false,false,false,false],\"modSuspension\":-1,\"modSeats\":-1,\"plateIndex\":0,\"color1\":4,\"modExhaust\":-1,\"modRoof\":-1,\"tankHealth\":999.9,\"xenonColor\":8,\"modTrunk\":-1,\"tyreSmokeColor\":[189,225,198],\"modOrnaments\":-1,\"modAPlate\":-1,\"vehicle_window\":[1,1,1,1,1,1,1,1],\"modHydrolic\":-1,\"modEngineBlock\":-1,\"wheels\":3}', 'car', 'civ', 1, 'B', 0, NULL, 0, NULL, '[]', 0),
('fa1ac7043ecf6d547b685250975e7609c11fbf62', 'XVC 764', '{\"modRoof\":-1,\"modTrunk\":-1,\"rgb\":[230,255,226],\"modBrakes\":-1,\"modTrimB\":-1,\"model\":579912970,\"modTrimA\":-1,\"bodyHealth\":1000.0,\"modEngineBlock\":-1,\"plateIndex\":0,\"tankHealth\":1000.0,\"modSmokeEnabled\":false,\"modGrille\":-1,\"tyreSmokeColor\":[255,255,255],\"wheels\":5,\"modSpeakers\":-1,\"modAerials\":-1,\"color2\":0,\"modXenon\":false,\"modAPlate\":-1,\"modExhaust\":-1,\"modHorns\":-1,\"custom_turbo\":\"Default\",\"modFender\":-1,\"windowTint\":-1,\"pearlescentColor\":127,\"modEngine\":-1,\"modTank\":-1,\"modRightFender\":-1,\"modVanityPlate\":-1,\"modPlateHolder\":-1,\"modArchCover\":-1,\"fuelLevel\":59.6,\"deformation\":\"[]\",\"modStruts\":-1,\"modFrontBumper\":-1,\"modSuspension\":-1,\"modDashboard\":-1,\"neonEnabled\":[false,false,false,false],\"rgb2\":[230,255,226],\"vehicle_window\":[1,false,false,false,false,false,1,1],\"modLivery\":4,\"extras\":[],\"modSideSkirt\":-1,\"modAirFilter\":-1,\"modDoorSpeaker\":-1,\"custom_engine\":\"Default\",\"color1\":71,\"modSpoilers\":-1,\"modSeats\":-1,\"vehicle_doors\":[false,false,false,false,false,false],\"modHood\":-1,\"modArmor\":-1,\"modFrame\":-1,\"modShifterLeavers\":-1,\"wheelColor\":3,\"engineHealth\":1000.0,\"drift_tire\":false,\"modDial\":-1,\"xenonColor\":255,\"modFrontWheels\":-1,\"custom_tire\":\"Default\",\"modOrnaments\":-1,\"wheel_tires\":[false,false,false,false,false,false,false],\"modTurbo\":false,\"modHydrolic\":-1,\"modBackWheels\":-1,\"modWindows\":-1,\"modRearBumper\":-1,\"modTransmission\":-1,\"dirtLevel\":1.1,\"plate\":\"XVC 764 \",\"modSteeringWheel\":-1,\"neonColor\":[255,0,255]}', 'car', 'civ', 1, 'A', 0, NULL, 0, NULL, '[]', 0);

-- --------------------------------------------------------

--
-- Table structure for table `parking_meter`
--

CREATE TABLE `parking_meter` (
  `identifier` varchar(64) NOT NULL DEFAULT '',
  `plate` varchar(32) DEFAULT '',
  `vehicle` longtext DEFAULT NULL,
  `coord` longtext DEFAULT NULL,
  `park_coord` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `policereports`
--

CREATE TABLE `policereports` (
  `id` int(11) NOT NULL,
  `identifier` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `number` varchar(20) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `createdAt` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `private_garage`
--

CREATE TABLE `private_garage` (
  `identifier` varchar(64) NOT NULL DEFAULT '',
  `vehicles` longtext DEFAULT NULL,
  `garage` varchar(64) DEFAULT NULL,
  `inventory` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `prop`
--

CREATE TABLE `prop` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `label` varchar(50) DEFAULT NULL,
  `entering` varchar(255) DEFAULT NULL,
  `inside` varchar(255) DEFAULT NULL,
  `room_menu` varchar(255) DEFAULT NULL,
  `ipls` varchar(255) DEFAULT NULL,
  `is_single` tinyint(1) DEFAULT NULL,
  `type` varchar(60) DEFAULT NULL,
  `is_buyable` tinyint(1) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `depends` varchar(60) DEFAULT NULL,
  `is_unique` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prop`
--

INSERT INTO `prop` (`id`, `name`, `label`, `entering`, `inside`, `room_menu`, `ipls`, `is_single`, `type`, `is_buyable`, `price`, `depends`, `is_unique`) VALUES
(20, '2677WhispymoundDrive', '2677 Whispymound Drive', '{\"x\":1192.9200439453125,\"y\":-1623.6600341796875,\"z\":45.22000122070312}', '{\"x\":117.21,\"y\":559.67,\"z\":184.3}', '{\"x\":122.17,\"y\":548.84,\"z\":180.5}', '[]', 1, 'House', 1, 1000000, '0', 1),
(21, '2874HillcrestAvenue', '2874 Hillcrest Avenue', '{\"x\":-853.15,\"y\":695.91,\"z\":148.79}', '{\"x\":-859.97,\"y\":691.07,\"z\":152.86}', '{\"x\":-855.23,\"y\":680.13,\"z\":149.05}', '[]', 1, 'House', 1, 1000000, '0', 1),
(22, '3655WildOatsDrive', '3655 Wild Oats Drive', '{\"x\":-175.29,\"y\":502.37,\"z\":137.42}', '{\"x\":-174.23,\"y\":497.29,\"z\":137.67}', '{\"x\":-167.38,\"y\":487.78,\"z\":133.84}', '[]', 1, 'House', 1, 1000000, '0', 1),
(23, '2862HillcrestAvenue', '2862 Hillcrest Avenue', '{\"x\":-686.07,\"y\":596.35,\"z\":143.64}', '{\"x\":-682.39,\"y\":592.65,\"z\":145.38}', '{\"x\":-671.59,\"y\":587.37,\"z\":141.57}', '[]', 1, 'House', 1, 1000000, '0', 0),
(24, '2133MadWayneThunder', '2133 Mad Wayne Thunder', '{\"x\":-1294.4,\"y\":454.66,\"z\":97.52}', '{\"x\":-1289.97,\"y\":449.55,\"z\":97.9}', '{\"x\":-1286.31,\"y\":438.16,\"z\":94.09}', '[]', 1, 'House', 1, 1000000, '0', 1),
(25, '2868 Hillcrest Avenue', '2868 Hillcrest Avenue', '{\"x\":-752.81,\"y\":620.51,\"z\":142.59}', '{\"x\":-758.55,\"y\":618.94,\"z\":144.15}', '{\"x\":-767.49,\"y\":610.98,\"z\":140.33}', '[]', 1, 'House', 1, 1000000, '0', 0),
(26, '2045NorthConkerAvenue', '2045 North Conker Avenue', '{\"x\":373.06,\"y\":428.48,\"z\":145.69}', '{\"x\":373.43,\"y\":423.41,\"z\":145.91}', '{\"x\":374.58,\"y\":411.65,\"z\":142.1}', '[]', 1, 'House', 1, 1000000, '0', 0),
(27, '2044NorthConkerAvenue', '2044 North Conker Avenue', '{\"x\":347.21,\"y\":440.86,\"z\":147.7}', '{\"x\":341.76,\"y\":437.84,\"z\":149.39}', '{\"x\":334.36,\"y\":428.34,\"z\":145.57}', '[]', 1, 'House', 1, 1000000, '0', 0),
(28, 'EclipseTower', 'Eclipse Tower', '{\"x\":-776.20,\"y\":313.54,\"z\":85.14}', '0', '0', '[]', 1, '0', 1, 0, 'Collector', 0),
(29, 'EclipseTowerApartment', 'Eclipse Tower, Apt', '{\"x\":-776.20,\"y\":313.54,\"z\":85.14}', '{\"x\":-784.81,\"y\":323.59,\"z\":212.0}', '{\"x\":-793.33,\"y\":326.62,\"z\":210.8}', '[]', 0, 'Apartment', 1, 525000, 'EclipseTower', 0),
(30, 'EclipseTowerPenthouse', 'Eclipse Tower, Pnt', '{\"x\":-776.20,\"y\":313.54,\"z\":85.14}', '{\"x\":-781.84,\"y\":323.68,\"z\":176.8}', '{\"x\":-761.08,\"y\":325.41,\"z\":170.61}', '[]', 0, 'Penthouse', 1, 400000, 'EclipseTower', 0),
(31, 'ModernPenthouse', 'Modern Penthouse', '{\"x\":-776.20,\"y\":313.54,\"z\":85.14}', '{\"x\":-774.21,\"y\":341.97,\"z\":196.69}', '{\"x\":-763.33,\"y\":329.09,\"z\":199.49}', 'apa_v_mp_h_01_b', 0, 'Penthouse', 1, 400000, 'EclipseTower', 0),
(32, 'StimmungsvollPenthouse', 'Moody Penthouse', '{\"x\":-776.20,\"y\":313.54,\"z\":85.14}', '{\"x\":-774.21,\"y\":341.97,\"z\":196.69}', '{\"x\":-763.33,\"y\":329.09,\"z\":199.49}', 'apa_v_mp_h_02_b', 0, 'Penthouse', 1, 400000, 'EclipseTower', 0),
(33, 'DynastischPenthouse', 'Vibrant Penthouse', '{\"x\":-776.20,\"y\":313.54,\"z\":85.14}', '{\"x\":-774.21,\"y\":341.97,\"z\":196.69}', '{\"x\":-763.33,\"y\":329.09,\"z\":199.49}', 'apa_v_mp_h_03_b', 0, 'Penthouse', 1, 400000, 'EclipseTower', 0),
(34, 'PraegnantPenthouse', 'Sharp Penthouse', '{\"x\":-776.20,\"y\":313.54,\"z\":85.14}', '{\"x\":-774.21,\"y\":341.97,\"z\":196.69}', '{\"x\":-763.33,\"y\":329.09,\"z\":199.49}', 'apa_v_mp_h_04_b', 0, 'Penthouse', 1, 400000, 'EclipseTower', 0),
(35, 'MonochromePenthouse', 'Monochrome Penthouse', '{\"x\":-776.20,\"y\":313.54,\"z\":85.14}', '{\"x\":-774.21,\"y\":341.97,\"z\":196.69}', '{\"x\":-763.33,\"y\":329.09,\"z\":199.49}', 'apa_v_mp_h_05_b', 0, 'Penthouse', 1, 400000, 'EclipseTower', 0),
(36, 'VerfuehrerischPenthouse', 'Seductive Penthouse', '{\"x\":-776.20,\"y\":313.54,\"z\":85.14}', '{\"x\":-774.21,\"y\":341.97,\"z\":196.69}', '{\"x\":-763.33,\"y\":329.09,\"z\":199.49}', 'apa_v_mp_h_06_b', 0, 'Penthouse', 1, 400000, 'EclipseTower', 0),
(37, 'MajestetischPenthouse', 'Regal Penthouse', '{\"x\":-776.20,\"y\":313.54,\"z\":85.14}', '{\"x\":-774.21,\"y\":341.97,\"z\":196.69}', '{\"x\":-763.33,\"y\":329.09,\"z\":199.49}', 'apa_v_mp_h_07_b', 0, 'Penthouse', 1, 400000, 'EclipseTower', 0),
(38, 'MaritimPenthouse', 'Aqua Penthouse', '{\"x\":-776.20,\"y\":313.54,\"z\":85.14}', '{\"x\":-774.21,\"y\":341.97,\"z\":196.69}', '{\"x\":-763.33,\"y\":329.09,\"z\":199.49}', 'apa_v_mp_h_08_b', 0, 'Penthouse', 1, 400000, 'EclipseTower', 0),
(39, 'DellPerroHeights', 'Dell Perro Heights', '{\"x\":-1446.4,\"y\":-539.1,\"z\":34.74}', '0', '0', '[]', 1, '0', 1, 0, 'Collector', 0),
(40, 'DellPerroHeightsApt ', 'Dell Perro Heights, Apt', '{\"x\":-1446.4,\"y\":-539.1,\"z\":34.74}', '{\"x\":-1452.42,\"y\":-540.32,\"z\":74.04}', '{\"x\":-1449.84,\"y\":-548.88,\"z\":72.84}', '[]', 0, 'Apartment', 1, 525000, 'DellPerroHeights', 0),
(41, 'DellPerroHeightsPnt', 'Dell Perro Heights, Pnt', '{\"x\":-1446.4,\"y\":-539.1,\"z\":34.74}', '{\"x\":-1451.33,\"y\":-524.05,\"z\":69.65}', '{\"x\":-1467.42,\"y\":-537.1,\"z\":63.36}', '[]', 0, 'Penthouse', 1, 575000, 'DellPerroHeights', 0),
(42, 'BondsLowApartment', 'Bonds, Apt', '{\"x\":329.1,\"y\":-800.87,\"z\":29.27}', '{\"x\":266.12,\"y\":-1007.05,\"z\":-100.95}', '{\"x\":259.76,\"y\":-1003.94,\"z\":-99.01}', '[]', 1, 'Wohnung', 1, 156000, '0', 0),
(43, 'WeazelPlazaPnt', 'Weazel Plaze, Pnt', '{\"x\":-916.7,\"y\":-450.77,\"z\":39.6}', '{\"x\":-888.86,\"y\":-451.74,\"z\":95.46}', '{\"x\":-899.47,\"y\":-434.26,\"z\":89.26}', '[]', 1, 'Penthouse', 1, 575000, '0', 0),
(44, 'TinselTower', 'Tinsel Tower, Apt', '{\"x\":-618.36,\"y\":36.37,\"z\":43.57}', '{\"x\":-603.21,\"y\":58.93,\"z\":98.2}', '{\"x\":-594.77,\"y\":56.14,\"z\":97.0}', '[]', 1, 'Apartment', 1, 525000, '0', 0),
(45, 'ThePinkCage', 'Pink Cage Hotel', '{\"x\":314.88,\"y\":-227.43,\"z\":54.02}', '{\"x\":151.4,\"y\":-1007.46,\"z\":-99.0}', '{\"x\":152.29,\"y\":-1001.29,\"z\":-99.0}', '[]', 1, 'Hotel', 1, 40000, '0', 0),
(48, 'RichardMajesticApartment', 'Richard Majestic, Apt', '{\"x\":-937.02,\"y\":-379.41,\"z\":38.96}', '{\"x\":-912.82,\"y\":-365.27,\"z\":114.27}', '{\"x\":-903.92,\"y\":-363.59,\"z\":113.07}', '[]', 1, 'Apartment', 1, 525000, '0', 0),
(50, 'MiRd6085', '6085 Milton Road', '{\"x\":-658.87,\"y\":888.0,\"z\":229.24}', '{\"x\":-682.39,\"y\":592.65,\"z\":145.38}', '{\"x\":-671.59,\"y\":587.37,\"z\":141.57}', '[]', 1, 'House', 1, 20000, '0', 1),
(51, 'LakeVWEst', 'Lake Vinewood Est', '{\"x\":-152.43,\"y\":911.2,\"z\":234.65}', '{\"x\":-174.23,\"y\":497.29,\"z\":137.67}', '{\"x\":-167.38,\"y\":487.78,\"z\":133.84}', '[]', 1, 'House', 1, 20000, '0', 1),
(56, 'VWPowerSt', 'PowerSt 0702', '{\"x\":284.71,\"y\":47.19,\"z\":91.66}', '{\"x\":151.4,\"y\":-1007.46,\"z\":-99.0}', '{\"x\":152.29,\"y\":-1001.29,\"z\":-99.0}', '[]', 1, 'Hotel', 1, 320000, '0', 0),
(57, 'LaPuGomaSt', 'La Puerta GomaSt', '{\"x\":-970.14,\"y\":-1431.4,\"z\":6.67}', '{\"x\":151.4,\"y\":-1007.46,\"z\":-99.0}', '{\"x\":152.29,\"y\":-1001.29,\"z\":-99.0}', '[]', 1, 'Hotel', 1, 320000, '0', 0),
(58, 'Tahitian', 'The Tahitian', '{\"x\":-25.50,\"y\":-1556.38,\"z\":29.68}', '{\"x\":151.4,\"y\":-1007.46,\"z\":-99.0}', '{\"x\":152.29,\"y\":-1001.29,\"z\":-99.0}', '[]', 1, 'Hotel', 1, 320000, '0', 0),
(67, 'WhDr3673', '3673 Whispymound Drive', '{\"x\":45.69,\"y\":556.71,\"z\":179.18}', '{\"x\":117.21,\"y\":559.67,\"z\":184.3}', '{\"x\":122.17,\"y\":548.84,\"z\":180.5}', '[]', 1, 'House', 1, 20000, '0', 1),
(68, 'MeSt', 'Melanoma St', '{\"x\":-1114.6,\"y\":-1579.04,\"z\":7.68}', '{\"x\":151.4,\"y\":-1007.46,\"z\":-99.0}', '{\"x\":152.29,\"y\":-1001.29,\"z\":-99.0}', '[]', 1, 'Hotel', 1, 320000, '0', 0),
(69, '1018NRF', '1018 North Rockford', '{\"x\":-1973.91,\"y\":630.68,\"z\":121.54}', '{\"x\":-174.23,\"y\":497.29,\"z\":137.67}', '{\"x\":-167.38,\"y\":487.78,\"z\":133.84}', '[]', 1, 'House', 1, 320000, '0', 1),
(78, 'MazeBank', 'Maze Bank', '{\"x\":-68.4,\"y\":-800.57,\"z\":44.23}', '0', '0', '[]', 1, '0', 0, 0, 'Collector', 0),
(79, 'MBO1', 'MB Executive Rich', '{\"x\":-68.4,\"y\":-800.57,\"z\":44.23}', '{\"x\":-77.71,\"y\":-829.89,\"z\":243.39}', '{\"x\":-78.1,\"y\":-810.65,\"z\":243.39}', 'ex_dt1_11_office_02b', 0, 'Office', 1, 1200000, 'MazeBank', 0),
(80, 'MBO2', 'MB Executive Cool', '{\"x\":-68.4,\"y\":-800.57,\"z\":44.23}', '{\"x\":-77.71,\"y\":-829.89,\"z\":243.39}', '{\"x\":-78.1,\"y\":-810.65,\"z\":243.39}', 'ex_dt1_11_office_02c', 0, 'Office', 1, 1200000, 'MazeBank', 0),
(81, 'MBO3', 'MB Executive Contrast', '{\"x\":-68.4,\"y\":-800.57,\"z\":44.23}', '{\"x\":-77.71,\"y\":-829.89,\"z\":243.39}', '{\"x\":-78.1,\"y\":-810.65,\"z\":243.39}', 'ex_dt1_11_office_02a', 0, 'Office', 1, 1200000, 'MazeBank', 0),
(82, 'MBO4', 'MB Old Spice Warm', '{\"x\":-68.4,\"y\":-800.57,\"z\":44.23}', '{\"x\":-77.71,\"y\":-829.89,\"z\":243.39}', '{\"x\":-78.1,\"y\":-810.65,\"z\":243.39}', 'ex_dt1_11_office_01a', 0, 'Office', 1, 1200000, 'MazeBank', 0),
(83, 'MBO5', 'MB Old Spice Classical', '{\"x\":-68.4,\"y\":-800.57,\"z\":44.23}', '{\"x\":-77.71,\"y\":-829.89,\"z\":243.39}', '{\"x\":-78.1,\"y\":-810.65,\"z\":243.39}', 'ex_dt1_11_office_01b', 0, 'Office', 1, 1200000, 'MazeBank', 0),
(84, 'MBO6', 'MB Old Spice Vintage', '{\"x\":-68.4,\"y\":-800.57,\"z\":44.23}', '{\"x\":-77.71,\"y\":-829.89,\"z\":243.39}', '{\"x\":-78.1,\"y\":-810.65,\"z\":243.39}', 'ex_dt1_11_office_01c', 0, 'Office', 1, 1200000, 'MazeBank', 0),
(85, 'MBO7', 'MB Power Broker Ice', '{\"x\":-68.4,\"y\":-800.57,\"z\":44.23}', '{\"x\":-77.71,\"y\":-829.89,\"z\":243.39}', '{\"x\":-78.1,\"y\":-810.65,\"z\":243.39}', 'ex_dt1_11_office_03a', 0, 'Office', 1, 1200000, 'MazeBank', 0),
(86, 'MBO8', 'MB Power Broker Conservative', '{\"x\":-68.4,\"y\":-800.57,\"z\":44.23}', '{\"x\":-77.71,\"y\":-829.89,\"z\":243.39}', '{\"x\":-78.1,\"y\":-810.65,\"z\":243.39}', 'ex_dt1_11_office_03b', 0, 'Office', 1, 1200000, 'MazeBank', 0),
(87, 'MBO9', 'MB Power Broker Polished', '{\"x\":-68.4,\"y\":-800.57,\"z\":44.23}', '{\"x\":-77.71,\"y\":-829.89,\"z\":243.39}', '{\"x\":-78.1,\"y\":-810.65,\"z\":243.39}', 'ex_dt1_11_office_03c', 0, 'Office', 1, 1200000, 'MazeBank', 0),
(88, 'VespucciClubhouse', 'Vespucci Clubhouse', '{\"x\":-1134.61,\"y\":-1568.99,\"z\":4.41}', '{\"x\":997.64,\"y\":-3158.04,\"z\":-38.91}', '{\"x\":1009.89,\"y\":-3168.35,\"z\":-38.89}', '[]', 1, 'ClubHouse', 1, 200000, '0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `prop_owner`
--

CREATE TABLE `prop_owner` (
  `id` int(11) NOT NULL,
  `owner` varchar(60) DEFAULT NULL,
  `charactername` varchar(255) DEFAULT NULL,
  `property` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `rented` int(11) DEFAULT NULL,
  `trusted` varchar(1000) DEFAULT NULL,
  `locked` int(11) DEFAULT 1,
  `deposit` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prop_owner`
--

INSERT INTO `prop_owner` (`id`, `owner`, `charactername`, `property`, `price`, `rented`, `trusted`, `locked`, `deposit`) VALUES
(1, 'fa1ac7043ecf6d547b685250975e7609c11fbf62', 'Ali Ccr', 'ThePinkCage', 200, 1, '[]', 1, 3),
(4, 'a40cccf77dbeca9fcbdcaee533284b3c6efdcd82', 'Hooman Rocky', 'WeazelPlazaPnt', 575000, 0, '[]', 2, 0),
(5, 'fa1ac7043ecf6d547b685250975e7609c11fbf62', 'Ali Ccr', 'WeazelPlazaPnt', 575000, 0, '[]', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rented_vehicles`
--

CREATE TABLE `rented_vehicles` (
  `vehicle` varchar(60) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `player_name` varchar(255) NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `renzu_customs`
--

CREATE TABLE `renzu_customs` (
  `shop` varchar(64) NOT NULL DEFAULT '[]',
  `inventory` longtext DEFAULT '[]'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `renzu_customs`
--

INSERT INTO `renzu_customs` (`shop`, `inventory`) VALUES
('Bennys', '{\"spoiler-2\":0}'),
('Custom Garage', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `society_moneywash`
--

CREATE TABLE `society_moneywash` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) NOT NULL,
  `society` varchar(60) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `identifier` varchar(40) NOT NULL,
  `accounts` longtext DEFAULT NULL,
  `group` varchar(50) DEFAULT 'user',
  `inventory` longtext DEFAULT NULL,
  `job` varchar(20) DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT 0,
  `loadout` longtext DEFAULT NULL,
  `position` varchar(255) DEFAULT '{"x":153.2400054931641,"y":-974.4500122070312,"z":30.09000015258789,"heading":270.8}',
  `skin` longtext DEFAULT NULL,
  `firstname` varchar(16) DEFAULT NULL,
  `lastname` varchar(16) DEFAULT NULL,
  `dateofbirth` varchar(10) DEFAULT NULL,
  `sex` varchar(1) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `status` longtext DEFAULT NULL,
  `is_dead` tinyint(1) DEFAULT 0,
  `last_property` varchar(255) DEFAULT NULL,
  `wanted` int(11) NOT NULL DEFAULT 0,
  `phone_number` varchar(10) DEFAULT NULL,
  `getStarter` int(11) NOT NULL DEFAULT 0,
  `jail` int(11) NOT NULL DEFAULT 0,
  `tattoos` longtext DEFAULT NULL,
  `jail_time` int(11) NOT NULL DEFAULT 0,
  `avatar` mediumtext DEFAULT NULL,
  `name` varchar(50) DEFAULT '',
  `hotbar` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`identifier`, `accounts`, `group`, `inventory`, `job`, `job_grade`, `loadout`, `position`, `skin`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `status`, `is_dead`, `last_property`, `wanted`, `phone_number`, `getStarter`, `jail`, `tattoos`, `jail_time`, `avatar`, `name`, `hotbar`) VALUES
('fa1ac7043ecf6d547b685250975e7609c11fbf62', '{\"black_money\":0,\"bank\":0,\"money\":52496900}', 'superadmin', '{\"phone\":1,\"lockpick\":1,\"bread\":1,\"gold\":15,\"water\":2,\"drill\":5,\"purple_weed\":9,\"indica_weed\":8,\"bag\":5}', 'taxi', 0, '{\"WEAPON_PISTOL\":{\"ammo\":59},\"WEAPON_SMG\":{\"ammo\":500}}', '{\"y\":-1331.6,\"z\":30.9,\"heading\":91.2,\"x\":-223.8}', '{\"nose_2\":0,\"hair_color_1\":0,\"age_2\":0,\"lip_thickness\":0,\"chin_1\":0,\"sun_2\":0,\"face_md_weight\":50,\"arms\":0,\"complexion_2\":0,\"beard_2\":0,\"moles_1\":0,\"eyebrows_1\":0,\"skin_md_weight\":50,\"torso_2\":0,\"eyebrows_5\":0,\"helmet_2\":-1,\"moles_2\":0,\"cheeks_2\":0,\"makeup_4\":0,\"hair_2\":0,\"eye_color\":0,\"glasses_2\":-1,\"blush_2\":0,\"jaw_2\":0,\"nose_5\":0,\"hair_color_2\":0,\"helmet_1\":-1,\"eyebrows_2\":10,\"sex\":0,\"complexion_1\":0,\"lipstick_3\":32,\"hair_1\":3,\"neck_thickness\":0,\"pants_1\":4,\"chin_4\":0,\"chain_1\":0,\"lipstick_2\":0,\"sun_1\":0,\"eye_squint\":0,\"cheeks_3\":0,\"watches_2\":-1,\"beard_1\":0,\"eyebrows_6\":0,\"eyebrows_4\":0,\"beard_3\":61,\"ears_1\":-1,\"arms_2\":0,\"shoes_2\":0,\"nose_1\":0,\"makeup_1\":0,\"pants_2\":0,\"nose_6\":0,\"age_1\":0,\"chain_2\":0,\"makeup_2\":0,\"torso_1\":72,\"glasses_1\":-1,\"tshirt_1\":11,\"blush_1\":0,\"tshirt_2\":0,\"nose_3\":0,\"lipstick_1\":0,\"nose_4\":0,\"chin_3\":0,\"ears_2\":-1,\"shoes_1\":0,\"watches_1\":-1,\"eyebrows_3\":0,\"blush_3\":\"2\",\"makeup_3\":0,\"cheeks_1\":0,\"chin_2\":0,\"jaw_1\":0}', 'Ali', 'Ccr', '5555-05-05', 'm', 150, '[{\"val\":838500,\"percent\":83.85000000000001,\"name\":\"hunger\"},{\"val\":878875,\"percent\":87.8875,\"name\":\"thirst\"}]', 0, NULL, 0, NULL, 0, 0, NULL, 0, NULL, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_clothes`
--

CREATE TABLE `user_clothes` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `name` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `clothesData` longtext COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `user_licenses`
--

CREATE TABLE `user_licenses` (
  `id` int(11) NOT NULL,
  `type` varchar(60) NOT NULL,
  `owner` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_policearmory`
--

CREATE TABLE `user_policearmory` (
  `identifier` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `weapons` longtext COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `user_policearmory`
--

INSERT INTO `user_policearmory` (`identifier`, `weapons`) VALUES
('fa1ac7043ecf6d547b685250975e7609c11fbf62', 'WEAPON_SMG, ');

-- --------------------------------------------------------

--
-- Table structure for table `vehiclekeys`
--

CREATE TABLE `vehiclekeys` (
  `plate` varchar(64) NOT NULL DEFAULT '',
  `keys` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
('Adder', 'adder', 900000, 'super'),
('Akuma', 'AKUMA', 7500, 'motorcycles'),
('Alpha', 'alpha', 60000, 'sports'),
('Ardent', 'ardent', 1150000, 'sportsclassics'),
('Asea', 'asea', 5500, 'sedans'),
('Autarch', 'autarch', 1955000, 'super'),
('Avarus', 'avarus', 18000, 'motorcycles'),
('Bagger', 'bagger', 13500, 'motorcycles'),
('Baller', 'baller2', 40000, 'suvs'),
('Baller Sport', 'baller3', 60000, 'suvs'),
('Banshee', 'banshee', 70000, 'sports'),
('Banshee 900R', 'banshee2', 255000, 'super'),
('Bati 801', 'bati', 12000, 'motorcycles'),
('Bati 801RR', 'bati2', 19000, 'motorcycles'),
('Bestia GTS', 'bestiagts', 55000, 'sports'),
('BF400', 'bf400', 6500, 'motorcycles'),
('Bf Injection', 'bfinjection', 16000, 'offroad'),
('Bifta', 'bifta', 12000, 'offroad'),
('Bison', 'bison', 45000, 'vans'),
('Blade', 'blade', 15000, 'muscle'),
('Blazer', 'blazer', 6500, 'offroad'),
('Blazer Sport', 'blazer4', 8500, 'offroad'),
('blazer5', 'blazer5', 1755600, 'offroad'),
('Blista', 'blista', 8000, 'compacts'),
('BMX (velo)', 'bmx', 160, 'motorcycles'),
('Bobcat XL', 'bobcatxl', 32000, 'vans'),
('Brawler', 'brawler', 45000, 'offroad'),
('Brioso R/A', 'brioso', 18000, 'compacts'),
('Btype', 'btype', 62000, 'sportsclassics'),
('Btype Hotroad', 'btype2', 155000, 'sportsclassics'),
('Btype Luxe', 'btype3', 85000, 'sportsclassics'),
('Buccaneer', 'buccaneer', 18000, 'muscle'),
('Buccaneer Rider', 'buccaneer2', 24000, 'muscle'),
('Buffalo', 'buffalo', 12000, 'sports'),
('Buffalo S', 'buffalo2', 20000, 'sports'),
('Bullet', 'bullet', 90000, 'super'),
('Burrito', 'burrito3', 19000, 'vans'),
('Camper', 'camper', 42000, 'vans'),
('Carbonizzare', 'carbonizzare', 75000, 'sports'),
('Carbon RS', 'carbonrs', 18000, 'motorcycles'),
('Casco', 'casco', 30000, 'sportsclassics'),
('Cavalcade', 'cavalcade2', 55000, 'suvs'),
('Cheetah', 'cheetah', 375000, 'super'),
('Chimera', 'chimera', 38000, 'motorcycles'),
('Chino', 'chino', 15000, 'muscle'),
('Chino Luxe', 'chino2', 19000, 'muscle'),
('Cliffhanger', 'cliffhanger', 9500, 'motorcycles'),
('Cognoscenti Cabrio', 'cogcabrio', 55000, 'coupes'),
('Cognoscenti', 'cognoscenti', 55000, 'sedans'),
('Comet', 'comet2', 65000, 'sports'),
('Comet 5', 'comet5', 1145000, 'sports'),
('Contender', 'contender', 70000, 'suvs'),
('Coquette', 'coquette', 65000, 'sports'),
('Coquette Classic', 'coquette2', 40000, 'sportsclassics'),
('Coquette BlackFin', 'coquette3', 55000, 'muscle'),
('Cruiser (velo)', 'cruiser', 510, 'motorcycles'),
('Cyclone', 'cyclone', 1890000, 'super'),
('Daemon', 'daemon', 11500, 'motorcycles'),
('Daemon High', 'daemon2', 13500, 'motorcycles'),
('Defiler', 'defiler', 9800, 'motorcycles'),
('Deluxo', 'deluxo', 4721500, 'sportsclassics'),
('Dominator', 'dominator', 35000, 'muscle'),
('Double T', 'double', 28000, 'motorcycles'),
('Dubsta', 'dubsta', 45000, 'suvs'),
('Dubsta Luxuary', 'dubsta2', 60000, 'suvs'),
('Bubsta 6x6', 'dubsta3', 120000, 'offroad'),
('Dukes', 'dukes', 28000, 'muscle'),
('Dune Buggy', 'dune', 8000, 'offroad'),
('Elegy', 'elegy2', 38500, 'sports'),
('Emperor', 'emperor', 8500, 'sedans'),
('Enduro', 'enduro', 5500, 'motorcycles'),
('Entity XF', 'entityxf', 425000, 'super'),
('Esskey', 'esskey', 4200, 'motorcycles'),
('Exemplar', 'exemplar', 32000, 'coupes'),
('F620', 'f620', 40000, 'coupes'),
('Faction', 'faction', 20000, 'muscle'),
('Faction Rider', 'faction2', 30000, 'muscle'),
('Faction XL', 'faction3', 40000, 'muscle'),
('Faggio', 'faggio', 1900, 'motorcycles'),
('Vespa', 'faggio2', 2800, 'motorcycles'),
('Felon', 'felon', 42000, 'coupes'),
('Felon GT', 'felon2', 55000, 'coupes'),
('Feltzer', 'feltzer2', 55000, 'sports'),
('Stirling GT', 'feltzer3', 65000, 'sportsclassics'),
('Fixter (velo)', 'fixter', 225, 'motorcycles'),
('FMJ', 'fmj', 185000, 'super'),
('Fhantom', 'fq2', 17000, 'suvs'),
('Fugitive', 'fugitive', 12000, 'sedans'),
('Furore GT', 'furoregt', 45000, 'sports'),
('Fusilade', 'fusilade', 40000, 'sports'),
('Gargoyle', 'gargoyle', 16500, 'motorcycles'),
('Gauntlet', 'gauntlet', 30000, 'muscle'),
('Gang Burrito', 'gburrito', 45000, 'vans'),
('Burrito', 'gburrito2', 29000, 'vans'),
('Glendale', 'glendale', 6500, 'sedans'),
('Grabger', 'granger', 50000, 'suvs'),
('Gresley', 'gresley', 47500, 'suvs'),
('GT 500', 'gt500', 785000, 'sportsclassics'),
('Guardian', 'guardian', 45000, 'offroad'),
('Hakuchou', 'hakuchou', 31000, 'motorcycles'),
('Hakuchou Sport', 'hakuchou2', 55000, 'motorcycles'),
('Hermes', 'hermes', 535000, 'muscle'),
('Hexer', 'hexer', 12000, 'motorcycles'),
('Hotknife', 'hotknife', 125000, 'muscle'),
('Huntley S', 'huntley', 40000, 'suvs'),
('Hustler', 'hustler', 625000, 'muscle'),
('Infernus', 'infernus', 180000, 'super'),
('Innovation', 'innovation', 23500, 'motorcycles'),
('Intruder', 'intruder', 7500, 'sedans'),
('Issi', 'issi2', 10000, 'compacts'),
('Jackal', 'jackal', 38000, 'coupes'),
('Jester', 'jester', 65000, 'sports'),
('Jester(Racecar)', 'jester2', 135000, 'sports'),
('Journey', 'journey', 6500, 'vans'),
('Kamacho', 'kamacho', 345000, 'offroad'),
('Khamelion', 'khamelion', 38000, 'sports'),
('Kuruma', 'kuruma', 30000, 'sports'),
('Landstalker', 'landstalker', 35000, 'suvs'),
('RE-7B', 'le7b', 325000, 'super'),
('Lynx', 'lynx', 40000, 'sports'),
('Mamba', 'mamba', 70000, 'sports'),
('Manana', 'manana', 12800, 'sportsclassics'),
('Manchez', 'manchez', 5300, 'motorcycles'),
('Massacro', 'massacro', 65000, 'sports'),
('Massacro(Racecar)', 'massacro2', 130000, 'sports'),
('Mesa', 'mesa', 16000, 'suvs'),
('Mesa Trail', 'mesa3', 40000, 'suvs'),
('Minivan', 'minivan', 13000, 'vans'),
('Monroe', 'monroe', 55000, 'sportsclassics'),
('The Liberator', 'monster', 210000, 'offroad'),
('Moonbeam', 'moonbeam', 18000, 'vans'),
('Moonbeam Rider', 'moonbeam2', 35000, 'vans'),
('Nemesis', 'nemesis', 5800, 'motorcycles'),
('Neon', 'neon', 1500000, 'sports'),
('Nightblade', 'nightblade', 35000, 'motorcycles'),
('Nightshade', 'nightshade', 65000, 'muscle'),
('9F', 'ninef', 65000, 'sports'),
('9F Cabrio', 'ninef2', 80000, 'sports'),
('Omnis', 'omnis', 35000, 'sports'),
('Oppressor', 'oppressor', 3524500, 'super'),
('Oracle XS', 'oracle2', 35000, 'coupes'),
('Osiris', 'osiris', 160000, 'super'),
('Panto', 'panto', 10000, 'compacts'),
('Paradise', 'paradise', 19000, 'vans'),
('Pariah', 'pariah', 1420000, 'sports'),
('Patriot', 'patriot', 55000, 'suvs'),
('PCJ-600', 'pcj', 6200, 'motorcycles'),
('Penumbra', 'penumbra', 28000, 'sports'),
('Pfister', 'pfister811', 85000, 'super'),
('Phoenix', 'phoenix', 12500, 'muscle'),
('Picador', 'picador', 18000, 'muscle'),
('Pigalle', 'pigalle', 20000, 'sportsclassics'),
('Prairie', 'prairie', 12000, 'compacts'),
('Premier', 'premier', 8000, 'sedans'),
('Primo Custom', 'primo2', 14000, 'sedans'),
('X80 Proto', 'prototipo', 2500000, 'super'),
('Radius', 'radi', 29000, 'suvs'),
('raiden', 'raiden', 1375000, 'sports'),
('Rapid GT', 'rapidgt', 35000, 'sports'),
('Rapid GT Convertible', 'rapidgt2', 45000, 'sports'),
('Rapid GT3', 'rapidgt3', 885000, 'sportsclassics'),
('Reaper', 'reaper', 150000, 'super'),
('Rebel', 'rebel2', 35000, 'offroad'),
('Regina', 'regina', 5000, 'sedans'),
('Retinue', 'retinue', 615000, 'sportsclassics'),
('Revolter', 'revolter', 1610000, 'sports'),
('riata', 'riata', 380000, 'offroad'),
('Rocoto', 'rocoto', 45000, 'suvs'),
('Ruffian', 'ruffian', 6800, 'motorcycles'),
('Ruiner 2', 'ruiner2', 5745600, 'muscle'),
('Rumpo', 'rumpo', 15000, 'vans'),
('Rumpo Trail', 'rumpo3', 19500, 'vans'),
('Sabre Turbo', 'sabregt', 20000, 'muscle'),
('Sabre GT', 'sabregt2', 25000, 'muscle'),
('Sanchez', 'sanchez', 5300, 'motorcycles'),
('Sanchez Sport', 'sanchez2', 5300, 'motorcycles'),
('Sanctus', 'sanctus', 25000, 'motorcycles'),
('Sandking', 'sandking', 55000, 'offroad'),
('Savestra', 'savestra', 990000, 'sportsclassics'),
('SC 1', 'sc1', 1603000, 'super'),
('Schafter', 'schafter2', 25000, 'sedans'),
('Schafter V12', 'schafter3', 50000, 'sports'),
('Scorcher (velo)', 'scorcher', 280, 'motorcycles'),
('Seminole', 'seminole', 25000, 'suvs'),
('Sentinel', 'sentinel', 32000, 'coupes'),
('Sentinel XS', 'sentinel2', 40000, 'coupes'),
('Sentinel3', 'sentinel3', 650000, 'sports'),
('Seven 70', 'seven70', 39500, 'sports'),
('ETR1', 'sheava', 220000, 'super'),
('Shotaro Concept', 'shotaro', 320000, 'motorcycles'),
('Slam Van', 'slamvan3', 11500, 'muscle'),
('Sovereign', 'sovereign', 22000, 'motorcycles'),
('Stinger', 'stinger', 80000, 'sportsclassics'),
('Stinger GT', 'stingergt', 75000, 'sportsclassics'),
('Streiter', 'streiter', 500000, 'sports'),
('Stretch', 'stretch', 90000, 'sedans'),
('Stromberg', 'stromberg', 3185350, 'sports'),
('Sultan', 'sultan', 15000, 'sports'),
('Sultan RS', 'sultanrs', 65000, 'super'),
('Super Diamond', 'superd', 130000, 'sedans'),
('Surano', 'surano', 50000, 'sports'),
('Surfer', 'surfer', 12000, 'vans'),
('T20', 't20', 300000, 'super'),
('Tailgater', 'tailgater', 30000, 'sedans'),
('Tampa', 'tampa', 16000, 'muscle'),
('Drift Tampa', 'tampa2', 80000, 'sports'),
('Thrust', 'thrust', 24000, 'motorcycles'),
('Tri bike (velo)', 'tribike3', 520, 'motorcycles'),
('Trophy Truck', 'trophytruck', 60000, 'offroad'),
('Trophy Truck Limited', 'trophytruck2', 80000, 'offroad'),
('Tropos', 'tropos', 40000, 'sports'),
('Turismo R', 'turismor', 350000, 'super'),
('Tyrus', 'tyrus', 600000, 'super'),
('Vacca', 'vacca', 120000, 'super'),
('Vader', 'vader', 7200, 'motorcycles'),
('Verlierer', 'verlierer2', 70000, 'sports'),
('Vigero', 'vigero', 12500, 'muscle'),
('Virgo', 'virgo', 14000, 'muscle'),
('Viseris', 'viseris', 875000, 'sportsclassics'),
('Visione', 'visione', 2250000, 'super'),
('Voltic', 'voltic', 90000, 'super'),
('Voltic 2', 'voltic2', 3830400, 'super'),
('Voodoo', 'voodoo', 7200, 'muscle'),
('Vortex', 'vortex', 9800, 'motorcycles'),
('Warrener', 'warrener', 4000, 'sedans'),
('Washington', 'washington', 9000, 'sedans'),
('Windsor', 'windsor', 95000, 'coupes'),
('Windsor Drop', 'windsor2', 125000, 'coupes'),
('Woflsbane', 'wolfsbane', 9000, 'motorcycles'),
('XLS', 'xls', 32000, 'suvs'),
('Yosemite', 'yosemite', 485000, 'muscle'),
('Youga', 'youga', 10800, 'vans'),
('Youga Luxuary', 'youga2', 14500, 'vans'),
('Z190', 'z190', 900000, 'sportsclassics'),
('Zentorno', 'zentorno', 1500000, 'super'),
('Zion', 'zion', 36000, 'coupes'),
('Zion Cabrio', 'zion2', 45000, 'coupes'),
('Zombie', 'zombiea', 9500, 'motorcycles'),
('Zombie Luxuary', 'zombieb', 12000, 'motorcycles'),
('Z-Type', 'ztype', 220000, 'sportsclassics');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_categories`
--

CREATE TABLE `vehicle_categories` (
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicle_categories`
--

INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
('compacts', 'Compacts'),
('coupes', 'Coupés'),
('motorcycles', 'Motos'),
('muscle', 'Muscle'),
('offroad', 'Off Road'),
('sedans', 'Sedans'),
('sports', 'Sports'),
('sportsclassics', 'Sports Classics'),
('super', 'Super'),
('suvs', 'SUVs'),
('vans', 'Vans');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_sold`
--

CREATE TABLE `vehicle_sold` (
  `client` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `soldby` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `weashops`
--

CREATE TABLE `weashops` (
  `id` int(11) NOT NULL,
  `zone` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `desc` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `weashops`
--

INSERT INTO `weashops` (`id`, `zone`, `item`, `price`, `desc`) VALUES
(1, 'GunShop', 'WEAPON_PISTOL', 48000, 'Damage: 26');

-- --------------------------------------------------------

--
-- Table structure for table `whitelist`
--

CREATE TABLE `whitelist` (
  `identifier` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `whitelist`
--

INSERT INTO `whitelist` (`identifier`) VALUES
('steam:11000010c3b2057'),
('steam:110000132b7899a'),
('steam:1100001488f3795'),
('steam:110000149c32a28'),
('steam:11000014a76248b'),
('steam:11000014aa30b98'),
('steam:11000014b35f119'),
('steam:11000014b695882'),
('steam:11000014b986d07'),
('steam:11000014bf1ecab');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addon_account`
--
ALTER TABLE `addon_account`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `addon_account_data`
--
ALTER TABLE `addon_account_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_addon_account_data_account_name_owner` (`account_name`,`owner`),
  ADD KEY `index_addon_account_data_account_name` (`account_name`);

--
-- Indexes for table `addon_inventory`
--
ALTER TABLE `addon_inventory`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_addon_inventory_items_inventory_name_name` (`inventory_name`,`name`),
  ADD KEY `index_addon_inventory_items_inventory_name_name_owner` (`inventory_name`,`name`,`owner`),
  ADD KEY `index_addon_inventory_inventory_name` (`inventory_name`);

--
-- Indexes for table `adminmode_bans`
--
ALTER TABLE `adminmode_bans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adminmode_identifiers`
--
ALTER TABLE `adminmode_identifiers`
  ADD PRIMARY KEY (`steam`);

--
-- Indexes for table `adminmode_warnings`
--
ALTER TABLE `adminmode_warnings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bans`
--
ALTER TABLE `bans`
  ADD PRIMARY KEY (`license`);

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `communityservice`
--
ALTER TABLE `communityservice`
  ADD PRIMARY KEY (`identifier`);

--
-- Indexes for table `datastore`
--
ALTER TABLE `datastore`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `datastore_data`
--
ALTER TABLE `datastore_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_datastore_data_name_owner` (`name`,`owner`),
  ADD KEY `index_datastore_data_name` (`name`);

--
-- Indexes for table `esx_manager_bans`
--
ALTER TABLE `esx_manager_bans`
  ADD PRIMARY KEY (`identifier`);

--
-- Indexes for table `esx_manager_warns`
--
ALTER TABLE `esx_manager_warns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fine_types`
--
ALTER TABLE `fine_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gangs`
--
ALTER TABLE `gangs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gangs_grade`
--
ALTER TABLE `gangs_grade`
  ADD PRIMARY KEY (`gradeId`),
  ADD KEY `gangId` (`gangId`);

--
-- Indexes for table `gangs_member`
--
ALTER TABLE `gangs_member`
  ADD KEY `gangId` (`gangId`);

--
-- Indexes for table `garagekeys`
--
ALTER TABLE `garagekeys`
  ADD PRIMARY KEY (`identifier`) USING BTREE;

--
-- Indexes for table `gksphone_app_chat`
--
ALTER TABLE `gksphone_app_chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gksphone_bank_transfer`
--
ALTER TABLE `gksphone_bank_transfer`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `gksphone_blockednumber`
--
ALTER TABLE `gksphone_blockednumber`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `gksphone_calls`
--
ALTER TABLE `gksphone_calls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gksphone_gallery`
--
ALTER TABLE `gksphone_gallery`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `gksphone_gotur`
--
ALTER TABLE `gksphone_gotur`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `gksphone_gps`
--
ALTER TABLE `gksphone_gps`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `gksphone_group_message`
--
ALTER TABLE `gksphone_group_message`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `groupid` (`groupid`) USING BTREE;

--
-- Indexes for table `gksphone_insto_accounts`
--
ALTER TABLE `gksphone_insto_accounts`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `username` (`username`) USING BTREE;

--
-- Indexes for table `gksphone_insto_instas`
--
ALTER TABLE `gksphone_insto_instas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_gksphone_insto_instas_gksphone_insto_accounts` (`authorId`);

--
-- Indexes for table `gksphone_insto_likes`
--
ALTER TABLE `gksphone_insto_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_gksphone_insto_likes_gksphone_insto_accounts` (`authorId`),
  ADD KEY `FK_gksphone_insto_likes_gksphone_insto_instas` (`inapId`);

--
-- Indexes for table `gksphone_insto_story`
--
ALTER TABLE `gksphone_insto_story`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `FK_gksphone_insto_story_gksphone_insto_accounts` (`authorId`) USING BTREE;

--
-- Indexes for table `gksphone_job_message`
--
ALTER TABLE `gksphone_job_message`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `gksphone_lapraces`
--
ALTER TABLE `gksphone_lapraces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gksphone_mails`
--
ALTER TABLE `gksphone_mails`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `gksphone_messages`
--
ALTER TABLE `gksphone_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gksphone_messages_group`
--
ALTER TABLE `gksphone_messages_group`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `gksphone_news`
--
ALTER TABLE `gksphone_news`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `gksphone_settings`
--
ALTER TABLE `gksphone_settings`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `gksphone_tinderacc`
--
ALTER TABLE `gksphone_tinderacc`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `gksphone_tindermatch`
--
ALTER TABLE `gksphone_tindermatch`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `gksphone_tindermessage`
--
ALTER TABLE `gksphone_tindermessage`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `gksphone_twitter_accounts`
--
ALTER TABLE `gksphone_twitter_accounts`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `username` (`username`) USING BTREE;

--
-- Indexes for table `gksphone_twitter_likes`
--
ALTER TABLE `gksphone_twitter_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_gksphone_twitter_likes_gksphone_twitter_accounts` (`authorId`),
  ADD KEY `FK_gksphone_twitter_likes_gksphone_twitter_tweets` (`tweetId`);

--
-- Indexes for table `gksphone_twitter_tweets`
--
ALTER TABLE `gksphone_twitter_tweets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_gksphone_twitter_tweets_gksphone_twitter_accounts` (`authorId`);

--
-- Indexes for table `gksphone_users_contacts`
--
ALTER TABLE `gksphone_users_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gksphone_vehicle_sales`
--
ALTER TABLE `gksphone_vehicle_sales`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `gksphone_yellow`
--
ALTER TABLE `gksphone_yellow`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `impound_garage`
--
ALTER TABLE `impound_garage`
  ADD PRIMARY KEY (`garage`) USING BTREE;

--
-- Indexes for table `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `job_grades`
--
ALTER TABLE `job_grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `licenses`
--
ALTER TABLE `licenses`
  ADD PRIMARY KEY (`type`);

--
-- Indexes for table `owned_vehicles`
--
ALTER TABLE `owned_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Indexes for table `policereports`
--
ALTER TABLE `policereports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prop`
--
ALTER TABLE `prop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prop_owner`
--
ALTER TABLE `prop_owner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rented_vehicles`
--
ALTER TABLE `rented_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Indexes for table `renzu_customs`
--
ALTER TABLE `renzu_customs`
  ADD PRIMARY KEY (`shop`) USING BTREE;

--
-- Indexes for table `society_moneywash`
--
ALTER TABLE `society_moneywash`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`identifier`);

--
-- Indexes for table `user_clothes`
--
ALTER TABLE `user_clothes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_licenses`
--
ALTER TABLE `user_licenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_policearmory`
--
ALTER TABLE `user_policearmory`
  ADD PRIMARY KEY (`identifier`);

--
-- Indexes for table `vehiclekeys`
--
ALTER TABLE `vehiclekeys`
  ADD PRIMARY KEY (`plate`) USING BTREE;

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`model`);

--
-- Indexes for table `vehicle_categories`
--
ALTER TABLE `vehicle_categories`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `vehicle_sold`
--
ALTER TABLE `vehicle_sold`
  ADD PRIMARY KEY (`plate`);

--
-- Indexes for table `weashops`
--
ALTER TABLE `weashops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `whitelist`
--
ALTER TABLE `whitelist`
  ADD PRIMARY KEY (`identifier`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addon_account_data`
--
ALTER TABLE `addon_account_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `adminmode_bans`
--
ALTER TABLE `adminmode_bans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `adminmode_warnings`
--
ALTER TABLE `adminmode_warnings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `billing`
--
ALTER TABLE `billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `datastore_data`
--
ALTER TABLE `datastore_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `esx_manager_warns`
--
ALTER TABLE `esx_manager_warns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fine_types`
--
ALTER TABLE `fine_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `gangs`
--
ALTER TABLE `gangs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `gangs_grade`
--
ALTER TABLE `gangs_grade`
  MODIFY `gradeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `gksphone_app_chat`
--
ALTER TABLE `gksphone_app_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gksphone_bank_transfer`
--
ALTER TABLE `gksphone_bank_transfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gksphone_blockednumber`
--
ALTER TABLE `gksphone_blockednumber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gksphone_calls`
--
ALTER TABLE `gksphone_calls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gksphone_gallery`
--
ALTER TABLE `gksphone_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gksphone_gotur`
--
ALTER TABLE `gksphone_gotur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gksphone_gps`
--
ALTER TABLE `gksphone_gps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gksphone_group_message`
--
ALTER TABLE `gksphone_group_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gksphone_insto_accounts`
--
ALTER TABLE `gksphone_insto_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gksphone_insto_instas`
--
ALTER TABLE `gksphone_insto_instas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gksphone_insto_likes`
--
ALTER TABLE `gksphone_insto_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gksphone_insto_story`
--
ALTER TABLE `gksphone_insto_story`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gksphone_job_message`
--
ALTER TABLE `gksphone_job_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gksphone_lapraces`
--
ALTER TABLE `gksphone_lapraces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gksphone_mails`
--
ALTER TABLE `gksphone_mails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gksphone_messages`
--
ALTER TABLE `gksphone_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gksphone_messages_group`
--
ALTER TABLE `gksphone_messages_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gksphone_news`
--
ALTER TABLE `gksphone_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gksphone_settings`
--
ALTER TABLE `gksphone_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gksphone_tinderacc`
--
ALTER TABLE `gksphone_tinderacc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gksphone_tindermatch`
--
ALTER TABLE `gksphone_tindermatch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gksphone_tindermessage`
--
ALTER TABLE `gksphone_tindermessage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gksphone_twitter_accounts`
--
ALTER TABLE `gksphone_twitter_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gksphone_twitter_likes`
--
ALTER TABLE `gksphone_twitter_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gksphone_twitter_tweets`
--
ALTER TABLE `gksphone_twitter_tweets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gksphone_users_contacts`
--
ALTER TABLE `gksphone_users_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gksphone_vehicle_sales`
--
ALTER TABLE `gksphone_vehicle_sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gksphone_yellow`
--
ALTER TABLE `gksphone_yellow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `job_grades`
--
ALTER TABLE `job_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=935;

--
-- AUTO_INCREMENT for table `policereports`
--
ALTER TABLE `policereports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `prop`
--
ALTER TABLE `prop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=318;

--
-- AUTO_INCREMENT for table `prop_owner`
--
ALTER TABLE `prop_owner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `society_moneywash`
--
ALTER TABLE `society_moneywash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_clothes`
--
ALTER TABLE `user_clothes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_licenses`
--
ALTER TABLE `user_licenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `weashops`
--
ALTER TABLE `weashops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gangs_grade`
--
ALTER TABLE `gangs_grade`
  ADD CONSTRAINT `gangs_grade_ibfk_1` FOREIGN KEY (`gangId`) REFERENCES `gangs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `gangs_member`
--
ALTER TABLE `gangs_member`
  ADD CONSTRAINT `gangs_member_ibfk_1` FOREIGN KEY (`gangId`) REFERENCES `gangs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `gksphone_group_message`
--
ALTER TABLE `gksphone_group_message`
  ADD CONSTRAINT `FK_phonegroupmessage` FOREIGN KEY (`groupid`) REFERENCES `gksphone_messages_group` (`id`);

--
-- Constraints for table `gksphone_insto_instas`
--
ALTER TABLE `gksphone_insto_instas`
  ADD CONSTRAINT `FK_gksphone_insto_instas_gksphone_insto_accounts` FOREIGN KEY (`authorId`) REFERENCES `gksphone_insto_accounts` (`id`);

--
-- Constraints for table `gksphone_insto_likes`
--
ALTER TABLE `gksphone_insto_likes`
  ADD CONSTRAINT `FK_gksphone_insto_likes_gksphone_insto_accounts` FOREIGN KEY (`authorId`) REFERENCES `gksphone_insto_accounts` (`id`),
  ADD CONSTRAINT `FK_gksphone_insto_likes_gksphone_insto_instas` FOREIGN KEY (`inapId`) REFERENCES `gksphone_insto_instas` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `gksphone_insto_story`
--
ALTER TABLE `gksphone_insto_story`
  ADD CONSTRAINT `FK_gksphone_insto_story_gksphone_insto_accounts` FOREIGN KEY (`authorId`) REFERENCES `gksphone_insto_accounts` (`id`);

--
-- Constraints for table `gksphone_twitter_likes`
--
ALTER TABLE `gksphone_twitter_likes`
  ADD CONSTRAINT `FK_gksphone_twitter_likes_gksphone_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `gksphone_twitter_accounts` (`id`),
  ADD CONSTRAINT `FK_gksphone_twitter_likes_gksphone_twitter_tweets` FOREIGN KEY (`tweetId`) REFERENCES `gksphone_twitter_tweets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `gksphone_twitter_tweets`
--
ALTER TABLE `gksphone_twitter_tweets`
  ADD CONSTRAINT `FK_gksphone_twitter_tweets_gksphone_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `gksphone_twitter_accounts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
