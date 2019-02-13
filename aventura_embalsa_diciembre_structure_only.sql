-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 12, 2018 at 09:53 AM
-- Server version: 5.6.35
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aventura_embalsa`
--

-- --------------------------------------------------------

--
-- Table structure for table `actividades`
--

CREATE TABLE `actividades` (
  `id` int(10) UNSIGNED NOT NULL,
  `state` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `volanta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duracion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `largo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `recomendacion` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `precioPublico` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precioProveedor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descuento` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `proveedor_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `actividadespostview`
-- (See below for the actual view)
--
CREATE TABLE `actividadespostview` (
`id` int(10) unsigned
,`title` varchar(255)
,`volanta` varchar(255)
,`descripcion` longtext
,`recomendacion` longtext
,`duracion` varchar(255)
,`largo` varchar(255)
,`state` enum('0','1','2')
,`foto` varchar(255)
,`name` varchar(60)
,`created_at` timestamp
,`updated_at` timestamp
);

-- --------------------------------------------------------

--
-- Table structure for table `actividadPaquete`
--

CREATE TABLE `actividadPaquete` (
  `id` int(10) UNSIGNED NOT NULL,
  `paquete_id` int(10) UNSIGNED NOT NULL,
  `actividad_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `categoryactividadespost`
-- (See below for the actual view)
--
CREATE TABLE `categoryactividadespost` (
`actividades` int(10) unsigned
,`foto` varchar(255)
,`state` enum('0','1','2')
,`title` varchar(255)
,`name` varchar(60)
,`category_id` int(10) unsigned
,`created_at` timestamp
);

-- --------------------------------------------------------

--
-- Table structure for table `eventos`
--

