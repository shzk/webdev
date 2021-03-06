-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:8889
-- Время создания: Авг 29 2018 г., 21:00
-- Версия сервера: 5.7.21
-- Версия PHP: 7.1.19

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
  `description` text NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `about`
--

INSERT INTO `about` (`id`, `name`, `description`, `photo`) VALUES
(1, 'Денис Токарев', '<p>Я веб разработчик из СПб. Мне 35 лет. Занимаюсь разработкой современных сайтов и приложений. Мне нравится делать интересные и современные проекты. Этот сайт я сделал в рамках обучения на одном из курсов по Fullstack разработке.</p>\r\n\r\n<h3>Что я умею</h3>\r\n<p>Меня привлекает Frontend разработка, это не только моя работа, но и хобби. Также знаком и могу решать достаточно сложные задачи на Backend. Знаком с современным workflow и использую его в своей работе, работаю с git репозиториями и сборкой проекта на gulp.</p>', '993421632064.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `cat_title` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `cat_title`) VALUES
(1, 'путешествия вперед'),
(10, 'трэш');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(11) UNSIGNED NOT NULL,
  `post_id` int(11) UNSIGNED DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `text` varchar(191) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- Структура таблицы `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `skype` varchar(255) NOT NULL,
  `vk` varchar(255) NOT NULL,
  `fb` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `secondname` varchar(255) NOT NULL,
  `github` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `lat` varchar(9) NOT NULL,
  `lng` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `contacts`
--

INSERT INTO `contacts` (`id`, `email`, `skype`, `vk`, `fb`, `tel`, `address`, `name`, `secondname`, `github`, `twitter`, `lat`, `lng`) VALUES
(1, 'den4@me.com', 'datokarev', 'https://vk.com/tokarevda', 'https://fb.com/tokarevda', '+79119358494', 'Ru, SaintP, Solidarnosti street 12', 'Denis', 'Tokarev', 'https://github.com/shzk', 'https://twitter.com/shzk', '59.944002', '30.306271');

-- --------------------------------------------------------

--
-- Структура таблицы `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) UNSIGNED NOT NULL,
  `period` varchar(191) DEFAULT NULL,
  `title` varchar(191) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `jobs`
--

INSERT INTO `jobs` (`id`, `period`, `title`, `description`) VALUES
(3, 'март 2013 &mdash; август 2015', 'Веб-разработчик, Cloud studio', 'Frontend и Backend для клиентских проектов студии. Работа над студийной CMS для интернет магазинов. Участие в разработке CRM системы &ldquo;Sky CRM&rdquo;. Стек используемых технологий: Git, JS, Angular.'),
(4, 'сентябрь 2015 &mdash; январь 2017', 'Разработчик интерфейсов, Яндекс', 'Работы в проекте Яндекс Музыка. Создание новых разделов сервиса. Оптимизация и создание новых компонентов платформы.'),
(5, 'февраль 2017 &mdash; по настоящее время', 'Frontend разработчик, Вконтактe, mail.ru group', 'Работы в команде Вконтакте. Работал в команде над обновление сервиса Музыка, работа над видео разделом. Создание видеоплеера. Создание кроссбраузерных компонентов. Работа над оптимизацией скорости загрузки медиа контента.');

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE `messages` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `message` varchar(191) DEFAULT NULL,
  `message_file` varchar(191) DEFAULT NULL,
  `message_original_file` varchar(191) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `message`, `message_file`, `message_original_file`, `date_time`) VALUES
(4, 'test', 'den4@me.com', 'test message', '926397390693.jpg', 'photo_2018-08-14_18-31-35.jpg', '2018-08-15 07:46:44');

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `text` varchar(191) DEFAULT NULL,
  `post_img` varchar(191) DEFAULT NULL,
  `post_img_small` varchar(191) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `author_id` int(11) UNSIGNED DEFAULT NULL,
  `cat` tinyint(1) UNSIGNED DEFAULT NULL,
  `cat_title` tinyint(1) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `text`, `post_img`, `post_img_small`, `date_time`, `author_id`, `cat`, `cat_title`) VALUES
