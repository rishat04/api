-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 13 2022 г., 15:32
-- Версия сервера: 10.1.44-MariaDB
-- Версия PHP: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `like_figma`
--

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `commentId` int(11) NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `authorId` int(11) NOT NULL,
  `markerId` int(11) NOT NULL,
  `created` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`commentId`, `text`, `authorId`, `markerId`, `created`) VALUES
(133, 'dsfg', 42, 106, '2022-12-13T11:20:47.860Z'),
(134, 'ert', 42, 106, '2022-12-13T11:20:48.588Z'),
(135, '345', 42, 106, '2022-12-13T11:20:49.012Z'),
(137, 'asdf', 42, 116, '2022-12-13T12:05:59.438Z'),
(138, 'wqer', 42, 116, '2022-12-13T12:06:09.382Z'),
(139, 'Ку', 42, 116, '2022-12-13T12:06:17.070Z'),
(140, 'ячсм', 42, 116, '2022-12-13T12:06:29.030Z'),
(141, 'zxcv', 42, 120, '2022-12-13T12:16:00.199Z'),
(142, '345', 42, 120, '2022-12-13T12:16:12.991Z'),
(143, 'qwer', 42, 120, '2022-12-13T12:17:26.582Z'),
(144, 'c', 42, 121, '2022-12-13T12:17:41.262Z'),
(159, 'sdfg', 42, 120, '2022-12-13T12:23:20.438Z'),
(160, 'sdfg', 42, 120, '2022-12-13T12:23:20.606Z'),
(161, 'sd', 42, 120, '2022-12-13T12:23:20.782Z'),
(162, 'fgsd', 42, 120, '2022-12-13T12:23:20.982Z'),
(175, 'c', 42, 121, '2022-12-13T12:27:31.871Z'),
(176, 's', 42, 121, '2022-12-13T12:27:33.599Z');

-- --------------------------------------------------------

--
-- Структура таблицы `markers`
--

