-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2019 at 06:50 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `librarydemo`
--

-- --------------------------------------------------------

--
-- Table structure for table `aspnetroleclaims`
--

CREATE TABLE `aspnetroleclaims` (
  `Id` int(11) NOT NULL,
  `RoleId` char(36) NOT NULL,
  `ClaimType` longtext,
  `ClaimValue` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aspnetroles`
--

CREATE TABLE `aspnetroles` (
  `Id` char(36) NOT NULL,
  `Name` varchar(256) DEFAULT NULL,
  `NormalizedName` varchar(256) DEFAULT NULL,
  `ConcurrencyStamp` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aspnetuserclaims`
--

CREATE TABLE `aspnetuserclaims` (
  `Id` int(11) NOT NULL,
  `UserId` char(36) NOT NULL,
  `ClaimType` longtext,
  `ClaimValue` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aspnetuserlogins`
--

CREATE TABLE `aspnetuserlogins` (
  `LoginProvider` varchar(255) NOT NULL,
  `ProviderKey` varchar(255) NOT NULL,
  `ProviderDisplayName` longtext,
  `UserId` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aspnetuserroles`
--

CREATE TABLE `aspnetuserroles` (
  `UserId` char(36) NOT NULL,
  `RoleId` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aspnetusers`
--

CREATE TABLE `aspnetusers` (
  `Id` char(36) NOT NULL,
  `UserName` varchar(256) DEFAULT NULL,
  `NormalizedUserName` varchar(256) DEFAULT NULL,
  `Email` varchar(256) DEFAULT NULL,
  `NormalizedEmail` varchar(256) DEFAULT NULL,
  `EmailConfirmed` bit(1) NOT NULL,
  `PasswordHash` longtext,
  `SecurityStamp` longtext,
  `ConcurrencyStamp` longtext,
  `PhoneNumber` longtext,
  `PhoneNumberConfirmed` bit(1) NOT NULL,
  `TwoFactorEnabled` bit(1) NOT NULL,
  `LockoutEnd` datetime(6) DEFAULT NULL,
  `LockoutEnabled` bit(1) NOT NULL,
  `AccessFailedCount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `aspnetusertokens`
--

CREATE TABLE `aspnetusertokens` (
  `UserId` char(36) NOT NULL,
  `LoginProvider` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `branchhours`
--

CREATE TABLE `branchhours` (
  `Id` int(11) NOT NULL,
  `BranchId` int(11) DEFAULT NULL,
  `DayOfWeek` int(11) NOT NULL,
  `OpenTime` int(11) NOT NULL,
  `CloseTime` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branchhours`
--

INSERT INTO `branchhours` (`Id`, `BranchId`, `DayOfWeek`, `OpenTime`, `CloseTime`) VALUES
(1, 1, 1, 7, 14),
(2, 1, 2, 7, 18),
(3, 1, 3, 7, 18),
(4, 1, 4, 7, 18),
(5, 1, 5, 7, 18),
(6, 1, 6, 7, 18),
(7, 1, 7, 7, 14),
(8, 2, 1, 6, 20),
(9, 2, 2, 6, 20),
(10, 2, 3, 6, 20),
(11, 2, 4, 6, 20),
(12, 2, 5, 6, 20),
(13, 2, 6, 6, 20),
(14, 2, 7, 6, 20),
(15, 3, 1, 5, 22),
(16, 3, 2, 5, 18),
(17, 3, 3, 5, 18),
(18, 3, 4, 5, 18),
(19, 3, 5, 5, 18),
(20, 3, 6, 5, 22),
(21, 3, 7, 5, 22);

-- --------------------------------------------------------

--
-- Table structure for table `checkouthistories`
--

CREATE TABLE `checkouthistories` (
  `Id` int(11) NOT NULL,
  `LibraryAssetId` int(11) NOT NULL,
  `LibraryCardId` int(11) NOT NULL,
  `CheckedOut` datetime(6) NOT NULL,
  `CheckedIn` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `checkouthistories`
--

INSERT INTO `checkouthistories` (`Id`, `LibraryAssetId`, `LibraryCardId`, `CheckedOut`, `CheckedIn`) VALUES
(3, 1, 4, '2018-12-19 06:54:42.119197', '2018-12-19 06:56:03.491824'),
(4, 1, 5, '2018-12-19 06:56:03.593035', '2018-12-19 06:56:48.372857'),
(5, 1, 5, '2018-12-19 06:56:48.437220', '2018-12-19 06:56:57.483931'),
(6, 1, 4, '2018-12-19 06:56:57.608043', '2018-12-19 06:56:59.643447'),
(7, 1, 6, '2018-12-19 06:56:59.676731', '2018-12-19 06:57:15.658890'),
(8, 1, 8, '2018-12-20 10:20:26.631240', '2018-12-20 10:33:38.058287'),
(9, 1, 2, '2018-12-20 10:33:45.906436', '2019-01-08 08:13:08.886322'),
(10, 1, 1, '2019-01-08 08:13:25.437140', '2019-01-08 08:14:23.258147'),
(11, 1, 5, '2019-01-08 08:15:39.755441', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `checkouts`
--

CREATE TABLE `checkouts` (
  `Id` int(11) NOT NULL,
  `LibraryAssetId` int(11) NOT NULL,
  `LibraryCardId` int(11) DEFAULT NULL,
  `Since` datetime(6) NOT NULL,
  `Until` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `checkouts`
--

INSERT INTO `checkouts` (`Id`, `LibraryAssetId`, `LibraryCardId`, `Since`, `Until`) VALUES
(4, 1, 5, '2019-01-08 08:15:39.755441', '2019-02-07 08:15:39.755441');

-- --------------------------------------------------------

--
-- Table structure for table `holds`
--

CREATE TABLE `holds` (
  `Id` int(11) NOT NULL,
  `LibraryAssetId` int(11) DEFAULT NULL,
  `LibraryCardId` int(11) DEFAULT NULL,
  `HoldPlaced` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `holds`
--

INSERT INTO `holds` (`Id`, `LibraryAssetId`, `LibraryCardId`, `HoldPlaced`) VALUES
(1, 1, 5, '2019-01-08 08:16:23.060027');

-- --------------------------------------------------------

--
-- Table structure for table `libraryassets`
--

CREATE TABLE `libraryassets` (
  `Id` int(11) NOT NULL,
  `Title` longtext NOT NULL,
  `Year` int(11) NOT NULL,
  `StatusId` int(11) NOT NULL,
  `Cost` decimal(65,30) NOT NULL,
  `ImageUrl` longtext,
  `NumberOfCopies` int(11) NOT NULL,
  `LocationId` int(11) DEFAULT NULL,
  `Discriminator` longtext NOT NULL,
  `ISBN` longtext,
  `Author` longtext,
  `DeweyIndex` longtext,
  `Director` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `libraryassets`
--

INSERT INTO `libraryassets` (`Id`, `Title`, `Year`, `StatusId`, `Cost`, `ImageUrl`, `NumberOfCopies`, `LocationId`, `Discriminator`, `ISBN`, `Author`, `DeweyIndex`, `Director`) VALUES
(1, 'Emma', 1815, 1, '18.000000000000000000000000000000', '/images/emma.jpg', 1, 2, 'Book', '9781519202987', 'Jane Austen', '823.123', NULL),
(2, 'Jane Eyre', 1847, 2, '18.000000000000000000000000000000', '/images/janeeyre.jpg', 1, 3, 'Book', '9781519133977', 'Charlotte Brontë', '822.133', NULL),
(3, 'Moby Dick', 1851, 2, '12.990000000000000000000000000000', '/images/mobydick.png', 1, 2, 'Book', '9780746062760', 'Herman Melville', '821.153', NULL),
(4, 'Ulysses', 1922, 1, '24.000000000000000000000000000000', '/images/ulysses.png', 3, 2, 'Book', '9788854139343', 'James Joyce', '822.556', NULL),
(5, 'Republic', -380, 2, '11.000000000000000000000000000000', '/images/republic.png', 2, 3, 'Book', '9780758320209', 'Plato', '820.119', NULL),
(6, 'Dracula', 1897, 2, '18.000000000000000000000000000000', '/images/dracula.png', 4, 3, 'Book', '9781623750282', 'Bram Stoker', '821.526', NULL),
(7, 'White Noise', 1985, 2, '12.990000000000000000000000000000', '/images/default.png', 1, 2, 'Book', '9780670803736', 'Don Delillo', '822.436', NULL),
(8, 'Another Country', 1962, 2, '16.000000000000000000000000000000', '/images/default.png', 2, 2, 'Book', '9780552084574', 'James Baldwin', '821.325', NULL),
(9, 'The Waves', 1931, 2, '11.000000000000000000000000000000', '/images/thewaves.png', 1, 1, 'Book', '9781904919582', 'Virginia Woolf', '822.888', NULL),
(10, 'The Color Purple', 1982, 2, '11.990000000000000000000000000000', '/images/default.png', 2, 1, 'Book', '9780151191543', 'Alice Walker', '820.298', NULL),
(11, 'One Hundred Years of Solitude', 1967, 2, '12.500000000000000000000000000000', '/images/default.png', 1, 1, 'Book', '9789631420494', 'Gabriel García Márquez', '821.544', NULL),
(12, 'Friend of My Youth', 1990, 2, '22.000000000000000000000000000000', '/images/default.png', 1, 1, 'Book', '9788702163452', 'Alice Monroe', '821.444', NULL),
(13, 'To the Lighthouse', 1927, 2, '13.500000000000000000000000000000', '/images/tothelighthouse.png', 5, 1, 'Book', '9780795310522', 'Virginia Woolf', '820.111', NULL),
(14, 'Mrs Dalloway', 1925, 2, '15.990000000000000000000000000000', '/images/mrsdalloway.png', 1, 3, 'Book', '9785457626126', 'Virginia Woolf', '821.254', NULL),
(15, 'Blue Velvet', 1986, 2, '24.000000000000000000000000000000', '/images/default.png', 1, 1, 'Video', NULL, NULL, NULL, 'David Lynch'),
(16, 'Trois Coleurs: Rouge', 1994, 2, '24.000000000000000000000000000000', '/images/default.png', 1, 1, 'Video', NULL, NULL, NULL, 'Krzysztof Kieslowski'),
(17, 'Citizen Kane', 1941, 2, '30.000000000000000000000000000000', '/images/default.png', 1, 1, 'Video', NULL, NULL, NULL, 'Orson Welles'),
(18, 'Spirited Away', 2002, 2, '28.000000000000000000000000000000', '/images/default.png', 1, 2, 'Video', NULL, NULL, NULL, 'Hayao Miyazaki'),
(19, 'The Departed', 2006, 2, '23.000000000000000000000000000000', '/images/default.png', 1, 2, 'Video', NULL, NULL, NULL, 'Martin Scorsese'),
(20, 'Taxi Driver', 1976, 2, '17.990000000000000000000000000000', '/images/default.png', 1, 2, 'Video', NULL, NULL, NULL, 'Martin Scorsese'),
(21, 'Casablanca', 1943, 2, '18.000000000000000000000000000000', '/images/default.png', 1, 3, 'Video', NULL, NULL, NULL, 'Michael Curtiz');

-- --------------------------------------------------------

--
-- Table structure for table `librarybranches`
--

CREATE TABLE `librarybranches` (
  `Id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Address` longtext NOT NULL,
  `Telephone` longtext NOT NULL,
  `Description` longtext,
  `OpenDate` datetime(6) NOT NULL,
  `ImageUrl` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `librarybranches`
--

INSERT INTO `librarybranches` (`Id`, `Name`, `Address`, `Telephone`, `Description`, `OpenDate`, `ImageUrl`) VALUES
(1, 'Lake Shore Branch', '88 Lakeshore Dr', '555-1234', 'The oldest library branch in Lakeview, the Lake Shore Branch was opened in 1975. Patrons of all ages enjoy the wide selection of literature available at Lake Shore library. The coffee shop is open during library hours of operation.', '1975-05-13 00:00:00.000000', '/images/branches/1.png'),
(2, 'Mountain View Branch', '123 Skyline Dr', '555-1235', 'The Mountain View branch contains the largest collection of technical and language learning books in the region. This branch is within walking distance to the University campus', '1998-06-01 00:00:00.000000', '/images/branches/2.png'),
(3, 'Pleasant Hill Branch', '540 Inventors Circle', '555-1236', 'The newest Lakeview Library System branch, Pleasant Hill has high-speed wireless access for all patrons and hosts Chess Club every Monday and Wednesday evening at 6 PM.', '2017-09-20 00:00:00.000000', '/images/branches/3.png'),
(4, 'Lake Shore Branch', '88 Lakeshore Dr', '555-1234', 'The oldest library branch in Lakeview, the Lake Shore Branch was opened in 1975. Patrons of all ages enjoy the wide selection of literature available at Lake Shore library. The coffee shop is open during library hours of operation.', '1975-05-13 00:00:00.000000', '/images/branches/1.png'),
(5, 'Mountain View Branch', '123 Skyline Dr', '555-1235', 'The Mountain View branch contains the largest collection of technical and language learning books in the region. This branch is within walking distance to the University campus', '1998-06-01 00:00:00.000000', '/images/branches/2.png'),
(6, 'Pleasant Hill Branch', '540 Inventors Circle', '555-1236', 'The newest Lakeview Library System branch, Pleasant Hill has high-speed wireless access for all patrons and hosts Chess Club every Monday and Wednesday evening at 6 PM.', '2017-09-20 00:00:00.000000', '/images/branches/3.png'),
(7, 'Lake Shore Branch', '88 Lakeshore Dr', '555-1234', 'The oldest library branch in Lakeview, the Lake Shore Branch was opened in 1975. Patrons of all ages enjoy the wide selection of literature available at Lake Shore library. The coffee shop is open during library hours of operation.', '1975-05-13 00:00:00.000000', '/images/branches/1.png'),
(8, 'Mountain View Branch', '123 Skyline Dr', '555-1235', 'The Mountain View branch contains the largest collection of technical and language learning books in the region. This branch is within walking distance to the University campus', '1998-06-01 00:00:00.000000', '/images/branches/2.png'),
(9, 'Pleasant Hill Branch', '540 Inventors Circle', '555-1236', 'The newest Lakeview Library System branch, Pleasant Hill has high-speed wireless access for all patrons and hosts Chess Club every Monday and Wednesday evening at 6 PM.', '2017-09-20 00:00:00.000000', '/images/branches/3.png');

-- --------------------------------------------------------

--
-- Table structure for table `librarycards`
--

CREATE TABLE `librarycards` (
  `Id` int(11) NOT NULL,
  `Fees` decimal(65,30) NOT NULL,
  `Created` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `librarycards`
--

INSERT INTO `librarycards` (`Id`, `Fees`, `Created`) VALUES
(1, '12.000000000000000000000000000000', '2017-06-20 00:00:00.000000'),
(2, '0.000000000000000000000000000000', '2017-06-20 00:00:00.000000'),
(3, '0.500000000000000000000000000000', '2017-06-21 00:00:00.000000'),
(4, '0.000000000000000000000000000000', '2017-06-21 00:00:00.000000'),
(5, '3.500000000000000000000000000000', '2017-06-21 00:00:00.000000'),
(6, '1.500000000000000000000000000000', '2017-06-23 00:00:00.000000'),
(7, '0.000000000000000000000000000000', '2017-06-23 00:00:00.000000'),
(8, '8.000000000000000000000000000000', '2017-06-23 00:00:00.000000'),
(9, '12.000000000000000000000000000000', '2017-06-20 00:00:00.000000'),
(10, '0.000000000000000000000000000000', '2017-06-20 00:00:00.000000'),
(11, '0.500000000000000000000000000000', '2017-06-21 00:00:00.000000'),
(12, '0.000000000000000000000000000000', '2017-06-21 00:00:00.000000'),
(13, '3.500000000000000000000000000000', '2017-06-21 00:00:00.000000'),
(14, '1.500000000000000000000000000000', '2017-06-23 00:00:00.000000'),
(15, '0.000000000000000000000000000000', '2017-06-23 00:00:00.000000'),
(16, '8.000000000000000000000000000000', '2017-06-23 00:00:00.000000'),
(17, '12.000000000000000000000000000000', '2017-06-20 00:00:00.000000'),
(18, '0.000000000000000000000000000000', '2017-06-20 00:00:00.000000'),
(19, '0.500000000000000000000000000000', '2017-06-21 00:00:00.000000'),
(20, '0.000000000000000000000000000000', '2017-06-21 00:00:00.000000'),
(21, '3.500000000000000000000000000000', '2017-06-21 00:00:00.000000'),
(22, '1.500000000000000000000000000000', '2017-06-23 00:00:00.000000'),
(23, '0.000000000000000000000000000000', '2017-06-23 00:00:00.000000'),
(24, '8.000000000000000000000000000000', '2017-06-23 00:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `patrons`
--

CREATE TABLE `patrons` (
  `Id` int(11) NOT NULL,
  `FirstName` varchar(30) NOT NULL,
  `LastName` varchar(30) NOT NULL,
  `Address` longtext NOT NULL,
  `DateOfBirth` datetime(6) NOT NULL,
  `Telephone` longtext,
  `Gender` longtext,
  `LibraryCardId` int(11) NOT NULL,
  `HomeLibraryBranchId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patrons`
--

INSERT INTO `patrons` (`Id`, `FirstName`, `LastName`, `Address`, `DateOfBirth`, `Telephone`, `Gender`, `LibraryCardId`, `HomeLibraryBranchId`) VALUES
(9, 'Jane', 'Patterson', '165 Peace St', '1986-07-10 00:00:00.000000', '555-1234', NULL, 1, 1),
(10, 'Margaret', 'Smith', '324 Shadow Ln', '1984-03-12 00:00:00.000000', '555-7785', NULL, 2, 2),
(11, 'Tomas', 'Galloway', '18 Stone Cir', '1956-02-10 00:00:00.000000', '555-3467', NULL, 3, 2),
(12, 'Mary', 'Li', '246 Jennifer St', '1997-01-17 00:00:00.000000', '555-1223', NULL, 4, 3),
(13, 'Dan', 'Carter', '1465 Williamson St', '1952-09-16 00:00:00.000000', '555-8884', NULL, 5, 3),
(14, 'Aruna', 'Adhiban', '785 Park Ave', '1994-03-24 00:00:00.000000', '555-9988', NULL, 6, 3),
(15, 'Raj', 'Prasad', '5654 Main St', '2001-11-23 00:00:00.000000', '555-7894', NULL, 7, 1),
(16, 'Tatyana', 'Ponomaryova', '1352 Bicycle Ct', '1981-10-16 00:00:00.000000', '555-4568', NULL, 8, 3),
(17, 'Jane', 'Patterson', '165 Peace St', '1986-07-10 00:00:00.000000', '555-1234', NULL, 1, 1),
(18, 'Margaret', 'Smith', '324 Shadow Ln', '1984-03-12 00:00:00.000000', '555-7785', NULL, 2, 2),
(19, 'Tomas', 'Galloway', '18 Stone Cir', '1956-02-10 00:00:00.000000', '555-3467', NULL, 3, 2),
(20, 'Mary', 'Li', '246 Jennifer St', '1997-01-17 00:00:00.000000', '555-1223', NULL, 4, 3),
(21, 'Dan', 'Carter', '1465 Williamson St', '1952-09-16 00:00:00.000000', '555-8884', NULL, 5, 3),
(22, 'Aruna', 'Adhiban', '785 Park Ave', '1994-03-24 00:00:00.000000', '555-9988', NULL, 6, 3),
(23, 'Raj', 'Prasad', '5654 Main St', '2001-11-23 00:00:00.000000', '555-7894', NULL, 7, 1),
(24, 'Tatyana', 'Ponomaryova', '1352 Bicycle Ct', '1981-10-16 00:00:00.000000', '555-4568', NULL, 8, 3),
(25, 'Jane', 'Patterson', '165 Peace St', '1986-07-10 00:00:00.000000', '555-1234', NULL, 1, 1),
(26, 'Margaret', 'Smith', '324 Shadow Ln', '1984-03-12 00:00:00.000000', '555-7785', NULL, 2, 2),
(27, 'Tomas', 'Galloway', '18 Stone Cir', '1956-02-10 00:00:00.000000', '555-3467', NULL, 3, 2),
(28, 'Mary', 'Li', '246 Jennifer St', '1997-01-17 00:00:00.000000', '555-1223', NULL, 4, 3),
(29, 'Dan', 'Carter', '1465 Williamson St', '1952-09-16 00:00:00.000000', '555-8884', NULL, 5, 3),
(30, 'Aruna', 'Adhiban', '785 Park Ave', '1994-03-24 00:00:00.000000', '555-9988', NULL, 6, 3),
(31, 'Raj', 'Prasad', '5654 Main St', '2001-11-23 00:00:00.000000', '555-7894', NULL, 7, 1),
(32, 'Tatyana', 'Ponomaryova', '1352 Bicycle Ct', '1981-10-16 00:00:00.000000', '555-4568', NULL, 8, 3);

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `Id` int(11) NOT NULL,
  `Name` longtext NOT NULL,
  `Description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`Id`, `Name`, `Description`) VALUES
(1, 'Checked Out', 'A library asset that has been checked out'),
(2, 'Available', 'A library asset that is available for loan'),
(3, 'Lost', 'A library asset that has been lost'),
(4, 'On Hold', 'A library asset that has been placed On Hold for loan');

-- --------------------------------------------------------

--
-- Table structure for table `__efmigrationshistory`
--

CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(95) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `__efmigrationshistory`
--

INSERT INTO `__efmigrationshistory` (`MigrationId`, `ProductVersion`) VALUES
('20181211142734_Initial', '2.1.4-rtm-31024'),
('20181221182337_Identity', '2.1.4-rtm-31024'),
('20181221183952_password', '2.1.4-rtm-31024'),
('20181221185022_Identity', '2.1.4-rtm-31024');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_AspNetRoleClaims_RoleId` (`RoleId`);

--
-- Indexes for table `aspnetroles`
--
ALTER TABLE `aspnetroles`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `RoleNameIndex` (`NormalizedName`);

--
-- Indexes for table `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_AspNetUserClaims_UserId` (`UserId`);

--
-- Indexes for table `aspnetuserlogins`
--
ALTER TABLE `aspnetuserlogins`
  ADD PRIMARY KEY (`LoginProvider`,`ProviderKey`),
  ADD KEY `IX_AspNetUserLogins_UserId` (`UserId`);

--
-- Indexes for table `aspnetuserroles`
--
ALTER TABLE `aspnetuserroles`
  ADD PRIMARY KEY (`UserId`,`RoleId`),
  ADD KEY `IX_AspNetUserRoles_RoleId` (`RoleId`);

--
-- Indexes for table `aspnetusers`
--
ALTER TABLE `aspnetusers`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UserNameIndex` (`NormalizedUserName`),
  ADD KEY `EmailIndex` (`NormalizedEmail`);

--
-- Indexes for table `aspnetusertokens`
--
ALTER TABLE `aspnetusertokens`
  ADD PRIMARY KEY (`UserId`,`LoginProvider`,`Name`);

--
-- Indexes for table `branchhours`
--
ALTER TABLE `branchhours`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_BranchHours_BranchId` (`BranchId`);

--
-- Indexes for table `checkouthistories`
--
ALTER TABLE `checkouthistories`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_CheckoutHistories_LibraryAssetId` (`LibraryAssetId`),
  ADD KEY `IX_CheckoutHistories_LibraryCardId` (`LibraryCardId`);

--
-- Indexes for table `checkouts`
--
ALTER TABLE `checkouts`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_Checkouts_LibraryAssetId` (`LibraryAssetId`),
  ADD KEY `IX_Checkouts_LibraryCardId` (`LibraryCardId`);

--
-- Indexes for table `holds`
--
ALTER TABLE `holds`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_Holds_LibraryAssetId` (`LibraryAssetId`),
  ADD KEY `IX_Holds_LibraryCardId` (`LibraryCardId`);

--
-- Indexes for table `libraryassets`
--
ALTER TABLE `libraryassets`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_LibraryAssets_LocationId` (`LocationId`),
  ADD KEY `IX_LibraryAssets_StatusId` (`StatusId`);

--
-- Indexes for table `librarybranches`
--
ALTER TABLE `librarybranches`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `librarycards`
--
ALTER TABLE `librarycards`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `patrons`
--
ALTER TABLE `patrons`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_Patrons_HomeLibraryBranchId` (`HomeLibraryBranchId`),
  ADD KEY `IX_Patrons_LibraryCardId` (`LibraryCardId`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `__efmigrationshistory`
--
ALTER TABLE `__efmigrationshistory`
  ADD PRIMARY KEY (`MigrationId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `branchhours`
--
ALTER TABLE `branchhours`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `checkouthistories`
--
ALTER TABLE `checkouthistories`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `checkouts`
--
ALTER TABLE `checkouts`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `holds`
--
ALTER TABLE `holds`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `libraryassets`
--
ALTER TABLE `libraryassets`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `librarybranches`
--
ALTER TABLE `librarybranches`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `librarycards`
--
ALTER TABLE `librarycards`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `patrons`
--
ALTER TABLE `patrons`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `aspnetroleclaims`
--
ALTER TABLE `aspnetroleclaims`
  ADD CONSTRAINT `FK_AspNetRoleClaims_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `aspnetuserclaims`
--
ALTER TABLE `aspnetuserclaims`
  ADD CONSTRAINT `FK_AspNetUserClaims_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `aspnetuserlogins`
--
ALTER TABLE `aspnetuserlogins`
  ADD CONSTRAINT `FK_AspNetUserLogins_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `aspnetuserroles`
--
ALTER TABLE `aspnetuserroles`
  ADD CONSTRAINT `FK_AspNetUserRoles_AspNetRoles_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `aspnetroles` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_AspNetUserRoles_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `aspnetusertokens`
--
ALTER TABLE `aspnetusertokens`
  ADD CONSTRAINT `FK_AspNetUserTokens_AspNetUsers_UserId` FOREIGN KEY (`UserId`) REFERENCES `aspnetusers` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `branchhours`
--
ALTER TABLE `branchhours`
  ADD CONSTRAINT `FK_BranchHours_LibraryBranches_BranchId` FOREIGN KEY (`BranchId`) REFERENCES `librarybranches` (`Id`) ON DELETE NO ACTION;

--
-- Constraints for table `checkouthistories`
--
ALTER TABLE `checkouthistories`
  ADD CONSTRAINT `FK_CheckoutHistories_LibraryAssets_LibraryAssetId` FOREIGN KEY (`LibraryAssetId`) REFERENCES `libraryassets` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_CheckoutHistories_LibraryCards_LibraryCardId` FOREIGN KEY (`LibraryCardId`) REFERENCES `librarycards` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `checkouts`
--
ALTER TABLE `checkouts`
  ADD CONSTRAINT `FK_Checkouts_LibraryAssets_LibraryAssetId` FOREIGN KEY (`LibraryAssetId`) REFERENCES `libraryassets` (`Id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_Checkouts_LibraryCards_LibraryCardId` FOREIGN KEY (`LibraryCardId`) REFERENCES `librarycards` (`Id`) ON DELETE NO ACTION;

--
-- Constraints for table `holds`
--
ALTER TABLE `holds`
  ADD CONSTRAINT `FK_Holds_LibraryAssets_LibraryAssetId` FOREIGN KEY (`LibraryAssetId`) REFERENCES `libraryassets` (`Id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `FK_Holds_LibraryCards_LibraryCardId` FOREIGN KEY (`LibraryCardId`) REFERENCES `librarycards` (`Id`) ON DELETE NO ACTION;

--
-- Constraints for table `libraryassets`
--
ALTER TABLE `libraryassets`
  ADD CONSTRAINT `FK_LibraryAssets_LibraryBranches_LocationId` FOREIGN KEY (`LocationId`) REFERENCES `librarybranches` (`Id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `FK_LibraryAssets_Statuses_StatusId` FOREIGN KEY (`StatusId`) REFERENCES `statuses` (`Id`) ON DELETE CASCADE;

--
-- Constraints for table `patrons`
--
ALTER TABLE `patrons`
  ADD CONSTRAINT `FK_Patrons_LibraryBranches_HomeLibraryBranchId` FOREIGN KEY (`HomeLibraryBranchId`) REFERENCES `librarybranches` (`Id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `FK_Patrons_LibraryCards_LibraryCardId` FOREIGN KEY (`LibraryCardId`) REFERENCES `librarycards` (`Id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
