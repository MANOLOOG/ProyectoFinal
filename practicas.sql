-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 23, 2023 at 09:51 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `practicas`
--

-- --------------------------------------------------------

--
-- Table structure for table `lugar`
--

CREATE TABLE `lugar` (
  `id_lugar` int(11) NOT NULL,
  `nombreLugar` varchar(255) NOT NULL,
  `descripcionLugar` text NOT NULL,
  `telefono` varchar(255) NOT NULL,
  `emailLugar` varchar(255) NOT NULL,
  `facebookLugar` varchar(255) NOT NULL,
  `horarioLugar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lugar`
--

INSERT INTO `lugar` (`id_lugar`, `nombreLugar`, `descripcionLugar`, `telefono`, `emailLugar`, `facebookLugar`, `horarioLugar`) VALUES
(1, 'Ejemplo', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Laboriosam, vel. Maiores voluptate eos provident minima nam perferendis non voluptatem ut?', '5520058150', 'ejemplo@example.com', 'lugar_ejemplo', '12 ');

-- --------------------------------------------------------

--
-- Table structure for table `plantel`
--

CREATE TABLE `plantel` (
  `id_plantel` int(11) NOT NULL,
  `nombrePlantel` varchar(255) NOT NULL,
  `clavePlantel` varchar(255) NOT NULL,
  `direccionPlantel` text NOT NULL,
  `telefonoPlantel` varchar(55) NOT NULL,
  `responsablePlantel` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plantel`
--

INSERT INTO `plantel` (`id_plantel`, `nombrePlantel`, `clavePlantel`, `direccionPlantel`, `telefonoPlantel`, `responsablePlantel`) VALUES
(1, 'Naucalpan', '1234', 'Calle 12', '5512301292', 'Elias');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id_user` int(11) NOT NULL,
  `nombre` varchar(55) NOT NULL,
  `apellidoP` varchar(55) NOT NULL,
  `apellidoM` varchar(55) NOT NULL,
  `username` varchar(55) NOT NULL,
  `direccion` text NOT NULL,
  `telefono` varchar(55) NOT NULL,
  `fecha` date NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id_user`, `nombre`, `apellidoP`, `apellidoM`, `username`, `direccion`, `telefono`, `fecha`, `email`, `password`) VALUES
(1, 'Emanuel', 'Ortiz', 'Garcia', 'Emanuel', 'Francisco I. Madero 9 San Rafael Chamapa 2da seccion', '5520058150', '2004-12-20', 'ejemplo@ejemplo.com', '12345'),
(2, 'a', 'a', 'a', 'a', 'a', '123', '2009-12-02', 'a@ejemplo.com', 'a');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lugar`
--
ALTER TABLE `lugar`
  ADD PRIMARY KEY (`id_lugar`);

--
-- Indexes for table `plantel`
--
ALTER TABLE `plantel`
  ADD PRIMARY KEY (`id_plantel`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lugar`
--
ALTER TABLE `lugar`
  MODIFY `id_lugar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `plantel`
--
ALTER TABLE `plantel`
  MODIFY `id_plantel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
