-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2022 at 06:29 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `physicswithnc`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `phone_num`, `msg`, `date`, `email`) VALUES
(1, 'first post', '123456789', 'first post', '2022-03-16 15:54:11', 'firstpost@gmail.com'),
(3, 'hhhhhh', '1000000', 'hhhhhhhhhhh', NULL, 'hhhhhhhhh'),
(4, 'test', '', 'noice\r\n', NULL, 'test@gmail.com'),
(5, 'tatatat', '', 'Nishant is a good boy', '2022-03-17 10:35:32', 'tatat@gmail.com'),
(6, 'tatatat', '', 'Nishant is a good boy', '2022-03-17 10:36:22', 'tatat@gmail.com'),
(7, 'hhhh', '', 'ghgfhgfhf', '2022-03-17 10:36:22', 'hhhhhhhhhh'),
(8, 'Saurav', '', 'this is working\r\n', '2022-03-18 16:31:33', 'saurav@gmail.com'),
(9, 'final test', '', 'this is my final.', '2022-03-18 16:41:16', 'final@123'),
(10, 'ffff', '333333333', 'ffffff', '2022-03-18 16:50:26', 'fffffffff'),
(11, 'ffff', '333333333', 'ffffff', '2022-03-18 16:50:26', 'fffffffff'),
(12, 'legit', '1234123412', 'lets gooooooooooooooooooooo\r\n\\', '2022-03-18 16:50:26', 'done it'),
(13, 'hhhhhhh', '343434', 'noice not\r\n', '2022-03-19 08:53:33', 'h@123'),
(14, 'hhhhhhh', '343434', 'noice not\r\n', '2022-03-19 08:55:14', 'h@123'),
(15, 'hello', '12121212', 'not noce', '2022-03-19 08:55:35', 'hello2@'),
(16, 'hhhhhhh', 'hhhhhhhhhh', 'hhhhhhhhhhhhh', '2022-03-19 08:57:05', 'hhhhhhh'),
(17, 'mail', '00001002010200', 'mail', '2022-03-19 09:00:17', 'mail'),
(18, 'hhhhhhhhh', '2423235', 'fhgghghgf', '2022-03-19 09:05:52', 'fdgdfhhhdf'),
(19, 'Prashant', '9804117387', 'This is working, very nice.', '2022-03-19 09:09:20', 'chhetriprashant345@gmail.com'),
(20, 'Prashant', '32', 'vdfd', '2022-03-19 14:40:24', 'chhetri'),
(21, 'JoE', '1212121', 'Noice nishant', '2022-03-20 09:19:58', 'mONICA'),
(22, 'Prashan', '+0202329480923840', 'Fine', '2022-03-21 18:44:42', 'its@123.com'),
(23, 'Felix Kjeilberg', '987646376473', 'Hi, your blogs are great, I would like to upload mine too if you want to read them.', '2022-03-21 18:44:42', 'felix@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(18) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`sno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'What is Space-time?', 'The reality of Gravity', 'first-post', 'Space-time is a fabric just like an ordinary carpet in our house and the objects in this universe are like small particles (eg: dust, balls, and others) which are present in the carpet. See, Newton derived the formula of gravity but never explained how that works, but Einstein’s relativity is a little dig deep into Newton’s foundation where he explained how gravity works, explaining how one body attracts others.', 'space-bg.jpg', '2022-03-28 10:33:21'),
(2, 'Quantum Entanglement.', 'Why is this property so weird in quantum?', 'second_post', 'We all know that Quantum physics is a very weird foundation of modern physics or particle physics that has every possibility. We discussed about quantum tunneling, double slit experiment, quantum field theory and also many other things. For some of us those topics were very surprising and it gave a whole new meaning to understand physics. Similarly, among those very weird ideas/ theorems, Quantum Entanglement beats them all.\r\n\r\n Quantum entanglement is a part in the quantum mechanics which kind of has his own branch. The results which are obtained, the observations that are magnified in our life not only gives an insightful idea but also creates a hindrance to the classical physics. It often describes the common connection of a particle with symmetry.', 'physics-bg.jpg', '2022-03-20 14:22:44'),
(3, 'Double-Slit-Experiment', 'The weird nature of light.', 'third-post', 'Double Slit Experiment\r\n\r\n \r\n\r\nDouble slit experiment is one of the most famous and intriguing experiment in quantum mechanics. It describes about the superposition of a particle and explains how weird it gets when we observe somethings. It is also the basic experiment that somehow relates Schrodinger Cat experiment and generalize some ideas. So, what is double slit experiment and how does it work and what does observing mean??\r\n\r\nDouble slit experiment was performed by Thomas Young. It demonstrated the separation of waves and particles performed. To understand, we need to know some properties of wave and particle.', 'post-bg.jpg', '2022-03-20 14:57:57'),
(4, 'Quantum Tunneling', 'The nature of Probability', 'new-post', 'Quantum Mechanics is all about probability. If there\'s a certain probability or an event  that can\'t be pursued  in our macroscopic life it is simply terminated . But things get weird in quantum mechanics and yes it does follow the probability of occurrence. As it is fully developed on theories and probability we can\'t neglect the weird ideas on results. Similarly, quantum tunneling is also a same concept where probability plays a great role.\r\n\r\n\r\nBefore understanding quantum tunneling we must understand some basic information about maxwell equations and properties of light which gave ideas of quantum tunneling.', 'dark-bg.jpg', '2022-03-26 19:05:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
