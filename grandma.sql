-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 
-- Версия на сървъра: 10.1.8-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grandma`
--

-- --------------------------------------------------------

--
-- Структура на таблица `meals`
--

CREATE TABLE `meals` (
  `meal_id` int(11) NOT NULL,
  `meal_name` varchar(300) NOT NULL,
  `meal_description` text NOT NULL,
  `meal_price` int(10) NOT NULL,
  `date_deleted` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `meals`
--

INSERT INTO `meals` (`meal_id`, `meal_name`, `meal_description`, `meal_price`, `date_deleted`) VALUES
(1, 'вита баница със сирене', 'пшенично брашно, сол, растително масло сирене', 15, NULL),
(2, 'погача', 'пшенично брашно тип 500, сол, мая, яйца, мляко, растително масло, захар, сусам, мак', 10, NULL),
(3, 'боб яхния в гювеч ', '500 гр зрял боб\r\n5-6 гл. малък лук (или 1 голяма)\r\n1 глава чесън\r\n1 морков\r\n1 червена пиперка\r\n1 домат\r\n2-3 клонки пресен или сух джоджен\r\n5-6 с. л. олио\r\n1 с. л. червен пипер\r\n1 ч. л. брашно\r\nщипка сух джоджен\r\nщипка мащерка (по желание)\r\nщипка черен пипер (по желание)\r\nсол на вкус\r\n1 с. л. сода бикарбонат\r\n', 11, NULL),
(4, 'свинско месо на жар, 300 гр', 'свинско месо, сол', 9, NULL);

-- --------------------------------------------------------

--
-- Структура на таблица `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_name` varchar(300) NOT NULL,
  `oreder_phone` int(15) NOT NULL,
  `meal_id` int(11) NOT NULL,
  `order_num` int(10) NOT NULL,
  `order_sum` int(10) NOT NULL,
  `date_deleted` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `meals`
--
ALTER TABLE `meals`
  ADD PRIMARY KEY (`meal_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `meal_id` (`meal_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `meals`
--
ALTER TABLE `meals`
  MODIFY `meal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Ограничения за дъмпнати таблици
--

--
-- Ограничения за таблица `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_meal_id` FOREIGN KEY (`meal_id`) REFERENCES `meals` (`meal_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
