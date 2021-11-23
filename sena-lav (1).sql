-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-10-2021 a las 13:22:58
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sena-lav`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `elements`
--

CREATE TABLE `elements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Name_Element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Type_Element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Qr` bigint(20) NOT NULL,
  `Observations` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `elements`
--

INSERT INTO `elements` (`id`, `Name_Element`, `Type_Element`, `Qr`, `Observations`, `created_at`, `updated_at`) VALUES
(2, 'COMPUTADOR', 'Devolutivo', 10055464, 'PERFECTO', NULL, NULL),
(3, 'TABLET', 'Devolutivo', 452044887, 'TABLET EN PERFECTO ESTADO', NULL, NULL),
(52, 'CARNET', 'Devolutivo', 444687868, 'ENSAYO', NULL, NULL),
(56, 'COMPUTADOR', 'Consumo', 4456668884, 'Computador en perfecto estado.', NULL, NULL),
(57, 'MOTO', 'Consumo', 416546578, 'Moto en perfecto estado', NULL, NULL),
(58, 'BICICLETA', 'Devolutivo', 4446688, 'Bicicleta en perfecto estado.', NULL, NULL),
(59, 'AUDIFONOS', 'Devolutivo', 45461215, 'Perfecto estado', NULL, NULL),
(65, 'TELEFONO', 'Devolutivo', 45558799, 'Motorola MotoG6', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_10_09_023432_create_elements_table', 2),
(6, '2021_10_11_171829_create_qrs_table', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `qrs`
--

CREATE TABLE `qrs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Qr` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `qrs`
--

INSERT INTO `qrs` (`id`, `Qr`, `created_at`, `updated_at`) VALUES
(1, '154566887769', NULL, NULL),
(3, '1545668877691', NULL, NULL),
(4, '15456688776912', NULL, NULL),
(6, '1545668877693', NULL, NULL),
(7, '15456688776933', NULL, NULL),
(8, '143246548', NULL, NULL),
(9, '1423465', NULL, NULL),
(10, '12345', NULL, NULL),
(11, '1234543', NULL, NULL),
(13, '1545668877677', NULL, NULL),
(15, '154566887769222', NULL, NULL),
(29, '123456', NULL, NULL),
(30, '45554887', NULL, NULL),
(31, '10055464', NULL, NULL),
(32, '11111111', NULL, NULL),
(33, '2222222222', NULL, NULL),
(34, '44444', NULL, NULL),
(35, '11111', NULL, NULL),
(36, '1233254', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'Daniel Mendez Ospina', 'daniel1@gmail.com', NULL, '$2y$10$jpuW7MOsaJpO2TU8ExDXZuOC7/o0yMUezULQU5HTg81YKOIAZgKuS', NULL, '2021-10-10 22:28:20', '2021-10-14 08:52:29'),
(9, 'Juan Miguel Castrillón', 'monocuco@gmail.com', NULL, '$2y$10$xfQEtwQrCufS9DCtAPVUo.9QUjLZoianv87BAuiEfF2eI3eGV7crG', NULL, '2021-10-11 02:33:20', '2021-10-11 02:55:35'),
(10, 'Daniel Mendez Ospina', 'daniel2@gmail.com', NULL, '$2y$10$QV4v3jbh3qhckxNwRu63COVhyYxRlWpOYyrwyOMpeRMCv5w2DaZHu', NULL, '2021-10-11 07:09:35', '2021-10-11 22:06:17'),
(18, 'Camilo Castrillon', 'camilo2@gmail.com', NULL, '$2y$10$mOm6uby.ryfKQ6kAWhvuqepwTWLTaf0LH2dtuAhNwHluc0dm1vfxC', NULL, '2021-10-14 08:45:15', '2021-10-14 08:46:55');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `elements`
--
ALTER TABLE `elements`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `qrs`
--
ALTER TABLE `qrs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `qrs_qr_unique` (`Qr`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `elements`
--
ALTER TABLE `elements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `qrs`
--
ALTER TABLE `qrs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
