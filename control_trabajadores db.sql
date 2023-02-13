-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-11-2022 a las 21:39:24
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `control trabajadores`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` int(2) NOT NULL,
  `lugar` varchar(50) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `fecha_salida` date NOT NULL,
  `fecha_regreso` date NOT NULL,
  `sueldo` int(11) NOT NULL,
  `open` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `jobs`
--

INSERT INTO `jobs` (`id`, `lugar`, `descripcion`, `fecha_salida`, `fecha_regreso`, `sueldo`, `open`) VALUES
(4, 'Madrid', 'Full-stack developer', '2022-11-30', '2022-12-31', 3000, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajadores`
--

CREATE TABLE `trabajadores` (
  `id` int(2) NOT NULL,
  `name` varchar(25) NOT NULL,
  `apellidos` varchar(25) NOT NULL,
  `DNI` varchar(9) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefono` int(9) NOT NULL,
  `password` varchar(255) NOT NULL,
  `rol` int(1) NOT NULL,
  `status` int(2) NOT NULL,
  `status_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `trabajadores`
--

INSERT INTO `trabajadores` (`id`, `name`, `apellidos`, `DNI`, `email`, `telefono`, `password`, `rol`, `status`, `status_date`) VALUES
(4, 'Jorge', 'Espinosa Campos', '26523384Z', 'jorgeectablet@gmail.com', 663766809, '1234', 0, 1, '2022-11-30 19:09:09'),
(6, 'admin', 'HLANZ', '26523384Z', 'admin@hlanz', 663766809, 'admin', 1, 1, '2022-11-30 20:14:07');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `trabajadores`
--
ALTER TABLE `trabajadores`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `trabajadores`
--
ALTER TABLE `trabajadores`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
