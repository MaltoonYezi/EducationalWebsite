-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 22, 2023 at 09:48 PM
-- Server version: 5.7.33-log
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `learnsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `courseID` int(100) NOT NULL,
  `courseName` varchar(100) NOT NULL,
  `courseTextOne` varchar(4096) NOT NULL,
  `courseTextTwo` varchar(8192) NOT NULL,
  `imageLink` varchar(1024) NOT NULL,
  `videoLink` varchar(1024) NOT NULL,
  `materialLink` varchar(1024) NOT NULL,
  `attributions` varchar(1024) NOT NULL,
  `lecture` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`courseID`, `courseName`, `courseTextOne`, `courseTextTwo`, `imageLink`, `videoLink`, `materialLink`, `attributions`, `lecture`) VALUES
(0, 'Случайный опыт и случайные события', 'Что такое опыт, а что такое события? Какие события бывают?', 'Самые ранние работы учёных в  области исследования вероятности наступления того или иного события относятся к XVII веку. Пытаясь прогнозировать выигрыш в азартных играх, французские математики Джероламо Кардано, Блез Паскаль и Пьер Ферма открыли первые вероятностные закономерности, возникающие при бросании игрального кубика или подбрасывании монеты. Они установили, что выигрыш зависел не от умения игроков, а от случая.', 'img/course1.jpg', 'https://www.youtube.com/embed/g5x9njmBGwg', 'https://www.keepandshare.com/doc13/31255/puretheory1-pdf-156k?da=y', '[1] Елена Анатольевна Фомина', ''),
(1, 'Классическое определение вероятности', 'Вероятность - возможность исполнения, осуществимости чего-нибудь', 'Основатель современной теории вероятностей А.Н.Колмогоров писал о вероятности так: «Вероятность математическая – это числовая характеристика степени возможности появления какого-либо определенного события в тех или иных определенных, могущих повторяться неограниченное число раз условиях». ', 'img/course2.webp', 'https://www.youtube.com/embed/k9GFtHimE7c', 'https://www.keepandshare.com/doc13/31268/puretheory2-pdf-743k?da=y', '[1] Елена Анатольевна Фомина', ''),
(2, 'Операции над событиями. Теоремы теории вероятностей', 'Как объединяются события? Что в итоге получается?', 'Объединением событий A и B называется событие C, которое происходит тогда и только тогда, когда происходит хотя бы  одно из двух событий A или B. Поясним, что слова «хотя бы одно из двух» означают, что может наступить: только событие A, только событие B, а также оба эти события одновременно.', 'img/course3.webp', 'https://www.youtube.com/embed/CLh9nMauzt0', 'https://www.keepandshare.com/doc13/31476/2978898?da=y', '[1] Елена Анатольевна Фомина', '');

-- --------------------------------------------------------

--
-- Table structure for table `exercises`
--

CREATE TABLE `exercises` (
  `exerciseID` int(11) NOT NULL,
  `exerciseName` varchar(256) NOT NULL,
  `fileLink` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exercises`
--

INSERT INTO `exercises` (`exerciseID`, `exerciseName`, `fileLink`) VALUES
(0, 'Случайный опыт и случайные события', 'https://www.keepandshare.com/doc13/31323/?da=y'),
(1, 'Классическое определение вероятности', 'https://www.keepandshare.com/doc13/31324/?da=y'),
(2, 'Операции над событиями. Теоремы теории вероятностей', 'https://www.keepandshare.com/doc13/31478/2978898?da=y');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(11) NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `option_text` varchar(255) NOT NULL,
  `is_correct` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `question_id`, `option_text`, `is_correct`) VALUES
(0, 0, '5', 0),
(1, 0, '20', 0),
(2, 0, '10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question_text` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question_text`) VALUES
(0, 'Сколько пальцев у человека на 2-х руках?'),
(1, '20 минус 6'),
(2, 'Сколько единиц в дюжине? '),
(3, 'Сколько метров в километре?'),
(4, 'Температура плавления льда?');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `id` int(255) NOT NULL,
  `course_ID` int(100) NOT NULL,
  `que` text NOT NULL,
  `option 1` varchar(222) NOT NULL,
  `option 2` varchar(222) NOT NULL,
  `option 3` varchar(222) NOT NULL,
  `option 4` varchar(222) NOT NULL,
  `ans` varchar(222) NOT NULL,
  `userans` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`id`, `course_ID`, `que`, `option 1`, `option 2`, `option 3`, `option 4`, `ans`, `userans`) VALUES
(1, 0, 'What does PHP stand for?', 'Preprocessed Hypertext Page', 'Hypertext Markup Language', 'Hypertext Preprocessor', 'Hypertext Transfer Protocol', 'Hypertext Preprocessor', 'Preprocessed Hypertext Page'),
(2, 0, 'What will be the value of $var? ', '0', '1', '2', 'NULL', '0', '0'),
(3, 0, ' ____________ function in PHP Returns a list of response headers sent (or ready to send)', 'header', 'headers_list', 'header_sent', 'header_send', 'headers_list', 'header'),
(4, 0, 'Which of the following is the Server Side Scripting Language?', 'HTML', 'CSS', 'JS', 'PHP', 'PHP', 'HTML'),
(5, 0, 'From which website you download this source code?', 'Softglobe.net', 'w3school.com', 'technopoints.co.in', 'php.net', 'technopoints.co.in', 'php.net');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `resultID` int(100) NOT NULL,
  `courseTestID` int(100) NOT NULL,
  `userResultID` int(100) NOT NULL,
  `resultPercentage` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`resultID`, `courseTestID`, `userResultID`, `resultPercentage`) VALUES
