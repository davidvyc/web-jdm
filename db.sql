-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jun 16, 2024 at 09:46 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vycudilikprojekt`
--

-- --------------------------------------------------------

--
-- Table structure for table `auto`
--

CREATE TABLE `auto` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Název` varchar(255) NOT NULL,
  `Popis` text NOT NULL,
  `Cena` int(11) NOT NULL,
  `Značka_id` bigint(20) UNSIGNED NOT NULL,
  `RokVýroby_id` bigint(20) UNSIGNED NOT NULL,
  `Náhon_id` bigint(20) UNSIGNED NOT NULL,
  `DruhPaliva_id` bigint(20) UNSIGNED NOT NULL,
  `TypAuta_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auto`
--

INSERT INTO `auto` (`id`, `Název`, `Popis`, `Cena`, `Značka_id`, `RokVýroby_id`, `Náhon_id`, `DruhPaliva_id`, `TypAuta_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Nissan Skyline GT-R R34', 'Dvoudveřový sportovní vůz , motor vpředu a trvalý pohon na zadní kola. Řadový šestiválec s rozvodem DOHC a objemem 2568 cm³, vrtání 86 mm a zdvih 73,7 mm, komprese 8,5, čtyřventil, přeplňování dvěma turbodmychadly, výkon 206 kW (280 koní) při 6800 ot/min, točivý moment 392 Nm při 4400 ot/min. Šestistupňová převodovka, rozvor 2665 mm, vnější rozměry 4600x1785x1360 mm, hmotnost 1540 kg, maximální rychlost 250 km/h, zrychlení na stovku za 4,9 s, 0-400 m za 13,1 s. Nízké hmotnosti bylo dosaženo hojným použitím karbonových dílů, odlehčeny byly dokonce i reproduktory. Výkonný vůz pro japonský trh, dodávalo se pouze provedení s volantem vpravo. Vůz sloužil také jako základ pro další úpravy na závodní automobil. Generace označená R34 se vyráběla v letech 1998 až 2002. Některé prameny uváděly, že skutečný výkon motoru byl až 328 koní. Automobil se proslavil například ve dvou dílech akčního filmu Rychle a zběsile.', 3000000, 2, 99, 1, 1, 1, NULL, NULL, NULL),
(2, 'Subaru BRZ', 'Fastback kupé 2+2 má atmosféricky plněný motor boxer , konfiguraci motoru s motorem vpředu, pohon zadních kol , vyvážení hmotnosti vpředu/vzadu 53/47 a nízké těžiště; byl inspirován dřívějším modelem AE86 od Toyoty, malou, lehkou variantou Corolly s motorem vpředu a zadním pohonem, která je široce oblíbená pro showroom Stock , Group A , Group N , Rally , Club a driftové závody.\r\n', 650000, 6, 120, 1, 1, 8, NULL, NULL, NULL),
(3, 'Nissan Silvia S15', 'Sedmá generace se vyráběla od roku 1999 do roku 2002 . Vznikla v Tokiu.\r\n\r\nSilvia S15 byla nejčastěji vybavena motorem SR20DET o výkonu 250 koňských sil (184 kW). Alternativní motor SR20SE (bez turba) dosahoval 165 koňských sil (121 kW). Vůz disponoval 5 nebo 6stupňovou manuální převodovkou, nebo 4stupňovým automatem.\r\n\r\nZvnějšku i zevnitř vypadala Silvie S15 dostatečně agresivně, koncepce nové karoserie odpovídala současným trendům v automobilovém designu.\r\n\r\nSilvia S15 se prodávala pouze v Japonsku, Austrálii a na Novém Zélandu. V poslední dvou jmenovaných zemích se automobil prodával pod názvem Nissan SX240, přičemž v Austrálii byl dostupný pouze ve verzi s turbo motorem. Díky šedému exportu se ale vůz rozšířil ve většině zemí světa.\r\n', 800000, 2, 100, 1, 1, 8, NULL, NULL, NULL),
(4, 'Mitsubishi Lancer EVO V', 'V roce 1997 vznikla pro Mistrovství světa v rallye nová třída World Rally Car, a zatímco tyto automobily musely dodržovat Group A standardy, neměly dodržovat homologační předpisy. Mitsubishi přepracovalo Lancer Evolution IV s ohledem na tyto skutečnosti a představil Evolution V v roce 1998.\r\n', 1200000, 7, 106, 1, 1, 1, NULL, NULL, NULL),
(5, 'Mazda RX-7 3rd-Gen', 'Třetí generace se vyráběla od roku 1991 do roku 2002. Nově byl použit sekvenční twin turbo systém. Při normální jízdě je v činnosti pouze první turbo, zatímco po překročení 4000-4500 rpm se plynule přidá i druhé. Toto řešení je bohužel vykoupeno nižší spolehlivostí. Při zvyšování výkonu proto majitelé třetí generace obvykle jdou cestou přestavby na single turbo. V roce 1999 motor RX7 dosáhl výkonového stropu 276 HP, který domácí automobilky nesměly překročit. Třetí generace získala respekt především díky své dobré ovladatelnosti na limitu - velice nízké celkové těžiště, perfektní rozložení váhy 50:50 a \"FMR layout\" (těžiště motoru za přední nápravou, zadní náhon).\r\n', 1150000, 3, 103, 1, 1, 8, NULL, NULL, NULL),
(6, 'Toyota Supra MK4', 'V roce 1996 se pro modelový rok 1997 vrátila manuální převodovka pro turbomotor spolu s přepracováním zadních světel, světlometů, předního obložení, leštěných kol a dalších menších změn, jako je design rádia a volantu. Každý Supras měl odznak označující „Limited Edition 15th Anniversary“. Všechny modely s turbodmychadlem byly standardně vybaveny zadním spoilerem.\r\n', 1100000, 1, 97, 1, 1, 8, NULL, NULL, NULL),
(7, 'Honda NSX ', 'Honda NSX je sportovní automobil (v Severní Americe prodávaný pod názvem Acura NSX), který byl určen především pro americký trh, kde byla tato Honda dost úspěšná a oblíbená. Díky výkonnému motoru a zadnímu pohonu kol poskytovala skutečné sportovní zážitky. V Česku je tento model málokdy k vidění. K dispozici byla také verze s označením NSX-T s odnímatelným střešním panelem. Na finálním nastavení vozu se podílel sám Ayrton Senna.\r\n', 3500000, 4, 96, 1, 1, 8, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `druhpaliva`
--

CREATE TABLE `druhpaliva` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Palivo` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `druhpaliva`
--

INSERT INTO `druhpaliva` (`id`, `Palivo`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Benzín', NULL, NULL, NULL),
(2, 'Nafta', NULL, NULL, NULL),
(3, 'Elektřina', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_05_31_092944_create_vyrobce_letadla_table', 1),
(6, '2024_06_03_063756_create_sessions_table', 1),
(7, '2024_06_16_175506_create_rokvýroby_table', 1),
(8, '2024_06_16_175526_create_typauta_table', 1),
(9, '2024_06_16_175539_create_značka_table', 1),
(10, '2024_06_16_175601_create_druhpaliva_table', 1),
(11, '2024_06_16_175620_create_car_table', 1),
(12, '2024_06_16_175621_create_obrázek_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `náhon`
--

CREATE TABLE `náhon` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Pohon` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `náhon`
--

INSERT INTO `náhon` (`id`, `Pohon`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Zadní náhon', NULL, NULL, NULL),
(2, 'Přední náhon', NULL, NULL, NULL),
(3, '4x4', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `obrázek`
--

CREATE TABLE `obrázek` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Název` varchar(255) NOT NULL,
  `Auta_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `obrázek`
--

INSERT INTO `obrázek` (`id`, `Název`, `Auta_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Nissan Skyline GT-R R34.png', 1, NULL, NULL, NULL),
(2, 'Subaru BRZ.png', 2, NULL, NULL, NULL),
(3, 'Nissan Silvia S15.png', 3, NULL, NULL, NULL),
(4, 'Mitsubishi Lancer EVO V.png', 4, NULL, NULL, NULL),
(5, 'Mazda RX-7 3rd-Gen.png', 5, NULL, NULL, NULL),
(6, 'Toyota Supra MK4.png', 6, NULL, NULL, NULL),
(7, 'Honda NSX.png', 7, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rokvýroby`
--

CREATE TABLE `rokvýroby` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Rok` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rokvýroby`
--

INSERT INTO `rokvýroby` (`id`, `Rok`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1900, NULL, NULL, NULL),
(2, 1901, NULL, NULL, NULL),
(3, 1902, NULL, NULL, NULL),
(4, 1903, NULL, NULL, NULL),
(5, 1904, NULL, NULL, NULL),
(6, 1905, NULL, NULL, NULL),
(7, 1906, NULL, NULL, NULL),
(8, 1907, NULL, NULL, NULL),
(9, 1908, NULL, NULL, NULL),
(10, 1909, NULL, NULL, NULL),
(11, 1910, NULL, NULL, NULL),
(12, 1911, NULL, NULL, NULL),
(13, 1912, NULL, NULL, NULL),
(14, 1913, NULL, NULL, NULL),
(15, 1914, NULL, NULL, NULL),
(16, 1915, NULL, NULL, NULL),
(17, 1916, NULL, NULL, NULL),
(18, 1917, NULL, NULL, NULL),
(19, 1918, NULL, NULL, NULL),
(20, 1919, NULL, NULL, NULL),
(21, 1920, NULL, NULL, NULL),
(22, 1921, NULL, NULL, NULL),
(23, 1922, NULL, NULL, NULL),
(24, 1923, NULL, NULL, NULL),
(25, 1924, NULL, NULL, NULL),
(26, 1925, NULL, NULL, NULL),
(27, 1926, NULL, NULL, NULL),
(28, 1927, NULL, NULL, NULL),
(29, 1928, NULL, NULL, NULL),
(30, 1929, NULL, NULL, NULL),
(31, 1930, NULL, NULL, NULL),
(32, 1931, NULL, NULL, NULL),
(33, 1932, NULL, NULL, NULL),
(34, 1933, NULL, NULL, NULL),
(35, 1934, NULL, NULL, NULL),
(36, 1935, NULL, NULL, NULL),
(37, 1936, NULL, NULL, NULL),
(38, 1937, NULL, NULL, NULL),
(39, 1938, NULL, NULL, NULL),
(40, 1939, NULL, NULL, NULL),
(41, 1940, NULL, NULL, NULL),
(42, 1941, NULL, NULL, NULL),
(43, 1942, NULL, NULL, NULL),
(44, 1943, NULL, NULL, NULL),
(45, 1944, NULL, NULL, NULL),
(46, 1945, NULL, NULL, NULL),
(47, 1946, NULL, NULL, NULL),
(48, 1947, NULL, NULL, NULL),
(49, 1948, NULL, NULL, NULL),
(50, 1949, NULL, NULL, NULL),
(51, 1950, NULL, NULL, NULL),
(52, 1951, NULL, NULL, NULL),
(53, 1952, NULL, NULL, NULL),
(54, 1953, NULL, NULL, NULL),
(55, 1954, NULL, NULL, NULL),
(56, 1955, NULL, NULL, NULL),
(57, 1956, NULL, NULL, NULL),
(58, 1957, NULL, NULL, NULL),
(59, 1958, NULL, NULL, NULL),
(60, 1959, NULL, NULL, NULL),
(61, 1960, NULL, NULL, NULL),
(62, 1961, NULL, NULL, NULL),
(63, 1962, NULL, NULL, NULL),
(64, 1963, NULL, NULL, NULL),
(65, 1964, NULL, NULL, NULL),
(66, 1965, NULL, NULL, NULL),
(67, 1966, NULL, NULL, NULL),
(68, 1967, NULL, NULL, NULL),
(69, 1968, NULL, NULL, NULL),
(70, 1969, NULL, NULL, NULL),
(71, 1970, NULL, NULL, NULL),
(72, 1971, NULL, NULL, NULL),
(73, 1972, NULL, NULL, NULL),
(74, 1973, NULL, NULL, NULL),
(75, 1974, NULL, NULL, NULL),
(76, 1975, NULL, NULL, NULL),
(77, 1976, NULL, NULL, NULL),
(78, 1977, NULL, NULL, NULL),
(79, 1978, NULL, NULL, NULL),
(80, 1979, NULL, NULL, NULL),
(81, 1980, NULL, NULL, NULL),
(82, 1981, NULL, NULL, NULL),
(83, 1982, NULL, NULL, NULL),
(84, 1983, NULL, NULL, NULL),
(85, 1984, NULL, NULL, NULL),
(86, 1985, NULL, NULL, NULL),
(87, 1986, NULL, NULL, NULL),
(88, 1987, NULL, NULL, NULL),
(89, 1988, NULL, NULL, NULL),
(90, 1989, NULL, NULL, NULL),
(91, 1990, NULL, NULL, NULL),
(92, 1991, NULL, NULL, NULL),
(93, 1992, NULL, NULL, NULL),
(94, 1993, NULL, NULL, NULL),
(95, 1994, NULL, NULL, NULL),
(96, 1995, NULL, NULL, NULL),
(97, 1996, NULL, NULL, NULL),
(98, 1997, NULL, NULL, NULL),
(99, 1998, NULL, NULL, NULL),
(100, 1999, NULL, NULL, NULL),
(101, 2000, NULL, NULL, NULL),
(102, 2001, NULL, NULL, NULL),
(103, 2002, NULL, NULL, NULL),
(104, 2003, NULL, NULL, NULL),
(105, 2004, NULL, NULL, NULL),
(106, 2005, NULL, NULL, NULL),
(107, 2006, NULL, NULL, NULL),
(108, 2007, NULL, NULL, NULL),
(109, 2008, NULL, NULL, NULL),
(110, 2009, NULL, NULL, NULL),
(111, 2010, NULL, NULL, NULL),
(112, 2011, NULL, NULL, NULL),
(113, 2012, NULL, NULL, NULL),
(114, 2013, NULL, NULL, NULL),
(115, 2014, NULL, NULL, NULL),
(116, 2015, NULL, NULL, NULL),
(117, 2016, NULL, NULL, NULL),
(118, 2017, NULL, NULL, NULL),
(119, 2018, NULL, NULL, NULL),
(120, 2019, NULL, NULL, NULL),
(121, 2020, NULL, NULL, NULL),
(122, 2021, NULL, NULL, NULL),
(123, 2022, NULL, NULL, NULL),
(124, 2023, NULL, NULL, NULL),
(125, 2024, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('MPPJKKLze0eF6kXDBwGhjZiyXHi4BBihgMShdzi8', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiQzlXYzRJOUZDYTRTRTY1SlVjVlFBN282ZjFVazFKRkFxdzlmNklNcSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hdXRvIjt9czozOiJ1cmwiO2E6MDp7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1718567111);

-- --------------------------------------------------------

--
-- Table structure for table `typauta`
--

CREATE TABLE `typauta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Název` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `typauta`
--

INSERT INTO `typauta` (`id`, `Název`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Sedan', NULL, NULL, NULL),
(2, 'Liftback', NULL, NULL, NULL),
(3, 'Hatchback', NULL, NULL, NULL),
(4, 'Kombi', NULL, NULL, NULL),
(5, 'SUV', NULL, NULL, NULL),
(6, 'MPV', NULL, NULL, NULL),
(7, 'Crossover', NULL, NULL, NULL),
(8, 'Kupé', NULL, NULL, NULL),
(9, 'Limuzína', NULL, NULL, NULL),
(10, 'Roadster', NULL, NULL, NULL),
(11, 'Kabriolet', NULL, NULL, NULL),
(12, 'Offroad', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'test', 'test@test.com', NULL, '$2y$10$qt3ZTyUb0cEVnRs9F34jF.mTQ6Y0b8F72OPURz3EjnuXFNCxqrHiS', 'AF2Zz4nOdeHSH34LjgiLmrmnYkvM4NNZXgsxfSgVhtEgtoZ4ZAJ3T3EQrWRV', '2024-06-16 16:19:06', '2024-06-16 16:19:06');

-- --------------------------------------------------------

--
-- Table structure for table `značka`
--

CREATE TABLE `značka` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Název` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `značka`
--

INSERT INTO `značka` (`id`, `Název`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Toyota', NULL, NULL, NULL),
(2, 'Nissan', NULL, NULL, NULL),
(3, 'Mazda', NULL, NULL, NULL),
(4, 'Honda', NULL, NULL, NULL),
(5, 'Suzuki', NULL, NULL, NULL),
(6, 'Subaru', NULL, NULL, NULL),
(7, 'Mitsubishi', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auto`
--
ALTER TABLE `auto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auto_značka_id_foreign` (`Značka_id`),
  ADD KEY `auto_rokvýroby_id_foreign` (`RokVýroby_id`),
  ADD KEY `auto_náhon_id_foreign` (`Náhon_id`),
  ADD KEY `auto_druhpaliva_id_foreign` (`DruhPaliva_id`),
  ADD KEY `auto_typauta_id_foreign` (`TypAuta_id`);

--
-- Indexes for table `druhpaliva`
--
ALTER TABLE `druhpaliva`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `náhon`
--
ALTER TABLE `náhon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `obrázek`
--
ALTER TABLE `obrázek`
  ADD PRIMARY KEY (`id`),
  ADD KEY `obrázek_auta_id_foreign` (`Auta_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `rokvýroby`
--
ALTER TABLE `rokvýroby`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `typauta`
--
ALTER TABLE `typauta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `značka`
--
ALTER TABLE `značka`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auto`
--
ALTER TABLE `auto`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `druhpaliva`
--
ALTER TABLE `druhpaliva`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `náhon`
--
ALTER TABLE `náhon`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `obrázek`
--
ALTER TABLE `obrázek`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rokvýroby`
--
ALTER TABLE `rokvýroby`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `typauta`
--
ALTER TABLE `typauta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `značka`
--
ALTER TABLE `značka`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auto`
--
ALTER TABLE `auto`
  ADD CONSTRAINT `auto_druhpaliva_id_foreign` FOREIGN KEY (`DruhPaliva_id`) REFERENCES `druhpaliva` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auto_náhon_id_foreign` FOREIGN KEY (`Náhon_id`) REFERENCES `náhon` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auto_rokvýroby_id_foreign` FOREIGN KEY (`RokVýroby_id`) REFERENCES `rokvýroby` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auto_typauta_id_foreign` FOREIGN KEY (`TypAuta_id`) REFERENCES `typauta` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auto_značka_id_foreign` FOREIGN KEY (`Značka_id`) REFERENCES `značka` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `obrázek`
--
ALTER TABLE `obrázek`
  ADD CONSTRAINT `obrázek_auta_id_foreign` FOREIGN KEY (`Auta_id`) REFERENCES `auto` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
