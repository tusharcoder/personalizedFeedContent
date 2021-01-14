-- phpMyAdmin SQL Dump
-- version 4.7.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 14, 2021 at 01:16 PM
-- Server version: 5.7.30
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `personalizedContentFeed`
--

-- --------------------------------------------------------

--
-- Table structure for table `content_age_groups`
--

CREATE TABLE `content_age_groups` (
  `id` int(11) NOT NULL COMMENT 'primary key',
  `item_id` int(11) NOT NULL,
  `age_group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `content_date`
--

CREATE TABLE `content_date` (
  `id` int(11) NOT NULL COMMENT 'primary key',
  `item_id` int(11) NOT NULL,
  `cdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content_date`
--

INSERT INTO `content_date` (`id`, `item_id`, `cdate`) VALUES
(1, 1, '2021-01-14 00:00:00'),
(2, 1, '2021-01-14 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `content_topics`
--

CREATE TABLE `content_topics` (
  `id` int(11) NOT NULL COMMENT 'primary key',
  `item_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content_topics`
--

INSERT INTO `content_topics` (`id`, `item_id`, `topic_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_age_groups`
--

CREATE TABLE `user_age_groups` (
  `id` int(11) NOT NULL COMMENT 'primary key',
  `user_id` int(11) NOT NULL,
  `age_group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_topics`
--

CREATE TABLE `user_topics` (
  `id` int(11) NOT NULL COMMENT 'primary key',
  `user_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_topics`
--

INSERT INTO `user_topics` (`id`, `user_id`, `topic_id`) VALUES
(1, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `content_age_groups`
--
ALTER TABLE `content_age_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content_date`
--
ALTER TABLE `content_date`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content_topics`
--
ALTER TABLE `content_topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_age_groups`
--
ALTER TABLE `user_age_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_topics`
--
ALTER TABLE `user_topics`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `content_age_groups`
--
ALTER TABLE `content_age_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'primary key';

--
-- AUTO_INCREMENT for table `content_date`
--
ALTER TABLE `content_date`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'primary key', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `content_topics`
--
ALTER TABLE `content_topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'primary key', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_age_groups`
--
ALTER TABLE `user_age_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'primary key';

--
-- AUTO_INCREMENT for table `user_topics`
--
ALTER TABLE `user_topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'primary key', AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
