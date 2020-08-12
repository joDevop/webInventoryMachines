-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-08-2020 a las 23:21:30
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
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `imagen` longblob,
  `ruta_imagen` varchar(50) DEFAULT NULL,
  `comment` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `table_machines`
--

INSERT INTO `table_machines` (`id_machine`, `type_machine`, `manufacturer`, `model`, `serial`, `ram_slot_00`, `ram_slot_01`, `hard_drive`, `cpu`, `ip_range`, `mac_address`, `anydesk`, `campus`, `location`, `create_date`, `update_date`, `imagen`, `ruta_imagen`, `comment`) VALUES
(1, 'TV RASPBERRY PI', NULL, NULL, '', NULL, NULL, NULL, NULL, '192.168.71.26', 'B8:27:EB:71:97', NULL, 'VIVA 1A IPS MACARENA', '', '2020-06-12 21:11:06', '0000-00-00 00:00:00', NULL, NULL, NULL),
(2, 'TV RASPBERRY PI', NULL, NULL, '', NULL, NULL, NULL, NULL, '192.168.71.27', 'B8:27:EB:39:0C', NULL, 'VIVA 1A IPS MACARENA', '', '2020-06-12 21:11:06', '0000-00-00 00:00:00', NULL, NULL, NULL),
(3, 'TV RASPBERRY PI', NULL, NULL, '', NULL, NULL, NULL, NULL, '192.168.71.28', 'B8:27:EB:5F:59', NULL, 'VIVA 1A IPS MACARENA', '', '2020-06-12 21:11:06', '0000-00-00 00:00:00', NULL, NULL, NULL),
(4, 'TV RASPBERRY PI', NULL, NULL, '', NULL, NULL, NULL, NULL, '192.168.71.29', 'B8:27:EB:3E:16', NULL, 'VIVA 1A IPS MACARENA', '', '2020-06-12 21:11:06', '0000-00-00 00:00:00', NULL, NULL, NULL),
(5, 'TV RASPBERRY PI', NULL, NULL, '', NULL, NULL, NULL, NULL, '192.168.71.80', 'B8:27:EB:7B:FA', NULL, 'VIVA 1A IPS MACARENA', '', '2020-06-12 21:11:06', '0000-00-00 00:00:00', NULL, NULL, NULL),
(6, 'TV RASPBERRY PI', NULL, NULL, '', NULL, NULL, NULL, NULL, '192.168.71.81', 'B8:27:EB:7F:5C', NULL, 'VIVA 1A IPS MACARENA', '', '2020-06-12 21:11:06', '0000-00-00 00:00:00', NULL, NULL, NULL),
(7, 'TV RASPBERRY PI', NULL, NULL, '', NULL, NULL, NULL, NULL, '192.168.71.64', '', NULL, 'VIVA 1A IPS MACARENA', '', '2020-06-12 21:11:06', '0000-00-00 00:00:00', NULL, NULL, NULL),
(8, 'ATRIL', NULL, NULL, '', NULL, NULL, NULL, NULL, '192.168.71.102', '6C:4B:90:34:35', NULL, 'VIVA 1A IPS MACARENA', '', '2020-06-12 21:11:06', '0000-00-00 00:00:00', NULL, NULL, '[ ATRIL DE TURNERO ]'),
(9, 'ATRIL', NULL, NULL, '', NULL, NULL, NULL, NULL, '192.168.71.25', '6C:4B:90:50:01', NULL, 'VIVA 1A IPS MACARENA', '', '2020-06-12 21:11:06', '0000-00-00 00:00:00', NULL, NULL, '[ ATRIL DE TURNERO ]'),
(10, 'ATRIL', NULL, NULL, '', NULL, NULL, NULL, NULL, '192.168.71.213', '', NULL, 'VIVA 1A IPS MACARENA', '', '2020-06-12 21:11:06', '0000-00-00 00:00:00', NULL, NULL, NULL),
(11, 'TV RASPBERRY PI', NULL, NULL, '', NULL, NULL, NULL, NULL, '192.168.62.26', 'B8:27:EB:AC:53', NULL, 'VIVA 1A IPS SURA SAN JOSE', '', '2020-06-12 21:11:06', '0000-00-00 00:00:00', NULL, NULL, NULL),
(12, 'TV RASPBERRY PI', NULL, NULL, '', NULL, NULL, NULL, NULL, '192.168.62.28', 'B8:27:EB:5E:3B', NULL, 'VIVA 1A IPS SURA SAN JOSE', '', '2020-06-12 21:11:06', '0000-00-00 00:00:00', NULL, NULL, NULL),
(13, 'TV RASPBERRY PI', NULL, NULL, '', NULL, NULL, NULL, NULL, '192.168.62.29', 'B8:27:EB:68:55', NULL, 'VIVA 1A IPS SURA SAN JOSE', '', '2020-06-12 21:11:06', '0000-00-00 00:00:00', NULL, NULL, NULL),
(14, 'TV RASPBERRY PI', NULL, NULL, '', NULL, NULL, NULL, NULL, '192.168.62.30', 'B8:27:EB:F8:D4', NULL, 'VIVA 1A IPS SURA SAN JOSE', '', '2020-06-12 21:11:06', '0000-00-00 00:00:00', NULL, NULL, NULL),
(15, 'TV RASPBERRY PI', NULL, NULL, '', NULL, NULL, NULL, NULL, '192.168.62.31', 'B8:27:EB:2D:B6', NULL, 'VIVA 1A IPS SURA SAN JOSE', '', '2020-06-12 21:11:06', '0000-00-00 00:00:00', NULL, NULL, NULL),
(16, 'TV RASPBERRY PI', NULL, NULL, '', NULL, NULL, NULL, NULL, '192.168.62.33', 'B8:27:EB:9D:57', NULL, 'VIVA 1A IPS SURA SAN JOSE', '', '2020-06-12 21:11:06', '0000-00-00 00:00:00', NULL, NULL, NULL),
(17, 'ATRIL', NULL, NULL, '', NULL, NULL, NULL, NULL, '192.168.62.122', 'D0:27:88:91:5F', NULL, 'VIVA 1A IPS SURA SAN JOSE', '', '2020-06-12 21:11:06', '0000-00-00 00:00:00', NULL, NULL, NULL),
(18, 'ATRIL', NULL, NULL, '', NULL, NULL, NULL, NULL, '192.168.62.34', '98:FA:9B:29:90', NULL, 'VIVA 1A IPS SURA SAN JOSE', '', '2020-06-12 21:11:06', '0000-00-00 00:00:00', NULL, NULL, NULL),
(19, 'ATRIL', NULL, NULL, '', NULL, NULL, NULL, NULL, '192.168.62.37', '', NULL, 'VIVA 1A IPS SURA SAN JOSE', '', '2020-06-12 21:11:06', '0000-00-00 00:00:00', NULL, NULL, NULL),
(20, 'ATRIL', NULL, NULL, '', NULL, NULL, NULL, NULL, '192.168.62.25', '6C:4B:90:67:9F', NULL, 'VIVA 1A IPS SURA SAN JOSE', '', '2020-06-12 21:11:06', '0000-00-00 00:00:00', NULL, NULL, NULL),
(21, 'ATRIL', NULL, NULL, '', NULL, NULL, NULL, NULL, '192.168.12.25', '6C:4B:90:4F:F9', NULL, 'VIVA 1A IPS CALLE 30', '', '2020-06-12 21:11:06', '0000-00-00 00:00:00', NULL, NULL, NULL),
(22, 'ATRIL', NULL, NULL, '', NULL, NULL, NULL, NULL, '192.168.12.35', '', NULL, 'VIVA 1A IPS CALLE 30', '', '2020-06-12 21:11:06', '0000-00-00 00:00:00', NULL, NULL, NULL),
(23, 'TV RASPBERRY PI', NULL, NULL, '', NULL, NULL, NULL, NULL, '192.168.12.29', 'B8:27:EB:8A:23', NULL, 'VIVA 1A IPS CALLE 30', '', '2020-06-12 21:11:06', '0000-00-00 00:00:00', NULL, NULL, NULL),
(24, 'TV RASPBERRY PI', NULL, NULL, '', NULL, NULL, NULL, NULL, '192.168.12.28', 'B8:27:EB:AE:15', NULL, 'VIVA 1A IPS CALLE 30', '', '2020-06-12 21:11:06', '0000-00-00 00:00:00', NULL, NULL, NULL),
(25, 'TV RASPBERRY PI', NULL, NULL, '', NULL, NULL, NULL, NULL, '192.168.12.100', 'B8:27:EB:63:99', NULL, 'VIVA 1A IPS CALLE 30', '', '2020-06-12 21:11:06', '0000-00-00 00:00:00', NULL, NULL, NULL),
(26, 'TV RASPBERRY PI', NULL, NULL, '', NULL, NULL, NULL, NULL, '192.168.12.101', 'B8:27:EB:63:DA', NULL, 'VIVA 1A IPS CALLE 30', '', '2020-08-12 21:19:19', '0000-00-00 00:00:00', NULL, NULL, NULL),
(27, 'TV RASPBERRY PI', NULL, NULL, '', NULL, NULL, NULL, NULL, '192.168.16.26', '', NULL, 'VIVA 1A IPS CARRERA 16', '', '2020-06-12 21:11:06', '0000-00-00 00:00:00', NULL, NULL, NULL),
(28, 'TV RASPBERRY PI', NULL, NULL, '', NULL, NULL, NULL, NULL, '192.168.16.28', '', NULL, 'VIVA 1A IPS CARRERA 16', '', '2020-06-12 21:11:06', '0000-00-00 00:00:00', NULL, NULL, NULL),
(29, 'ATRIL', NULL, NULL, '', NULL, NULL, NULL, NULL, '192.168.16.25', 'FC:3F:DB:0A:D2', NULL, 'VIVA 1A IPS CARRERA 16', '', '2020-06-12 21:11:06', '0000-00-00 00:00:00', NULL, NULL, NULL),
(30, 'ATRIL', NULL, NULL, '', NULL, NULL, NULL, NULL, '192.168.16.30', '6C:4B:90:67:9F', NULL, 'VIVA 1A IPS CARRERA 16', '', '2020-06-12 21:11:06', '0000-00-00 00:00:00', NULL, NULL, NULL),
(35, 'PC', 'LENOVO', 'XY', '1564613', '4GB DDR3', '4GB DDR3', '500GB', 'INTEL CELERON', '192.168.71.240', '98:EE:CB:25:1F', '516 686 552', 'VIVA 1A IPS MACARENA', 'OFICINA DE SISTEMAS', '2020-06-17 00:33:34', '0000-00-00 00:00:00', NULL, NULL, 'EQUIPO DE TECNICO EN SEDE\r\n'),
(37, 'LAPTOP', 'LENOVO', 'XY', '1564613', '8GB DDR4', 'NULL', '500GB', 'INTEL CELERON', '192.168.200.100', 'R5:H8:0Y:K9:O9', '546345645', 'VIVA 1A IPS CARRERA 16', 'OFICINA DE SISTEMAS', '2020-08-12 21:15:00', '0000-00-00 00:00:00', NULL, NULL, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `table_user_tec`
--

CREATE TABLE `table_user_tec` (
  `id` int(3) NOT NULL,
  `id_user_tec` int(3) DEFAULT NULL,
  `name_tec` varchar(256) DEFAULT NULL,
  `last_name_tec` varchar(256) DEFAULT NULL,
  `campus_tec` varchar(256) DEFAULT NULL,
  `position_job` varchar(256) DEFAULT NULL,
  `email_tec` varchar(256) NOT NULL,
  `password_tec` varchar(256) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `test` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `table_user_tec`
--

INSERT INTO `table_user_tec` (`id`, `id_user_tec`, `name_tec`, `last_name_tec`, `campus_tec`, `position_job`, `email_tec`, `password_tec`, `active`, `test`) VALUES
(1, NULL, 'Jefferson Javier', 'Ortega Pacheco', 'VIVA 1A MACARENA', 'Support IT', 'jortega@viva1a.com.co', '.jortega', 0, NULL),
(2, NULL, NULL, NULL, NULL, 'systems technician IT', 'jmendoza@viva1a.com.co', '.jmendoza', 0, NULL);

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
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `table_machines`
--
ALTER TABLE `table_machines`
  MODIFY `id_machine` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `table_user_tec`
--
ALTER TABLE `table_user_tec`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
