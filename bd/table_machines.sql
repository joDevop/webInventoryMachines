-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-08-2020 a las 06:20:18
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.2.4

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
  `type_machine` varchar(20) NOT NULL,
  `manufacturer` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `serial` varchar(255) NOT NULL,
  `ram_slot_00` varchar(255) DEFAULT NULL,
  `ram_slot_01` varchar(255) DEFAULT NULL,
  `hard_drive` varchar(255) DEFAULT NULL,
  `cpu` varchar(255) DEFAULT NULL,
  `ip_range` varchar(15) NOT NULL,
  `mac_address` varchar(14) NOT NULL,
  `anydesk` varchar(255) DEFAULT NULL,
  `campus` varchar(45) NOT NULL,
  `location` varchar(255) NOT NULL,
  `create_date` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `imagen` varchar(50) DEFAULT NULL,
  `ruta_imagen` varchar(50) DEFAULT NULL,
  `comment` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `table_machines`
--

INSERT INTO `table_machines` (`id_machine`, `type_machine`, `manufacturer`, `model`, `serial`, `ram_slot_00`, `ram_slot_01`, `hard_drive`, `cpu`, `ip_range`, `mac_address`, `anydesk`, `campus`, `location`, `create_date`, `update_at`, `imagen`, `ruta_imagen`, `comment`) VALUES
(1, 'TV RASPBERRY PI', NULL, NULL, '', NULL, NULL, NULL, NULL, '192.168.71.26', 'B8:27:EB:71:97', NULL, 'VIVA 1A IPS MACARENA', '', '2020-06-12 21:11:06', '2020-08-18 03:03:46', 'raspberry.png', NULL, NULL),
(2, 'TV RASPBERRY PI', NULL, NULL, '', NULL, NULL, NULL, NULL, '192.168.71.27', 'B8:27:EB:39:0C', NULL, 'VIVA 1A IPS MACARENA', '', '2020-06-12 21:11:06', '2020-08-18 03:03:46', 'raspberry.png', NULL, NULL),
(3, 'TV RASPBERRY PI', NULL, NULL, '', NULL, NULL, NULL, NULL, '192.168.71.28', 'B8:27:EB:5F:59', NULL, 'VIVA 1A IPS MACARENA', '', '2020-06-12 21:11:06', '2020-08-18 03:03:46', 'raspberry.png', NULL, NULL),
(4, 'TV RASPBERRY PI', NULL, NULL, '', NULL, NULL, NULL, NULL, '192.168.71.29', 'B8:27:EB:3E:16', NULL, 'VIVA 1A IPS MACARENA', '', '2020-06-12 21:11:06', '2020-08-18 03:03:46', 'raspberry.png', NULL, NULL),
(5, 'TV RASPBERRY PI', NULL, NULL, '', NULL, NULL, NULL, NULL, '192.168.71.80', 'B8:27:EB:7B:FA', NULL, 'VIVA 1A IPS MACARENA', '', '2020-06-12 21:11:06', '2020-08-18 03:03:46', 'raspberry.png', NULL, NULL),
(6, 'TV RASPBERRY PI', NULL, NULL, '', NULL, NULL, NULL, NULL, '192.168.71.81', 'B8:27:EB:7F:5C', NULL, 'VIVA 1A IPS MACARENA', '', '2020-06-12 21:11:06', '2020-08-18 03:03:46', 'raspberry.png', NULL, NULL),
(7, 'TV RASPBERRY PI', NULL, NULL, '', NULL, NULL, NULL, NULL, '192.168.71.64', '', NULL, 'VIVA 1A IPS MACARENA', '', '2020-06-12 21:11:06', '2020-08-18 03:03:46', 'raspberry.png', NULL, NULL),
(8, 'ATRIL', NULL, NULL, '', NULL, NULL, NULL, NULL, '192.168.71.102', '6C:4B:90:34:35', NULL, 'VIVA 1A IPS MACARENA', '', '2020-06-12 21:11:06', '2020-08-18 02:56:02', 'kiosk.png', NULL, '[ ATRIL DE TURNERO ]'),
(9, 'ATRIL', NULL, NULL, '', NULL, NULL, NULL, NULL, '192.168.71.25', '6C:4B:90:50:01', NULL, 'VIVA 1A IPS MACARENA', '', '2020-06-12 21:11:06', '2020-08-18 02:57:15', 'kiosk.png', NULL, '[ ATRIL DE TURNERO ]'),
(10, 'ATRIL', NULL, NULL, '', NULL, NULL, NULL, NULL, '192.168.71.213', '', NULL, 'VIVA 1A IPS MACARENA', '', '2020-06-12 21:11:06', '2020-08-18 02:57:15', 'kiosk.png', NULL, NULL),
(11, 'TV RASPBERRY PI', NULL, NULL, '', NULL, NULL, NULL, NULL, '192.168.62.26', 'B8:27:EB:AC:53', NULL, 'VIVA 1A IPS SURA SAN JOSE', '', '2020-06-12 21:11:06', '2020-08-18 03:03:46', 'raspberry.png', NULL, NULL),
(12, 'TV RASPBERRY PI', NULL, NULL, '', NULL, NULL, NULL, NULL, '192.168.62.28', 'B8:27:EB:5E:3B', NULL, 'VIVA 1A IPS SURA SAN JOSE', '', '2020-06-12 21:11:06', '2020-08-18 03:03:46', 'raspberry.png', NULL, NULL),
(13, 'TV RASPBERRY PI', NULL, NULL, '', NULL, NULL, NULL, NULL, '192.168.62.29', 'B8:27:EB:68:55', NULL, 'VIVA 1A IPS SURA SAN JOSE', '', '2020-06-12 21:11:06', '2020-08-18 03:03:46', 'raspberry.png', NULL, NULL),
(14, 'TV RASPBERRY PI', NULL, NULL, '', NULL, NULL, NULL, NULL, '192.168.62.30', 'B8:27:EB:F8:D4', NULL, 'VIVA 1A IPS SURA SAN JOSE', '', '2020-06-12 21:11:06', '2020-08-18 03:03:46', 'raspberry.png', NULL, NULL),
(15, 'TV RASPBERRY PI', NULL, NULL, '', NULL, NULL, NULL, NULL, '192.168.62.31', 'B8:27:EB:2D:B6', NULL, 'VIVA 1A IPS SURA SAN JOSE', '', '2020-06-12 21:11:06', '2020-08-18 03:03:46', 'raspberry.png', NULL, NULL),
(16, 'TV RASPBERRY PI', NULL, NULL, '', NULL, NULL, NULL, NULL, '192.168.62.33', 'B8:27:EB:9D:57', NULL, 'VIVA 1A IPS SURA SAN JOSE', '', '2020-06-12 21:11:06', '2020-08-18 03:03:46', 'raspberry.png', NULL, NULL),
(17, 'ATRIL', NULL, NULL, '', NULL, NULL, NULL, NULL, '192.168.62.122', 'D0:27:88:91:5F', NULL, 'VIVA 1A IPS SURA SAN JOSE', '', '2020-06-12 21:11:06', '2020-08-18 02:57:15', 'kiosk.png', NULL, NULL),
(18, 'ATRIL', NULL, NULL, '', NULL, NULL, NULL, NULL, '192.168.62.34', '98:FA:9B:29:90', NULL, 'VIVA 1A IPS SURA SAN JOSE', '', '2020-06-12 21:11:06', '2020-08-18 02:57:15', 'kiosk.png', NULL, NULL),
(19, 'ATRIL', NULL, NULL, '', NULL, NULL, NULL, NULL, '192.168.62.37', '', NULL, 'VIVA 1A IPS SURA SAN JOSE', '', '2020-06-12 21:11:06', '2020-08-18 02:57:15', 'kiosk.png', NULL, NULL),
(20, 'ATRIL', NULL, NULL, '', NULL, NULL, NULL, NULL, '192.168.62.25', '6C:4B:90:67:9F', NULL, 'VIVA 1A IPS SURA SAN JOSE', '', '2020-06-12 21:11:06', '2020-08-18 02:57:15', 'kiosk.png', NULL, NULL),
(21, 'ATRIL', NULL, NULL, '', NULL, NULL, NULL, NULL, '192.168.12.25', '6C:4B:90:4F:F9', NULL, 'VIVA 1A IPS CALLE 30', '', '2020-06-12 21:11:06', '2020-08-18 02:57:15', 'kiosk.png', NULL, NULL),
(22, 'ATRIL', NULL, NULL, '', NULL, NULL, NULL, NULL, '192.168.12.35', '', NULL, 'VIVA 1A IPS CALLE 30', '', '2020-06-12 21:11:06', '2020-08-18 02:57:15', 'kiosk.png', NULL, NULL),
(23, 'TV RASPBERRY PI', NULL, NULL, '', NULL, NULL, NULL, NULL, '192.168.12.29', 'B8:27:EB:8A:23', NULL, 'VIVA 1A IPS CALLE 30', '', '2020-06-12 21:11:06', '2020-08-18 03:03:46', 'raspberry.png', NULL, NULL),
(24, 'TV RASPBERRY PI', NULL, NULL, '', NULL, NULL, NULL, NULL, '192.168.12.28', 'B8:27:EB:AE:15', NULL, 'VIVA 1A IPS CALLE 30', '', '2020-06-12 21:11:06', '2020-08-18 03:03:46', 'raspberry.png', NULL, NULL),
(25, 'TV RASPBERRY PI', NULL, NULL, '', NULL, NULL, NULL, NULL, '192.168.12.100', 'B8:27:EB:63:99', NULL, 'VIVA 1A IPS CALLE 30', '', '2020-06-12 21:11:06', '2020-08-18 03:03:46', 'raspberry.png', NULL, NULL),
(26, 'TV RASPBERRY PI', NULL, NULL, '', NULL, NULL, NULL, NULL, '192.168.12.101', 'B8:27:EB:63:DA', NULL, 'VIVA 1A IPS CALLE 30', '', '2020-08-12 21:19:19', '2020-08-18 03:03:46', 'raspberry.png', NULL, NULL),
(27, 'TV RASPBERRY PI', NULL, NULL, '', NULL, NULL, NULL, NULL, '192.168.16.26', '', NULL, 'VIVA 1A IPS CARRERA 16', '', '2020-06-12 21:11:06', '2020-08-18 03:03:46', 'raspberry.png', NULL, NULL),
(28, 'TV RASPBERRY PI', NULL, NULL, '', NULL, NULL, NULL, NULL, '192.168.16.28', '', NULL, 'VIVA 1A IPS CARRERA 16', '', '2020-06-12 21:11:06', '2020-08-18 03:03:46', 'raspberry.png', NULL, NULL),
(29, 'ATRIL', NULL, NULL, '', NULL, NULL, NULL, NULL, '192.168.16.25', 'FC:3F:DB:0A:D2', NULL, 'VIVA 1A IPS CARRERA 16', '', '2020-06-12 21:11:06', '2020-08-18 02:57:15', 'kiosk.png', NULL, NULL),
(30, 'ATRIL', NULL, NULL, '', NULL, NULL, NULL, NULL, '192.168.16.30', '6C:4B:90:67:9F', NULL, 'VIVA 1A IPS CARRERA 16', '', '2020-06-12 21:11:06', '2020-08-18 02:57:15', 'kiosk.png', NULL, NULL),
(35, 'PC', 'LENOVO              ', 'THINKCENTRE ALL IN ONE', 'XYZ12345', '4GB DDR3 SO-DIMM', '4GB DDR3 SO-DIMM', '500GB', 'INTEL I5', '192.168.71.240', '98:EE:CB:25:1F', '465 562 426', 'VIVA 1A IPS MACARENA', 'OFICINA DE SISTEMAS', '2020-08-14 05:45:05', '2020-08-18 04:06:53', 'pc.png', NULL, '\r\n                '),
(47, 'TV RASPBERRY PI', 'HP', 'PRODESK G4', '1564613', '4GB DDR3 SO-DIMM', 'NULL', '250GB', 'INTEL CELERON', '192.168.200.100', 'R5:H8:0Y:K9:O9', '46556226', 'VIVA 1A IPS CARRERA 16', 'LA PARRILLA', '2020-08-18 04:07:24', '2020-08-18 04:07:24', '', NULL, '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `table_machines`
--
ALTER TABLE `table_machines`
  ADD PRIMARY KEY (`id_machine`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `table_machines`
--
ALTER TABLE `table_machines`
  MODIFY `id_machine` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
