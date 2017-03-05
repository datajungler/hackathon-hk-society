-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Mar 05, 2017 at 11:24 AM
-- Server version: 5.5.42
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `society`
--

-- --------------------------------------------------------

--
-- Table structure for table `org`
--

CREATE TABLE `org` (
  `o_id` int(10) unsigned NOT NULL,
  `o_num` varchar(100) NOT NULL,
  `name_c` text NOT NULL,
  `name_e` text NOT NULL,
  `addr_c` text NOT NULL,
  `addr_e` text NOT NULL,
  `addr` text NOT NULL,
  `good_c_addr` text NOT NULL,
  `good_e_addr` text NOT NULL,
  `r_id` int(10) unsigned NOT NULL,
  `r_p_id` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `raw_a`
--

CREATE TABLE `raw_a` (
  `raw_id` varchar(100) NOT NULL,
  `raw_name` text NOT NULL,
  `raw_address` text NOT NULL,
  `done` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t_cloud`
--

CREATE TABLE `t_cloud` (
  `o_id` int(10) unsigned NOT NULL,
  `pos_start` int(11) NOT NULL,
  `len` int(11) NOT NULL,
  `txt` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t_stat`
--

CREATE TABLE `t_stat` (
  `tag_id` int(19) unsigned NOT NULL,
  `t_txt` varchar(50) NOT NULL,
  `t_len` int(11) NOT NULL,
  `t_count` int(11) NOT NULL,
  `rg_id` int(10) unsigned NOT NULL,
  `r_p_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `org`
--
ALTER TABLE `org`
  ADD PRIMARY KEY (`o_id`);

--
-- Indexes for table `t_cloud`
--
ALTER TABLE `t_cloud`
  ADD KEY `o_id` (`o_id`);

--
-- Indexes for table `t_stat`
--
ALTER TABLE `t_stat`
  ADD PRIMARY KEY (`tag_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `org`
--
ALTER TABLE `org`
  MODIFY `o_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t_stat`
--
ALTER TABLE `t_stat`
  MODIFY `tag_id` int(19) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