(3, 'Запись 2 с очень длинным заголовком очень длинным', 'Текст второго поста', '553342585793.jpg', '320-553342585793.jpg', '2018-07-22 15:34:35', 1, 1, NULL),
(4, 'Запись новая', 'Новое содержание записи', '154678626827.jpg', '320-154678626827.jpg', '2018-07-22 19:06:35', 1, 1, NULL),
(5, 'пост с автором', 'Текст записи поста с автором', '863423798056.jpg', '320-863423798056.jpg', '2018-07-22 21:51:42', 1, 10, NULL),
(6, 'тест категории2', '<p>текст записи с <strong>категорией</strong></p>\r\n', '', '', '2018-08-12 15:30:17', 1, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `skills`
--

CREATE TABLE `skills` (
  `id` int(11) NOT NULL,
  `html5` int(11) NOT NULL,
  `css3` int(11) NOT NULL,
  `javascript` int(11) NOT NULL,
  `jquery` int(11) NOT NULL,
  `php` int(11) NOT NULL,
  `mysql` int(11) NOT NULL,
  `git` int(11) NOT NULL,
  `gulp` int(11) NOT NULL,
  `bower` int(11) NOT NULL,
  `webpack` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `skills`
--

INSERT INTO `skills` (`id`, `html5`, `css3`, `javascript`, `jquery`, `php`, `mysql`, `git`, `gulp`, `bower`, `webpack`) VALUES
(1, 90, 85, 75, 75, 80, 70, 80, 70, 40, 50);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `secondname` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
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
(11, 'de.niska.tokarev@gmail.com', '$2y$10$gmCm6NLiht27szmmULd7j.JU9dxidD6ZTXzbA/17nSSsUbLnMVxpi', '', '', '', '', '', 'user', NULL, NULL, NULL),
(12, '123', '$2y$10$E.s/h.TirFAMTfublhH5..cKt8b2eOKteYEYznSXd8cUOyUnLFsUy', NULL, NULL, NULL, NULL, NULL, 'user', NULL, NULL, NULL),
(13, 'ded@deddd.de', '$2y$10$lzlOO1nZSLagM9kmwQRQBe9GzeTUlFxKLyMh2O/9GyGWrmvHTxJFm', 'ded', 'deddddd', NULL, '', '', 'user', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `works`
--

CREATE TABLE `works` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `author_id` varchar(100) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `work_img` varchar(20) DEFAULT NULL,
  `work_img_small` varchar(20) DEFAULT NULL,
  `summary` varchar(1024) DEFAULT NULL,
  `result` varchar(1024) DEFAULT NULL,
  `technologies` varchar(1024) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `github` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `pages` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `works`
--

INSERT INTO `works` (`id`, `title`, `author_id`, `category`, `date`, `work_img`, `work_img_small`, `summary`, `result`, `technologies`, `link`, `github`, `time`, `pages`, `price`) VALUES
(1, 'заголовок первой работы', '1', 1, '2018-08-20 07:30:25', '', '', 'we worked hard', 'everything is wonderful', '<ul><li>layout</li>\r\n<li>css</li>\r\n</ul>', 'http://www.ru', 'https://github.com', '12', '54', '55 000'),
(4, '4', '1', 2, '2018-08-26 22:40:37', '', '', '<p>123</p>\r\n', '<p>12</p>\r\n', '<p>1</p>\r\n', '111', '222', '1334', '15', '22000');

-- --------------------------------------------------------

--
-- Структура таблицы `work_categories`
--

CREATE TABLE `work_categories` (
  `id` int(11) NOT NULL,
  `w_cat_title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `work_categories`
--

INSERT INTO `work_categories` (`id`, `w_cat_title`) VALUES
(1, 'test category'),
(2, 'another category'),
(3, 'third category333');

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
-- Индексы таблицы `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

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
-- Индексы таблицы `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `work_categories`
--
ALTER TABLE `work_categories`
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
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `works`
--
ALTER TABLE `works`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `work_categories`
--
ALTER TABLE `work_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
