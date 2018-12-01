-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 01 2018 г., 09:15
-- Версия сервера: 5.7.23-log
-- Версия PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `homestead`
--

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_11_26_171104_create_topics_table', 1),
(4, '2017_11_26_174432_create_questions_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `questions`
--

CREATE TABLE `questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `author` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci,
  `topic_id` int(10) UNSIGNED NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'expected',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `questions`
--

INSERT INTO `questions` (`id`, `author`, `email`, `question`, `answer`, `topic_id`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Александра', 'proto@mail.ru', 'Как украли «Автопортрет» Дюрера?', 'С 17-го века знаменитый автопортрет висел в нюренбергской ратуше, на родине художника. В 1799 г. представители города решили его отреставрировать. Картину доверили местному живописцу и граверу Аврааму Вольфгангу Кюфнеру. Сорокалетний мастер отличался завидной смекалкой, и имел опыт, о котором, очевидно, законопослушным бюргерам известно не было. Он решил её украсть и заменить собственной копией. Картину было подделать трудно: хотя бы потому, что она была написана на доске, оборот которой украшали многочисленные надписи, казенные печати и инвентарные номера. Но Кюфнер храбро взял в руки пилу и распилил доску толщиной в 1,5 см вдоль. Так у него получилось 2 доски: на первой был красочный слой и не было предательских печатей ратуши, а на второй не было живописи, зато были все необходимые надписи.  Оригинал был спрятан в надежный тайник, а чистая доска с опечатанным оборотом была поставлена на мольберт. Когда лак высох, художник отнес свою копию заказчикам, которым все очень понравилось.', 1, 'public', '2018-11-26 14:39:41', '2018-11-26 15:01:11'),
(4, 'Алексей', 'kalihiti@yandex.ru', 'Кому принадлежали \"перчатки за миллион\"?', 'Мохаммеду Али. В 2012 году Лоренцо Фертитта, совладелец UFC, заплатил $1,1 млн за пару перчаток, которая была на Мохаммеде Али в 1965 году во время боя с Флойдом Паттерсоном. Кстати, через неделю после этого боя,  Кассиус Клей «переименовался» в Мохаммеда Али, поскольку поменял веру и не захотел носить «рабское» имя, которое дали его предкам белые плантаторы.', 2, 'public', '2018-11-26 14:44:46', '2018-11-26 15:10:07'),
(5, 'Лилия', 'radmila@mail.ru', 'Как правильно взбивать сливки?', 'При взбивании сливок не добавляйте в них сахар. Если вы хотите подсластить взбитые сливки, добавьте немного сахарной пудры уже в готовый крем и перемешайте.', 3, 'public', '2018-11-29 13:43:04', '2018-11-29 13:52:05'),
(6, 'Софья', 'sofa@mail.ru', 'Сколько русских царевен вышло замуж?', 'За почти двести лет существования русского царства (от Ивана Грозного до Петра Великого) в теремах Москвы родилось 29 царевен. И только 3 (трём!) из них было суждено было выйти замуж, а радость материнства испытали всего 2 (две!) царевны, и то выжил только 1 ребёнок... Вот такая вот паршивая демографическая ситуация была в царских теремах на Руси...', 5, 'public', '2018-11-29 14:17:19', '2018-11-29 14:24:32'),
(7, 'Георгий', 'gosha-shubak@yandex.ru', 'Что такое царские бармы?', '\"Бармы\" - это монаршья регалия, брошки на воротник, грубо говоря. Считается, что обычай мы этот восприняли у Византии и просуществовал он до Петра I. Бармы состояли из 7-ми драгоценных эмалированных металлических медальонов-запон, обильно украшенных драгоценными камнями. На медальонах изображались Богородица, св. Константин и Елена, Сошествие св. Духа и многие другие сюжеты.', 5, 'public', '2018-11-29 14:38:12', '2018-11-29 14:42:02'),
(8, 'Артем', 'siz-a@mail.ru', 'Где создали танк по эскизам Леонардо да Винчи с реальным механизмом?', 'В Белоруссии для съемок фантастического фильма «Авантюры Прантиша Вырвича». Он идеально круглый и напоминает скорее летающую тарелку. Пушки в этом танке установлены по всему корпусу, и могут обстреливать округу на 360 градусов. Передвигаться танк будет с помощью лошадей, как обычная телега.', 1, 'public', '2018-11-29 14:44:09', '2018-11-29 14:47:59'),
(9, 'Полина', 'trola-pol@mail.ru', 'Как усилить вкус клубники в выпечке?', 'Бальзамическим уксусом. Он отлично усиливает вкус клубники.\r\nПросто добавьте несколько капель к вашей клубничной выпечке.', 3, 'public', '2018-11-29 14:52:32', '2018-11-29 14:53:51'),
(10, 'Эдуард', 'lomov777@mail.ru', 'Кто отец современного космического искусства?', 'Художник Чесли Боунстелл (Chesley Bonestell, 1888-1986). Он сумел вообразить, как выглядят космические пейзажи еще до того, как телескопы НАСА и глаза космонавтов увидели эти виды в реальности. Его работы повлияли на научно-фантастическое изобразительное искусство и были источником вдохновения американской космической программы. В честь него назвали астероид и престижную ежегодную премию за лучшие SF&F работу.', 1, 'public', '2018-11-29 15:01:46', '2018-11-29 15:12:45'),
(11, 'Майя', 'poslyakova@yandex.ru', 'Что такое шоколад Руби?', 'Это четвертый вид шоколада, открытый после черного, молочного и белого. Розовый шоколад Руби был представлен прошедшей осенью в Шанхае. Название шоколада происходит от рубинового цвета плодов какао, из которых изготавливают этот шоколад. Сам шоколад обладает натуральным розовым цветом, насыщенным ягодным вкусом и легкой кислинкой. В нем несодержится никаких искусственных красителей и ароматизаторов.', 6, 'public', '2018-11-29 15:22:12', '2018-11-29 15:28:04'),
(12, 'Александр', 'dodoshka@rambler.ru', 'Сколько русских игроков в \"Тройном золотом клубе\"?', 'В состав «Тройного золотого клуба» входят 29 хоккеистов — 11 канадцев, 9 шведов, 7 россиян и 2 чеха. 10 хоккеистов — защитники, остальные 19 — нападающие; вратарей в составе клуба нет. Наши соотечественники: Каменский В., Гусаров А., Фетисов В., Ларионов И., Могильный А., Малахов В., Дацюк П..', 2, 'public', '2018-11-29 15:40:10', '2018-11-29 15:45:15'),
(13, 'Анна', 'anutka-mar@rambler.ru', 'Кому нельзя желать попутного ветра?', 'Спортсменам, прыгающим с трамплина на лыжах - он им только вредит. Гораздо лучше встречный ветер, благодаря которому перед лыжником в полёте создаётся воздушная подушка, и он летит дальше. Для начала прыжка спортсменам отводится определённое время, в течение которого тренеры пытаются выбрать оптимальный момент старта с учётом ветра. Смена ветра по ходу соревнований может сделать условия для участников неравными: если лыжнику достался только попутный ветер, его шансы на медали даже с самой лучшей техникой резко снижаются.', 2, 'public', '2018-11-29 15:49:34', '2018-11-29 15:50:40'),
(14, 'Алишер', 'hadzhiev@mail.ru', 'Как спит конь?', NULL, 2, 'expected', '2018-11-30 06:49:01', '2018-11-30 06:49:01');

-- --------------------------------------------------------

--
-- Структура таблицы `topics`
--

CREATE TABLE `topics` (
  `id` int(10) UNSIGNED NOT NULL,
  `topic` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `topics`
--

INSERT INTO `topics` (`id`, `topic`) VALUES
(1, 'Искусство'),
(2, 'Спорт'),
(3, 'Рецепты'),
(5, 'История'),
(6, 'Кондитерская');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Misha', 'misha@mail.ru', '$2y$10$eZRp6z3n4OGn7M0sQlePf.3TfjWSeR2aRzpOfH8IRvwuE1XxFwbra', 'admin', NULL, '2018-11-26 05:25:34', '2018-11-26 05:25:34'),
(6, 'admin', 'n4iqjSSNnU@gmail.com', '$2y$10$v8z6/8Zc1Hj4GW2QbnjnZOSszhgATr5tX9PKNQ3Qk6P41MSV36oAa', 'admin', 'kSUUUGIKtnbciHh2VvscDvkYbDLcm6fOTiCKHNOlgDipgslWj2L0wJB1L1gx', NULL, NULL),
(7, 'Oksana', 'ksu@mail.ru', '$2y$10$VFSki9CW8TJHrkDIjtq0ROPzrH9vgnS4P5.5qdQ2Dtpq/Pbgop93i', 'admin', NULL, '2018-11-29 12:00:56', '2018-11-29 12:00:56');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_topic_id_foreign` (`topic_id`);

--
-- Индексы таблицы `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_topic_id_foreign` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
