-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2021 at 04:05 PM
-- Server version: 10.1.39-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `socials`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `Comment_id` int(11) NOT NULL,
  `Post_id` int(11) DEFAULT NULL,
  `User_id` int(11) DEFAULT NULL,
  `Content` varchar(200) DEFAULT NULL,
  `Date_created` date DEFAULT NULL,
  `Date_updated` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`Comment_id`, `Post_id`, `User_id`, `Content`, `Date_created`, `Date_updated`) VALUES
(1, NULL, NULL, 'This is beautiful', '2021-11-28', '2021-12-10'),
(2, NULL, NULL, 'Amazing write up. kudos', '2021-11-30', '2021-12-15');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `Likes_id` int(11) NOT NULL,
  `User_id` int(11) DEFAULT NULL,
  `Post_id` int(11) DEFAULT NULL,
  `NumberOfLikes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`Likes_id`, `User_id`, `Post_id`, `NumberOfLikes`) VALUES
(1, NULL, NULL, 20),
(2, NULL, NULL, 55),
(3, NULL, NULL, 100),
(4, NULL, NULL, 200),
(5, NULL, NULL, 45),
(6, NULL, NULL, 200),
(7, NULL, NULL, 150);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `Message_id` int(11) NOT NULL,
  `User_id` int(11) DEFAULT NULL,
  `Content` varchar(200) DEFAULT NULL,
  `Date_created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`Message_id`, `User_id`, `Content`, `Date_created`) VALUES
(1, NULL, 'Hi, how you doing today?', '2021-11-28 23:23:44'),
(2, NULL, 'Am alright.', '2021-11-28 00:10:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `User_id` int(11) NOT NULL,
  `Firstname` varchar(20) DEFAULT NULL,
  `Surname` varchar(20) DEFAULT NULL,
  `Username` varchar(20) DEFAULT NULL,
  `Phone_number` varchar(20) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Password` varchar(8) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `Activation_key` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`User_id`, `Firstname`, `Surname`, `Username`, `Phone_number`, `Email`, `Password`, `DateOfBirth`, `gender`, `Activation_key`) VALUES
(1, 'Richmond', 'Ndigwe', 'Ritchy10', '08130309702', 'ritchychiz43@gmail.com', NULL, '1990-02-09', 'male', NULL),
(2, 'Maudlyn', 'Gabriel', 'Lynpac', '07037204684', 'maudlyn@gmail.com', NULL, '1980-01-25', 'female', NULL),
(3, 'Mishael', 'Ekwezor', 'Mischez10', '0806655399', 'michez2001@gmail.com', NULL, '1979-05-02', 'male', NULL),
(4, 'Obinna', 'Okere', 'ObinnaDev', '09022677891', 'obinnaokere@gmail.com', NULL, '1992-04-12', 'male', NULL),
(5, 'Chinonso', 'Opara', 'Nonso10', '08130000023', 'nonso2021@gmail.com', NULL, '1994-02-02', 'female', NULL),
(6, 'Michael', 'Emmanuel', 'Micky10', '08130003517', 'mickymessi10@yahoomail.com', NULL, '1992-08-07', 'male', NULL),
(7, 'Milcah', 'Phillip', 'wendy10', '09112768890', 'milcahPhils@gmail.com', NULL, '1991-09-02', 'female', NULL),
(8, 'Collins', 'Igwuike', 'greatman10', '08142640723', 'greatcollins@gmail.com', NULL, '2005-05-15', 'male', NULL),
(9, 'Bolanle', 'Ayodele', 'bola10', '08118729228', 'bolanle29@gmail.com', NULL, '1994-09-29', 'female', NULL),
(10, 'Loveth', 'Uke', 'love10', '0906543881', 'loveth10@gmail.com', NULL, '1993-03-21', 'female', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_profile`
--

CREATE TABLE `users_profile` (
  `Id` int(11) NOT NULL,
  `User_id` int(11) DEFAULT NULL,
  `Profile_image` varchar(30) DEFAULT NULL,
  `Contact` varchar(30) DEFAULT NULL,
  `Biography` varchar(500) DEFAULT NULL,
  `SignUp_date` date DEFAULT NULL,
  `Last_login` datetime DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_profile`
--

INSERT INTO `users_profile` (`Id`, `User_id`, `Profile_image`, `Contact`, `Biography`, `SignUp_date`, `Last_login`, `status`) VALUES
(1, NULL, NULL, NULL, '\'My name is richmond. I am a developer interested in creating beautiful and responsive digital solutions', '2000-10-02', '2008-11-11 13:23:44', 'Online');

-- --------------------------------------------------------

--
-- Table structure for table `user_friends`
--

CREATE TABLE `user_friends` (
  `Friends_id` int(11) NOT NULL,
  `User_id` int(11) DEFAULT NULL,
  `Category` varchar(20) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `Start_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_friends`
--

INSERT INTO `user_friends` (`Friends_id`, `User_id`, `Category`, `status`, `Start_date`) VALUES
(1, NULL, 'Acquintance', 'Active', '2007-02-03'),
(2, NULL, 'Close Friend', 'Blocked', '2010-02-09'),
(3, NULL, 'Family Member', 'Active', '2003-08-02');

-- --------------------------------------------------------

--
-- Table structure for table `user_posts`
--

CREATE TABLE `user_posts` (
  `Post_id` int(11) NOT NULL,
  `User_id` int(11) DEFAULT NULL,
  `Caption` varchar(20) DEFAULT NULL,
  `Type` varchar(10) DEFAULT NULL,
  `Message` varchar(200) DEFAULT NULL,
  `Date_created` date DEFAULT NULL,
  `Date_updated` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_posts`
--

INSERT INTO `user_posts` (`Post_id`, `User_id`, `Caption`, `Type`, `Message`, `Date_created`, `Date_updated`) VALUES
(1, NULL, NULL, 'audio', NULL, '2021-11-03', '2021-11-20'),
(2, NULL, NULL, 'Video', NULL, '2021-11-19', '2021-11-26'),
(3, NULL, NULL, 'Text', NULL, '2021-11-24', '2021-11-20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`Comment_id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`Likes_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`Message_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`User_id`);

--
-- Indexes for table `users_profile`
--
ALTER TABLE `users_profile`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `user_friends`
--
ALTER TABLE `user_friends`
  ADD PRIMARY KEY (`Friends_id`);

--
-- Indexes for table `user_posts`
--
ALTER TABLE `user_posts`
  ADD PRIMARY KEY (`Post_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `Comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `Likes_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `Message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `User_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users_profile`
--
ALTER TABLE `users_profile`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_friends`
--
ALTER TABLE `user_friends`
  MODIFY `Friends_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_posts`
--
ALTER TABLE `user_posts`
  MODIFY `Post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
