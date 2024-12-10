-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-12-2024 a las 04:42:49
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prueba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contribuyentesruc`
--

CREATE TABLE `contribuyentesruc` (
  `ruc` varchar(255) NOT NULL,
  `nombre_razon_social` varchar(255) DEFAULT NULL,
  `estado_contribuyente` varchar(255) DEFAULT NULL,
  `condicion_domicilio` varchar(255) DEFAULT NULL,
  `ubigeo` varchar(255) DEFAULT NULL,
  `tipo_via` varchar(50) DEFAULT NULL,
  `nombre_via` varchar(100) DEFAULT NULL,
  `codigo_zona` varchar(10) DEFAULT NULL,
  `tipo_zona` varchar(50) DEFAULT NULL,
  `numero` varchar(255) DEFAULT NULL,
  `interior` varchar(255) DEFAULT NULL,
  `lote` varchar(255) DEFAULT NULL,
  `departamento` varchar(255) DEFAULT NULL,
  `manzana` varchar(255) DEFAULT NULL,
  `kilometro` varchar(255) DEFAULT NULL,
  `codigo_de_zona` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `nombre_de_via` varchar(255) DEFAULT NULL,
  `tipo_de_via` varchar(255) DEFAULT NULL,
  `tipo_de_zona` varchar(255) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `contribuyentesruc`
--

INSERT INTO `contribuyentesruc` (`ruc`, `nombre_razon_social`, `estado_contribuyente`, `condicion_domicilio`, `ubigeo`, `tipo_via`, `nombre_via`, `codigo_zona`, `tipo_zona`, `numero`, `interior`, `lote`, `departamento`, `manzana`, `kilometro`, `codigo_de_zona`, `created_at`, `nombre_de_via`, `tipo_de_via`, `tipo_de_zona`, `updated_at`) VALUES
('10097476646', 'GUZMAN ROLDAN GLORIA ROCIO', 'ACTIVO', 'HABIDO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10100214283', 'FERNANDEZ OSORIO CARLA GUADALUPE', 'ACTIVO', 'HABIDO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10198672004', 'QUISPE CAMAYO BERNARDINA', 'ACTIVO', 'HABIDO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10293373685', 'CASANI BARBACHAN LUIS ANTONIO', 'ACTIVO', 'HABIDO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10423882471', 'CALDERON BERROSPI MICHAEL JONATAN', 'ACTIVO', 'HABIDO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10427040319', 'GUERRERO ROSALES JUSTINO PEDRO', 'ACTIVO', 'HABIDO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10446716005', 'VILCA ARIAS RENZO', 'ACTIVO', 'HABIDO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10452159428', 'GARCIA CHANCO CARLOS AUGUSTO', 'ACTIVO', 'HABIDO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10458044924', 'HUAYMACARI VARGAS ROBERT', 'ACTIVO', 'HABIDO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10462067912', 'CRUZ BALLON JEAN GABRIEL', 'ACTIVO', 'PENDIENTE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10463572734', 'DAZA ROSALES GILDER', 'ACTIVO', 'HABIDO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10463982711', 'SONCCO MAMANI IRMA', 'ACTIVO', 'HABIDO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10467658099', 'FIESTAS CHERRE JAVIER SEBASTIAN', 'ACTIVO', 'HABIDO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10483511171', 'DIAZ LIZA LIZBETH', 'ACTIVO', 'HABIDO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10753654165', 'CABANA TITO KARIN TATIANA', 'ACTIVO', 'HABIDO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10758072075', 'RAMIREZ VALVERDE DAVID ELIAS', 'ACTIVO', 'HABIDO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('10806173695', 'TOQUE GOMEZ ALEJANDRO', 'ACTIVO', 'HABIDO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dni_tables`
--

CREATE TABLE `dni_tables` (
  `id` bigint(20) NOT NULL,
  `apellido_materno` varchar(255) DEFAULT NULL,
  `apellido_paterno` varchar(255) DEFAULT NULL,
  `cod_verifica` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `dni` varchar(255) DEFAULT NULL,
  `nombres` varchar(255) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `email`, `name`, `password`) VALUES
(103, 'prueba-ficticia', 'max winchez', '$2a$10$bvHOYpOVsFQxXsDnHsILmODwgKgO8FzMiz9ukxe1oPxhiVyklfSKe');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_seq`
--

CREATE TABLE `user_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `user_seq`
--

INSERT INTO `user_seq` (`next_val`) VALUES
(201);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contribuyentesruc`
--
ALTER TABLE `contribuyentesruc`
  ADD PRIMARY KEY (`ruc`);

--
-- Indices de la tabla `dni_tables`
--
ALTER TABLE `dni_tables`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UKob8kqyqqgmefl0aco34akdtpe` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `dni_tables`
--
ALTER TABLE `dni_tables`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
