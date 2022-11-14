-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 12 2022 г., 17:54
-- Версия сервера: 8.0.30
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `impro`
--

-- --------------------------------------------------------

--
-- Структура таблицы `impro`
--

CREATE TABLE `impro` (
  `id` int NOT NULL,
  `name` varchar(150) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `age` varchar(10) NOT NULL,
  `createDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `impro`
--

INSERT INTO `impro` (`id`, `name`, `phone`, `age`, `createDate`) VALUES
(1, 'Дэвид', '88997654', '15', '2022-11-12 17:05:31'),
(3, 'Алиса', '4875479', '11', '2022-11-12 17:06:26');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `impro`
--
ALTER TABLE `impro`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `impro`
--
ALTER TABLE `impro`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
