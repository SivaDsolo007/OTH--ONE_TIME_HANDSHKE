-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2022 at 05:28 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mysite`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` int(14) NOT NULL,
  `age` int(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `age`) VALUES
(123, 25);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `email` varchar(100) NOT NULL,
  `aadhar` bigint(100) NOT NULL,
  `phone` bigint(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `UUID` varchar(100) NOT NULL,
  `key1` varchar(256) NOT NULL DEFAULT 'defaultkey',
  `iv1` varchar(256) NOT NULL DEFAULT 'defaultiv',
  `key2` varchar(256) NOT NULL DEFAULT 'defaultkey',
  `iv2` varchar(256) NOT NULL DEFAULT 'defaultiv',
  `status` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `username`, `email`, `aadhar`, `phone`, `password`, `UUID`, `key1`, `iv1`, `key2`, `iv2`, `status`) VALUES
(6, 'hhh', 'gamalieldas8371@gmail.com', 2147483647, 1234567890, '12345', 'DF456', '8270d435822e267584e578fbb2c6eaa7c427e91f6fcf4b891c1f1374af75154d', 'NGNhZjliZjE0M2JhOGFjMzE4NDlkMWQ3NTU1M2FiNTU=', 'lkp3f7u1sjv107jegkkamvhxs7km103u3q', '(>A&FT9?>%bV[55@', 0),
(8, 'check', 'gamalieldas@gmail.com', 2147483647, 2147483647, '1234567', '', 'defaultkey', 'defaultiv', 'defaultkey', 'defaultiv', 0),
(9, 'bharath', 'bharath@gmail.com', 2147483647, 1234567890, '12345', '', '0096e49b909b350923a25bf60c63803bcf2b3da8278f5bbc31792890872e7440', 'NDM1YzU3YzEyZjkwMzdkZjcyYjUxM2EyNDlhMjVkZWM=', 'aff6niq410aft5drw9xe8pabdeozuv10zb', 'M>oVApk0.yE&>3zx', 0),
(19, 'dum', 'gggg@gmail.com', 9876543211, 9876543210, '1234567', '', '332c933680046ebb9ca46d41017301d42f2162c386269be0994a4afd506de4cc', 'YjIxNzIxMmEyMDM3NGU1NTJlYjI0NWZjMmExMDJmMTE=', 'a1tuapr0a9809za4195ds3whrk4dua1v', 'Ld*v@nK18VTv?[BX', 0),
(20, 'king', 'kuku@gmail.com', 999999999999, 9876543210, '123456', '', 'defaultkey', 'defaultiv', 'defaultkey', 'defaultiv', 0),
(21, 'hhhhhhh', 'gmail@gmail.com', 9875647383839, 8899999, 'uuuuuuuu', '', 'defaultkey', 'defaultiv', 'defaultkey', 'defaultiv', 0),
(22, 'lol', '55fff2@GMAIL.COM', 999999999999, 8899999, '999999', '', '2810097eaccd59fe776695bb89b75ab2422de428fc76e9247533edcfbca1fe6d', 'ODhmMzcyZWUzYjRlOGQ4Yjc3MTgyMWFhMjJiMzBkZGY=', 'y8ktp4vajl6xo9vido4ycewbeku3d1iv', '{iw1{^OS8X(kGsWB', 1),
(23, 'king66', 'hhh@gmail.com', 9000606006, 98666666, '123456', '', 'defaultkey', 'defaultiv', 'defaultkey', 'defaultiv', 0),
(24, 'dsds', 'hhhh@gmail.com', 987657484848, 98765747499, '09887474884', '', 'defaultkey', 'defaultiv', 'defaultkey', 'defaultiv', 0),
(25, 'dssdsdsd', 'nnn@gmail.com', 986886868, 8595959595, '123456', '', 'defaultkey', 'defaultiv', 'defaultkey', 'defaultiv', 0),
(26, 'checkkk', 'checkk@gmail.com', 987666, 9876543210, '123675', '', 'defaultkey', 'defaultiv', 'defaultkey', 'defaultiv', 0),
(27, 'tester', 'gana@gmail.com', 987654321, 8765433, '12345567', '', 'ba1e9ce94632378a9eebeb4a35bb3b55b955c9b94936373fdce9b64a4a6e30d5', 'NjViNmYwOTY0ZGRiMjg3OTNhMWE1NWY0NmRhMDY0MDM=', 'ga221gyjhoyb41mew2tzt69x10nt0jlav', 'm%GKrab81m?[e6Hl', 1),
(28, 'checki', '1234567@gmail.com', 898988989, 666777, '123456789', '', 'defaultkey', 'defaultiv', 'defaultkey', 'defaultiv', 0),
(29, 'checccc', 'das@gmail.com', 776655443322, 8888888, '1234567', '', 'defaultkey', 'defaultiv', 'defaultkey', 'defaultiv', 0),
(33, 'bricii', 'test@gmail.com', 876656545454, 98898898989, '12345', '', '73b3105c000c9184c1c7a61986f7a7497ce87b0127d882cd22729efa9815b907', 'ZGE3MDAxZDY0ZjgzOGRlZjEzMjU3YWVkNDE3ZWIyYjU=', 'qof66bam9kl6wxzvbe5cxm475golm6ut', 'qOOOsHODfZ#CE/DY', 0),
(34, 'gyyy', '65788977887s@gmail.com', 123456789000, 777657565755, '123456789000', '', 'defaultkey', 'defaultiv', 'defaultkey', 'defaultiv', 0),
(38, 'verify', 'verifyc@gmail.com', 12343211234, 1234567890, '12345', '', '816599100ef0c97a0e3556b4a06cf6b240534c700b3cc65944764aceefc620e2', 'MDAxNzkzM2JkMGQxNmI1MzEzOWExODJmNDBjYWNkZmM=', 'u71mrieenimktnsg110sqw10aygagrzs6i', 'N#H,VLyCZzQ74WOP', 0),
(43, 'kkkkkh', 'kj@gmail.com', 98765432, 9876549856, '12345', '', 'defaultkey', 'defaultiv', 'defaultkey', 'defaultiv', 0),
(44, 'fghth', 'jhy@GMAIL.COM', 987654321, 987654, '1234567', '', 'defaultkey', 'defaultiv', 'defaultkey', 'defaultiv', 0),
(45, 'wealth', 'hmgfd@gmail.com', 7654321234555, 9876543211, '12345', '', 'defaultkey', 'defaultiv', 'defaultkey', 'defaultiv', 0),
(46, 'test4', 'gnha@gmail.com', 98765432111, 9876543210, '1234567', '', 'ac5bc1e619b4c55605446251c47f9a284790d75ccbf5223edad74b7114da9b95', 'NmMzODlmN2VkZjMxMzg3OWZkZDNhYzJiYjcwZjc0MWE=', 'w5xis5w461um2gehlyythi10waf5lwb7l', 'Lo{>s4f2<zG0(&Ba', 0),
(47, 'listch', 'kkkkk@gmail.com', 0, 1111111111, '123456', '', '09f44e9d1f685be79a6b9fffdbd049df8ad1810b8f0b9d46eaca5a66e57de215', 'MDEzMDg1ODA4NjYyMjIxNWUzNDQ1YzVlNWVmMGE0ZTY=', 'h20x9szzlz9fgct102fa10r9q63j59osru', '9)(r}EhP5K5LooXT', 0),
(48, '', '', 0, 0, '', '', 'defaultkey', 'defaultiv', 'defaultkey', 'defaultiv', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
