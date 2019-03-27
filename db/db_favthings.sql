-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 27, 2019 at 09:50 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_favthings`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pokemon`
--

DROP TABLE IF EXISTS `tbl_pokemon`;
CREATE TABLE IF NOT EXISTS `tbl_pokemon` (
  `pokemon_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `pokemon_name` varchar(20) DEFAULT NULL,
  `pokemon_desc` text,
  `pokemon_type` varchar(20) DEFAULT NULL,
  `pokemon_spawn` varchar(30) DEFAULT NULL,
  `pokemon_img` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`pokemon_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_pokemon`
--

INSERT INTO `tbl_pokemon` (`pokemon_id`, `pokemon_name`, `pokemon_desc`, `pokemon_type`, `pokemon_spawn`, `pokemon_img`) VALUES
(1, 'Poliwag', 'Poliwag has a very thin skin. It is possible to see the Pokémon\'s spiral innards right through the skin. Despite its thinness, however, the skin is also very flexible. Even sharp fangs bounce right off it.', 'water', 'river, ocean', 'poliwag.jpg'),
(2, 'Oddish', 'During the daytime, Oddish buries itself in soil to absorb nutrients from the ground using its entire body. The more fertile the soil, the glossier its leaves become.', 'grass', 'forest, plains', 'oddish.png'),
(3, 'Cyndaquil', 'Cyndaquil protects itself by flaring up the flames on its back. The flames are vigorous if the Pokémon is angry. However, if it is tired, the flames splutter fitfully with incomplete combustion.', 'fire', 'desert', 'cyndaquil.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
