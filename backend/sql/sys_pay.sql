-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 185.175.46.104:3306
-- Время создания: Авг 21 2021 г., 17:06
-- Версия сервера: 8.0.23
-- Версия PHP: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `intofreedom`
--

-- --------------------------------------------------------

--
-- Структура таблицы `sys_pay`
--

CREATE TABLE `sys_pay` (
  `pay_id` int NOT NULL,
  `product_id` int NOT NULL DEFAULT '0',
  `partner_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `promo_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_status` tinyint(1) NOT NULL,
  `pay_price` int NOT NULL,
  `pay_currency` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'RUB',
  `pay_bank_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_source` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_source_trust` tinyint(1) NOT NULL DEFAULT '0',
  `pay_advertisement_id` int NOT NULL DEFAULT '0',
  `pay_advertisement_source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_attr_common` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_attr_ref_from_common` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `pay_attr_ref_to_common` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `pay_attr_record_id_common` int NOT NULL DEFAULT '0',
  `pay_attr_record_id_out_common` int NOT NULL DEFAULT '0',
  `pay_attr_creator_class_common` tinyint(1) NOT NULL DEFAULT '0',
  `pay_attr` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_attr_ref_from` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `pay_attr_ref_to` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `pay_attr_record_id` int NOT NULL DEFAULT '0',
  `pay_attr_record_id_out` int NOT NULL DEFAULT '0',
  `pay_attr_creator_class` tinyint(1) NOT NULL DEFAULT '0',
  `pay_code` tinyint(1) NOT NULL DEFAULT '0',
  `pay_opportunity` tinyint(1) NOT NULL DEFAULT '1',
  `pay_first` tinyint(1) NOT NULL DEFAULT '0',
  `pay_in_report` tinyint(1) NOT NULL DEFAULT '1',
  `pay_attr_checked` tinyint(1) NOT NULL DEFAULT '0',
  `pay_creation_stamp` int NOT NULL,
  `pay_site` tinyint(1) NOT NULL DEFAULT '1',
  `liqpay_call` tinyint(1) NOT NULL DEFAULT '0',
  `pay_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_matherial` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_source` tinyint(1) NOT NULL DEFAULT '0',
  `pay_count` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `sys_pay`
--
ALTER TABLE `sys_pay`
  ADD PRIMARY KEY (`pay_id`),
  ADD KEY `pay_status` (`pay_status`),
  ADD KEY `email` (`email`(191));

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `sys_pay`
--
ALTER TABLE `sys_pay`
  MODIFY `pay_id` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
