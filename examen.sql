-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-10-2016 a las 15:01:15
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `examen`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `id` int(11) NOT NULL,
  `nombre` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`id`, `nombre`) VALUES
(1, 'vanessa '),
(2, 'd'),
(3, 'x'),
(4, 'x'),
(5, 'rrrr'),
(6, 'fer');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE `preguntas` (
  `id` int(11) NOT NULL,
  `pregunta` varchar(60) DEFAULT NULL,
  `opcA` varchar(60) DEFAULT NULL,
  `opcB` varchar(60) DEFAULT NULL,
  `opcC` varchar(60) DEFAULT NULL,
  `opcD` varchar(60) DEFAULT NULL,
  `correcta` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`id`, `pregunta`, `opcA`, `opcB`, `opcC`, `opcD`, `correcta`) VALUES
(1, 'De que color la tiene vannesa', 'chocolate', 'vainilla', 'fresa', 'todas las anteriores', 'c'),
(2, 'Nombre del consergue que violo a saul ', 'Marcotes', 'Willy', 'Mario', 'Se autoviolo', 'a'),
(3, 'Cuantos dias antes de que janis engañe a mandi en cancun', '1', '7', '30', 'antes de irse', 'd'),
(4, 'Numero de veces que henry vio el video de chica dorados', '700', '770', '1k', 'a+b+c+', 'b'),
(5, 'Nombre del maestro favorito de fer ', 'Techaer', 'Julian', 'Blanca', 'Roberto', 'd'),
(6, 'Nombre artisitico de CArlos como youtuber', 'Werever', 'Pinpinela', 'Galatzia', 'Yuya', 'c'),
(7, 'Nombre del tipo de anime que ve henry', 'yaoi', 'hentai', 'gay', 'goreGay', 'd'),
(8, 'Cuando cobra candela en el buen fin', '15', '250', '100', '450', 'a'),
(9, 'Arma preferida de  fer ', 'Metralleta', 'Bazuka', 'Cutter', 'Puño limpio', 'c'),
(10, 'Nombre de veces que saul a estado en la firendzone', '4', 'inifinito', 'nunca saldra de ahi', 'solo con candas', 'd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promedio`
--

CREATE TABLE `promedio` (
  `id` int(11) NOT NULL,
  `id_alumno` int(11) DEFAULT NULL,
  `promedio` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuestas`
--

CREATE TABLE `respuestas` (
  `id` int(11) NOT NULL,
  `id_alumno` int(11) DEFAULT NULL,
  `id_pregunta` int(11) DEFAULT NULL,
  `respuesta` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `promedio`
--
ALTER TABLE `promedio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumno`
--
ALTER TABLE `alumno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `promedio`
--
ALTER TABLE `promedio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
