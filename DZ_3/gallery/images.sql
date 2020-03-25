-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 25 2020 г., 21:33
-- Версия сервера: 10.3.13-MariaDB-log
-- Версия PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `gallery2`
--

-- --------------------------------------------------------

--
-- Структура таблицы `images`
--

CREATE TABLE `images` (
  `id` int(11) UNSIGNED NOT NULL,
  `imgSmall` char(255) NOT NULL,
  `imgBig` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `images`
--

INSERT INTO `images` (`id`, `imgSmall`, `imgBig`) VALUES
(1, 'gallery_img/small/01.jpg', 'gallery_img/big/01.jpg'),
(2, 'gallery_img/small/02.jpg', 'gallery_img/big/02.jpg'),
(3, 'gallery_img/small/03.jpg', 'gallery_img/big/03.jpg'),
(4, 'gallery_img/small/04.jpg', 'gallery_img/big/04.jpg'),
(5, 'gallery_img/small/05.jpg', 'gallery_img/big/05.jpg'),
(6, 'gallery_img/small/06.jpg', 'gallery_img/big/06.jpg'),
(7, 'gallery_img/small/07.jpg', 'gallery_img/big/07.jpg'),
(8, 'gallery_img/small/08.jpg', 'gallery_img/big/08.jpg'),
(9, 'gallery_img/small/09.jpg', 'gallery_img/big/09.jpg'),
(10, 'gallery_img/small/10.jpg', 'gallery_img/big/10.jpg'),
(11, 'gallery_img/small/11.jpg', 'gallery_img/big/11.jpg'),
(12, 'gallery_img/small/12.jpg', 'gallery_img/big/12.jpg'),
(13, 'gallery_img/small/13.jpg', 'gallery_img/big/13.jpg'),
(14, 'gallery_img/small/14.jpg', 'gallery_img/big/14.jpg'),
(15, 'gallery_img/small/15.jpg', 'gallery_img/big/15.jpg');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
