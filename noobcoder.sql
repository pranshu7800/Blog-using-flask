-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2020 at 09:47 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `noobcoder`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(50) NOT NULL,
  `name` text NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `phone_num`, `msg`, `date`, `email`) VALUES
(1, 'first post', '1234567890', 'first post', '2020-10-12 18:41:34', 'first@gmail.com'),
(2, 'pranshu', '237892373', 'this is a sample message', NULL, 'pranshu@gmail.com'),
(3, 'rahul', '894358945', 'hello', '2020-10-12 19:48:05', 'rahul@gmail.com'),
(4, 'rahul', '894358945', 'hello', '2020-10-12 19:49:03', 'rahul@gmail.com'),
(5, 'rahul', '894358945', 'hello', '2020-10-13 01:12:19', 'rahul@gmail.com'),
(6, 'shyam', '894574389', 'hello from shyam\r\n', '2020-10-13 01:13:20', 'shyam@gmail.com'),
(7, 'shyam', '894574389', 'hello from shyam\r\n', '2020-10-13 01:35:45', 'shyam@gmail.com'),
(8, 'shyam', '894574389', 'hello from shyam\r\n', '2020-10-13 01:37:48', 'shyam@gmail.com'),
(9, 'sdfsdgsd', '47548548', 'send this message', '2020-10-13 14:39:55', 'dsdfdsf@gaga.com'),
(10, 'sdfsdgsd', '47548548', 'send this message', '2020-10-13 14:57:35', 'dsdfdsf@gaga.com'),
(11, 'sdfsdgsd', '47548548', 'send this message', '2020-10-13 14:57:39', 'dsdfdsf@gaga.com'),
(12, 'sdfsdgsd', '47548548', 'send this message', '2020-10-13 15:09:44', 'dsdfdsf@gaga.com'),
(13, 'sdfsdgsd', '47548548', 'send this message', '2020-10-13 15:13:51', 'dsdfdsf@gaga.com'),
(14, 'sdfsdgsd', '47548548', 'send this message', '2020-10-13 15:13:57', 'dsdfdsf@gaga.com'),
(15, 'fani', '84874387587', 'hello from fani', '2020-10-13 15:16:49', 'fani@gmail.com'),
(16, 'fani', '84874387587', 'hello from fani', '2020-10-13 15:18:50', 'fani@gmail.com'),
(17, 'gagan', '45747473878', 'hello from gagan', '2020-10-13 15:25:24', 'gagan@gmail.com'),
(18, 'dasfasgfsag', '43534634634', 'efasfdsgsdgsdgsdg', '2020-10-13 15:34:06', 'safafddg@ssdhsd.com'),
(19, 'hani', '487433487487', 'hello from hani', '2020-10-13 15:37:33', 'hani@yhoo.com'),
(20, 'hani', '487433487487', 'hello from hani', '2020-10-13 15:49:26', 'hani@yhoo.com'),
(21, 'binod', '8109102804', 'hello from binod gupta', '2020-10-13 15:50:11', 'binod@binod@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `name` text NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(12) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `name`, `slug`, `content`, `img_file`, `date`) VALUES
(2, 'Machine learning is an application of artificial intelligence (AI)', 'The primary aim is to allow the computers learn automatically', 'Pranshu Pachouri', 'second-post', 'Machine learning focuses on the development of computer programs that can access data and use it learn for themselves.\r\n\r\nThe process of learning begins with observations or data, such as examples, direct experience, or instruction, in order to look for patterns in data and make better decisions in the future based on the examples that we provide. The primary aim is to allow the computers learn automatically without human intervention or assistance and adjust actions accordingly.', 'ml-bg.jpg', '2020-10-14 18:21:11'),
(3, 'Big Data\r\n', 'What it is and why it matters', 'Pranshu Pachouri', 'third-post', 'Big data is a term that describes the large volume of data – both structured and unstructured – that inundates a business on a day-to-day basis. But it’s not the amount of data that’s important. It’s what organizations do with the data that matters. Big data can be analyzed for insights that lead to better decisions and strategic business moves.', 'bd-bg1.jpg', '2020-10-14 18:39:31'),
(4, 'Cloud Computing', 'Cloud computing is the delivery of different services through the Internet.', 'Pranshu Pachouri', 'fourth-post', 'Cloud computing is named as such because the information being accessed is found remotely in the cloud or a virtual space. Companies that provide cloud services enable users to store files and applications on remote servers and then access all the data via the Internet. This means the user is not required to be in a specific place to gain access to it, allowing the user to work remotely.', 'cc-bg.jpg', '2020-10-14 18:41:20'),
(5, 'Digital Marketing', 'Digital is at the core of everything in marketing today.', 'Pranshu Pachouri', 'fifth-post', 'At a high level, digital marketing refers to advertising delivered through digital channels such as search engines, websites, social media, email, and mobile apps. Using these online media channels, digital marketing is the method by which companies endorse goods, services, and brands. Consumers heavily rely on digital means to research products. For example, Think with Google marketing insights found that 48% of consumers start their inquiries on search engines, while 33% look to brand websites and 26% search within mobile applications.', 'about-bg.jpg', '2020-10-14 18:43:25'),
(6, 'What is Cyber Security?', 'information technology security or electronic information security. ', 'Pranshu Pachouri', 'sixth-post', 'Cyber security is the practice of defending computers, servers, mobile devices, electronic systems, networks, and data from malicious attacks. It\'s also known as information technology security or electronic information security. The term applies in a variety of contexts, from business to mobile computing, and can be divided into a few common categories.', 'cyber-bg.png', '2020-10-14 18:50:16'),
(7, 'Flutter for App development', 'Flutter is an open-source UI software development kit created by Google.', 'Pranshu Pachouri', 'seventh-post', 'The first version of Flutter was known as codename \"Sky\" and ran on the Android operating system. It was unveiled at the 2015 Dart developer summit, with the stated intent of being able to render consistently at 120 frames per second. During the keynote of Google Developer Days in Shanghai, Google announced Flutter Release Preview 2, which is the last big release before Flutter 1.0. On December 4, 2018, Flutter 1.0 was released at the Flutter Live event, denoting the first \"stable\" version of the Framework. On December 11, 2019, Flutter 1.12 was released at the Flutter Interactive event.', 'fl-bg.jpg', '2020-10-16 00:56:09'),
(8, 'Go Programming Language', 'It was developed in 2007 by Robert Griesemer, Rob Pike, and Ken Thompson at Google but launched in 2009 as an open-source programming language.', 'Pranshu Pachouri', 'go-lang', 'Go is a procedural programming language. It was developed in 2007 by Robert Griesemer, Rob Pike, and Ken Thompson at Google but launched in 2009 as an open-source programming language. Programs are assembled by using packages, for efficient management of dependencies. This language also supports environment adopting patterns alike to dynamic languages. For eg., type inference (y := 0 is a valid declaration of a variable y of type float).', 'go-lang.jpg', '2020-10-16 17:21:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`),
  ADD KEY `sno` (`sno`),
  ADD KEY `sno_2` (`sno`),
  ADD KEY `sno_3` (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