CREATE TABLE `eventos` (
  `id` int(10) UNSIGNED NOT NULL,
  `state` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hora` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lugar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `eventospostview`
-- (See below for the actual view)
--
CREATE TABLE `eventospostview` (
`id` int(10) unsigned
,`title` varchar(255)
,`fecha` varchar(255)
,`hora` varchar(255)
,`precio` varchar(255)
,`lugar` varchar(255)
,`tipo` varchar(255)
,`descripcion` longtext
,`created_at` timestamp
,`updated_at` timestamp
,`foto` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `horas`
--

CREATE TABLE `horas` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `horas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `proyecto_id` int(10) UNSIGNED NOT NULL,
  `tarea_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `actividad_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `imagesEventos`
--

CREATE TABLE `imagesEventos` (
  `id` int(10) UNSIGNED NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `evento_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `imagesInformacion`
--

CREATE TABLE `imagesInformacion` (
  `id` int(10) UNSIGNED NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `informacion_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `informaciones`
--

CREATE TABLE `informaciones` (
  `id` int(10) UNSIGNED NOT NULL,
  `state` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `informacionespost`
-- (See below for the actual view)
--
CREATE TABLE `informacionespost` (
`id` int(10) unsigned
,`title` varchar(255)
,`descripcion` longtext
,`state` enum('0','1','2')
,`name` varchar(60)
,`created_at` timestamp
,`updated_at` timestamp
);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `paquetes`
--

CREATE TABLE `paquetes` (
  `id` int(10) UNSIGNED NOT NULL,
  `state` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `precioCliente` double(8,2) NOT NULL,
  `precioEmpresa` double(8,2) NOT NULL,
  `porcentaje` double(8,2) NOT NULL,
  `descuento` double(8,2) NOT NULL,
  `fechaInicio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fechaTermino` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `proveedores`
--

CREATE TABLE `proveedores` (
  `id` int(10) UNSIGNED NOT NULL,
  `empresa` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `proyectos`
--

CREATE TABLE `proyectos` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `totaldeHoras` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precioTotal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tareas`
--

CREATE TABLE `tareas` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `totaldeHoras` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `proyecto_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('nuevo','member','admin','empresa','ventas') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'nuevo',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure for view `actividadespostview`
--
DROP TABLE IF EXISTS `actividadespostview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`aventura`@`localhost` SQL SECURITY DEFINER VIEW `actividadespostview`  AS  select `actividades`.`id` AS `id`,`actividades`.`title` AS `title`,`actividades`.`volanta` AS `volanta`,`actividades`.`descripcion` AS `descripcion`,`actividades`.`recomendacion` AS `recomendacion`,`actividades`.`duracion` AS `duracion`,`actividades`.`largo` AS `largo`,`actividades`.`state` AS `state`,`images`.`foto` AS `foto`,`categories`.`name` AS `name`,`actividades`.`created_at` AS `created_at`,`actividades`.`updated_at` AS `updated_at` from ((`actividades` join `images`) join `categories`) where ((`actividades`.`state` = '1') and (`categories`.`id` = `actividades`.`category_id`) and (`images`.`actividad_id` = `actividades`.`id`)) order by `actividades`.`updated_at` desc ;

-- --------------------------------------------------------

--
-- Structure for view `categoryactividadespost`
--
DROP TABLE IF EXISTS `categoryactividadespost`;

CREATE ALGORITHM=UNDEFINED DEFINER=`aventura`@`localhost` SQL SECURITY DEFINER VIEW `categoryactividadespost`  AS  select `actividades`.`id` AS `actividades`,`images`.`foto` AS `foto`,`actividades`.`state` AS `state`,`actividades`.`title` AS `title`,`categories`.`name` AS `name`,`categories`.`id` AS `category_id`,`actividades`.`created_at` AS `created_at` from ((`actividades` join `categories`) join `images`) where ((`actividades`.`state` = '1') and (`categories`.`id` = `actividades`.`category_id`) and (`images`.`actividad_id` = `actividades`.`id`)) order by `images`.`actividad_id` desc ;

-- --------------------------------------------------------

--
-- Structure for view `eventospostview`
--
DROP TABLE IF EXISTS `eventospostview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`aventura`@`localhost` SQL SECURITY DEFINER VIEW `eventospostview`  AS  select `eventos`.`id` AS `id`,`eventos`.`title` AS `title`,`eventos`.`fecha` AS `fecha`,`eventos`.`hora` AS `hora`,`eventos`.`precio` AS `precio`,`eventos`.`lugar` AS `lugar`,`eventos`.`tipo` AS `tipo`,`eventos`.`descripcion` AS `descripcion`,`eventos`.`created_at` AS `created_at`,`eventos`.`updated_at` AS `updated_at`,`imagesEventos`.`foto` AS `foto` from (`eventos` join `imagesEventos`) where ((`eventos`.`state` = '1') and (`imagesEventos`.`evento_id` = `eventos`.`id`)) order by `eventos`.`updated_at` desc ;

-- --------------------------------------------------------

--
-- Structure for view `informacionespost`
--
DROP TABLE IF EXISTS `informacionespost`;

CREATE ALGORITHM=UNDEFINED DEFINER=`aventura`@`localhost` SQL SECURITY DEFINER VIEW `informacionespost`  AS  select `informaciones`.`id` AS `id`,`informaciones`.`title` AS `title`,`informaciones`.`descripcion` AS `descripcion`,`informaciones`.`state` AS `state`,`categories`.`name` AS `name`,`informaciones`.`created_at` AS `created_at`,`informaciones`.`updated_at` AS `updated_at` from (`informaciones` join `categories`) where ((`informaciones`.`state` = '1') and (`categories`.`id` = `informaciones`.`category_id`)) order by `informaciones`.`updated_at` desc ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actividades`
--
ALTER TABLE `actividades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `actividades_user_id_foreign` (`user_id`),
  ADD KEY `actividades_category_id_foreign` (`category_id`),
  ADD KEY `actividades_proveedor_id_foreign` (`proveedor_id`);

--
-- Indexes for table `actividadPaquete`
--
ALTER TABLE `actividadPaquete`
  ADD PRIMARY KEY (`id`),
  ADD KEY `actividadpaquete_paquete_id_foreign` (`paquete_id`),
  ADD KEY `actividadpaquete_actividad_id_foreign` (`actividad_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eventos_user_id_foreign` (`user_id`);

--
-- Indexes for table `horas`
--
ALTER TABLE `horas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `horas_user_id_foreign` (`user_id`),
  ADD KEY `horas_proyecto_id_foreign` (`proyecto_id`),
  ADD KEY `horas_tarea_id_foreign` (`tarea_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_actividad_id_foreign` (`actividad_id`);

--
-- Indexes for table `imagesEventos`
--
ALTER TABLE `imagesEventos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `imageseventos_evento_id_foreign` (`evento_id`);

--
-- Indexes for table `imagesInformacion`
--
ALTER TABLE `imagesInformacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `imagesinformacion_informacion_id_foreign` (`informacion_id`);

--
-- Indexes for table `informaciones`
--
ALTER TABLE `informaciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `informaciones_user_id_foreign` (`user_id`),
  ADD KEY `informaciones_category_id_foreign` (`category_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paquetes`
--
ALTER TABLE `paquetes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paquetes_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indexes for table `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `proveedores_email_unique` (`email`),
  ADD UNIQUE KEY `proveedores_telefono_unique` (`telefono`);

--
-- Indexes for table `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tareas`
--
ALTER TABLE `tareas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tareas_user_id_foreign` (`user_id`),
  ADD KEY `tareas_proyecto_id_foreign` (`proyecto_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actividades`
--
ALTER TABLE `actividades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `actividadPaquete`
--
ALTER TABLE `actividadPaquete`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `horas`
--
ALTER TABLE `horas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `imagesEventos`
--
ALTER TABLE `imagesEventos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `imagesInformacion`
--
ALTER TABLE `imagesInformacion`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `informaciones`
--
ALTER TABLE `informaciones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `paquetes`
--
ALTER TABLE `paquetes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `proyectos`
--
ALTER TABLE `proyectos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tareas`
--
ALTER TABLE `tareas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `actividades`
--
ALTER TABLE `actividades`
  ADD CONSTRAINT `actividades_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `actividades_proveedor_id_foreign` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedores` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `actividades_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `actividadPaquete`
--
ALTER TABLE `actividadPaquete`
  ADD CONSTRAINT `actividadpaquete_actividad_id_foreign` FOREIGN KEY (`actividad_id`) REFERENCES `actividades` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `actividadpaquete_paquete_id_foreign` FOREIGN KEY (`paquete_id`) REFERENCES `paquetes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `eventos`
--
ALTER TABLE `eventos`
  ADD CONSTRAINT `eventos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `horas`
--
ALTER TABLE `horas`
  ADD CONSTRAINT `horas_proyecto_id_foreign` FOREIGN KEY (`proyecto_id`) REFERENCES `proyectos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `horas_tarea_id_foreign` FOREIGN KEY (`tarea_id`) REFERENCES `tareas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `horas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_actividad_id_foreign` FOREIGN KEY (`actividad_id`) REFERENCES `actividades` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `imagesEventos`
--
ALTER TABLE `imagesEventos`
  ADD CONSTRAINT `imageseventos_evento_id_foreign` FOREIGN KEY (`evento_id`) REFERENCES `eventos` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `imagesInformacion`
--
ALTER TABLE `imagesInformacion`
  ADD CONSTRAINT `imagesinformacion_informacion_id_foreign` FOREIGN KEY (`informacion_id`) REFERENCES `informaciones` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `informaciones`
--
ALTER TABLE `informaciones`
  ADD CONSTRAINT `informaciones_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `informaciones_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `paquetes`
--
ALTER TABLE `paquetes`
  ADD CONSTRAINT `paquetes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tareas`
--
ALTER TABLE `tareas`
  ADD CONSTRAINT `tareas_proyecto_id_foreign` FOREIGN KEY (`proyecto_id`) REFERENCES `proyectos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tareas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
