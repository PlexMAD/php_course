-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Май 10 2023 г., 01:55
-- Версия сервера: 10.4.27-MariaDB
-- Версия PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `database`
--

-- --------------------------------------------------------

--
-- Структура таблицы `#`
--

CREATE TABLE `#` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `#`
--

INSERT INTO `#` (`id`, `name`, `data`) VALUES
(1, 'Тема 1', '2023-05-09'),
(2, 'Тема 2', '2023-05-09'),
(3, ' ваыывааы', '2023-05-10'),
(4, ' ваыыав', '2023-05-10'),
(5, ' ваыыавdsf', '2023-05-10'),
(6, ' 123', '2023-05-10'),
(7, ' dfdf', '2023-05-10'),
(8, ' sdfdfssdf', '2023-05-10');

-- --------------------------------------------------------

--
-- Структура таблицы `channel`
--

CREATE TABLE `channel` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `data` date NOT NULL,
  `liked` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `channel`
--

INSERT INTO `channel` (`id`, `name`, `description`, `data`, `liked`) VALUES
(1, 'Канал 1', NULL, '2023-05-09', NULL),
(2, 'Канал 2', NULL, '2023-05-09', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `field`
--

CREATE TABLE `field` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(512) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `field`
--

INSERT INTO `field` (`id`, `name`, `description`, `data`) VALUES
(1, 'Темы', 'Вводимые темы', '2023-05-09');

-- --------------------------------------------------------

--
-- Структура таблицы `relation`
--

CREATE TABLE `relation` (
  `#_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `relation`
--

INSERT INTO `relation` (`#_id`, `field_id`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `sms`
--

CREATE TABLE `sms` (
  `id` int(11) NOT NULL,
  `#_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  `description` varchar(500) NOT NULL,
  `data` date NOT NULL,
  `save` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `sms`
--

INSERT INTO `sms` (`id`, `#_id`, `user_id`, `channel_id`, `description`, `data`, `save`) VALUES
(3, 1, 1, 1, '1213241', '2023-05-09', 1),
(4, 2, 1, 2, '12324124214', '2023-05-09', 0),
(5, 1, 0, 2, 'zxfcxfcvcvc', '2023-05-09', 0),
(6, 2, 0, 2, '', '2023-05-09', 0),
(7, 1, 0, 1, 'asdfdfssdffsddfsfds', '2023-05-09', 0),
(8, 0, 0, 1, '', '2023-05-10', 0),
(9, 0, 0, 1, 'dsffsdвамчсыав', '2023-05-10', 0),
(10, 0, 0, 1, 'dsffsdвамчсыаввавы', '2023-05-10', 0),
(11, 0, 0, 1, 'dsffsdвамчсыаввавы', '2023-05-10', 0),
(12, 6, 0, 2, 'dfsdff', '2023-05-10', 0),
(13, 6, 0, 1, 'fsdfsdfsd', '2023-05-10', 0),
(14, 7, 0, 1, 'sdfsdf', '2023-05-10', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `email`, `password`) VALUES
(1, '1234', '123@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, '12345', 'zxc@gmail.com', 'zxc');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `#`
--
ALTER TABLE `#`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `channel`
--
ALTER TABLE `channel`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `field`
--
ALTER TABLE `field`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sms`
--
ALTER TABLE `sms`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `#`
--
ALTER TABLE `#`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `channel`
--
ALTER TABLE `channel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `field`
--
ALTER TABLE `field`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `sms`
--
ALTER TABLE `sms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