CREATE TABLE `markers` (
  `markerId` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `authorId` int(11) NOT NULL,
  `firstComment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `projectId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `markers`
--

INSERT INTO `markers` (`markerId`, `title`, `created`, `authorId`, `firstComment`, `position`, `projectId`) VALUES
(106, '#Этаж 1, прихожая', '2022-12-13T10:17:02.554Z', 42, 'sdfsdfgsfg\n!213\nasdf', '{\"x\":253,\"y\":222}', 2),
(114, '#Этаж 1, прихожая', '2022-12-13T11:52:51.445Z', 4, 'Привет!', '{\"x\":500,\"y\":264}', 2),
(116, '#Этаж 1, прихожая', '2022-12-13T11:53:42.581Z', 2, 'Даровка', '{\"x\":431,\"y\":461}', 2),
(118, '#Этаж 1, прихожая', '2022-12-13T12:14:32.862Z', 42, 'asdf', '{\"x\":226,\"y\":500}', 2),
(120, '#Этаж 1, прихожая', '2022-12-13T12:15:55.383Z', 42, 'qwer', '{\"x\":286,\"y\":577}', 2),
(121, '#Этаж 1, прихожая', '2022-12-13T12:17:36.086Z', 42, 'qwer', '{\"x\":248,\"y\":355}', 2),
(123, '#Этаж 1, прихожая', '2022-12-13T12:20:26.056Z', 42, 'asdfasdf', '{\"x\":546,\"y\":178}', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `planner_layers`
--

CREATE TABLE `planner_layers` (
  `id` int(11) NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `planner_layers`
--

INSERT INTO `planner_layers` (`id`, `alias`, `title`) VALUES
(1, 'layer1', 'Новый слой'),
(2, 'layer2', 'Электропроводники');

-- --------------------------------------------------------

--
-- Структура таблицы `planner_objects`
--

CREATE TABLE `planner_objects` (
  `id` int(11) NOT NULL COMMENT 'Идентификатор',
  `dateCreate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Дата создания',
  `dateUpdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Дата последнего редактирования',
  `groupId` int(11) NOT NULL COMMENT 'Идентификатор группы',
  `alias` varchar(100) NOT NULL COMMENT 'Кодовое обозначение',
  `caption` varchar(255) NOT NULL COMMENT 'Название',
  `caption_en` varchar(255) NOT NULL COMMENT 'Название на английском',
  `caption_es` varchar(255) NOT NULL COMMENT 'Название на испанском',
  `caption_fr` varchar(255) NOT NULL COMMENT 'Название на французском',
  `caption_ja` varchar(255) NOT NULL COMMENT 'Название на японском',
  `caption_ar` varchar(255) NOT NULL COMMENT 'Название на арабском',
  `caption_de` varchar(255) NOT NULL COMMENT 'Название на немецком',
  `caption_hi` varchar(255) NOT NULL COMMENT 'Название на хинди',
  `caption_ms` varchar(255) NOT NULL COMMENT 'Название на малайском',
  `caption_pt` varchar(255) NOT NULL COMMENT 'Название на португальском',
  `caption_he` varchar(255) NOT NULL COMMENT 'Название на иврите',
  `caption_zh` varchar(255) NOT NULL COMMENT 'Название на китайском',
  `productCode` varchar(255) DEFAULT NULL,
  `length` float NOT NULL COMMENT 'Длина, м',
  `lengthMin` float NOT NULL DEFAULT '0.1' COMMENT 'Минимальная длина',
  `lengthMax` float NOT NULL DEFAULT '100' COMMENT 'Максимальная длина',
  `width` float NOT NULL COMMENT 'Ширина, м',
  `widthMin` float NOT NULL DEFAULT '0.1' COMMENT 'Минимальная ширина',
  `widthMax` float NOT NULL DEFAULT '100' COMMENT 'Максимальная ширина',
  `height` float NOT NULL COMMENT 'Высота, м',
  `heightMin` float NOT NULL DEFAULT '0.1' COMMENT 'Минимальная высота',
  `heightMax` float NOT NULL DEFAULT '100' COMMENT 'Максимальная высота',
  `weight` float NOT NULL DEFAULT '0' COMMENT 'Вес, кг',
  `canPlaceId` tinyint(4) NOT NULL DEFAULT '1' COMMENT 'Место крепления: 1 - пол, 2 - стены, 3 - потолок',
  `placeRuleId` tinyint(4) DEFAULT NULL COMMENT 'Правило расположения: NULL - Нет правил, 1 - Прикрепить к полу',
  `light` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 - Не является источником света, 1 - Источник света',
  `showSizeInfo` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0 - Не показывать размеры, 1 - Показывать размеры',
  `editSize` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 - Нельзя редактировать размеры, 1 - Можно редактировать размеры',
  `isHole` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0 - Не создает дырку, 1 - Создает дырку (в полу, стене, потолку)',
  `animated` tinyint(1) NOT NULL COMMENT 'Наличие анимации',
  `hidden` tinyint(1) NOT NULL COMMENT 'Скрытие',
  `layers` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Объекты';

--
-- Дамп данных таблицы `planner_objects`
--

INSERT INTO `planner_objects` (`id`, `dateCreate`, `dateUpdate`, `groupId`, `alias`, `caption`, `caption_en`, `caption_es`, `caption_fr`, `caption_ja`, `caption_ar`, `caption_de`, `caption_hi`, `caption_ms`, `caption_pt`, `caption_he`, `caption_zh`, `productCode`, `length`, `lengthMin`, `lengthMax`, `width`, `widthMin`, `widthMax`, `height`, `heightMin`, `heightMax`, `weight`, `canPlaceId`, `placeRuleId`, `light`, `showSizeInfo`, `editSize`, `isHole`, `animated`, `hidden`, `layers`) VALUES
(1, '2021-08-10 08:10:51', '2021-12-13 07:47:04', 60, 'straightSofa', 'Тканевый диван', 'Fabric sofa', 'Sofá de tela', 'Canapé en tissu', '布製ソファ', 'أريكة قماش', 'Sofa aus Stoff', 'कपड़ा सोफा', 'Sofa kain', 'Sofá de tecido', 'ספת בד', '布藝沙發', 'RG-000005', 1.43, 0.1, 100, 0.76, 0.1, 100, 0.65, 0.1, 100, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1),
(2, '2022-11-18 06:42:39', '0000-00-00 00:00:00', 60, 'car', 'asdf', 'asdf', 'asdf', 'asdf', 'sadf', 'adsf', 'adf', 'asdf', 'asdf', 'asdf', 'adsf', 'adf', '112', 123, 0.1, 100, 123, 0.1, 100, 312, 0.1, 100, 0, 1, NULL, 0, 1, 0, 0, 0, 0, 1),
(3, '2022-11-18 13:13:27', '0000-00-00 00:00:00', 60, 'martin', 'as', 'wqer', 'asdf', 'sadf', 'asdf', 'asdf', 'asdf', 'asdf', 'sdf', 'df', 'asdf', 'asdf', '123', 123, 0.1, 100, 1, 0.1, 100, 321, 0.1, 100, 0, 1, 1, 0, 1, 0, 0, 0, 0, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `projects`
--

CREATE TABLE `projects` (
  `projectId` int(11) NOT NULL,
  `created` date NOT NULL DEFAULT '0000-00-00',
  `authorId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `projects`
--

INSERT INTO `projects` (`projectId`, `created`, `authorId`) VALUES
(0, '0000-00-00', 42),
(1, '2022-12-07', 42),
(2, '0000-00-00', 42);

-- --------------------------------------------------------

--
-- Структура таблицы `sub_marker`
--

CREATE TABLE `sub_marker` (
  `id` int(11) NOT NULL,
  `markerId` int(11) NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sub_marker`
--

INSERT INTO `sub_marker` (`id`, `markerId`, `userId`) VALUES
(1, 6, 42),
(2, 6, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `sub_project`
--

CREATE TABLE `sub_project` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wa_contact`
--

CREATE TABLE `wa_contact` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `firstname` varchar(50) NOT NULL DEFAULT '',
  `middlename` varchar(50) NOT NULL DEFAULT '',
  `lastname` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `company` varchar(150) NOT NULL DEFAULT '',
  `jobtitle` varchar(50) NOT NULL DEFAULT '',
  `company_contact_id` int(11) NOT NULL DEFAULT '0',
  `is_company` tinyint(1) NOT NULL DEFAULT '0',
  `is_user` tinyint(1) NOT NULL DEFAULT '0',
  `login` varchar(32) DEFAULT NULL,
  `password` varchar(128) NOT NULL DEFAULT '',
  `last_datetime` datetime DEFAULT NULL,
  `sex` enum('m','f') DEFAULT NULL,
  `birth_day` tinyint(2) UNSIGNED DEFAULT NULL,
  `birth_month` tinyint(2) UNSIGNED DEFAULT NULL,
  `birth_year` smallint(4) DEFAULT NULL,
  `about` text,
  `photo` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `create_datetime` datetime NOT NULL,
  `create_app_id` varchar(32) NOT NULL DEFAULT '',
  `create_method` varchar(32) NOT NULL DEFAULT '',
  `create_contact_id` int(11) NOT NULL DEFAULT '0',
  `locale` varchar(8) NOT NULL DEFAULT '',
  `timezone` varchar(64) NOT NULL DEFAULT '',
  `crm_vault_id` bigint(20) NOT NULL DEFAULT '0',
  `crm_user_id` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wa_contact`
--

INSERT INTO `wa_contact` (`id`, `name`, `firstname`, `middlename`, `lastname`, `title`, `company`, `jobtitle`, `company_contact_id`, `is_company`, `is_user`, `login`, `password`, `last_datetime`, `sex`, `birth_day`, `birth_month`, `birth_year`, `about`, `photo`, `create_datetime`, `create_app_id`, `create_method`, `create_contact_id`, `locale`, `timezone`, `crm_vault_id`, `crm_user_id`) VALUES
(42, 'test', 'test', '', '', '', '', '', 0, 0, 1, 'test', 'bc6a99722439e196f87', '2022-11-07 17:04:55', NULL, NULL, NULL, NULL, NULL, 0, '2022-05-24 11:58:07', 'contacts', 'add', 1, '', '', 0, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`commentId`),
  ADD KEY `comment_unique` (`markerId`);

--
-- Индексы таблицы `markers`
--
ALTER TABLE `markers`
  ADD PRIMARY KEY (`markerId`),
  ADD KEY `marker_unique` (`projectId`);

--
-- Индексы таблицы `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`projectId`);

--
-- Индексы таблицы `sub_marker`
--
ALTER TABLE `sub_marker`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sub_project`
--
ALTER TABLE `sub_project`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wa_contact`
--
ALTER TABLE `wa_contact`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`),
  ADD KEY `name` (`name`),
  ADD KEY `crm_vault` (`crm_vault_id`),
  ADD KEY `crm_user` (`crm_user_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `commentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT для таблицы `markers`
--
ALTER TABLE `markers`
  MODIFY `markerId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT для таблицы `projects`
--
ALTER TABLE `projects`
  MODIFY `projectId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `sub_marker`
--
ALTER TABLE `sub_marker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `sub_project`
--
ALTER TABLE `sub_project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wa_contact`
--
ALTER TABLE `wa_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comment_unique` FOREIGN KEY (`markerId`) REFERENCES `markers` (`markerId`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `markers`
--
ALTER TABLE `markers`
  ADD CONSTRAINT `marker_unique` FOREIGN KEY (`projectId`) REFERENCES `projects` (`projectId`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
