-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 10-Jul-2023 às 03:42
-- Versão do servidor: 8.0.31
-- versão do PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `produtos`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2023_07_09_213449_create_produtos_table', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

DROP TABLE IF EXISTS `produtos`;
CREATE TABLE IF NOT EXISTS `produtos` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `marca` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` blob NOT NULL,
  `descricao` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tensao` int NOT NULL,
  `preco` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `marca`, `item`, `foto`, `descricao`, `tensao`, `preco`, `created_at`, `updated_at`) VALUES
(1, 'Electrolux', 'Geladeira Frost Free Electrolux 579L 3 Portas', 0x68747470733a2f2f6d2e6d656469612d616d617a6f6e2e636f6d2f696d616765732f492f3431702b687a615666484c2e5f41435f53583532325f2e6a7067, 'Com mais de 500 litros, a geladeira Electrolux DM84X é indicada para casas com cinco pessoas ou mais. Ela faz parte da categoria de geladeiras grandes e tem como capacidade total 579 litros, sendo 391 litros no refrigerador e 188 litros no congelador.', 127, '6120.00', '2023-07-10 01:35:46', '2023-07-10 01:35:46'),
(2, 'Electrolux', 'Refrigerador 454L 2 Portas Frost Free Inverse', 0x68747470733a2f2f6d2e6d656469612d616d617a6f6e2e636f6d2f696d616765732f492f3431694d39747863726d4c2e5f41435f53583637395f2e6a7067, 'A geladeira que está sempre a postos para se adaptar às suas necessidades, deixando tudo muito mais fácil de organizar. Especialmente naqueles dias em que você resolve chamar os amigos para um happy hour surpresa.', 127, '3500.00', '2023-07-10 01:53:18', '2023-07-10 01:53:18'),
(3, 'Brastemp', 'Geladeira Frost Free Brastemp Inverse 2 Portas 443L', 0x68747470733a2f2f6d2e6d656469612d616d617a6f6e2e636f6d2f696d616765732f492f34316645425a466e35744c2e5f5f41435f53593434355f53583334325f514c37305f4d4c325f2e6a7067, 'A Geladeira Brastemp Frost Free Inverse 443 litros cor Inox tem refrigerador em cima e freezer embaixo, deixando os alimentos mais utilizados sempre à mão. Com o Turbo Ice, faça gelo mais rápido sempre que precisar. O modelo conta ainda com Twist Ice Advanced e Espaço Adapt.', 127, '4420.00', '2023-07-10 01:57:02', '2023-07-10 01:57:02'),
(4, 'Brastemp', 'Geladeira Brastemp Frost Free Duplex 375 litros', 0x68747470733a2f2f6d2e6d656469612d616d617a6f6e2e636f6d2f696d616765732f492f3331335136586e555250532e5f41435f53583532325f2e6a7067, 'A Geladeira Brastemp Frost Free Duplex BRM44 375 litros conta com design sofisticado e grande capacidade para armazenar os alimentos. Vem com Painel Eletrônico, compartimento Latas e Long Necks e compartimento Extrafrio.', 127, '2600.00', '2023-07-10 01:59:14', '2023-07-10 01:59:14'),
(5, 'LG', 'Geladeira Smart LG French Door 428 litros. Motor Inverter', 0x68747470733a2f2f6d2e6d656469612d616d617a6f6e2e636f6d2f696d616765732f492f343169385339774653414c2e5f41435f53583637395f2e6a7067, 'Frutas e legumes frescos por mais tempo. DoorCooling+ - Refrigeração até 19% mais rápida e uniforme. 24 horas Refrigeração constante - Controle preciso de temperatura', 127, '17340.00', '2023-07-10 02:03:13', '2023-07-10 02:03:13'),
(6, 'LG', 'Geladeira Smart LG Bottom Freezer Inverter 451L Inox com Nature Fresh', 0x68747470733a2f2f6d2e6d656469612d616d617a6f6e2e636f6d2f696d616765732f492f34314b6c4252354334544c2e5f41435f53583637395f2e6a7067, 'Frutas e legumes frescos por mais tempo. Ideal para quem gosta de viajar nos finais de semana.', 127, '7330.00', '2023-07-10 02:05:14', '2023-07-10 02:05:14'),
(9, 'Electrolux', 'Refrigerador Inverter Top Freezer 431L Platinum', 0x68747470733a2f2f6d2e6d656469612d616d617a6f6e2e636f6d2f696d616765732f492f343175794c312d4439584c2e5f41435f53583637395f2e6a7067, 'São 431 litros para você armazenar alimentos de tamanhos e formatos variados e o maior freezer do segmento com 128 litros capaz de guardar aqueles itens que necessitam de mais refrigeração.', 127, '3295.00', '2023-07-10 06:03:26', '2023-07-10 06:03:26'),
(7, 'Samsung', 'Geladeira Samsung Frost Free Inverse 435 Litros Inox', 0x68747470733a2f2f6d2e6d656469612d616d617a6f6e2e636f6d2f696d616765732f492f34314e6d636b30554f774c2e5f41435f53583637395f2e6a7067, 'Mais economia, durabilidade e conforto com o compressor Digital Inverter. Temperatura perfeita com o Smart Sensor. Portas reversíveis.', 127, '4999.00', '2023-07-10 02:08:20', '2023-07-10 02:08:20'),
(8, 'Samsung', 'Geladeira Samsung RS65R Frost Free Side by Side 3portas com Dispenser de Água e Gelo 601L Inox', 0x68747470733a2f2f6d2e6d656469612d616d617a6f6e2e636f6d2f696d616765732f492f3331646c595a5a4f4a364c2e5f41435f53583637395f2e6a7067, 'A Side by Side RS65 de 3 portas possui 2 portas de geladeira e 1 de freezer. Com essa divisão da geladeira, ela minimiza a perda de ar frio 2 em até 55%, para que você economize energia e mantenha tudo bem organizado. Tecnologia SpaceMax™ Armazene mais alimentos com grandiosos 602L de capacidade.', 127, '12560.00', '2023-07-10 02:09:41', '2023-07-10 02:09:41');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
