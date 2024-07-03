-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 03, 2024 at 08:18 PM
-- Server version: 10.5.20-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id22001220_foods`
--

-- --------------------------------------------------------

--
-- Table structure for table `comidas`
--

CREATE TABLE `comidas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `precio` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `img` varchar(3000) NOT NULL,
  `popularidad` float NOT NULL,
  `cant_vendidos` smallint(6) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comidas`
--

INSERT INTO `comidas` (`id`, `nombre`, `descripcion`, `precio`, `id_categoria`, `img`, `popularidad`, `cant_vendidos`) VALUES
(6, 'Corrientazo de pollo', 'Arroz con pollo y ensalado', 25000, 2, 'https://www.sukkapap.com/wp-content/uploads/2020/09/%E0%B8%82%E0%B9%89%E0%B8%AD%E0%B8%A1%E0%B8%B9%E0%B8%A5%E0%B9%82%E0%B8%A0%E0%B8%8A%E0%B8%99%E0%B8%B2%E0%B8%81%E0%B8%B2%E0%B8%A3-%E0%B9%83%E0%B8%99-%E0%B8%82%E0%B9%89%E0%B8%B2%E0%B8%A7%E0%B8%AB%E0%B8%A1%E0%B8%81%E0%B9%84%E0%B8%81%E0%B9%88-1-%E0%B8%88%E0%B8%B2%E0%B8%99-%E0%B9%83%E0%B8%AB%E0%B9%89%E0%B8%9E%E0%B8%A5%E0%B8%B1%E0%B8%87%E0%B8%87%E0%B8%B2%E0%B8%99%E0%B8%97%E0%B8%B1%E0%B9%89%E0%B8%87%E0%B8%AA%E0%B8%B4%E0%B9%89%E0%B8%99-%E0%B9%80%E0%B8%97%E0%B9%88%E0%B8%B2%E0%B8%81%E0%B8%B1%E0%B8%9A.jpg', 4.5, 29),
(7, 'Corrientazo de cerdo', 'Arroz de cerdo y ensalado', 30000, 2, 'https://i.ytimg.com/vi/iIh99VjIjnw/maxresdefault.jpg', 3.5, 3),
(8, 'Corrientazo de Lomo', 'Arroz de lomo y papas', 15000, 2, 'https://decomidaperuana.com/wp-content/uploads/2020/10/lomo-saltado-de-pollo.jpg', 5, 26),
(9, 'Sopa de Costilla', 'Sopa y seco', 5000, 1, 'https://hablemosdeculturas.com/wp-content/uploads/2018/11/sancocho-de-gallina-10.jpg', 4.5, 15),
(10, 'Sopa de Mondongo', 'Sopa y seco', 8500, 1, 'https://i.pinimg.com/originals/e5/b1/ca/e5b1ca364ed24a42cb1f44100bafed70.jpg', 5, 30),
(11, 'Mote de Queso', 'Mote de queso', 5000, 1, 'https://recetasdecolombia.com/wp-content/uploads/2022/02/mote-de-queso--750x478.jpg', 5, 25),
(12, 'Manzana Postobón', 'Gaseosa de manzana', 3600, 4, 'https://staticprd.minuto30.com/wp-content/uploads/2017/11/postobon-600x342.jpg', 5, 19),
(13, 'Coca-Cola', 'Gaseosa Coca-Cola', 4000, 4, 'https://images.rappi.com/products/2983053b-2cad-4c4b-bc6a-f722e3e138d5.jpg?d=128x128&&q=70?d=1920xundefined&e=webp', 5, 16),
(14, 'Sprite', 'Gaseosa de Limón', 4000, 4, 'https://i.pinimg.com/originals/a7/58/af/a758af5f8f2219d50de5900c45d82bd3.jpg', 3, 12),
(15, 'Jugo de Maracuyá', 'Jugo de maracuyá', 2000, 4, 'https://www.alimentos-saludables.com/wp-content/uploads/2015/03/jugo-de-maracuya.jpg', 5, 13),
(16, 'Jugo de Fresa', 'Jugo de fresa', 4000, 4, 'https://images-gmi-pmc.edge-generalmills.com/4730bb1d-1083-422f-a3d9-dfa247eadf35.jpg', 4.5, 12),
(17, 'Jugo de Mora', 'Jugo de mora', 2000, 4, 'https://onepotluck.com/wp-content/uploads/2021/06/15.jpg', 5, 15),
(18, 'Helado de vainilla', 'Helado de vainilla', 7800, 3, 'https://th.bing.com/th/id/R.b69619bfcea7069d9c3aa074564dacae?rik=zAmMptL4svr6VA&riu=http%3a%2f%2fwww.gourmet.cl%2fwp-content%2fuploads%2f2012%2f07%2fhelado-de-vainilla.jpg&ehk=0kJkoMc02PgKHMbiIeer0pJd4gV6k1T2ZR2jSYWu12A%3d&risl=&pid=ImgRaw&r=0', 5, 14),
(19, 'Helado de Chocolate', 'Helado de Chocolate', 7500, 3, 'https://th.bing.com/th/id/OIP.QhAM01mhiYHhUPuVWRTSLQHaEk?pid=ImgDet&rs=1', 4, 16),
(20, 'Helado de Fresa', 'Helado de Fresa', 8700, 3, 'https://cdn2.cocinadelirante.com/sites/default/files/styles/gallerie/public/images/2016/06/florida-strawberry-ice-cream.jpg', 4.5, 17);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comidas`
--
ALTER TABLE `comidas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comidas`
--
ALTER TABLE `comidas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comidas`
--
ALTER TABLE `comidas`
  ADD CONSTRAINT `id_categoria` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
