-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 29 2020 г., 20:25
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
-- База данных: `pc_shop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `goods`
--

CREATE TABLE `goods` (
  `id` int(10) UNSIGNED NOT NULL,
  `nameProduct` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` int(11) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `goods`
--

INSERT INTO `goods` (`id`, `nameProduct`, `description`, `price`, `img`) VALUES
(1, 'Материнская плата GIGABYTE TRX40 DESIGNARE', '[sTRX4, AMD TRX40, 8xDDR4-4400 МГц, 4xPCI-Ex16, аудио 7.1, XL-ATX]', 58299, 'images/GIGABYTE_TRX40_DESIGNARE.jpg'),
(2, 'Материнская плата ASUS Pro WS C621-64L SAGE', '[sTRX4, AMD TRX40, 8xDDR4-4400 МГц, 4xPCI-Ex16, аудио 7.1, XL-ATX]', 57099, 'images/ASUS_Pro_WS_C621_64L_SAGE.jpg'),
(3, 'Материнская плата MSI CREATOR TRX40', '[sTRX4, AMD TRX40, 8xDDR4-4666 МГц, 4xPCI-Ex16, аудио 7.1, E-ATX]', 55999, 'images/MSI_CREATOR_TRX40.jpg'),
(4, 'Материнская плата MSI Z390 MEG GODLIKE', '[LGA 1151-v2, Intel Z390, 4xDDR4-4600 МГц, 4xPCI-Ex16, аудио 7.1, E-ATX]', 51099, 'images/MSI_Z390_MEG_GODLIKE.png'),
(5, 'Материнская плата GIGABYTE X570 AORUS MASTER', 'гнездо процессора: SocketAM4; чипсет AMD X570; память DDR4 — 4слота; частотой до 3200МГц; поддержка: SLI/CrossFire; SATA RAID, WiFi; Bluetooth; тип поставки: Ret; ATX', 38460, 'images/GIGABYTE_X570_AORUS_MASTER.jpg'),
(6, 'Материнская плата ASUS ROG CROSSHAIR VIII HERO', 'гнездо процессора: SocketAM4; чипсет AMD X570; память DDR4 — 4слота; частотой до 3200МГц; поддержка: SLI/CrossFire; SATA RAID, тип поставки: Ret; ATX', 37980, 'images/ASUS_ROG_CROSSHAIR_VIII_HERO.jpg'),
(7, 'Материнская плата MSI MEG X570 ACE', 'гнездо процессора: SocketAM4; чипсет AMD X570; память DDR4 — 4слота; частотой до 2666МГц; поддержка: SLI/CrossFire; SATA RAID, WiFi; Bluetooth; тип поставки: Ret; ATX', 36030, 'images/MSI_MEG_X570_ACE.jpg'),
(8, 'Материнская плата ASROCK Z390 PHANTOM GAMING X', 'гнездо процессора: LGA 1151v2; чипсет Intel Z390; память DDR4 — 4слота; частотой до 2666МГц; поддержка: SLI/CrossFire; SATA RAID, WiFi; Bluetooth; тип поставки: Ret; ATX', 29320, 'images/ASROCK_Z390_PHANTOM_GAMING_X.jpg'),
(9, 'Материнская плата MSI MEG X570 UNIFY', 'гнездо процессора: SocketAM4; чипсет AMD X570; память DDR4 — 4слота; частотой до 3200МГц; поддержка: SLI/CrossFire; SATA RAID, WiFi; Bluetooth; тип поставки: Ret; ATX', 28140, 'images/MSI_MEG_X570_UNIFY.jpg'),
(10, 'Материнская плата GIGABYTE X399 AORUS PRO', 'гнездо процессора: Socket TR4; чипсет AMD X399; память DDR4 — 8слота; частотой до 2667МГц; поддержка: SLI/CrossFire; SATA RAID, тип поставки: Ret; ATX', 28070, 'images/GIGABYTE_X399_AORUS_PRO.jpg'),
(11, 'Материнская плата GIGABYTE Z390 AORUS MASTER', 'гнездо процессора: LGA 1151v2; чипсет Intel Z390; память DDR4 — 4слота; частотой до 2666МГц; поддержка: SLI/CrossFire; SATA RAID, WiFi; Bluetooth; тип поставки: Ret; ATX', 26690, 'images/GIGABYTE_Z390_AORUS_MASTER.jpg'),
(12, 'Материнская плата GIGABYTE X570 AORUS PRO', 'гнездо процессора: SocketAM4; чипсет AMD X570; память DDR4 — 4слота; частотой до 3200МГц; поддержка: SLI/CrossFire; SATA RAID, тип поставки: Ret; ATX', 25990, 'images/GIGABYTE_X570_AORUS_PRO_b.jpg'),
(13, 'Материнская плата ASUS ROG CROSSHAIR VII HERO', 'гнездо процессора: SocketAM4; чипсет AMD X470; память DDR4 — 4слота; частотой до 2666МГц; поддержка: SLI/CrossFire; SATA RAID, тип поставки: Ret; ATX', 25180, 'images/ASUS_ROG_CROSSHAIR_VII_HEROb.jpg'),
(14, 'Материнская плата MSI MPG X570 GAMING PRO CARBON WIFI', 'гнездо процессора: SocketAM4; чипсет AMD X570; память DDR4 — 4слота; частотой до 2666МГц; поддержка: CrossFire; SATA RAID, WiFi; Bluetooth; тип поставки: Ret; ATX', 25160, 'images/MSI_MPG_X570_GAMING_PRO_CARBON.jpg'),
(15, 'Материнская плата ASUS ROG STRIX X570-F GAMING', 'гнездо процессора: SocketAM4; чипсет AMD X570; память DDR4 — 4слота; частотой до 2666МГц; поддержка: SLI/CrossFire; SATA RAID, тип поставки: Ret; ATX', 24990, 'images/ASUS_ROG_STRIX_X570-F_GAMING.jpg'),
(16, 'Материнская плата ASUS PRIME X570-PRO', 'гнездо процессора: SocketAM4; чипсет AMD X570; память DDR4 — 4слота; частотой до 3200МГц; поддержка: SLI/CrossFire; SATA RAID, тип поставки: Ret; ATX', 24120, 'images/ASUS_PRIME_X570-PRO.jpg'),
(17, 'Материнская плата MSI X299 SLI PLUS', 'гнездо процессора: LGA 2066; чипсет Intel X299; память DDR4 — 8слота; частотой до 2667МГц; поддержка: SLI/CrossFire; SATA RAID, тип поставки: Ret; ATX', 23630, 'images/MSI_X299_SLI_PLUS.jpg'),
(18, 'Материнская плата ASUS ROG STRIX Z390-E GAMING', 'гнездо процессора: LGA 1151v2; чипсет Intel Z390; память DDR4 — 4слота; частотой до 2666МГц; поддержка: SLI/CrossFire; SATA RAID, WiFi; Bluetooth; тип поставки: Ret; ATX', 22860, 'images/ASUS_ROG_STRIX_Z390-E_GAMING.jpg'),
(19, 'Материнская плата ASROCK Z390 TAICHI', 'гнездо процессора: LGA 1151v2; чипсет Intel Z390; память DDR4 — 4слота; частотой до 2666МГц; поддержка: SLI/CrossFire; SATA RAID, WiFi; Bluetooth; тип поставки: Ret; ATX', 21130, 'images/ASROCK_Z390_TAICHI.jpg'),
(20, 'Материнская плата ASUS ROG STRIX Z390-F GAMING', 'гнездо процессора: LGA 1151v2; чипсет Intel Z390; память DDR4 — 4слота; частотой до 2666МГц; поддержка: SLI/CrossFire; SATA RAID, тип поставки: Ret; ATX', 21070, 'images/ASUS_ROG_STRIX_Z390-F_GAMING.jpg'),
(21, 'Материнская плата ASROCK X570 TAICHI', 'гнездо процессора: SocketAM4; чипсет AMD X570; память DDR4 — 4слота; частотой до 3200МГц; поддержка: SLI/CrossFire; SATA RAID, WiFi; Bluetooth; тип поставки: Ret; ATX', 20990, 'images/ASROCK_X570_TAICHIb.jpg'),
(22, 'Материнская плата ASUS ROG STRIX Z390-I GAMING', 'гнездо процессора: LGA 1151v2; чипсет Intel Z390; память DDR4 — 2слота; частотой до 2666МГц; SATA RAID, WiFi; Bluetooth; тип поставки: Ret; mini-ITX', 20910, 'images/ASUS_ROG_STRIX Z390-I_GAMING.jpg'),
(23, 'Материнская плата ASROCK X570 STEEL LEGEND', 'гнездо процессора: SocketAM4; чипсет AMD X570; память DDR4 — 4слота; частотой до 3200МГц; поддержка: CrossFire; SATA RAID, тип поставки: Ret; ATX', 20290, 'images/ASROCK_X570_STEEL_LEGEND.jpg'),
(24, 'Материнская плата ASROCK X570 EXTREME4', 'гнездо процессора: SocketAM4; чипсет AMD X570; память DDR4 — 4слота; частотой до 3200МГц; поддержка: CrossFire; SATA RAID, тип поставки: Ret; ATX', 19710, 'images/ASROCK_X570_EXTREME4.jpg'),
(25, 'Материнская плата ASUS ROG STRIX X470-F GAMING', 'гнездо процессора: SocketAM4; чипсет AMD X470; память DDR4 — 4слота; частотой до 2666МГц; поддержка: SLI/CrossFire; SATA RAID, тип поставки: Ret; ATX', 19440, 'images/ASUS_ROG_STRIX_X470-F_GAMING.jpg'),
(26, 'Материнская плата GIGABYTE Z390 AORUS PRO WIFI', 'гнездо процессора: LGA 1151v2; чипсет Intel Z390; память DDR4 — 4слота; частотой до 2666МГц; поддержка: SLI/CrossFire; SATA RAID, WiFi; Bluetooth; тип поставки: Ret; ATX', 19170, 'images/GIGABYTE_Z390_AORUS_PRO_WIFI1127935_v01_b.jpg'),
(27, 'Материнская плата MSI MPG Z390 GAMING PRO CARBON', 'гнездо процессора: LGA 1151v2; чипсет Intel Z390; память DDR4 — 4слота; частотой до 2666МГц; поддержка: SLI/CrossFire; SATA RAID, тип поставки: Ret; ATX', 19090, 'images/1090481_v01_b.jpg'),
(28, 'Материнская плата ASUS ROG STRIX Z390-H GAMING', 'гнездо процессора: LGA 1151v2; чипсет Intel Z390; память DDR4 — 4слота; частотой до 2666МГц; поддержка: SLI/CrossFire; SATA RAID, тип поставки: Ret; ATX', 19090, 'images/1094037_v01_b.jpg'),
(29, 'Материнская плата GIGABYTE X570 AORUS ELITE', 'гнездо процессора: SocketAM4; чипсет AMD X570; память DDR4 — 4слота; частотой до 3200МГц; поддержка: CrossFire; SATA RAID, тип поставки: Ret; ATX', 18810, 'images/1160572_v01_b.jpg'),
(30, 'Материнская плата ASUS PRIME Z390-A', 'гнездо процессора: LGA 1151v2; чипсет Intel Z390; память DDR4 — 4слота; частотой до 2666МГц; поддержка: SLI/CrossFire; SATA RAID, тип поставки: Ret; ATX', 18520, 'images/1100942_v01_b.jpg'),
(31, 'Материнская плата GIGABYTE Z390 AORUS PRO', 'гнездо процессора: LGA 1151v2; чипсет Intel Z390; память DDR4 — 4слота; частотой до 2666МГц; поддержка: SLI/CrossFire; SATA RAID, тип поставки: Ret; ATX', 18510, 'images/1102378_v01_b.jpg'),
(32, 'Материнская плата MSI MPG X570 GAMING EDGE WIFI', 'гнездо процессора: SocketAM4; чипсет AMD X570; память DDR4 — 4слота; частотой до 2666МГц; поддержка: CrossFire; SATA RAID, WiFi; Bluetooth; тип поставки: Ret; ATX', 17570, 'images/1156377_v01_b.jpg'),
(33, 'Материнская плата MSI MPG Z390M GAMING EDGE AC', 'гнездо процессора: LGA 1151v2; чипсет Intel Z390; память DDR4 — 4слота; частотой до 2666МГц; поддержка: SLI/CrossFire; SATA RAID, WiFi; Bluetooth; тип поставки: Ret; mATX', 17550, 'images/1165808_v01_b.jpg'),
(34, 'Материнская плата MSI MPG Z390 GAMING EDGE AC', 'гнездо процессора: LGA 1151v2; чипсет Intel Z390; память DDR4 — 4слота; частотой до 2666МГц; поддержка: SLI/CrossFire; SATA RAID, WiFi; Bluetooth; тип поставки: Ret; ATX', 17530, 'images/1090482_v01_b.jpg'),
(35, 'Материнская плата ASROCK X570 PRO4', 'гнездо процессора: SocketAM4; чипсет AMD X570; память DDR4 — 4слота; частотой до 3200МГц; поддержка: CrossFire; SATA RAID, тип поставки: Ret; ATX', 17130, 'images/1161974_v01_b.jpg');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `goods`
--
ALTER TABLE `goods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
