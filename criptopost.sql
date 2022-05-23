-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 23 2022 г., 17:30
-- Версия сервера: 5.5.67-MariaDB
-- Версия PHP: 7.3.17

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
  `id` bigint(20) UNSIGNED NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `place` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `banners_tb`
--

INSERT INTO `banners_tb` (`id`, `image_url`, `image_path`, `place`, `created_at`, `updated_at`) VALUES
(1, 'https://fb.com', '/images/test', 'top', '2022-05-23 04:09:47', '2022-05-23 04:09:47'),
(2, 'https://fb.com', '/images/test', 'bottom', '2022-05-23 04:18:09', '2022-05-23 04:18:09'),
(3, 'https://fb.com', '/images/test', 'right', '2022-05-23 04:18:33', '2022-05-23 04:18:33');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
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
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
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
(8, 'Test 2222', 'https://cnews24.ru/uploads/95e/95ef6086b4cb9981e164097c1fa1475a05ba68c0.jpg', 'Test Text', 0, '2022-05-22 14:12:54', '2022-05-22 14:12:54'),
(9, 'Test', 'https://cnews24.ru/uploads/95e/95ef6086b4cb9981e164097c1fa1475a05ba68c0.jpg', 'Test Text', 0, '2022-05-22 14:12:55', '2022-05-22 14:12:55'),
(10, 'Test', 'https://cnews24.ru/uploads/95e/95ef6086b4cb9981e164097c1fa1475a05ba68c0.jpg', 'Test Text', 0, '2022-05-22 14:12:55', '2022-05-22 14:12:55'),
(11, 'test', 'https://cnews24.ru/uploads/95e/95ef6086b4cb9981e164097c1fa1475a05ba68c0.jpg', 'test tex', 0, '2022-05-23 09:26:49', '2022-05-23 09:26:49'),
(12, 'test', 'https://cnews24.ru/uploads/95e/95ef6086b4cb9981e164097c1fa1475a05ba68c0.jpg', '&lt;div class=&quot;ql-editor dx-htmleditor-content&quot; data-gramm=&quot;false&quot; tabindex=&quot;0&quot; data-lt-tmp-id=&quot;lt-133377&quot; spellcheck=&quot;false&quot;&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;strong style=&quot;font-size: 36pt;&quot;&gt;fggrgrgrg&lt;/strong&gt;&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;ql-clipboard&quot; tabindex=&quot;-1&quot;&gt;&lt;/div&gt;&lt;div class=&quot;dx-resize-frame dx-resizable&quot; style=&quot;display: none;&quot;&gt;&lt;div class=&quot;dx-resizable-handle dx-resizable-handle-top&quot;&gt;&lt;/div&gt;&lt;div class=&quot;dx-resizable-handle dx-resizable-handle-bottom&quot;&gt;&lt;/div&gt;&lt;div class=&quot;dx-resizable-handle dx-resizable-handle-left&quot;&gt;&lt;/div&gt;&lt;div class=&quot;dx-resizable-handle dx-resizable-handle-right&quot;&gt;&lt;/div&gt;&lt;div class=&quot;dx-resizable-handle dx-resizable-handle-corner-bottom-right&quot;&gt;&lt;/div&gt;&lt;div class=&quot;dx-resizable-handle dx-resizable-handle-corner-bottom-left&quot;&gt;&lt;/div&gt;&lt;div class=&quot;dx-resizable-handle dx-resizable-handle-corner-top-right&quot;&gt;&lt;/div&gt;&lt;div class=&quot;dx-resizable-handle dx-resizable-handle-corner-top-left&quot;&gt;&lt;/div&gt;&lt;/div&gt;', 0, '2022-05-23 09:27:01', '2022-05-23 09:27:01'),
(13, 'Hello word', 'https://cnews24.ru/uploads/95e/95ef6086b4cb9981e164097c1fa1475a05ba68c0.jpg', '&lt;div class=&quot;ql-editor dx-htmleditor-content&quot; data-gramm=&quot;false&quot; tabindex=&quot;0&quot; data-lt-tmp-id=&quot;lt-607344&quot; spellcheck=&quot;false&quot;&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;strong style=&quot;font-size: 36pt;&quot;&gt;&lt;em&gt;Hello Word&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;ql-clipboard&quot; tabindex=&quot;-1&quot;&gt;&lt;/div&gt;&lt;div class=&quot;dx-resize-frame dx-resizable&quot; style=&quot;display: none;&quot;&gt;&lt;div class=&quot;dx-resizable-handle dx-resizable-handle-top&quot;&gt;&lt;/div&gt;&lt;div class=&quot;dx-resizable-handle dx-resizable-handle-bottom&quot;&gt;&lt;/div&gt;&lt;div class=&quot;dx-resizable-handle dx-resizable-handle-left&quot;&gt;&lt;/div&gt;&lt;div class=&quot;dx-resizable-handle dx-resizable-handle-right&quot;&gt;&lt;/div&gt;&lt;div class=&quot;dx-resizable-handle dx-resizable-handle-corner-bottom-right&quot;&gt;&lt;/div&gt;&lt;div class=&quot;dx-resizable-handle dx-resizable-handle-corner-bottom-left&quot;&gt;&lt;/div&gt;&lt;div class=&quot;dx-resizable-handle dx-resizable-handle-corner-top-right&quot;&gt;&lt;/div&gt;&lt;div class=&quot;dx-resizable-handle dx-resizable-handle-corner-top-left&quot;&gt;&lt;/div&gt;&lt;/div&gt;', 0, '2022-05-23 09:28:14', '2022-05-23 09:28:14'),
(14, 'Test NAme', 'https://cnews24.ru/uploads/95e/95ef6086b4cb9981e164097c1fa1475a05ba68c0.jpg', '&lt;div class=&quot;ql-editor dx-htmleditor-content&quot; data-gramm=&quot;false&quot; tabindex=&quot;0&quot; data-lt-tmp-id=&quot;lt-560889&quot; spellcheck=&quot;false&quot;&gt;&lt;p&gt;&lt;strong style=&quot;font-size: 18pt;&quot;&gt;Hello Armenia&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;em style=&quot;font-size: 12pt;&quot;&gt;How are you&lt;/em&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;em style=&quot;font-size: 12pt;&quot;&gt;&lt;span class=&quot;ql-cursor&quot;&gt;﻿&lt;/span&gt;&lt;/em&gt;&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;ql-clipboard&quot; tabindex=&quot;-1&quot;&gt;&lt;/div&gt;&lt;div class=&quot;dx-resize-frame dx-resizable&quot; style=&quot;display: none;&quot;&gt;&lt;div class=&quot;dx-resizable-handle dx-resizable-handle-top&quot;&gt;&lt;/div&gt;&lt;div class=&quot;dx-resizable-handle dx-resizable-handle-bottom&quot;&gt;&lt;/div&gt;&lt;div class=&quot;dx-resizable-handle dx-resizable-handle-left&quot;&gt;&lt;/div&gt;&lt;div class=&quot;dx-resizable-handle dx-resizable-handle-right&quot;&gt;&lt;/div&gt;&lt;div class=&quot;dx-resizable-handle dx-resizable-handle-corner-bottom-right&quot;&gt;&lt;/div&gt;&lt;div class=&quot;dx-resizable-handle dx-resizable-handle-corner-bottom-left&quot;&gt;&lt;/div&gt;&lt;div class=&quot;dx-resizable-handle dx-resizable-handle-corner-top-right&quot;&gt;&lt;/div&gt;&lt;div class=&quot;dx-resizable-handle dx-resizable-handle-corner-top-left&quot;&gt;&lt;/div&gt;&lt;/div&gt;', 0, '2022-05-23 09:31:24', '2022-05-23 09:31:24'),
(15, 'sdfsfdsf', 'https://cnews24.ru/uploads/95e/95ef6086b4cb9981e164097c1fa1475a05ba68c0.jpg', '&lt;div class=&quot;ql-editor dx-htmleditor-content&quot; data-gramm=&quot;false&quot; tabindex=&quot;0&quot; data-lt-tmp-id=&quot;lt-884485&quot; spellcheck=&quot;false&quot;&gt;&lt;p&gt;Hello&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;ql-clipboard&quot; tabindex=&quot;-1&quot;&gt;&lt;/div&gt;&lt;div class=&quot;dx-resize-frame dx-resizable&quot; style=&quot;display: none;&quot;&gt;&lt;div class=&quot;dx-resizable-handle dx-resizable-handle-top&quot;&gt;&lt;/div&gt;&lt;div class=&quot;dx-resizable-handle dx-resizable-handle-bottom&quot;&gt;&lt;/div&gt;&lt;div class=&quot;dx-resizable-handle dx-resizable-handle-left&quot;&gt;&lt;/div&gt;&lt;div class=&quot;dx-resizable-handle dx-resizable-handle-right&quot;&gt;&lt;/div&gt;&lt;div class=&quot;dx-resizable-handle dx-resizable-handle-corner-bottom-right&quot;&gt;&lt;/div&gt;&lt;div class=&quot;dx-resizable-handle dx-resizable-handle-corner-bottom-left&quot;&gt;&lt;/div&gt;&lt;div class=&quot;dx-resizable-handle dx-resizable-handle-corner-top-right&quot;&gt;&lt;/div&gt;&lt;div class=&quot;dx-resizable-handle dx-resizable-handle-corner-top-left&quot;&gt;&lt;/div&gt;&lt;/div&gt;', 0, '2022-05-23 09:43:16', '2022-05-23 09:43:16'),
(19, 'Testing', 'http://cp.loc/storage/images/Ay6uNqHm3o2zVnbtATul58HRcl4SdXWUlGJm0arD.jpg', '&lt;div class=&quot;ql-editor dx-htmleditor-content&quot; data-gramm=&quot;false&quot; tabindex=&quot;0&quot; data-lt-tmp-id=&quot;lt-721884&quot; spellcheck=&quot;false&quot;&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;strong style=&quot;font-size: 36pt;&quot;&gt;Hello Word&lt;/strong&gt;&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;ql-clipboard&quot; tabindex=&quot;-1&quot;&gt;&lt;/div&gt;&lt;div class=&quot;dx-resize-frame dx-resizable&quot; style=&quot;display: none;&quot;&gt;&lt;div class=&quot;dx-resizable-handle dx-resizable-handle-top&quot;&gt;&lt;/div&gt;&lt;div class=&quot;dx-resizable-handle dx-resizable-handle-bottom&quot;&gt;&lt;/div&gt;&lt;div class=&quot;dx-resizable-handle dx-resizable-handle-left&quot;&gt;&lt;/div&gt;&lt;div class=&quot;dx-resizable-handle dx-resizable-handle-right&quot;&gt;&lt;/div&gt;&lt;div class=&quot;dx-resizable-handle dx-resizable-handle-corner-bottom-right&quot;&gt;&lt;/div&gt;&lt;div class=&quot;dx-resizable-handle dx-resizable-handle-corner-bottom-left&quot;&gt;&lt;/div&gt;&lt;div class=&quot;dx-resizable-handle dx-resizable-handle-corner-top-right&quot;&gt;&lt;/div&gt;&lt;div class=&quot;dx-resizable-handle dx-resizable-handle-corner-top-left&quot;&gt;&lt;/div&gt;&lt;/div&gt;', 0, '2022-05-23 10:14:47', '2022-05-23 10:14:47'),
(20, 'Ethereum is in a Stalemate as Buyers are Unable to Break the High of $2,200', 'http://cp.loc/storage/images/W4P39vfpvgtubHJFwSDnt4eNChFjMd5EowLyEzLc.jpg', '&lt;div class=&quot;ql-editor dx-htmleditor-content&quot; data-gramm=&quot;false&quot; tabindex=&quot;0&quot; data-lt-tmp-id=&quot;lt-482664&quot; spellcheck=&quot;false&quot;&gt;&lt;p&gt;&lt;strong&gt;The Ethereum price (ETH) is in a fluctuation range as it trades above the $2,000 psychological price level.&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;After the May 12 price collapse, there was no significant price movement. Ether fluctuated between $1,900 and $2,200.&amp;nbsp;&lt;/p&gt;&lt;h2&gt;Long-term analysis of the Ethereum price: fluctuation range&lt;/h2&gt;&lt;p&gt;Today, Ether is approaching the high of $2,072 at the time of writing. The bears would sell every time the price reaches the $2,200 resistance zone. Last week, the bulls failed to keep the price above the $2,200 high. On the downside, buyers have defended the current support as the altcoin has reached the oversold zone. The ETH /USD price will continue to move within the trading range as long as it is not breached.&lt;/p&gt;&lt;h2&gt;Ethereum indicator analysis&amp;nbsp;&amp;nbsp;&lt;/h2&gt;&lt;p&gt;ETH is at level 38 of the Relative Strength Index for the period 14. The altcoin continues to trade in the downtrend zone. The 21-day line and the 50-day line SMAs are sloping downward, indicating a downtrend. Ether is above the 40% area of the daily stochastic. The market is in a bullish momentum, but it is unstable.&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 0px;&quot;&gt;&lt;img src=&quot;https://cnews24.ru/uploads/5cb/5cb4a8ff55f8eb0f61746d41179481732b0b0edf.png&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;h3&gt;Technical Indicators:&amp;nbsp;&lt;/h3&gt;&lt;p&gt;&lt;strong&gt;Key resistance levels - $3,500 and $4,000&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Key support levels - $2,500 and $2,000&lt;/strong&gt;&lt;/p&gt;&lt;h2&gt;What is the next direction for Ethereum?&amp;nbsp;&lt;/h2&gt;&lt;p&gt;Ether is in a rangebound move as the price fluctuates at the bottom of the chart. The altcoin will resume an uptrend when the rangebound levels are broken. Meanwhile, on May 12 downtrend; a retraced candle body tested the 78.6% Fibonacci retracement level. The retracement suggests that ETH will fall to the Fibonacci extension level of $1.272 or $1,439.67.&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 0px;&quot;&gt;&lt;img src=&quot;https://cnews24.ru/uploads/8c0/8c0ade16fcd9b3be33099dbc0490b6b4e380e120.png&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;Disclaimer.&amp;nbsp;This analysis and forecast are the personal opinions of the author and are not a recommendation to buy or sell cryptocurrency and should not be viewed as an endorsement by CoinIdol. Readers should do their research before investing funds.&lt;/p&gt;&lt;/div&gt;&lt;div class=&quot;ql-clipboard&quot; tabindex=&quot;-1&quot;&gt;&lt;/div&gt;&lt;div class=&quot;dx-resize-frame dx-resizable&quot; style=&quot;display: none;&quot;&gt;&lt;div class=&quot;dx-resizable-handle dx-resizable-handle-top&quot;&gt;&lt;/div&gt;&lt;div class=&quot;dx-resizable-handle dx-resizable-handle-bottom&quot;&gt;&lt;/div&gt;&lt;div class=&quot;dx-resizable-handle dx-resizable-handle-left&quot;&gt;&lt;/div&gt;&lt;div class=&quot;dx-resizable-handle dx-resizable-handle-right&quot;&gt;&lt;/div&gt;&lt;div class=&quot;dx-resizable-handle dx-resizable-handle-corner-bottom-right&quot;&gt;&lt;/div&gt;&lt;div class=&quot;dx-resizable-handle dx-resizable-handle-corner-bottom-left&quot;&gt;&lt;/div&gt;&lt;div class=&quot;dx-resizable-handle dx-resizable-handle-corner-top-right&quot;&gt;&lt;/div&gt;&lt;div class=&quot;dx-resizable-handle dx-resizable-handle-corner-top-left&quot;&gt;&lt;/div&gt;&lt;/div&gt;', 1, '2022-05-23 10:17:33', '2022-05-23 10:17:33');

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `news_tb`
--
ALTER TABLE `news_tb`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
