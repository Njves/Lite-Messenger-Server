-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Янв 16 2019 г., 13:46
-- Версия сервера: 5.7.21-20-log
-- Версия PHP: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `host1664981`
--
CREATE DATABASE IF NOT EXISTS `host1664981` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `host1664981`;

-- --------------------------------------------------------

--
-- Структура таблицы `chat`
--

CREATE TABLE `chat` (
  `id` int(15) NOT NULL,
  `name` varchar(30) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT;
--
-- База данных: `host1664981_clicktester`
--
CREATE DATABASE IF NOT EXISTS `host1664981_clicktester` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `host1664981_clicktester`;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` text,
  `record` varchar(30) DEFAULT NULL,
  `rating` varchar(30) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `unique_id` int(11) UNSIGNED DEFAULT NULL,
  `password` varchar(191) DEFAULT NULL,
  `session` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `record`, `rating`, `email`, `date`, `unique_id`, `password`, `session`) VALUES
(1, 'Nikita', '5.6', '105', NULL, NULL, NULL, NULL, NULL),
(2, 'Njves', NULL, NULL, 'SoHumSTALKER@ya.ru', '2018-12-26 21:22:03', NULL, '$2y$10$KL/EYQsMr.jE0/V4OZMFJ.dI0xYnxjj3I1k24Axhcyg1xaQWGtB3e', 'off');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_users_unique` (`unique_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- База данных: `host1664981_users`
--
CREATE DATABASE IF NOT EXISTS `host1664981_users` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `host1664981_users`;

-- --------------------------------------------------------

--
-- Структура таблицы `chat`
--

CREATE TABLE `chat` (
  `_id` int(11) NOT NULL,
  `author` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `client` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `data` bigint(20) NOT NULL,
  `text` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chat`
--

INSERT INTO `chat` (`_id`, `author`, `client`, `data`, `text`) VALUES
(1, 'Lexa', 'Maks', 1542259924231, 'picasso'),
(2, 'Lexa', 'Maks', 1542260155005, 'Метод'),
(3, 'Lexa', 'Maksim', 1542267822797, 'Метод'),
(4, 'Lesha', 'Maksim', 1542267865993, 'Метод'),
(5, 'Петя', 'Оля', 1542269034214, 'расл'),
(6, 'Петя', 'Оля', 1542269052321, 'fgbgft'),
(7, 'Петя', 'Оля', 1542272882246, 'Оля ебать тебя в рот'),
(8, 'Оля', 'Петя', 1542272904050, 'фууу'),
(9, 'Оля', 'Марина', 1542276234946, 'тп'),
(10, 'Света', 'Марина', 1542276254662, 'ор'),
(11, 'Петя', 'Оля', 1542298898560, 'смбдп'),
(12, 'Петя', 'Оля', 1542298925212, 'енжбп'),
(13, 'Петя', 'Оля', 1542299037360, 'Метод'),
(14, 'Петя', 'Оля', 1542299650436, 'аито'),
(15, 'Петя', 'Оля', 1542301704324, 'rffhj'),
(16, 'Петя', 'Оля', 1542302022464, 'Привет'),
(17, 'Оля', 'Петя', 1542302149116, 'ghhfv'),
(18, 'Петя', 'Оля', 1542302436311, 'ggr'),
(19, 'Оля', 'Петя', 1542303022883, 'fhhgg'),
(20, 'Петя', 'Оля', 1542303144248, 'do c g'),
(21, 'Петя', 'Оля', 1542303157393, 'hjtdcg'),
(22, 'Петя', 'Оля', 1542303171221, 'allo jdg'),
(23, 'Петя', 'Оля', 1542303526371, 'gnff'),
(24, 'Оля', 'Петя', 1542303553798, 'dffr'),
(25, 'Оля', 'Петя', 1542303570984, 'gmbcf'),
(26, 'Петя', 'Оля', 1542303981776, 'fnbfvn'),
(27, 'Петя', 'Оля', 1542304419836, 'dvxx m'),
(28, 'Петя', 'Оля', 1542304517593, 'cxx n'),
(29, 'Петя', 'Оля', 1542304619316, 'fnh'),
(30, 'Петя', 'Оля', 1542304737091, 'z xz'),
(31, 'Петя', 'Оля', 1542339200308, 'privet'),
(32, 'Петя', 'Оля', 1542339219295, 'privet'),
(33, 'Наташа', 'Оля', 1542339260240, 'привет'),
(34, 'Наташа', 'Оля', 1542339263680, 'как дела'),
(35, 'Петя', 'Оля', 1542540792417, 'fgvcd');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `login` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `unique_id` int(11) UNSIGNED DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `session` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `email`, `date`, `unique_id`, `password`, `session`) VALUES
(1, 'Njves', 'mrpostik@gmail.com', '2018-11-07 18:57:44', NULL, '$2y$10$5vAOU8.tSyrUkC77eH3TT.78qjXkgdQwA4W0K.vlZwXjhy5Mgn2D.a', NULL),
(2, 'NJves1', 'xyina@mail.ru', '2018-11-07 19:03:41', NULL, '$2y$10$Krj0rpIcYxbALRlDrU1LmO8yIzT9uLfVGqGF6Ne5FTal4CtIVQqBK', NULL),
(3, 'NJves12', 'login.3@i.ru', '2018-11-07 19:10:29', NULL, '$2y$10$3mwcmhbtHJpgz0VeaqpA/uO.Ecnj4fpO0SzIQZP59zKlzxIp4B3wy', NULL),
(4, 'Shiroban', 'egor.lyg11@i.ru', '2018-11-07 20:06:22', NULL, '$2y$10$/W0GQeM3MY4FfC2oJ3iEI.HArSDti2ikuVqh/R9xcQ4jl8ASgvwE.', NULL),
(5, 'Shiroban1', 'libaffallo-5862@yopmail.com', '2018-11-07 20:06:48', NULL, '$2y$10$lZJHwRrEvUgYqkds.ASTg.aWITHrMd1Klfv6Xw4HTQwUreHuSC71O', NULL),
(6, 'Shiroban2001', 'postik@yahoo.ru', '2018-11-07 20:12:35', NULL, '$2y$10$h7WbYs6pWLC0gxDMGt4QP.wAl7surz6/EatfoQiwHqi6XDnHlL2fe', NULL),
(7, 'Shiroban20012', '-Login-@mail.ru', '2018-11-07 20:13:14', NULL, '$2y$10$gq/WMQrcyWFGPdUTX8EOLOzmpKGXbB0H2r54pEX.5veGayn2BmUNW', NULL),
(8, 'rofl', 'mrp2ostik@gmail.com', '2018-11-09 15:55:24', NULL, '$2y$10$d5Ovb6xBd1uzauoJSqiZwu4bea9Co04T12n4bkUNy9Helg8w6f36u', NULL),
(9, 'fykhf', 'cjbds', '2018-11-11 10:44:27', 151718, '$2y$10$5OvHjrIsCfXUw4sHchEjs.UaI37ZXmCHQQ07aLiMPdA/byW7N.8/2', NULL),
(10, 'fykhfkk', 'cjbd@gmsil.com', '2018-11-11 10:44:49', 8, '$2y$10$TDEyteSpDaXHS7ojC00vo.2GV.Fs5e4LZoTS0VA4j4gny534TlKrG', NULL),
(11, 'fhmh', 'dgjht@mail.com', '2018-11-11 19:38:35', 74, '$2y$10$CxHkPFr/9BHEwSao/Hr12uEXMmHWy63OYQEeKwLp25YcRG3iCu5va', NULL),
(12, 'cbnh', 'chhf@mail.com', '2018-11-11 19:46:49', 1, '$2y$10$/bWF.RS6jz.TEcuBfXURSOLRk9qwHBPq7LtwsT80IAlP8lPkjC5SW', NULL),
(13, 'Prikol Krytoi', 'prikol@mail.ru', '2018-11-11 19:55:55', NULL, '$2y$10$DJ7hJACy7bT1vBzoJHdXTusnuNlyrtGAS.Ez4ckO6Utv0pAllWKu6', NULL),
(14, 'Prikol2', 'prikol1@mail.ru', '2018-11-11 20:00:08', NULL, '$2y$10$bCo8qEgYz5aoDFQXwVJ4N.zrdtErM16ZofHDnFhQBl45SfiRMsNUS', NULL),
(15, 'Prikol21', 'kryoiemail@mail.ru', '2018-11-11 20:05:32', NULL, '$2y$10$WfQtUOXa27CrIVpWLMhwY.jw701NzUgcVCH05ThnwzPFCQktvfyUe', 'on'),
(16, 'Prikol213', 'kryoiem1ail@mail.ru', '2018-11-11 20:05:54', NULL, '$2y$10$4T3rs5VLYALVkoYc0U1fGepFu9Is9yfWUIECsoED/I6EoY1NqtTTm', NULL),
(17, 'Prikol2134', 'kryoie1m1ail@mail.ru', '2018-11-11 20:07:14', NULL, '$2y$10$Bc7csNSRVoKrkqe3qM4Xnee8Cc.a64HnIEPPsCvWNBBuZe97Vi1ai', 'off'),
(18, 'ghbf', 'dgnh@mail.com', '2018-11-11 20:17:40', 215, '$2y$10$mo7CdXHeKQKvFPl86426LeO.KB4ak6GG09Lfq1Q03BzsPgZJT3zTq', 'off'),
(19, 'jgddfgh', 'dghhh@gmail.com', '2018-11-11 20:24:02', 7, '$2y$10$E16YhAfwBl90xvwaW13RdOEge0s6cRdgfbGKFrfyIZSb6v8RvV7UC', 'off'),
(20, 'opuibv', '[C@41b65ea8@mail.ru', '2018-11-11 20:30:57', 4816, '$2y$10$oIs07EAc6IJI7qFQDhpNYOPHPx.VO2i9n7LI7l5BgJUqNRIeQ1Et2', 'off'),
(42, 'fnsuix', '[l, x, t, v, k, p]@mail.ru', '2018-11-11 20:54:52', 0, '$2y$10$okq3EejGen8UJ0vgAAIBTuaM0lbbdDuYE84fHAJeF1MWa/ZN/VR6m', 'off'),
(43, 'hkhffcv', 'fghjgd', '2018-11-11 21:09:09', NULL, '$2y$10$mT28gVJxyUnHxc9oquomPul2KRN8ZyzY6Sh07SZQ0D6lH.a9g6V/C', 'off'),
(44, 'yyfff', 'ghnvc', '2018-11-11 21:13:27', NULL, '$2y$10$MCtpHh9uc8niMHAUhdGefecFWbRWTil0oDG.rhJ3kyfY8qaZEZkYC', 'off'),
(45, 'hjgf', 'fhnhf', '2018-11-11 21:17:15', NULL, '$2y$10$v/0HnFm/EiOj3IACs4mOvekUq00tl7JBXx1X/6LmX62S8Rv9mRoki', 'off'),
(46, 'gcvbh', 'dgbbgf', '2018-11-11 21:18:56', NULL, '$2y$10$y3vFqvqrUxmX1SF7iV7jZ.xewlswm34ATc0dgXBvloGSxba2tqKju', 'off'),
(47, 'Prikol21345', 'wqkxpd@mail.ru', '2018-11-11 21:21:12', NULL, '$2y$10$LkUciS5Bz8vdrEiAKWJymesUVkPCJMIRVahNJYExBBtGbtG70vaYK', 'off'),
(48, 'tgfcbb', 'gnnvfd', '2018-11-11 21:40:36', NULL, '$2y$10$AQMOXNMqRdaVAvewfGhjTeaWdbt.I0S.U8jep9N6hFjHBzZlbaL8G', 'off'),
(49, 'Lohin1', 'mrposti12@gmail.com', '2018-11-11 21:43:33', NULL, '$2y$10$lMkstqq6p3gxaImHLS0n1.u5/51KXHp8diQQDWYOq/NFrK473OYW2', 'off'),
(50, 'Login11', 'RoflanP1@mail.ru', '2018-11-11 21:50:52', NULL, '$2y$10$7JhU47JVUyl1aq2S/xHVrO8471UKUi22tJ1.TBBJk.IPhGCfprYQq', 'on'),
(51, 'yuhffrs', 'lggc@mail.com', '2018-11-11 21:50:54', NULL, '$2y$10$/VSfmKJ9hHJd0gh0uL8ZR.lESJTwYUI88aj9ibtDNLyIRRu.oRbxm', 'off'),
(52, 'romalox', 'romalox@gmail.com', '2018-11-12 05:45:40', NULL, '$2y$10$ESJa3RxDSkXovsGXLteotOEcNx4xOY27qgoguHEFY7JogcXz9w8.u', 'on'),
(53, 'egor15', 'lo8qimen@gmail.com', '2018-11-12 06:21:25', NULL, '$2y$10$R6nKluD3/TKrOb8TF.dW4u4CIMBwlmnaOobi8CM3awZBwJp3iOrUC', 'off'),
(54, 'egor15v', 'lo8qimben@gmail.com', '2018-11-12 06:24:31', NULL, '$2y$10$PHXwOXL6jW5MP.Zf1nh14OLI9cddRTDUSDfgEyGCnfY4A4FIoTv.a', 'off'),
(55, 'egor15vgh', 'lo8qimfbcen@gmail.com', '2018-11-12 06:24:53', NULL, '$2y$10$ZR9E2Vvb05SO6JfOSGoCQOsJiccqEbay.K4i7D6wOL19pSZgkRvPi', 'off'),
(56, 'Hyfuif', 'jcjcjci@msil.com', '2018-11-12 06:33:16', NULL, '$2y$10$XsNLJtfDrjmtzV0HbE9ORuVXmqc.sEUN.Ih.pfpgNYRHI6VcegNkC', 'off'),
(57, 'sanya', 'hoh@gmail.com', '2018-11-12 06:59:10', NULL, '$2y$10$lHIlv5K/05a9kiDBcv30R.pfr5yg.AldXlp8vB7V7P09yA5FEZedO', 'off'),
(58, 'sanyag', 'horh@gmail.com', '2018-11-12 07:00:38', NULL, '$2y$10$M7.bySrgt2vC792SQywBpuBKWlPpseVaPqQLywdT3GAGV5D7ykeUW', 'off'),
(59, 'vvcdvbg', 'ffggg@nam.com', '2018-11-12 10:51:06', NULL, '$2y$10$O/19xNztKN2zd8Mq/DrpW.6Z5BZvMVZLkU5HBeHmJ5TFbHDwHZyHS', 'off'),
(60, 'maloy', 'mrpostin@gmail.com', '2018-11-12 12:26:10', NULL, '$2y$10$xmClfBlfOfG2XtdHhTyEfeJwCeYQSiocbyqxCRSrdxtiTRNsEiwPC', 'off'),
(61, 'yjhgf', 'dfghhs@mail.com', '2018-11-12 15:53:22', NULL, '$2y$10$/JYog3gk/LYQwNr9A7yN6u3w9dpfwFY99j2eW//lrdFWcmnBUdM5u', 'off'),
(62, 'ccfngff', 'ffghgf@gmail.com', '2018-11-12 18:59:04', NULL, '$2y$10$M.ieE8NbMnQ2iGOhIuxGc.m.LrJy8L8wzuHdMGRpjGzUJdtO5nRzu', 'off'),
(63, 'grfjjf', 'dgmht@gmail.com', '2018-11-12 20:04:51', NULL, '$2y$10$2X.kPVRdGMYBMR9q2FwTeO3i53UqmHYwO3FKZghWEiziE1te1negK', 'off'),
(64, 'hyuhhds', 'fgjtr@gmail.com', '2018-11-12 20:08:04', NULL, '$2y$10$UuprWPCUCrlUnUQX/A11TOlayOyKmI3d7ZApava7cV5rl7xtqJi8q', 'off'),
(65, 'hgffjj', 'fddhht@gmail.com', '2018-11-12 20:09:00', NULL, '$2y$10$fkgRT6md5MY0BhgBCf5eUurs0upRf199wvDlegtjbcc.6cYw.dBd.', 'on'),
(66, 'Gleb', 'glebkrytoi@mail.ru', '2018-11-13 14:07:38', NULL, '$2y$10$iqn4dmVWdcWXa0BNvfoef.VLbFrm4ZoeQShIsFwAOK6KdQzzptPu6', 'off'),
(67, 'dhdjrid', 'sgsgeq@gmailzl.com', '2018-11-13 19:41:31', NULL, '$2y$10$ehLHbhOd117g4MW2cLHb/ue8xEz.eUHqnkNpCX7Hz2bNJo4SKAuiG', 'on'),
(68, 'fcfh', 'ddgg@gmail.com', '2018-11-13 19:43:39', NULL, '$2y$10$f5BtkSR3FtmhUEh9jOw4yupoJsTsvL8Zn8ZV0Ug/pPF15aegaSFfK', 'on'),
(69, 'dehht', 'tjhdea@gmail.com', '2018-11-13 19:46:00', NULL, '$2y$10$znK40ilk4pc4NFPtE8vQeeH9dpCtojfNa9px51NAb1wZ/MyOpwUwe', 'off'),
(70, 'thjddc', 'rhbder@gmail.com', '2018-11-13 19:46:16', NULL, '$2y$10$XxO.0eg/WbZUEPbdHqnB5OhjINtjlutKGqL8HnSC7icIU97Vqb0eG', 'on'),
(71, 'hgdvh', 'gbnhyr@gmail.com', '2018-11-13 19:50:07', NULL, '$2y$10$TzaFMT.UEt8hFgDQ697vq.4DrkhOxdDQzdeZQQ.lSrn/JEwVRbrRG', 'on'),
(72, 'ghnfyjj', 'hhgcv@gmail.com', '2018-11-13 19:57:27', NULL, '$2y$10$jfiVGFi8oDfQSKWj3KFHAuKqy33099Pn/203gYDk3Vamwrfm2jzha', 'off'),
(73, 'ghjjrd', 'huhhfr@gmail.com', '2018-11-13 19:57:41', NULL, '$2y$10$4BuADbUukXVVudqu3UBAretqO2cXtdhct2pO/F.pgVzldaPbBDNti', 'on'),
(74, 'hmgff', 'rhhfff@gmail.com', '2018-11-15 22:12:29', NULL, '$2y$10$HE55MI7gv3h9ILsNPMIhT.Bw0yyTkLn9Ak9.Y.U5CnsIy.AbQzomO', 'off'),
(75, 'rhjhgfv', 'fgjhfbmh@gmail.com', '2018-11-15 22:18:36', NULL, '$2y$10$oDwT3a7xkMCM5K.MKvxWV.b6SdhHH9UMSUDTx8jv1tg8JRUwMwqQK', 'off'),
(76, 'ghhfrd', 'fhhffg@gmail.com', '2018-11-15 22:21:02', NULL, '$2y$10$mgs/Dn8sEKf2oRKQPpJqQuA3MYC6P4EyWdWq.D1YPQxEUooOI1jRq', 'off'),
(77, 'Njves111', 'SoHumSTALKER@ya.ru', '2018-12-26 21:24:31', NULL, '$2y$10$.0gVHbOI9rL6PjicFyf14OsJaQIG58sPHkS2A6TJ4UKAHTOSE0HfW', 'off'),
(78, 'MaksimStar', 'maksimStar@mail.ru', '2018-12-26 21:28:19', NULL, '$2y$10$G0dR/LU9U7CdPkdyGskB4e/vyrOyW.vqL5xKDJgK0iTePwNGEBFbm', 'off'),
(79, 'Njves34', 'mrp4ostik@gmail.com', '2018-12-31 19:27:53', NULL, '$2y$10$tYo2.6ieP/4qV/pffyAML.sEaNU.PUC.KNXvYx1n.P892IckqKb5y', 'off'),
(80, 'Njves34r', 'mrr4os4tik@gmail.com', '2018-12-31 19:28:51', NULL, '$2y$10$Qx.YJHbx2CssMi4LIiKfc.SM5rOUU2oAVLpj9p6A.uI/GcBsUGk7C', NULL),
(81, 'Njv3es34r', 'mrr4o44tik@gmail.com', '2018-12-31 19:36:58', NULL, '$2y$10$GIGDa3NpiCB4V9PzRpJOs.axauXf9x4gjBH1OdEGlXxKlB.pv9Bd6', NULL),
(82, 'Njv53es34r', 'm3rr4o44tik@gmail.com', '2018-12-31 19:37:26', NULL, '$2y$10$mM7wNZmzTO6NVRfRPq6QTeov9O80fZpledvDoTfTHO.5SCKYyS0YW', NULL),
(83, 'tytryhht', 'rtytry@fgh.ru', '2019-01-05 11:49:23', NULL, '$2y$10$yXOmEJAScrLcRGFmLjLRsO1RgZKyR5teBArY3j/3cq.fLyIKSMj9O', NULL),
(84, 'ty3ryhht', 'rtytr3y@fgh.ru', '2019-01-05 11:50:27', NULL, '$2y$10$//D97Q8WP418A6tiXQaHNedM0Ygsrz/Fv0us22Z5IUQLfnktH2Zmy', NULL),
(85, 'eogr', 'ininubs@nail.ru', '2019-01-05 13:00:28', NULL, '$2y$10$5E9LG4ge2UG03vSSDGRXs.jJhepswb3t9PeuHJUwSC3A5NyInX.PW', NULL),
(86, 'vycyddd', 'Name@yxyx.ru', '2019-01-05 22:47:14', NULL, '$2y$10$JLViRPuWL8jD5CxL5JYzN.HXqseK8dcbB3xNzFsdKJOsl1PGB3RoW', NULL),
(87, 'xtxtvb', 'Namegdz@mail.ru', '2019-01-05 22:49:09', NULL, '$2y$10$bdblQtumvuidh6J1O8gOwuQkH0htulQtgKl9agUBTkTRhOD.XUj1a', NULL),
(88, 'namer', 'mrwt4t@mail.ru', '2019-01-05 22:50:50', NULL, '$2y$10$xczFv68IyVZ2hFFxYWakyef9jA3DVXVPj/MXciyaBXdmu3iN.GxLi', NULL),
(89, 'ycyxtdf', 'Namecxc@mail.ru', '2019-01-05 22:52:29', NULL, '$2y$10$6Cp5bm5MrIo61u9TsGSdKuVUdDuYRLb//cLrO0.rkQPvgvcNQgLEe', NULL),
(90, 'name12', 'rgjrgj@mail.ru', '2019-01-06 12:38:59', NULL, '$2y$10$g9xxt3uTALpG0/kpr5SRg.JMyD1ncXKik4TVgcog8iCjVBQY3hU/a', NULL),
(91, 'rofl1 fe', 'mrjroe@mail.ru', '2019-01-06 19:06:33', NULL, '$2y$10$y8vsqqE9jTj.P6jYGwP7M.U9IfxeG5pFtYHhzeoZ/lw6Cd4svsB7q', NULL),
(92, 'bdbdhbd', 'Namedev@mail.ri', '2019-01-06 19:21:24', NULL, '$2y$10$nhODRUsYphZwHxl5.GqgiOX32Ty.Em.BEykbl3zZo7PCJb5jrkY8O', NULL),
(93, 'ehewhn', 'Nameg_dz@mail.ru', '2019-01-06 19:31:56', NULL, '$2y$10$VofvAoDvAH/3p1iYLoRMUO2RivZtzjt1MZvlZa5KJ7BaeHibuwRi6', NULL),
(94, 'jeehgf', 'Namesgssg@msil.ru', '2019-01-06 19:33:36', NULL, '$2y$10$k67qTaPm5hLFyBbKeLBdCeLzN//EokYimVdMRL5oub0wRcVS6TW5e', NULL),
(95, 'vsfsc g', 'Namewsb@ko.ru', '2019-01-06 19:35:23', NULL, '$2y$10$nr3..F/UGFaxhdBK.AAf.Ow/rKA2dDQSe.fCEk7JSBdXqJCPetClS', NULL),
(96, 'jhftdg', 'Namefc@mail.ru', '2019-01-06 19:39:36', NULL, '$2y$10$ogfBZemO7h1Cgtt0e55CZOKd6/LriURGt1Y/AYveTpSmyYEQ9Xw5W', NULL),
(97, 'rofl21', '2334j@mail.ru', '2019-01-06 20:27:08', NULL, '$2y$10$So8ZeGxvWvcZ3FV2stqIM.hKICm1N31afx4qGSbNN1AXwBv9z.I6K', NULL),
(98, 'ffnjdf', 'Namedvfd@mail.ru', '2019-01-07 20:00:54', NULL, '$2y$10$DSCSF6Ue.bDy4o3vBW6fZe4ACPrYzShsp6VIqYYB9JTRMdU.twOg2', NULL),
(99, 'ddxhts', 'Name45@mail.ru', '2019-01-07 20:05:26', NULL, '$2y$10$nukKarHhQyWZwNKQnxM91.ygK6HNEsG93tSYH1E1wQAWQ0F9iEz/q', NULL),
(100, 'fnfnfd', 'Namesscc@gfv.ru', '2019-01-07 20:29:39', NULL, '$2y$10$yelVYvUg/u/1a.abimB9I.e0NoHP9dUQC/5uIopFk2lU1YhBq3wHW', NULL),
(101, 'iivcvbf', 'Namejnf@mail.ru', '2019-01-08 10:16:02', NULL, '$2y$10$eNlZi5RmLCjdbPIBu7TL/O/MmsXjExVUmM/7ECGt.ovxEMToUxkOu', NULL),
(102, 'hbfhm', 'Namehc@vb.ry', '2019-01-08 17:22:00', NULL, '$2y$10$MMsTeIw57Vo4YgmGLSmJru4K1ueYEBDwc6tNETXL/TfZpy9MBGQHq', NULL),
(103, 'xD degvsdhv', 'Namegwdb@hge.ru', '2019-01-08 19:28:55', NULL, '$2y$10$zU/TMV16Fo0eTRYEGiiuR.km0pZ4rr.n7gbsAW.IMxBNoe9ME1IpK', NULL),
(104, 'vggfd', 'Nameljg@mghj.ry', '2019-01-08 20:05:46', NULL, '$2y$10$7ECY8336GAuFsHS/r.W2dO2IpDAVTFruJLrOs/jAf64WxotxODrje', NULL),
(105, 'sf add d', 'Namebvd@msi.ru', '2019-01-09 20:31:26', NULL, '$2y$10$DI5uFHatG1y5f2iRatOB.O6ydgydxRyomCjPjHclD149m3jBYoy3K', NULL),
(106, 'hhgggf', 'Namekjg@xc.ru', '2019-01-09 20:55:08', NULL, '$2y$10$mdaBCWXPYqtkor3YfvIbqO.HFjkpUKVU352.kPFtWyBnkixoaJi0a', NULL),
(107, 'hjthf', 'Namegjf@mJh.ru', '2019-01-09 21:09:44', NULL, '$2y$10$BKQ3QsHcdvUjCqCBN36zY.iSV5.pC5x8dtfA6jdOlLoNGhVdpAiMa', NULL),
(108, 'njgbn', 'Namehn@ma.ri', '2019-01-09 21:12:05', NULL, '$2y$10$ExtJyZcfkD6FOXXioScPHuYE4zXXQY1dgAYevr5aj/ZvHgfNRlc8G', NULL),
(109, 'gjjgc', 'hjfxb@mail.com', '2019-01-11 19:25:39', NULL, '$2y$10$1tjIux07LjospB/930umbOU8JNif/i7HtF94s4deF6B82mDW6Nle6', NULL),
(110, 'gjjf', 'hjjjg@gmail.com', '2019-01-11 19:57:57', NULL, '$2y$10$NllJBx0xkRojSkSjFVK3AepcbgaDFsDwXtcNDYT9Xoa2ARHEvcNLK', NULL),
(111, 'jjthjj', 'gjjh@hotmail.com', '2019-01-11 19:58:21', NULL, '$2y$10$AR0vEfCATnCjbLdzvGeTteyB70o50rCYwKHq9EXncNlyzbGNd8Nli', NULL),
(112, 'egorks', 'typoi@gmail.com', '2019-01-11 20:08:07', NULL, '$2y$10$mE1ibNHwPJvXnaIh7grz8.RqrrePQh4eozPwPWLpK91/Pie9wCQZO', NULL),
(113, 'maksim', 'maksim2003@gmail.com', '2019-01-12 05:57:03', NULL, '$2y$10$pFNUJf5ZM/voofVdpAXZL.63BdslFCRW.E7aPqxpbiOxM6a7yWJZy', NULL),
(114, 'nikitaloz', 'nikitakrytoi@gmail.com', '2019-01-12 11:12:35', NULL, '$2y$10$VezTTPdkRZn3p/QxzSDnTOcqaAvE7mwDrsP6qE/aMtAvhjDdAQvIi', NULL),
(115, 'efotr', 'tohe@gmail.com', '2019-01-12 18:22:55', NULL, '$2y$10$OkX7SLg2mJPbeuXCo7eQ0.SwSp6gW7Idd45VXgG8sJHnl/sBu/OqK', NULL),
(116, 'xt free fgj', 'fgkjrf@gmail.com', '2019-01-13 17:42:45', NULL, '$2y$10$naiUNv.rrmw5Y7jtljbKrODAtSXdJklp0Unw5ILVU23qhY5h33DPW', NULL),
(117, 'Rofl1', 'optimus@mail.ru', '2019-01-14 19:09:15', NULL, '$2y$10$6k0IHwlIGmO85ALLZj3Dxuct1JwHUef.RkLWR5LOHzchi60gnk8G2', NULL),
(118, 'Rofl11', 'optimus1@mail.ru', '2019-01-14 19:14:08', NULL, '$2y$10$LRCKJ9O4dXpuaN0yeN/eDevbVD2ej4jB4/cIppM2g3D6FLBN32Yka', NULL),
(119, 'MaksimS', 'Star@mail.ru', '2019-01-16 11:20:05', NULL, '$2y$10$z13pwUwtErPc6LSswKTWt.MN5jN4BSqH7XtlFRLcPFZ75oGDL753a', NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_users_unique` (`unique_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `chat`
--
ALTER TABLE `chat`
  MODIFY `_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
