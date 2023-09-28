-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2023 at 11:41 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `books_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `Id` int(11) NOT NULL,
  `JudulBuku` varchar(255) DEFAULT NULL,
  `Pengarang` varchar(255) DEFAULT NULL,
  `TahunTerbit` int(11) DEFAULT NULL,
  `Penerbit` varchar(255) DEFAULT NULL,
  `TanggalDibuat` date DEFAULT NULL,
  `TanggalDiupdate` date DEFAULT NULL,
  `JumlahHalaman` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`Id`, `JudulBuku`, `Pengarang`, `TahunTerbit`, `Penerbit`, `TanggalDibuat`, `TanggalDiupdate`, `JumlahHalaman`) VALUES
(1, 'Building Microservices: Designing Fine-Grained Systems 1st', 'Sam Newman', 2015, 'O\'Reilly Media', '2023-09-18', '2023-09-20', NULL),
(2, 'Clean Code', 'Robert C. Martin', 2008, 'Prentice Hall', '2023-09-18', '2023-09-18', NULL),
(3, 'The Pragmatic Programmer', 'Andrew Hunt', 1999, 'Addison-Wesley', '2023-09-18', '2023-09-18', NULL),
(4, 'Design Patterns', 'Erich Gamma', 1994, 'Addison-Wesley', '2023-09-18', '2023-09-18', NULL),
(5, 'Introduction to Algorithms', 'Thomas H. Cormen', 1990, 'MIT Press', '2023-09-18', '2023-09-18', NULL),
(6, 'The Art of Computer Prog.', 'Donald E. Knuth', 1968, 'Addison-Wesley', '2023-09-18', '2023-09-18', NULL),
(7, 'Clean Architecture', 'Robert C. Martin', 2017, 'Prentice Hall', '2023-09-18', '2023-09-18', NULL),
(8, 'Refactoring', 'Martin Fowler', 1999, 'Addison-Wesley', '2023-09-18', '2023-09-18', NULL),
(9, 'Domain-Driven Design', 'Eric Evans', 2003, 'Addison-Wesley', '2023-09-18', '2023-09-18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `book_categories`
--

CREATE TABLE `book_categories` (
  `Id` int(11) NOT NULL,
  `IdCategory` int(11) DEFAULT NULL,
  `IdBook` int(11) DEFAULT NULL,
  `TanggalDibuat` date DEFAULT NULL,
  `TanggalDiupdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_categories`
--

INSERT INTO `book_categories` (`Id`, `IdCategory`, `IdBook`, `TanggalDibuat`, `TanggalDiupdate`) VALUES
(1, 2, 1, '2023-09-18', '2023-09-18'),
(2, 5, 3, '2023-09-18', '2023-09-18'),
(3, 1, 1, '2023-09-18', '2023-09-18');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `Id` int(11) NOT NULL,
  `NamaCategory` varchar(255) DEFAULT NULL,
  `TanggalDibuat` date DEFAULT NULL,
  `TanggalDiupdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`Id`, `NamaCategory`, `TanggalDibuat`, `TanggalDiupdate`) VALUES
(1, 'Pemrograman', '2023-09-18', '2023-09-23'),
(2, 'Fiksi', '2023-09-18', '2023-09-18'),
(3, 'Nonfiksi', '2023-09-18', '2023-09-18'),
(4, 'Bisnis', '2023-09-18', '2023-09-18'),
(5, 'Teknologi', '2023-09-18', '2023-09-18'),
(6, 'Seni', '2023-09-18', '2023-09-18'),
(7, 'Sejarah', '2023-09-18', '2023-09-18'),
(8, 'Sains', '2023-09-18', '2023-09-18'),
(9, 'Hukum', '2023-09-18', '2023-09-18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `book_categories`
--
ALTER TABLE `book_categories`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdCategory` (`IdCategory`),
  ADD KEY `IdBook` (`IdBook`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`Id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `book_categories`
--
ALTER TABLE `book_categories`
  ADD CONSTRAINT `book_categories_ibfk_1` FOREIGN KEY (`IdCategory`) REFERENCES `category` (`Id`),
  ADD CONSTRAINT `book_categories_ibfk_2` FOREIGN KEY (`IdBook`) REFERENCES `books` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