(0, 0, 12, '40.00'),
(1, 1, 12, '60.00'),
(2, 1, 16, '20.00'),
(3, 2, 12, '20.00'),
(4, 0, 19, '20.00'),
(5, 1, 19, '40.00'),
(6, 2, 19, '40.00');

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `testID` int(128) NOT NULL,
  `testName` varchar(256) NOT NULL,
  `testData` varchar(4096) NOT NULL,
  `fileLink` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`testID`, `testName`, `testData`, `fileLink`) VALUES
(0, 'Случайный опыт и случайные события', 'No', 'https://www.keepandshare.com/doc13/31326/pdf-370k?da=y'),
(1, 'Классическое определение вероятности', 'No', 'https://www.keepandshare.com/doc13/31327/pdf-414k?da=y'),
(2, 'Операции над событиями. Теоремы теории вероятностей', 'No', 'https://www.keepandshare.com/doc13/31477/2978898?da=y');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userID` int(100) NOT NULL,
  `fullName` varchar(100) NOT NULL,
  `password` varchar(128) NOT NULL,
  `email` varchar(100) NOT NULL,
  `image` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `fullName`, `password`, `email`, `image`) VALUES
(0, 'Some Some', 'kooewt2354', 'some@gmail.com', ''),
(1, 'Виталий Леонтьев', 'oi435i434', 'vileo@gmial.com', ''),
(2, 'Анатолий Лукашев', 'r34toero4t43443t', 'Anatoliy@gmail.com', ''),
(3, 'Даниил Кондратюк', 'wr43of43143fw', 'Daniil@gmail.com', ''),
(4, 'Алексей Герасимов', 'etg54etb4y5yb4y45', 'Alesksey@gmail.com', ''),
(5, 'Мария Мама', 'f5d7e2532cc9ad16bc2a41222d76f269', 'Maltoonyezi@gmail.com', ''),
(6, 'Abrokadabro', '0acd1b170800c526a48654d09a231f9b', 'orazgeldyev.ab001@gmail.com', ''),
(7, 'оооцук', 'cc98a1901e6a7c2e6b1721b37525fa95', 'mayo@gmail.com', ''),
(8, 'ррщцк', 'a0a872cb9d73ad928187241fa16d24ae', 'lola@gmail.com', ''),
(9, 'ertertfer', '5657ed3dd7f6ca8bb8fbf7b11426d199', 'mayola@gmail.com', ''),
(10, 'Abrokadabroewrwer', '76dba81d0106f32cc069dc3e809c1c67', '432@ter.com', ''),
(11, 'Abro424kadabr42o', '7d0a7c3fe27068240e4362e1b119db2c', '33643547@china.com', ''),
(12, 'Алексей Викторов', '881d235a9e22d13d9fc1060c53182275', 'lalala@gmail.com', 'Алексей Викторов - 2023.04.19 - 12.12.03pm.jpg'),
(13, 'Hey mister', 'f5d7e2532cc9ad16bc2a41222d76f269', 'Lol@gmail.com', ''),
(14, '345345', 'f0111585ccd190ba548c806a843f487a', '345@gmail.com', ''),
(15, 'ryrrty', 'acf7aed26fd0a7f4547322707612d322', 'business@gmail.com', ''),
(16, 'Haley Miley', 'c651449781fcf44fa53c0c74aa8e3563', 'gladtobe@gmail.com', 'Haley Miley - 2023.04.15 - 01.17.42pm.jpg'),
(17, 'Andrey', '881d235a9e22d13d9fc1060c53182275', 'Andrey@gmail.com', ''),
(18, 'Haley Bee', '21a503d212d8889c559267f84ec822cf', 'HaleyBee@gmail.com', ''),
(19, 'Анатолий Варфоломеев', '881d235a9e22d13d9fc1060c53182275', 'anatoliyvarfolomeev@gmail.com', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`courseID`);

--
-- Indexes for table `exercises`
--
ALTER TABLE `exercises`
  ADD PRIMARY KEY (`exerciseID`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_ID` (`course_ID`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`resultID`),
  ADD KEY `courseTestID` (`courseTestID`),
  ADD KEY `userResultID` (`userResultID`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`testID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `exercises`
--
ALTER TABLE `exercises`
  MODIFY `exerciseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`);

--
-- Constraints for table `quiz`
--
ALTER TABLE `quiz`
  ADD CONSTRAINT `quiz_ibfk_1` FOREIGN KEY (`course_ID`) REFERENCES `courses` (`courseID`);

--
-- Constraints for table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `results_ibfk_1` FOREIGN KEY (`courseTestID`) REFERENCES `courses` (`courseID`),
  ADD CONSTRAINT `results_ibfk_2` FOREIGN KEY (`userResultID`) REFERENCES `users` (`userID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
