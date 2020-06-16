-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-06-2020 a las 16:05:11
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
  `type_machine` varchar(20) NOT NULL,
  `ip_range` varchar(15) NOT NULL,
  `mac_address` varchar(14) NOT NULL,
  `campus` varchar(45) NOT NULL,
  `create_date` timestamp NULL DEFAULT NULL,
  `imagen` longblob DEFAULT NULL,
  `ruta_imagen` varchar(50) DEFAULT NULL,
  `observ` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `table_machines`
--

INSERT INTO `table_machines` (`id_machine`, `type_machine`, `ip_range`, `mac_address`, `campus`, `create_date`, `imagen`, `ruta_imagen`, `observ`) VALUES
(1, 'TV RASPBERRY PI', '192.168.71.26', 'B8:27:EB:71:97', 'VIVA 1A IPS MACARENA', '2020-06-12 21:11:06', NULL, NULL, NULL),
(2, 'TV RASPBERRY PI', '192.168.71.27', 'B8:27:EB:39:0C', 'VIVA 1A IPS MACARENA', '2020-06-12 21:11:06', NULL, NULL, NULL),
(3, 'TV RASPBERRY PI', '192.168.71.28', 'B8:27:EB:5F:59', 'VIVA 1A IPS MACARENA', '2020-06-12 21:11:06', NULL, NULL, NULL),
(4, 'TV RASPBERRY PI', '192.168.71.29', 'B8:27:EB:3E:16', 'VIVA 1A IPS MACARENA', '2020-06-12 21:11:06', NULL, NULL, NULL),
(5, 'TV RASPBERRY PI', '192.168.71.80', 'B8:27:EB:7B:FA', 'VIVA 1A IPS MACARENA', '2020-06-12 21:11:06', NULL, NULL, NULL),
(6, 'TV RASPBERRY PI', '192.168.71.81', 'B8:27:EB:7F:5C', 'VIVA 1A IPS MACARENA', '2020-06-12 21:11:06', NULL, NULL, NULL),
(7, 'TV RASPBERRY PI', '192.168.71.64', '', 'VIVA 1A IPS MACARENA', '2020-06-12 21:11:06', NULL, NULL, NULL),
(8, 'ATRIL', '192.168.71.102', '6C:4B:90:34:35', 'VIVA 1A IPS MACARENA', '2020-06-12 21:11:06', NULL, NULL, '[ ATRIL DE TURNERO ]'),
(9, 'ATRIL', '192.168.71.25', '6C:4B:90:50:01', 'VIVA 1A IPS MACARENA', '2020-06-12 21:11:06', NULL, NULL, '[ ATRIL DE TURNERO ]'),
(10, 'ATRIL', '192.168.71.213', '', 'VIVA 1A IPS MACARENA', '2020-06-12 21:11:06', NULL, NULL, NULL),
(11, 'TV RASPBERRY PI', '192.168.62.26', 'B8:27:EB:AC:53', 'VIVA 1A IPS SURA SAN JOSE', '2020-06-12 21:11:06', NULL, NULL, NULL),
(12, 'TV RASPBERRY PI', '192.168.62.28', 'B8:27:EB:5E:3B', 'VIVA 1A IPS SURA SAN JOSE', '2020-06-12 21:11:06', NULL, NULL, NULL),
(13, 'TV RASPBERRY PI', '192.168.62.29', 'B8:27:EB:68:55', 'VIVA 1A IPS SURA SAN JOSE', '2020-06-12 21:11:06', NULL, NULL, NULL),
(14, 'TV RASPBERRY PI', '192.168.62.30', 'B8:27:EB:F8:D4', 'VIVA 1A IPS SURA SAN JOSE', '2020-06-12 21:11:06', NULL, NULL, NULL),
(15, 'TV RASPBERRY PI', '192.168.62.31', 'B8:27:EB:2D:B6', 'VIVA 1A IPS SURA SAN JOSE', '2020-06-12 21:11:06', NULL, NULL, NULL),
(16, 'TV RASPBERRY PI', '192.168.62.33', 'B8:27:EB:9D:57', 'VIVA 1A IPS SURA SAN JOSE', '2020-06-12 21:11:06', NULL, NULL, NULL),
(17, 'ATRIL', '192.168.62.122', 'D0:27:88:91:5F', 'VIVA 1A IPS SURA SAN JOSE', '2020-06-12 21:11:06', NULL, NULL, NULL),
(18, 'ATRIL', '192.168.62.34', '98:FA:9B:29:90', 'VIVA 1A IPS SURA SAN JOSE', '2020-06-12 21:11:06', NULL, NULL, NULL),
(19, 'ATRIL', '192.168.62.37', '', 'VIVA 1A IPS SURA SAN JOSE', '2020-06-12 21:11:06', NULL, NULL, NULL),
(20, 'ATRIL', '192.168.62.25', '6C:4B:90:67:9F', 'VIVA 1A IPS SURA SAN JOSE', '2020-06-12 21:11:06', NULL, NULL, NULL),
(21, 'ATRIL', '192.168.12.25', '6C:4B:90:4F:F9', 'VIVA 1A IPS CALLE 30', '2020-06-12 21:11:06', NULL, NULL, NULL),
(22, 'ATRIL', '192.168.12.35', '', 'VIVA 1A IPS CALLE 30', '2020-06-12 21:11:06', NULL, NULL, NULL),
(23, 'TV RASPBERRY PI', '192.168.12.29', 'B8:27:EB:8A:23', 'VIVA 1A IPS CALLE 30', '2020-06-12 21:11:06', NULL, NULL, NULL),
(24, 'TV RASPBERRY PI', '192.168.12.28', 'B8:27:EB:AE:15', 'VIVA 1A IPS CALLE 30', '2020-06-12 21:11:06', NULL, NULL, NULL),
(25, 'TV RASPBERRY PI', '192.168.12.100', 'B8:27:EB:63:99', 'VIVA 1A IPS CALLE 30', '2020-06-12 21:11:06', NULL, NULL, NULL),
(26, 'TV RASPBERRY PI', '192.168.12.101', 'B8:27:EB:63:DA', 'VIVA 1A IPS CALLE 35', '2020-06-12 21:11:06', NULL, NULL, NULL),
(27, 'TV RASPBERRY PI', '192.168.16.26', '', 'VIVA 1A IPS CARRERA 16', '2020-06-12 21:11:06', NULL, NULL, NULL),
(28, 'TV RASPBERRY PI', '192.168.16.28', '', 'VIVA 1A IPS CARRERA 16', '2020-06-12 21:11:06', NULL, NULL, NULL),
(29, 'ATRIL', '192.168.16.25', 'FC:3F:DB:0A:D2', 'VIVA 1A IPS CARRERA 16', '2020-06-12 21:11:06', NULL, NULL, NULL),
(30, 'ATRIL', '192.168.16.30', '6C:4B:90:67:9F', 'VIVA 1A IPS CARRERA 16', '2020-06-12 21:11:06', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `table_user_tec`
--

CREATE TABLE `table_user_tec` (
  `id` int(3) NOT NULL,
  `id_user_tec` int(3) DEFAULT NULL,
  `email_tec` varchar(256) NOT NULL,
  `password_tec` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `table_user_tec`
--

INSERT INTO `table_user_tec` (`id`, `id_user_tec`, `email_tec`, `password_tec`) VALUES
(1, NULL, 'jortega@viva1a.com.co', '.jortega'),
(2, NULL, 'jmendoza@viva1a.com.co', '.jmendoza');

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
  MODIFY `id_machine` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `table_user_tec`
--
ALTER TABLE `table_user_tec`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
