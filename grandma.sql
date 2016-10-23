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
(1, 'вита баница', 'пшенично брашно, сол, растително масло сирене', 15, NULL),
(2, 'погача', 'пшенично брашно тип 500, сол, мая, яйца, мляко, растително масло, захар, сусам, мак', 10, NULL),
(3, 'боб яхния в гювеч ', '500 гр зрял боб\r\n5-6 гл. малък лук (или 1 голяма)\r\n1 глава чесън\r\n1 морков\r\n1 червена пиперка\r\n1 домат\r\n2-3 клонки пресен или сух джоджен\r\n5-6 с. л. олио\r\n1 с. л. червен пипер\r\n1 ч. л. брашно\r\nщипка сух джоджен\r\nщипка мащерка (по желание)\r\nщипка черен пипер (по желание)\r\nсол на вкус\r\n1 с. л. сода бикарбонат\r\n', 11, NULL),
(4, 'свинско месо на жар, 300 гр', 'свинско месо, сол', 9, NULL),
(5, 'мекици', '1ч.чаша вода\r\n1кубче мая за хляб\r\nсол на вкус\r\n1 кг брашно\r\nолио', 10, NULL),
(6, 'гювеч със свинско месо', '1 кг свинско месо\r\n1 кг картофи\r\n2 глави лук\r\n4 бр. настъргани домати (или от консерва)\r\n4 бр. кисели краставички\r\n1 с.л. брашно\r\n2 ч.л. червен пипер\r\nмагданоз\r\n3 дафинови листа\r\n10 зърна черен пипер', 35, NULL),
(7, 'телешко с грах', 'телешко месо - 600 г\r\nолио - 75 мл\r\nлук - 1 голяма глава кромид\r\nдоматено пюре - 2 с.л.\r\nграх - 500 г замразен\r\nчервен пипер - 1 ч.л.\r\nдомати - 1 бр.\r\nвода\r\nкопър\r\nмагданоз\r\nсол', 25, NULL),
(8, 'сърми с месо', '500 г свинско кълцано месо (може и с кайма)\r\n кисела зелка\r\n1 ч.ч. ориз\r\n1 глава лук\r\n1 бр. морков\r\nолио\r\n2 бр. яйца\r\n300 г кисело мляко\r\nчубрица, червен и черен пипер, сол', 23, NULL),
(9, 'чушки с боб', '100 г сушени чушки\r\n1 ч.ч. боб\r\n1 глава лук\r\n1 с.л. червен пипер\r\n1 ч.л. джоджен\r\n1 ч.л. чубрица\r\n50 мл. олио', 15, NULL),
(10, 'манджа с тиквички', 'тиквички - 2 бр\r\nчесън - 6 - 7 главички пресен\r\nзелен лук - 2 - 3 стръка\r\nориз - 1 ч.ч\r\nджоджен - пресен\r\nчервен пипер\r\nчерен пипер\r\nолио\r\nсол', 19, NULL),
(11, 'млечница', '250 г ориз\r\n1 л. прясно мляко\r\n150 мл. вода\r\n7 с.л. захар\r\n1 ч.л. ванилия\r\n1/2 ч.л. канела', 8, NULL),
(12, 'тиква', 'тиква, мед, орехи', 12, NULL);

-- --------------------------------------------------------

--
-- Структура на таблица `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_name` varchar(300) NOT NULL,
  `order_phone` int(15) NOT NULL,
  `meal_id` int(11) NOT NULL,
  `order_num` int(10) NOT NULL,
  `order_sum` int(10) DEFAULT NULL,
  `date_deleted` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `orders`
--

INSERT INTO `orders` (`order_id`, `order_name`, `order_phone`, `meal_id`, `order_num`, `order_sum`, `date_deleted`) VALUES
(71, 'Ivan', 87587663, 2, 3, NULL, NULL),
(72, 'Ivan', 2147483647, 2, 3, NULL, NULL),
(73, 'Ivan', 2147483647, 2, 3, NULL, NULL),
(74, 'Ivan', 2147483647, 2, 3, NULL, NULL),
(75, 'Ivan', 2147483647, 2, 3, NULL, NULL),
(76, 'Ivan', 2147483647, 2, 3, NULL, NULL),
(77, 'Иван', 2147483647, 2, 2, NULL, NULL),
(78, 'Иван', 2147483647, 2, 2, NULL, NULL),
(79, 'Иван', 2147483647, 2, 2, NULL, NULL),
(80, 'Иван', 887656676, 2, 2, NULL, NULL),
(81, 'Ivan', 9989, 1, 11, NULL, NULL),
(82, 'Mitko', 976885768, 2, 3, NULL, NULL),
(83, 'ff', 9965634, 1, 3, NULL, NULL),
(84, 'ff', 9965634, 1, 3, NULL, NULL),
(85, 'ff', 9965634, 1, 3, NULL, NULL),
(86, 'ff', 9965634, 1, 3, NULL, NULL),
(87, 'ff', 9965634, 1, 3, NULL, NULL),
(88, 'Petar', 9965634, 1, 3, NULL, NULL),
(89, 'Petar', 9965634, 1, 3, NULL, NULL),
(90, 'Petar', 9965634, 1, 3, NULL, NULL),
(91, 'Petar', 9965634, 1, 3, NULL, NULL),
(92, 'Petar', 9965634, 1, 3, NULL, NULL),
(93, 'Petar', 9965634, 1, 3, NULL, NULL),
(94, 'Petar', 9965634, 1, 3, NULL, NULL),
(95, 'Petar', 9965634, 1, 3, NULL, NULL),
(109, 'gggg', 0, 1, 5, NULL, NULL);

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
  MODIFY `meal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
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
