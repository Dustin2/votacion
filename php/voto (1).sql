-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-04-2018 a las 18:38:38
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 7.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `voto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pruducto`
--

CREATE TABLE `pruducto` (
  `id_Obra` int(11) NOT NULL,
  `nombre-Po` text NOT NULL,
  `adjunto` text NOT NULL,
  `votos` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pruducto`
--

INSERT INTO `pruducto` (`id_Obra`, `nombre-Po`, `adjunto`, `votos`) VALUES
(1, 'fo1', 'img/IMG_8866.jpg', 0),
(2, 'foto2', 'img/IMG_8869.jpg', 0),
(3, 'foto3', 'img/IMG_8867.jpg', 0),
(4, 'foto4', 'img/IMG_8868.jpg', 0),
(5, 'foto5', 'img/IMG_8870.jpg', 0),
(6, 'foto6', 'img/IMG_8871.jpg', 0),
(7, 'foto7', 'img/IMG_8873.jpg', 0),
(8, 'imagen8', 'img/IMG_8875.jpg', 0),
(9, 'imagen9', 'img/IMG_8876.jpg', 0),
(10, 'img10', 'img/IMG_8878.jpg', 0),
(11, 'imagen11', 'img/IMG_8879.jpg', 0),
(12, 'imagen12', 'img/IMG_8881.jpg', 0),
(13, 'imagen13', 'img/IMG_8882.jpg', 0),
(14, 'imagen14', 'img/IMG_8883.jpg', 0),
(15, 'imagen15', 'img/IMG_8884.jpg', 0),
(16, 'imagen16', 'img/IMG_8886.jpg', 0),
(17, 'imagen17', 'img/IMG_8890.jpg', 0),
(18, 'imagen18', 'img/IMG_8891.jpg', 0),
(19, 'imagen19', 'img/IMG_8892.jpg', 0),
(20, 'imagen20', 'img/IMG_8893.jpg', 0),
(21, 'imagen21', 'img/IMG_8895.jpg', 0),
(22, 'imagen22', 'img/IMG_8896.jpg', 0),
(23, 'imagen23', 'img/IMG_8898.jpg', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_User` int(10) NOT NULL,
  `Nombre` text NOT NULL,
  `Correo` text NOT NULL,
  `Clave` varchar(15) NOT NULL,
  `voto` tinyint(1) NOT NULL,
  `para` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_User`, `Nombre`, `Correo`, `Clave`, `voto`, `para`) VALUES
(1, 'emilio', 'sanches@gmail.com', '123456', 0, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pruducto`
--
ALTER TABLE `pruducto`
  ADD PRIMARY KEY (`id_Obra`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_User`),
  ADD KEY `para` (`para`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pruducto`
--
ALTER TABLE `pruducto`
  MODIFY `id_Obra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
