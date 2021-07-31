-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 19-03-2021 a las 19:03:51
-- Versión del servidor: 5.7.33
-- Versión de PHP: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `linkapps_libup`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `c_category`
--

CREATE TABLE `c_category` (
  `id_category` varchar(36) NOT NULL,
  `name` varchar(30) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 inactivo, 1 activo'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `c_category`
--

INSERT INTO `c_category` (`id_category`, `name`, `active`) VALUES
('256227d4454d11ebb', 'Moda', 1),
('28f3ebf8454b11ebb', 'Damas', 1),
('2c2ca17d454e11ebb', 'Alimentos y Bebidas', 1),
('2dd96e69454b11ebb', 'Caballero', 1),
('2e66cf75454d11ebb', 'Hogar', 1),
('3296ef2e454e11ebb', 'Herramientas', 1),
('3a79a5686a5f11eb9', 'Mariscos', 1),
('4b868f56454d11ebb', 'Belleza', 1),
('53e64467454d11ebb', 'Bebé', 1),
('574ade0a454b11ebb', 'Niños', 1),
('5a2aa56b454b11ebb', 'Niñas', 1),
('63af8eb8454d11ebb', 'Jardín', 1),
('817e7a59454d11ebb', 'Salud y Cuidado Personal', 1),
('8496d34e454c11ebb', 'Farmacia', 1),
('8d255245-da88-4b4f-8', 'Digital', 1),
('8d255245-da88-4b4f-9', 'Muebles', 1),
('8e51087fa53b11ea9', 'Perfumería', 1),
('8f461daf454c11ebb', 'Autos y Camionetas', 1),
('8ff7ec1a454d11ebb', 'Libros', 1),
('93b70c60454c11ebb', 'Mascotas', 1),
('a054126d454b11ebb', 'Oficina', 1),
('a35acd51454c11ebb', 'Música y Películas', 1),
('a3add9eb454d11ebb', 'Juegos y Juguetes', 1),
('b2211fc0a53b11ea9', 'Blancos', 1),
('b3db59b2454c11ebb', 'Computación', 1),
('b86d8531a53b11ea9', 'Deportes', 1),
('ba0e43b3454c11ebb', 'Servicios Profesionales', 1),
('bf27eeb2a53b11ea9', 'Restaurantes', 1),
('c2032233a53b11ea9', 'Bares', 1),
('ca5442ac454d11ebb', 'Industrial', 1),
('cb4f8134a53b11ea9', 'Electrónica', 1),
('cf2604a5a53b11ea9', 'Abarrotes', 1),
('d6d9c246a53b11ea9', 'Pesca', 1),
('da0a1aa7a53b11ea9', 'Casino', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `r_category_promo`
--

CREATE TABLE `r_category_promo` (
  `id_rcategorypromo` varchar(36) NOT NULL,
  `id_promo` varchar(36) NOT NULL,
  `id_category` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `r_category_promo`
--

INSERT INTO `r_category_promo` (`id_rcategorypromo`, `id_promo`, `id_category`) VALUES
('02a8ebc00b6111eb8', '02a5de7c0b6111eb8', 'cb4f8134a53b11ea9'),
('02a8ebc10b6111eb8', '02a5de7c0b6111eb8', '8d255245-da88-4b4f-8'),
('035b9a51237611ebb', 'e302c1950b5b11eb8', '8d255245-da88-4b4f-8'),
('035b9a52237611ebb', 'e302c1950b5b11eb8', 'da0a1aa7a53b11ea9'),
('0463a3222d3411eb8', '5b193a97099111eb8', '8e51087fa53b11ea9'),
('048df0c50b6711eb8', '048bf4f10b6711eb8', 'cf2604a5a53b11ea9'),
('048df0c60b6711eb8', '048bf4f10b6711eb8', 'da0a1aa7a53b11ea9'),
('048df0c70b6711eb8', '048bf4f10b6711eb8', 'd6d9c246a53b11ea9'),
('048df0c80b6711eb8', '048bf4f10b6711eb8', '8e51087fa53b11ea9'),
('048df0c90b6711eb8', '048bf4f10b6711eb8', 'b2211fc0a53b11ea9'),
('07d705370b6011eb8', '07d1ae030b6011eb8', 'cb4f8134a53b11ea9'),
('07d705380b6011eb8', '07d1ae030b6011eb8', '8d255245-da88-4b4f-8'),
('0804211d2e7d11eb8', '78fbeef10b5e11eb8', 'bf27eeb2a53b11ea9'),
('0804211e2e7d11eb8', '78fbeef10b5e11eb8', '8d255245-da88-4b4f-9'),
('082606f4334211ebb', '07c4ad10334211ebb', 'bf27eeb2a53b11ea9'),
('08654695237611ebb', 'e77506891ad311ebb', '8d255245-da88-4b4f-8'),
('08654696237611ebb', 'e77506891ad311ebb', 'da0a1aa7a53b11ea9'),
('12da9539237611ebb', '36e6388709b511eb8', '8d255245-da88-4b4f-8'),
('12da953a237611ebb', '36e6388709b511eb8', 'da0a1aa7a53b11ea9'),
('14bf79d97dd911eba', '21bf60e20b6311eb8', 'bf27eeb2a53b11ea9'),
('14bf79da7dd911eba', '21bf60e20b6311eb8', '2c2ca17d454e11ebb'),
('158431060b6111eb8', '157f27f20b6111eb8', 'cb4f8134a53b11ea9'),
('158431070b6111eb8', '157f27f20b6111eb8', '8d255245-da88-4b4f-8'),
('19554e9e0b6711eb8', '1953a0ea0b6711eb8', 'cf2604a5a53b11ea9'),
('19554e9f0b6711eb8', '1953a0ea0b6711eb8', 'da0a1aa7a53b11ea9'),
('19554ea00b6711eb8', '1953a0ea0b6711eb8', 'd6d9c246a53b11ea9'),
('19554ea10b6711eb8', '1953a0ea0b6711eb8', '8e51087fa53b11ea9'),
('19554ea20b6711eb8', '1953a0ea0b6711eb8', 'b2211fc0a53b11ea9'),
('19abd6fd0b6011eb8', '19aa9e790b6011eb8', 'cb4f8134a53b11ea9'),
('19abd6fe0b6011eb8', '19aa9e790b6011eb8', '8d255245-da88-4b4f-8'),
('1c9e22882e7c11eb8', '16eca17e0b5e11eb8', 'bf27eeb2a53b11ea9'),
('1c9e22892e7c11eb8', '16eca17e0b5e11eb8', '8d255245-da88-4b4f-9'),
('1c9e228a2e7c11eb8', '16eca17e0b5e11eb8', 'c2032233a53b11ea9'),
('1ef7e9710b6811eb8', '1ef4b51d0b6811eb8', 'cf2604a5a53b11ea9'),
('1ef7e9720b6811eb8', '1ef4b51d0b6811eb8', 'da0a1aa7a53b11ea9'),
('1ef7e9730b6811eb8', '1ef4b51d0b6811eb8', 'd6d9c246a53b11ea9'),
('1ef7e9740b6811eb8', '1ef4b51d0b6811eb8', '8e51087fa53b11ea9'),
('1ef7e9750b6811eb8', '1ef4b51d0b6811eb8', 'b2211fc0a53b11ea9'),
('23a91a91237611ebb', '4fac66f70b5b11eb8', '8d255245-da88-4b4f-8'),
('23a91a92237611ebb', '4fac66f70b5b11eb8', 'da0a1aa7a53b11ea9'),
('2441be632e7d11eb8', '243eff3f2e7d11eb8', 'bf27eeb2a53b11ea9'),
('2441be642e7d11eb8', '243eff3f2e7d11eb8', '8d255245-da88-4b4f-9'),
('2441be652e7d11eb8', '243eff3f2e7d11eb8', 'c2032233a53b11ea9'),
('267fd18d548011eba', '266ee198548011eba', 'd6d9c246a53b11ea9'),
('267fd18e548011eba', '266ee198548011eba', 'bf27eeb2a53b11ea9'),
('267fd18f548011eba', '266ee198548011eba', 'b86d8531a53b11ea9'),
('267fd190548011eba', '266ee198548011eba', '2c2ca17d454e11ebb'),
('28ed3a3e2e7c11eb8', 'c68b3ce20b5d11eb8', 'bf27eeb2a53b11ea9'),
('28ed3a3f2e7c11eb8', 'c68b3ce20b5d11eb8', '8d255245-da88-4b4f-9'),
('28ed3a402e7c11eb8', 'c68b3ce20b5d11eb8', 'c2032233a53b11ea9'),
('2a293a35237611ebb', '3a0f1b820b5b11eb8', '8d255245-da88-4b4f-8'),
('2a293a36237611ebb', '3a0f1b820b5b11eb8', 'da0a1aa7a53b11ea9'),
('2dcf05930b6011eb8', '2dcdcd0f0b6011eb8', 'cb4f8134a53b11ea9'),
('2dcf05940b6011eb8', '2dcdcd0f0b6011eb8', '8d255245-da88-4b4f-8'),
('2e2ed4e70b6711eb8', '2e2c15c30b6711eb8', 'cf2604a5a53b11ea9'),
('2e2ed4e80b6711eb8', '2e2c15c30b6711eb8', 'da0a1aa7a53b11ea9'),
('2e2ed4e90b6711eb8', '2e2c15c30b6711eb8', 'd6d9c246a53b11ea9'),
('2e2ed4ea0b6711eb8', '2e2c15c30b6711eb8', '8e51087fa53b11ea9'),
('2e2ed4eb0b6711eb8', '2e2c15c30b6711eb8', 'b2211fc0a53b11ea9'),
('2f0fc5d80b6411eb8', '2f0e8d540b6411eb8', 'd6d9c246a53b11ea9'),
('2f0fc5d90b6411eb8', '2f0e8d540b6411eb8', 'bf27eeb2a53b11ea9'),
('2f0fc5da0b6411eb8', '2f0e8d540b6411eb8', 'b86d8531a53b11ea9'),
('31d00eff6a8711eb9', '3194dabc6a8711eb9', '8d255245-da88-4b4f-8'),
('342bf3642e7c11eb8', 'd8c734e90b5d11eb8', 'bf27eeb2a53b11ea9'),
('342bf3652e7c11eb8', 'd8c734e90b5d11eb8', '8d255245-da88-4b4f-9'),
('342bf3662e7c11eb8', 'd8c734e90b5d11eb8', 'c2032233a53b11ea9'),
('346ace3b0b6111eb8', '34696ea80b6111eb8', 'cb4f8134a53b11ea9'),
('346ace3c0b6111eb8', '34696ea80b6111eb8', '8d255245-da88-4b4f-8'),
('34a3baf02e8711eb8', '34a149ec2e8711eb8', 'bf27eeb2a53b11ea9'),
('34a3baf12e8711eb8', '34a149ec2e8711eb8', '8d255245-da88-4b4f-9'),
('34a3baf22e8711eb8', '34a149ec2e8711eb8', 'c2032233a53b11ea9'),
('37575379334211ebb', '3753d105334211ebb', 'bf27eeb2a53b11ea9'),
('379cada9237611ebb', '90d78ead0b5a11eb8', '8d255245-da88-4b4f-8'),
('379cadaa237611ebb', '90d78ead0b5a11eb8', 'da0a1aa7a53b11ea9'),
('393cb42b56b911ebb', '393a432856b911ebb', 'bf27eeb2a53b11ea9'),
('393cb42c56b911ebb', '393a432856b911ebb', 'c2032233a53b11ea9'),
('3d446ead237611ebb', 'bed6008a0b5a11eb8', '8d255245-da88-4b4f-8'),
('3d446eae237611ebb', 'bed6008a0b5a11eb8', 'da0a1aa7a53b11ea9'),
('404d1d4a2e7c11eb8', 'ed8c48d00b5d11eb8', 'bf27eeb2a53b11ea9'),
('404d1d4b2e7c11eb8', 'ed8c48d00b5d11eb8', '8d255245-da88-4b4f-9'),
('41fe963a0b6811eb8', '41fd5db60b6811eb8', 'cf2604a5a53b11ea9'),
('41fe963b0b6811eb8', '41fd5db60b6811eb8', 'da0a1aa7a53b11ea9'),
('41fe963c0b6811eb8', '41fd5db60b6811eb8', 'd6d9c246a53b11ea9'),
('41fe963d0b6811eb8', '41fd5db60b6811eb8', '8e51087fa53b11ea9'),
('41fe963e0b6811eb8', '41fd5db60b6811eb8', 'b2211fc0a53b11ea9'),
('42ecc34754f711eba', '3e8ad3b90b6511eb8', 'd6d9c246a53b11ea9'),
('42ecc34854f711eba', '3e8ad3b90b6511eb8', 'bf27eeb2a53b11ea9'),
('42ecc34954f711eba', '3e8ad3b90b6511eb8', 'b86d8531a53b11ea9'),
('435f2dc00b6711eb8', '4354313c0b6711eb8', 'cf2604a5a53b11ea9'),
('435f2dc10b6711eb8', '4354313c0b6711eb8', 'da0a1aa7a53b11ea9'),
('435f2dc20b6711eb8', '4354313c0b6711eb8', 'd6d9c246a53b11ea9'),
('435f2dc30b6711eb8', '4354313c0b6711eb8', '8e51087fa53b11ea9'),
('435f54d40b6711eb8', '4354313c0b6711eb8', 'b2211fc0a53b11ea9'),
('4522b5e92e8611eb8', '451e49162e8611eb8', 'bf27eeb2a53b11ea9'),
('4522b5ea2e8611eb8', '451e49162e8611eb8', '8d255245-da88-4b4f-9'),
('4522b5eb2e8611eb8', '451e49162e8611eb8', 'c2032233a53b11ea9'),
('46d322be0b6011eb8', '40b520450b6011eb8', 'cb4f8134a53b11ea9'),
('46d322bf0b6011eb8', '40b520450b6011eb8', '8d255245-da88-4b4f-8'),
('47e95059547d11eba', '47d15b86547d11eba', 'b86d8531a53b11ea9'),
('4ced673d56b811ebb', '4ce9bdba56b811ebb', 'bf27eeb2a53b11ea9'),
('4ced673e56b811ebb', '4ce9bdba56b811ebb', 'c2032233a53b11ea9'),
('4cee49b00b6111eb8', '4cec4ddd0b6111eb8', 'cb4f8134a53b11ea9'),
('4cee49b10b6111eb8', '4cec4ddd0b6111eb8', '8d255245-da88-4b4f-8'),
('4e9432707eb411eba', '1b62ffbd0b6411eb8', 'bf27eeb2a53b11ea9'),
('4e9432717eb411eba', '1b62ffbd0b6411eb8', '2c2ca17d454e11ebb'),
('4e9d9ce5237511ebb', '207ec3ed0b5b11eb8', '8d255245-da88-4b4f-8'),
('4e9d9ce6237511ebb', '207ec3ed0b5b11eb8', 'da0a1aa7a53b11ea9'),
('521a119a6aef11eb9', 'ac7206e026a711eb9', '8d255245-da88-4b4f-8'),
('521a119b6aef11eb9', 'ac7206e026a711eb9', 'da0a1aa7a53b11ea9'),
('52570651237611ebb', 'd4c1315c1ad111eb9', '8d255245-da88-4b4f-8'),
('52570652237611ebb', 'd4c1315c1ad111eb9', 'da0a1aa7a53b11ea9'),
('5263eb840b6311eb8', '52617a800b6311eb8', 'd6d9c246a53b11ea9'),
('5263eb850b6311eb8', '52617a800b6311eb8', 'bf27eeb2a53b11ea9'),
('5263eb860b6311eb8', '52617a800b6311eb8', 'b86d8531a53b11ea9'),
('52a0786d0b6611eb8', '529e2e790b6611eb8', 'cf2604a5a53b11ea9'),
('52a0786e0b6611eb8', '529e2e790b6611eb8', 'da0a1aa7a53b11ea9'),
('52a0786f0b6611eb8', '529e2e790b6611eb8', 'd6d9c246a53b11ea9'),
('52a078700b6611eb8', '529e2e790b6611eb8', '8e51087fa53b11ea9'),
('52a078710b6611eb8', '529e2e790b6611eb8', 'b2211fc0a53b11ea9'),
('5ab022df2e8611eb8', '5aadd8ec2e8611eb8', 'bf27eeb2a53b11ea9'),
('5ab022e02e8611eb8', '5aadd8ec2e8611eb8', 'c2032233a53b11ea9'),
('5c3d56430b6811eb8', '5c3b335f0b6811eb8', 'cf2604a5a53b11ea9'),
('5c3d56440b6811eb8', '5c3b335f0b6811eb8', 'da0a1aa7a53b11ea9'),
('5c3d56450b6811eb8', '5c3b335f0b6811eb8', 'd6d9c246a53b11ea9'),
('5c3d56460b6811eb8', '5c3b335f0b6811eb8', '8e51087fa53b11ea9'),
('5c3d56470b6811eb8', '5c3b335f0b6811eb8', 'b2211fc0a53b11ea9'),
('5c71a99e6af011eb9', '00286a180b5b11eb8', '8e51087fa53b11ea9'),
('5ca8a2d02e7c11eb8', '5ca372ac2e7c11eb8', 'bf27eeb2a53b11ea9'),
('5ca8a2d12e7c11eb8', '5ca372ac2e7c11eb8', 'c2032233a53b11ea9'),
('5da895326aeb11eb9', '7652608209b611eb8', '8d255245-da88-4b4f-8'),
('5da895336aeb11eb9', '7652608209b611eb8', 'da0a1aa7a53b11ea9'),
('5e1df3390b6711eb8', '5e1b5b250b6711eb8', 'cf2604a5a53b11ea9'),
('5e1df33a0b6711eb8', '5e1b5b250b6711eb8', 'da0a1aa7a53b11ea9'),
('5e1df33b0b6711eb8', '5e1b5b250b6711eb8', 'd6d9c246a53b11ea9'),
('5e1df33c0b6711eb8', '5e1b5b250b6711eb8', '8e51087fa53b11ea9'),
('5e1df33d0b6711eb8', '5e1b5b250b6711eb8', 'b2211fc0a53b11ea9'),
('5eee1ca67eb711eba', '0e40136b0b6311eb8', 'bf27eeb2a53b11ea9'),
('5eee1ca77eb711eba', '0e40136b0b6311eb8', '2c2ca17d454e11ebb'),
('5f1f88dd237511ebb', '035ac91a0b5c11eb8', '8d255245-da88-4b4f-8'),
('5f1f88de237511ebb', '035ac91a0b5c11eb8', 'da0a1aa7a53b11ea9'),
('5f926eb40b6011eb8', '5f8ffdb00b6011eb8', 'cb4f8134a53b11ea9'),
('5f926eb50b6011eb8', '5f8ffdb00b6011eb8', '8d255245-da88-4b4f-8'),
('606e5ae5237611ebb', 'd37786df0b5a11eb8', '8d255245-da88-4b4f-8'),
('606e5ae6237611ebb', 'd37786df0b5a11eb8', 'da0a1aa7a53b11ea9'),
('6371fdc9828811eba', '61c704cb0b6411eb8', 'bf27eeb2a53b11ea9'),
('6371fdca828811eba', '61c704cb0b6411eb8', '2c2ca17d454e11ebb'),
('646a7bab0b6311eb8', '646991470b6311eb8', 'd6d9c246a53b11ea9'),
('646a7bac0b6311eb8', '646991470b6311eb8', 'bf27eeb2a53b11ea9'),
('646a7bad0b6311eb8', '646991470b6311eb8', 'b86d8531a53b11ea9'),
('660d60216af011eb9', '1fd502d11ad211eb9', '8d255245-da88-4b4f-8'),
('660d60226af011eb9', '1fd502d11ad211eb9', 'da0a1aa7a53b11ea9'),
('6905f5e60b6611eb8', '6903fa120b6611eb8', 'cf2604a5a53b11ea9'),
('6905f5e70b6611eb8', '6903fa120b6611eb8', 'da0a1aa7a53b11ea9'),
('6905f5e80b6611eb8', '6903fa120b6611eb8', 'd6d9c246a53b11ea9'),
('6905f5e90b6611eb8', '6903fa120b6611eb8', '8e51087fa53b11ea9'),
('6905f5ea0b6611eb8', '6903fa120b6611eb8', 'b2211fc0a53b11ea9'),
('6afe2b85237511ebb', '3accf33d09b611eb8', '8d255245-da88-4b4f-8'),
('6afe2b86237511ebb', '3accf33d09b611eb8', 'da0a1aa7a53b11ea9'),
('6ffe13dd828711eba', '0a4bffb70b6411eb8', 'bf27eeb2a53b11ea9'),
('6ffe13de828711eba', '0a4bffb70b6411eb8', '2c2ca17d454e11ebb'),
('7125cae9237511ebb', '49a195441ad311ebb', '8d255245-da88-4b4f-8'),
('7125caea237511ebb', '49a195441ad311ebb', 'da0a1aa7a53b11ea9'),
('78e6ceba0b6011eb8', '78e4d2e60b6011eb8', 'cb4f8134a53b11ea9'),
('78e6cebb0b6011eb8', '78e4d2e60b6011eb8', '8d255245-da88-4b4f-8'),
('78fda33f0b6611eb8', '78fc1c9b0b6611eb8', 'cf2604a5a53b11ea9'),
('78fda3400b6611eb8', '78fc1c9b0b6611eb8', 'da0a1aa7a53b11ea9'),
('78fda3410b6611eb8', '78fc1c9b0b6611eb8', 'd6d9c246a53b11ea9'),
('78fdca520b6611eb8', '78fc1c9b0b6611eb8', '8e51087fa53b11ea9'),
('78fdca530b6611eb8', '78fc1c9b0b6611eb8', 'b2211fc0a53b11ea9'),
('79dad9452e7c11eb8', '79cbe5222e7c11eb8', 'bf27eeb2a53b11ea9'),
('79dad9462e7c11eb8', '79cbe5222e7c11eb8', 'c2032233a53b11ea9'),
('7a930ab256b811ebb', '7a910edf56b811ebb', 'bf27eeb2a53b11ea9'),
('80c9aec20b6711eb8', '80c716ae0b6711eb8', 'cf2604a5a53b11ea9'),
('80c9aec30b6711eb8', '80c716ae0b6711eb8', 'da0a1aa7a53b11ea9'),
('80c9aec40b6711eb8', '80c716ae0b6711eb8', 'd6d9c246a53b11ea9'),
('80c9aec50b6711eb8', '80c716ae0b6711eb8', '8e51087fa53b11ea9'),
('80c9aec60b6711eb8', '80c716ae0b6711eb8', 'b2211fc0a53b11ea9'),
('80f90ab60b6111eb8', '80f624820b6111eb8', 'cb4f8134a53b11ea9'),
('80f931c70b6111eb8', '80f624820b6111eb8', '8d255245-da88-4b4f-8'),
('8248fff1237511ebb', '8983fd3c0b5b11eb8', '8d255245-da88-4b4f-8'),
('8248fff2237511ebb', '8983fd3c0b5b11eb8', 'da0a1aa7a53b11ea9'),
('8590340c592e11ebb', '85624639592e11ebb', '256227d4454d11ebb'),
('8590340d592e11ebb', '85624639592e11ebb', '28f3ebf8454b11ebb'),
('861bbf962e8711eb8', 'df2bfff02e8611eb8', 'bf27eeb2a53b11ea9'),
('861bbf972e8711eb8', 'df2bfff02e8611eb8', 'c2032233a53b11ea9'),
('89b6cbd80b6611eb8', '89b433c40b6611eb8', 'cf2604a5a53b11ea9'),
('89b6cbd90b6611eb8', '89b433c40b6611eb8', 'da0a1aa7a53b11ea9'),
('89b6cbda0b6611eb8', '89b433c40b6611eb8', 'd6d9c246a53b11ea9'),
('89b6cbdb0b6611eb8', '89b433c40b6611eb8', '8e51087fa53b11ea9'),
('89b6cbdc0b6611eb8', '89b433c40b6611eb8', 'b2211fc0a53b11ea9'),
('8ac0887c0b6811eb8', '8abe17780b6811eb8', 'cf2604a5a53b11ea9'),
('8ac0887d0b6811eb8', '8abe17780b6811eb8', 'da0a1aa7a53b11ea9'),
('8ac0887e0b6811eb8', '8abe17780b6811eb8', 'd6d9c246a53b11ea9'),
('8ac0887f0b6811eb8', '8abe17780b6811eb8', '8e51087fa53b11ea9'),
('8ac088800b6811eb8', '8abe17780b6811eb8', 'b2211fc0a53b11ea9'),
('8ae289b5237511ebb', '8a22c4dc1ad611eba', '8d255245-da88-4b4f-8'),
('8ae289b6237511ebb', '8a22c4dc1ad611eba', 'da0a1aa7a53b11ea9'),
('911db0766aec11eb9', 'ad0fe57709b611eb8', '8d255245-da88-4b4f-8'),
('911db0776aec11eb9', 'ad0fe57709b611eb8', 'da0a1aa7a53b11ea9'),
('91b30f1b0b6711eb8', '91b161670b6711eb8', 'cf2604a5a53b11ea9'),
('91b30f1c0b6711eb8', '91b161670b6711eb8', 'da0a1aa7a53b11ea9'),
('91b30f1d0b6711eb8', '91b161670b6711eb8', 'd6d9c246a53b11ea9'),
('91b30f1e0b6711eb8', '91b161670b6711eb8', '8e51087fa53b11ea9'),
('91b30f1f0b6711eb8', '91b161670b6711eb8', 'b2211fc0a53b11ea9'),
('934d2e736a8711eb9', '93266c906a8711eb9', '8d255245-da88-4b4f-8'),
('9cc492d10b6611eb8', '9cc15e7d0b6611eb8', 'cf2604a5a53b11ea9'),
('9cc492d20b6611eb8', '9cc15e7d0b6611eb8', 'da0a1aa7a53b11ea9'),
('9cc492d30b6611eb8', '9cc15e7d0b6611eb8', 'd6d9c246a53b11ea9'),
('9cc492d40b6611eb8', '9cc15e7d0b6611eb8', '8e51087fa53b11ea9'),
('9cc492d50b6611eb8', '9cc15e7d0b6611eb8', 'b2211fc0a53b11ea9'),
('a26420640b6711eb8', 'a26224900b6711eb8', 'cf2604a5a53b11ea9'),
('a26420650b6711eb8', 'a26224900b6711eb8', 'da0a1aa7a53b11ea9'),
('a26420660b6711eb8', 'a26224900b6711eb8', 'd6d9c246a53b11ea9'),
('a26420670b6711eb8', 'a26224900b6711eb8', '8e51087fa53b11ea9'),
('a26420680b6711eb8', 'a26224900b6711eb8', 'b2211fc0a53b11ea9'),
('a36720fc0b6111eb8', 'a36266080b6111eb8', 'cb4f8134a53b11ea9'),
('a36720fd0b6111eb8', 'a36266080b6111eb8', '8d255245-da88-4b4f-8'),
('a546c3066a8311eb9', '26fb8dd2099111eb8', '8d255245-da88-4b4f-8'),
('a546c3076a8311eb9', '26fb8dd2099111eb8', 'da0a1aa7a53b11ea9'),
('a6ff50480b6311eb8', 'a6fe3ed50b6311eb8', 'd6d9c246a53b11ea9'),
('a6ff50490b6311eb8', 'a6fe3ed50b6311eb8', 'bf27eeb2a53b11ea9'),
('a6ff504a0b6311eb8', 'a6fe3ed50b6311eb8', 'b86d8531a53b11ea9'),
('a96314272e8611eb8', 'ce51ca0f0b5e11eb8', 'bf27eeb2a53b11ea9'),
('a96314282e8611eb8', 'ce51ca0f0b5e11eb8', '8d255245-da88-4b4f-9'),
('a96314292e8611eb8', 'ce51ca0f0b5e11eb8', 'c2032233a53b11ea9'),
('aab716ab2e7c11eb8', 'aab198672e7c11eb8', 'bf27eeb2a53b11ea9'),
('aab716ac2e7c11eb8', 'aab198672e7c11eb8', '8d255245-da88-4b4f-9'),
('aab716ad2e7c11eb8', 'aab198672e7c11eb8', 'c2032233a53b11ea9'),
('aea97939237511ebb', '9decafe11ad611eba', '8d255245-da88-4b4f-8'),
('aea9793a237511ebb', '9decafe11ad611eba', 'da0a1aa7a53b11ea9'),
('b0b2598a0b6611eb8', 'b0b0f9f60b6611eb8', 'cf2604a5a53b11ea9'),
('b0b2598b0b6611eb8', 'b0b0f9f60b6611eb8', 'da0a1aa7a53b11ea9'),
('b0b2598c0b6611eb8', 'b0b0f9f60b6611eb8', 'd6d9c246a53b11ea9'),
('b0b2598d0b6611eb8', 'b0b0f9f60b6611eb8', '8e51087fa53b11ea9'),
('b0b2598e0b6611eb8', 'b0b0f9f60b6611eb8', 'b2211fc0a53b11ea9'),
('b62028bd0b6711eb8', 'b61f3e590b6711eb8', 'cf2604a5a53b11ea9'),
('b62028be0b6711eb8', 'b61f3e590b6711eb8', 'da0a1aa7a53b11ea9'),
('b62028bf0b6711eb8', 'b61f3e590b6711eb8', 'd6d9c246a53b11ea9'),
('b62028c00b6711eb8', 'b61f3e590b6711eb8', '8e51087fa53b11ea9'),
('b62028c10b6711eb8', 'b61f3e590b6711eb8', 'b2211fc0a53b11ea9'),
('b6c6819a592011ebb', 'b6acdf17592011ebb', '256227d4454d11ebb'),
('b6c6819b592011ebb', 'b6acdf17592011ebb', '28f3ebf8454b11ebb'),
('b6d45243334511ebb', 'b65e5ef0334511ebb', 'bf27eeb2a53b11ea9'),
('ba8c158d2e8611eb8', 'f0df4f360b5e11eb8', 'bf27eeb2a53b11ea9'),
('ba8c158e2e8611eb8', 'f0df4f360b5e11eb8', '8d255245-da88-4b4f-9'),
('ba8c158f2e8611eb8', 'f0df4f360b5e11eb8', 'c2032233a53b11ea9'),
('bec439f6548011eba', 'bec17ad1548011eba', 'd6d9c246a53b11ea9'),
('bec439f7548011eba', 'bec17ad1548011eba', 'bf27eeb2a53b11ea9'),
('bec439f8548011eba', 'bec17ad1548011eba', 'b86d8531a53b11ea9'),
('bec439f9548011eba', 'bec17ad1548011eba', '2c2ca17d454e11ebb'),
('c0ce8ddd237511ebb', '9e0b6be10b5b11eb8', '8d255245-da88-4b4f-8'),
('c0ce8dde237511ebb', '9e0b6be10b5b11eb8', 'da0a1aa7a53b11ea9'),
('c5ae62bf0b6311eb8', 'c5ad785b0b6311eb8', 'd6d9c246a53b11ea9'),
('c5ae62c00b6311eb8', 'c5ad785b0b6311eb8', 'bf27eeb2a53b11ea9'),
('c5ae62c10b6311eb8', 'c5ad785b0b6311eb8', 'b86d8531a53b11ea9'),
('c67a68760b6711eb8', 'c6797e120b6711eb8', 'cf2604a5a53b11ea9'),
('c67a68770b6711eb8', 'c6797e120b6711eb8', 'da0a1aa7a53b11ea9'),
('c67a68780b6711eb8', 'c6797e120b6711eb8', 'd6d9c246a53b11ea9'),
('c67a68790b6711eb8', 'c6797e120b6711eb8', '8e51087fa53b11ea9'),
('c67a687a0b6711eb8', 'c6797e120b6711eb8', 'b2211fc0a53b11ea9'),
('c683c6c20b6111eb8', 'c6812eae0b6111eb8', 'cb4f8134a53b11ea9'),
('c683c6c30b6111eb8', 'c6812eae0b6111eb8', '8d255245-da88-4b4f-8'),
('c9e40c6c206a11eba', 'c995c559206a11eba', '8d255245-da88-4b4f-8'),
('ca4151930b6611eb8', 'ca3d59ef0b6611eb8', 'cf2604a5a53b11ea9'),
('ca4151940b6611eb8', 'ca3d59ef0b6611eb8', 'da0a1aa7a53b11ea9'),
('ca4151950b6611eb8', 'ca3d59ef0b6611eb8', 'd6d9c246a53b11ea9'),
('ca4151960b6611eb8', 'ca3d59ef0b6611eb8', '8e51087fa53b11ea9'),
('ca4151970b6611eb8', 'ca3d59ef0b6611eb8', 'b2211fc0a53b11ea9'),
('cb6b5147334511ebb', '6cecb7212e8611eb8', 'bf27eeb2a53b11ea9'),
('cb6b5148334511ebb', '6cecb7212e8611eb8', '8d255245-da88-4b4f-9'),
('cb6b5149334511ebb', '6cecb7212e8611eb8', 'c2032233a53b11ea9'),
('cd62ff4a334111ebb', 'cd495cc6334111ebb', 'bf27eeb2a53b11ea9'),
('ced044e12e7c11eb8', '297951950b5e11eb8', 'bf27eeb2a53b11ea9'),
('ced044e22e7c11eb8', '297951950b5e11eb8', '8d255245-da88-4b4f-9'),
('ced044e32e7c11eb8', '297951950b5e11eb8', 'c2032233a53b11ea9'),
('cf9da910592511ebb', '9a571b4e591f11ebb', '256227d4454d11ebb'),
('cf9da911592511ebb', '9a571b4e591f11ebb', '28f3ebf8454b11ebb'),
('d6470e2f0b6711eb8', 'd645d5ab0b6711eb8', 'cf2604a5a53b11ea9'),
('d6470e300b6711eb8', 'd645d5ab0b6711eb8', 'da0a1aa7a53b11ea9'),
('d6470e310b6711eb8', 'd645d5ab0b6711eb8', 'd6d9c246a53b11ea9'),
('d6470e320b6711eb8', 'd645d5ab0b6711eb8', '8e51087fa53b11ea9'),
('d6470e330b6711eb8', 'd645d5ab0b6711eb8', 'b2211fc0a53b11ea9'),
('d86d6d760b6311eb8', 'd86bbfc20b6311eb8', 'd6d9c246a53b11ea9'),
('d86d6d770b6311eb8', 'd86bbfc20b6311eb8', 'bf27eeb2a53b11ea9'),
('d86d6d780b6311eb8', 'd86bbfc20b6311eb8', 'b86d8531a53b11ea9'),
('d89f6b132e8b11eb8', '8e5cda401ad811eba', '8d255245-da88-4b4f-8'),
('d89f6b142e8b11eb8', '8e5cda401ad811eba', 'da0a1aa7a53b11ea9'),
('da0ab8472e7c11eb8', '3d7018fc0b5e11eb8', 'bf27eeb2a53b11ea9'),
('da0ab8482e7c11eb8', '3d7018fc0b5e11eb8', '8d255245-da88-4b4f-9'),
('da0ab8492e7c11eb8', '3d7018fc0b5e11eb8', 'c2032233a53b11ea9'),
('dbe428c1592f11ebb', 'dbb354be592f11ebb', '256227d4454d11ebb'),
('dbe44fd2592f11ebb', 'dbb354be592f11ebb', '28f3ebf8454b11ebb'),
('dd078e2e334211ebb', '0280aa170b5e11eb8', 'bf27eeb2a53b11ea9'),
('dd078e2f334211ebb', '0280aa170b5e11eb8', 'c2032233a53b11ea9'),
('e0f3148656b811ebb', 'e0efe03356b811ebb', 'bf27eeb2a53b11ea9'),
('e36711d2547d11eba', 'e3605b0f547d11eba', 'd6d9c246a53b11ea9'),
('e36711d3547d11eba', 'e3605b0f547d11eba', 'bf27eeb2a53b11ea9'),
('e36711d4547d11eba', 'e3605b0f547d11eba', 'b86d8531a53b11ea9'),
('e36711d5547d11eba', 'e3605b0f547d11eba', '2c2ca17d454e11ebb'),
('e47d6185237511ebb', 'b03a6b960b5b11eb8', '8d255245-da88-4b4f-8'),
('e47d6186237511ebb', 'b03a6b960b5b11eb8', 'da0a1aa7a53b11ea9'),
('e7de4d1d2e7c11eb8', '54ce4e530b5e11eb8', 'bf27eeb2a53b11ea9'),
('e7de4d1e2e7c11eb8', '54ce4e530b5e11eb8', '8d255245-da88-4b4f-9'),
('e7de4d1f2e7c11eb8', '54ce4e530b5e11eb8', 'c2032233a53b11ea9'),
('e8b46c7c0b6611eb8', 'e8afd8980b6611eb8', 'cf2604a5a53b11ea9'),
('e8b46c7d0b6611eb8', 'e8afd8980b6611eb8', 'da0a1aa7a53b11ea9'),
('e8b46c7e0b6611eb8', 'e8afd8980b6611eb8', 'd6d9c246a53b11ea9'),
('e8b46c7f0b6611eb8', 'e8afd8980b6611eb8', '8e51087fa53b11ea9'),
('e8b46c800b6611eb8', 'e8afd8980b6611eb8', 'b2211fc0a53b11ea9'),
('e99b29cd0b6311eb8', 'e99a18590b6311eb8', 'd6d9c246a53b11ea9'),
('e99b29ce0b6311eb8', 'e99a18590b6311eb8', 'bf27eeb2a53b11ea9'),
('e99b29cf0b6311eb8', 'e99a18590b6311eb8', 'b86d8531a53b11ea9'),
('e9edaa192f8311eb8', 'b1a97fee09b811eb8', '8d255245-da88-4b4f-8'),
('e9edaa1a2f8311eb8', 'b1a97fee09b811eb8', 'da0a1aa7a53b11ea9'),
('ec0ea303828711eba', '22b98cd20b6511eb8', 'bf27eeb2a53b11ea9'),
('ec0ea304828711eba', '22b98cd20b6511eb8', '2c2ca17d454e11ebb'),
('ec9588592e8611eb8', 'ab3e73180b5e11eb8', 'bf27eeb2a53b11ea9'),
('ec95885a2e8611eb8', 'ab3e73180b5e11eb8', '8d255245-da88-4b4f-9'),
('ec95885b2e8611eb8', 'ab3e73180b5e11eb8', 'c2032233a53b11ea9'),
('ee5efba9237511ebb', 'c0a2b50b0b5b11eb8', '8d255245-da88-4b4f-8'),
('ee5efbaa237511ebb', 'c0a2b50b0b5b11eb8', 'da0a1aa7a53b11ea9'),
('ee8eb9280b6711eb8', 'ee8d59940b6711eb8', 'cf2604a5a53b11ea9'),
('ee8eb9290b6711eb8', 'ee8d59940b6711eb8', 'da0a1aa7a53b11ea9'),
('ee8eb92a0b6711eb8', 'ee8d59940b6711eb8', 'd6d9c246a53b11ea9'),
('ee8eb92b0b6711eb8', 'ee8d59940b6711eb8', '8e51087fa53b11ea9'),
('ee8eb92c0b6711eb8', 'ee8d59940b6711eb8', 'b2211fc0a53b11ea9'),
('f19ca92c2d3311eb8', '02af858009b511eb8', '8e51087fa53b11ea9'),
('f732947f334111ebb', 'f6f6c3fb334111ebb', 'bf27eeb2a53b11ea9'),
('f89d2c840b6311eb8', 'f89b7ed00b6311eb8', 'd6d9c246a53b11ea9'),
('f89d2c850b6311eb8', 'f89b7ed00b6311eb8', 'bf27eeb2a53b11ea9'),
('f89d2c860b6311eb8', 'f89b7ed00b6311eb8', 'b86d8531a53b11ea9'),
('fbda1eef2d3311eb8', '0e1b25a409b611eb8', '8e51087fa53b11ea9'),
('fbfe20592e7c11eb8', '66ec370a0b5e11eb8', 'bf27eeb2a53b11ea9'),
('fbfe205a2e7c11eb8', '66ec370a0b5e11eb8', 'c2032233a53b11ea9'),
('fc042d7d237511ebb', 'd22918b00b5b11eb8', '8d255245-da88-4b4f-8'),
('fc042d7e237511ebb', 'd22918b00b5b11eb8', 'da0a1aa7a53b11ea9'),
('fd3fb22654f611eba', '3c1615b90b6311eb8', 'd6d9c246a53b11ea9'),
('fd3fb22754f611eba', '3c1615b90b6311eb8', 'bf27eeb2a53b11ea9'),
('fd3fb22854f611eba', '3c1615b90b6311eb8', 'b86d8531a53b11ea9');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `r_category_shop`
--

CREATE TABLE `r_category_shop` (
  `id_rcategory` varchar(36) NOT NULL,
  `id_shop` varchar(36) NOT NULL,
  `id_category` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `r_category_shop`
--

INSERT INTO `r_category_shop` (`id_rcategory`, `id_shop`, `id_category`) VALUES
('71af3d3a334211ebb', '98b4bbcb0b5c11eb8', 'bf27eeb2a53b11ea9'),
('71af3d3b334211ebb', '98b4bbcb0b5c11eb8', 'c2032233a53b11ea9'),
('7e0898c3592011ebb', '0027dd77592011ebb', '256227d4454d11ebb'),
('7e0898c4592011ebb', '0027dd77592011ebb', '28f3ebf8454b11ebb'),
('9b002a810b5f11eb8', '3eb9babd0b5f11eb8', 'cb4f8134a53b11ea9'),
('9b002a820b5f11eb8', '3eb9babd0b5f11eb8', '8d255245-da88-4b4f-8'),
('b6a6557056b711ebb', '320a6d5c56b711ebb', 'bf27eeb2a53b11ea9'),
('b6a6557156b711ebb', '320a6d5c56b711ebb', 'c2032233a53b11ea9'),
('bd5e7b5e590b11ebb', '3d7efd1e58fb11ebb', '256227d4454d11ebb'),
('bd5ea26f590b11ebb', '3d7efd1e58fb11ebb', '28f3ebf8454b11ebb'),
('d584bc542d3311eb8', 'f0f4a759065e11eb8', '8d255245-da88-4b4f-8'),
('d584bc552d3311eb8', 'f0f4a759065e11eb8', 'da0a1aa7a53b11ea9'),
('d584bc562d3311eb8', 'f0f4a759065e11eb8', '8e51087fa53b11ea9'),
('ee0158640b6511eb8', '811f0c100b6511eb8', 'cf2604a5a53b11ea9'),
('ee017f750b6511eb8', '811f0c100b6511eb8', 'da0a1aa7a53b11ea9'),
('ee017f760b6511eb8', '811f0c100b6511eb8', 'd6d9c246a53b11ea9'),
('ee017f770b6511eb8', '811f0c100b6511eb8', '8e51087fa53b11ea9'),
('ee017f780b6511eb8', '811f0c100b6511eb8', 'b2211fc0a53b11ea9'),
('f4a990a26c8711eba', '3dd0da640b6211eb8', 'bf27eeb2a53b11ea9'),
('f4a990a36c8711eba', '3dd0da640b6211eb8', '2c2ca17d454e11ebb');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `r_promo_branch`
--

CREATE TABLE `r_promo_branch` (
  `id_promo_branch` varchar(36) NOT NULL,
  `id_promo` varchar(36) NOT NULL,
  `id_branch` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `r_promo_branch`
--

INSERT INTO `r_promo_branch` (`id_promo_branch`, `id_promo`, `id_branch`) VALUES
('02a8ebbe0b6111eb8', '02a5de7c0b6111eb8', 'a9fe5ca30b5f11eb8'),
('02a8ebbf0b6111eb8', '02a5de7c0b6111eb8', 'd37a7aab0b5f11eb8'),
('035b9a50237611ebb', 'e302c1950b5b11eb8', 'fd70805f084b11eb8'),
('0463a3212d3411eb8', '5b193a97099111eb8', 'fd70805f084b11eb8'),
('048df0c30b6711eb8', '048bf4f10b6711eb8', '22e64cd10b6611eb8'),
('048df0c40b6711eb8', '048bf4f10b6711eb8', 'fbed30290b6511eb8'),
('07d705350b6011eb8', '07d1ae030b6011eb8', 'a9fe5ca30b5f11eb8'),
('07d705360b6011eb8', '07d1ae030b6011eb8', 'd37a7aab0b5f11eb8'),
('0804211c2e7d11eb8', '78fbeef10b5e11eb8', '6972d71a0b5d11eb8'),
('082606f2334211ebb', '07c4ad10334211ebb', '30d60ad20b5d11eb8'),
('082606f3334211ebb', '07c4ad10334211ebb', '6972d71a0b5d11eb8'),
('08654694237611ebb', 'e77506891ad311ebb', 'fd70805f084b11eb8'),
('12da9538237611ebb', '36e6388709b511eb8', 'fd70805f084b11eb8'),
('14bf52c67dd911eba', '21bf60e20b6311eb8', '5c1ec3ce547c11eba'),
('14bf52c77dd911eba', '21bf60e20b6311eb8', 'b6a43feb0b6211eb8'),
('14bf52c87dd911eba', '21bf60e20b6311eb8', 'de74a9c30b6211eb8'),
('158431040b6111eb8', '157f27f20b6111eb8', 'a9fe5ca30b5f11eb8'),
('158431050b6111eb8', '157f27f20b6111eb8', 'd37a7aab0b5f11eb8'),
('19554e9c0b6711eb8', '1953a0ea0b6711eb8', '22e64cd10b6611eb8'),
('19554e9d0b6711eb8', '1953a0ea0b6711eb8', 'fbed30290b6511eb8'),
('19abd6fb0b6011eb8', '19aa9e790b6011eb8', 'a9fe5ca30b5f11eb8'),
('19abd6fc0b6011eb8', '19aa9e790b6011eb8', 'd37a7aab0b5f11eb8'),
('1c9e22862e7c11eb8', '16eca17e0b5e11eb8', '30d60ad20b5d11eb8'),
('1c9e22872e7c11eb8', '16eca17e0b5e11eb8', '6972d71a0b5d11eb8'),
('1ef7e96f0b6811eb8', '1ef4b51d0b6811eb8', '22e64cd10b6611eb8'),
('1ef7e9700b6811eb8', '1ef4b51d0b6811eb8', 'fbed30290b6511eb8'),
('23a91a90237611ebb', '4fac66f70b5b11eb8', 'fd70805f084b11eb8'),
('244197512e7d11eb8', '243eff3f2e7d11eb8', '30d60ad20b5d11eb8'),
('2441be622e7d11eb8', '243eff3f2e7d11eb8', '6972d71a0b5d11eb8'),
('267faa7a548011eba', '266ee198548011eba', '5c1ec3ce547c11eba'),
('267faa7b548011eba', '266ee198548011eba', 'b6a43feb0b6211eb8'),
('267fd18c548011eba', '266ee198548011eba', 'de74a9c30b6211eb8'),
('28ed3a3c2e7c11eb8', 'c68b3ce20b5d11eb8', '30d60ad20b5d11eb8'),
('28ed3a3d2e7c11eb8', 'c68b3ce20b5d11eb8', '6972d71a0b5d11eb8'),
('2a293a34237611ebb', '3a0f1b820b5b11eb8', 'fd70805f084b11eb8'),
('2dcf05910b6011eb8', '2dcdcd0f0b6011eb8', 'a9fe5ca30b5f11eb8'),
('2dcf05920b6011eb8', '2dcdcd0f0b6011eb8', 'd37a7aab0b5f11eb8'),
('2e2ed4e50b6711eb8', '2e2c15c30b6711eb8', '22e64cd10b6611eb8'),
('2e2ed4e60b6711eb8', '2e2c15c30b6711eb8', 'fbed30290b6511eb8'),
('2f0fc5d60b6411eb8', '2f0e8d540b6411eb8', 'b6a43feb0b6211eb8'),
('2f0fc5d70b6411eb8', '2f0e8d540b6411eb8', 'de74a9c30b6211eb8'),
('31d00efe6a8711eb9', '3194dabc6a8711eb9', 'fd70805f084b11eb8'),
('342bf3622e7c11eb8', 'd8c734e90b5d11eb8', '30d60ad20b5d11eb8'),
('342bf3632e7c11eb8', 'd8c734e90b5d11eb8', '6972d71a0b5d11eb8'),
('346ace3a0b6111eb8', '34696ea80b6111eb8', 'a9fe5ca30b5f11eb8'),
('34a3baee2e8711eb8', '34a149ec2e8711eb8', '30d60ad20b5d11eb8'),
('34a3baef2e8711eb8', '34a149ec2e8711eb8', '6972d71a0b5d11eb8'),
('37575377334211ebb', '3753d105334211ebb', '30d60ad20b5d11eb8'),
('37575378334211ebb', '3753d105334211ebb', '6972d71a0b5d11eb8'),
('379cada8237611ebb', '90d78ead0b5a11eb8', 'fd70805f084b11eb8'),
('393cb42a56b911ebb', '393a432856b911ebb', 'db524dc256b711ebb'),
('3d446eac237611ebb', 'bed6008a0b5a11eb8', 'fd70805f084b11eb8'),
('404d1d482e7c11eb8', 'ed8c48d00b5d11eb8', '30d60ad20b5d11eb8'),
('404d1d492e7c11eb8', 'ed8c48d00b5d11eb8', '6972d71a0b5d11eb8'),
('41fe96380b6811eb8', '41fd5db60b6811eb8', '22e64cd10b6611eb8'),
('41fe96390b6811eb8', '41fd5db60b6811eb8', 'fbed30290b6511eb8'),
('42ecc34554f711eba', '3e8ad3b90b6511eb8', 'b6a43feb0b6211eb8'),
('42ecc34654f711eba', '3e8ad3b90b6511eb8', 'de74a9c30b6211eb8'),
('435f2dbe0b6711eb8', '4354313c0b6711eb8', '22e64cd10b6611eb8'),
('435f2dbf0b6711eb8', '4354313c0b6711eb8', 'fbed30290b6511eb8'),
('4522b5e82e8611eb8', '451e49162e8611eb8', '30d60ad20b5d11eb8'),
('46d2fbac0b6011eb8', '40b520450b6011eb8', 'a9fe5ca30b5f11eb8'),
('46d322bd0b6011eb8', '40b520450b6011eb8', 'd37a7aab0b5f11eb8'),
('47e95058547d11eba', '47d15b86547d11eba', 'b6a43feb0b6211eb8'),
('4ced673c56b811ebb', '4ce9bdba56b811ebb', 'db524dc256b711ebb'),
('4cee49af0b6111eb8', '4cec4ddd0b6111eb8', 'd37a7aab0b5f11eb8'),
('4e94326d7eb411eba', '1b62ffbd0b6411eb8', '5c1ec3ce547c11eba'),
('4e94326e7eb411eba', '1b62ffbd0b6411eb8', 'b6a43feb0b6211eb8'),
('4e94326f7eb411eba', '1b62ffbd0b6411eb8', 'de74a9c30b6211eb8'),
('4e9d75d4237511ebb', '207ec3ed0b5b11eb8', 'fd70805f084b11eb8'),
('521a11996aef11eb9', 'ac7206e026a711eb9', 'fd70805f084b11eb8'),
('52570650237611ebb', 'd4c1315c1ad111eb9', 'fd70805f084b11eb8'),
('5263eb820b6311eb8', '52617a800b6311eb8', 'b6a43feb0b6211eb8'),
('5263eb830b6311eb8', '52617a800b6311eb8', 'de74a9c30b6211eb8'),
('52a0786b0b6611eb8', '529e2e790b6611eb8', '22e64cd10b6611eb8'),
('52a0786c0b6611eb8', '529e2e790b6611eb8', 'fbed30290b6511eb8'),
('5ab022de2e8611eb8', '5aadd8ec2e8611eb8', '30d60ad20b5d11eb8'),
('5c3d56410b6811eb8', '5c3b335f0b6811eb8', '22e64cd10b6611eb8'),
('5c3d56420b6811eb8', '5c3b335f0b6811eb8', 'fbed30290b6511eb8'),
('5c71a99d6af011eb9', '00286a180b5b11eb8', 'fd70805f084b11eb8'),
('5ca8a2ce2e7c11eb8', '5ca372ac2e7c11eb8', '30d60ad20b5d11eb8'),
('5ca8a2cf2e7c11eb8', '5ca372ac2e7c11eb8', '6972d71a0b5d11eb8'),
('5da895316aeb11eb9', '7652608209b611eb8', 'fd70805f084b11eb8'),
('5e1df3370b6711eb8', '5e1b5b250b6711eb8', '22e64cd10b6611eb8'),
('5e1df3380b6711eb8', '5e1b5b250b6711eb8', 'fbed30290b6511eb8'),
('5eee1ca37eb711eba', '0e40136b0b6311eb8', '5c1ec3ce547c11eba'),
('5eee1ca47eb711eba', '0e40136b0b6311eb8', 'b6a43feb0b6211eb8'),
('5eee1ca57eb711eba', '0e40136b0b6311eb8', 'de74a9c30b6211eb8'),
('5f1f88dc237511ebb', '035ac91a0b5c11eb8', 'fd70805f084b11eb8'),
('5f926eb20b6011eb8', '5f8ffdb00b6011eb8', 'a9fe5ca30b5f11eb8'),
('5f926eb30b6011eb8', '5f8ffdb00b6011eb8', 'd37a7aab0b5f11eb8'),
('606e5ae4237611ebb', 'd37786df0b5a11eb8', 'fd70805f084b11eb8'),
('6371fdc6828811eba', '61c704cb0b6411eb8', '5c1ec3ce547c11eba'),
('6371fdc7828811eba', '61c704cb0b6411eb8', 'b6a43feb0b6211eb8'),
('6371fdc8828811eba', '61c704cb0b6411eb8', 'de74a9c30b6211eb8'),
('646a7ba90b6311eb8', '646991470b6311eb8', 'b6a43feb0b6211eb8'),
('646a7baa0b6311eb8', '646991470b6311eb8', 'de74a9c30b6211eb8'),
('660d60206af011eb9', '1fd502d11ad211eb9', 'fd70805f084b11eb8'),
('6905f5e40b6611eb8', '6903fa120b6611eb8', '22e64cd10b6611eb8'),
('6905f5e50b6611eb8', '6903fa120b6611eb8', 'fbed30290b6511eb8'),
('6afe2b84237511ebb', '3accf33d09b611eb8', 'fd70805f084b11eb8'),
('6ffe13da828711eba', '0a4bffb70b6411eb8', '5c1ec3ce547c11eba'),
('6ffe13db828711eba', '0a4bffb70b6411eb8', 'b6a43feb0b6211eb8'),
('6ffe13dc828711eba', '0a4bffb70b6411eb8', 'de74a9c30b6211eb8'),
('7125cae8237511ebb', '49a195441ad311ebb', 'fd70805f084b11eb8'),
('78e6ceb80b6011eb8', '78e4d2e60b6011eb8', 'a9fe5ca30b5f11eb8'),
('78e6ceb90b6011eb8', '78e4d2e60b6011eb8', 'd37a7aab0b5f11eb8'),
('78fda33d0b6611eb8', '78fc1c9b0b6611eb8', '22e64cd10b6611eb8'),
('78fda33e0b6611eb8', '78fc1c9b0b6611eb8', 'fbed30290b6511eb8'),
('79dad9442e7c11eb8', '79cbe5222e7c11eb8', '30d60ad20b5d11eb8'),
('7a930ab156b811ebb', '7a910edf56b811ebb', 'db524dc256b711ebb'),
('80c9aec00b6711eb8', '80c716ae0b6711eb8', '22e64cd10b6611eb8'),
('80c9aec10b6711eb8', '80c716ae0b6711eb8', 'fbed30290b6511eb8'),
('80f90ab40b6111eb8', '80f624820b6111eb8', 'a9fe5ca30b5f11eb8'),
('80f90ab50b6111eb8', '80f624820b6111eb8', 'd37a7aab0b5f11eb8'),
('8248fff0237511ebb', '8983fd3c0b5b11eb8', 'fd70805f084b11eb8'),
('8590340b592e11ebb', '85624639592e11ebb', '83bf3336590b11ebb'),
('861bbf942e8711eb8', 'df2bfff02e8611eb8', '30d60ad20b5d11eb8'),
('861bbf952e8711eb8', 'df2bfff02e8611eb8', '6972d71a0b5d11eb8'),
('89b6cbd60b6611eb8', '89b433c40b6611eb8', '22e64cd10b6611eb8'),
('89b6cbd70b6611eb8', '89b433c40b6611eb8', 'fbed30290b6511eb8'),
('8ac0887a0b6811eb8', '8abe17780b6811eb8', '22e64cd10b6611eb8'),
('8ac0887b0b6811eb8', '8abe17780b6811eb8', 'fbed30290b6511eb8'),
('8ae289b4237511ebb', '8a22c4dc1ad611eba', 'fd70805f084b11eb8'),
('911db0756aec11eb9', 'ad0fe57709b611eb8', 'fd70805f084b11eb8'),
('91b30f190b6711eb8', '91b161670b6711eb8', '22e64cd10b6611eb8'),
('91b30f1a0b6711eb8', '91b161670b6711eb8', 'fbed30290b6511eb8'),
('934d2e726a8711eb9', '93266c906a8711eb9', 'fd70805f084b11eb8'),
('9cc492cf0b6611eb8', '9cc15e7d0b6611eb8', '22e64cd10b6611eb8'),
('9cc492d00b6611eb8', '9cc15e7d0b6611eb8', 'fbed30290b6511eb8'),
('a26420620b6711eb8', 'a26224900b6711eb8', '22e64cd10b6611eb8'),
('a26420630b6711eb8', 'a26224900b6711eb8', 'fbed30290b6511eb8'),
('a36720fa0b6111eb8', 'a36266080b6111eb8', 'a9fe5ca30b5f11eb8'),
('a36720fb0b6111eb8', 'a36266080b6111eb8', 'd37a7aab0b5f11eb8'),
('a546c3056a8311eb9', '26fb8dd2099111eb8', 'fd70805f084b11eb8'),
('a6ff50470b6311eb8', 'a6fe3ed50b6311eb8', 'de74a9c30b6211eb8'),
('a96314252e8611eb8', 'ce51ca0f0b5e11eb8', '30d60ad20b5d11eb8'),
('a96314262e8611eb8', 'ce51ca0f0b5e11eb8', '6972d71a0b5d11eb8'),
('aab716a92e7c11eb8', 'aab198672e7c11eb8', '30d60ad20b5d11eb8'),
('aab716aa2e7c11eb8', 'aab198672e7c11eb8', '6972d71a0b5d11eb8'),
('aea97938237511ebb', '9decafe11ad611eba', 'fd70805f084b11eb8'),
('b0b259880b6611eb8', 'b0b0f9f60b6611eb8', '22e64cd10b6611eb8'),
('b0b259890b6611eb8', 'b0b0f9f60b6611eb8', 'fbed30290b6511eb8'),
('b62028bb0b6711eb8', 'b61f3e590b6711eb8', '22e64cd10b6611eb8'),
('b62028bc0b6711eb8', 'b61f3e590b6711eb8', 'fbed30290b6511eb8'),
('b6c68199592011ebb', 'b6acdf17592011ebb', '553cb7eb592011ebb'),
('b6d45242334511ebb', 'b65e5ef0334511ebb', '30d60ad20b5d11eb8'),
('ba8c158b2e8611eb8', 'f0df4f360b5e11eb8', '30d60ad20b5d11eb8'),
('ba8c158c2e8611eb8', 'f0df4f360b5e11eb8', '6972d71a0b5d11eb8'),
('bec439f3548011eba', 'bec17ad1548011eba', '5c1ec3ce547c11eba'),
('bec439f4548011eba', 'bec17ad1548011eba', 'b6a43feb0b6211eb8'),
('bec439f5548011eba', 'bec17ad1548011eba', 'de74a9c30b6211eb8'),
('c0ce8ddc237511ebb', '9e0b6be10b5b11eb8', 'fd70805f084b11eb8'),
('c5ae62bd0b6311eb8', 'c5ad785b0b6311eb8', 'b6a43feb0b6211eb8'),
('c5ae62be0b6311eb8', 'c5ad785b0b6311eb8', 'de74a9c30b6211eb8'),
('c67a68740b6711eb8', 'c6797e120b6711eb8', '22e64cd10b6611eb8'),
('c67a68750b6711eb8', 'c6797e120b6711eb8', 'fbed30290b6511eb8'),
('c683c6c00b6111eb8', 'c6812eae0b6111eb8', 'a9fe5ca30b5f11eb8'),
('c683c6c10b6111eb8', 'c6812eae0b6111eb8', 'd37a7aab0b5f11eb8'),
('c9e40c6b206a11eba', 'c995c559206a11eba', 'fd70805f084b11eb8'),
('ca4151910b6611eb8', 'ca3d59ef0b6611eb8', '22e64cd10b6611eb8'),
('ca4151920b6611eb8', 'ca3d59ef0b6611eb8', 'fbed30290b6511eb8'),
('cb6b5145334511ebb', '6cecb7212e8611eb8', '30d60ad20b5d11eb8'),
('cb6b5146334511ebb', '6cecb7212e8611eb8', '6972d71a0b5d11eb8'),
('cd62ff48334111ebb', 'cd495cc6334111ebb', '30d60ad20b5d11eb8'),
('cd62ff49334111ebb', 'cd495cc6334111ebb', '6972d71a0b5d11eb8'),
('ced01dcf2e7c11eb8', '297951950b5e11eb8', '30d60ad20b5d11eb8'),
('ced044e02e7c11eb8', '297951950b5e11eb8', '6972d71a0b5d11eb8'),
('cf9da90f592511ebb', '9a571b4e591f11ebb', '83bf3336590b11ebb'),
('d6470e2d0b6711eb8', 'd645d5ab0b6711eb8', '22e64cd10b6611eb8'),
('d6470e2e0b6711eb8', 'd645d5ab0b6711eb8', 'fbed30290b6511eb8'),
('d86d6d740b6311eb8', 'd86bbfc20b6311eb8', 'b6a43feb0b6211eb8'),
('d86d6d750b6311eb8', 'd86bbfc20b6311eb8', 'de74a9c30b6211eb8'),
('d89f6b122e8b11eb8', '8e5cda401ad811eba', 'fd70805f084b11eb8'),
('da0ab8452e7c11eb8', '3d7018fc0b5e11eb8', '30d60ad20b5d11eb8'),
('da0ab8462e7c11eb8', '3d7018fc0b5e11eb8', '6972d71a0b5d11eb8'),
('dbe428c0592f11ebb', 'dbb354be592f11ebb', '83bf3336590b11ebb'),
('dd078e2d334211ebb', '0280aa170b5e11eb8', '30d60ad20b5d11eb8'),
('e0f3148556b811ebb', 'e0efe03356b811ebb', 'db524dc256b711ebb'),
('e36711d1547d11eba', 'e3605b0f547d11eba', 'b6a43feb0b6211eb8'),
('e47d6184237511ebb', 'b03a6b960b5b11eb8', 'fd70805f084b11eb8'),
('e7de4d1b2e7c11eb8', '54ce4e530b5e11eb8', '30d60ad20b5d11eb8'),
('e7de4d1c2e7c11eb8', '54ce4e530b5e11eb8', '6972d71a0b5d11eb8'),
('e8b46c7a0b6611eb8', 'e8afd8980b6611eb8', '22e64cd10b6611eb8'),
('e8b46c7b0b6611eb8', 'e8afd8980b6611eb8', 'fbed30290b6511eb8'),
('e99b29cb0b6311eb8', 'e99a18590b6311eb8', 'b6a43feb0b6211eb8'),
('e99b29cc0b6311eb8', 'e99a18590b6311eb8', 'de74a9c30b6211eb8'),
('e9edaa182f8311eb8', 'b1a97fee09b811eb8', 'fd70805f084b11eb8'),
('ec0ea300828711eba', '22b98cd20b6511eb8', '5c1ec3ce547c11eba'),
('ec0ea301828711eba', '22b98cd20b6511eb8', 'b6a43feb0b6211eb8'),
('ec0ea302828711eba', '22b98cd20b6511eb8', 'de74a9c30b6211eb8'),
('ec9588572e8611eb8', 'ab3e73180b5e11eb8', '30d60ad20b5d11eb8'),
('ec9588582e8611eb8', 'ab3e73180b5e11eb8', '6972d71a0b5d11eb8'),
('ee5efba8237511ebb', 'c0a2b50b0b5b11eb8', 'fd70805f084b11eb8'),
('ee8eb9260b6711eb8', 'ee8d59940b6711eb8', '22e64cd10b6611eb8'),
('ee8eb9270b6711eb8', 'ee8d59940b6711eb8', 'fbed30290b6511eb8'),
('f19ca92b2d3311eb8', '02af858009b511eb8', 'fd70805f084b11eb8'),
('f732947d334111ebb', 'f6f6c3fb334111ebb', '30d60ad20b5d11eb8'),
('f732947e334111ebb', 'f6f6c3fb334111ebb', '6972d71a0b5d11eb8'),
('f89d2c820b6311eb8', 'f89b7ed00b6311eb8', 'b6a43feb0b6211eb8'),
('f89d2c830b6311eb8', 'f89b7ed00b6311eb8', 'de74a9c30b6211eb8'),
('fbda1eee2d3311eb8', '0e1b25a409b611eb8', 'fd70805f084b11eb8'),
('fbfe20572e7c11eb8', '66ec370a0b5e11eb8', '30d60ad20b5d11eb8'),
('fbfe20582e7c11eb8', '66ec370a0b5e11eb8', '6972d71a0b5d11eb8'),
('fc042d7c237511ebb', 'd22918b00b5b11eb8', 'fd70805f084b11eb8'),
('fd3fb22454f611eba', '3c1615b90b6311eb8', 'b6a43feb0b6211eb8'),
('fd3fb22554f611eba', '3c1615b90b6311eb8', 'de74a9c30b6211eb8');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `r_schedule`
--

CREATE TABLE `r_schedule` (
  `id_schedule` varchar(36) NOT NULL,
  `day` enum('Lunes','Martes','Miercoles','Jueves','Viernes','Sabado','Domingo') NOT NULL,
  `hour_open` varchar(20) DEFAULT NULL,
  `hour_close` varchar(20) DEFAULT NULL,
  `is_closed` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 cerrado, 1 abierto',
  `id_branch` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `r_schedule`
--

INSERT INTO `r_schedule` (`id_schedule`, `day`, `hour_open`, `hour_close`, `is_closed`, `id_branch`) VALUES
('13caf5ba0b6611eb8', 'Lunes', '01:30', '16:00', 1, 'fbed30290b6511eb8'),
('13caf5bb0b6611eb8', 'Martes', '01:30', '23:00', 1, 'fbed30290b6511eb8'),
('13caf5bc0b6611eb8', 'Miercoles', '14:00', '16:30', 1, 'fbed30290b6511eb8'),
('13caf5bd0b6611eb8', 'Jueves', '01:00', '22:00', 1, 'fbed30290b6511eb8'),
('13caf5be0b6611eb8', 'Viernes', '00:30', '23:00', 1, 'fbed30290b6511eb8'),
('13caf5bf0b6611eb8', 'Sabado', NULL, NULL, 0, 'fbed30290b6511eb8'),
('13caf5c00b6611eb8', 'Domingo', NULL, NULL, 0, 'fbed30290b6511eb8'),
('1fe32022592611ebb', 'Lunes', '09:00', '20:00', 1, '83bf3336590b11ebb'),
('1fe32023592611ebb', 'Martes', '09:00', '20:00', 1, '83bf3336590b11ebb'),
('1fe32024592611ebb', 'Miercoles', '09:00', '20:00', 1, '83bf3336590b11ebb'),
('1fe32025592611ebb', 'Jueves', '09:00', '20:00', 1, '83bf3336590b11ebb'),
('1fe32026592611ebb', 'Viernes', '09:00', '20:00', 1, '83bf3336590b11ebb'),
('1fe32027592611ebb', 'Sabado', '09:00', '14:00', 1, '83bf3336590b11ebb'),
('1fe32028592611ebb', 'Domingo', NULL, NULL, 0, '83bf3336590b11ebb'),
('3c2ca3120b6611eb8', 'Lunes', '00:30', '23:00', 1, '22e64cd10b6611eb8'),
('3c2ca3130b6611eb8', 'Martes', '00:30', '23:00', 1, '22e64cd10b6611eb8'),
('3c2ca3140b6611eb8', 'Miercoles', '00:30', '22:30', 1, '22e64cd10b6611eb8'),
('3c2ca3150b6611eb8', 'Jueves', '08:30', '23:30', 1, '22e64cd10b6611eb8'),
('3c2ca3160b6611eb8', 'Viernes', '00:30', '23:30', 1, '22e64cd10b6611eb8'),
('3c2ca3170b6611eb8', 'Sabado', NULL, NULL, 0, '22e64cd10b6611eb8'),
('3c2ca3180b6611eb8', 'Domingo', NULL, NULL, 0, '22e64cd10b6611eb8'),
('77d2535c592011ebb', 'Lunes', '09:00', '20:00', 1, '553cb7eb592011ebb'),
('77d2535d592011ebb', 'Martes', '09:00', '20:00', 1, '553cb7eb592011ebb'),
('77d2535e592011ebb', 'Miercoles', '09:00', '20:00', 1, '553cb7eb592011ebb'),
('77d2535f592011ebb', 'Jueves', '09:00', '20:00', 1, '553cb7eb592011ebb'),
('77d25360592011ebb', 'Viernes', '09:00', '20:00', 1, '553cb7eb592011ebb'),
('77d25361592011ebb', 'Sabado', '09:00', '14:00', 1, '553cb7eb592011ebb'),
('77d25362592011ebb', 'Domingo', NULL, NULL, 0, '553cb7eb592011ebb'),
('7bb6af9f547c11eba', 'Lunes', '01:00', '07:00', 1, '5c1ec3ce547c11eba'),
('7bb6afa0547c11eba', 'Martes', NULL, NULL, 0, '5c1ec3ce547c11eba'),
('7bb6afa1547c11eba', 'Miercoles', '01:30', '08:00', 1, '5c1ec3ce547c11eba'),
('7bb6afa2547c11eba', 'Jueves', NULL, NULL, 0, '5c1ec3ce547c11eba'),
('7bb6afa3547c11eba', 'Viernes', NULL, NULL, 0, '5c1ec3ce547c11eba'),
('7bb6afa4547c11eba', 'Sabado', NULL, NULL, 0, '5c1ec3ce547c11eba'),
('7bb6afa5547c11eba', 'Domingo', NULL, NULL, 0, '5c1ec3ce547c11eba'),
('8a8a851b0b5d11eb8', 'Lunes', '00:30', '20:30', 1, '6972d71a0b5d11eb8'),
('8a8a851c0b5d11eb8', 'Martes', '00:30', '22:00', 1, '6972d71a0b5d11eb8'),
('8a8aac2d0b5d11eb8', 'Miercoles', '01:30', '22:30', 1, '6972d71a0b5d11eb8'),
('8a8aac2e0b5d11eb8', 'Jueves', '00:30', '13:00', 1, '6972d71a0b5d11eb8'),
('8a8aac2f0b5d11eb8', 'Viernes', '09:30', '23:30', 1, '6972d71a0b5d11eb8'),
('8a8aac300b5d11eb8', 'Sabado', '00:30', '23:30', 1, '6972d71a0b5d11eb8'),
('8a8aac310b5d11eb8', 'Domingo', NULL, NULL, 0, '6972d71a0b5d11eb8'),
('a740a7530cb811eb8', 'Lunes', '02:00', '23:00', 1, 'fd70805f084b11eb8'),
('a740a7540cb811eb8', 'Martes', '06:30', '22:00', 1, 'fd70805f084b11eb8'),
('a740a7550cb811eb8', 'Miercoles', '01:30', '18:30', 1, 'fd70805f084b11eb8'),
('a740a7560cb811eb8', 'Jueves', '01:30', '21:30', 1, 'fd70805f084b11eb8'),
('a740a7570cb811eb8', 'Viernes', '06:00', '23:30', 1, 'fd70805f084b11eb8'),
('a740a7580cb811eb8', 'Sabado', NULL, NULL, 0, 'fd70805f084b11eb8'),
('a740a7590cb811eb8', 'Domingo', NULL, NULL, 0, 'fd70805f084b11eb8'),
('c6969d040b5f11eb8', 'Lunes', '00:00', '17:00', 1, 'a9fe5ca30b5f11eb8'),
('c6969d050b5f11eb8', 'Martes', '00:30', '23:30', 1, 'a9fe5ca30b5f11eb8'),
('c6969d060b5f11eb8', 'Miercoles', '02:00', '22:00', 1, 'a9fe5ca30b5f11eb8'),
('c6969d070b5f11eb8', 'Jueves', '01:30', '23:00', 1, 'a9fe5ca30b5f11eb8'),
('c6969d080b5f11eb8', 'Viernes', '02:00', '22:30', 1, 'a9fe5ca30b5f11eb8'),
('c6969d090b5f11eb8', 'Sabado', NULL, NULL, 0, 'a9fe5ca30b5f11eb8'),
('c6969d0a0b5f11eb8', 'Domingo', NULL, NULL, 0, 'a9fe5ca30b5f11eb8'),
('cd623d9c0b6211eb8', 'Lunes', '01:30', '15:30', 1, 'b6a43feb0b6211eb8'),
('cd6264ad0b6211eb8', 'Martes', '08:00', '23:00', 1, 'b6a43feb0b6211eb8'),
('cd6264ae0b6211eb8', 'Miercoles', '02:00', '22:30', 1, 'b6a43feb0b6211eb8'),
('cd6264af0b6211eb8', 'Jueves', '01:30', '22:30', 1, 'b6a43feb0b6211eb8'),
('cd6264b00b6211eb8', 'Viernes', '16:00', '23:00', 1, 'b6a43feb0b6211eb8'),
('cd6264b10b6211eb8', 'Sabado', NULL, NULL, 0, 'b6a43feb0b6211eb8'),
('cd6264b20b6211eb8', 'Domingo', NULL, NULL, 0, 'b6a43feb0b6211eb8'),
('e57686ff5b5511ebb', 'Lunes', '09:00', '20:00', 1, 'bd91f8ee5b5511ebb'),
('e57687005b5511ebb', 'Martes', '09:00', '20:00', 1, 'bd91f8ee5b5511ebb'),
('e57687015b5511ebb', 'Miercoles', '09:00', '20:00', 1, 'bd91f8ee5b5511ebb'),
('e57687025b5511ebb', 'Jueves', '09:00', '20:00', 1, 'bd91f8ee5b5511ebb'),
('e57687035b5511ebb', 'Viernes', '09:00', '20:00', 1, 'bd91f8ee5b5511ebb'),
('e57687045b5511ebb', 'Sabado', '09:00', '14:00', 1, 'bd91f8ee5b5511ebb'),
('e57687055b5511ebb', 'Domingo', NULL, NULL, 0, 'bd91f8ee5b5511ebb'),
('e9b628fc0b5f11eb8', 'Lunes', '02:00', '23:30', 1, 'd37a7aab0b5f11eb8'),
('e9b628fd0b5f11eb8', 'Martes', '02:00', '20:00', 1, 'd37a7aab0b5f11eb8'),
('e9b628fe0b5f11eb8', 'Miercoles', '22:30', '21:00', 1, 'd37a7aab0b5f11eb8'),
('e9b628ff0b5f11eb8', 'Jueves', '16:00', '17:30', 1, 'd37a7aab0b5f11eb8'),
('e9b629000b5f11eb8', 'Viernes', '14:00', '22:30', 1, 'd37a7aab0b5f11eb8'),
('e9b629010b5f11eb8', 'Sabado', NULL, NULL, 0, 'd37a7aab0b5f11eb8'),
('e9b629020b5f11eb8', 'Domingo', NULL, NULL, 0, 'd37a7aab0b5f11eb8'),
('e9c1cf5a2e7b11eb8', 'Lunes', '02:00', '23:30', 1, '30d60ad20b5d11eb8'),
('e9c1cf5b2e7b11eb8', 'Martes', '01:30', '16:00', 1, '30d60ad20b5d11eb8'),
('e9c1cf5c2e7b11eb8', 'Miercoles', '01:00', '22:00', 1, '30d60ad20b5d11eb8'),
('e9c1cf5d2e7b11eb8', 'Jueves', '00:30', '22:30', 1, '30d60ad20b5d11eb8'),
('e9c1cf5e2e7b11eb8', 'Viernes', '00:30', '22:00', 1, '30d60ad20b5d11eb8'),
('e9c1cf5f2e7b11eb8', 'Sabado', '02:00', '23:30', 1, '30d60ad20b5d11eb8'),
('e9c1cf602e7b11eb8', 'Domingo', NULL, NULL, 0, '30d60ad20b5d11eb8'),
('f244f5f75b5711ebb', 'Lunes', '06:30', '22:30', 1, 'c2b44b665b5711ebb'),
('f244f5f85b5711ebb', 'Martes', '06:30', '22:30', 1, 'c2b44b665b5711ebb'),
('f244f5f95b5711ebb', 'Miercoles', '06:30', '22:30', 1, 'c2b44b665b5711ebb'),
('f244f5fa5b5711ebb', 'Jueves', '06:30', '22:30', 1, 'c2b44b665b5711ebb'),
('f244f5fb5b5711ebb', 'Viernes', NULL, NULL, 0, 'c2b44b665b5711ebb'),
('f244f5fc5b5711ebb', 'Sabado', NULL, NULL, 0, 'c2b44b665b5711ebb'),
('f244f5fd5b5711ebb', 'Domingo', NULL, NULL, 0, 'c2b44b665b5711ebb'),
('f61280240b6211eb8', 'Lunes', '16:30', '23:00', 1, 'de74a9c30b6211eb8'),
('f612a7350b6211eb8', 'Martes', '01:30', '22:30', 1, 'de74a9c30b6211eb8'),
('f612a7360b6211eb8', 'Miercoles', '12:30', '22:00', 1, 'de74a9c30b6211eb8'),
('f612a7370b6211eb8', 'Jueves', '06:30', '16:30', 1, 'de74a9c30b6211eb8'),
('f612a7380b6211eb8', 'Viernes', '08:00', '22:30', 1, 'de74a9c30b6211eb8'),
('f612a7390b6211eb8', 'Sabado', NULL, NULL, 0, 'de74a9c30b6211eb8'),
('f612a73a0b6211eb8', 'Domingo', NULL, NULL, 0, 'de74a9c30b6211eb8'),
('ffb1acb356b711ebb', 'Lunes', '02:30', '07:30', 1, 'db524dc256b711ebb'),
('ffb1acb456b711ebb', 'Martes', NULL, NULL, 0, 'db524dc256b711ebb'),
('ffb1acb556b711ebb', 'Miercoles', '08:30', '07:30', 1, 'db524dc256b711ebb'),
('ffb1acb656b711ebb', 'Jueves', NULL, NULL, 0, 'db524dc256b711ebb'),
('ffb1acb756b711ebb', 'Viernes', '07:30', '23:00', 1, 'db524dc256b711ebb'),
('ffb1acb856b711ebb', 'Sabado', NULL, NULL, 0, 'db524dc256b711ebb'),
('ffb1acb956b711ebb', 'Domingo', NULL, NULL, 0, 'db524dc256b711ebb');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `r_shop_broadcaster`
--

CREATE TABLE `r_shop_broadcaster` (
  `id_relation` varchar(250) NOT NULL,
  `id_shop` varchar(250) NOT NULL,
  `id_broadcaster` varchar(250) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 activo, 0 inactivo'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla para relacionar los comercios con las radiodifusoras que tienen contrato';

--
-- Volcado de datos para la tabla `r_shop_broadcaster`
--

INSERT INTO `r_shop_broadcaster` (`id_relation`, `id_shop`, `id_broadcaster`, `active`) VALUES
('04e3ed8b548211eba', '3dd0da640b6211eb8', 'c4a97dda51d811eb9', 0),
('2edbe92f26a711eb9', 'f0f4a759065e11eb8', 'c5422d9a26a511eb9', 1),
('9420fa1b6a7c11eb9', 'f0f4a759065e11eb8', 'c4a97dda51d811eb9', 1),
('b9df8c8a2e8711eb8', '98b4bbcb0b5c11eb8', 'c5422d9a26a511eb9', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_admin`
--

CREATE TABLE `t_admin` (
  `id_admin` varchar(36) NOT NULL,
  `name` varchar(30) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(32) NOT NULL,
  `profile_photo` varchar(45) DEFAULT NULL,
  `phone_number` varchar(10) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 inactivo, 1 activo',
  `type` enum('SuperAdmin','Radio','Comercio') NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 falso, 1 verdadero',
  `id_shop` varchar(36) DEFAULT NULL,
  `id_broadcaster` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `t_admin`
--

INSERT INTO `t_admin` (`id_admin`, `name`, `last_name`, `email`, `password`, `profile_photo`, `phone_number`, `active`, `type`, `is_deleted`, `id_shop`, `id_broadcaster`) VALUES
('0027dd78592011ebb', 'Mariana 2', 'López', 'hi@hola.com', 'e807f1fcf82d132f9bb018ca6738a19f', NULL, '3111234567', 1, 'Comercio', 0, '0027dd77592011ebb', NULL),
('1ace2e5567ea11eb9', 'Víctor Manuel ', 'Sánchez', 'vima.mrs93@gmail.com', '910e585ee60274ab25e06b7a08143dd5', NULL, '2221112173', 1, 'Comercio', 0, '1ace2e5467ea11eb9', NULL),
('21b1b69367dd11eb9', 'Martha ', 'Valdez', 'pao_fer_92@live.com.mx', 'c1dab205b76cc6124bc569b3989ceff1', NULL, '3111375494', 1, 'Comercio', 0, '21b1b69267dd11eb9', NULL),
('320a6d5d56b711ebb', 'Victor', 'Mendez', 'victormanuelsaavedramedina@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, '7158963541', 1, 'Comercio', 0, '320a6d5c56b711ebb', NULL),
('3d7f4b3f58fb11ebb', 'Mariana', 'López', 'hola@niceboutique.com', 'e807f1fcf82d132f9bb018ca6738a19f', NULL, '3111234567', 1, 'Comercio', 0, '3d7efd1e58fb11ebb', NULL),
('3dd0da650b6211eb8', 'CAMARON', 'CAMARON 3', 'cobaensaavedra@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', NULL, '3111191866', 1, 'Comercio', 0, '3dd0da640b6211eb8', NULL),
('3eb9e1ce0b5f11eb8', 'Electronick Ahus', 'Aus', 'lilialuna11@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, '3111191866', 1, 'Comercio', 0, '3eb9babd0b5f11eb8', NULL),
('50a4b0f926a211eb9', 'Luis', 'Carlin', 'luis@demo.com', '19e5db85820d13199f101d98c8d4e744', NULL, '5544477231', 1, 'Comercio', 0, '50a4b0f826a211eb9', NULL),
('5af8d78e51da11eb9', 'wero', 'wero', 'libelilaxu@yahoo.mx', '81dc9bdb52d04dc20036dbd8313ed055', NULL, '2658749266', 1, 'Radio', 0, NULL, 'c4a97dda51d811eb9'),
('65cd1f2e842511eba', 'FELIX', 'GALLARDO', 'capotetearturo@gmail.com', '6d6efab82fd41d1ffcd0415eb77bd291', NULL, '3111416210', 1, 'Comercio', 0, '65cd1f2d842511eba', NULL),
('6bc46d6a568b11ebb', 'Radiorama', 'Radiorama', 'radiorama@radio.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, '3112596532', 1, 'Radio', 0, NULL, 'c4a97dda51d811eb9'),
('811f0c110b6511eb8', 'MENEKE2', 'MENE', 'menekeluna@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, '3111191866', 1, 'Comercio', 0, '811f0c100b6511eb8', NULL),
('9091dea47d0111eba', 'said', 'ramiez', 'said_ramirezlive85@hotmail.com', '4b62661e0c6d5e03c6ad222a3500a8ec', NULL, '3111950990', 1, 'Comercio', 0, '9091b7937d0111eba', NULL),
('94624469672911eb9', 'Luis', 'Habclk', 'lskdjfisj@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, '3117654387', 1, 'Comercio', 0, '94624468672911eb9', NULL),
('98b4bbcc0b5c11eb8', 'Huasteca', 'Huasteca 1', 'libelilaxu@hotmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, '3111191866', 1, 'Comercio', 0, '98b4bbcb0b5c11eb8', NULL),
('a601ec586f0711eba', 'Luis', 'Carlin', 'luis2@fabricadeapps.com.mx', '19e5db85820d13199f101d98c8d4e744', NULL, '5544477231', 1, 'Comercio', 0, 'a601c5476f0711eba', NULL),
('b010450c842311eba', 'JUAN', 'TIRADO', 'rulodiazmx@gmail.com', '5234e196f3d82c440f0025dc42b4c204', NULL, '3112532229', 1, 'Comercio', 0, 'b00ff6eb842311eba', NULL),
('b1b611a76a2711eb9', 'Luis Angel', 'Rivera Munoz', 'luis_angel_03@hotmail.com', 'c67b6813dc24844f27a35d685e309985', NULL, '3113028059', 1, 'Comercio', 0, 'b1b611a66a2711eb9', NULL),
('c4524cbd55ed11eba', 'Rosario', 'Saavedra ', 'sarosario161@gmail.com', '67074db8da092438dbfd79af676ea742', NULL, '3111487108', 1, 'Comercio', 0, 'c4524cbc55ed11eba', NULL),
('dcc9e3ec26a511eb9', 'Juan', 'Radio', 'radio@demo.com', '81dc9bdb52d04dc20036dbd8313ed055', NULL, '4422342345', 1, 'Radio', 0, NULL, 'c5422d9a26a511eb9'),
('e7a6929a733b11eba', 'Said', 'Ramírez', 'saidramirez35@gmail.com', '65e863417f769424ddbfc432bfb7d756', NULL, '3111950990', 1, 'Comercio', 0, 'e7a69299733b11eba', NULL),
('f0f4a75a065e11eb8', 'libup', 'libup', 'arturosaavedra773@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', NULL, '3111191866', 1, 'Comercio', 0, 'f0f4a759065e11eb8', NULL),
('gdg6gj9762gsgdgabh', 'admin', 'amedit', 'admin@libup.mx', '81dc9bdb52d04dc20036dbd8313ed055', 'f7bb19766324429f905d65e40.png', '7721486864', 1, 'SuperAdmin', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_banner`
--

CREATE TABLE `t_banner` (
  `id_banner` varchar(36) NOT NULL,
  `name` varchar(30) NOT NULL DEFAULT '0',
  `id_shop` varchar(36) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 falso, 1 verdadero'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_branch`
--

CREATE TABLE `t_branch` (
  `id_branch` varchar(36) NOT NULL,
  `address` varchar(110) NOT NULL,
  `phone_number` varchar(10) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 inactivo, 1 activo',
  `type` enum('Principal','Sucursal') NOT NULL,
  `latitud` varchar(200) NOT NULL,
  `longitud` varchar(200) NOT NULL,
  `id_shop` varchar(36) NOT NULL DEFAULT '',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 falso, 1 verdadero',
  `id_state` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `t_branch`
--

INSERT INTO `t_branch` (`id_branch`, `address`, `phone_number`, `active`, `type`, `latitud`, `longitud`, `id_shop`, `is_deleted`, `id_state`) VALUES
('22e64cd10b6611eb8', 'kilonsm', '3111191866', 1, 'Sucursal', '21.5023616', '-104.90347519999999', '811f0c100b6511eb8', 0, 22),
('30d60ad20b5d11eb8', 'Av. del valle 161 ', '3111330891', 1, 'Principal', '21.492264319523947', '-104.88620177394407', '98b4bbcb0b5c11eb8', 0, 18),
('553cb7eb592011ebb', 'Oaxaca 246 Centro', '3111234567', 1, 'Principal', '21.5073364', '-104.9009104', '0027dd77592011ebb', 0, 18),
('5c1ec3ce547c11eba', 'miñon 107', '3111191866', 1, 'Sucursal', '21.5075052', '-104.899877', '3dd0da640b6211eb8', 0, 18),
('6972d71a0b5d11eb8', 'durango 78', NULL, 1, 'Sucursal', '21.5023616', '-104.90347519999999', '98b4bbcb0b5c11eb8', 1, 22),
('83bf3336590b11ebb', 'Los Fresnos 182, INFONAVIT los Fresnos, Tepic, Nay., México', '3111234567', 1, 'Principal', '21.4791202', '-104.8783486', '3d7efd1e58fb11ebb', 0, 18),
('a9fe5ca30b5f11eb8', 'minerva 45', '3111191866', 1, 'Principal', '21.5023616', '-104.90347519999999', '3eb9babd0b5f11eb8', 0, 18),
('b6a43feb0b6211eb8', 'SAN BLAS 85', '3111191866', 1, 'Principal', '21.5023616', '-104.90347519999999', '3dd0da640b6211eb8', 0, 18),
('bd91f8ee5b5511ebb', 'Prolongación Circuito Los Fresnos 182', '3111234567', 1, 'Sucursal', '21.4790863', '-104.8769464', '3d7efd1e58fb11ebb', 1, 18),
('c2b44b665b5711ebb', 'Los Fresnos 182, INFONAVIT los Fresnos, Tepic, Nay., México', '3111234567', 1, 'Sucursal', '21.479821195523485', '-104.87792461338768', '3d7efd1e58fb11ebb', 0, 18),
('d37a7aab0b5f11eb8', 'genova 86', '3111191866', 1, 'Sucursal', '21.5023616', '-104.90347519999999', '3eb9babd0b5f11eb8', 0, 22),
('db524dc256b711ebb', 'Bambu 14', '3111191866', 1, 'Principal', '21.5082573', '-104.9107628', '320a6d5c56b711ebb', 0, 18),
('de74a9c30b6211eb8', 'CARRILLO SUR 56', '3111191866', 1, 'Sucursal', '21.5023616', '-104.90347519999999', '3dd0da640b6211eb8', 0, 22),
('fbed30290b6511eb8', 'la calizad¡', '3111191866', 1, 'Principal', '21.5023616', '-104.90347519999999', '811f0c100b6511eb8', 0, 18),
('fd70805f084b11eb8', 'Bambu 14', '3111191866', 1, 'Principal', '21.020131792137498', '-105.11400919375', 'f0f4a759065e11eb8', 0, 18);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_broadcaster`
--

CREATE TABLE `t_broadcaster` (
  `id_broadcaster` varchar(36) NOT NULL,
  `name` varchar(100) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 activo, 0 inactivo',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 FALSO, 1 VERDADERO',
  `image_path` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `t_broadcaster`
--

INSERT INTO `t_broadcaster` (`id_broadcaster`, `name`, `active`, `is_deleted`, `image_path`) VALUES
('1bb269df46c911ebb', 'PRUEBA RADIO', 1, 0, '1bb269e0-46c9-11eb-b2bb-4b280e4cefca.jpg'),
('c4a97dda51d811eb9', 'Radiorama', 1, 0, 'c4a97ddb-51d8-11eb-9265-a726dcac88dc.png'),
('c5422d9a26a511eb9', 'EXA Tepic', 1, 0, 'c54254ab-26a5-11eb-962e-199bd05df11c.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_channels`
--

CREATE TABLE `t_channels` (
  `id_channel` varchar(36) NOT NULL,
  `tittle` varchar(250) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 activo, 0 inactivo',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 falso, 1 verdadero',
  `image` varchar(45) NOT NULL,
  `id_broadcaster` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla para que el usuario radio cree canales de comunicacion chat';

--
-- Volcado de datos para la tabla `t_channels`
--

INSERT INTO `t_channels` (`id_channel`, `tittle`, `description`, `url`, `active`, `is_deleted`, `image`, `id_broadcaster`) VALUES
('8d636739286211eb9', 'La Papaya', 'dsadsad', 'www.qro.com.mx', 1, 0, '8d63673a-2862-11eb-962e-b1806df6a63c.jpg', 'c5422d9a26a511eb9'),
('b3e205f46a8911eb9', 'Estereo Vida', 'Musica Juvenil ', 'https://www.radiorama.mx/aradios.php?id=311', 0, 0, 'b3e205f5-6a89-11eb-9ca7-33c6f22b4093.jpg', 'c4a97dda51d811eb9');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_contest`
--

CREATE TABLE `t_contest` (
  `id_contest` varchar(36) NOT NULL,
  `id_admin` varchar(36) NOT NULL,
  `id_promo` varchar(36) NOT NULL,
  `status` enum('Creado','EnCurso','Terminado') NOT NULL,
  `id_acr` varchar(50) DEFAULT NULL,
  `audio_title` varchar(400) DEFAULT NULL,
  `audio` varchar(60) DEFAULT NULL,
  `release_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_type` varchar(100) NOT NULL,
  `bucket_name` varchar(400) DEFAULT NULL,
  `audio_id` varchar(100) DEFAULT NULL,
  `contain_audio` tinyint(1) NOT NULL COMMENT '0 falso, 1 verdero',
  `id_shop` varchar(36) NOT NULL,
  `id_broadcaster` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `t_contest`
--

INSERT INTO `t_contest` (`id_contest`, `id_admin`, `id_promo`, `status`, `id_acr`, `audio_title`, `audio`, `release_date`, `data_type`, `bucket_name`, `audio_id`, `contain_audio`, `id_shop`, `id_broadcaster`) VALUES
('03a09b3a1ad711eba', 'f0f4a75a065e11eb8', '7652608209b611eb8', 'Terminado', NULL, NULL, NULL, '2020-10-30 17:40:35', 'sinAudio', NULL, NULL, 0, 'f0f4a759065e11eb8', NULL),
('077dbf85208611eba', 'f0f4a75a065e11eb8', '7652608209b611eb8', 'Terminado', NULL, NULL, NULL, '2020-11-06 23:15:59', 'sinAudio', NULL, NULL, 0, 'f0f4a759065e11eb8', NULL),
('0a0ebb2e26ac11eb9', 'dcc9e3ec26a511eb9', 'ac7206e026a711eb9', 'EnCurso', 'b563ab0a2d5596c6bfdb8d8d5f697341', 'jingle8', '2e1d0eb1ac344ae.mp3', '2020-11-14 19:03:11', 'audio', 'Libup', '09033e9d26ac11eb9', 1, 'f0f4a759065e11eb8', 'c5422d9a26a511eb9'),
('10805966208811eba', 'f0f4a75a065e11eb8', '7652608209b611eb8', 'Terminado', NULL, NULL, NULL, '2020-11-06 23:30:33', 'sinAudio', NULL, NULL, 0, 'f0f4a759065e11eb8', NULL),
('1eaf82c31d2b11eba', 'f0f4a75a065e11eb8', '7652608209b611eb8', 'Terminado', NULL, NULL, NULL, '2020-11-02 16:47:40', 'sinAudio', NULL, NULL, 0, 'f0f4a759065e11eb8', NULL),
('212d5a0326ad11eb9', 'f0f4a75a065e11eb8', '7652608209b611eb8', 'EnCurso', NULL, NULL, NULL, '2020-11-14 19:10:59', 'sinAudio', NULL, NULL, 0, 'f0f4a759065e11eb8', NULL),
('33310599208211eba', 'f0f4a75a065e11eb8', '8e5cda401ad811eba', 'Terminado', NULL, NULL, NULL, '2020-11-06 22:48:34', 'sinAudio', NULL, NULL, 0, 'f0f4a759065e11eb8', NULL),
('3a1456c71d2c11eba', 'f0f4a75a065e11eb8', '7652608209b611eb8', 'Terminado', NULL, NULL, NULL, '2020-11-02 16:55:36', 'sinAudio', NULL, NULL, 0, 'f0f4a759065e11eb8', NULL),
('3f7ef33a1d2211eba', 'f0f4a75a065e11eb8', '7652608209b611eb8', 'Terminado', NULL, NULL, NULL, '2020-11-02 15:44:10', 'sinAudio', NULL, NULL, 0, 'f0f4a759065e11eb8', NULL),
('3fe79534594111ebb', '3d7f4b3f58fb11ebb', '85624639592e11ebb', 'Terminado', NULL, NULL, NULL, '2021-01-18 03:57:14', 'sinAudio', NULL, NULL, 0, '3d7efd1e58fb11ebb', NULL),
('4b9273d609bd11eb8', 'f0f4a75a065e11eb8', '7652608209b611eb8', 'Terminado', NULL, NULL, NULL, '2020-10-08 23:23:39', 'sinAudio', NULL, NULL, 0, 'f0f4a759065e11eb8', NULL),
('4ec3def026a911eb9', 'dcc9e3ec26a511eb9', 'ac7206e026a711eb9', 'Terminado', '2a6ffb6ad4a4b341dd74ab203dd09938', 'jingle3', '4d309f3494a84c9.mp3', '2020-11-14 18:43:38', 'audio', 'Libup', '4db15d7f26a911eb9', 1, 'f0f4a759065e11eb8', 'c5422d9a26a511eb9'),
('5a6ec4b41d2b11eba', 'f0f4a75a065e11eb8', '7652608209b611eb8', 'Terminado', NULL, NULL, NULL, '2020-11-02 16:49:20', 'sinAudio', NULL, NULL, 0, 'f0f4a759065e11eb8', NULL),
('5a749497208911eba', 'f0f4a75a065e11eb8', '7652608209b611eb8', 'Terminado', NULL, NULL, NULL, '2020-11-06 23:39:47', 'sinAudio', NULL, NULL, 0, 'f0f4a759065e11eb8', NULL),
('5dd069373d6611ebb', 'f0f4a75a065e11eb8', '7652608209b611eb8', 'Terminado', NULL, NULL, NULL, '2020-12-13 17:12:23', 'sinAudio', NULL, NULL, 0, 'f0f4a759065e11eb8', NULL),
('60662d8e220211eba', 'f0f4a75a065e11eb8', '7652608209b611eb8', 'Terminado', NULL, NULL, NULL, '2020-11-08 20:38:37', 'sinAudio', NULL, NULL, 0, 'f0f4a759065e11eb8', NULL),
('61c50b3d208311eba', 'f0f4a75a065e11eb8', '8e5cda401ad811eba', 'Terminado', NULL, NULL, NULL, '2020-11-06 22:57:02', 'sinAudio', NULL, NULL, 0, 'f0f4a759065e11eb8', NULL),
('620af95b220111eba', 'f0f4a75a065e11eb8', '7652608209b611eb8', 'Terminado', NULL, NULL, NULL, '2020-11-08 20:31:30', 'sinAudio', NULL, NULL, 0, 'f0f4a759065e11eb8', NULL),
('6403d0a5594111ebb', '3d7f4b3f58fb11ebb', '85624639592e11ebb', 'Terminado', NULL, NULL, NULL, '2021-01-18 03:58:15', 'sinAudio', NULL, NULL, 0, '3d7efd1e58fb11ebb', NULL),
('6499186e26ab11eb9', 'dcc9e3ec26a511eb9', 'ac7206e026a711eb9', 'Terminado', '91edb62f940993cd7e8f6a50e76675d9', 'Jingle6', '45b35d94c7ac482.mp3', '2020-11-14 18:58:33', 'audio', 'Libup', '6374bcad26ab11eb9', 1, 'f0f4a759065e11eb8', 'c5422d9a26a511eb9'),
('6b91558a26a811eb9', 'dcc9e3ec26a511eb9', 'ac7206e026a711eb9', 'Terminado', '5f6c8d48b8ec701e401f05de9333c91f', 'jingle2', '3234a9a4c3e0459.mp3', '2020-11-14 18:37:17', 'audio', 'Libup', '6a71669926a811eb9', 1, 'f0f4a759065e11eb8', 'c5422d9a26a511eb9'),
('76312fbb237611ebb', 'f0f4a75a065e11eb8', '7652608209b611eb8', 'Terminado', NULL, NULL, NULL, '2020-11-10 17:02:06', 'sinAudio', NULL, NULL, 0, 'f0f4a759065e11eb8', NULL),
('78aaf27909bd11eb8', 'f0f4a75a065e11eb8', '7652608209b611eb8', 'Terminado', NULL, NULL, NULL, '2020-10-08 23:24:54', 'sinAudio', NULL, NULL, 0, 'f0f4a759065e11eb8', NULL),
('7b21db5309bc11eb8', 'f0f4a75a065e11eb8', '7652608209b611eb8', 'Terminado', NULL, NULL, NULL, '2020-10-08 23:17:49', 'sinAudio', NULL, NULL, 0, 'f0f4a759065e11eb8', NULL),
('7fd2bba6594311ebb', '3d7f4b3f58fb11ebb', '85624639592e11ebb', 'Creado', NULL, NULL, NULL, '2021-01-18 04:13:21', 'sinAudio', NULL, NULL, 0, '3d7efd1e58fb11ebb', NULL),
('80f5e928208911eba', 'f0f4a75a065e11eb8', '7652608209b611eb8', 'Terminado', NULL, NULL, NULL, '2020-11-06 23:40:51', 'sinAudio', NULL, NULL, 0, 'f0f4a759065e11eb8', NULL),
('8bbac4c4206911eba', 'f0f4a75a065e11eb8', '7652608209b611eb8', 'Terminado', NULL, NULL, NULL, '2020-11-06 19:52:05', 'sinAudio', NULL, NULL, 0, 'f0f4a759065e11eb8', NULL),
('8e47da810b6811eb8', '811f0c110b6511eb8', '8abe17780b6811eb8', 'Terminado', NULL, NULL, NULL, '2020-10-11 02:22:06', 'sinAudio', NULL, NULL, 0, '811f0c100b6511eb8', NULL),
('8f4aadd11d2a11eba', 'f0f4a75a065e11eb8', '7652608209b611eb8', 'Terminado', NULL, NULL, NULL, '2020-11-02 16:43:39', 'sinAudio', NULL, NULL, 0, 'f0f4a759065e11eb8', NULL),
('9196a8851ad811eba', 'f0f4a75a065e11eb8', '8e5cda401ad811eba', 'Terminado', NULL, NULL, NULL, '2020-10-30 17:51:42', 'sinAudio', NULL, NULL, 0, 'f0f4a759065e11eb8', NULL),
('a20f0d682e8711eb8', '98b4bbcc0b5c11eb8', '34a149ec2e8711eb8', 'Creado', NULL, NULL, NULL, '2020-11-24 19:02:44', 'sinAudio', NULL, NULL, 0, '98b4bbcb0b5c11eb8', NULL),
('a313ac57547e11eba', '3dd0da650b6211eb8', 'e3605b0f547d11eba', 'Terminado', NULL, NULL, NULL, '2021-01-12 02:34:04', 'sinAudio', NULL, NULL, 0, '3dd0da640b6211eb8', NULL),
('a61f4b551d2b11eba', 'f0f4a75a065e11eb8', '7652608209b611eb8', 'Terminado', NULL, NULL, NULL, '2020-11-02 16:51:27', 'sinAudio', NULL, NULL, 0, 'f0f4a759065e11eb8', NULL),
('b1a401492e8711eb8', '98b4bbcc0b5c11eb8', 'ab3e73180b5e11eb8', 'Creado', NULL, NULL, NULL, '2020-11-24 19:03:10', 'sinAudio', NULL, NULL, 0, '98b4bbcb0b5c11eb8', NULL),
('b75e746a208211eba', 'f0f4a75a065e11eb8', '8e5cda401ad811eba', 'Terminado', NULL, NULL, NULL, '2020-11-06 22:52:16', 'sinAudio', NULL, NULL, 0, 'f0f4a759065e11eb8', NULL),
('c194323726ab11eb9', 'dcc9e3ec26a511eb9', 'ac7206e026a711eb9', 'Terminado', 'd25ffd13cf603608ea62274584303fc0', 'jingle7', '591e8645458b41c.mp3', '2020-11-14 19:01:09', 'audio', 'Libup', 'c08a3c4626ab11eb9', 1, 'f0f4a759065e11eb8', 'c5422d9a26a511eb9'),
('c1f7c42526ad11eb9', 'f0f4a75a065e11eb8', '7652608209b611eb8', 'Terminado', NULL, NULL, NULL, '2020-11-14 19:15:29', 'sinAudio', NULL, NULL, 0, 'f0f4a759065e11eb8', NULL),
('c380e3b626a711eb9', 'dcc9e3ec26a511eb9', 'ac7206e026a711eb9', 'Terminado', 'fa2e3f70a9bf3fcf330ddc768a5246f3', 'Jingle1', '8d450ad5be22494.mp3', '2020-11-14 18:32:35', 'audio', 'Libup', 'c2379ad526a711eb9', 1, 'f0f4a759065e11eb8', 'c5422d9a26a511eb9'),
('c5f631b0208411eba', 'f0f4a75a065e11eb8', '7652608209b611eb8', 'Terminado', NULL, NULL, NULL, '2020-11-06 23:06:59', 'sinAudio', NULL, NULL, 0, 'f0f4a759065e11eb8', NULL),
('c7824b6c237611ebb', 'f0f4a75a065e11eb8', 'c995c559206a11eba', 'Terminado', NULL, NULL, NULL, '2020-11-10 17:04:23', 'sinAudio', NULL, NULL, 0, 'f0f4a759065e11eb8', NULL),
('c906030b1d2211eba', 'f0f4a75a065e11eb8', '7652608209b611eb8', 'Terminado', NULL, NULL, NULL, '2020-11-02 15:48:00', 'sinAudio', NULL, NULL, 0, 'f0f4a759065e11eb8', NULL),
('ca50e4ec09bd11eb8', 'f0f4a75a065e11eb8', '7652608209b611eb8', 'Terminado', NULL, NULL, NULL, '2020-10-08 23:27:11', 'sinAudio', NULL, NULL, 0, 'f0f4a759065e11eb8', NULL),
('cab298cc26aa11eb9', 'dcc9e3ec26a511eb9', 'ac7206e026a711eb9', 'EnCurso', '9b666219f199967ed5636acf2ed88e45', 'jingl5', '82d3df38295f473.mp3', '2020-11-14 18:54:15', 'audio', 'Libup', 'c92a722b26aa11eb9', 1, 'f0f4a759065e11eb8', 'c5422d9a26a511eb9'),
('d4fca3d63d6511ebb', 'f0f4a75a065e11eb8', '7652608209b611eb8', 'Terminado', NULL, NULL, NULL, '2020-12-13 17:08:34', 'sinAudio', NULL, NULL, 0, 'f0f4a759065e11eb8', NULL),
('d651fe0e237711ebb', 'f0f4a75a065e11eb8', '7652608209b611eb8', 'Terminado', NULL, NULL, NULL, '2020-11-10 17:11:57', 'sinAudio', NULL, NULL, 0, 'f0f4a759065e11eb8', NULL),
('d783f333594011ebb', '3d7f4b3f58fb11ebb', '85624639592e11ebb', 'Terminado', NULL, NULL, NULL, '2021-01-18 03:54:19', 'sinAudio', NULL, NULL, 0, '3d7efd1e58fb11ebb', NULL),
('dbc0ad4f26ac11eb9', 'f0f4a75a065e11eb8', '7652608209b611eb8', 'Terminado', NULL, NULL, NULL, '2020-11-14 19:09:03', 'sinAudio', NULL, NULL, 0, 'f0f4a759065e11eb8', NULL),
('dd1588f21d2a11eba', 'f0f4a75a065e11eb8', '7652608209b611eb8', 'Terminado', NULL, NULL, NULL, '2020-11-02 16:45:50', 'sinAudio', NULL, NULL, 0, 'f0f4a759065e11eb8', NULL),
('e87a1cd756b811ebb', '320a6d5d56b711ebb', 'e0efe03356b811ebb', 'Terminado', NULL, NULL, NULL, '2021-01-14 22:36:14', 'sinAudio', NULL, NULL, 0, '320a6d5c56b711ebb', NULL),
('e88e04f12f8111eb8', 'f0f4a75a065e11eb8', '7652608209b611eb8', 'Creado', NULL, NULL, NULL, '2020-11-26 00:54:16', 'sinAudio', NULL, NULL, 0, 'f0f4a759065e11eb8', NULL),
('e918ae161d2b11eba', 'f0f4a75a065e11eb8', '7652608209b611eb8', 'Terminado', NULL, NULL, NULL, '2020-11-02 16:53:20', 'sinAudio', NULL, NULL, 0, 'f0f4a759065e11eb8', NULL),
('e99384a1220211eba', 'f0f4a75a065e11eb8', '7652608209b611eb8', 'Terminado', NULL, NULL, NULL, '2020-11-08 20:42:27', 'sinAudio', NULL, NULL, 0, 'f0f4a759065e11eb8', NULL),
('ea91411e1d2711eba', 'f0f4a75a065e11eb8', '7652608209b611eb8', 'Terminado', NULL, NULL, NULL, '2020-11-02 16:24:44', 'sinAudio', NULL, NULL, 0, 'f0f4a759065e11eb8', NULL),
('f8ab9fdb1ad711eba', 'f0f4a75a065e11eb8', '7652608209b611eb8', 'Terminado', NULL, NULL, NULL, '2020-10-30 17:47:26', 'sinAudio', NULL, NULL, 0, 'f0f4a759065e11eb8', NULL),
('f8c75cbd237611ebb', 'f0f4a75a065e11eb8', '8e5cda401ad811eba', 'Terminado', NULL, NULL, NULL, '2020-11-10 17:05:45', 'sinAudio', NULL, NULL, 0, 'f0f4a759065e11eb8', NULL),
('fb982786547d11eba', '3dd0da650b6211eb8', 'e3605b0f547d11eba', 'Terminado', NULL, NULL, NULL, '2021-01-12 02:29:23', 'sinAudio', NULL, NULL, 0, '3dd0da640b6211eb8', NULL),
('fbc2306026ac11eb9', 'f0f4a75a065e11eb8', '7652608209b611eb8', 'Terminado', NULL, NULL, NULL, '2020-11-14 19:09:56', 'sinAudio', NULL, NULL, 0, 'f0f4a759065e11eb8', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_contest_detail`
--

CREATE TABLE `t_contest_detail` (
  `id_detail` varchar(36) NOT NULL,
  `id_contest` varchar(36) NOT NULL,
  `id_user` varchar(36) NOT NULL,
  `tick_count` int(3) NOT NULL DEFAULT '0',
  `release_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `t_contest_detail`
--

INSERT INTO `t_contest_detail` (`id_detail`, `id_contest`, `id_user`, `tick_count`, `release_date`) VALUES
('0cb974bf1d2811eba', 'ea91411e1d2711eba', '1cf2161509b511eb8', 28, '2020-11-02 16:25:41'),
('11593a4126ad11eb9', 'fbc2306026ac11eb9', 'c895b219220011eba', 41, '2020-11-14 19:10:33'),
('193f92b726a811eb9', 'c380e3b626a711eb9', '369b459c09b811eb8', 0, '2020-11-14 18:34:58'),
('3bd7f66c220211eba', '620af95b220111eba', '1cf2161509b511eb8', 3, '2020-11-08 20:37:35'),
('3c4cb60426ad11eb9', '212d5a0326ad11eb9', 'c895b219220011eba', 2, '2020-11-14 19:11:45'),
('465230681d2c11eba', '3a1456c71d2c11eba', '1cf2161509b511eb8', 46, '2020-11-02 16:55:56'),
('6067181709bd11eb8', '4b9273d609bd11eb8', '1cf2161509b511eb8', 50, '2020-10-08 23:24:14'),
('6280f8b126a911eb9', '4ec3def026a911eb9', '369b459c09b811eb8', 0, '2020-11-14 18:44:11'),
('6f3b7aef220211eba', '60662d8e220211eba', '1cf2161509b511eb8', 2, '2020-11-08 20:39:02'),
('74af33a0220211eba', '60662d8e220211eba', 'c895b219220011eba', 28, '2020-11-08 20:39:11'),
('753220b226a911eb9', '4ec3def026a911eb9', 'c895b219220011eba', 0, '2020-11-14 18:44:42'),
('7567889326a911eb9', '4ec3def026a911eb9', 'c895b219220011eba', 0, '2020-11-14 18:44:43'),
('7c8b9e7f26ab11eb9', 'cab298cc26aa11eb9', '369b459c09b811eb8', 0, '2020-11-14 18:59:14'),
('7c8dc16026ab11eb9', '6499186e26ab11eb9', '369b459c09b811eb8', 0, '2020-11-14 18:59:14'),
('7e2d13de208311eba', '61c50b3d208311eba', '1cf2161509b511eb8', 1, '2020-11-06 22:57:49'),
('85a4bfcb26a811eb9', '6b91558a26a811eb9', '369b459c09b811eb8', 0, '2020-11-14 18:38:00'),
('86181b0c26a811eb9', '6b91558a26a811eb9', 'c895b219220011eba', 0, '2020-11-14 18:38:01'),
('88cde4f126ab11eb9', 'cab298cc26aa11eb9', 'c895b219220011eba', 0, '2020-11-14 18:59:34'),
('88f7b41226ab11eb9', '6499186e26ab11eb9', 'c895b219220011eba', 0, '2020-11-14 18:59:34'),
('8972625326ab11eb9', 'cab298cc26aa11eb9', 'c895b219220011eba', 0, '2020-11-14 18:59:35'),
('89abc91d26a811eb9', '6b91558a26a811eb9', 'c895b219220011eba', 0, '2020-11-14 18:38:07'),
('8ba0cf02220311eba', 'e99384a1220211eba', '1cf2161509b511eb8', 37, '2020-11-08 20:46:59'),
('8bbffbd426ab11eb9', '6499186e26ab11eb9', 'c895b219220011eba', 0, '2020-11-14 18:59:39'),
('8c8a92c3220311eba', 'e99384a1220211eba', 'c895b219220011eba', 2, '2020-11-08 20:47:00'),
('a6b8586a09bd11eb8', '78aaf27909bd11eb8', '369b459c09b811eb8', 0, '2020-10-08 23:26:12'),
('c1aade4b208211eba', 'b75e746a208211eba', '1cf2161509b511eb8', 7, '2020-11-06 22:52:33'),
('cab11cc826ab11eb9', 'c194323726ab11eb9', '369b459c09b811eb8', 0, '2020-11-14 19:01:25'),
('cad2d59926ab11eb9', 'cab298cc26aa11eb9', '369b459c09b811eb8', 0, '2020-11-14 19:01:25'),
('ce026aaa26ab11eb9', 'c194323726ab11eb9', 'c895b219220011eba', 0, '2020-11-14 19:01:30'),
('ce0a0bcb26ab11eb9', 'cab298cc26aa11eb9', 'c895b219220011eba', 0, '2020-11-14 19:01:30'),
('d1e0564626ad11eb9', 'c1f7c42526ad11eb9', '369b459c09b811eb8', 55, '2020-11-14 19:15:56'),
('d54d427726ad11eb9', 'c1f7c42526ad11eb9', 'c895b219220011eba', 2, '2020-11-14 19:16:01'),
('d640b33c1d2211eba', 'c906030b1d2211eba', '1cf2161509b511eb8', 44, '2020-11-02 15:48:23'),
('e80427a409bc11eb8', '7b21db5309bc11eb8', '369b459c09b811eb8', 52, '2020-10-08 23:20:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_image`
--

CREATE TABLE `t_image` (
  `id_image` varchar(36) NOT NULL,
  `name` varchar(30) NOT NULL,
  `comment` varchar(150) NOT NULL,
  `id_shop` varchar(36) NOT NULL,
  `id_user` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla para almacenar las imagenes tomadas por un usuario en un comercio';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_messages`
--

CREATE TABLE `t_messages` (
  `id_message` varchar(36) NOT NULL,
  `message` varchar(180) DEFAULT NULL,
  `date_hour` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `type_user` enum('App','Panel') NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 activo, 0 inactivo',
  `msg_type` enum('Imagen','Video','Texto') NOT NULL,
  `path_file` varchar(45) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 falso, 1 verdadero',
  `id_channel` varchar(36) NOT NULL DEFAULT '0',
  `id_admin` varchar(36) DEFAULT NULL COMMENT 'EL ID DE RADIO QUE MANDO EL MENSAJE',
  `id_user` varchar(36) DEFAULT NULL COMMENT 'el id de usuario que manda el mensaje'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabla para agregar mensajes del chat';

--
-- Volcado de datos para la tabla `t_messages`
--

INSERT INTO `t_messages` (`id_message`, `message`, `date_hour`, `type_user`, `active`, `msg_type`, `path_file`, `is_deleted`, `id_channel`, `id_admin`, `id_user`) VALUES
('0597a691286311eb9', NULL, '2020-11-16 23:25:33', 'App', 1, 'Imagen', '059869e2286311eb9.jpeg', 0, '8d636739286211eb9', NULL, '1cf2161509b511eb8'),
('137a11b66a8a11eb9', 'Hola Estamos Al Aire\n', '2021-02-09 03:51:23', 'Panel', 1, 'Texto', NULL, 0, 'b3e205f46a8911eb9', '6bc46d6a568b11ebb', NULL),
('1ca37eb66c8c11eba', 'hola\n', '2021-02-11 17:11:00', 'App', 1, 'Texto', NULL, 0, 'b3e205f46a8911eb9', NULL, '369b459c09b811eb8'),
('1ff44ed3286311eb9', '?', '2020-11-16 23:26:17', 'App', 1, 'Texto', NULL, 0, '8d636739286211eb9', NULL, '369b459c09b811eb8'),
('2c7443c76a8a11eb9', 'un saludo para Arturo', '2021-02-09 03:52:05', 'App', 1, 'Texto', NULL, 0, 'b3e205f46a8911eb9', NULL, '369b459c09b811eb8'),
('64c66934286311eb9', NULL, '2020-11-16 23:28:12', 'App', 1, 'Imagen', '64c6b755286311eb9.jpg', 0, '8d636739286211eb9', NULL, '1cf2161509b511eb8'),
('69da0086286311eb9', NULL, '2020-11-16 23:28:21', 'App', 1, 'Imagen', '69dbae37286311eb9.jpg', 0, '8d636739286211eb9', NULL, 'c895b219220011eba'),
('782e0ff8286311eb9', NULL, '2020-11-16 23:28:45', 'App', 1, 'Imagen', '782e5e19286311eb9.jpg', 0, '8d636739286211eb9', NULL, '369b459c09b811eb8'),
('98aba0da286311eb9', NULL, '2020-11-16 23:29:39', 'Panel', 1, 'Imagen', '98ac160b286311eb9.jpg', 0, '8d636739286211eb9', 'dcc9e3ec26a511eb9', NULL),
('c963d0db286211eb9', 'Que tal ya estamos por auqí\n', '2020-11-16 23:23:52', 'Panel', 1, 'Texto', NULL, 0, '8d636739286211eb9', 'dcc9e3ec26a511eb9', NULL),
('d60b5d7c548311eba', 'hola estamaos al aire\n', '2021-01-12 03:11:17', 'Panel', 1, 'Texto', NULL, 0, '8d636739286211eb9', 'dcc9e3ec26a511eb9', NULL),
('d678827c286211eb9', 'listo', '2020-11-16 23:24:14', 'App', 1, 'Texto', NULL, 0, '8d636739286211eb9', NULL, '369b459c09b811eb8'),
('d988cfbd286211eb9', 'que tal', '2020-11-16 23:24:19', 'App', 1, 'Texto', NULL, 0, '8d636739286211eb9', NULL, 'c895b219220011eba'),
('edb5e95e286211eb9', 'todo bien', '2020-11-16 23:24:52', 'App', 1, 'Texto', NULL, 0, '8d636739286211eb9', NULL, '1cf2161509b511eb8'),
('f6226faf286211eb9', 'saludos a Tepic  ', '2020-11-16 23:25:07', 'App', 1, 'Texto', NULL, 0, '8d636739286211eb9', NULL, '369b459c09b811eb8'),
('f6d7dd00286211eb9', 'todo funciona al pelo\n', '2020-11-16 23:25:08', 'Panel', 1, 'Texto', NULL, 0, '8d636739286211eb9', 'dcc9e3ec26a511eb9', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_promo`
--

CREATE TABLE `t_promo` (
  `id_promo` varchar(36) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `url_terms` varchar(200) NOT NULL,
  `url_promo` varchar(200) DEFAULT NULL,
  `image` varchar(45) NOT NULL,
  `release_date` datetime NOT NULL,
  `due_date` datetime NOT NULL,
  `type` enum('Promoción','Descuento','Premio') NOT NULL,
  `code` varchar(100) DEFAULT NULL,
  `id_consolacion` varchar(250) DEFAULT NULL COMMENT 'El id de promocion o descuento, ("se va usar como premio de consolacion")',
  `active` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 inactivo, 1 activo',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 falso, 1 verdadero',
  `award_type` enum('Ninguno','Ticktear','Directo','Audio','') NOT NULL DEFAULT 'Ninguno',
  `with_notify` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 verdadero, 0 falso',
  `id_broadcaster` varchar(36) DEFAULT NULL,
  `seconds` int(11) DEFAULT NULL,
  `id_shop` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `t_promo`
--

INSERT INTO `t_promo` (`id_promo`, `name`, `description`, `url_terms`, `url_promo`, `image`, `release_date`, `due_date`, `type`, `code`, `id_consolacion`, `active`, `is_deleted`, `award_type`, `with_notify`, `id_broadcaster`, `seconds`, `id_shop`) VALUES
('00286a180b5b11eb8', '2 x1 en margaritas', 'En la compra de una margarita llevate otra del mismo precio', 'url', NULL, '00286a19-0b5b-11eb-811b-4969f41b2fb3.jpg', '2021-02-09 08:44:00', '2021-02-19 18:44:00', 'Promoción', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, 'f0f4a759065e11eb8'),
('0280aa170b5e11eb8', 'Grandes Ofertas', 'Tequila corralejo compara uno y levate otro', 'url', NULL, '0280aa18-0b5e-11eb-811b-1ba3b8417949.jpg', '2020-11-24 06:05:00', '2020-11-30 19:06:00', 'Promoción', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '98b4bbcb0b5c11eb8'),
('02a5de7c0b6111eb8', 'desc 2', NULL, 'url', NULL, '02a5de7d-0b61-11eb-811b-4d028c26d8e1.jpg', '2020-10-10 18:23:00', '2020-10-26 19:27:00', 'Descuento', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '3eb9babd0b5f11eb8'),
('02af858009b511eb8', 'que pasa con ela app', 'ahi vamos', 'url', 'libup.mx', '02af8581-09b5-11eb-811b-5b33340e43aa.jpg', '2020-11-10 01:19:00', '2020-11-26 22:20:00', 'Promoción', 'asdfsdf23432', NULL, 1, 0, 'Ninguno', 0, NULL, NULL, 'f0f4a759065e11eb8'),
('035ac91a0b5c11eb8', 'desc7', NULL, 'url', NULL, '035ac91b-0b5c-11eb-811b-b7261fdb31e3.jpg', '2020-10-10 17:50:00', '2020-11-25 18:52:00', 'Descuento', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, 'f0f4a759065e11eb8'),
('048bf4f10b6711eb8', 'desc2', 'meneke', 'url', NULL, '048bf4f2-0b67-11eb-811b-4d834ffde604.jpg', '2020-10-10 19:09:00', '2020-10-26 20:10:00', 'Descuento', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '811f0c100b6511eb8'),
('07c4ad10334211ebb', 'La Ola', NULL, 'url', NULL, '07c4ad11-3342-11eb-b185-9bc9fcb03d1b.jpg', '2020-11-30 12:26:00', '2020-12-12 12:26:00', 'Promoción', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '98b4bbcb0b5c11eb8'),
('07d1ae030b6011eb8', 'promo 1', NULL, 'url', NULL, '07d1ae04-0b60-11eb-811b-89fa3c212fe1.png', '2020-10-10 18:20:00', '2020-10-26 19:20:00', 'Promoción', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '3eb9babd0b5f11eb8'),
('0a4bffb70b6411eb8', 'DESC 5', NULL, 'url', NULL, '0a4bffb8-0b64-11eb-811b-d9717e7ff816.jpg', '2021-01-12 06:48:00', '2021-03-24 19:49:00', 'Descuento', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '3dd0da640b6211eb8'),
('0e1b25a409b611eb8', 'again ', 'ksksjkdkhhdk5244', 'url', NULL, '0e1b25a5-09b6-11eb-811b-f904f7333c95.jpg', '2020-10-08 15:30:00', '2020-11-25 19:31:00', 'Descuento', 'asa', NULL, 1, 0, 'Ninguno', 0, NULL, NULL, 'f0f4a759065e11eb8'),
('0e40136b0b6311eb8', 'PROMOCION TORTAS', NULL, 'url', NULL, '0e40136c-0b63-11eb-811b-e3eb34a9eee4.jpg', '2021-02-11 06:42:00', '2021-03-21 20:42:00', 'Promoción', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '3dd0da640b6211eb8'),
('157f27f20b6111eb8', 'desc3', NULL, 'url', NULL, '157f27f3-0b61-11eb-811b-2fed9b049561.png', '2020-10-10 18:27:00', '2020-10-26 19:28:00', 'Descuento', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '3eb9babd0b5f11eb8'),
('16eca17e0b5e11eb8', 'promo 5', 'promocion ', 'url', NULL, '16eca17f-0b5e-11eb-811b-c512724166aa.png', '2020-11-24 06:06:00', '2020-11-30 19:06:00', 'Promoción', NULL, NULL, 0, 0, 'Ninguno', 0, NULL, NULL, '98b4bbcb0b5c11eb8'),
('1953a0ea0b6711eb8', 'desc3', 'meneke', 'url', NULL, '1953a0eb-0b67-11eb-811b-1f72977728be.jpg', '2020-10-10 19:10:00', '2020-10-26 20:11:00', 'Descuento', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '811f0c100b6511eb8'),
('19aa9e790b6011eb8', 'promo2', NULL, 'url', NULL, '19aa9e7a-0b60-11eb-811b-a743d6975a3c.jpg', '2020-10-10 18:20:00', '2020-10-26 19:21:00', 'Promoción', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '3eb9babd0b5f11eb8'),
('1b62ffbd0b6411eb8', 'DESC 6', NULL, 'url', NULL, '1b62ffbe-0b64-11eb-811b-d370955d5fa8.jpg', '2020-10-10 18:49:00', '2021-03-15 19:50:00', 'Descuento', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '3dd0da640b6211eb8'),
('1ef4b51d0b6811eb8', 'ticktear', 'meneke', 'url', NULL, '1ef4b51e-0b68-11eb-811b-cd3c54b14801.jpg', '2020-10-10 19:17:00', '2020-10-26 20:18:00', 'Premio', NULL, '048bf4f10b6711eb8', 1, 0, 'Ticktear', 1, NULL, 11, '811f0c100b6511eb8'),
('1fd502d11ad211eb9', 'PROMO CON EDGAR', 'promo con edgar', 'url', '', '1fd502d2-1ad2-11eb-93bb-83541ceab390.png', '2021-02-09 08:04:00', '2021-02-18 11:05:00', 'Promoción', '06400', NULL, 1, 0, 'Ninguno', 0, NULL, NULL, 'f0f4a759065e11eb8'),
('207ec3ed0b5b11eb8', 'pomo 5', NULL, 'url', NULL, '207ec3ee-0b5b-11eb-811b-2fcc37a899e3.png', '2020-10-10 17:44:00', '2020-11-25 18:45:00', 'Promoción', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, 'f0f4a759065e11eb8'),
('21bf60e20b6311eb8', 'PROMO 2', NULL, 'url', NULL, '21bf60e3-0b63-11eb-811b-1dca9196fc5c.jpg', '2020-10-10 18:42:00', '2021-03-19 19:43:00', 'Promoción', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '3dd0da640b6211eb8'),
('22b98cd20b6511eb8', 'PREMIO DIRECTO NOTIFICACION', NULL, 'url', NULL, '22b98cd3-0b65-11eb-811b-c35eeb8dbeeb.png', '2021-01-12 06:50:00', '2021-03-23 19:57:00', 'Premio', NULL, '0e40136b0b6311eb8', 1, 0, 'Ticktear', 1, NULL, 5, '3dd0da640b6211eb8'),
('243eff3f2e7d11eb8', 'xxxxxx', NULL, 'url', NULL, '243eff40-2e7d-11eb-8c60-f1f1acd44045.jpg', '2020-11-24 10:44:00', '2020-11-30 10:47:00', 'Descuento', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '98b4bbcb0b5c11eb8'),
('266ee198548011eba', 'con notificacion', NULL, 'url', NULL, '266f08a9-5480-11eb-a885-b94ae481bc73.png', '2021-01-11 19:42:00', '2021-01-21 12:44:00', 'Premio', NULL, '47d15b86547d11eba', 1, 0, 'Directo', 1, NULL, 10, '3dd0da640b6211eb8'),
('26fb8dd2099111eb8', 'comida ', 'comida ', 'url', 'libup.mx', '26fb8dd3-0991-11eb-811b-57cb220c228c.png', '2021-02-09 12:06:00', '2021-02-10 20:07:00', 'Promoción', '25ds265d25s6', NULL, 1, 0, 'Ninguno', 0, NULL, NULL, 'f0f4a759065e11eb8'),
('297951950b5e11eb8', 'desc1', NULL, 'url', NULL, '29795196-0b5e-11eb-811b-2561a6bd8c18.jpg', '2020-11-24 06:07:00', '2020-11-30 19:07:00', 'Descuento', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '98b4bbcb0b5c11eb8'),
('2dcdcd0f0b6011eb8', 'promo 3', NULL, 'url', NULL, '2dcdf420-0b60-11eb-811b-27e21368e636.jpg', '2020-10-10 18:21:00', '2020-10-26 19:21:00', 'Promoción', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '3eb9babd0b5f11eb8'),
('2e2c15c30b6711eb8', 'desc 4', NULL, 'url', NULL, '2e2c15c4-0b67-11eb-811b-c9c5d456f4ce.jpg', '2020-10-10 19:11:00', '2020-10-26 20:11:00', 'Descuento', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '811f0c100b6511eb8'),
('2f0e8d540b6411eb8', 'DESC 7', NULL, 'url', NULL, '2f0e8d55-0b64-11eb-811b-fd500ef5adb2.jpg', '2020-10-10 18:49:00', '2020-10-26 19:50:00', 'Descuento', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '3dd0da640b6211eb8'),
('3194dabc6a8711eb9', 'Prueba', 'Prueba Audio', 'url', NULL, '3194dabd-6a87-11eb-9ca7-e1a0c6367e7b.png', '2021-02-08 20:29:00', '2021-02-10 20:30:00', 'Promoción', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, 'f0f4a759065e11eb8'),
('34696ea80b6111eb8', 'desc en tiempo principal', NULL, 'url', NULL, '34696ea9-0b61-11eb-811b-f71048d3c82d.jpg', '2020-10-10 18:28:00', '2020-10-26 19:29:00', 'Descuento', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '3eb9babd0b5f11eb8'),
('34a149ec2e8711eb8', 'tickteo', NULL, 'url', NULL, '34a149ed-2e87-11eb-8c60-a9cc3e77f734.jpg', '2020-11-24 11:58:00', '2020-11-30 11:59:00', 'Premio', NULL, 'aab198672e7c11eb8', 1, 0, 'Ticktear', 1, NULL, 5, '98b4bbcb0b5c11eb8'),
('36e6388709b511eb8', 'otra para ver que show', 'asfdasd', 'url', 'libup.mx', '36e63888-09b5-11eb-811b-879c11915d52.png', '2020-10-08 15:24:00', '2020-11-25 22:25:00', 'Promoción', 'asdfsaf', NULL, 1, 0, 'Ninguno', 0, NULL, NULL, 'f0f4a759065e11eb8'),
('3753d105334211ebb', 'Vaso Macho', NULL, 'url', NULL, '3753d106-3342-11eb-b185-6bf7e8144588.jpg', '2020-11-30 12:26:00', '2020-12-12 12:28:00', 'Promoción', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '98b4bbcb0b5c11eb8'),
('393a432856b911ebb', 'premio directo', NULL, 'url', NULL, '393a4329-56b9-11eb-b79d-915a39f056df.jpg', '2021-01-14 15:37:00', '2021-01-15 19:38:00', 'Premio', NULL, '7a910edf56b811ebb', 1, 0, 'Directo', 1, NULL, 5, '320a6d5c56b711ebb'),
('3a0f1b820b5b11eb8', 'promo 6', NULL, 'url', NULL, '3a0f1b83-0b5b-11eb-811b-6792a503078b.jpg', '2020-11-10 05:45:00', '2020-11-25 18:46:00', 'Promoción', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, 'f0f4a759065e11eb8'),
('3accf33d09b611eb8', 'otra', 'qwerqwe234', 'url', NULL, '3accf33e-09b6-11eb-811b-53620f439875.jpg', '2020-10-08 15:30:00', '2020-11-25 16:32:00', 'Descuento', 'sfdasdf', NULL, 1, 0, 'Ninguno', 0, NULL, NULL, 'f0f4a759065e11eb8'),
('3c1615b90b6311eb8', 'PROMO 3', NULL, 'url', NULL, '3c1615ba-0b63-11eb-811b-7186cff947e6.jpg', '2021-01-12 06:42:00', '2021-01-15 19:43:00', 'Promoción', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '3dd0da640b6211eb8'),
('3d7018fc0b5e11eb8', 'desc 2', NULL, 'url', NULL, '3d7018fd-0b5e-11eb-811b-df5a9e781bb0.jpg', '2020-11-24 06:07:00', '2020-11-30 19:07:00', 'Descuento', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '98b4bbcb0b5c11eb8'),
('3e8ad3b90b6511eb8', 'PREMIO DIRECTO SIN NOTIFICACION', NULL, 'url', NULL, '3e8ad3ba-0b65-11eb-811b-b7c7857b3f57.png', '2021-01-12 06:56:00', '2020-10-26 19:58:00', 'Premio', NULL, '21bf60e20b6311eb8', 1, 0, 'Directo', 0, NULL, NULL, '3dd0da640b6211eb8'),
('40b520450b6011eb8', 'promo 4', NULL, 'url', NULL, '40b52046-0b60-11eb-811b-f563e3734ee8.png', '2020-10-10 18:21:00', '2020-10-26 19:22:00', 'Promoción', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '3eb9babd0b5f11eb8'),
('41fd5db60b6811eb8', 'premio directo notificacion', 'meneke', 'url', NULL, '41fd5db7-0b68-11eb-811b-9f716e8aa90b.jpg', '2020-10-10 19:17:00', '2020-10-26 20:19:00', 'Premio', NULL, '1953a0ea0b6711eb8', 1, 0, 'Directo', 1, NULL, 5, '811f0c100b6511eb8'),
('4354313c0b6711eb8', 'desc 5', 'meneke', 'url', NULL, '4354313d-0b67-11eb-811b-87e8f0557ea7.png', '2020-10-10 19:11:00', '2020-10-26 20:12:00', 'Descuento', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '811f0c100b6511eb8'),
('451e49162e8611eb8', 'descuento ', NULL, 'url', NULL, '451e4917-2e86-11eb-8c60-bdfa4d7d9d5b.png', '2020-11-24 10:46:00', '2020-11-30 11:52:00', 'Descuento', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '98b4bbcb0b5c11eb8'),
('47d15b86547d11eba', 'La Ola', 'ksajdfñlkjasdf', 'url', NULL, '47d18297-547d-11eb-a885-ad6f9f7e1e1f.jpg', '2021-01-11 19:19:00', '2021-01-16 22:22:00', 'Promoción', 'es un codigo para control de la empresa', NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '3dd0da640b6211eb8'),
('49a195441ad311ebb', 'Otra Promo Fecha Actual', 'Otra Promo Fecha Actual', 'url', 'www.google.com', '49a19545-1ad3-11eb-b986-6fd1db99c5da.png', '2020-10-30 12:13:00', '2020-11-25 12:13:00', 'Descuento', '06400', NULL, 1, 0, 'Ninguno', 0, NULL, NULL, 'f0f4a759065e11eb8'),
('4ce9bdba56b811ebb', 'promocion 2x1', 'hamburguesa de camaron', 'url', NULL, '4ce9bdbb-56b8-11eb-b79d-fffc36afbea3.jpg', '2021-01-14 15:29:00', '2021-01-15 21:30:00', 'Promoción', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '320a6d5c56b711ebb'),
('4cec4ddd0b6111eb8', 'desc en sucursal', NULL, 'url', NULL, '4cec4dde-0b61-11eb-811b-2d13443ee2be.jpg', '2020-10-10 18:28:00', '2020-10-26 19:29:00', 'Descuento', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '3eb9babd0b5f11eb8'),
('4fac66f70b5b11eb8', 'promo 6', NULL, 'url', NULL, '4fac8e08-0b5b-11eb-811b-057941d7c222.jpg', '2020-10-10 17:46:00', '2020-11-25 18:47:00', 'Promoción', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, 'f0f4a759065e11eb8'),
('52617a800b6311eb8', 'PROMO 4', NULL, 'url', NULL, '52617a81-0b63-11eb-811b-e962c329d984.jpg', '2020-10-10 18:43:00', '2020-10-26 19:44:00', 'Promoción', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '3dd0da640b6211eb8'),
('529e2e790b6611eb8', 'promo 1', NULL, 'url', NULL, '529e2e7a-0b66-11eb-811b-61f79cde5532.jpg', '2020-10-10 19:05:00', '2020-10-26 20:05:00', 'Promoción', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '811f0c100b6511eb8'),
('54ce4e530b5e11eb8', 'des 3', NULL, 'url', NULL, '54ce7564-0b5e-11eb-811b-13271ccaea40.jpg', '2020-11-24 06:07:00', '2020-11-30 19:08:00', 'Descuento', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '98b4bbcb0b5c11eb8'),
('5aadd8ec2e8611eb8', 'limite descuento', NULL, 'url', NULL, '5aadd8ed-2e86-11eb-8c60-1d9402605b2a.jpg', '2020-11-24 11:52:00', '2020-11-30 11:53:00', 'Descuento', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '98b4bbcb0b5c11eb8'),
('5b193a97099111eb8', 'otra vez lo mismo', 'No se actualiza la información. ', 'url', 'libup.mx', '7082ed54-0b5b-11eb-811b-f771115a34de.jpg', '2020-10-08 12:08:00', '2020-11-25 16:08:00', 'Descuento', 'a ver que pasa', NULL, 1, 0, 'Ninguno', 0, NULL, NULL, 'f0f4a759065e11eb8'),
('5c3b335f0b6811eb8', 'prremio din notificacion', NULL, 'url', NULL, '5c3b5a70-0b68-11eb-811b-3983816ecd2c.jpg', '2020-10-10 19:19:00', '2020-10-26 20:20:00', 'Premio', NULL, '2e2c15c30b6711eb8', 1, 0, 'Directo', 0, NULL, NULL, '811f0c100b6511eb8'),
('5ca372ac2e7c11eb8', 'promocion 3', NULL, 'url', NULL, '5ca372ad-2e7c-11eb-8c60-9da418a2620a.jpg', '2020-11-24 10:40:00', '2020-11-30 10:41:00', 'Promoción', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '98b4bbcb0b5c11eb8'),
('5e1b5b250b6711eb8', 'desc 6', NULL, 'url', NULL, '5e1b5b26-0b67-11eb-811b-b9d59660122e.jpg', '2020-10-10 19:12:00', '2020-10-26 20:13:00', 'Descuento', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '811f0c100b6511eb8'),
('5f8ffdb00b6011eb8', 'promo 5', NULL, 'url', NULL, '5f8ffdb1-0b60-11eb-811b-57cf7029756c.jpg', '2020-10-10 18:22:00', '2020-10-26 19:23:00', 'Promoción', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '3eb9babd0b5f11eb8'),
('61c704cb0b6411eb8', 'TICKTEO', NULL, 'url', NULL, '61c704cc-0b64-11eb-811b-0b5f197fa21e.jpg', '2020-10-10 18:50:00', '2021-03-24 19:51:00', 'Premio', NULL, '0e40136b0b6311eb8', 1, 0, 'Ticktear', 1, NULL, 5, '3dd0da640b6211eb8'),
('646991470b6311eb8', 'PROMO 5', NULL, 'url', NULL, '64699148-0b63-11eb-811b-cb2590b6e3df.jpg', '2020-10-10 18:44:00', '2020-10-26 19:44:00', 'Promoción', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '3dd0da640b6211eb8'),
('66ec370a0b5e11eb8', 'desc 4', NULL, 'url', NULL, '66ec370b-0b5e-11eb-811b-95d8923d8db7.png', '2020-11-24 06:08:00', '2020-11-30 19:09:00', 'Descuento', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '98b4bbcb0b5c11eb8'),
('6903fa120b6611eb8', 'promo 2', NULL, 'url', NULL, '6903fa13-0b66-11eb-811b-ef7b1b3d970f.jpg', '2020-10-10 19:05:00', '2020-10-26 20:06:00', 'Promoción', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '811f0c100b6511eb8'),
('6cecb7212e8611eb8', 'descuento creativo', NULL, 'url', NULL, '6cecb722-2e86-11eb-8c60-ebf56d146a0a.jpg', '2020-11-24 11:53:00', '2020-12-12 11:53:00', 'Descuento', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '98b4bbcb0b5c11eb8'),
('7652608209b611eb8', 'premio 1', 'asdasfasf', 'url', NULL, '1dba7e9f-0b5c-11eb-811b-c78aaa47728e.jpg', '2021-02-09 08:33:00', '2021-02-11 18:33:00', 'Premio', 'sadfsadf5154sdf', '3194dabc6a8711eb9', 1, 0, 'Ticktear', 1, NULL, 13, 'f0f4a759065e11eb8'),
('78e4d2e60b6011eb8', 'desc1', NULL, 'url', NULL, '78e4d2e7-0b60-11eb-811b-2b54a101d031.jpg', '2020-10-10 18:23:00', '2020-10-26 19:23:00', 'Descuento', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '3eb9babd0b5f11eb8'),
('78fbeef10b5e11eb8', 'deesc5', NULL, 'url', NULL, '78fbeef2-0b5e-11eb-811b-8948b6c57981.jpg', '2020-11-24 06:08:00', '2020-11-30 19:09:00', 'Descuento', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '98b4bbcb0b5c11eb8'),
('78fc1c9b0b6611eb8', 'promo 3', NULL, 'url', NULL, '78fc1c9c-0b66-11eb-811b-039deb737438.jpg', '2020-10-10 19:06:00', '2020-10-26 20:06:00', 'Promoción', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '811f0c100b6511eb8'),
('79cbe5222e7c11eb8', 'series', NULL, 'url', NULL, '79cbe523-2e7c-11eb-8c60-21b3d5d958d5.png', '2020-11-24 10:41:00', '2020-11-30 10:42:00', 'Promoción', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '98b4bbcb0b5c11eb8'),
('7a910edf56b811ebb', 'descuento comida', 'jugo de comaron', 'url', NULL, '7a910ee0-56b8-11eb-b79d-e50dee046c40.jpg', '2021-01-14 15:32:00', '2021-01-15 12:32:00', 'Descuento', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '320a6d5c56b711ebb'),
('80c716ae0b6711eb8', 'desc7', NULL, 'url', NULL, '80c716af-0b67-11eb-811b-830e00dd2bfc.jpg', '2020-10-10 19:12:00', '2020-10-26 20:13:00', 'Descuento', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '811f0c100b6511eb8'),
('80f624820b6111eb8', 'premio ticktear', NULL, 'url', NULL, '80f62483-0b61-11eb-811b-b55d280e1090.jpg', '2020-10-10 18:30:00', '2020-10-26 19:30:00', 'Premio', NULL, '02a5de7c0b6111eb8', 1, 0, 'Ticktear', 1, NULL, 11, '3eb9babd0b5f11eb8'),
('85624639592e11ebb', '70% tickteo', '70% de descuento en artículos seleccionados', 'url', 'niceboutique.com/70tickteo', '8562463a-592e-11eb-b79d-0faeb20b174e.png', '2021-01-17 18:41:00', '2021-01-20 21:45:00', 'Premio', '70tickteo', '9a571b4e591f11ebb', 1, 0, 'Ticktear', 1, NULL, 10, '3d7efd1e58fb11ebb'),
('8983fd3c0b5b11eb8', 'des1', NULL, 'url', NULL, '8983fd3d-0b5b-11eb-811b-87c18d150ad9.jpg', '2020-10-10 17:47:00', '2020-11-25 18:48:00', 'Descuento', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, 'f0f4a759065e11eb8'),
('89b433c40b6611eb8', 'promo 4', NULL, 'url', NULL, '89b433c5-0b66-11eb-811b-e34fbd58a069.jpg', '2020-10-10 19:06:00', '2020-10-26 20:07:00', 'Promoción', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '811f0c100b6511eb8'),
('8a22c4dc1ad611eba', 'Nueva prueba fecha y hora 5', 'Nueva prueba fecha y hora 5', 'url', NULL, '8a22c4dd-1ad6-11eb-a2a2-f752fe126974.png', '2020-10-30 11:35:00', '2020-11-25 11:36:00', 'Descuento', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, 'f0f4a759065e11eb8'),
('8abe17780b6811eb8', 'ticteo calando ', NULL, 'url', NULL, '8abe1779-0b68-11eb-811b-d1ccd60d26e8.jpg', '2020-10-10 19:20:00', '2020-10-26 20:21:00', 'Premio', NULL, '4354313c0b6711eb8', 1, 0, 'Ticktear', 1, NULL, 15, '811f0c100b6511eb8'),
('8e5cda401ad811eba', 'Nuevo Concurso', NULL, 'url', 'www.google.com', 'd89de471-2e8b-11eb-8c60-f91743f5ec4e.jpg', '2020-10-30 11:50:00', '2020-11-30 17:57:00', 'Premio', '231890', '207ec3ed0b5b11eb8', 1, 0, 'Ticktear', 1, NULL, 2, 'f0f4a759065e11eb8'),
('90d78ead0b5a11eb8', 'promocion 1', 'la que sea', 'url', 'libup.mx', '90d7b5be-0b5a-11eb-811b-5fc294fe3c5e.jpg', '2020-11-10 05:40:00', '2020-11-25 18:41:00', 'Promoción', 'lksjdf4', NULL, 1, 0, 'Ninguno', 0, NULL, NULL, 'f0f4a759065e11eb8'),
('91b161670b6711eb8', 'desc 8', NULL, 'url', NULL, '91b16168-0b67-11eb-811b-ff5b5beca2f5.jpg', '2020-10-10 19:13:00', '2020-10-26 20:14:00', 'Descuento', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '811f0c100b6511eb8'),
('93266c906a8711eb9', 'Prueba Audio Radiorama', NULL, 'url', NULL, '93266c91-6a87-11eb-9ca7-b3180d7caee4.png', '2021-02-08 20:31:00', '2021-02-09 20:32:00', 'Premio', NULL, '3194dabc6a8711eb9', 1, 0, 'Audio', 1, 'c4a97dda51d811eb9', 5, 'f0f4a759065e11eb8'),
('9a571b4e591f11ebb', '2x1', '2x1 en artículos seleccionados', 'url', 'niceboutique.com/2x1', '9a571b4f-591f-11eb-b79d-f5d9523b083b.png', '2021-01-17 16:55:00', '2021-01-22 15:00:00', 'Promoción', 'NB2x1', NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '3d7efd1e58fb11ebb'),
('9cc15e7d0b6611eb8', 'promo 5', NULL, 'url', NULL, '9cc15e7e-0b66-11eb-811b-9b568277ee25.jpg', '2020-10-10 18:07:00', '2020-10-26 20:07:00', 'Promoción', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '811f0c100b6511eb8'),
('9decafe11ad611eba', 'Nueva prueba fecha y hora 6', 'Nueva prueba fecha y hora 6', 'url', NULL, '9decafe2-1ad6-11eb-a2a2-436f752137f6.png', '2020-11-10 09:37:00', '2020-11-25 11:37:00', 'Descuento', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, 'f0f4a759065e11eb8'),
('9e0b6be10b5b11eb8', 'des3', NULL, 'url', NULL, '9e0b6be2-0b5b-11eb-811b-b98bc6b7d613.jpg', '2020-10-10 17:48:00', '2020-11-25 18:49:00', 'Descuento', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, 'f0f4a759065e11eb8'),
('a26224900b6711eb8', 'desc8', NULL, 'url', NULL, 'a2622491-0b67-11eb-811b-612a750d4ae8.jpg', '2020-10-10 19:14:00', '2020-10-26 20:15:00', 'Descuento', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '811f0c100b6511eb8'),
('a36266080b6111eb8', 'premio con notificacion', NULL, 'url', NULL, 'a3626609-0b61-11eb-811b-094d63b8b8c5.png', '2020-10-10 18:30:00', '2020-10-26 19:32:00', 'Premio', NULL, '07d1ae030b6011eb8', 1, 0, 'Directo', 1, NULL, 15, '3eb9babd0b5f11eb8'),
('a6fe3ed50b6311eb8', 'PROMO 6', NULL, 'url', NULL, 'a6fe3ed6-0b63-11eb-811b-1f4a5de2d6d8.jpg', '2020-10-10 18:45:00', '2020-10-26 19:46:00', 'Promoción', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '3dd0da640b6211eb8'),
('aab198672e7c11eb8', 'buen fin', NULL, 'url', NULL, 'aab19868-2e7c-11eb-8c60-11f74b6e11be.png', '2020-11-24 10:42:00', '2020-11-30 10:43:00', 'Promoción', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '98b4bbcb0b5c11eb8'),
('ab3e73180b5e11eb8', 'premio tickteo', NULL, 'url', NULL, '89a6fe78-2e86-11eb-8c60-b92c01d487a7.jpg', '2020-11-24 06:10:00', '2020-11-30 19:10:00', 'Premio', NULL, '6cecb7212e8611eb8', 1, 0, 'Ticktear', 1, NULL, 5, '98b4bbcb0b5c11eb8'),
('ac7206e026a711eb9', 'premio audio', 'OX', 'url', NULL, 'ac7206e1-26a7-11eb-962e-411a0fb261fc.jpg', '2021-02-09 09:30:00', '2021-02-10 11:31:00', 'Premio', '9999 Envio a radiorama', '1fd502d11ad211eb9', 1, 0, 'Audio', 1, 'c4a97dda51d811eb9', 10, 'f0f4a759065e11eb8'),
('ad0fe57709b611eb8', 'premio directo notificacion', 'asdfasdf', 'url', 'fasdfasf', '3222cc83-0b5c-11eb-811b-4bc25a9e7c87.png', '2021-02-09 08:33:00', '2021-02-11 18:35:00', 'Premio', 'asdfasdf', '3194dabc6a8711eb9', 1, 1, 'Directo', 1, NULL, 10, 'f0f4a759065e11eb8'),
('b03a6b960b5b11eb8', 'desc4', NULL, 'url', NULL, 'b03a6b97-0b5b-11eb-811b-f3f02b8f1fb2.jpg', '2020-10-10 17:48:00', '2020-11-25 18:49:00', 'Descuento', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, 'f0f4a759065e11eb8'),
('b0b0f9f60b6611eb8', 'promo 6', NULL, 'url', NULL, 'b0b0f9f7-0b66-11eb-811b-ddbb004ae713.jpg', '2020-10-10 18:07:00', '2020-10-26 20:08:00', 'Promoción', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '811f0c100b6511eb8'),
('b1a97fee09b811eb8', 'premio directo', 'sadfasdf', 'url', NULL, '45f235c7-0b5c-11eb-811b-518735e09583.jpg', '2020-10-08 15:49:00', '2020-11-28 21:50:00', 'Premio', 'sdfasf', '1fd502d11ad211eb9', 1, 0, 'Directo', 0, NULL, NULL, 'f0f4a759065e11eb8'),
('b61f3e590b6711eb8', 'desc9', NULL, 'url', NULL, 'b61f3e5a-0b67-11eb-811b-17187c1ec491.jpg', '2020-10-10 19:15:00', '2020-10-26 20:15:00', 'Descuento', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '811f0c100b6511eb8'),
('b65e5ef0334511ebb', 'Restaurant', NULL, 'url', NULL, 'b65e5ef1-3345-11eb-b185-2b49e2c77f94.jpg', '2020-11-30 12:52:00', '2020-12-12 12:53:00', 'Descuento', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '98b4bbcb0b5c11eb8'),
('b6acdf17592011ebb', '2x1', '2x1 en artículos seleccionados', 'url', 'niceboutique.com/2x1', 'b6acdf18-5920-11eb-b79d-05ea70b346e7.png', '2021-01-17 17:03:00', '2021-01-20 20:00:00', 'Promoción', 'NB2x1', NULL, 0, 0, 'Ninguno', 0, NULL, NULL, '0027dd77592011ebb'),
('bec17ad1548011eba', 'premio sin notificacion', NULL, 'url', NULL, 'bec17ad2-5480-11eb-a885-4fe9e6896c7b.jpg', '2021-01-11 19:47:00', '2021-01-15 23:48:00', 'Premio', NULL, '47d15b86547d11eba', 1, 0, 'Directo', 0, NULL, NULL, '3dd0da640b6211eb8'),
('bed6008a0b5a11eb8', 'promo 2', NULL, 'url', NULL, 'e7710d64-0b5a-11eb-811b-8d324161d191.jpg', '2020-10-10 17:42:00', '2020-11-25 18:42:00', 'Promoción', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, 'f0f4a759065e11eb8'),
('c0a2b50b0b5b11eb8', 'desc6', NULL, 'url', NULL, 'c0a2b50c-0b5b-11eb-811b-432327503b4d.jpg', '2020-10-10 17:49:00', '2020-11-25 18:50:00', 'Descuento', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, 'f0f4a759065e11eb8'),
('c5ad785b0b6311eb8', 'DESC 1', NULL, 'url', NULL, 'c5ad785c-0b63-11eb-811b-65dc6d02bb06.jpg', '2020-10-10 18:47:00', '2020-10-26 19:47:00', 'Descuento', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '3dd0da640b6211eb8'),
('c6797e120b6711eb8', 'desc10', NULL, 'url', NULL, 'c6797e13-0b67-11eb-811b-6b27c4bd1823.jpg', '2020-10-10 19:15:00', '2020-10-26 20:16:00', 'Descuento', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '811f0c100b6511eb8'),
('c6812eae0b6111eb8', 'premio directo sin Notificacion', NULL, 'url', NULL, 'c68155bf-0b61-11eb-811b-edbd7061c4be.jpg', '2020-10-10 18:31:00', '2020-10-26 19:33:00', 'Premio', NULL, '157f27f20b6111eb8', 1, 0, 'Directo', 0, NULL, NULL, '3eb9babd0b5f11eb8'),
('c68b3ce20b5d11eb8', 'promo1', NULL, 'url', NULL, 'c68b3ce3-0b5d-11eb-811b-3717eb1002b0.jpg', '2020-11-24 06:03:00', '2020-11-30 19:04:00', 'Promoción', NULL, NULL, 0, 0, 'Ninguno', 0, NULL, NULL, '98b4bbcb0b5c11eb8'),
('c995c559206a11eba', 'nuevo premio', NULL, 'url', NULL, 'c995c55a-206a-11eb-a2a2-27bc4231269e.jpg', '2020-11-06 13:58:00', '2020-11-13 10:00:00', 'Premio', NULL, '207ec3ed0b5b11eb8', 1, 0, 'Ticktear', 1, NULL, 15, 'f0f4a759065e11eb8'),
('ca3d59ef0b6611eb8', 'promo 7', 'meneke', 'url', NULL, 'ca3d59f0-0b66-11eb-811b-a74f570cce3c.jpg', '2020-10-10 18:08:00', '2020-10-26 20:09:00', 'Promoción', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '811f0c100b6511eb8'),
('cd495cc6334111ebb', 'La Ola', NULL, 'url', NULL, 'cd495cc7-3341-11eb-b185-1f08686c0d11.jpg', '2020-11-30 12:23:00', '2020-12-12 12:23:00', 'Promoción', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '98b4bbcb0b5c11eb8'),
('ce51ca0f0b5e11eb8', 'premio directo Notificacion', NULL, 'url', NULL, 'a0a38bce-2e86-11eb-8c60-b74bdb30a012.png', '2020-11-24 06:10:00', '2020-11-30 19:11:00', 'Premio', NULL, '3d7018fc0b5e11eb8', 1, 0, 'Directo', 1, NULL, 10, '98b4bbcb0b5c11eb8'),
('d22918b00b5b11eb8', 'desc 7', NULL, 'url', NULL, 'd22918b1-0b5b-11eb-811b-91fb17a965e8.jpg', '2020-11-10 05:50:00', '2020-11-25 18:50:00', 'Descuento', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, 'f0f4a759065e11eb8'),
('d37786df0b5a11eb8', 'promo 3', NULL, 'url', NULL, 'd37786e0-0b5a-11eb-811b-bf35468cfc0d.jpg', '2020-11-10 05:42:00', '2020-11-25 18:43:00', 'Promoción', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, 'f0f4a759065e11eb8'),
('d4c1315c1ad111eb9', 'Luis Carlin', 'dssklamskamdksla', 'url', 'www.google.co', 'd4c1315d-1ad1-11eb-93bb-8553af61a977.png', '2020-10-30 11:02:00', '2020-11-25 12:03:00', 'Promoción', 'abcd1234', NULL, 1, 0, 'Ninguno', 0, NULL, NULL, 'f0f4a759065e11eb8'),
('d645d5ab0b6711eb8', 'desc11', NULL, 'url', NULL, 'd645d5ac-0b67-11eb-811b-01e178a7931a.jpg', '2020-10-10 19:16:00', '2020-10-26 20:16:00', 'Descuento', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '811f0c100b6511eb8'),
('d86bbfc20b6311eb8', 'DESC2', NULL, 'url', NULL, 'd86bbfc3-0b63-11eb-811b-338434581334.jpg', '2020-10-10 18:47:00', '2020-10-26 19:48:00', 'Descuento', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '3dd0da640b6211eb8'),
('d8c734e90b5d11eb8', 'promo 2', NULL, 'url', NULL, 'd8c734ea-0b5d-11eb-811b-7b51e0f0779f.jpg', '2020-11-24 06:03:00', '2020-11-30 19:05:00', 'Promoción', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '98b4bbcb0b5c11eb8'),
('dbb354be592f11ebb', 'Llévate 2 gratis', 'Compra 1 lipstick y llévate 2 gratis', 'url', 'niceboutique.com/directollevate2', 'dbb354bf-592f-11eb-b79d-a3029db2983b.png', '2021-01-17 18:50:00', '2021-01-22 20:58:00', 'Premio', 'C1LL2', '9a571b4e591f11ebb', 1, 0, 'Directo', 1, NULL, 13, '3d7efd1e58fb11ebb'),
('df2bfff02e8611eb8', 'premio con notificacion', NULL, 'url', NULL, 'df2bfff1-2e86-11eb-8c60-7d7b271c6afe.jpg', '2020-11-24 11:54:00', '2020-11-30 11:57:00', 'Premio', NULL, '243eff3f2e7d11eb8', 1, 0, 'Directo', 1, NULL, 15, '98b4bbcb0b5c11eb8'),
('e0efe03356b811ebb', 'premio comida', 'regalo comida tostadas', 'url', NULL, 'e0efe034-56b8-11eb-b79d-fd3781599ef9.jpg', '2021-01-14 15:34:00', '2021-01-15 21:34:00', 'Premio', NULL, '7a910edf56b811ebb', 1, 0, 'Ticktear', 1, NULL, 5, '320a6d5c56b711ebb'),
('e302c1950b5b11eb8', 'desc6', NULL, 'url', NULL, 'e302c196-0b5b-11eb-811b-35d6ce340f8d.jpg', '2020-10-10 17:50:00', '2020-11-25 18:51:00', 'Descuento', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, 'f0f4a759065e11eb8'),
('e3605b0f547d11eba', 'premio1', NULL, 'url', NULL, 'e3605b10-547d-11eb-a885-956e3dcc9ef7.jpg', '2021-01-11 19:25:00', '2021-01-13 21:26:00', 'Premio', '5265', '47d15b86547d11eba', 1, 0, 'Ticktear', 1, NULL, 10, '3dd0da640b6211eb8'),
('e77506891ad311ebb', 'Nueva promo fecha 2', 'Nueva promo fecha 2', 'url', 'www.google.com', 'e775068a-1ad3-11eb-b986-8ffe4e316bdf.png', '2020-10-30 12:15:00', '2020-11-25 12:18:00', 'Descuento', '06400', NULL, 1, 0, 'Ninguno', 0, NULL, NULL, 'f0f4a759065e11eb8'),
('e8afd8980b6611eb8', 'desc1', 'meneke', 'url', NULL, 'e8afffa9-0b66-11eb-811b-374b25ad74d9.jpg', '2020-10-10 19:09:00', '2020-10-26 20:09:00', 'Descuento', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '811f0c100b6511eb8'),
('e99a18590b6311eb8', 'DESC 3', NULL, 'url', NULL, 'e99a185a-0b63-11eb-811b-5f12cba1030f.jpg', '2020-10-10 18:47:00', '2020-10-26 19:48:00', 'Descuento', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '3dd0da640b6211eb8'),
('ed8c48d00b5d11eb8', 'promo 3', NULL, 'url', NULL, 'ed8c48d1-0b5d-11eb-811b-53b3357ddcd7.jpg', '2020-11-24 06:04:00', '2020-11-30 19:05:00', 'Promoción', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '98b4bbcb0b5c11eb8'),
('ee8d59940b6711eb8', 'desc12', NULL, 'url', NULL, 'ee8d5995-0b67-11eb-811b-1d85bd93a372.jpg', '2020-10-10 16:16:00', '2020-10-26 20:17:00', 'Descuento', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '811f0c100b6511eb8'),
('f0df4f360b5e11eb8', 'premio directo sin Notificacion', NULL, 'url', NULL, 'ba8b2b2a-2e86-11eb-8c60-4d8466811f66.jpg', '2020-11-24 06:11:00', '2020-11-30 19:12:00', 'Premio', NULL, '54ce4e530b5e11eb8', 1, 0, 'Directo', 0, NULL, NULL, '98b4bbcb0b5c11eb8'),
('f6f6c3fb334111ebb', 'La Ola', NULL, 'url', NULL, 'f6f6c3fc-3341-11eb-b185-2f6732d6a633.jpg', '2020-11-30 12:23:00', '2020-12-12 12:26:00', 'Promoción', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '98b4bbcb0b5c11eb8'),
('f89b7ed00b6311eb8', 'DESC 4', NULL, 'url', NULL, 'f89b7ed1-0b63-11eb-811b-478b3e0ac30d.jpg', '2020-10-10 18:48:00', '2020-10-26 19:49:00', 'Descuento', NULL, NULL, 1, 0, 'Ninguno', 0, NULL, NULL, '3dd0da640b6211eb8');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_shop`
--

CREATE TABLE `t_shop` (
  `id_shop` varchar(36) NOT NULL,
  `name` varchar(30) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 inactivo, 1 activo',
  `image` varchar(45) DEFAULT NULL,
  `image_watermark` varchar(45) DEFAULT NULL,
  `url_commerce` varchar(200) NOT NULL,
  `token_openpay` varchar(100) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 falso, 1 verdadero',
  `createdTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `t_shop`
--

INSERT INTO `t_shop` (`id_shop`, `name`, `active`, `image`, `image_watermark`, `url_commerce`, `token_openpay`, `is_deleted`, `createdTime`) VALUES
('0027dd77592011ebb', 'negocio prueba', 1, '236837d9-5920-11eb-b79d-112b666fb54a.png', '236837da-5920-11eb-b79d-610092430dcf.png', 'hola.com', 'avtyt7rklyucmiasla3c', 0, '2021-02-09 03:31:44'),
('1ace2e5467ea11eb9', 'El tortas ', 1, NULL, NULL, '', 'alj6gbtw2psebsoy8zc9', 0, '2021-02-09 03:31:44'),
('21b1b69267dd11eb9', 'REGALOS LA COLONIAL ', 1, NULL, NULL, 'https://www.facebook.com/112883743728666/posts/213312903685749/?d=n', 'ag3ltr4gujvwpwjsgtkk', 0, '2021-02-09 03:31:44'),
('320a6d5c56b711ebb', 'El Sapo', 1, 'a91d853e-56b7-11eb-b79d-21a752fca348.png', NULL, 'www.libup.mx', 'aa1rjjlvmsnywbyk9apt', 0, '2021-02-09 03:31:44'),
('3d7efd1e58fb11ebb', 'Nice Boutique', 1, '3e7d18f4-590b-11eb-b79d-8dfa851d0299.png', '3e7d18f5-590b-11eb-b79d-5bb8a06769c0.png', 'niceboutique.com', 'axymxqxmos3jvvuhu59h', 0, '2021-02-09 03:31:44'),
('3dd0da640b6211eb8', 'hosteleria', 1, 'b1471109-2f47-11eb-8c60-a9d7e8f1d630.jpg', '8b1ac4de-2f48-11eb-8c60-85d29d021839.png', 'www', 'apwbuksup4kpp8rxuxgi', 0, '2021-02-09 03:31:44'),
('3eb9babd0b5f11eb8', 'Electronick AHus', 0, NULL, NULL, '', 'akx7po4z16owi0vas9rd', 0, '2021-02-09 03:31:44'),
('50a4b0f826a211eb9', 'Luis Carlín', 0, NULL, NULL, 'www.fabricadeapps.com.mx', 'aqbndl4fzqgmxganemhu', 0, '2021-02-09 03:31:44'),
('65cd1f2d842511eba', 'ECOMMERCE2', 1, NULL, NULL, 'ECOMMERCE.COM2', 'aghugmxd6evhp3rjg8ps', 0, '2021-03-13 17:56:12'),
('811f0c100b6511eb8', 'MENEKE', 1, 'a2fd19c8-6a86-11eb-9ca7-99a254510fd8.jpg', NULL, '', 'aflhurxw5s1onugescu5', 0, '2021-02-09 03:31:44'),
('9091b7937d0111eba', 'La fonda', 1, NULL, NULL, 'lafonda.com.mx', 'aku3nsi4dvwj3xbsmagf', 0, '2021-03-04 15:52:03'),
('94624468672911eb9', 'Chanoc', 1, NULL, NULL, '', NULL, 0, '2021-02-09 03:31:44'),
('98b4bbcb0b5c11eb8', 'La Ola', 1, '7d2660d4-3341-11eb-b185-9d5de9dfbd34.jpg', NULL, '', 'a2lj80zeyx6oah113k5p', 0, '2021-02-09 03:31:44'),
('a601c5476f0711eba', 'FabApps2', 1, NULL, NULL, 'www.fabricadeapps.com.mx', NULL, 0, '2021-02-14 21:00:20'),
('b00ff6eb842311eba', 'ECOMMERCE', 1, NULL, NULL, 'ECOMMERCE.COM', 'a9udlr8zphabqzulndee', 0, '2021-03-13 17:43:58'),
('b1b611a66a2711eb9', 'Magia Land Shows', 1, NULL, NULL, 'Www.Facebook.com/magialandshows', NULL, 0, '2021-02-09 03:31:44'),
('c4524cbc55ed11eba', 'Antojitos mexicanos chayito', 1, NULL, NULL, '', NULL, 0, '2021-02-09 03:31:44'),
('e7a69299733b11eba', 'MSOLUTIONS ', 1, NULL, NULL, 'MSOLUTIONS.com.mx', NULL, 0, '2021-02-20 05:24:29'),
('f0f4a759065e11eb8', 'libup', 1, '65adcd79-6a7c-11eb-9ca7-417b81e488a4.jpg', 'f2144f81-0990-11eb-811b-1d88316668ec.png', 'www.libup.mx', 'azbmwt2zyk9ulbe9vtzo', 0, '2021-02-09 03:31:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_shop_notifications`
--

CREATE TABLE `t_shop_notifications` (
  `id_shop_notification` int(11) NOT NULL,
  `uid_shop` varchar(100) DEFAULT NULL,
  `type` enum('TickTear','Audio','Directo','Promociones','Descuentos') DEFAULT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `t_shop_notifications`
--

INSERT INTO `t_shop_notifications` (`id_shop_notification`, `uid_shop`, `type`, `created_time`) VALUES
(1, 'f0f4a759065e11eb8', 'Directo', '2020-10-08 22:52:29'),
(2, 'f0f4a759065e11eb8', 'Directo', '2020-10-08 22:53:08'),
(3, 'f0f4a759065e11eb8', 'Directo', '2020-10-08 22:53:31'),
(4, 'f0f4a759065e11eb8', 'Promociones', '2020-10-08 23:07:20'),
(5, 'f0f4a759065e11eb8', 'Promociones', '2020-10-08 23:09:52'),
(6, 'f0f4a759065e11eb8', 'TickTear', '2020-10-08 23:20:37'),
(7, 'f0f4a759065e11eb8', 'TickTear', '2020-10-08 23:23:54'),
(8, 'f0f4a759065e11eb8', 'TickTear', '2020-10-08 23:25:56'),
(9, 'f0f4a759065e11eb8', 'TickTear', '2020-10-08 23:27:35'),
(10, '811f0c100b6511eb8', 'TickTear', '2020-10-11 02:22:17'),
(11, '811f0c100b6511eb8', 'Directo', '2020-10-11 02:23:21'),
(12, 'f0f4a759065e11eb8', 'TickTear', '2020-10-30 17:46:16'),
(13, 'f0f4a759065e11eb8', 'TickTear', '2020-10-30 17:47:32'),
(14, 'f0f4a759065e11eb8', 'TickTear', '2020-10-30 17:51:51'),
(15, 'f0f4a759065e11eb8', 'TickTear', '2020-11-02 15:45:14'),
(16, 'f0f4a759065e11eb8', 'TickTear', '2020-11-02 15:48:05'),
(17, 'f0f4a759065e11eb8', 'TickTear', '2020-11-02 16:25:27'),
(18, 'f0f4a759065e11eb8', 'TickTear', '2020-11-02 16:44:01'),
(19, 'f0f4a759065e11eb8', 'TickTear', '2020-11-02 16:45:54'),
(20, 'f0f4a759065e11eb8', 'TickTear', '2020-11-02 16:47:45'),
(21, 'f0f4a759065e11eb8', 'TickTear', '2020-11-02 16:49:46'),
(22, 'f0f4a759065e11eb8', 'TickTear', '2020-11-02 16:51:55'),
(23, 'f0f4a759065e11eb8', 'TickTear', '2020-11-02 16:53:25'),
(24, 'f0f4a759065e11eb8', 'TickTear', '2020-11-02 16:55:41'),
(25, 'f0f4a759065e11eb8', 'TickTear', '2020-11-06 22:48:41'),
(26, 'f0f4a759065e11eb8', 'TickTear', '2020-11-06 22:52:22'),
(27, 'f0f4a759065e11eb8', 'TickTear', '2020-11-06 22:57:40'),
(28, 'f0f4a759065e11eb8', 'TickTear', '2020-11-06 23:29:35'),
(29, 'f0f4a759065e11eb8', 'TickTear', '2020-11-06 23:30:59'),
(30, 'f0f4a759065e11eb8', 'TickTear', '2020-11-06 23:40:09'),
(31, 'f0f4a759065e11eb8', 'TickTear', '2020-11-06 23:41:11'),
(32, 'f0f4a759065e11eb8', 'TickTear', '2020-11-08 20:37:18'),
(33, 'f0f4a759065e11eb8', 'TickTear', '2020-11-08 20:38:42'),
(34, 'f0f4a759065e11eb8', 'TickTear', '2020-11-08 20:46:36'),
(35, 'f0f4a759065e11eb8', 'TickTear', '2020-11-10 17:02:53'),
(36, 'f0f4a759065e11eb8', 'TickTear', '2020-11-10 17:04:28'),
(37, 'f0f4a759065e11eb8', 'TickTear', '2020-11-10 17:05:57'),
(38, 'f0f4a759065e11eb8', 'TickTear', '2020-11-10 17:12:47'),
(39, 'f0f4a759065e11eb8', 'TickTear', '2020-11-14 19:09:24'),
(40, 'f0f4a759065e11eb8', 'TickTear', '2020-11-14 19:10:15'),
(41, 'f0f4a759065e11eb8', 'TickTear', '2020-11-14 19:11:25'),
(42, 'f0f4a759065e11eb8', 'TickTear', '2020-11-14 19:15:39'),
(43, 'f0f4a759065e11eb8', 'Directo', '2020-11-26 01:05:42'),
(44, 'f0f4a759065e11eb8', 'TickTear', '2020-12-13 17:08:41'),
(45, 'f0f4a759065e11eb8', 'TickTear', '2020-12-13 17:12:29'),
(46, '3dd0da640b6211eb8', 'TickTear', '2021-01-12 02:32:59'),
(47, '3dd0da640b6211eb8', 'TickTear', '2021-01-12 02:38:59'),
(48, '3dd0da640b6211eb8', 'Directo', '2021-01-12 02:46:42'),
(49, '320a6d5c56b711ebb', 'Descuentos', '2021-01-14 22:33:58'),
(50, '320a6d5c56b711ebb', 'TickTear', '2021-01-14 22:36:28'),
(51, '320a6d5c56b711ebb', 'Directo', '2021-01-14 22:39:03'),
(52, '3d7efd1e58fb11ebb', 'TickTear', '2021-01-18 03:56:17'),
(53, '3d7efd1e58fb11ebb', 'TickTear', '2021-01-18 03:57:24'),
(54, '3d7efd1e58fb11ebb', 'TickTear', '2021-01-18 03:58:21'),
(55, '3d7efd1e58fb11ebb', 'Directo', '2021-01-18 05:03:32'),
(56, '3d7efd1e58fb11ebb', 'Directo', '2021-01-18 05:03:58'),
(57, '3d7efd1e58fb11ebb', 'Directo', '2021-01-18 05:05:33'),
(58, '3d7efd1e58fb11ebb', 'Directo', '2021-01-18 05:06:09'),
(59, '3d7efd1e58fb11ebb', 'Directo', '2021-01-18 05:06:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_shop_subscription`
--

CREATE TABLE `t_shop_subscription` (
  `id_suscription` int(11) NOT NULL,
  `uid_shop` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `authorization` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `openpay_transaction` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `import` decimal(8,2) NOT NULL DEFAULT '0.00',
  `expiration_date` date DEFAULT NULL,
  `notifications_allowed` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `t_shop_subscription`
--

INSERT INTO `t_shop_subscription` (`id_suscription`, `uid_shop`, `authorization`, `openpay_transaction`, `created_time`, `import`, `expiration_date`, `notifications_allowed`) VALUES
(8, '3dd0da640b6211eb8', '801585', 'trvog3h4sbbnpzsuekpb', '2020-10-11 01:38:04', 1999.99, '2020-11-11', 4),
(7, '3eb9babd0b5f11eb8', '801585', 'trsewsf8a45dehqtbwqp', '2020-10-11 01:16:10', 449.99, '2020-11-11', 4),
(6, '98b4bbcb0b5c11eb8', '801585', 'trrhacrjow6mqvr2yffr', '2020-10-11 00:57:57', 349.99, '2020-11-11', 4),
(22, '3dd0da640b6211eb8', '801585', 'tremr2bqiok15ndtmid5', '2021-03-05 17:33:21', 1.00, '2021-04-05', 10),
(9, '811f0c100b6511eb8', '801585', 'trpkhssk65ihylwmwuc5', '2020-10-11 02:01:20', 2999.99, '2020-11-11', 4),
(21, 'f0f4a759065e11eb8', '801585', 'trxkjrg6w1t7crrjsi5m', '2021-03-02 23:03:21', 1.00, '2021-04-02', 10),
(11, '50a4b0f826a211eb9', '801585', 'tra9wggzjzggzyp7chxf', '2020-11-14 17:58:21', 1.00, '2020-12-14', 8),
(12, '98b4bbcb0b5c11eb8', '801585', 'trzomnqb5qebcuabhc2x', '2020-11-24 17:38:06', 1.00, '2020-12-24', 10),
(13, '3dd0da640b6211eb8', '801585', 'tr5hjxnvxn1wkcaninip', '2020-11-25 17:56:58', 1.00, '2020-12-25', 10),
(20, '98b4bbcb0b5c11eb8', '801585', 'trxv7ei2tovffk2nu92s', '2021-02-03 03:19:39', 1.00, '2021-03-03', 10),
(15, '3dd0da640b6211eb8', '801585', 'trprja4gyhoriwxyr2dh', '2021-01-12 02:12:39', 1.00, '2021-02-12', 10),
(16, '320a6d5c56b711ebb', '801585', 'trb6easjzdt751d0qqk0', '2021-01-14 22:25:39', 1.00, '2021-02-14', 10),
(17, '3d7efd1e58fb11ebb', '801585', 'tra0wrq90hvkrdotzpza', '2021-01-17 20:59:58', 1.00, '2021-02-17', 10),
(18, '0027dd77592011ebb', '801585', 'tr499hwno0aiks0avtft', '2021-01-17 23:59:54', 1.00, '2021-02-17', 10),
(19, 'f0f4a759065e11eb8', '801585', 'trm9gtwtotkobbg7kjvu', '2020-01-20 22:29:11', 1.00, '2021-02-20', 10),
(23, 'b00ff6eb842311eba', '801585', 'trlxrrlepaecs4zeh6bn', '2021-03-13 17:46:23', 1.00, '2021-04-13', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_states`
--

CREATE TABLE `t_states` (
  `id_state` int(11) NOT NULL,
  `state` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `t_states`
--

INSERT INTO `t_states` (`id_state`, `state`) VALUES
(1, 'Aguascalientes'),
(2, 'Baja California'),
(3, 'Baja California Sur'),
(4, 'Campeche'),
(5, 'Coahuila'),
(6, 'Colima'),
(7, 'Chiapas'),
(8, 'Chihuahua'),
(9, 'Ciudad de México'),
(10, 'Durango'),
(11, 'Guanajuato'),
(12, 'Guerrero'),
(13, 'Hidalgo'),
(14, 'Jalisco'),
(15, 'México'),
(16, 'Michoacán'),
(17, 'Morelos'),
(18, 'Nayarit'),
(19, 'Nuevo León'),
(20, 'Oaxaca'),
(21, 'Puebla'),
(22, 'Querétaro'),
(23, 'Quintana Roo'),
(24, 'San Luis Potosí'),
(25, 'Sinaloa'),
(26, 'Sonora'),
(27, 'Tabasco'),
(28, 'Tamaulipas'),
(29, 'Tlaxcala'),
(30, 'Veracruz'),
(31, 'Yucatán'),
(32, 'Zacatecas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_user`
--

CREATE TABLE `t_user` (
  `id_user` varchar(36) NOT NULL,
  `name` varchar(30) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `email` varchar(255) NOT NULL,
  `profile_photo` varchar(45) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `token_android` varchar(160) DEFAULT NULL COMMENT 'es el token para notificaciones',
  `token_ios` varchar(160) DEFAULT NULL,
  `phone_number` varchar(10) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 inactivo, 1 activo',
  `social_id` varchar(100) DEFAULT NULL,
  `acount_type` enum('Normal','Facebook','Google','Twitter') NOT NULL,
  `id_state` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 falso, 1 verdadero',
  `latitude` varchar(200) DEFAULT NULL,
  `longitude` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `t_user`
--

INSERT INTO `t_user` (`id_user`, `name`, `last_name`, `email`, `profile_photo`, `password`, `token_android`, `token_ios`, `phone_number`, `active`, `social_id`, `acount_type`, `id_state`, `is_deleted`, `latitude`, `longitude`) VALUES
('16c7b27b733c11eba', 'said', 'Ramírez', 'saidramirez35@gmail.com', NULL, '65e863417f769424ddbfc432bfb7d756', 'eS20Noa84dQ:APA91bEb1eQ6dPKTwwgKr3oDUOIyJvlA-9q2arJjfRoB8K3M2EnYYx4JKLFa53Llj2Pwq0Qpi9BsW-NYBFwpSZ_tiwG2h2_I-GHbWDhHSax72Zoph3KFYFU8rSaPM6LotqR894mZ6bVq', NULL, '3111950990', 1, NULL, 'Normal', 18, 0, '21.4716916', '-104.8781426'),
('1cf2161509b511eb8', 'Luis', 'Carlin', 'luis@fabricadeapps.com.mx', NULL, '19e5db85820d13199f101d98c8d4e744', 'd5BSD31h1nQ:APA91bGu6X7JxLNi6W4m0ybLMK_ykVoNQZg01LfMHJtykRke55IBgurp5Cq0ig31IVfUEGsAdxItiLL6w1ZxCkCwvLkCbSqk8krgvB-btS_T1q-dUTdJXHVZ3mV_HRNlKVPK0CY8GMwD', 'tokenDevices', '5544477231', 1, NULL, 'Normal', 18, 0, '20.5425937', '-100.4859941'),
('2a3dade178de11eba', 'said', 'ramirez', 'saidramirez3501@gmail.com', NULL, '4b62661e0c6d5e03c6ad222a3500a8ec', NULL, NULL, NULL, 1, NULL, 'Normal', 18, 0, '21.504165', '-104.89458833333333'),
('2f7046bc683311eb9', 'Johana celina', 'avelino cruz ', 'avelinocruzcelinajohana@gmail.com', NULL, 'bc2183d25ac4a55cd27d4ed0301228e9', 'es_hmuT4oBY:APA91bHOQvEyTLlgDKtLXvsKS0ko_P8UWJTQjWoNpMoYdbLs1bG8DD-2Vt9j1HhBHOlM3e50Bf3qDi6nLnoAvYJWY6Nbd4nbvtFDWqwjsa1GcumJFQLEmNr3_A4-HqlrsftXeB1Pp57d', NULL, '3113389328', 1, NULL, 'Normal', 1, 0, '21.4829625', '-104.8670862'),
('369b459c09b811eb8', 'arturo', 'saav3dra', 'libelilaxu@hotmail.com', NULL, '81dc9bdb52d04dc20036dbd8313ed055', 'e6NwdbYXk2w:APA91bF4_odDKhtPIiRqmK1PATB8N4k4DMVir3ADP97Cr6ObwNpryINZRVzIaKW0MwwaxSPlOiEN0fyfdLgxrwF3kn4axSApufR7shoC2kSzoYTv6GeYaBOatiYcF2yCtpL0UnPSbjEg', NULL, '3111191866', 1, NULL, 'Normal', 18, 0, '21.5081692', '-104.910685'),
('464de5bf2a8111eba', 'fu', 'cosme', 'test@ad.com', NULL, '65f5f7ef2352ae2ee840588aad707236', NULL, 'token_device', NULL, 1, 'social_id', 'Facebook', 18, 0, NULL, NULL),
('5c305bf2698211eb9', 'Elizabeth ', 'Rosales', 'eliza83rosales@gmail.com', NULL, 'b4d2bf6d6886aa8f2d4aa37a5cd7598a', 'dv_8-6G_ZYA:APA91bFKniHqiFrJXfuFKPYcOwg0y3yKfPvajYzTLmB9ObyinmGCLSVgOcwF75VWq-JRrsogLzODhwe-nRToBPrMzkpjRI5Wxz-SMUHSrA7WVHFAdZi8wyvViedQaY10fTXnIpyly7Gc', NULL, '3112329294', 1, NULL, 'Normal', 18, 0, '21.4677144', '-104.866326'),
('64ea038a55ed11eba', 'rosario iliana', 'saavedra medina', 'sarosario161@gmail.com', NULL, '9b435bf242fdb40ea598601d99256053', 'ffnlUIgOrgU:APA91bEGbSBsIYo6lnZCzZubbnrCX6WbED2F-OliuLjaPqC6j0LYRUQ2eIowBQ2HY13fnyVgYYEapp4yC-mo5pydNF7fDN7c4uw_PgUXv27NxZLXkTg6Meeul6mCBSSE7BHq70RsXNiQ', NULL, '3111487108', 1, NULL, 'Normal', 18, 0, '21.5093337', '-104.9111033'),
('6b8409b8681111eb9', 'ivon', 'avila', 'ivoneavilagarcia@gmail.com', NULL, 'c51a614c9f4efcf8a468a6a438c6ec39', 'du5ygAQHy4M:APA91bFrF7L99snpj1qOafcpBKWgnAbQ8ICPnNpuRjpuEg7TBKstJ70C48-BrOtS1RHGntpOTRQqyYPcX8AToeCXxC5CuQChWlfkJsyTqEBZs9uX7J57ZqL-iCDf4LSzCP6ovFGU-IFc', NULL, '3111375494', 1, NULL, 'Normal', 18, 0, NULL, NULL),
('6e53891e626111eb8', 'marco vinicio', 'juarez saavedra', 'marco_saavedra22@hotmail.com', NULL, '687e93ce38108b46c5be727c7c647483', 'cvtICc6oVFo:APA91bFQkEnhimn_emdun-20ltvToFcogE5ENEjpxoMy7OlTziF1mcpmdmLAEVoIcYrJ2qOiRM8PMTZBmEXQ4hzIme9-gRf88sQrf-2tzyiT3YfmJIW3WRGVdvxp3dPfDI-NFC7LhUVK', NULL, '3119108635', 1, NULL, 'Normal', 18, 0, NULL, NULL),
('7296de26672611eb9', 'Luis', 'carlin', 'luis@demodemo.com', NULL, '81dc9bdb52d04dc20036dbd8313ed055', 'chDsj1HuPoM:APA91bE96yFGyUOcsEw_AckMHF3PMfN7Ky7juO9yblStJAFC9gSJsLheRW_PEXSzj8daBy131GX6QMeDaQfl6fdhM4utfRnVIAkZUAZ3i63yqqkrXwrwybvp25u-AwP75SXWzGSm1I1O', NULL, '5544477231', 1, NULL, 'Normal', 4, 0, NULL, NULL),
('77aa01005b8511ebb', 'Santiago Daniel', 'Gomez gonzalez', 'gomezglezsd@gmail.com', NULL, '246507735d6d20d0f428c94547588b1c', 'dIwU49meeS8:APA91bFjNuZIsODZmUzhN2f5FmQE6tang-kd-XcaKXnRelALwTwkZ35WYxXoe1H6NDqG2n9yv31MMj3YpdBry71ak1ryvfYVX2vTXMVoM3YBrYVfCprl1fZSqiYJdMT93c1KdwWxQxn5', NULL, '3111189262', 1, NULL, 'Normal', 1, 0, '21.5202201', '-104.9149768'),
('7e11176e689f11eb9', 'Mónica ', 'Bermúdez ', 'moky9104@gmail.com', NULL, 'a1bdf98a49036b9113277bf0f1156d33', 'eLpbSEHvdYw:APA91bE5ZNIhfEYJk6N7m1ykwM1wkhBDdBHwrqrEW_KDm5Hn7YJQJGY4tvqQqlah_Osi8po5uhlGBl-UrA-dw7XzDINCLmhp0ehGedIp_JNd3dMFcDg67y2bjZqrrAn5b01eowJy-y4i', NULL, '3111083505', 1, NULL, 'Normal', 18, 0, NULL, NULL),
('883866fe673411eb9', 'Martin', 'Figueroa', 'jmartinfigueroam@gmail.com', NULL, '5984e18ddf68af3b73b5656f47fd0864', 'eUZrASXr7Eo:APA91bExG_JrVTqeG0Y8dTpdR99fbCDhDs87m1lLSs7N2mrfzfSKZ9qvvgtzwnsP5KIdiywcBo43hHQq0MynLiL44GFfOQyvr9b_6LTaCC-Jzz7PEZFQsqDsg7rrHcc3OhOEOqVUsQGe', NULL, '3111097029', 1, NULL, 'Normal', 18, 0, '21.4756619', '-104.866603'),
('8936219c592511ebb', 'Mario', 'Carrillo', 'mario.carrillo@gmail.com', NULL, 'e807f1fcf82d132f9bb018ca6738a19f', 'fcf5Vr4Gj6Q:APA91bHVPIlMyjsuLMFjgz2BtRP8BZLCn1s0TPJdCO6MsKxRt9Ukh-nxv11KZsxUPMz_adPhnfDeMttulWAiarCTrXFW8Z0nL_WNTQ-bP4uOFVdLDVkhOzpEApqR_WMvaoprQ0iRmu3E', NULL, '3111234567', 1, NULL, 'Normal', 18, 0, '21.4798332', '-104.8778728'),
('8ab5cabc345b11ebb', 'german', 'luna vazquez', 'comerzluna@hotmail.com', NULL, 'b7d836e10fc8ddae044d11b6391b5f4f', 'cKfddylGccc:APA91bHEupKmA4jpuForxqPuGF-5P2S4zPCU09G-a77pK1dcHBgdG0WCy7qw4H7KChMxPBfpl4Vfg3o6EK-AF4yOlqgkQXORWdQ4jmiPsyXG7QQEAdNQValq8eejiXZZZ_PDfBJy-9kd', NULL, '3111216376', 1, NULL, 'Normal', 18, 0, NULL, NULL),
('938d05302a8d11eb8', 'luis', 'carlin', 'qro@demo.com', NULL, '81dc9bdb52d04dc20036dbd8313ed055', 'fxZxDbWRWmo:APA91bGlwjIYTEktGHiHHVKMRM51BNi1Eo_USGrUdzSTG0cbSFsVKqzu9zxSZ0Nn6Q8RCOOTHw-FlpEDQxfih8UWhPldYBHizB80qptRhBPAkGVC0CR2KV4xCqOoZMdvb5Y9MXgGeX_c', NULL, NULL, 1, NULL, 'Normal', 22, 0, '20.5425912', '-100.4859747'),
('93d44e40694b11eb9', 'Estefany', 'Castillo', 'estefanycas16@gmail.com', NULL, 'd5061c9521f08d94c484da5977acb00f', 'dHMFlw32jjw:APA91bEUvRnc_I2Wfi8FAPMgjQRBZr8rkIK46OY2KjGuSbe-YPRPPR7yGzwD6k8A3H5SbZSs7eUeGBq_-wOkGShYfmjEH4j7clE5Ge_Po-aQKwJPN6wTtZIsNqqL-NrDsIM_bbWjg98f', NULL, NULL, 1, NULL, 'Normal', 18, 0, NULL, NULL),
('970482a06c8411eba', 'Raul', 'Diaz', 'rulodiazmx@gmail.com', NULL, '5234e196f3d82c440f0025dc42b4c204', 'efObQoqS-to:APA91bFL8rVbu0CqFNDW4FJW7kwOXBN2U_458Vb8ckDj252KJ0dvgOSFofcQ6jr6PR-uCg__-9ATd2PHn8yIZg4Panj4UKdHCqj4z3eHDhYitSAO7TumKZKKwZRVrixqO1Zd_0NyUs8W', NULL, NULL, 1, NULL, 'Normal', 18, 0, '21.4800699', '-104.8554713'),
('9c6321325c6011ebb', 'Jose juan', 'cruz', 'jjuanch90@gmail.com', NULL, 'b2c9d4eff9813a7bfaa218798a33f67b', 'dv_fULwhRa0:APA91bFtwKFHkVH3z2JEN27q0-PGSW8fs-xdplm7DyHRUBe4OC4oRtvHWBv9LadEuZLAMSw4W44C1g6n_beOhSjm9maYiK0b0Rs5GLv2qT3wMaJpdeoDgz5cFq-sHVOIMhz_tU4lfxbB', NULL, NULL, 1, NULL, 'Normal', 18, 0, '21.4759513', '-104.8510903'),
('a02a8d622d3211eb8', 'libup', 'libup', 'arturosaavedra773@gmail.com', NULL, '81dc9bdb52d04dc20036dbd8313ed055', 'eDKxu_aQmfs:APA91bGKLQl8KcTMfRDepEWPiFZY1fC-xDhbEKBxEIXjWtZWVwkj0rEcP-gUxUYuI_vGPa35jIHWCCeQ-lAs6jc-jtLbNU9XRjzswrOTuHHU8c6yaWecDeg_oKWaoZUQsCelg4AOco7W', NULL, '3111191866', 1, NULL, 'Normal', 23, 0, '21.5081788', '-104.9106751'),
('a81d645067d711eb9', 'Carlos', 'peña', 'jhovany23c@hotmail.com', NULL, '4ff659e91e2ed043b83db60166e0dd6a', 'cxkwx_sKtUI:APA91bGwXN6paQScl92_-hMD2FmaLWcE1umeYTmUVXcX0ZZM1JYgEinpQnjWAJcrvipFdLx1PFlK_nSw9PYmUsg0VnSXjRYfmVoqQP94eAkFO5apvuLiHmjPXaLw1PBPk8R0EblMCML0', NULL, NULL, 1, NULL, 'Normal', 18, 0, NULL, NULL),
('af36008a683111eb9', 'olga', 'canales narvaez', 'olga.chikita.45@gmail.com', NULL, '52cc94d92fa81d1996380dae112ad2bf', 'cBPIZJnB2dI:APA91bHwd2_GCbtpEwAH7iQGVGFdijwbZTLW3nuq_cZjmFM854rxFg8CO3hKuuuyLCT8rkXmVAf2WOPyH7ZpHZ1nf5vjY_a01VgF29Un0MRfNmZ5nLaBJiqEDL1S2Sus9rO-_SJBGvWA', NULL, '3113434390', 1, NULL, 'Normal', 18, 0, '21.5278328', '-104.8941119'),
('bd810f9e5b8211ebb', 'oscar', 'Gómez', 'ivan_shark_oscar@hotmail.com', NULL, 'e40c93c9590687e5fca54068b98c12e5', 'ciikncJ1_-U:APA91bFwjxI7-T9KUtUPVezxqDyHGxXQwKn52o1p0tp3eN_NSa7H6-QhZmSVKuqGtj91jGOFLFm3HpmgptqUqQAra669oTfPjCbjs1kh2yIbL1jiX2wJaoy9ZKvWB2q7ZCiNM0W-yAl3', NULL, '3757512389', 1, NULL, 'Normal', 18, 0, '21.9355898', '-105.2904702'),
('c895b219220011eba', 'Luis', 'Carlin', 'luis@demo2.com', NULL, '19e5db85820d13199f101d98c8d4e744', 'cDwVBwFIkcM:APA91bEoKpRH6OybSfC96hMJ2KMqDobVy4T9vXSWOWPvCLTi15Ft0kh0m6Few27JrhOMPS1eUBeWOP46_8174EbvPqqQ03wEuH3QtFS7xnUBpaG7SNNeWWFKRLU9j8SNIM5o2_9ybVmB', NULL, '5544477231', 1, NULL, 'Normal', 18, 0, '20.5426296', '-100.4860027'),
('e18e3374698d11eb9', 'Fabian', 'Ramírez', 'fabianramirez25023@gmail.com', NULL, '14474f15376020c64a349efbc00b0539', 'drCMeIFKoN0:APA91bHMaBMm5b_wume6A0RHn-N8KzeuYva8WujxmFkuUkvoapAbeqcHiABMA8c3jrgn8NA7gsG6c4US-2BLGjZ6B1t3HPl4NHr4JT4kdQgEEX5akLyUWfjf_k3rqvF1qb9OWtrInuIk', NULL, NULL, 1, NULL, 'Normal', 18, 0, '21.4736596', '-104.8584365'),
('e7112f7a1f0611eba', 'edgar', 'barrera', 'edgarlib123@gmail.com', NULL, '25f9e794323b453885f5181f1b624d0b', 'dlrY33tSMls:APA91bEjPVifipJjSHX7FZNd9wvsQVzF0aohxS5NsYKHYiUKvbVIEAquiTD3DKg-0YCCF9Dbqp7Am070LzmGsakpQWFQ5pFWY_x4QGSaN6zlbGzAgwASA-XcBEoswA15S4DpETGPX-VG', NULL, NULL, 1, NULL, 'Normal', 18, 0, '20.6029091', '-100.2749106'),
('e99ec24d77df11eba', 'Gloria', 'Palacios', 'gloriatpalaciosponce@gmail.com', NULL, '2675d3791a4a7e7e23d8936c85bcc30b', 'cNblSzsEK0s:APA91bGky5NzPCxxPsTpienn0ZiPpq_SMCwIojxzI3UDocdCPYxURD7RvaeljhWjEfHVUrrAxTuIjhLpQXKia56Yn9vZFlIlaXtFO9hFcn6EP81UgMHGuB_n3ANs5rvO8PurA-SMT_Qh', NULL, '3223072960', 1, NULL, 'Normal', 14, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_winner`
--

CREATE TABLE `t_winner` (
  `id_winner` varchar(36) NOT NULL,
  `id_contest` varchar(36) DEFAULT NULL,
  `id_user` varchar(36) NOT NULL,
  `tick_count` int(3) NOT NULL,
  `date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` enum('Ganado','Reclamado') NOT NULL DEFAULT 'Ganado',
  `id_shop` varchar(36) NOT NULL,
  `id_broadcaster` varchar(36) DEFAULT NULL,
  `type` enum('ConAudio','SinAudio') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `t_winner`
--

INSERT INTO `t_winner` (`id_winner`, `id_contest`, `id_user`, `tick_count`, `date`, `status`, `id_shop`, `id_broadcaster`, `type`) VALUES
('10f6f7601d2811eba', 'ea91411e1d2711eba', '1cf2161509b511eb8', 28, '2020-11-02 16:25:49', 'Ganado', 'f0f4a759065e11eb8', NULL, 'SinAudio'),
('15431ea226ad11eb9', 'fbc2306026ac11eb9', 'c895b219220011eba', 41, '2020-11-14 19:10:39', 'Ganado', 'f0f4a759065e11eb8', NULL, 'SinAudio'),
('1eb67fb826a811eb9', 'c380e3b626a711eb9', '369b459c09b811eb8', 0, '2020-11-14 18:35:08', 'Ganado', 'f0f4a759065e11eb8', 'c5422d9a26a511eb9', 'ConAudio'),
('40eee91d220211eba', '620af95b220111eba', '1cf2161509b511eb8', 3, '2020-11-08 20:37:44', 'Ganado', 'f0f4a759065e11eb8', NULL, 'SinAudio'),
('4b5266c91d2c11eba', '3a1456c71d2c11eba', '1cf2161509b511eb8', 46, '2020-11-02 16:56:04', 'Ganado', 'f0f4a759065e11eb8', NULL, 'SinAudio'),
('61bb0f5809bd11eb8', '4b9273d609bd11eb8', '1cf2161509b511eb8', 50, '2020-10-08 23:24:16', 'Ganado', 'f0f4a759065e11eb8', NULL, 'SinAudio'),
('76a2528426a911eb9', '4ec3def026a911eb9', 'c895b219220011eba', 0, '2020-11-14 18:44:45', 'Ganado', 'f0f4a759065e11eb8', 'c5422d9a26a511eb9', 'ConAudio'),
('8087a5af208311eba', '61c50b3d208311eba', '1cf2161509b511eb8', 1, '2020-11-06 22:57:53', 'Ganado', 'f0f4a759065e11eb8', NULL, 'SinAudio'),
('8c0234f526ab11eb9', '6499186e26ab11eb9', 'c895b219220011eba', 0, '2020-11-14 18:59:40', 'Reclamado', 'f0f4a759065e11eb8', 'c5422d9a26a511eb9', 'ConAudio'),
('8cd29844220311eba', 'e99384a1220211eba', '1cf2161509b511eb8', 37, '2020-11-08 20:47:01', 'Reclamado', 'f0f4a759065e11eb8', NULL, 'SinAudio'),
('8ee278ce26a811eb9', '6b91558a26a811eb9', 'c895b219220011eba', 0, '2020-11-14 18:38:16', 'Ganado', 'f0f4a759065e11eb8', 'c5422d9a26a511eb9', 'ConAudio'),
('a9ff6d1b09bd11eb8', '78aaf27909bd11eb8', '369b459c09b811eb8', 0, '2020-10-08 23:26:17', 'Ganado', 'f0f4a759065e11eb8', NULL, 'SinAudio'),
('c39f5b4c208211eba', 'b75e746a208211eba', '1cf2161509b511eb8', 7, '2020-11-06 22:52:36', 'Ganado', 'f0f4a759065e11eb8', NULL, 'SinAudio'),
('d7041a3826ad11eb9', 'c1f7c42526ad11eb9', '369b459c09b811eb8', 55, '2020-11-14 19:16:04', 'Ganado', 'f0f4a759065e11eb8', NULL, 'SinAudio'),
('da480c7c26ab11eb9', 'c194323726ab11eb9', '369b459c09b811eb8', 0, '2020-11-14 19:01:51', 'Reclamado', 'f0f4a759065e11eb8', 'c5422d9a26a511eb9', 'ConAudio'),
('dc25080d1d2211eba', 'c906030b1d2211eba', '1cf2161509b511eb8', 44, '2020-11-02 15:48:32', 'Ganado', 'f0f4a759065e11eb8', NULL, 'SinAudio'),
('ec588da509bc11eb8', '7b21db5309bc11eb8', '369b459c09b811eb8', 52, '2020-10-08 23:20:59', 'Ganado', 'f0f4a759065e11eb8', NULL, 'SinAudio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_winner_direct`
--

CREATE TABLE `t_winner_direct` (
  `id_winner` varchar(36) NOT NULL,
  `id_user` varchar(36) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_promo` varchar(36) NOT NULL,
  `status` enum('Ganado','Reclamado') NOT NULL DEFAULT 'Ganado',
  `id_shop` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `t_winner_direct`
--

INSERT INTO `t_winner_direct` (`id_winner`, `id_user`, `date`, `id_promo`, `status`, `id_shop`) VALUES
('088bc76809b911eb8', '369b459c09b811eb8', '2020-10-08 22:53:08', 'ad0fe57709b611eb8', 'Reclamado', 'f0f4a759065e11eb8'),
('1642856909b911eb8', '1cf2161509b511eb8', '2020-10-08 22:53:31', 'ad0fe57709b611eb8', 'Reclamado', 'f0f4a759065e11eb8'),
('2ae6a3ca09b911eb8', '1cf2161509b511eb8', '2020-10-08 22:54:06', 'b1a97fee09b811eb8', 'Reclamado', 'f0f4a759065e11eb8'),
('4d705d7d56b911ebb', '1cf2161509b511eb8', '2021-01-14 22:39:03', '393a432856b911ebb', 'Reclamado', '320a6d5c56b711ebb'),
('4e482faa548111eba', '369b459c09b811eb8', '2021-01-12 02:53:11', 'bec17ad1548011eba', 'Reclamado', '3dd0da640b6211eb8'),
('714e2b3b09b911eb8', '1cf2161509b511eb8', '2020-10-08 22:56:04', 'b1a97fee09b811eb8', 'Reclamado', 'f0f4a759065e11eb8'),
('76933d5c09ba11eb8', '369b459c09b811eb8', '2020-10-08 23:03:22', 'b1a97fee09b811eb8', 'Reclamado', 'f0f4a759065e11eb8'),
('814759c62f8311eb8', 'e7112f7a1f0611eba', '2020-11-26 01:05:42', 'ad0fe57709b611eb8', 'Ganado', 'f0f4a759065e11eb8'),
('82f7c537594a11ebb', 'a02a8d622d3211eb8', '2021-01-18 05:03:32', 'dbb354be592f11ebb', 'Ganado', '3d7efd1e58fb11ebb'),
('9263fb68594a11ebb', '64ea038a55ed11eba', '2021-01-18 05:03:58', 'dbb354be592f11ebb', 'Ganado', '3d7efd1e58fb11ebb'),
('baf2ca420b6811eb8', '1cf2161509b511eb8', '2020-10-11 02:23:21', '41fd5db60b6811eb8', 'Ganado', '811f0c100b6511eb8'),
('cafad439594a11ebb', '8936219c592511ebb', '2021-01-18 05:05:33', 'dbb354be592f11ebb', 'Ganado', '3d7efd1e58fb11ebb'),
('e025128a594a11ebb', 'a02a8d622d3211eb8', '2021-01-18 05:06:09', 'dbb354be592f11ebb', 'Ganado', '3d7efd1e58fb11ebb'),
('e7b4583b594a11ebb', '8936219c592511ebb', '2021-01-18 05:06:21', 'dbb354be592f11ebb', 'Reclamado', '3d7efd1e58fb11ebb'),
('f110e25709b811eb8', '1cf2161509b511eb8', '2020-10-08 22:52:29', 'ad0fe57709b611eb8', 'Reclamado', 'f0f4a759065e11eb8');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `c_category`
--
ALTER TABLE `c_category`
  ADD PRIMARY KEY (`id_category`),
  ADD UNIQUE KEY `name_unique_category` (`name`) USING BTREE,
  ADD UNIQUE KEY `unique id` (`id_category`);

--
-- Indices de la tabla `r_category_promo`
--
ALTER TABLE `r_category_promo`
  ADD PRIMARY KEY (`id_rcategorypromo`),
  ADD KEY `FK_r_category_promo_t_promo` (`id_promo`),
  ADD KEY `FK_r_category_promo_c_category` (`id_category`);

--
-- Indices de la tabla `r_category_shop`
--
ALTER TABLE `r_category_shop`
  ADD PRIMARY KEY (`id_rcategory`),
  ADD KEY `FK_r_category_shop_t_shop` (`id_shop`),
  ADD KEY `FK_r_category_shop_c_category` (`id_category`);

--
-- Indices de la tabla `r_promo_branch`
--
ALTER TABLE `r_promo_branch`
  ADD PRIMARY KEY (`id_promo_branch`),
  ADD KEY `FK__t_branch` (`id_branch`),
  ADD KEY `FK__t_promo` (`id_promo`);

--
-- Indices de la tabla `r_schedule`
--
ALTER TABLE `r_schedule`
  ADD PRIMARY KEY (`id_schedule`),
  ADD KEY `FK__branch-schedule` (`id_branch`);

--
-- Indices de la tabla `r_shop_broadcaster`
--
ALTER TABLE `r_shop_broadcaster`
  ADD PRIMARY KEY (`id_relation`),
  ADD KEY `FK_r_shop_broadcaster_t_shop` (`id_shop`),
  ADD KEY `FK_r_shop_broadcaster_t_broadcaster` (`id_broadcaster`);

--
-- Indices de la tabla `t_admin`
--
ALTER TABLE `t_admin`
  ADD PRIMARY KEY (`id_admin`),
  ADD UNIQUE KEY `email_unique_admin` (`email`) USING BTREE,
  ADD KEY `FK_t_admin_t_shop` (`id_shop`),
  ADD KEY `FK_t_admin_t_broadcaster` (`id_broadcaster`);

--
-- Indices de la tabla `t_banner`
--
ALTER TABLE `t_banner`
  ADD PRIMARY KEY (`id_banner`),
  ADD KEY `FK__t_shop` (`id_shop`);

--
-- Indices de la tabla `t_branch`
--
ALTER TABLE `t_branch`
  ADD PRIMARY KEY (`id_branch`),
  ADD KEY `FK__shop-branch` (`id_shop`),
  ADD KEY `FK_t_branch_t_states` (`id_state`);

--
-- Indices de la tabla `t_broadcaster`
--
ALTER TABLE `t_broadcaster`
  ADD PRIMARY KEY (`id_broadcaster`),
  ADD UNIQUE KEY `unique_name` (`name`);

--
-- Indices de la tabla `t_channels`
--
ALTER TABLE `t_channels`
  ADD PRIMARY KEY (`id_channel`),
  ADD KEY `FK_t_channels_t_broadcaster` (`id_broadcaster`);

--
-- Indices de la tabla `t_contest`
--
ALTER TABLE `t_contest`
  ADD PRIMARY KEY (`id_contest`),
  ADD KEY `FK__promo-contest` (`id_promo`),
  ADD KEY `FK_t_contest_t_admin` (`id_admin`),
  ADD KEY `FK_t_contest_t_shop` (`id_shop`),
  ADD KEY `FK_t_contest_t_broadcaster` (`id_broadcaster`);

--
-- Indices de la tabla `t_contest_detail`
--
ALTER TABLE `t_contest_detail`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `FK_t_contest_detail_t_contest` (`id_contest`),
  ADD KEY `FK_t_contest_detail_t_user` (`id_user`);

--
-- Indices de la tabla `t_image`
--
ALTER TABLE `t_image`
  ADD PRIMARY KEY (`id_image`),
  ADD KEY `FK__shop-image` (`id_shop`),
  ADD KEY `FK__shop-user` (`id_user`);

--
-- Indices de la tabla `t_messages`
--
ALTER TABLE `t_messages`
  ADD PRIMARY KEY (`id_message`),
  ADD KEY `FK_t_messages_t_channels` (`id_channel`),
  ADD KEY `FK_t_messages_t_user` (`id_user`),
  ADD KEY `FK_t_messages_t_admin` (`id_admin`);

--
-- Indices de la tabla `t_promo`
--
ALTER TABLE `t_promo`
  ADD PRIMARY KEY (`id_promo`),
  ADD KEY `FK_t_promo_t_shop` (`id_shop`);

--
-- Indices de la tabla `t_shop`
--
ALTER TABLE `t_shop`
  ADD PRIMARY KEY (`id_shop`),
  ADD UNIQUE KEY `unique_name` (`name`);

--
-- Indices de la tabla `t_shop_notifications`
--
ALTER TABLE `t_shop_notifications`
  ADD PRIMARY KEY (`id_shop_notification`);

--
-- Indices de la tabla `t_shop_subscription`
--
ALTER TABLE `t_shop_subscription`
  ADD PRIMARY KEY (`id_suscription`);

--
-- Indices de la tabla `t_states`
--
ALTER TABLE `t_states`
  ADD PRIMARY KEY (`id_state`);

--
-- Indices de la tabla `t_user`
--
ALTER TABLE `t_user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `unique_email_user` (`email`) USING BTREE;

--
-- Indices de la tabla `t_winner`
--
ALTER TABLE `t_winner`
  ADD PRIMARY KEY (`id_winner`),
  ADD KEY `FK_t_winner_t_contest` (`id_contest`),
  ADD KEY `FK_t_winner_t_user` (`id_user`),
  ADD KEY `FK_t_winner_t_shop` (`id_shop`),
  ADD KEY `FK_t_winner_t_broadcaster` (`id_broadcaster`);

--
-- Indices de la tabla `t_winner_direct`
--
ALTER TABLE `t_winner_direct`
  ADD PRIMARY KEY (`id_winner`),
  ADD KEY `FK_t_winner_direct_t_user` (`id_user`),
  ADD KEY `FK_t_winner_direct_t_promo` (`id_promo`),
  ADD KEY `FK_t_winner_direct_t_shop` (`id_shop`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `t_shop_notifications`
--
ALTER TABLE `t_shop_notifications`
  MODIFY `id_shop_notification` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT de la tabla `t_shop_subscription`
--
ALTER TABLE `t_shop_subscription`
  MODIFY `id_suscription` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `t_states`
--
ALTER TABLE `t_states`
  MODIFY `id_state` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `r_category_promo`
--
ALTER TABLE `r_category_promo`
  ADD CONSTRAINT `FK_r_category_promo_c_category` FOREIGN KEY (`id_category`) REFERENCES `c_category` (`id_category`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_r_category_promo_t_promo` FOREIGN KEY (`id_promo`) REFERENCES `t_promo` (`id_promo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `r_category_shop`
--
ALTER TABLE `r_category_shop`
  ADD CONSTRAINT `FK_r_category_shop_c_category` FOREIGN KEY (`id_category`) REFERENCES `c_category` (`id_category`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_r_category_shop_t_shop` FOREIGN KEY (`id_shop`) REFERENCES `t_shop` (`id_shop`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `r_promo_branch`
--
ALTER TABLE `r_promo_branch`
  ADD CONSTRAINT `FK__t_branch` FOREIGN KEY (`id_branch`) REFERENCES `t_branch` (`id_branch`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__t_promo` FOREIGN KEY (`id_promo`) REFERENCES `t_promo` (`id_promo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `r_schedule`
--
ALTER TABLE `r_schedule`
  ADD CONSTRAINT `FK__branch-schedule` FOREIGN KEY (`id_branch`) REFERENCES `t_branch` (`id_branch`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `r_shop_broadcaster`
--
ALTER TABLE `r_shop_broadcaster`
  ADD CONSTRAINT `FK_r_shop_broadcaster_t_broadcaster` FOREIGN KEY (`id_broadcaster`) REFERENCES `t_broadcaster` (`id_broadcaster`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_r_shop_broadcaster_t_shop` FOREIGN KEY (`id_shop`) REFERENCES `t_shop` (`id_shop`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `t_admin`
--
ALTER TABLE `t_admin`
  ADD CONSTRAINT `FK_t_admin_t_broadcaster` FOREIGN KEY (`id_broadcaster`) REFERENCES `t_broadcaster` (`id_broadcaster`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_t_admin_t_shop` FOREIGN KEY (`id_shop`) REFERENCES `t_shop` (`id_shop`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `t_banner`
--
ALTER TABLE `t_banner`
  ADD CONSTRAINT `FK__t_shop` FOREIGN KEY (`id_shop`) REFERENCES `t_shop` (`id_shop`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `t_branch`
--
ALTER TABLE `t_branch`
  ADD CONSTRAINT `FK__shop-branch` FOREIGN KEY (`id_shop`) REFERENCES `t_shop` (`id_shop`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_t_branch_t_states` FOREIGN KEY (`id_state`) REFERENCES `t_states` (`id_state`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `t_channels`
--
ALTER TABLE `t_channels`
  ADD CONSTRAINT `FK_t_channels_t_broadcaster` FOREIGN KEY (`id_broadcaster`) REFERENCES `t_broadcaster` (`id_broadcaster`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `t_contest`
--
ALTER TABLE `t_contest`
  ADD CONSTRAINT `FK__promo-contest` FOREIGN KEY (`id_promo`) REFERENCES `t_promo` (`id_promo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_t_contest_t_admin` FOREIGN KEY (`id_admin`) REFERENCES `t_admin` (`id_admin`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_t_contest_t_broadcaster` FOREIGN KEY (`id_broadcaster`) REFERENCES `t_broadcaster` (`id_broadcaster`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_t_contest_t_shop` FOREIGN KEY (`id_shop`) REFERENCES `t_shop` (`id_shop`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `t_contest_detail`
--
ALTER TABLE `t_contest_detail`
  ADD CONSTRAINT `FK_t_contest_detail_t_contest` FOREIGN KEY (`id_contest`) REFERENCES `t_contest` (`id_contest`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_t_contest_detail_t_user` FOREIGN KEY (`id_user`) REFERENCES `t_user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `t_image`
--
ALTER TABLE `t_image`
  ADD CONSTRAINT `FK__shop-image` FOREIGN KEY (`id_shop`) REFERENCES `t_shop` (`id_shop`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__shop-user` FOREIGN KEY (`id_user`) REFERENCES `t_user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `t_messages`
--
ALTER TABLE `t_messages`
  ADD CONSTRAINT `FK_t_messages_t_admin` FOREIGN KEY (`id_admin`) REFERENCES `t_admin` (`id_admin`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_t_messages_t_channels` FOREIGN KEY (`id_channel`) REFERENCES `t_channels` (`id_channel`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_t_messages_t_user` FOREIGN KEY (`id_user`) REFERENCES `t_user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `t_promo`
--
ALTER TABLE `t_promo`
  ADD CONSTRAINT `FK_t_promo_t_shop` FOREIGN KEY (`id_shop`) REFERENCES `t_shop` (`id_shop`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `t_winner`
--
ALTER TABLE `t_winner`
  ADD CONSTRAINT `FK_t_winner_t_broadcaster` FOREIGN KEY (`id_broadcaster`) REFERENCES `t_broadcaster` (`id_broadcaster`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_t_winner_t_contest` FOREIGN KEY (`id_contest`) REFERENCES `t_contest` (`id_contest`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_t_winner_t_shop` FOREIGN KEY (`id_shop`) REFERENCES `t_shop` (`id_shop`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_t_winner_t_user` FOREIGN KEY (`id_user`) REFERENCES `t_user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `t_winner_direct`
--
ALTER TABLE `t_winner_direct`
  ADD CONSTRAINT `FK_t_winner_direct_t_promo` FOREIGN KEY (`id_promo`) REFERENCES `t_promo` (`id_promo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_t_winner_direct_t_shop` FOREIGN KEY (`id_shop`) REFERENCES `t_shop` (`id_shop`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_t_winner_direct_t_user` FOREIGN KEY (`id_user`) REFERENCES `t_user` (`id_user`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
