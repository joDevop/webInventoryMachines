-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-08-2020 a las 04:28:10
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_inventor_machines`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `table_machines`
--

CREATE TABLE `table_machines` (
  `id_machine` int(100) NOT NULL,
  `lote` int(4) NOT NULL,
  `type_machine` varchar(20) NOT NULL,
  `manufacturer` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `serial` varchar(255) NOT NULL,
  `ram_slot_00` varchar(255) NOT NULL,
  `ram_slot_01` varchar(255) NOT NULL,
  `hard_drive` varchar(255) NOT NULL,
  `cpu` varchar(255) NOT NULL,
  `ip_range` varchar(15) NOT NULL,
  `mac_address` varchar(17) NOT NULL,
  `anydesk` varchar(255) DEFAULT NULL,
  `campus` varchar(45) NOT NULL,
  `location` varchar(255) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `imagen` varchar(50) DEFAULT NULL,
  `ruta_imagen` varchar(50) DEFAULT NULL,
  `comment` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `table_machines`
--

INSERT INTO `table_machines` (`id_machine`, `lote`, `type_machine`, `manufacturer`, `model`, `serial`, `ram_slot_00`, `ram_slot_01`, `hard_drive`, `cpu`, `ip_range`, `mac_address`, `anydesk`, `campus`, `location`, `create_date`, `update_at`, `imagen`, `ruta_imagen`, `comment`) VALUES
(1, 0, 'TV RASPBERRY PI', '', '', '', '', '', '', '', '192.168.71.26', 'B8:27:EB:71:97', NULL, 'VIVA 1A IPS MACARENA', '', '2020-06-12 00:00:00', '2020-08-18 08:03:46', 'raspberry.png', NULL, NULL),
(2, 0, 'TV RASPBERRY PI', '', '', '', '', '', '', '', '192.168.71.27', 'B8:27:EB:39:0C', NULL, 'VIVA 1A IPS MACARENA', '', '2020-06-12 00:00:00', '2020-08-18 08:03:46', 'raspberry.png', NULL, NULL),
(3, 0, 'TV RASPBERRY PI', '', '', '', '', '', '', '', '192.168.71.28', 'B8:27:EB:5F:59', NULL, 'VIVA 1A IPS MACARENA', '', '2020-06-12 00:00:00', '2020-08-18 08:03:46', 'raspberry.png', NULL, NULL),
(4, 0, 'TV RASPBERRY PI', '', '', '', '', '', '', '', '192.168.71.29', 'B8:27:EB:3E:16', NULL, 'VIVA 1A IPS MACARENA', '', '2020-06-12 00:00:00', '2020-08-18 08:03:46', 'raspberry.png', NULL, NULL),
(5, 0, 'TV RASPBERRY PI', '', '', '', '', '', '', '', '192.168.71.80', 'B8:27:EB:7B:FA', NULL, 'VIVA 1A IPS MACARENA', '', '2020-06-12 00:00:00', '2020-08-18 08:03:46', 'raspberry.png', NULL, NULL),
(6, 0, 'TV RASPBERRY PI', '', '', '', '', '', '', '', '192.168.71.81', 'B8:27:EB:7F:5C', NULL, 'VIVA 1A IPS MACARENA', '', '2020-06-12 00:00:00', '2020-08-18 08:03:46', 'raspberry.png', NULL, NULL),
(7, 0, 'TV RASPBERRY PI', '', '', '', '', '', '', '', '192.168.71.64', '', NULL, 'VIVA 1A IPS MACARENA', '', '2020-06-12 00:00:00', '2020-08-18 08:03:46', 'raspberry.png', NULL, NULL),
(8, 0, 'ATRIL', '', '', '', '', '', '', '', '192.168.71.102', '6C:4B:90:34:35', NULL, 'VIVA 1A IPS MACARENA', '', '2020-06-12 00:00:00', '2020-08-18 07:56:02', 'kiosk.png', NULL, '[ ATRIL DE TURNERO ]'),
(9, 0, 'ATRIL', '', '', '', '', '', '', '', '192.168.71.25', '6C:4B:90:50:01', NULL, 'VIVA 1A IPS MACARENA', '', '2020-06-12 00:00:00', '2020-08-18 07:57:15', 'kiosk.png', NULL, '[ ATRIL DE TURNERO ]'),
(10, 0, 'ATRIL', '', '', '', '', '', '', '', '192.168.71.213', '', NULL, 'VIVA 1A IPS MACARENA', '', '2020-06-12 00:00:00', '2020-08-18 07:57:15', 'kiosk.png', NULL, NULL),
(11, 0, 'TV RASPBERRY PI', '', '', '', '', '', '', '', '192.168.62.26', 'B8:27:EB:AC:53', NULL, 'VIVA 1A IPS SURA SAN JOSE', '', '2020-06-12 00:00:00', '2020-08-18 08:03:46', 'raspberry.png', NULL, NULL),
(12, 0, 'TV RASPBERRY PI', '', '', '', '', '', '', '', '192.168.62.28', 'B8:27:EB:5E:3B', NULL, 'VIVA 1A IPS SURA SAN JOSE', '', '2020-06-12 00:00:00', '2020-08-18 08:03:46', 'raspberry.png', NULL, NULL),
(13, 0, 'TV RASPBERRY PI', '', '', '', '', '', '', '', '192.168.62.29', 'B8:27:EB:68:55', NULL, 'VIVA 1A IPS SURA SAN JOSE', '', '2020-06-12 00:00:00', '2020-08-18 08:03:46', 'raspberry.png', NULL, NULL),
(14, 0, 'TV RASPBERRY PI', '', '', '', '', '', '', '', '192.168.62.30', 'B8:27:EB:F8:D4', NULL, 'VIVA 1A IPS SURA SAN JOSE', '', '2020-06-12 00:00:00', '2020-08-18 08:03:46', 'raspberry.png', NULL, NULL),
(15, 0, 'TV RASPBERRY PI', '', '', '', '', '', '', '', '192.168.62.31', 'B8:27:EB:2D:B6', NULL, 'VIVA 1A IPS SURA SAN JOSE', '', '2020-06-12 00:00:00', '2020-08-18 08:03:46', 'raspberry.png', NULL, NULL),
(16, 0, 'TV RASPBERRY PI', '', '', '', '', '', '', '', '192.168.62.33', 'B8:27:EB:9D:57', NULL, 'VIVA 1A IPS SURA SAN JOSE', '', '2020-06-12 00:00:00', '2020-08-18 08:03:46', 'raspberry.png', NULL, NULL),
(17, 0, 'ATRIL', '', '', '', '', '', '', '', '192.168.62.122', 'D0:27:88:91:5F', NULL, 'VIVA 1A IPS SURA SAN JOSE', '', '2020-06-12 00:00:00', '2020-08-18 07:57:15', 'kiosk.png', NULL, NULL),
(18, 0, 'ATRIL', '', '', '', '', '', '', '', '192.168.62.34', '98:FA:9B:29:90', NULL, 'VIVA 1A IPS SURA SAN JOSE', '', '2020-06-12 00:00:00', '2020-08-18 07:57:15', 'kiosk.png', NULL, NULL),
(19, 0, 'ATRIL', '', '', '', '', '', '', '', '192.168.62.37', '', NULL, 'VIVA 1A IPS SURA SAN JOSE', '', '2020-06-12 00:00:00', '2020-08-18 07:57:15', 'kiosk.png', NULL, NULL),
(20, 0, 'ATRIL', '', '', '', '', '', '', '', '192.168.62.25', '6C:4B:90:67:9F', NULL, 'VIVA 1A IPS SURA SAN JOSE', '', '2020-06-12 00:00:00', '2020-08-18 07:57:15', 'kiosk.png', NULL, NULL),
(21, 0, 'ATRIL', '', '', '', '', '', '', '', '192.168.12.25', '6C:4B:90:4F:F9', NULL, 'VIVA 1A IPS CALLE 30', '', '2020-06-12 00:00:00', '2020-08-18 07:57:15', 'kiosk.png', NULL, NULL),
(22, 0, 'ATRIL', '', '', '', '', '', '', '', '192.168.12.35', '', NULL, 'VIVA 1A IPS CALLE 30', '', '2020-06-12 00:00:00', '2020-08-18 07:57:15', 'kiosk.png', NULL, NULL),
(23, 0, 'TV RASPBERRY PI', '', '', '', '', '', '', '', '192.168.12.29', 'B8:27:EB:8A:23', NULL, 'VIVA 1A IPS CALLE 30', '', '2020-06-12 00:00:00', '2020-08-18 08:03:46', 'raspberry.png', NULL, NULL),
(24, 0, 'TV RASPBERRY PI', '', '', '', '', '', '', '', '192.168.12.28', 'B8:27:EB:AE:15', NULL, 'VIVA 1A IPS CALLE 30', '', '2020-06-12 00:00:00', '2020-08-18 08:03:46', 'raspberry.png', NULL, NULL),
(25, 0, 'TV RASPBERRY PI', '', '', '', '', '', '', '', '192.168.12.100', 'B8:27:EB:63:99', NULL, 'VIVA 1A IPS CALLE 30', '', '2020-06-12 00:00:00', '2020-08-18 08:03:46', 'raspberry.png', NULL, NULL),
(26, 0, 'TV RASPBERRY PI', '', '', '', '', '', '', '', '192.168.12.101', 'B8:27:EB:63:DA', NULL, 'VIVA 1A IPS CALLE 30', '', '2020-08-12 00:00:00', '2020-08-18 08:03:46', 'raspberry.png', NULL, NULL),
(27, 0, 'TV RASPBERRY PI', '', '', '', '', '', '', '', '192.168.16.26', '', NULL, 'VIVA 1A IPS CARRERA 16', '', '2020-06-12 00:00:00', '2020-08-18 08:03:46', 'raspberry.png', NULL, NULL),
(28, 0, 'TV RASPBERRY PI', '', '', '', '', '', '', '', '192.168.16.28', '', NULL, 'VIVA 1A IPS CARRERA 16', '', '2020-06-12 00:00:00', '2020-08-18 08:03:46', 'raspberry.png', NULL, NULL),
(29, 0, 'ATRIL', '', '', '', '', '', '', '', '192.168.16.25', 'FC:3F:DB:0A:D2', NULL, 'VIVA 1A IPS CARRERA 16', '', '2020-06-12 00:00:00', '2020-08-18 07:57:15', 'kiosk.png', NULL, NULL),
(30, 0, 'ATRIL', '', '', '', '', '', '', '', '192.168.16.30', '6C:4B:90:67:9F', NULL, 'VIVA 1A IPS CARRERA 16', '', '2020-06-12 00:00:00', '2020-08-18 07:57:15', 'kiosk.png', NULL, NULL),
(35, 0, 'PC', 'LENOVO              ', 'THINKCENTRE ALL IN ONE', 'S1H03LKD', '4GB DDR3 SO-DIMM', '4GB DDR3 SO-DIMM', '500GB', 'INTEL(R) CORE(TM) I5-4460T CPU @ 1.90GHZ, 1901 MHZ, 4 PROCESADORES PRINCIPALES, 4 PROCESADORES LÓGICOS', '192.168.71.240', '98-EE-CB-25-1F-C2', '465 562 426', 'VIVA 1A IPS MACARENA', 'OFICINA DE SISTEMAS ', '2020-08-10 10:40:05', '2020-08-24 20:40:45', 'pc.png', NULL, ''),
(48, 0, 'PC', 'LENOVO', 'M710Q', 'MJ06PZFW', '4GB DDR3 SO-DIMM', 'NULL', '1TB', 'Intel(R) Core(TM) i5-7400T CPU @ 2.40GHz, 2400 Mhz', '192.168.71.123', '6C-4B-90-EA-67', '791 415 611', 'VIVA 1A IPS MACARENA', 'LINEA DE FRENTE MODULO 02', '2020-08-20 00:00:00', '2020-08-20 21:43:38', '', NULL, ''),
(49, 0, 'PC', 'LENOVO', 'M710Q', 'MJ06PZKJ', '4GB DDR4 SO-DIMM', 'NULL', '1TB', 'Intel(R) Core(TM) i5-7400T CPU @ 2.40GHz, 2400 Mhz', '192.168.71.162', '6C-4B-90-EA-67', '929 589 135', 'VIVA 1A IPS MACARENA', 'LINEA DE FRENTE MODULO 08', '2020-08-20 00:00:00', '2020-08-20 23:08:43', '', NULL, ''),
(50, 0, 'PC', 'LENOVO', 'M710Q', 'MJ06PZHR', '4GB DDR3 SO-DIMM', 'NULL', '1TB', 'Intel(R) Core(TM) i5-7400T CPU @ 2.40GHz, 2400 Mhz', '192.168.71.67', '6C-4B-90-52-50', '694 961 071', 'VIVA 1A IPS MACARENA', 'CONSULTORIO 24', '2020-08-20 00:00:00', '2020-08-21 00:46:42', '', NULL, ''),
(51, 0, 'PC', 'LENOVO', 'M710Q', 'MJ06PZFR', '4GB DDR3 SO-DIMM', 'NULL', '1TB', 'Intel(R) Core(TM) i5-7400T CPU @ 2.40GHz, 2400 Mhz', '192.168.71.180', '6C-4B-90-52-4F', '421662546', 'VIVA 1A IPS MACARENA', 'CONSULTORIO 25', '2020-08-20 00:00:00', '2020-08-21 02:39:05', '', NULL, ''),
(116, 1000, ' PC ', '', '', ' PC0UF1HX ', '', '', '', '', '', '', NULL, ' VIVA 1A IPS MACARENA ', ' consultorio1 ', '0000-00-00 00:00:00', '2020-08-24 22:13:27', NULL, NULL, NULL),
(117, 1000, ' PC ', '', '', ' PC0UF3CU ', '', '', '', '', '', '', NULL, ' VIVA 1A IPS MACARENA ', ' consultorio2 ', '0000-00-00 00:00:00', '2020-08-24 22:13:27', NULL, NULL, NULL),
(118, 1000, ' PC ', '', '', ' PC0UF3CN ', '', '', '', '', '', '', NULL, ' VIVA 1A IPS MACARENA ', ' consultorio3 ', '0000-00-00 00:00:00', '2020-08-24 22:13:27', NULL, NULL, NULL),
(119, 1000, ' PC ', '', '', ' PC0UF3P6 ', '', '', '', '', '', '', NULL, ' VIVA 1A IPS MACARENA ', ' consultorio4 ', '0000-00-00 00:00:00', '2020-08-24 22:13:27', NULL, NULL, NULL),
(120, 1000, ' PC ', '', '', ' PC0UF3P4 ', '', '', '', '', '', '', NULL, ' VIVA 1A IPS MACARENA ', ' consultorio5 ', '0000-00-00 00:00:00', '2020-08-24 22:13:27', NULL, NULL, NULL),
(121, 1000, ' PC ', '', '', ' MJ06PZGB ', '', '', '', '', '', '', NULL, ' VIVA 1A IPS MACARENA ', ' consultorio7 ', '0000-00-00 00:00:00', '2020-08-24 22:13:27', NULL, NULL, NULL),
(122, 1000, ' PC ', '', '', ' MJ06PZJJ ', '', '', '', '', '', '', NULL, ' VIVA 1A IPS MACARENA ', ' consultorio8 ', '0000-00-00 00:00:00', '2020-08-24 22:13:27', NULL, NULL, NULL),
(123, 1000, ' PC ', '', '', ' MJ06PZG8 ', '', '', '', '', '', '', NULL, ' VIVA 1A IPS MACARENA ', ' consultorio9 ', '0000-00-00 00:00:00', '2020-08-24 22:13:27', NULL, NULL, NULL),
(124, 1000, ' PC ', '', '', ' MJ06PZHH ', '', '', '', '', '', '', NULL, ' VIVA 1A IPS MACARENA ', ' consultorio10 ', '0000-00-00 00:00:00', '2020-08-24 22:13:27', NULL, NULL, NULL),
(125, 1000, ' PC ', '', '', ' MJ06PZGT ', '', '', '', '', '', '', NULL, ' VIVA 1A IPS MACARENA ', ' consultorio11 ', '0000-00-00 00:00:00', '2020-08-24 22:13:27', NULL, NULL, NULL),
(126, 1000, ' PC ', '', '', ' MJ06PZK1 ', '', '', '', '', '', '', NULL, ' VIVA 1A IPS MACARENA ', ' consultorio12 ', '0000-00-00 00:00:00', '2020-08-24 22:13:27', NULL, NULL, NULL),
(127, 1000, ' PC ', '', '', ' MJ06PZFH ', '', '', '', '', '', '', NULL, ' VIVA 1A IPS MACARENA ', ' consultorio13 ', '0000-00-00 00:00:00', '2020-08-24 22:13:27', NULL, NULL, NULL),
(128, 1000, ' PC ', '', '', ' MJ06PZFU ', '', '', '', '', '', '', NULL, ' VIVA 1A IPS MACARENA ', ' consultorio14 ', '0000-00-00 00:00:00', '2020-08-24 22:13:27', NULL, NULL, NULL),
(129, 1000, ' PC ', '', '', ' MJ06PZGG ', '', '', '', '', '', '', NULL, ' VIVA 1A IPS MACARENA ', ' consultorio15 ', '0000-00-00 00:00:00', '2020-08-24 22:13:27', NULL, NULL, NULL),
(130, 1000, ' PC ', '', '', ' MJ06PZJX ', '', '', '', '', '', '', NULL, ' VIVA 1A IPS MACARENA ', ' consultorio16 ', '0000-00-00 00:00:00', '2020-08-24 22:13:27', NULL, NULL, NULL),
(131, 1000, ' PC ', '', '', ' MJ06PZEV ', '', '', '', '', '', '', NULL, ' VIVA 1A IPS MACARENA ', ' consultorio17 ', '0000-00-00 00:00:00', '2020-08-24 22:13:27', NULL, NULL, NULL),
(132, 1000, ' PC ', '', '', ' MJ06PZKE ', '', '', '', '', '', '', NULL, ' VIVA 1A IPS MACARENA ', ' consultorio19 ', '0000-00-00 00:00:00', '2020-08-24 22:13:27', NULL, NULL, NULL),
(133, 1000, ' PC ', '', '', ' MJ06PZEB ', '', '', '', '', '', '', NULL, ' VIVA 1A IPS MACARENA ', ' consultorio20 ', '0000-00-00 00:00:00', '2020-08-24 22:13:27', NULL, NULL, NULL),
(134, 1000, ' PC ', '', '', ' MJ06PZKZ ', '', '', '', '', '', '', NULL, ' VIVA 1A IPS MACARENA ', ' consultorio21 ', '0000-00-00 00:00:00', '2020-08-24 22:13:27', NULL, NULL, NULL),
(135, 1000, ' PC ', '', '', ' MJ06PZJR ', '', '', '', '', '', '', NULL, ' VIVA 1A IPS MACARENA ', ' consultorio23 ', '0000-00-00 00:00:00', '2020-08-24 22:13:27', NULL, NULL, NULL),
(136, 1000, ' PC ', '', '', ' MJ06PZF8 ', '', '', '', '', '', '', NULL, ' VIVA 1A IPS MACARENA ', ' consultorio27 ', '0000-00-00 00:00:00', '2020-08-24 22:13:27', NULL, NULL, NULL),
(137, 1000, ' PC ', '', '', ' MJ06PZHB ', '', '', '', '', '', '', NULL, ' VIVA 1A IPS MACARENA ', ' consultorio28 ', '0000-00-00 00:00:00', '2020-08-24 22:13:27', NULL, NULL, NULL),
(138, 1000, ' PC ', '', '', ' MJ06PZJG ', '', '', '', '', '', '', NULL, ' VIVA 1A IPS MACARENA ', ' consultorio29 ', '0000-00-00 00:00:00', '2020-08-24 22:13:27', NULL, NULL, NULL),
(139, 1000, ' PC ', '', '', ' MJ06PZH6 ', '', '', '', '', '', '', NULL, ' VIVA 1A IPS MACARENA ', ' consultorio30 ', '0000-00-00 00:00:00', '2020-08-24 22:13:27', NULL, NULL, NULL),
(140, 1000, ' PC ', '', '', ' MJ06PZGS ', '', '', '', '', '', '', NULL, ' VIVA 1A IPS MACARENA ', ' consultorio31 ', '0000-00-00 00:00:00', '2020-08-24 22:13:27', NULL, NULL, NULL),
(141, 1000, ' PC ', '', '', ' MJ06PZG2 ', '', '', '', '', '', '', NULL, ' VIVA 1A IPS MACARENA ', ' consultorio32ELECTRO ', '0000-00-00 00:00:00', '2020-08-24 22:13:27', NULL, NULL, NULL),
(142, 1000, ' PC ', '', '', ' MJ06PZKP ', '', '', '', '', '', '', NULL, ' VIVA 1A IPS MACARENA ', ' consultorio32CARDIOLOGIA ', '0000-00-00 00:00:00', '2020-08-24 22:13:27', NULL, NULL, NULL),
(143, 1000, ' PC ', '', '', ' YL002MN3 ', '', '', '', '', '', '', NULL, ' VIVA 1A IPS MACARENA ', ' consultorio33 ', '0000-00-00 00:00:00', '2020-08-24 22:13:27', NULL, NULL, NULL),
(144, 1000, ' PC ', '', '', ' MJ06PZ6K ', '', '', '', '', '', '', NULL, ' VIVA 1A IPS MACARENA ', ' Modulo1 ', '0000-00-00 00:00:00', '2020-08-24 22:13:27', NULL, NULL, NULL),
(145, 1000, ' PC ', '', '', ' MJ06PZH8 ', '', '', '', '', '', '', NULL, ' VIVA 1A IPS MACARENA ', ' Modulo4 ', '0000-00-00 00:00:00', '2020-08-24 22:13:27', NULL, NULL, NULL),
(146, 1000, ' PC ', '', '', ' MJ06PZJ9 ', '', '', '', '', '', '', NULL, ' VIVA 1A IPS MACARENA ', ' Modulo5 ', '0000-00-00 00:00:00', '2020-08-24 22:13:27', NULL, NULL, NULL),
(147, 1000, ' PC ', '', '', ' MJ06PZFN ', '', '', '', '', '', '', NULL, ' VIVA 1A IPS MACARENA ', ' Modulo6 ', '0000-00-00 00:00:00', '2020-08-24 22:13:27', NULL, NULL, NULL),
(148, 1000, ' PC ', '', '', ' MJ06PZHJ ', '', '', '', '', '', '', NULL, ' VIVA 1A IPS MACARENA ', ' Modulo7 ', '0000-00-00 00:00:00', '2020-08-24 22:13:27', NULL, NULL, NULL),
(149, 1000, ' PC ', '', '', ' MJ06PZK7 ', '', '', '', '', '', '', NULL, ' VIVA 1A IPS MACARENA ', ' Modulo9 ', '0000-00-00 00:00:00', '2020-08-24 22:13:27', NULL, NULL, NULL),
(150, 1000, ' PC ', '', '', ' MJ06PZH2 ', '', '', '', '', '', '', NULL, ' VIVA 1A IPS MACARENA ', ' Modulo10 ', '0000-00-00 00:00:00', '2020-08-24 22:13:27', NULL, NULL, NULL),
(151, 1000, ' PC ', '', '', ' MJ06PZL4 ', '', '', '', '', '', '', NULL, ' VIVA 1A IPS MACARENA ', ' Modulo11 ', '0000-00-00 00:00:00', '2020-08-24 22:13:27', NULL, NULL, NULL),
(152, 1000, ' PC ', '', '', ' MJ06PZG9 ', '', '', '', '', '', '', NULL, ' VIVA 1A IPS MACARENA ', ' Modulo12 ', '0000-00-00 00:00:00', '2020-08-24 22:13:27', NULL, NULL, NULL),
(153, 1000, ' PC ', '', '', ' MJ06PZFW ', '', '', '', '', '', '', NULL, ' VIVA 1A IPS MACARENA ', ' Modulo13 ', '0000-00-00 00:00:00', '2020-08-24 22:13:27', NULL, NULL, NULL),
(154, 1000, ' PC ', '', '', ' MJ06PZF4 ', '', '', '', '', '', '', NULL, ' VIVA 1A IPS MACARENA ', ' Modulo14 ', '0000-00-00 00:00:00', '2020-08-24 22:13:27', NULL, NULL, NULL),
(155, 1000, ' PC ', '', '', ' MJ06PZHC ', '', '', '', '', '', '', NULL, ' VIVA 1A IPS MACARENA ', ' Modulo15 ', '0000-00-00 00:00:00', '2020-08-24 22:13:27', NULL, NULL, NULL),
(156, 1000, ' PC ', '', '', ' MJ06PZGA ', '', '', '', '', '', '', NULL, ' VIVA 1A IPS MACARENA ', ' Modulo16 ', '0000-00-00 00:00:00', '2020-08-24 22:13:27', NULL, NULL, NULL),
(157, 1000, ' PC ', '', '', ' MJ06PZHF ', '', '', '', '', '', '', NULL, ' VIVA 1A IPS MACARENA ', ' Modulo17 ', '0000-00-00 00:00:00', '2020-08-24 22:13:27', NULL, NULL, NULL),
(158, 1000, ' PC ', '', '', ' PC0UF3Q7 ', '', '', '', '', '', '', NULL, ' VIVA 1A IPS MACARENA ', ' Modulo23 ', '0000-00-00 00:00:00', '2020-08-24 22:13:27', NULL, NULL, NULL),
(159, 1000, ' PC ', '', '', ' MJ06APXK ', '', '', '', '', '', '', NULL, ' VIVA 1A IPS MACARENA ', ' Modulo18 ', '0000-00-00 00:00:00', '2020-08-24 22:13:27', NULL, NULL, NULL),
(160, 1000, ' CPU TODO EN UNO ', '', '', ' 3CR52904FG ', '', '', '', '', '', '', NULL, ' VIVA 1A IPS MACARENA ', ' Modulo2 ', '0000-00-00 00:00:00', '2020-08-24 22:13:27', NULL, NULL, NULL),
(161, 1000, ' PC ', '', '', ' MJ07PZ6W ', '', '', '', '', '', '', NULL, ' VIVA 1A IPS MACARENA ', ' odontologia1 ', '0000-00-00 00:00:00', '2020-08-24 22:13:27', NULL, NULL, NULL),
(162, 1000, ' PC ', '', '', ' MJ06PZGW ', '', '', '', '', '', '', NULL, ' VIVA 1A IPS MACARENA ', ' odontologia2 ', '0000-00-00 00:00:00', '2020-08-24 22:13:27', NULL, NULL, NULL),
(163, 1000, ' PC ', '', '', ' YL002L9C ', '', '', '', '', '', '', NULL, ' VIVA 1A IPS MACARENA ', ' odontologia3 ', '0000-00-00 00:00:00', '2020-08-24 22:13:27', NULL, NULL, NULL),
(164, 1000, ' PC ', '', '', ' PC0UAXPA ', '', '', '', '', '', '', NULL, ' VIVA 1A IPS MACARENA ', ' ECOGRAFIA ', '0000-00-00 00:00:00', '2020-08-24 22:13:27', NULL, NULL, NULL),
(165, 1000, ' PC ', '', '', ' PC0UF3Z5 ', '', '', '', '', '', '', NULL, ' VIVA 1A IPS MACARENA ', ' procedimiento ', '0000-00-00 00:00:00', '2020-08-24 22:13:27', NULL, NULL, NULL),
(166, 1000, ' PC ', '', '', ' PC0UF3N4 ', '', '', '', '', '', '', NULL, ' VIVA 1A IPS MACARENA ', ' FISIO TERAPIA ', '0000-00-00 00:00:00', '2020-08-24 22:13:27', NULL, NULL, NULL),
(167, 1000, ' PC ', '', '', ' MJ06PZHK ', '', '', '', '', '', '', NULL, ' VIVA 1A IPS MACARENA ', ' AUDITORIO ', '0000-00-00 00:00:00', '2020-08-24 22:13:27', NULL, NULL, NULL),
(168, 1000, ' PC ', '', '', ' MJ06APWM ', '', '', '', '', '', '', NULL, ' VIVA 1A IPS MACARENA ', ' ATRIL ', '0000-00-00 00:00:00', '2020-08-24 22:13:27', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `table_user_tec`
--

CREATE TABLE `table_user_tec` (
  `id_tec` int(100) NOT NULL,
  `nickname_tec` varchar(20) NOT NULL,
  `name_tec` varchar(256) NOT NULL,
  `last_name_tec` varchar(256) NOT NULL,
  `campus_tec` varchar(256) NOT NULL,
  `position_job` varchar(256) NOT NULL,
  `email_tec` varchar(256) NOT NULL,
  `password_tec` varchar(256) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `table_user_tec`
--

INSERT INTO `table_user_tec` (`id_tec`, `nickname_tec`, `name_tec`, `last_name_tec`, `campus_tec`, `position_job`, `email_tec`, `password_tec`, `active`) VALUES
(1, 'jortega', 'Jefferson Javier', 'Ortega Pacheco', 'VIVA 1A IPS MACARENA', 'Support IT', 'jortega@viva1a.com.co', '.jortega', 1),
(2, 'jmendoza', 'Jose', 'Mendoza', 'VIVA 1A CASA MATRIZ', 'Support IT', 'jmendoza@viva1a.com.co', '.jmendoza', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `table_machines`
--
ALTER TABLE `table_machines`
  ADD PRIMARY KEY (`id_machine`);

--
-- Indices de la tabla `table_user_tec`
--
ALTER TABLE `table_user_tec`
  ADD PRIMARY KEY (`id_tec`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `table_machines`
--
ALTER TABLE `table_machines`
  MODIFY `id_machine` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT de la tabla `table_user_tec`
--
ALTER TABLE `table_user_tec`
  MODIFY `id_tec` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
