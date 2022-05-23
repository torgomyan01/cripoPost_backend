-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 23 2022 г., 08:38
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
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2022_05_22_160155_news_tb', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `news_tb`
--

CREATE TABLE `news_tb` (
  `id` bigint UNSIGNED NOT NULL,
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
(9, 'Test', 'https://cnews24.ru/uploads/95e/95ef6086b4cb9981e164097c1fa1475a05ba68c0.jpg', 'Test Text', 1, '2022-05-22 14:12:55', '2022-05-22 14:12:55'),
(10, 'Test', 'https://cnews24.ru/uploads/95e/95ef6086b4cb9981e164097c1fa1475a05ba68c0.jpg', 'Test Text', 0, '2022-05-22 14:12:55', '2022-05-22 14:12:55'),
(11, 'Test', 'https://cnews24.ru/uploads/95e/95ef6086b4cb9981e164097c1fa1475a05ba68c0.jpg', 'Test Text', 0, '2022-05-22 14:12:55', '2022-05-22 14:12:55'),
(12, 'Test', 'https://cnews24.ru/uploads/95e/95ef6086b4cb9981e164097c1fa1475a05ba68c0.jpg', '<div class=\"news-item detail content_text\" data-id=\"/news/bitcoin/6939261/\" data-image=\"https://cnews24.ru/uploads/95e/95ef6086b4cb9981e164097c1fa1475a05ba68c0.jpg\" data-title=\"Bitcoin targets record 8th weekly red candle while BTC price limits weekend losses\">\n                                <div class=\"detail-image-wrap\" style=\"background-image: url(https://cnews24.ru/uploads/95e/95ef6086b4cb9981e164097c1fa1475a05ba68c0.jpg)\"></div>\n                <br>\n        <div class=\"info flex middle-xs between-xs\">\n            <div class=\"col-xs\">\n                <div class=\"row middle-xs\">\n                    <div class=\"rating-color\" style=\"background-color: #34C800\"></div>\n                    <span>cointelegraph.com</span>\n                    <span class=\"datetime flex middle-xs\">\n                                                                         <span class=\"middle-marker\"></span>5 h\n                                                    </span>\n                </div>\n            </div>\n            <div class=\"flex middle-xs reading-time\">\n                                                    Reading time: ~2 m\n                            </div>\n            <div class=\"share-links flex middle-xs \">\n                <span class=\"share-icon hover\"></span>\n            </div>\n        </div>\n        <hr>\n                    <p>Bitcoin (BTC) gave bears little joy over the weekend as the May 22 weekly close looked set to revolve around $30,000.</p>\n<div><img src=\"https://cnews24.ru/uploads/f75/f75e496fb04a66b1719b7cbb9ef57ff692019aa8.png\" size=\"1012x555\">\n<div><em>BTC/USD 1-hour candle chart (Bitstamp). Source: TradingView</em></div>\n</div>\n<h2>Waiting for Bitcoin to \"make a decision\"</h2>\n<p>Data from Cointelegraph Markets Pro and TradingView followed BTC/USD as it held a narrow range after the Wall Street trading week.</p>\n<p>With volatility absent, traders hoped for a move to larger areas of support or resistance next.</p>\n<p>“Still wedged between the supply and demand zone .. Hoping for a break today so we have some juicy action to play with,” popular trader Crypto Tony summarized, noting upside and downside targets were around $27,900 and $31,000, respectively.</p>\n<blockquote>\n<p dir=\"ltr\">Time for #Bitcoin to make a decision? pic.twitter.com/DEfNhuvnYa</p>\n— Matthew Hyland (@MatthewHyland_) May 21, 2022</blockquote>\n<p>Cointelegraph contributor Michaël van de Poppe meanwhile said that he expected “green numbers for Bitcoin” over the coming week.</p>\n<p>Should it close at current levels of $30,000, meanwhile, BTC/USD would still seal a record eighth consecutive red candle on the weekly chart.</p>\n<div><img src=\"https://cnews24.ru/uploads/42b/42b1d3ed375ee0e26167feb4ba9e859779d0a162.png\" size=\"1012x555\">\n<div><em>BTC/USD 1-week candle chart (Bitstamp). Source: TradingView</em></div>\n</div>\n<p>The week of the World Economic Forum could likewise be overshadowed by external market turmoil, Cointelegraph noting that the S&amp;P 500 had already lost 20% from its peak to enter official bear market territory.</p>\n<p>Fellow popular Twitter account PlanC nonetheless noted that Bitcoin’s correlation to stocks had been decreasing compared to the previous months.</p>\n<h2>Bitcoin Pizza Day is here</h2>\n<p>Attention was more focused on a different price story on the day, however, as May 22 marked the infamous Bitcoin Pizza Day.</p>\n<p><strong><em>Related:&nbsp;Bitcoin Pizza Day rewind: A homage to weird and wonderful BTC purchases</em></strong></p>\n<p>On May 18, 2010,&nbsp;Laszlo Hanyecz, one of the earliest Bitcoin miners, purchased two pizzas for a total of 10,000 BTC, saying at the time that he could alternatively sell the stash for around $41.</p>\n<p>Hanyecz\'s move became legendary, with his original post advertising it on the Bitcointalk forum still live.</p>\n<p>Then trading at under $0.0005 per coin, Bitcoin since appreciated by approximately 1.38 billion percent to reach its all-time highs of $69,000 eleven-and-a-half years later.</p>\n<p>According to dedicated monitoring resource, the Bitcoin Pizza Index,&nbsp;Hanyecz\'s purchase was worth $295 million as of May 22.</p>\n<div><img src=\"https://cnews24.ru/uploads/042/0424c11574a5493742630fc189567189e050d11c.png\" size=\"1180x528\">\n<div><em>Bitcoin Pizza Index (screenshot). Source: Bitcoin Pizza Index</em></div>\n</div>\n<p>The views and opinions expressed here are solely those of the author and do not necessarily reflect the views of Cointelegraph.com. Every investment and trading move involves risk, you should conduct your own research when making a decision.</p>\n            <hr>\n            </div>', 0, '2022-05-22 14:12:56', '2022-05-22 14:12:56');

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
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
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `news_tb`
--
ALTER TABLE `news_tb`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
