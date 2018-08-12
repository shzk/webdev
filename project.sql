-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:8889
-- Время создания: Авг 04 2018 г., 16:17
-- Версия сервера: 5.6.38
-- Версия PHP: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `project`
--

-- --------------------------------------------------------

--
-- Структура таблицы `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `about`
--

INSERT INTO `about` (`id`, `name`, `description`) VALUES
(1, 'Денис Токарев', 'Я веб-разработчик!');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(11) UNSIGNED NOT NULL,
  `post_id` int(11) UNSIGNED DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `text` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `text`, `date_time`) VALUES
(1, 3, 1, 'комментарий номер один', '2018-07-22 16:49:43'),
(2, 3, 1, 'второй комментарий к посту 51', '2018-07-22 17:12:50'),
(3, 3, 1, '3 коммент', '2018-07-22 17:24:57'),
(4, 3, 3, 'комментарий от пользователя', '2018-07-22 17:47:01');

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `text` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_img` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_img_small` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `author_id` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `text`, `post_img`, `post_img_small`, `date_time`, `author_id`) VALUES
(3, 'Запись 2', 'Текст второго поста', '553342585793.jpg', '320-553342585793.jpg', '2018-07-22 15:34:35', 1),
(4, 'Запись новая', 'Новое содержание записи', '154678626827.jpg', '320-154678626827.jpg', '2018-07-22 19:06:35', 1),
(5, 'пост с автором', 'Текст записи поста с автором', '863423798056.jpg', '320-863423798056.jpg', '2018-07-22 21:51:42', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `secondname` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'user',
  `avatar_small` varchar(191) DEFAULT NULL,
  `recovery_code` varchar(191) DEFAULT NULL,
  `recovery_code_times` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `secondname`, `avatar`, `country`, `city`, `role`, `avatar_small`, `recovery_code`, `recovery_code_times`) VALUES
(1, 'den4@me.com', '$2y$10$ORLsx2.Hu/d/3YSTGKQniu5WpSp.jidkLbXDCJ0BBtcj7f6cgLQ5q', 'Denis', 'Tokarev', '917651029855.jpg', 'Russia', 'SaintP', 'admin', '48-917651029855.jpg', '5BdOLVal2KCreU1', 0),
(3, 'den4@com', '$2y$10$j8NDjio5vHOrvfIXBIDID.RAi0m8rSAKyXUTMRoE/3VB/i0LA/.2.', 'test', 'user', '935291319856.jpg', '', '', 'user', '48-935291319856.jpg', NULL, NULL),
(4, 'den4@iclo45ud.com', '$2y$10$RQjgs9MUoqycfCcapDup0O37FsGpQ7vdRyxBZUfRK8Wnf0xlT4ZRm', '', '', '', '', '', 'user', NULL, NULL, NULL),
(10, 'ded@ded.de', '$2y$10$xGLjvGO6xDUnNh7eVHH9XOaQWic3puCaB3tzHLSOry5h.gSunOdau', 'Deder', 'Dedov', '', 'Russia', 'SaintP', 'user', NULL, NULL, NULL),
(11, 'de.niska.tokarev@gmail.com', '$2y$10$gmCm6NLiht27szmmULd7j.JU9dxidD6ZTXzbA/17nSSsUbLnMVxpi', '', '', '', '', '', 'user', NULL, NULL, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_comments_post` (`post_id`),
  ADD KEY `index_foreignkey_comments_user` (`user_id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_posts_author` (`author_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;