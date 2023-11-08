-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 26, 2022 at 04:44 PM
-- Server version: 10.3.34-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jkmmartc_codehunt_codehunters`
--

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
  `status` int(1) NOT NULL DEFAULT 0,
  `UUID` varchar(100) NOT NULL,
  `key1` varchar(256) NOT NULL DEFAULT 'defaultkey',
  `iv1` varchar(256) NOT NULL DEFAULT 'defaultiv',
  `key2` varchar(256) NOT NULL DEFAULT 'defaultkey',
  `iv2` varchar(256) NOT NULL DEFAULT 'defaultiv'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `username`, `email`, `aadhar`, `phone`, `password`, `status`, `UUID`, `key1`, `iv1`, `key2`, `iv2`) VALUES
(6, 'hhh', 'gamalieldas8371@gmail.com', 2147483647, 1234567890, '12345', 0, '', '67133a59f7b7829770f2ed8431b89e0a82f03b52a0db08ac653fcc54cca00ead', 'MzQ3MDBkZjU2MzlmZWExYzg5YzE3NjVkYTRmZjQ4NTk=', 'khxbw422cp8obieijsgrymm3dzchya0w', 'CZr0Qbp4G))2hqsT'),
(9, 'bharath', 'bharath@gmail.com', 2147483647, 1234567890, '12345', 0, '', '0096e49b909b350923a25bf60c63803bcf2b3da8278f5bbc31792890872e7440', 'NDM1YzU3YzEyZjkwMzdkZjcyYjUxM2EyNDlhMjVkZWM=', 'aff6niq410aft5drw9xe8pabdeozuv10zb', 'M>oVApk0.yE&>3zx'),
(19, 'dum', 'gggg@gmail.com', 9876543211, 9876543210, '1234567', 0, '', '332c933680046ebb9ca46d41017301d42f2162c386269be0994a4afd506de4cc', 'YjIxNzIxMmEyMDM3NGU1NTJlYjI0NWZjMmExMDJmMTE=', 'a1tuapr0a9809za4195ds3whrk4dua1v', 'Ld*v@nK18VTv?[BX'),
(33, 'bricii', 'test@gmail.com', 876656545454, 98898898989, '12345', 0, '', '73b3105c000c9184c1c7a61986f7a7497ce87b0127d882cd22729efa9815b907', 'ZGE3MDAxZDY0ZjgzOGRlZjEzMjU3YWVkNDE3ZWIyYjU=', 'qof66bam9kl6wxzvbe5cxm475golm6ut', 'qOOOsHODfZ#CE/DY'),
(54, 'vetriveeran', 'vetrii@gmail.com', 123456789000, 1234567890, '12345', 0, '', 'a2ab22204d8c5de3e0560618d50f177091d4737f1eab5b2f269efd7c1b573b3d', 'MDYzYzg5YTIyMWQwMWZkOGVlMTBlZDNlMDJhZjkyODk=', 'fosq40rjengnqjosy3k5tkucr7naequi', 'f}PtM!.?I^@<<GVI'),
(55, 'checkk', 'checkkk@gmail.com', 123456789000, 1234567890, '12345', 1, '', 'f47afb6b2e6749343e6a36d903d67ef3352f0abc9c9945a7a3cc91d45737263c', 'MzMxNjIzM2FhMmM2ZWQzMDVhY2NiMzkxNmE2YmY4Njg=', 'bziqgfrw959210t98ri8u6fh2709fdiex', 'zn)LcUZ%zhKKlZl>'),
(56, 'vetriii', 'vetriii@gmail.com', 1234567789000, 1234567890, '12345', 0, '', '107b6690a66f47f65f5512cc5fd7e866758cdec96ce20b97e7959766b8bd2424', 'ZDU5MDY5M2EwMDQ5YWUxNWJhN2Y2YjRmYzMzMGU4OTk=', '610m33z81008nw451defbc576h0x01ddxq', '36/zK4m!a7O@&wFg'),
(57, 'vetriiik', 'vetriko@gmail.com', 123456789000, 1234567890, '12345', 1, '', '60364f2be502d05cb2d36f70feedb7c378a6a48ec5e623b57cad06a161cc46f3', 'MWZhZDRhYTNkOTNjOWQzNzM0OWVjYWFlN2UwYjZkZGY=', 'vi685oz8g4dv6rzkwmog9nwzpztygflx', 'Yi^#ATu6S6pnod&I'),
(58, 'gamalieldas', 'vtruii@gmail.com', 1234568191910, 916379857110, '1234567', 0, '', 'defaultkey', 'defaultiv', 'defaultkey', 'defaultiv'),
(59, 'haialal', 'gamalsiell@gmaio.com', 9876432178, 916379857110, '1234789', 0, '', 'defaultkey', 'defaultiv', 'defaultkey', 'defaultiv'),
(60, 'haialall', 'gamalsiell@gmaio.com', 9876432178, 916379857110, '1234789', 0, '', 'defaultkey', 'defaultiv', 'defaultkey', 'defaultiv'),
(61, 'dgfrfh', 'fhf@gmail.com', 123456789000, 916379857110, '12345', 0, 'ab6e4ecfcafd1288', 'defaultkey', 'defaultiv', 'defaultkey', 'defaultiv'),
(62, 'gpkulu', 'gaksnaowll@gmail.com', 123456789000, 91916379148009, '12345', 0, '9ba819206757348c', 'defaultkey', 'defaultiv', 'defaultkey', 'defaultiv'),
(63, 'gokul', 'vetri9788@gmail.com', 12335567890, 91916379148009, '12345', 0, '9ba819206757348c', 'defaultkey', 'defaultiv', 'defaultkey', 'defaultiv'),
(64, 'mrbro', 'mrbro@gmail.com', 123456789000, 1234567890, '12345', 0, 'ab6e4ecfcafd1288', '81f62f4be9b08cd57997279ec384104403ec8064efc18964a4ead3a85f2e84f0', 'MGE0MjM1MWJhMzgxYzI0ZGRmZTZlOGM1OGE5YTMxNDI=', 'icuxfss57ttapg6x96db02fl9z6wwazf', 't6Sk@}ZWlW<iJ7G#'),
(65, 'testee', 'ghamal@gmail.com', 123456789000, 1234567890, '12345', 0, 'ab6e4ecfcafd1288', 'e050b70d93a528eba3ae78a95e074e72d906874721df582a35596ac5fc7979ff', 'ZDBlNDg1NDkxMTUxMzBiMmJkOTY3ODFjZjFlMDM0MDM=', '0fsyh543th31qs4vzivbs0ou74panrww', '[7vpa:dP6*3sQpp5'),
(66, 'vetriik', 'vgh@gmail.com', 123456789000, 1234567890, '12345', 0, 'ab6e4ecfcafd1288', 'c5d6299f9253333e4491c306e9c621c41c4562b1431a16e4edce9c373120c142', 'MmE1NjI2MWQzZDM2MWFiZTFmMzkyYTJhY2E3ZjlkZDI=', 'vtvsk8uupgt1aqthog3nsyvjmn1a45bz', '],fN9e?t4W6)mv:i'),
(67, 'vetriikkk', 'vgh@gmail.com', 123456789000, 1234567890, '12345', 0, 'ab6e4ecfcafd1288', 'defaultkey', 'defaultiv', 'defaultkey', 'defaultiv'),
(68, 'vetriikkkk', 'vghhh@gmail.com', 123456789000, 1234567890, '12345', 1, 'ab6e4ecfcafd1288', '96c2f35d5dece1572405eea5454a4a531fb9fbba68e7f2abd0a10aaf8d80c83e', 'Y2I1MDNlODkyODhjYzc5ZjQ3YTBkYzU4NzQzYzllNmQ=', 'p8rd10zid4ad8mszhfemjqv2zmfkv4kjp', 'BeCvNGuEReWa(b%I'),
(69, 'siva', 'siva@gmail.com', 123456789000, 8760274063, 'sivajkm007', 1, '21565bb3b1e91f9c', 'a67c7eac185bf168d224f3fd49f28bac592cea3e22554cc09b6a8b7180473236', 'NTgxMDZlNWZhNWRiMmNmZmEzZTZhNmU4NWQxZmE5OWM=', 'hg25rbse32fpugkadi3zbbibifmyn3g6', 'AmO]YKjB^RlUp@Gq'),
(70, 'vetriikkkkk', 'vghhh@gmail.com', 123456789000, 1234567890, '12345', 0, 'ab6e4ecfcafd1288', 'defaultkey', 'defaultiv', 'defaultkey', 'defaultiv'),
(72, 'gokulu', 'gokuluu@gmail.com', 123456789000, 916379857110, '12345', 1, 'ab6e4ecfcafd1288', 'dadded2cf993957adeb27ccae4778fc0c4ace47dcbc7681dd1aeaac746a42706', 'NGQzMjU5YWRiYTczMTViMzliZWIwZGExY2E0ODBmZGI=', 'hhmxj74lbrh7xzuuyrkw67djs10wti4mp', '?i7,XKk2y1r@V{?J'),
(73, 'chhhfgh', 'gfvnjgf@gmail.com', 123456789000, 916379857110, '12345', 0, 'ab6e4ecfcafd1288', 'defaultkey', 'defaultiv', 'defaultkey', 'defaultiv'),
(74, 'vetribro', 'vetrikwjgak@gmail.com', 1234567890000, 916379857110, '1234567890', 0, 'ab6e4ecfcafd1288', 'defaultkey', 'defaultiv', 'defaultkey', 'defaultiv'),
(75, 'ghnejwej', 'hakakqo@gmail.com', 12346789828929, 916379857110, '123466889', 0, 'ab6e4ecfcafd1288', 'defaultkey', 'defaultiv', 'defaultkey', 'defaultiv'),
(76, 'hajakaksl', 'hsjakal@gmail.com', 1234567890, 916379857110, '12345', 0, 'ab6e4ecfcafd1288', 'defaultkey', 'defaultiv', 'defaultkey', 'defaultiv'),
(77, 'hwjskaksk', 'gmalqoil@gmail.com', 12352829914517899, 916379857110, '123456', 0, 'ab6e4ecfcafd1288', 'defaultkey', 'defaultiv', 'defaultkey', 'defaultiv'),
(78, 'gajakakll', 'hakakal@gmail.com', 1234567890000, 916379857110, '12345', 0, 'ab6e4ecfcafd1288', 'defaultkey', 'defaultiv', 'defaultkey', 'defaultiv'),
(79, 'jsjakak', 'aghakalwl@gmail.com', 12345677890000, 916379857110, '12346', 0, 'ab6e4ecfcafd1288', 'defaultkey', 'defaultiv', 'defaultkey', 'defaultiv'),
(80, 'random', 'random@gmail.com', 123456789000, 916379857110, '12345', 1, 'ab6e4ecfcafd1288', 'f334d020efbe741d37a31e105f5a41d196fc69dc3922c3a2851e747924162867', 'ZDEwNzBjY2M3MTAwMjEyMjdlNjhmOGQ4NWNlMzU0OWM=', 'wpgx8pvo1tgkqqzbp5xldczvd10k1ivyi', '^?x)7)AuhFPMKUNj'),
(81, 'checkkakka', 'gamalalap@gmail.com', 123456789000, 916379857110, '1234567', 0, 'ab6e4ecfcafd1288', 'defaultkey', 'defaultiv', 'defaultkey', 'defaultiv'),
(82, 'checkkakkahajak', 'gamalalap@gmail.com', 123456789000, 916379857110, '1234567', 0, 'ab6e4ecfcafd1288', 'defaultkey', 'defaultiv', 'defaultkey', 'defaultiv'),
(83, 'gokulu', 'vetribro@gmail.com', 123456789000, 916379857110, '12345', 0, 'ab6e4ecfcafd1288', 'defaultkey', 'defaultiv', 'defaultkey', 'defaultiv'),
(84, 'vetrixxx', 'vetrixxx@gmail.com', 909524157878, 91916379148009, '12345678', 0, '9ba819206757348c', '59cb0dd7d33d33b17882a918285b844ed1fc5aaf122ab60795b8b5740c12abd6', 'ODAyNGE1NjY3MGE3ZDU1MzVmYTIwZmVjOWZlMjMzNzA=', 'bekvciqfs7gwvxdh3bmm10glrvuknmfzr', 'Mio!m9(Qe0RbGCT7'),
(85, 'vetrixxxx', 'vetrixxxx@gmail.com', 909524157878, 91916379148009, '12345678', 1, '9ba819206757348c', 'e7822890c0ded2608eb6b5c4c229b754f7a24187a0383de62a111a863d239768', 'ZTZmYTljYmRjM2IzYjRjYTdlNjA4OGEyMDg1NmI0YjM=', 'bkj6ktx1h2rp38j0v2pi8by2tbipo5pu', 'y7opU0nxJoo3HS*#'),
(86, 'vetri5x', 'vetri5x@gmail.com', 909524157878, 91916379148009, '12345678', 1, '9ba819206757348c', 'c0c184e23a57b7a34e11c8677ebedf6380498416d220aa53bc8bbac6f64e7506', 'MGZhMTgxOTlkNjgyY2JlMzRkZGE2NTg2ZmQ0NTAyMDY=', 'ok8trm2iqapbew05vhlpgzjzkncxh6u3', 'yNu8p[!e9:M7*F&z'),
(87, 'gokulxx', 'gokulxx@gmail.com', 909524157878, 91916379148009, '12345678', 1, '9ba819206757348c', '1bf42c32e770c5fb33c5d0c0c8580402bafc3088745f0e640e386fc9ff0a07f3', 'ZjQyZjY2OTRkNDAyNTM4NGYyMmRiM2Y4NDU1OWZkNTU=', '3hkcwz3100h06y10f7zh4854mbmax10mu0h', 'cC6AHb/%wWlQ0IoS'),
(90, 'gokulxxz', 'gokulxxz@gmail.com', 909524157878, 91916379148009, '12345678', 0, '9ba819206757348c', '7fdb50338ed620970f7a95b46b39d1eb6e17807980bec5c1e9acd5844dba6586', 'OWQ1MGQ5ZmNlM2NlZWNiODg1NjlkYTViNWZlNjlmZDE=', '9106i58esk6w8wfm30apf10384d4rma9s2', 'MAZa6Te}co^y}tDK'),
(99, 's', 's@gmail.com', 987654321000, 91919943920175, '12345678', 0, 'f5ad09b1826dccdc', '1b7bd9b6201c58810cfcf6a64b4c4ac5771a74c18723f42417f82287f44be459', 'ODkwODVmMWM2ZjNiNzI2NjFhZTMwYmYzM2M2ODcyODQ=', 'xs0plhpk6nktgu6hjf1kx106r3h4tkdkh', 'JcYwDkBYss1(l{YC'),
(100, 'vetrih', 'gojul@gmail.com', 123456789000, 916379857110, '12345', 0, 'ab6e4ecfcafd1288', 'defaultkey', 'defaultiv', 'defaultkey', 'defaultiv'),
(101, 's1', 's1@gmail.com', 123456789009, 91919943920175, '12345678', 0, 'f5ad09b1826dccdc', 'cb0492517e935d39773cec25f90edd3d137f298cd502f887ae67c3fae77c8ff9', 'Y2JlZTFhYjY1ZTU1NWEyMTNhYmIwZWZlNDJlNzIxMjU=', 'g9q6zajz6b5koen5jye7044xlieplpkn', '5uhT^WnHr78Q&YFZ'),
(102, 'ssss', 'sivah@gmail.com', 876027406312, 91918760274063, 'Sivajkm007', 0, '21565bb3b1e91f9c', 'defaultkey', 'defaultiv', 'defaultkey', 'defaultiv'),
(104, 's2', 's2@gmail.com', 123456789009, 91919943920175, '12345678', 0, 'f5ad09b1826dccdc', 'ae87073a2f9afe87a8833d6e066a041daa7acc742972e32f8fc663442edcbad6', 'YmRmNjc2MGQ5OWQ2M2M1M2Y2OTExNDA4MzUyMDJmNzk=', 'xty07bglmpkjly9j7d98ozdwhq10kw38l', 'Y5h3EK9R9@<B(d0[');

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
  MODIFY `userid` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
