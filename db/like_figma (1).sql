-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 12 2022 г., 16:34
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
(1, '354534354', 42, 47, '2022-12-12T08:21:01.110Z'),
(2, '35453435412asddf', 42, 47, '2022-12-12T08:21:19.318Z'),
(3, 'xzvcasdf', 42, 47, '2022-12-12T08:21:59.206Z'),
(4, 'zxc2134sdf', 42, 47, '2022-12-12T08:22:29.205Z'),
(5, 'asdfzx3', 42, 47, '2022-12-12T08:22:35.781Z'),
(6, 'xzcvasdf23', 42, 47, '2022-12-12T08:22:57.334Z'),
(7, 'asdfa', 42, 47, '2022-12-12T08:24:56.605Z'),
(8, 'asfas', 42, 47, '2022-12-12T08:25:20.069Z'),
(9, 'asfasdf', 42, 47, '2022-12-12T08:25:35.486Z'),
(10, 'asdfasdf', 42, 62, '2022-12-12T08:27:15.902Z'),
(11, '324123wqerqwer', 42, 62, '2022-12-12T08:27:19.510Z'),
(12, 'sadfcxcv', 42, 62, '2022-12-12T08:27:22.486Z'),
(13, 'werwqer', 42, 47, '2022-12-12T08:27:30.757Z'),
(14, 'werwqer23', 42, 47, '2022-12-12T08:27:31.926Z'),
(15, 'werwqer23qwrsdf', 42, 47, '2022-12-12T08:27:33.269Z'),
(16, 'xc', 42, 47, '2022-12-12T08:27:35.533Z'),
(17, 'xcsdfasd', 42, 47, '2022-12-12T08:27:39.550Z'),
(18, 'xcsdfasdweqr', 42, 47, '2022-12-12T08:27:40.229Z'),
(19, 'xcsdfasdweqrdsf', 42, 47, '2022-12-12T08:27:40.901Z'),
(20, 'xcsdfasdweqrdsfxzc', 42, 47, '2022-12-12T08:27:41.269Z'),
(21, 'xcsdfasdweqrdsfxzcsdaf', 42, 47, '2022-12-12T08:27:41.669Z'),
(22, 'xcsdfasdweqrdsfxzcsdafwerxd', 42, 47, '2022-12-12T08:27:42.502Z'),
(23, 'sadfcxcvrwer', 42, 62, '2022-12-12T08:27:45.533Z'),
(24, 'zxcvasdf', 42, 63, '2022-12-12T08:29:06.133Z'),
(25, 'zxcvasdfqwe', 42, 63, '2022-12-12T08:29:09.349Z'),
(26, 'sdfsafasd', 42, 64, '2022-12-12T08:32:13.598Z'),
(27, 'sdfsafasd13', 42, 64, '2022-12-12T08:32:17.950Z'),
(28, 'sdfsafasd13rwqecx', 42, 64, '2022-12-12T08:32:19.734Z'),
(29, 'asdfasdf', 42, 64, '2022-12-12T10:20:02.395Z'),
(30, 'asdfasdf', 42, 64, '2022-12-12T10:21:03.010Z'),
(31, 'asdfasdfwer', 42, 64, '2022-12-12T10:21:12.698Z'),
(32, 'qwe', 42, 64, '2022-12-12T10:21:19.003Z'),
(33, 'asdfasdf', 42, 64, '2022-12-12T10:21:48.114Z'),
(34, 'asdfasdf', 42, 64, '2022-12-12T10:25:02.747Z'),
(35, 'wqer', 42, 64, '2022-12-12T10:25:04.674Z'),
(36, 'zxcvc', 42, 64, '2022-12-12T10:25:28.563Z'),
(37, 'sdfg', 42, 63, '2022-12-12T10:36:00.691Z'),
(38, 'xcvb', 42, 63, '2022-12-12T10:36:02.531Z'),
(39, '345', 42, 63, '2022-12-12T10:36:03.667Z'),
(40, 'xczvzxcv', 42, 56, '2022-12-12T10:36:57.524Z'),
(41, 'asdfasdf', 42, 66, '2022-12-12T10:38:59.716Z'),
(42, '23324', 42, 66, '2022-12-12T10:39:06.788Z'),
(43, 'asdf', 42, 67, '2022-12-12T10:44:03.428Z'),
(44, 'wr', 42, 67, '2022-12-12T10:44:05.051Z'),
(45, 'wer', 42, 67, '2022-12-12T10:44:05.835Z'),
(46, 'z', 42, 67, '2022-12-12T10:44:06.692Z'),
(47, 'g', 42, 66, '2022-12-12T10:45:41.724Z'),
(48, 'Второй', 42, 68, '2022-12-12T10:45:58.379Z'),
(49, 'цу', 42, 69, '2022-12-12T10:47:11.500Z'),
(50, 'qwe', 42, 70, '2022-12-12T10:47:43.828Z'),
(51, 'qwer', 42, 71, '2022-12-12T10:48:49.100Z'),
(52, 'zxcv', 42, 71, '2022-12-12T10:48:51.371Z'),
(53, 'sdf', 42, 51, '2022-12-12T10:49:05.460Z'),
(54, 'фвафв', 42, 72, '2022-12-12T10:49:39.140Z'),
(55, 'цук', 42, 72, '2022-12-12T10:49:40.284Z'),
(56, 'ячсм', 42, 72, '2022-12-12T10:49:41.132Z'),
(57, 'Блабла', 4, 72, '2022-12-12T10:51:14.956Z'),
(58, 'adfasdf', 42, 64, '2022-12-12T11:20:00.069Z'),
(59, 'asdfasdfasdf', 42, 64, '2022-12-12T11:22:14.885Z'),
(60, 'asdf', 4, 70, '2022-12-12T11:23:08.533Z'),
(61, 'wqe', 4, 70, '2022-12-12T11:23:09.071Z'),
(62, 'wqer', 4, 70, '2022-12-12T11:23:09.406Z'),
(63, '234', 4, 70, '2022-12-12T11:23:10.006Z'),
(64, 'twertwert', 42, 75, '2022-12-12T11:29:04.961Z'),
(65, 'wert', 42, 75, '2022-12-12T11:29:05.340Z'),
(66, 'wer', 42, 75, '2022-12-12T11:29:05.592Z'),
(67, 'twe', 42, 75, '2022-12-12T11:29:05.847Z'),
(68, 'asdfasdfadf', 42, 64, '2022-12-12T11:32:49.334Z'),
(69, 'фыва', 42, 64, '2022-12-12T12:02:04.399Z'),
(70, 'фыва', 42, 64, '2022-12-12T12:02:42.503Z'),
(71, 'asdfasdf', 42, 64, '2022-12-12T12:03:10.975Z'),
(72, 'aasdfasdf', 42, 64, '2022-12-12T12:03:20.895Z'),
(73, 'adsf', 42, 64, '2022-12-12T12:03:22.319Z'),
(74, '234', 42, 64, '2022-12-12T12:03:23.207Z'),
(75, 'qwer', 42, 64, '2022-12-12T12:03:24.239Z'),
(76, 'sadf', 42, 65, '2022-12-12T12:06:21.271Z'),
(77, 'asdf', 42, 65, '2022-12-12T12:06:21.558Z'),
(78, 'asdf', 42, 65, '2022-12-12T12:06:21.782Z'),
(79, 'asd', 42, 65, '2022-12-12T12:06:21.991Z'),
(80, 'fas', 42, 65, '2022-12-12T12:06:22.198Z'),
(81, 'dfas', 42, 65, '2022-12-12T12:06:22.414Z'),
(82, 'dfa', 42, 65, '2022-12-12T12:06:22.622Z'),
(83, 'sdf', 42, 65, '2022-12-12T12:06:23.447Z'),
(84, 'asdf', 42, 65, '2022-12-12T12:06:23.718Z'),
(85, 'asd', 42, 65, '2022-12-12T12:06:23.918Z'),
(86, 'fas', 42, 65, '2022-12-12T12:06:24.127Z'),
(87, 'dfa', 42, 65, '2022-12-12T12:06:24.351Z'),
(88, 'sdfas', 42, 65, '2022-12-12T12:06:24.606Z'),
(89, 'dfw', 42, 65, '2022-12-12T12:06:25.590Z'),
(90, 'qer', 42, 65, '2022-12-12T12:06:25.815Z'),
(91, 'qwer', 42, 65, '2022-12-12T12:06:26.031Z'),
(92, 'qwerqwer', 42, 65, '2022-12-12T12:06:26.495Z'),
(93, 'qwe', 42, 65, '2022-12-12T12:06:26.735Z');

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
(34, '#Этаж 1, прихожая', '2022-12-09T13:50:05.588Z', 42, 'sdfsdf', '{\"x\":430,\"y\":267}', 0),
(35, '#Этаж 1, прихожая', '2022-12-12T06:39:00.656Z', 42, 'asdfasdf', '{\"x\":181,\"y\":299}', 1),
(36, '#Этаж 1, прихожая', '2022-12-12T06:39:45.929Z', 42, 'asdfasdf', '{\"x\":306,\"y\":498}', 1),
(37, '#Этаж 1, прихожая', '2022-12-12T06:54:41.363Z', 42, 'asdfasdf', '{\"x\":306,\"y\":498}', 1),
(38, '#Этаж 1, прихожая', '2022-12-12T06:55:09.074Z', 42, 'asdfasdf', '{\"x\":366,\"y\":349}', 1),
(39, '#Этаж 1, прихожая', '2022-12-12T06:55:54.002Z', 42, 'asasdf', '{\"x\":576,\"y\":216}', 1),
(40, '#Этаж 1, прихожая', '2022-12-12T06:56:34.146Z', 42, 'asdfasdf', '{\"x\":317,\"y\":660}', 1),
(41, '#Этаж 1, прихожая', '2022-12-12T06:56:52.858Z', 42, 'adfadsf', '{\"x\":492,\"y\":451}', 1),
(42, '#Этаж 1, прихожая', '2022-12-12T06:57:03.706Z', 42, 'sdfasdf', '{\"x\":456,\"y\":595}', 1),
(43, '#Этаж 1, прихожая', '2022-12-12T06:57:34.906Z', 42, 'sdfgd', '{\"x\":344,\"y\":229}', 1),
(44, '#Этаж 1, прихожая', '2022-12-12T06:59:00.682Z', 42, 'asfasdf', '{\"x\":117,\"y\":453}', 1),
(45, '#Этаж 1, прихожая', '2022-12-12T07:07:12.058Z', 42, 'sdfasdf', '{\"x\":446,\"y\":168}', 1),
(46, '#Этаж 1, прихожая', '2022-12-12T07:10:03.450Z', 42, 'asdfasdf', '{\"x\":572,\"y\":354}', 1),
(47, '#Этаж 1, прихожая', '2022-12-12T07:11:40.458Z', 42, 'asdfasdf', '{\"x\":192,\"y\":103}', 1),
(48, '#Этаж 1, прихожая', '2022-12-12T07:12:01.626Z', 42, 'asdfasdf', '{\"x\":436,\"y\":284}', 1),
(49, '#Этаж 1, прихожая', '2022-12-12T07:12:04.074Z', 42, 'asdfasdf', '{\"x\":588,\"y\":487}', 1),
(50, '#Этаж 1, прихожая', '2022-12-12T07:12:05.962Z', 42, 'asdfasdf', '{\"x\":40,\"y\":554}', 1),
(51, '#Этаж 1, прихожая', '2022-12-12T07:12:13.722Z', 42, 'asdfasdfasdf', '{\"x\":156,\"y\":561}', 0),
(52, '#Этаж 1, прихожая', '2022-12-12T07:12:15.354Z', 42, 'asdfasdfasdf', '{\"x\":385,\"y\":635}', 0),
(53, '#Этаж 1, прихожая', '2022-12-12T07:12:17.114Z', 42, 'asdfasdf', '{\"x\":166,\"y\":374}', 0),
(54, '#Этаж 1, прихожая', '2022-12-12T07:14:37.050Z', 42, 'asdfasdf', '{\"x\":497,\"y\":491}', 0),
(55, '#Этаж 1, прихожая', '2022-12-12T07:28:35.795Z', 42, 'afdasdf', '{\"x\":303,\"y\":449}', 0),
(56, '#Этаж 1, прихожая', '2022-12-12T08:02:42.845Z', 42, 'dfasdfasdfasdf', '{\"x\":249,\"y\":732}', 0),
(57, '#Этаж 1, прихожая', '2022-12-12T08:02:56.861Z', 42, 'asfasdfasdf', '{\"x\":287,\"y\":536}', 0),
(58, '#Этаж 1, прихожая', '2022-12-12T08:03:04.636Z', 42, 'asdfasdf', '{\"x\":391,\"y\":571}', 0),
(59, '#Этаж 1, прихожая', '2022-12-12T08:03:45.733Z', 42, 'sdfgsdfgsfg', '{\"x\":212,\"y\":576}', 1),
(60, '#Этаж 1, прихожая', '2022-12-12T08:25:55.998Z', 42, 'asdfasdf', '{\"x\":270,\"y\":383}', 1),
(61, '#Этаж 1, прихожая', '2022-12-12T08:25:59.333Z', 42, 'asfdasdf', '{\"x\":447,\"y\":324}', 1),
(62, '#Этаж 1, прихожая', '2022-12-12T08:27:07.550Z', 42, 'sdfgsdfgsdfg', '{\"x\":470,\"y\":667}', 1),
(63, '#Этаж 1, прихожая', '2022-12-12T08:29:02.173Z', 42, 'sdfasdfasdf', '{\"x\":265,\"y\":217}', 2),
(64, '#Этаж 1, прихожая', '2022-12-12T08:29:29.181Z', 42, 'dfasdf', '{\"x\":237,\"y\":386}', 2),
(65, '#Этаж 1, прихожая', '2022-12-12T10:25:10.443Z', 42, 'asdfasdf', '{\"x\":360,\"y\":320}', 2),
(66, '#Этаж 1, прихожая', '2022-12-12T10:25:13.250Z', 42, 'asdfasdf', '{\"x\":334,\"y\":493}', 2),
(67, '#Этаж 1, прихожая', '2022-12-12T10:44:00.860Z', 42, 'dfgsdfg', '{\"x\":436,\"y\":372}', 2),
(68, '#Этаж 1, прихожая', '2022-12-12T10:45:51.788Z', 42, 'Комментарий', '{\"x\":427,\"y\":226}', 2),
(69, '#Этаж 1, прихожая', '2022-12-12T10:47:06.188Z', 42, 'а', '{\"x\":350,\"y\":151}', 2),
(70, '#Этаж 1, прихожая', '2022-12-12T10:47:40.508Z', 42, 'asd', '{\"x\":185,\"y\":547}', 2),
(71, '#Этаж 1, прихожая', '2022-12-12T10:48:46.756Z', 42, 'sadf', '{\"x\":336,\"y\":632}', 2),
(72, '#Этаж 1, прихожая', '2022-12-12T10:49:25.820Z', 42, 'Комментарий №1ё', '{\"x\":99,\"y\":272}', 2),
(73, '#Этаж 1, прихожая', '2022-12-12T11:28:32.390Z', 42, 'dfghdfgh', '{\"x\":445,\"y\":123}', 2),
(74, '#Этаж 1, прихожая', '2022-12-12T11:28:43.790Z', 42, 'sdfgsdfg', '{\"x\":103,\"y\":430}', 2),
(75, '#Этаж 1, прихожая', '2022-12-12T11:28:53.608Z', 42, 'sdgsdfg', '{\"x\":157,\"y\":305}', 2);

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
(3, '0000-00-00', 42);

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
  MODIFY `commentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT для таблицы `markers`
--
ALTER TABLE `markers`
  MODIFY `markerId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
