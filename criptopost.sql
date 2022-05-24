-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 24 2022 г., 09:48
-- Версия сервера: 8.0.24
-- Версия PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `criptopost`
--

-- --------------------------------------------------------

--
-- Структура таблицы `banners_tb`
--

CREATE TABLE `banners_tb` (
  `id` bigint UNSIGNED NOT NULL,
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `place` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `banners_tb`
--

INSERT INTO `banners_tb` (`id`, `image_url`, `image_path`, `place`, `created_at`, `updated_at`) VALUES
(1, 'https://fb.com', 'http://criptopost.loc/storage/banners/8EGISQh7uFXuyMD7WrrTItJc1Yym1bBnnbQl5Gaj.jpg', 'top', '2022-05-23 04:09:47', '2022-05-23 04:09:47'),
(2, 'https://fb.com', 'http://criptopost.loc/storage/banners/RIoNOgqmxgYNRLZd39fwY2IuxZAg09deuiackKZD.png', 'bottom', '2022-05-23 04:18:09', '2022-05-23 04:18:09'),
(3, 'https://fbddd.com', 'http://criptopost.loc/storage/banners/7W2VdJKKAKJ9DhBaBV2dIEwEXoeuGqY50AwN6B25.jpg', 'right', '2022-05-23 04:18:33', '2022-05-23 04:18:33');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2022_05_22_160155_news_tb', 1),
(3, '2022_05_23_075826_banners_tb', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `news_tb`
--

CREATE TABLE `news_tb` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `news_tb`
--

INSERT INTO `news_tb` (`id`, `title`, `image_url`, `text`, `position`, `created_at`, `updated_at`) VALUES
(2, 'TestBitcoin targets record 8th weekly red candle while BTC price limits weekend losses', 'https://cnews24.ru/uploads/95e/95ef6086b4cb9981e164097c1fa1475a05ba68c0.jpg', 'Bitcoin (BTC) gave bears little joy over the weekend as the May 22 weekly close looked set to revolve around $30,000.', 1, '2022-04-22 12:29:42', '2022-05-22 12:29:42'),
(3, 'Test', 'https://cnews24.ru/uploads/95e/95ef6086b4cb9981e164097c1fa1475a05ba68c0.jpg', 'Test Text', 0, '2022-05-22 13:08:15', '2022-05-22 13:08:15'),
(4, 'Test', 'https://cnews24.ru/uploads/95e/95ef6086b4cb9981e164097c1fa1475a05ba68c0.jpg', 'Test Text', 0, '2022-05-22 14:12:51', '2022-05-22 14:12:51'),
(5, 'Test', 'https://cnews24.ru/uploads/95e/95ef6086b4cb9981e164097c1fa1475a05ba68c0.jpg', 'Test Text', 0, '2022-05-22 14:12:53', '2022-05-22 14:12:53'),
(6, 'Test', 'https://cnews24.ru/uploads/95e/95ef6086b4cb9981e164097c1fa1475a05ba68c0.jpg', 'Test Text', 0, '2022-05-22 14:12:54', '2022-05-22 14:12:54'),
(7, 'Test', 'https://cnews24.ru/uploads/95e/95ef6086b4cb9981e164097c1fa1475a05ba68c0.jpg', 'Test Text', 0, '2022-05-22 14:12:54', '2022-05-22 14:12:54'),
(8, 'Test 2222', 'https://cnews24.ru/uploads/95e/95ef6086b4cb9981e164097c1fa1475a05ba68c0.jpg', 'Test Text', 0, '2022-05-22 14:12:54', '2022-05-22 14:12:54');

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `banners_tb`
--
ALTER TABLE `banners_tb`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news_tb`
--
ALTER TABLE `news_tb`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`(191),`tokenable_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `banners_tb`
--
ALTER TABLE `banners_tb`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `news_tb`
--
ALTER TABLE `news_tb`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
