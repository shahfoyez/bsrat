-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2021 at 01:28 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `you_care`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(55) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `hometown` varchar(255) NOT NULL,
  `curaddress` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `pin` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `name`, `username`, `email`, `password`, `phone`, `img`, `hometown`, `curaddress`, `role`, `pin`) VALUES
(1001, 'Shah Fayez Ali', 'foyez', 'foyez@gmail.com', '202cb962ac59075b964b07152d234b70', '0161011212', 'upload/admins/58331f0ddc.jpg', 'Moulvibazar', 'Shibgonj, Sylhet', 'Admin', 100),
(1002, 'Ashraful Islam', 'nila', 'nila@gmail.com', '202cb962ac59075b964b07152d234b70', '01845678766', 'upload/admins/f69f282259.jpg', 'Hobiganj', 'Lamabazar, Sylhet', 'BusAdmin', 100),
(1003, 'Ashraful Islam', 'ashraf', 'ashraf@gmail.com', '202cb962ac59075b964b07152d234b70', '018181818181', 'upload/admins/fd8ddf586f.jpg', 'Moulvibazar', 'Shibgonj, Sylhet', 'Admin', 100),
(1004, 'Parvez Ahmed', 'parvez', 'parvez@gmail.com', '202cb962ac59075b964b07152d234b70', '01818181818', 'upload/admins/ce8c39e9b5.jpg', 'Sunamgang', 'Akhali, Sylhet', 'StudentAdmin', 100),
(1005, 'Abdur Rahim', 'rahim', 'rahim@gmail.com', '202cb962ac59075b964b07152d234b70', '01712121212', 'upload/admins/fd1e559d18.jpg', 'Tajpur', 'Akhali, Sylhet', 'BusAdmin', 101),
(1006, 'Jamal Hasan', 'jamal', 'jamal@gmail.com', '202cb962ac59075b964b07152d234b70', '01791919191', 'upload/admins/39ae3021d0.jpg', 'Habiganj', 'Modina Market', 'StudentAdmin', 132),
(1007, 'Mina Akter', 'mina', 'mina@gmail.com', '202cb962ac59075b964b07152d234b70', '01717171717', 'upload/admins/79886b894b.jpg', 'Osmaninagar', 'Subidbazar, Sylhet', 'Admin', 102);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_allstudents`
--

CREATE TABLE `tbl_allstudents` (
  `sl` int(255) NOT NULL,
  `id` int(255) NOT NULL,
  `studentName` varchar(255) NOT NULL,
  `dept` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(255) NOT NULL,
  `dob` date NOT NULL,
  `semester` int(55) NOT NULL,
  `section` varchar(55) NOT NULL,
  `img` varchar(255) NOT NULL,
  `hometown` varchar(255) NOT NULL,
  `current_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_allstudents`
--

INSERT INTO `tbl_allstudents` (`sl`, `id`, `studentName`, `dept`, `email`, `phone`, `dob`, `semester`, `section`, `img`, `hometown`, `current_address`) VALUES
(4, 1812020124, 'Shah Fayez Ali', 'CSE', 'shah@gmail.com', 1701010101, '1998-12-10', 0, 'C', 'upload/allStudents/6aced87624.jpg', 'Rajnagar, Moulvibazar', 'Shibganj, Sylhet'),
(5, 1812020127, 'Nilashish Roy', 'EEE', 'nila@gmail.com', 1501010101, '1997-12-12', 10, 'C', 'upload/allStudents/41cdc90c39.jpg', 'Habiganj', 'Lamabazar, Sylhet'),
(6, 1812020111, 'Parvez Ahmed', 'Civi', 'parvez@gmail.com', 1801010101, '1997-12-12', 10, 'C', 'upload/allStudents/5466325dde.jpg', 'Sunamganj', 'Tilaghor, Sylhet'),
(8, 1812020101, 'Masum Ahmed', 'IS', 'masum@gmail.com', 1500000001, '1996-09-19', 4, 'B', 'upload/allStudents/2544b4e3ad.jpg', 'Tajpur', 'Shibgonj, Sylhet'),
(9, 1812020102, 'Ayesha Akter', 'EEE', 'ayesha@gmail.com', 1900011111, '1998-11-19', 9, 'D', 'upload/allStudents/4d1040a1ee.jpg', 'Kulaura', 'Akhali, Sylhet');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bus`
--

