-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-11-2016 a las 11:27:37
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `table_enterprise`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `table_enterprise`
--

CREATE TABLE IF NOT EXISTS `table_enterprise` (
`id_table_enterprise` int(11) NOT NULL,
  `cf_email` varchar(100) NOT NULL,
  `cf_nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `cf_apellidos` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `cedula_ciudadania` varchar(30) NOT NULL,
  `cf_celular` varchar(30) NOT NULL,
  `days` int(11) NOT NULL,
  `months` varchar(20) NOT NULL,
  `years` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `table_enterprise`
--

INSERT INTO `table_enterprise` (`id_table_enterprise`, `cf_email`, `cf_nombre`, `cf_apellidos`, `cedula_ciudadania`, `cf_celular`, `days`, `months`, `years`, `fecha`) VALUES
(1, 'test@gmail.com', 'Robinson', 'Pulgarín Torres', '1020151541', '300154154', 15, '2', 1994, '2016-11-11 09:44:56'),
(2, 'test@gmail.com', 'Robinson', 'Pulgarín Torres', '1020154545', '30054545', 14, '2', 1993, '2016-11-11 10:06:44');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `table_enterprise`
--
ALTER TABLE `table_enterprise`
 ADD PRIMARY KEY (`id_table_enterprise`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `table_enterprise`
--
ALTER TABLE `table_enterprise`
MODIFY `id_table_enterprise` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
