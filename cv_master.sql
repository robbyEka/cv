-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2019 at 06:03 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cv_master`
--

-- --------------------------------------------------------

--
-- Table structure for table `biodata`
--

CREATE TABLE `biodata` (
  `biodata_id` varchar(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sex` enum('Male','Female') NOT NULL,
  `place` varchar(255) NOT NULL,
  `date` varchar(10) NOT NULL,
  `religion` varchar(100) NOT NULL,
  `moto` text NOT NULL,
  `address` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `resume` text NOT NULL,
  `foto` varchar(255) NOT NULL,
  `perubahan` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `biodata`
--

INSERT INTO `biodata` (`biodata_id`, `name`, `sex`, `place`, `date`, `religion`, `moto`, `address`, `location`, `email`, `phone`, `resume`, `foto`, `perubahan`) VALUES
('5d49a3ea21', 'Moh Alfian Yanitya', 'Male', 'Malang ', '20-12-2001', 'Islam', 'Student & Web Desainer', 'JL Danau Sentani no 4 ', 'Malang, Jawa Timur, Indonesia', 'alfianyanitia@gmail.com', '+62244541299', '<p>I''m Begginer and personable Software Engginering with 3 years experience maintaining and expanding cross-functional delivery teams and liaising with both executives and the technology team.&nbsp;</p>', 'default.jpg', '2019-10-22 13:34:56');

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `education_id` varchar(10) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tahun` varchar(50) NOT NULL,
  `keterangan` text NOT NULL,
  `perubahan` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`education_id`, `nama`, `tahun`, `keterangan`, `perubahan`) VALUES
('5d502450c3', 'SMK Cooding', '2019 ', '<p>Smk Cooding</p>', '2019-10-22 04:55:55'),
('5d50247e28', ' Rekayasa Perangkat Lunak - SMKN 5 Malang', '2017 - 2020', '<p>Vocational High School in major Light Software Engineering</p>', '2019-10-22 04:53:14'),
('5d503093c6', 'SD Negeri Bunul Rejo 3', '2008 - 2014', '<p>Elementary School</p>', '2019-10-22 04:54:10'),
('5d5030aa04', 'SMP Negeri 16 Malang', '2014 - 2017', '<p>Junior High School</p>', '2019-10-22 04:54:55');

-- --------------------------------------------------------

--
-- Table structure for table `experience`
--

CREATE TABLE `experience` (
  `experiencce_id` varchar(10) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tahun` varchar(50) NOT NULL,
  `keterangan` text NOT NULL,
  `perubahan` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `experience`
--

INSERT INTO `experience` (`experiencce_id`, `nama`, `tahun`, `keterangan`, `perubahan`) VALUES
('5d50356a30', 'Aws Education', '2019 ', '<p>Web Desain &amp; Windows Server</p>', '2019-10-22 05:01:15'),
('5d5035996d', 'Ezy Industries', '2018 - Juli - 2019 - Januari', '<p>Software House</p>', '2019-10-22 05:00:16');

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `info_id` varchar(10) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `value` varchar(10) NOT NULL,
  `perubahan` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`info_id`, `judul`, `icon`, `value`, `perubahan`) VALUES
('5d50391d14', 'PROJECT WORKING', 'icon-briefcase', '2', '2019-08-11 15:56:31'),
('5d5039caa9', 'PROJECT DONE', 'icon-check', '15', '2019-08-11 15:52:42'),
('5d5039ebad', 'AWARDS RECEIVED', 'icon-diamond', '10', '2019-08-11 15:53:15'),
('5d503a0673', 'HAPPY CLIENTS', 'icon-heart', '15', '2019-08-11 15:53:42');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `register_id` varchar(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `member_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `portofolio`
--

CREATE TABLE `portofolio` (
  `portofolio_id` varchar(10) NOT NULL,
  `nama` text NOT NULL,
  `katagori` varchar(50) NOT NULL,
  `link` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `perubahan` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `portofolio`
--

INSERT INTO `portofolio` (`portofolio_id`, `nama`, `katagori`, `link`, `foto`, `perubahan`) VALUES
('5d504106c2', 'Pejuangreceh', 'website', 'http://pejuangreceh.com/', '5d504106c2.jpg', '2019-08-11 16:34:09'),
('5d50418a41', 'POLMANBABEL', 'website', 'https://www.polman-babel.ac.id/', '5d50418a41.jpg', '2019-08-11 16:34:45'),
('5d50444b0f', 'Bromo', 'website', 'http://bromotenggersemeru.org/', '5d50444b0f.jpg', '2019-10-10 04:28:33');

-- --------------------------------------------------------

--
-- Table structure for table `skill`
--

CREATE TABLE `skill` (
  `id` int(1) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `perubahan` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skill`
--

INSERT INTO `skill` (`id`, `nama`, `icon`, `keterangan`, `perubahan`) VALUES
(1, 'FULL STACK DEVELOPER', 'icon-grid', '<p>Build front-end and back-end website and application</p>', '2019-10-10 03:27:57'),
(2, 'GRAPHIC DESIGN', 'icon-layers', '<p>Web desain, Movie &amp; multimedia, Product identity, and Packaging</p>', '2019-10-10 03:28:46'),
(3, 'BUSINESS BRANDING', 'icon-briefcase', '<p>Build a business plan to meet the desired target company</p>', '2019-10-10 03:28:14'),
(4, 'CONSULTANCY', 'icon-bubbles', '<p>Providing advisory services in the area of IT expertise</p>', '2019-10-10 03:28:33');

-- --------------------------------------------------------

--
-- Table structure for table `sosmed`
--

CREATE TABLE `sosmed` (
  `id` int(1) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `perubahan` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sosmed`
--

INSERT INTO `sosmed` (`id`, `nama`, `link`, `icon`, `perubahan`) VALUES
(1, 'Facebook', 'https://www.facebook.com/53N5451', 'facebook', '0000-00-00 00:00:00'),
(2, 'Twitter', 'https://twitter.com/dianpw6901', 'twitter', '0000-00-00 00:00:00'),
(3, 'Instagram', 'https://www.instagram.com/dianpw/', 'instagram', '0000-00-00 00:00:00'),
(4, 'linkedin', 'https://www.linkedin.com/in/dian-purwanto-1ab59362/', 'linkedin', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `biodata`
--
ALTER TABLE `biodata`
  ADD PRIMARY KEY (`biodata_id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`education_id`);

--
-- Indexes for table `experience`
--
ALTER TABLE `experience`
  ADD PRIMARY KEY (`experiencce_id`);

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`info_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`register_id`);

--
-- Indexes for table `portofolio`
--
ALTER TABLE `portofolio`
  ADD PRIMARY KEY (`portofolio_id`);

--
-- Indexes for table `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sosmed`
--
ALTER TABLE `sosmed`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `skill`
--
ALTER TABLE `skill`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sosmed`
--
ALTER TABLE `sosmed`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
