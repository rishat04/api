-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 09 2022 г., 16:52
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
  `date` date NOT NULL,
  `markerId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(6, '#Этаж 1, прихожая', '08.12.2022', 42, 'dasfasdf', '{\"x\":326,\"y\":176}', 0),
(7, '#Этаж 1, прихожая', '08.12.2022', 42, 'asdfasdf', '{\"x\":356,\"y\":181}', 0),
(8, '#Этаж 1, прихожая', '08.12.2022', 42, 'asdfasdf', '{\"x\":256,\"y\":179}', 0),
(9, '#Этаж 1, прихожая', '08.12.2022', 42, 'sdfgsdfg', '{\"x\":341,\"y\":208}', 0),
(10, '#Этаж 1, прихожая', '08.12.2022', 42, 'sdfgsdfgsdfg', '{\"x\":399,\"y\":193}', 0),
(11, '#Этаж 1, прихожая', '08.12.2022', 42, 'sdfgsdfg', '{\"x\":446,\"y\":212}', 0),
(12, '#Этаж 1, прихожая', '08.12.2022', 42, 'adfasfadf', '{\"x\":307,\"y\":218}', 0),
(13, '#Этаж 1, прихожая', '08.12.2022', 42, 'asdfasdf', '{\"x\":226,\"y\":80}', 0),
(14, '#Этаж 1, прихожая', '08.12.2022', 42, 'asdfasdf', '{\"x\":390,\"y\":168}', 0),
(16, '#Этаж 1, прихожая', '08.12.2022', 42, 'asdfsasdf', '{\"x\":451,\"y\":155}', 0),
(17, '#Этаж 1, прихожая', '08.12.2022', 42, 'qwerqwer', '{\"x\":234,\"y\":162}', 0),
(19, '#Этаж 1, прихожая', '2022-12-09T13:37:36.613Z', 42, 'sdfgsdfg', '{\"x\":419,\"y\":260}', 0),
(20, '#Этаж 1, прихожая', '2022-12-09T13:38:11.052Z', 42, 'sdfgsdfg', '{\"x\":419,\"y\":260}', 0),
(21, '#Этаж 1, прихожая', '2022-12-09T13:39:42.564Z', 42, 'sdfgsdfg', '{\"x\":419,\"y\":260}', 0),
(22, '#Этаж 1, прихожая', '2022-12-09T13:40:09.988Z', 42, 'asdfasdf', '{\"x\":351,\"y\":196}', 0),
(23, '#Этаж 1, прихожая', '2022-12-09T13:41:06.300Z', 42, 'hdfghdfh', '{\"x\":396,\"y\":165}', 0),
(24, '#Этаж 1, прихожая', '2022-12-09T13:42:31.085Z', 42, 'adf', '{\"x\":413,\"y\":192}', 0),
(25, '#Этаж 1, прихожая', '2022-12-09T13:44:51.444Z', 42, 'asdfadsf', '{\"x\":312,\"y\":194}', 0),
(26, '#Этаж 1, прихожая', '2022-12-09T13:45:28.244Z', 42, 'dfgdfgh', '{\"x\":408,\"y\":324}', 0),
(27, '#Этаж 1, прихожая', '2022-12-09T13:47:27.196Z', 42, 'sdfgsdfg', '{\"x\":294,\"y\":202}', 0),
(28, '#Этаж 1, прихожая', '2022-12-09T13:47:38.245Z', 42, 'sdfgsdfg', '{\"x\":294,\"y\":202}', 0),
(29, '#Этаж 1, прихожая', '2022-12-09T13:47:59.700Z', 42, 'adsfasdf', '{\"x\":316,\"y\":219}', 0),
(30, '#Этаж 1, прихожая', '2022-12-09T13:48:12.636Z', 42, 'asfasdf', '{\"x\":343,\"y\":199}', 0),
(31, '#Этаж 1, прихожая', '2022-12-09T13:48:50.508Z', 42, 'sdfgsdfg', '{\"x\":577,\"y\":143}', 0),
(32, '#Этаж 1, прихожая', '2022-12-09T13:49:13.893Z', 42, 'asdasdfadf', '{\"x\":370,\"y\":201}', 0),
(33, '#Этаж 1, прихожая', '2022-12-09T13:49:36.293Z', 42, 'asdfhakjljaksdfhjasdfasdf\nAsdfasdfasdf', '{\"x\":320,\"y\":171}', 0),
(34, '#Этаж 1, прихожая', '2022-12-09T13:50:05.588Z', 42, 'sdfsdf', '{\"x\":430,\"y\":267}', 0);

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
(1, '2022-12-07', 42);

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
  ADD PRIMARY KEY (`commentId`);

--
-- Индексы таблицы `markers`
--
ALTER TABLE `markers`
  ADD PRIMARY KEY (`markerId`);

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
  MODIFY `commentId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `markers`
--
ALTER TABLE `markers`
  MODIFY `markerId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT для таблицы `projects`
--
ALTER TABLE `projects`
  MODIFY `projectId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