CREATE TABLE `tbl_bus` (
  `busid` int(255) NOT NULL,
  `nplate` varchar(255) NOT NULL,
  `seats` int(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_bus`
--

INSERT INTO `tbl_bus` (`busid`, `nplate`, `seats`, `status`) VALUES
(1, 'sylhet-ha-0001', 41, 0),
(2, 'sylhet-ha-0002', 44, 0),
(3, 'sylhet-ha-1003', 39, 0),
(4, 'sylhet-ha-1004', 40, 0),
(5, 'sylhet-ha-1005', 44, 0),
(6, 'sylhet-ha-1006', 40, 0),
(7, 'sylhet-ha-1007', 44, 0),
(8, 'sylhet-ha-1008', 44, 0),
(9, 'sylhet-ha-1009', 39, 0),
(10, 'sylhet-ha-1010', 55, 0),
(11, 'sylhet-ha-1011', 44, 0),
(12, 'sylhet-ha-1012', 44, 0),
(13, 'sylhet-ha-1013', 44, 0),
(14, 'sylhet-ha-1014', 44, 0),
(15, 'sylhet-ha-1015', 44, 0),
(123, 'sylhet-ha-10134', 44, 0),
(12, 'dw22', 22, 0),
(12, 'dw22', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_busrecord`
--

CREATE TABLE `tbl_busrecord` (
  `busid` int(255) NOT NULL,
  `nplate` varchar(55) NOT NULL,
  `frm` varchar(255) NOT NULL,
  `dest` varchar(255) NOT NULL,
  `route` int(55) NOT NULL,
  `seats` int(55) NOT NULL,
  `booked` int(55) NOT NULL,
  `datee` date NOT NULL,
  `start` time NOT NULL,
  `reach` time NOT NULL,
  `status` int(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_busrecord`
--

INSERT INTO `tbl_busrecord` (`busid`, `nplate`, `frm`, `dest`, `route`, `seats`, `booked`, `datee`, `start`, `reach`, `status`) VALUES
(1, 'sylhet-ha-0001', 'Tilaghor', 'Kamal Bazar', 1, 41, 0, '2021-01-01', '01:56:00', '01:57:00', 1),
(1, 'sylhet-ha-0001', 'Tilaghor', 'Kamal Bazar', 3, 41, 0, '2021-01-01', '01:59:00', '02:00:00', 1),
(1, 'sylhet-ha-0001', 'Kamal Bazar', 'Tilaghor', 1, 41, 0, '2021-01-01', '02:13:00', '02:18:00', 1),
(2, 'sylhet-ha-0002', 'Tilaghor', 'Kamal Bazar', 3, 44, 0, '2021-03-01', '02:19:00', '02:24:00', 1),
(4, 'sylhet-ha-1004', 'Tilaghor', 'Kamal Bazar', 1, 40, 0, '2021-03-04', '02:20:00', '02:25:00', 1),
(9, 'sylhet-ha-1009', 'Tilaghor', 'Kamal Bazar', 2, 39, 0, '2021-03-04', '02:22:00', '02:32:00', 1),
(1, 'sylhet-ha-0001', 'Tilaghor', 'Kamal Bazar', 2, 41, 0, '2021-01-01', '02:23:00', '02:25:00', 1),
(1, 'sylhet-ha-0001', 'Tilaghor', 'Kamal Bazar', 2, 41, 0, '2021-01-01', '02:26:00', '02:28:00', 1),
(6, 'sylhet-ha-1006', 'Tilaghor', 'Upashahar', 2, 40, 0, '2021-03-04', '02:27:00', '02:34:00', 1),
(8, 'sylhet-ha-1008', 'Tilaghor', 'Upashahar', 2, 44, 0, '2021-03-01', '02:28:00', '02:33:00', 1),
(2, 'sylhet-ha-0002', 'Tilaghor', 'Kamal Bazar', 1, 44, 0, '2021-03-01', '03:04:00', '03:05:00', 1),
(3, 'sylhet-ha-1003', 'Tilaghor', 'Kamal Bazar', 2, 39, 0, '2021-03-04', '03:05:00', '03:10:00', 1),
(1, 'sylhet-ha-0001', 'Tilaghor', 'Kamal Bazar', 3, 41, 0, '2021-01-01', '03:18:00', '03:19:00', 1),
(5, 'sylhet-ha-1005', 'Tilaghor', 'Kamal Bazar', 4, 44, 0, '2021-03-05', '20:39:00', '20:40:00', 1),
(5, 'sylhet-ha-1005', 'Tilaghor', 'Upashahar', 1, 44, 0, '2021-03-05', '20:40:00', '20:41:00', 1),
(3, 'sylhet-ha-1003', 'Tilaghor', 'Kamal Bazar', 2, 39, 0, '2021-03-05', '21:02:00', '21:05:00', 1),
(5, 'sylhet-ha-1005', 'Tilaghor', 'Upashahar', 2, 44, 0, '2021-03-05', '21:04:00', '21:05:00', 1),
(10, 'sylhet-ha-1010', 'Tilaghor', 'Kamal Bazar', 2, 55, 0, '2021-03-05', '21:23:00', '21:24:00', 1),
(6, 'sylhet-ha-1006', 'Tilaghor', 'Kamal Bazar', 1, 40, 0, '2021-03-05', '21:23:00', '21:23:39', 1),
(10, 'sylhet-ha-1010', 'Kamal Bazar', 'Upashahar', 4, 55, 0, '2021-03-05', '21:26:00', '21:26:43', 1),
(10, 'sylhet-ha-1010', 'Tilaghor', 'Kamal Bazar', 4, 55, 0, '2021-03-05', '21:32:00', '21:34:00', 1),
(9, 'sylhet-ha-1009', 'Tilaghor', 'Kamal Bazar', 2, 39, 0, '2021-03-05', '21:33:00', '21:33:59', 1),
(1, 'sylhet-ha-0001', 'Tilaghor', 'Kamal Bazar', 1, 41, 0, '2021-03-07', '02:11:00', '02:15:00', 1),
(8, 'sylhet-ha-1008', 'Tilaghor', 'Kamal Bazar', 2, 44, 0, '2021-03-07', '02:11:00', '02:17:00', 1),
(6, 'sylhet-ha-1006', 'Kamal Bazar', 'Tilaghor', 4, 40, 0, '2021-03-07', '02:12:00', '03:07:00', 1),
(1, 'sylhet-ha-0001', 'Tilaghor', 'Kamal Bazar', 2, 41, 0, '2021-03-08', '15:05:00', '15:06:00', 1),
(1, 'sylhet-ha-0001', 'Tilaghor', 'Kamal Bazar', 1, 41, 0, '2021-03-08', '15:07:00', '15:08:00', 1),
(10, 'sylhet-ha-1010', 'Tilaghor', 'Kamal Bazar', 1, 55, 0, '2021-03-14', '20:50:00', '21:30:00', 1),
(5, 'sylhet-ha-1005', 'Tilaghor', 'Kamal Bazar', 1, 44, 0, '2021-03-14', '20:50:00', '21:12:00', 1),
(2, 'sylhet-ha-0002', 'Kamal Bazar', 'Upashahar', 4, 44, 0, '2021-03-14', '22:51:00', '22:55:00', 1),
(3, 'sylhet-ha-1003', 'Kamal Bazar', 'Subid Bazar', 3, 39, 0, '2021-03-14', '22:51:00', '00:23:55', 1),
(4, 'sylhet-ha-1004', 'Tilaghor', 'Kamal Bazar', 3, 40, 0, '2021-03-14', '22:52:00', '22:53:00', 1),
(2, 'sylhet-ha-0002', 'Tilaghor', 'Kamal Bazar', 2, 44, 0, '2021-03-15', '00:29:00', '00:30:00', 1),
(4, 'sylhet-ha-1004', 'Tilaghor', 'Kamal Bazar', 1, 40, 0, '2021-03-15', '08:33:00', '11:10:00', 1),
(6, 'sylhet-ha-1006', 'Tilaghor', 'Kamal Bazar', 3, 40, 0, '2021-03-15', '14:55:00', '16:59:00', 2),
(2, 'sylhet-ha-0002', 'Tilaghor', 'Kamal Bazar', 2, 44, 0, '2021-03-15', '15:10:00', '15:11:00', 1),
(7, 'sylhet-ha-1007', 'Tilaghor', 'Kamal Bazar', 2, 44, 0, '2021-03-15', '16:24:00', '16:25:00', 1),
(7, 'sylhet-ha-1007', 'Tilaghor', 'Upashahar', 3, 44, 0, '2021-03-15', '16:26:00', '16:32:00', 2),
(1, 'sylhet-ha-0001', 'Tilaghor', 'Upashahar', 2, 41, 0, '2021-03-15', '16:31:00', '16:43:00', 2),
(10, 'sylhet-ha-1010', 'Kamal Bazar', 'Tilaghor', 2, 55, 0, '2021-03-15', '16:33:00', '18:38:00', 1),
(5, 'sylhet-ha-1005', 'Tilaghor', 'Kamal Bazar', 4, 44, 0, '2021-03-15', '20:52:00', '22:50:00', 1),
(11, 'sylhet-ha-1011', 'Upashahar', 'Kamal Bazar', 1, 44, 0, '2021-03-15', '22:14:00', '23:14:00', 2),
(9, 'sylhet-ha-1009', 'Kamal Bazar', 'Tilaghor', 2, 39, 0, '2021-03-15', '22:58:00', '22:59:00', 1),
(2, 'sylhet-ha-0002', 'Kamal Bazar', 'Tilaghor', 2, 44, 0, '2021-03-17', '15:57:00', '16:30:00', 1),
(1, 'sylhet-ha-0001', 'Tilaghor', 'Kamal Bazar', 2, 41, 0, '2021-03-18', '00:40:00', '01:04:00', 1),
(4, 'sylhet-ha-1004', 'Tilaghor', 'Kamal Bazar', 3, 40, 0, '2021-03-18', '00:41:00', '01:47:00', 1),
(8, 'sylhet-ha-1008', 'Tilaghor', 'Upashahar', 2, 44, 0, '2021-03-18', '15:56:00', '16:56:00', 1),
(1, 'sylhet-ha-0001', 'Tilaghor', 'Kamal Bazar', 2, 41, 0, '2021-03-18', '22:05:00', '22:06:00', 1),
(1, 'sylhet-ha-0001', 'Tilaghor', 'Kamal Bazar', 3, 41, 0, '2021-03-18', '22:22:00', '22:28:00', 1),
(1, 'sylhet-ha-0001', 'Tilaghor', 'Kamal Bazar', 1, 41, 0, '2021-03-25', '23:47:00', '23:53:00', 1),
(5, 'sylhet-ha-1005', 'Kamal Bazar', 'Tilaghor', 2, 44, 0, '2021-03-26', '22:17:00', '22:17:29', 1),
(2, 'sylhet-ha-0002', 'Tilaghor', 'Kamal Bazar', 2, 44, 0, '2021-03-30', '21:34:00', '21:52:32', 1),
(1, 'sylhet-ha-0001', 'Tilaghor', 'Kamal Bazar', 2, 41, 0, '2021-03-31', '13:52:00', '14:00:49', 1),
(1, 'sylhet-ha-0001', 'Tilaghor', 'Kamal Bazar', 2, 41, 0, '2021-05-29', '19:51:00', '19:54:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bussend`
--

CREATE TABLE `tbl_bussend` (
  `busid` int(255) NOT NULL,
  `frm` varchar(255) NOT NULL,
  `dest` varchar(255) NOT NULL,
  `route` int(55) NOT NULL,
  `seats` int(255) NOT NULL,
  `booked` int(255) NOT NULL,
  `datee` date NOT NULL,
  `start` time NOT NULL,
  `reach` time NOT NULL,
  `status` int(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_seat`
--

CREATE TABLE `tbl_seat` (
  `seatno` varchar(11) NOT NULL,
  `status` int(55) NOT NULL,
  `studentid` int(255) NOT NULL,
  `frm` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_seat`
--

INSERT INTO `tbl_seat` (`seatno`, `status`, `studentid`, `frm`) VALUES
('a1', 1, 1812020124, ''),
('a2', 1, 1812020124, ''),
('a3', 0, 0, ''),
('a4', 1, 1812020122, 'shibgonj'),
('a5', 0, 0, ''),
('a6', 1, 1812020111, 'Tilaghor'),
('a7', 1, 1812020111, 'Tilaghor'),
('a8', 0, 0, ''),
('a9', 0, 0, ''),
('b1', 0, 0, ''),
('b2', 0, 0, ''),
('b3', 1, 1812020124, ''),
('b4', 1, 1812020124, ''),
('b5', 1, 1812020124, ''),
('b6', 0, 0, ''),
('b7', 1, 1812020124, ''),
('b8', 0, 0, ''),
('b9', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

CREATE TABLE `tbl_student` (
  `studentName` varchar(255) NOT NULL,
  `studentid` varchar(255) NOT NULL,
  `dept` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `semester` int(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `prefered_route` int(55) NOT NULL,
  `pick_up_point` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_student`
--

INSERT INTO `tbl_student` (`studentName`, `studentid`, `dept`, `email`, `password`, `phone`, `dob`, `semester`, `section`, `img`, `prefered_route`, `pick_up_point`) VALUES
('Shah Fayez Ali', '1812020124', 'CSE    ', 'foyez@gmail.com', '12345', '01610101010', '1997-11-11', 10, 'C', 'upload/registeredStudents/ba8e1c09dd.jpg', 4, 'Upashahar'),
('Muhammed Ashraful Islam', '1812020123', 'BBA ', 'mash12@gmail.com', '12345', '01610101010', '1997-12-12', 10, 'C', 'upload/registeredStudents/9ae5a7d23c.jpg', 2, 'Tilaghor'),
('Parvez Ahmed', '1812020111', 'CSE ', 'alex@gmail.com', '1234', '12345678910', '1997-12-12', 8, 'B', 'upload/registeredStudents/c7124d238b.jpg', 1, 'Upashahar');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_allstudents`
--
ALTER TABLE `tbl_allstudents`
  ADD PRIMARY KEY (`sl`);

--
-- Indexes for table `tbl_seat`
--
ALTER TABLE `tbl_seat`
  ADD UNIQUE KEY `bus_no` (`seatno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_allstudents`
--
ALTER TABLE `tbl_allstudents`
  MODIFY `sl` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
