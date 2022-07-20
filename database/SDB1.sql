-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 19, 2022 at 08:00 PM
-- Server version: 10.3.35-MariaDB-log-cll-lve
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loadpwyf_sales_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `user_role` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `ses_dig` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `username`, `user_role`, `password`, `email`, `ses_dig`) VALUES
(14, 'winnie', 'user', '$2y$10$JwLHNrCq4bFAvCShI7q5z.wbbyqsfyll7NWukLDwM9q6Pv7LHBHba', 'menscfesz@gmail.com', 6),
(15, 'kithinga', 'developer', '$2y$10$iMwbr/JiiztjKuLqpLwpDuf5sy8tepZR7oZrGQRXbiQYafR.RbdAu', 'menscfesz@gmail.com', 1151),
(16, 'frank', 'user', '$2y$10$SFwxK/SwGR4XbAgoOrttD.PYYNdVHZIblL94Zrj7OsLh9mFcd1raG', 'menscfesz@gmail.com', 1),
(17, 'yassin', 'admin', '$2y$10$XG2OiR35311Dxg1fH9RDxuvLLBDbhNJ/3Z/.0QQuXmkTxhaNSyqxK', 'menscfesz@gmail.com', 1),
(19, 'shiundu', 'user', '$2y$10$j5sqLn2qqh1nvmtHWECBSeipoTVtj2HuCT.EJ8suMWWSbs7wrcmAy', 'menscfesz@gmail.com', 4),
(21, 'dabo', 'user', '$2y$10$4y3jueqnHqroJl4goy0doOwrR.lEC0hZDwgPnHm7FqG./5Gf.9Kna', 'menscfesz@gmail.com', 3),
(23, 'tesfae', 'user', '$2y$10$fEV9CSDZ2Oq19n67xvhht.MmaUe9jmpZukskIjXqi5/a0TxokUSDq', 'menscfesz@gmail.com', 5),
(24, 'kanja', 'user', '$2y$10$r5h9tVnPY4WzZKcUbLDtq...SCDlY4FDQLwOmnXYgJNoOv7pKPygm', 'menscfesz@gmail.com', 2),
(25, 'serah', 'user', '$2y$10$0qpDmKq1zBPiYUxhB6zaiOYJAvN8aIPSZOS1hnOKMTDdP933AzHki', 'menscfesz@gmail.com', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `calls_tally`
--

CREATE TABLE `calls_tally` (
  `tally_id` int(10) NOT NULL,
  `client_name` varchar(100) DEFAULT NULL,
  `s_company_name` varchar(100) DEFAULT NULL,
  `s_mc_number` varchar(100) DEFAULT NULL,
  `s_phone_number` varchar(100) DEFAULT NULL,
  `pow` varchar(100) DEFAULT NULL,
  `s_email` varchar(100) DEFAULT 'Missing',
  `caller_name` varchar(100) DEFAULT NULL,
  `s_status` varchar(100) DEFAULT NULL,
  `last_changed` datetime(6) DEFAULT current_timestamp(6),
  `status_comments` varchar(100) DEFAULT NULL,
  `times_called` int(11) DEFAULT NULL,
  `street_address` varchar(100) DEFAULT NULL,
  `voice_mail` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `calls_tally`
--

INSERT INTO `calls_tally` (`tally_id`, `client_name`, `s_company_name`, `s_mc_number`, `s_phone_number`, `pow`, `s_email`, `caller_name`, `s_status`, `last_changed`, `status_comments`, `times_called`, `street_address`, `voice_mail`) VALUES
(185, 'Bashir Haji', 'Great Transportation Llc', 'MC861676', '614-531-1169', '1', NULL, 'tesfae', 'no-answer', '2022-06-28 13:26:56.340495', '', 1, '5674 Wilcox Rd\r\nDublin, OH 43016-1255', 'no'),
(186, 'Moe', 'M&M WHITE GLOVE DELIVERY LLP', 'MC1269599', '614-735-8453', '4', NULL, 'tesfae', 'no-answer', '2022-06-28 13:30:57.271895', '', 1, '5591 BOWLAND PL N APT 361\r\nDUBLIN, OH 43016', 'no'),
(187, 'Carlo Barry', 'Rocky Road Haul', 'MC666869', '614-619-0944', '', NULL, 'tesfae', 'no-answer', '2022-06-28 13:34:14.593660', '', 1, '5939 Tara Hill Dr\r\nDublin, OH 43017-2827', 'no'),
(188, 'nooraldeen', 'Rotana Express Transporation Llc', 'MC1174774', '614-969-8665', '2', NULL, 'tesfae', 'said-no', '2022-06-28 13:42:51.114099', 'hanged up', 1, '7755 Hansgrove Court\r\nDublin, OH 43016', 'yes'),
(189, 'Muawia Zamara', 'S&Z Trucking LLC', 'MC1109936', '312-539-2391', '1', NULL, 'tesfae', 'no-answer', '2022-06-28 13:44:00.143293', '', 1, '4912 Stratford Pine Lane\r\nDublin, OH 43016', 'no'),
(190, 'muhammed kaya', 'Valor Vision Enterprise LLC', 'MC1154362', '201-637-9002', '2', NULL, 'tesfae', 'no-answer', '2022-06-28 13:45:05.177985', '', 1, '5746 CAMBROOKE CT\r\nDUBLIN, OH 43016', 'no'),
(191, 'Ali Alwawi', 'Zara Trucking Express Llc', 'MC1018756', '614-984-1931', '1', NULL, 'tesfae', 'said-no', '2022-06-28 13:47:33.695839', 'He is good', 1, '5070 Belle Crossing Rd Unit H\r\nDublin, OH 43016-5529', 'yes'),
(192, 'TRAVIS EVANS', 'TE MASONRY LLC', 'MC1095461', '440-985-0517', '2', NULL, 'tesfae', 'no-answer', '2022-06-28 13:49:04.646481', '', 1, '11608 W RIDGE RD\r\nELYRIA, OH 44035', 'no'),
(193, '', 'METROLINA LLC', 'MC1143011', '216-386-2554', '', NULL, 'tesfae', 'no-answer', '2022-06-28 13:57:01.262512', '', 1, '1400 CHARDON RD\r\nEUCLID, OH 44117', 'no'),
(194, 'Michael Greene', 'MJG TRANSPORT LLC', 'MC1218290', '216-287-8483', '2', NULL, 'tesfae', 'no-answer', '2022-06-28 14:05:04.788336', '', 1, '24140 ALBERTON RD\r\nEUCLID, OH 44123 ', 'no'),
(195, 'Bertin Ngoga', 'DOVE LOGISTICS LLC', 'MC1297412', '937-581-3783', '3', NULL, 'tesfae', 'said-no', '2022-06-28 14:07:56.622608', 'Have a dispatcher', 1, '360 W DAYTON YELLOW SPRINGS RD\r\nFAIRBORN, OH 45324', 'yes'),
(196, 'Odell Johnson', 'OLJ TRUCKING', 'MC1313294', '313-421-0637', '2', NULL, 'tesfae', 'said-no', '2022-06-28 14:10:05.051245', 'No thank you and hanged up', 1, '237 Vine Street\r\nFairborn, OH 45324', 'yes'),
(197, 'Jymarcus Lott', 'Newleaf Ltd', 'MC1082046', '513-969-4626', '1', NULL, 'tesfae', 'no-answer', '2022-06-28 14:11:27.931283', '', 1, '245 Knollridge Ct Apt 204\r\nFairfield, OH 45014-6583', 'no'),
(198, '', 'Backna Industries LLC', 'MC1278667', '567-525-4571', '', NULL, 'tesfae', 'no-answer', '2022-06-28 14:13:05.077941', '', 1, '600 Tiffin Avenue\r\nFindlay, OH 45840', 'no'),
(199, '', 'Erwin Trucking', 'MC750435', '740-981-6989', '', NULL, 'tesfae', 'no-answer', '2022-06-28 14:14:27.785245', '', 1, '55 Trenton St\r\nFranklin Furnace, OH 45629-8866', 'no'),
(200, 'Dilmurod Mirzaev', 'PRIME STAR LOGISTICS INC', 'MC1137956', '443-477-5333', '5', NULL, 'tesfae', 'no-answer', '2022-06-28 14:15:17.672327', '', 1, '8401 CLAUDE THOMAS RD STE 21 ROOM G ,\r\nFRANKLIN, OH 45005', 'no'),
(201, 'david volk', 'Volk Transportation', 'MC36904', '513-465-9391', '1', NULL, 'tesfae', 'no-answer', '2022-06-28 14:16:14.991939', '', 1, '\r\n2752 State Route 122\r\nFranklin, OH 45005-9475', 'no'),
(202, 'Garad Adam', 'G & A TRANSPORTATION LLC', 'MC1144713', '614-500-0698', '1', NULL, 'tesfae', 'no-answer', '2022-06-28 14:20:02.570937', '', 1, '4710 Winery Way\r\nGahanna, OH 43230', 'no'),
(203, 'Nathaniel Early III', 'Four Ma Familia LLC', 'MC1158091', '216-316-5307', '1', NULL, 'tesfae', 'no-answer', '2022-06-28 14:21:06.163968', '', 1, '12600 ROCKSIDE RD # 282\r\nGARFIELD HTS, OH 44125', 'no'),
(204, '', 'SHOTIME TRUCKING LLC', 'MC1321073', '216-926-4675', '', NULL, 'tesfae', 'no-answer', '2022-06-28 14:21:48.879126', '', 1, '9909 MCCRACKEN BLVD\r\nGARFIELD HTS, OH 44125-5903', 'no'),
(205, 'SADAT', 'BIIDI TRANSPORTATION LLC', 'MC1208007', '614-598-1322', '1', NULL, 'tesfae', 'no-answer', '2022-06-28 14:26:11.712805', '', 1, '2167 Stringtown Rd Suite 306\r\nGrove City, OH 43123', 'no'),
(206, 'Yusuf Aslanov', 'Bossin Logistics Llc', 'MC109040', '509-821-9371', '1', NULL, 'tesfae', 'maybe', '2022-06-28 14:30:13.412846', 'I am gonna save your number and will call you back.', 1, '3612 Wood Reed Drive\r\nTipp City, OH 45371-2574', 'yes'),
(207, 'Kevin Wade', 'CLARITY SUPPLY CHAIN SERVICES LLC', 'MC1130567', '614-419-2606', '2', NULL, 'tesfae', 'no-answer', '2022-06-28 14:31:30.104171', '', 1, '14871 MIDDLEBURG PLAIN CITY RD\r\nPLAIN CITY, OH 43064', 'no'),
(208, 'BRETT W ROBISON', 'FIRST LINE LOGISTICS', 'MC1311103', '614-209-4934', '2', NULL, 'tesfae', 'said-no', '2022-06-28 14:35:54.902482', 'No need of dispatching because all his trucks are on lease', 1, '4546 EDGARTON DR\r\nGROVE CITY, OH 43123-9418', 'yes'),
(209, '', 'GOBIND LLC', 'MC1209708', '937-789-3749', '', NULL, 'tesfae', 'said-no', '2022-06-28 14:41:52.324775', 'Hanged up', 1, '4055 SPICEBUSH DR\r\nTIPP CITY, OH 45371', 'yes'),
(210, 'ILYAS CHAKHALIDZE', 'Gold Eagle Logistics Inc', 'MC879200', '630-788-2642', '2', NULL, 'tesfae', 'said-no', '2022-06-28 14:44:30.209789', 'Hanged up', 1, '\r\n2786 Blueflag St\r\nTipp City, OH 45371', 'yes'),
(211, 'Amrakh RUSTAMOV', 'GOOD TRIP TRUCKING LLC', 'MC802413', '404-543-8187', '2', NULL, 'tesfae', 'said-no', '2022-06-28 14:45:33.015497', 'No thank you', 1, '1056 LAKESIDE ST\r\nTIPP CITY, OH 45371', 'yes'),
(212, 'Mavlyud Khalilov', 'Imperial Transport Llc', 'MC897090', '937-554-9053', '1', NULL, 'tesfae', 'no-answer', '2022-06-28 14:46:09.037382', '', 1, '2693 BLUEFLAG ST\r\nTIPP CITY, OH 45371', 'no'),
(213, 'Jeff Young', 'Jeff Young Trucking Inc', 'MC479901', '937-459-0207', '', NULL, 'tesfae', 'no-answer', '2022-06-28 14:54:41.964221', '', 1, '10312 State Road 47 N\r\nUnion City, OH 45390-9066', 'no'),
(214, 'LAILA', 'MIDWEST FREIGHT SERVICES LLC', 'MC1105268', '614-230-7005', '2', NULL, 'tesfae', 'no-answer', '2022-06-28 14:55:57.946481', '', 1, '3500 GROVE CITY ROAD UNIT 107\r\nGROVE CITY, OH 43123', 'no'),
(215, 'Abdiladif Ali', 'Miski Trucking Llc', 'MC886397', '614-822-1108', '4', NULL, 'tesfae', 'no-answer', '2022-06-28 14:59:46.060373', '', 1, '3553 Lake Mead Dr\r\nGrove City, OH 43123-8606', 'no'),
(216, 'Jaba', 'JLG & UIS LLC', 'MC1286639', '513-828-6096', '2', NULL, 'frank', 'said-no', '2022-07-18 10:07:08.826965', 'broker', 1, '4003 SHARON PARK LN APT 19\r\nCINCINNATI, OH 45241', 'no'),
(217, 'KELDIYOR BAHTIYOROV', 'K & Y Logistic Inc', 'MC1116472', '347-260-5051', '2', NULL, 'frank', 'no-answer', '2022-07-18 10:08:23.311267', '', 1, '1380 PEBBLE CT APT 207\r\nCincinnati, OH 45255', 'no'),
(218, '', 'KAHLONTRANSPORTATION INC', 'MC1312763', '337-420-0000', '', NULL, 'frank', 'no-answer', '2022-07-18 10:09:52.533418', '', 1, '4727 Hassman Court\r\nCincinnati, OH 45223', 'no'),
(219, '', 'Koubia Transportation Inc', 'MC836595', '937-238-3264', '', NULL, 'frank', 'no-answer', '2022-07-18 10:10:21.609942', '', 1, '8338 Roland Ave\r\nCincinnati, OH 45216-1029', 'no'),
(220, 'Abe Hamed', 'Lamar Trucking Llc', 'MC1091643', '513-828-8484', '6', NULL, 'frank', 'no-answer', '2022-07-18 10:11:09.121366', '', 1, '2716 Queen City Ave Apt 6\r\nCincinnati, OH 45238-2977', 'no'),
(221, 'Bekhzod Abdusamatov (BEK)', 'Long Way Llc', 'MC17960', '513-612-0482', '', NULL, 'frank', 'no-answer', '2022-07-18 10:12:03.210539', '', 1, '\r\n12163 Brisben Pl\r\nCincinnati, OH 45249-8103', 'no'),
(222, 'Todd Maringer', 'M & M HOTSHOT TRUCKING LLC', 'MC1381813', '513-348-6329', '2', NULL, 'frank', 'no-answer', '2022-07-18 10:13:20.993852', '', 1, '8731 Forfeit Run Road\r\nCincinnati, OH 45247', 'no'),
(223, 'Steve Eric Powers', 'MID-VALLEY EXPRESS LLC', 'MC1101641', '513-371-9465', '1', NULL, 'frank', 'said-no', '2022-07-18 10:14:29.396942', 'not interested', 1, '140 WARREN AVE\r\nCINCINNATI, OH 45215', 'no'),
(224, 'Donnessa Mccall', 'Nessa Transportation LLC', 'MC1164601', '513-432-8296', '1', NULL, 'frank', 'no-answer', '2022-07-18 10:15:14.265440', '', 1, '126 Glenwood Avenue\r\nCincinnati, OH 45217', 'no'),
(225, 'dilraj', 'New Punjab Transport LLC', 'MC936446', '559-317-3911', '2', NULL, 'frank', 'said-no', '2022-07-18 10:15:59.795927', '', 1, '\r\n7610 READING ROAD APT 416\r\nCINCINNATI, OH 45237', 'no'),
(226, 'Cindy Wilson', 'Ohio Valley Shippers, LLC', '', '513-242-7900', '', NULL, 'frank', 'said-no', '2022-07-18 10:16:57.042956', '', 1, '4950 Para Dr\r\nCincinnati, OH 45237-5012', 'no'),
(227, 'Larry Russo Sr', 'PACKHORSE LIMITED', 'MC1143181', '513-488-0690', '2', NULL, 'frank', 'no-answer', '2022-07-18 10:17:52.672633', '', 1, '3526 REEMELIN RD\r\nCINCINNATI, OH 45211', 'no'),
(228, '', 'PROGRESS LOGISTICS TRANSPORTATION LLC', 'MC1186879', '513-600-3065', '', NULL, 'frank', 'no-answer', '2022-07-18 10:19:31.602332', '', 1, '\r\n1225 AMANDA PL\r\nCINCINNATI, OH 45205', 'no'),
(229, '', 'Roberto Matos', 'MC1097953', '786-479-6417', '', NULL, 'frank', 'no-answer', '2022-07-18 10:20:56.897680', '', 1, '6809 MAIN STREET UNIT #33\r\nCINCINNATI, OH 45244 ', 'no'),
(230, 'kiranjeet', 'Roop Transport Inc', 'MC56284', '937-952-4000', '3', NULL, 'frank', 'no-answer', '2022-07-18 10:22:06.587836', 'Spanish', 1, '480 Cloverdale Ave\r\nCincinnati, OH 45246-2244 ', 'no'),
(231, 'Ismatillo', 'SAMCITY EXPRESS INC', 'MC1025819', '513-850-6090', '2', NULL, 'frank', 'said-no', '2022-07-18 10:23:00.754270', '', 1, '\r\n4012 SHARON PARK LN\r\nCINCINNATI, OH 45241', 'no'),
(232, 'Jonathan Johnson', 'SDR LOGISTICS LLC', 'MC1167379', '513-501-7730', '3', NULL, 'frank', 'said-no', '2022-07-18 10:24:04.282835', '', 1, '2416 OAKTREE PLACE\r\nCINCINNATI, OH 45238', 'no'),
(233, 'Salvador Gonzalez', 'SG Transport', 'MC47580', '956-237-7955', '2', NULL, 'frank', 'said-no', '2022-07-18 10:25:03.365745', '', 1, '\r\n410 McClelland Avenue\r\nCincinnati, OH 45217', 'no'),
(234, 'Salwan Marouki', 'Sal Transportation Company', 'MC1033395', '513-827-2985', '3', NULL, 'frank', 'said-no', '2022-07-18 10:25:48.154935', '', 1, '5413 Bluesky Dr Apt 8\r\nCincinnati, OH 45247-7890', 'no'),
(235, 'Diallo Moussa', 'Sam-B Logistics Transportation Ltd', 'MC7606', '513-212-2721', '1', NULL, 'frank', 'maybe', '2022-07-18 10:54:59.210852', 'May start in the beginning of August', 1, '2611 Pancoast Avenue\r\nCincinnati, OH 45211', 'no'),
(236, 'Samuel Akoto B', 'Samangy Express LLC', 'MC1274539', '513-550-5422', '1', NULL, 'frank', 'said-no', '2022-07-18 10:59:03.031454', '', 1, '11100 HANOVER RD APT E\r\nCINCINNATI, OH 45240', 'no'),
(237, 'Shearod Patterson', 'Stay Da Path Trucking Llc', 'MC922791', '513-306-8501', '1', NULL, 'frank', 'no-answer', '2022-07-18 10:59:55.253887', '', 1, '764 Stonebridge Dr\r\nCincinnati, OH 45233-4859', 'no'),
(238, 'Donita Beavers', 'Truckloads Express LLC', 'MC1174006', '513-435-9440', '1', NULL, 'frank', 'said-no', '2022-07-18 11:00:57.483540', '', 1, '2850 LAFUEILLE AVENUE # 2\r\nCINCINNATI, OH 45211', 'no'),
(239, 'AMIT', 'V & R Group LLC', 'MC1289849', '513-377-2672', '2', NULL, 'frank', 'no-answer', '2022-07-18 11:01:22.466146', '', 1, '11882 Reading Road\r\nCincinnati, OH 45241', 'no'),
(240, 'Jason', 'Vista Express Inc', 'MC181456', '513-808-4835', '2', NULL, 'frank', 'said-no', '2022-07-18 11:22:33.929574', 'Broker', 1, '5675 HICKORY PLACE DR\r\nCINCINNATI, OH 45247', 'no'),
(241, 'sidi baba', 'WEST CHESTER GLOBAL LOGISTICS LLC', 'MC1191186', '347-947-0054', '1', NULL, 'frank', 'said-no', '2022-07-18 11:23:32.815132', '', 1, '7129 MAYFIELD AVE\r\nCINCINNATI, OH 45243', 'no'),
(242, '', 'WINNERS TRANSPORTATION INC', 'MC1143017', '513-518-4127', '', NULL, 'frank', 'no-answer', '2022-07-18 11:24:16.793224', '', 1, '8033 PEACOCK DR\r\nCINCINNATI, OH 45239', 'no'),
(243, 'Michael B Wise', 'WISE GUYS EXPRESS LLC', 'MC1006954', '513-404-1224', '2', NULL, 'frank', 'said-no', '2022-07-18 11:25:11.378904', '', 1, '6302 GERSHOM AVE\r\nCINCINNATI, OH 45224', 'no'),
(244, 'Zein', 'Z LINERS LLC', 'MC1173864', '513-596-2160', '3', NULL, 'frank', 'said-no', '2022-07-18 11:25:44.658008', '', 1, '\r\n611 LOWELL AVE APT 12\r\nCincinnati, OH 45220', 'no'),
(245, 'ZAVKIDDIN', 'ZN786 LLC', 'MC1163644', '513-808-3677', '3', NULL, 'frank', 'said-no', '2022-07-18 11:26:48.482603', 'number not active', 1, '12101 Midpines Drive Apt\r\nCincinnati, OH 45241', 'no'),
(246, 'Deborah Anne Wyatt', 'Wyatt Specialties Inc', 'MC175263', '614-989-5362', '2', NULL, 'frank', 'said-no', '2022-07-18 11:27:35.099532', '', 1, '\r\n4761 State Route 361\r\nCircleville, OH 43113-9736', 'no'),
(247, 'Omayra', 'A & O Trucking Llc', 'MC722860', '216-688-0086', '2', NULL, 'frank', 'said-no', '2022-07-18 11:28:27.815980', '', 1, '11305 Fortune Ave\r\nCleveland, OH 44111-4737', 'no'),
(248, 'Sandy Foster', 'ARS Transportation Services', 'MC1375663', '513-413-4770', '1', NULL, 'frank', 'said-no', '2022-07-18 11:29:20.705719', '', 1, '\r\n850 EUCLID AVE #819#1685\r\nCLEVELAND, OH 44114', 'no'),
(249, 'Rafael Aquino', 'ATM GROUP LOGISTICS LLC', 'MC1277396', '216-403-0931', '1', NULL, 'frank', 'said-no', '2022-07-18 11:30:07.434524', '', 1, '2200 NATCHEZ AVE\r\nCLEVELAND, OH 44109-4723 ', 'no'),
(250, 'fnu Mansoor', 'American Flag Express Inc', 'MC35292', '832-869-3628', '2', NULL, 'frank', 'no-answer', '2022-07-18 11:30:39.346614', '', 1, '14239 Triskett Rd Apt 103\r\nCleveland, OH 44111-2342', 'no'),
(251, 'Natasha Moton', 'BAICAI EXCELLENCE LLC', 'MC1357910', '216-815-5540', '2', NULL, 'frank', 'said-no', '2022-07-18 11:31:07.999242', 'broker', 1, '\r\n15304 PARKGROVE AVE\r\nCLEVELAND, OH 44110-1308', 'no'),
(252, '', 'Black Rabbit Logistics LLC', 'MC1094505', '216-308-3697', '', NULL, 'frank', 'said-no', '2022-07-18 11:32:03.922276', '', 1, '6002 Bower Avenue\r\nCleveland, OH 44127', 'no'),
(253, '', 'COLTRANE LOGISTICS AND TRUCKING LLC', 'MC1222257', '248-215-0660', '', NULL, 'frank', 'no-answer', '2022-07-18 11:32:34.130052', '', 1, '11459 MAYFIELD RD PMB 560 SUITE 560\r\nCleveland, OH 44016', 'no'),
(254, '', 'CULLINAN INC', 'MC1166335', '917-436-6652', '', NULL, 'frank', 'no-answer', '2022-07-18 11:33:42.443467', '', 1, '\r\n2150 W 117TH ST # 1004\r\nCLEVELAND, OH 44111 ', 'no'),
(255, '', 'Cib Group Llc', 'MC27221', '216-633-9108', '', NULL, 'frank', 'no-answer', '2022-07-18 11:34:22.429872', '', 1, '1706 E 38th St\r\nCleveland, OH 44114-4528', 'no'),
(256, 'Darrell Blanton', 'D & M TRUCKING', 'MC1274831', '216-978-0647', '', NULL, 'frank', 'said-no', '2022-07-18 11:35:47.145735', 'Dedicated route', 1, '8800 Jeffries Avenue\r\nCleveland, OH 44105', 'no'),
(257, 'john broadway', 'Dellriver Services Llc', 'MC989008', '216-214-2897', '3', NULL, 'frank', 'said-no', '2022-07-18 11:36:35.578591', '', 1, '12412 Iowa Ave\r\nCleveland, OH 44108-1721', 'no'),
(258, 'Aurelian Jdele', 'Emsyrom Express Inc', 'MC584056', '216-939-9866', '2', NULL, 'frank', 'no-answer', '2022-07-18 11:37:15.541163', '', 1, '10215 Adelaide Ave\r\nCleveland, OH 44111-1251', 'no'),
(259, 'Isaiah Martin', 'I & E TRANSPORT LLC', 'MC1156768', '216-258-5594', '1', NULL, 'frank', 'no-answer', '2022-07-18 11:38:09.144807', '', 1, '3338 LINCOLN AVE\r\nCLEVELAND, OH 44134-1229', 'no'),
(260, 'Carlita Miller', 'IRON WILL TRUCKING LLC', 'MC107647', '216-894-5145', '2', NULL, 'frank', 'no-answer', '2022-07-18 11:39:02.260849', '', 1, '16401 SUNNY GLENN AVE\r\nCLEVELAND, OH 44128', 'no'),
(261, '', 'JAFERI LLC', 'MC1414179', '216-356-2532', '', NULL, 'frank', 'said-no', '2022-07-18 11:40:03.943340', '', 1, '4235 W 222ND ST\r\nCLEVELAND, OH 44126', 'no'),
(262, 'Amy hannum', 'JOJO TRUCKING', 'MC1218324', '216-314-3303', '1', NULL, 'frank', 'said-no', '2022-07-18 11:40:48.726347', '', 1, '14140 TUCKAHOE AVE\r\nCLEVELAND, OH 44111', 'no'),
(263, 'Latif Jan', 'Jan Transportation Inc', 'MC104359', '972-343-8470', '1', NULL, 'frank', 'said-no', '2022-07-18 11:42:16.830985', '', 1, '14219 Triskett Rd Apt 203D\r\nCleveland, OH 44111-2350', 'no'),
(264, '', 'NIVA TRUCKING INC', 'MC1354812', '786-909-7400', '', NULL, 'frank', 'said-no', '2022-07-18 11:42:59.564334', '', 1, '600 SUPERIOR AVE E STE 1300\r\nCLEVELAND, OH 44114', 'yes'),
(265, 'Omar Say', 'OSYO EXPRESS LLC', 'MC1324058', '917-889-0149', '2', NULL, 'frank', 'said-no', '2022-07-18 11:44:34.896223', '', 1, '\r\n3100 E 45TH ST STE 234\r\nCLEVELAND, OH 44127', 'yes'),
(266, 'Jobanjeet Bambrah', 'PARALLAX LOGISTICAL SOLUTIONS', 'MC1162078', '440-514-8838', '1', NULL, 'frank', 'said-no', '2022-07-18 11:45:19.917191', '', 1, '3701 WEST BLVD\r\nCLEVELAND, OH 44111', 'yes'),
(267, 'Aziz Haydarov', 'POINTA LOGISTICS LLC', 'MC1287559', '646-818-5124', '2', NULL, 'frank', 'no-answer', '2022-07-18 12:06:25.143992', '', 1, '850 EUCLID AVE #819 #1448\r\nCLEVELAND, OH 44114', 'no'),
(268, 'Harinder', 'Preet Trans Llc', 'MC1234966', '216-337-7237', '2', NULL, 'frank', 'said-no', '2022-07-18 12:07:22.444144', '', 1, '5556 Broadview Road APT 3425\r\nCleveland, OH 44134', 'yes'),
(269, 'RAFAEL RIOS', 'RIOS TRUCKING LLC', 'MC1129829', '216-526-1604', '1', NULL, 'frank', 'said-no', '2022-07-18 12:08:53.578226', '', 1, '3059 W 111TH ST\r\nCLEVELAND, OH 44111', 'yes'),
(270, '', 'ROADSTAR TRANSPORT LLC', 'MC1164199', '440-623-9944', '', NULL, 'frank', 'no-answer', '2022-07-18 12:10:05.001710', '', 1, '11916 MARNE AVE\r\nCLEVELAND, OH 44111-4650', 'no'),
(271, 'freddie montanez jr', 'ROCK PORT TRANSPORT LLC', 'MC1273482', '216-855-1445', '2', NULL, 'frank', 'no-answer', '2022-07-18 12:11:02.534965', '', 1, '4118 BUSH AVE\r\nCLEVELAND, OH 44109-5902 ', 'no'),
(272, 'Ramon Mendez', 'RSW LOGISTICS INC', 'MC1239772', '814-737-7556', '1', NULL, 'frank', 'said-no', '2022-07-18 12:21:17.723541', 'Number not in service', 1, '12612 EMERY AVE\r\nCLEVELAND, OH 44135-2246', 'no'),
(273, 'Abdullah Yusuf', 'Steel on Steel Transportation LLC', 'MC78861', '216-210-6623', '1', NULL, 'frank', 'said-no', '2022-07-18 12:21:50.541868', 'Not in service', 1, '12608 Crossburn Ave\r\nCleveland, OH 44135-3721', 'yes'),
(274, 'Bogdan', 'Sto Inc', 'MC73413', '216-255-7443', '1', NULL, 'frank', 'no-answer', '2022-07-18 12:22:52.432985', '', 1, '7085 Ravenswood Dr\r\nCleveland, OH 44129-6267 ', 'no'),
(275, 'ILONA STEFANOVYCH', 'TMV EXPRESS LLC', 'MC1161791', '440-907-1755', '1', NULL, 'frank', 'said-no', '2022-07-18 12:23:42.302956', '', 1, '7611 CROSSLINE DR\r\nCLEVELAND, OH 44134', 'yes'),
(276, 'Munewor Jalalle', '2mj Logistics Llc', 'MC58274', '614-969-9272', '2', NULL, 'frank', 'said-no', '2022-07-18 12:24:08.276311', 'broker', 1, '\r\n1175 Lockwood Rd\r\nColumbus, OH 43227-1430', 'yes'),
(277, 'Amadou Diallo', 'ADI SERVICES LLC', 'MC804460', '614-638-4670', '2', NULL, 'frank', 'maybe', '2022-07-18 12:28:30.772445', 'Sent email', 1, '4568 ARAGON AVE\r\nCOLUMBUS, OH 43227', 'yes'),
(278, 'AHMED HUSSEIN', 'AH TRANSIT LLC', 'MC111039', '614-674-9788', '1', NULL, 'frank', 'said-no', '2022-07-18 12:29:21.819067', '', 1, '2391 CLYBOURNE RD APT M\r\nCOLUMBUS, OH 43231', 'yes'),
(279, '', 'AMERISOM TRUCKING LLC', 'MC1247420', '614-446-9304', '', NULL, 'frank', 'said-no', '2022-07-18 12:30:12.047980', '', 1, '\r\n2600 TILLER LN STE A\r\nCOLUMBUS, OH 43231', 'yes'),
(280, '', 'AMF Trucking LLC', 'MC1129273', '614-377-0951', '', NULL, 'frank', 'no-answer', '2022-07-18 12:31:08.448973', '', 1, '2674 HAIG PT\r\nColumbus, OH 43219-3183 ', 'no'),
(281, 'Abdullahi', 'ARN TRANSPORTATION LLC', 'MC850206', '740-274-8486', '4', NULL, 'frank', 'no-answer', '2022-07-18 12:38:18.884174', '', 1, '4331 BENCH CT\r\nCOLUMBUS, OH 43230', 'no'),
(282, 'Otabek Rajabov', 'ART EXPRESS LOGISTICS INC.', 'MC1185922', '929-271-3795', '3', NULL, 'frank', 'no-answer', '2022-07-18 12:47:15.953803', '', 1, '1201 DUBLIN RD UNIT 618\r\nCOLUMBUS, OH 43215', 'no'),
(283, '', 'ASAL TRUCKING LLC', 'MC1366578', '614-625-2740', '', NULL, 'frank', 'no-answer', '2022-07-18 12:48:58.369995', '', 1, '3315 MONMOUTH DR\r\nCOLUMBUS, OH 43219', 'no'),
(284, 'Ash M Biswa', 'ASH TRUCKING LLC', 'MC1037705', '614-420-5412', '2', NULL, 'frank', 'said-no', '2022-07-18 12:50:01.919484', '', 1, '\r\n1651 ALONA DR APT 6\r\nCOLUMBUS, OH 43224 ', 'yes'),
(285, 'Abdirizak warsame', 'Adal Transport Llc', 'MC961514', '614-260-7492', '2', NULL, 'frank', 'no-answer', '2022-07-18 12:50:58.666316', '', 1, '\r\n2486 Nissi Dr\r\nColumbus, OH 43219-6051', 'no'),
(286, 'Ahmed Ahmed', 'Ag Freight Llc', 'MC1041363', '619-315-1807', '1', NULL, 'frank', 'no-answer', '2022-07-18 13:12:13.598649', '', 1, '\r\n4081 Silver Springs Ln\r\nColumbus, OH 43230-9868', 'yes'),
(287, 'Hassan Abdi', 'Ahy Trucking', 'MC779629', '503-997-8959', '', NULL, 'frank', 'said-no', '2022-07-18 13:13:19.273265', '', 1, '1933 E Dublin Granville Rd #181\r\nColumbus, OH 43229', 'no'),
(288, 'Dahir Hayle', 'Ajab Trucking LLC', 'MC77449', '614-746-8444', '3', NULL, 'frank', 'no-answer', '2022-07-18 13:14:09.817037', '', 1, '1929 Forest Cedar Ct\r\nColumbus, OH 43229-3796', 'no'),
(289, 'Abdinasir', 'Allstate Logistics Llc', 'MC70545', '216-280-8877', '1', NULL, 'frank', 'no-answer', '2022-07-18 13:15:36.264913', '', 1, '\r\n3552 Providence Glen Dr\r\nColumbus, OH 43219-6049', 'yes'),
(290, 'Ali', 'Areella Transport Llc', 'MC741467', '614-804-3577', '2', NULL, 'frank', 'no-answer', '2022-07-18 13:16:38.431978', '', 1, '5821 Lou St\r\nColumbus, OH 43231-2908', 'yes'),
(291, 'Hassan Ali', 'Asm Transportation Llc', 'MC896567', '614-260-1633', '', NULL, 'frank', 'no-answer', '2022-07-18 13:17:59.502516', '', 1, '4685 Clare Drive\r\nColumbus, OH 43228', 'no'),
(292, 'Abdifatah Fardalla', 'Atlantic Transport Llc', 'MC54212', '571-315-8833', '3', NULL, 'frank', 'no-answer', '2022-07-18 13:18:36.584218', '', 1, '2477 Adonai Blvd\r\nColumbus, OH 43219-6055', 'no'),
(293, '', 'BASIMA LOGISTICS & SUPPLY CHAIN SOLUTIONS INC', 'MC1108725', '614-254-9445', '2', NULL, 'frank', 'said-no', '2022-07-18 13:19:08.301454', 'Not in service', 1, '4449 EASTON WAY SUITE 200\r\nCOLUMBUS, OH 43219', 'no'),
(294, 'Aziz mohamed Anod', 'BCL', 'MC885457', '614-772-2781', '10', NULL, 'frank', 'no-answer', '2022-07-18 13:20:43.499292', '', 1, '4389 Thornapple Cir W\r\nColumbus, OH 43231-6146 ', 'yes'),
(295, '', 'BLACK TRUCKING USA LLC', 'MC1197017', '614-439-3266', '', NULL, 'frank', 'no-answer', '2022-07-18 13:21:59.982138', '', 1, '4687 GLENDON RD\r\nCOLUMBUS, OH 43229', 'no'),
(296, 'Abdijamal Jama', 'BSH TRANSPORT LLC', 'MC1130387', '614-972-0438', '2', NULL, '', 'no-answer', '2022-07-18 15:39:15.183208', '', 1, '2176 AGLER RD APT 2C\r\nCOLUMBUS, OH 43224', 'yes'),
(297, 'abdi Karim', 'Bay & Bakol Transportation Llc', 'MC61841', '614-687-9857', '1', NULL, 'frank', 'no-answer', '2022-07-18 15:40:07.357389', '', 1, '5419 Ravine Bluff Ct\r\nColumbus, OH 43231-6704 ', 'yes'),
(298, 'Moctar Yagi', 'Beeline Xpress LLC', 'MC1123132', '614-381-1560', '2', NULL, 'frank', 'no-answer', '2022-07-18 15:41:50.286989', '', 1, '1172 Rockwood Pl\r\nColumbus, OH 43229', 'yes'),
(299, 'HUSSEIN NUR', 'Blue Star Carrier Llc', 'MC917668', '310-954-7987', '1', NULL, 'frank', 'no-answer', '2022-07-18 15:43:15.982473', '', 1, '2425 East Hanna Avenue\r\nColumbus, OH 46227', 'yes'),
(300, 'hassan mohamed', 'Boocle Transport Llc', 'MC865357', '614-747-6214', '2', NULL, 'frank', 'said-no', '2022-07-18 15:44:17.809837', '', 1, '\r\n3032 Cumberland Woods Dr\r\nColumbus, OH 43219-1677', 'yes'),
(301, 'Yonas', 'Brooklyn Express Trucking Llc', 'MC101181', '201-878-0547', '2', NULL, 'frank', 'no-answer', '2022-07-18 15:45:08.209786', '', 1, '320 S Grener Ave Apt C5\r\nColumbus, OH 43228-1970', 'no'),
(302, '', 'COAST TO COAST TRANSIT LLC', 'MC1019518', '614-598-4183', '', NULL, 'frank', 'said-no', '2022-07-18 15:47:17.454697', 'not going through', 1, '5030 ALPHA CT\r\nCOLUMBUS, OH 43231', 'yes'),
(303, 'Shaveh Williams', 'COLER TRUCKING LTD', 'MC1376517', '614-316-7913', '', NULL, 'frank', 'no-answer', '2022-07-18 15:47:52.671165', '', 1, '5631 SELBY CT\r\nCOLUMBUS, OH 43085-3637', 'no'),
(304, 'ABDIRASHID', 'Cam Transport LLC', 'MC102712', '614-965-5349', '1', NULL, 'frank', 'said-no', '2022-07-18 15:48:51.328562', '', 1, '5296 Tamarack Circle East Apt A\r\nColumbus, OH 43229', 'yes'),
(305, 'sharmake', 'Central Ohio Transit Llc', 'MC975938', '614-377-8404', '4', NULL, 'frank', 'said-no', '2022-07-18 15:50:07.076007', 'not going through', 1, '5391 Harvestwood Lane\r\nColumbus, OH 43230', 'yes'),
(306, 'Demetrius R Dyer', 'D & C Services Of Ohio Llc', 'MC54187', '614-668-9411', '1', NULL, 'frank', 'maybe', '2022-07-18 15:53:39.818974', 'Call back on July 19th', 1, '4881 Songbird Dr\r\nColumbus, OH 43229-5629', 'no'),
(307, 'Abdifitah Hashi', 'D & H Transportation Llc', 'MC67808', '614-843-0278', '1', NULL, 'frank', 'said-no', '2022-07-18 15:55:05.396833', '', 1, '\r\n2730 Arbury Ct\r\nColumbus, OH 43224', 'yes'),
(308, 'Mohamed Ali', 'DC EXPRESS TRANSPORT LLC', 'MC1236415', '614-929-9388', '2', NULL, 'frank', 'no-answer', '2022-07-18 15:56:23.012935', '', 1, '4767 KINGSHILL DR APT H\r\nCOLUMBUS, OH 43229', 'yes'),
(309, 'Jose Diaz', 'DG LOGISTICS II LLC', 'MC1207911', '646-752-7769', '1', NULL, 'frank', 'no-answer', '2022-07-18 15:57:35.112259', '', 1, '1396 CROSS CREEK DRIVE APT K\r\nCOLUMBUS, OH 43204', 'no'),
(310, 'Mohamed Amir', 'DOVE TRANSPORT LLC', 'MC1316440', '407-341-0180', '2', NULL, 'frank', 'said-no', '2022-07-18 15:58:23.477940', '', 1, '5760 MILLBANK RD APT D\r\nCOLUMBUS, OH 43229 ', 'yes'),
(311, 'ABDUL-KADIR CALI', 'Dable Express Llc', 'MC83211', '617-756-3193', '3', NULL, 'frank', 'no-answer', '2022-07-18 15:59:21.195129', '', 1, '3925 Cypress Club Way\r\nColumbus, OH 43219-3196', 'no'),
(312, '', '1st Midwest Express Inc', 'MC738175', '317-603-5926', '', NULL, 'frank', 'said-no', '2022-07-18 16:00:02.859265', '', 1, '\r\n3710 Kersdale Pl\r\nGrove City, OH 43123-8611', 'yes'),
(313, '', 'ABS TRANSPORTERS LLC', 'MC1421171', '830-383-3376', '', NULL, 'frank', 'said-no', '2022-07-18 16:00:56.574363', '', 1, '2070 EAST AVE\r\nAKRON, OH 44314', 'yes'),
(314, '', 'ADAMS & SHAW TRUCKING AND LOGISTICS LLC', 'MC1263029', '234-738-9353', '', NULL, 'frank', 'said-no', '2022-07-18 16:01:59.665723', '', 1, '821 DANMEAD AVE\r\nAKRON, OH 44305', 'yes'),
(315, 'Raymond evans', 'APL LOGISTICS LLC', 'MC1174895', '213-257-4177', '', NULL, 'frank', 'said-no', '2022-07-18 16:02:28.644467', 'Not in service', 1, '745 RUSSELL AVE\r\nAKRON, OH 44307', 'yes'),
(316, '', 'D WILLIAMS LOGISTICS LLC', 'MC1256900', '234-281-5856', '', NULL, 'frank', 'no-answer', '2022-07-18 16:03:07.553668', '', 1, '672 PATTERSON AVE\r\nAKRON, OH 44310', 'no'),
(317, '', 'FR8 Carrier Corporation', 'MC93771', '330-780-5018', '1', NULL, '', 'no-answer', '2022-07-19 10:18:22.443878', '', 1, '3867 Medina Rd 316\r\nAkron, OH 44333-4525', 'yes'),
(318, 'ANDZELA DAMME', 'Ganesh Transport Inc', 'MC787640', '917-968-2922', '2', NULL, 'frank', 'said-no', '2022-07-19 10:20:28.330954', 'broker', 1, '3867 Medina Rd 167\r\nAkron, OH 44333-4525', 'yes'),
(319, 'jilali Elomari', 'Morocco Trucking', 'MC59347', '608-446-2660', '1', NULL, 'frank', 'no-answer', '2022-07-19 10:21:43.808001', '', 1, '1047 Eagle Dr Apt 513\r\nAkron, OH 44312-5857 ', 'yes'),
(320, 'Gian', 'PLX TRUCKING COMPANY LLC', 'MC1070882', '234-303-4728', '3', NULL, 'frank', 'no-answer', '2022-07-19 10:23:29.652872', '', 1, '89 WYMORE AVE APT A\r\nAKRON, OH 44319', 'yes'),
(321, '', 'POT EXPRESS INC', 'MC1174091', '917-254-3901', '', NULL, 'frank', 'said-no', '2022-07-19 10:25:20.360151', '', 1, '942 N MAIN ST SUITE 31\r\nAKRON, OH 44310', 'yes'),
(322, 'Corey Sonier', 'S & F Enterprise', 'MC120507', '330-208-8349', '1', NULL, 'frank', 'said-no', '2022-07-19 10:26:08.826632', '', 1, '\r\n396 Howe St\r\nAkron, OH 44307-1952 ', 'yes'),
(323, 'Tejinder Singh', 'T & J Transportation Llc', 'MC185062', '850-748-0444', '3', NULL, 'frank', 'said-no', '2022-07-19 10:26:53.834582', '', 1, '2814 Wood Duck Ln Apt 101\r\nAkron, OH 44319-5785', 'yes'),
(324, 'Keith Burnette', 'THE PROFESSIONALS GROUP LLC', 'MC1226294', '330-957-5114', '1', NULL, 'frank', 'said-no', '2022-07-19 10:27:46.401870', '', 1, '1766 GOODYEAR BLVD\r\nAKRON, OH 44305', 'yes'),
(325, 'Gerald gray', 'Triple g transportation llc', 'MC1350495', '267-699-1585', '2', NULL, 'frank', 'no-answer', '2022-07-19 10:29:03.867544', '', 1, '\r\n1409 Neptune\r\nAkron, OH 44301', 'yes'),
(326, 'Melvin L Wadley', 'WADLEY TRUCKING LLC', 'MC1064662', '702-203-2709', '1', NULL, 'frank', 'no-answer', '2022-07-19 10:30:01.868022', '', 1, '521 WINANS AVE\r\nAKRON, OH 44306-1525', 'yes'),
(327, 'Cedric Walker', 'War Elk LLC', 'MC1290384', '678-858-6308', '2', NULL, 'frank', 'said-no', '2022-07-19 10:32:33.235365', '', 1, '\r\n566 Queens Court\r\nAkron, OH 44321', 'yes'),
(328, 'Jessica', 'Gibbons Transportation LLC', 'MC834962', '419-289-2949', '', NULL, 'frank', 'said-no', '2022-07-19 10:33:47.457272', 'Not in service', 1, '500 Us Highway 42\r\nAshland, OH 44805-9501', 'yes'),
(329, 'Derrick Tyrell Shepherd', 'DERRICK SHEPHERD', 'MC1359560', '216-315-2335', '1', NULL, 'frank', 'no-answer', '2022-07-19 10:38:37.263260', 'full mailbox', 1, '1024W W 54TH ST\r\nASHTABULA, OH 44004', 'no'),
(330, 'Syd Cunningham', 'SOUTHEAST OHIO TRUCKING LLC', 'MC1201506', '614-531-4857', '2', NULL, 'frank', 'said-no', '2022-07-19 10:39:22.737974', '', 1, '81 COLUMBUS RD\r\nATHENS, OH 45701', 'yes'),
(331, 'Sonnel Martinez', 'MG Truckin LLC', 'MC81553', '646-464-6985', '2', NULL, 'frank', 'said-no', '2022-07-19 10:40:05.576994', '', 1, '5547 Mahoning Ave Ste 349\r\nAustintown, OH 44515-2316', 'yes'),
(332, 'Ilimdar Dursunov', 'ILIMDAR LLC', 'MC778560', '208-440-2564', '2', NULL, 'frank', 'said-no', '2022-07-19 10:41:09.141324', '', 1, '2606 DAEGAN DR\r\nAVON, OH 44011', 'yes'),
(333, 'Ali Abu Zahra', 'QTR LOGISTICS LLC', 'MC1143679', '440-787-3256', '2', NULL, 'frank', 'no-answer', '2022-07-19 10:42:01.975807', 'mail box not set up', 1, '\r\n151 SOMERSET LN #17\r\nAVON LAKE, OH 44012', 'no'),
(334, 'Tina Owens', 'T L YARBER TRUCKING LLC', 'MC1221662', '440-650-6225', '1', NULL, 'frank', 'said-no', '2022-07-19 10:42:33.883039', '', 1, '\r\n162 SOMERSET LN APT 9\r\nAVON LAKE, OH 44012', 'yes'),
(335, 'Andrey Chabanov', '770 LOGISTICS LLC', 'MC1149217', '805-455-0148', '2', NULL, 'frank', 'no-answer', '2022-07-19 10:43:50.311533', 'full mailbox', 1, '4031 COLONEL GLENN HIGHWAY #450\r\nBEAVERCREEK, OH 45431', 'no'),
(336, 'Tim Hearst', 'EAA TRANSPORTATION LINES LLC', 'MC1186524', '832-258-2802', '3', NULL, 'frank', 'no-answer', '2022-07-19 10:45:25.720830', '', 1, '\r\n70 BIRCH ALLEY SUITE 240\r\nBEAVERCREEK, OH 45440', 'yes'),
(337, '', 'Luna Lite Inc', 'MC1075962', '215-815-8105', '', NULL, 'frank', 'said-no', '2022-07-19 10:46:29.359146', '', 1, '4031 Colonel Glenn Highway\r\nBeavercreek, OH 45431', 'yes'),
(338, '', 'Nirwah Enterprise Llc', 'MC568', '937-856-2072', '', NULL, 'frank', 'said-no', '2022-07-19 10:47:18.515713', '', 1, '2644 King George St\r\nBeavercreek, OH 45431-5776', 'yes'),
(339, 'Sukhdeep Brar', 'Pb Highway 16 Transport', 'MC1076645', '937-972-1723', '1', NULL, 'frank', 'no-answer', '2022-07-19 10:48:13.129648', 'mailbox not set', 1, '3540 Emeraldcut Dr Apt 9\r\nBeavercreek, OH 45431-3764', 'no'),
(340, 'Sevinch', 'Z&J EXPRESS INC', 'MC1314873', '347-569-4318', '5', NULL, 'frank', 'no-answer', '2022-07-19 10:49:09.695811', '', 1, '4031 COLONEL GLENN HIGHWAY STE 450\r\nBEAVERCREEK, OH 45431', 'yes'),
(341, 'Rayshawn Leflore', 'ARJ Transport Llc', 'MC890205', '216-774-9131', '', NULL, 'frank', 'no-answer', '2022-07-19 10:52:05.389778', 'mailbox not set', 1, '91 Gould Ave\r\nBedford, OH 44146-2612', 'no'),
(342, 'Jerome carter', 'Owner Operator Inc', 'MC830796', '216-634-0833', '1', NULL, 'frank', 'no-answer', '2022-07-19 11:06:33.102233', '', 1, '808 Archer Road\r\nBedford, OH 44146', 'yes'),
(343, 'Michael Richey', 'RASCO LOGISTICS LLC', 'MC1241324', '216-544-0548', '2', NULL, 'frank', 'no-answer', '2022-07-19 11:26:17.085816', '', 1, '26239 BROADWAY AVE\r\nBEDFORD, OH 44146', 'yes'),
(344, '', 'SRS LOGISTIC LLC', 'MC1344228', '440-589-8000', '', NULL, 'frank', 'no-answer', '2022-07-19 11:27:15.271428', '', 1, '24675 PRICE RD\r\nBEDFORD, OH 44146', 'yes'),
(345, 'Bob', '50 STARS EXPRESS LLC', 'MC1176228', '314-441-1161', '2', NULL, 'frank', 'said-no', '2022-07-19 11:34:42.086200', '', 1, '2772 Hampshire Road APT 11\r\nCleveland Heights, OH 44106', 'yes'),
(346, 'Sukhdev Sidhu', 'AKAL TRANSPORT INC', 'MC1165844', '937-409-7390', '1', NULL, 'frank', 'said-no', '2022-07-19 11:35:38.707646', '', 1, '7390 CALMCREST CT\r\nHUBER HEIGHTS, OH 45424', 'yes'),
(347, 'Shareef', 'AZZA LOGISTICS LLC', 'MC1172345', '610-570-7678', '1', NULL, 'frank', 'said-no', '2022-07-19 11:36:31.055291', '', 1, '8479 LONE TREE DR\r\nHUBER HEIGHTS, OH 45424 ', 'yes'),
(348, '', 'DNG TRUCKING TRANSPORTATION LLP', 'MC1112749', '216-333-8081', '', NULL, 'frank', 'no-answer', '2022-07-19 11:37:24.770599', 'mailbox not set', 1, '5096 GREENHURST DR\r\nMAPLE HEIGHTS, OH 44146', 'no'),
(349, '', 'Gold Star Web Llc', 'MC849375', '216-777-1508', '', NULL, 'frank', 'no-answer', '2022-07-19 11:38:35.227134', '', 1, '2108 Akins Rd\r\nBroadview Heights, OH 44147-2330', 'yes'),
(350, 'Inna Shchur', 'INNA TRANSPORTATION LLC', 'MC1308919', '216-835-0217', '2', NULL, 'frank', 'said-no', '2022-07-19 11:39:29.262781', '', 1, '1227 N YORKSHIRE DR\r\nBROADVIEW HEIGHTS, OH 44147 ', 'yes'),
(351, '', 'REF EXPRESS LLC', 'MC1352484', '267-210-3383', '', NULL, 'frank', 'no-answer', '2022-07-19 11:40:48.626356', 'mailbox not set', 1, '10427 N CHURCH DR APT 123\r\nPARMA HEIGHTS, OH 44130-8604', 'no'),
(352, 'Navi', 'Sun Transport Inc', 'MC504632', '440-832-1217', '2', NULL, 'frank', 'said-no', '2022-07-19 11:51:47.783802', '', 1, '150 Hartford Ct\r\nBroadview Heights, OH 44147-4200', 'yes'),
(353, '', 'SVS Trucking Inc', 'MC45264', '440-224-4022', '', NULL, 'frank', 'no-answer', '2022-07-19 11:54:27.803060', '', 1, '6640 Pearl Rd Apt 106\r\nParma Heights, OH 44130-3811', 'yes'),
(354, 'Clayton Papenfus', 'Vanza Llc', 'MC76861', '216-269-1523', '2', NULL, 'frank', 'said-no', '2022-07-19 11:55:18.623398', '', 1, '14600 S Industrial Ave Ste D\r\nMaple Heights, OH 44137', 'yes'),
(355, 'Andradia Scovil', 'We Make Shipments LLC', 'MC1242425', '216-798-8364', '2', NULL, 'frank', 'said-no', '2022-07-19 11:57:36.462913', '', 1, '4659 Burleigh Road\r\nGarfield Heights, OH 4412', 'yes'),
(356, 'Mark Schoen', 'Schoen Transport Llc', 'MC695630', '567-224-1731', '2', NULL, 'frank', 'no-answer', '2022-07-19 11:58:53.699027', 'full mailbox', 1, '13161 County Road 24\r\nBellevue, OH 44811-9516', 'no'),
(357, 'Jim Barnet', 'Willow Knoll Farm & Transport Llc', 'MC7777', '567-228-9635', '1', NULL, 'frank', 'no-answer', '2022-07-19 12:01:44.884130', '', 1, '11801 Strecker Rd\r\nBellevue, OH 44811-9608 ', 'yes'),
(358, 'Mohamad Abuhilal', 'CONSTANT TRANSPORTATION LLC', 'MC1214514', '216-971-2263', '5', NULL, 'frank', 'said-no', '2022-07-19 12:02:46.843169', 'dispatcher', 1, '\r\n925 BEREA INDUSTRIAL PKWY\r\nBEREA, OH 44017', 'yes'),
(359, 'Mussie Sium', 'CIVILITY LOGISTICS LLC', 'MC1202571', '862-400-5958', '1', NULL, 'frank', 'said-no', '2022-07-19 12:03:43.454767', '', 1, '183 MACENROE DR\r\nBLACKLICK, OH 43004', 'yes'),
(360, '', 'GURUNANAK LLC', 'MC1095936', '614-560-5942', '', NULL, 'frank', 'said-no', '2022-07-19 12:05:56.500234', '', 1, '8134 ROYAL ELM DR\r\nBLACKLICK, OH 43004', 'yes'),
(361, 'JUDY Sabur', 'Simba Trucking Inc', 'MC851970', '614-446-2458', '9', NULL, 'frank', 'no-answer', '2022-07-19 12:07:03.024490', '', 1, '217 Malloy Ln\r\nBlacklick, OH 43004-9354', 'yes'),
(362, 'Abdikadir Dahir', 'Waranle Transport Llc', 'MC771510', '720-288-5846', '1', NULL, 'frank', 'no-answer', '2022-07-19 12:07:50.922643', 'full mailbox', 1, '7903 Oak Orchard Ave\r\nBlacklick, OH 43004-5032', 'no'),
(363, 'Hari', 'ZZ TRANSPORTS LLC', 'MC1103440', '413-355-2054', '1', NULL, 'frank', 'said-no', '2022-07-19 12:10:08.935480', '', 1, '8212 TURRET DRIVE\r\nBLACKLICK, OH 43004', 'yes'),
(364, 'Leo Noor', 'ROYAL ROADS GROUP LLC', 'MC1231454', '513-866-2233', '1', NULL, 'frank', 'said-no', '2022-07-19 12:10:30.893451', 'broker', 1, '\r\n10979 REED HARTMAN HWY STE 136B\r\nBLUE ASH, OH 45242', 'yes'),
(365, '', 'SKYY TRANSPORT LLC', 'MC948769', '330-565-8480', '', NULL, 'frank', 'said-no', '2022-07-19 12:11:01.206424', 'not in service', 1, '6181 SOUTH AVE\r\nBOARDMAN, OH 44512', 'yes'),
(366, 'Dammon Recknagel', 'RECKNAGEL TRUCKING LLC', 'MC1103791', '419-467-4012', '1', NULL, 'frank', 'no-answer', '2022-07-19 12:12:03.725373', 'mailbox not set', 1, '\r\n20825 DUNBRIDGE RD\r\nBOWLING GREEN, OH 43402', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `perm_id` int(11) NOT NULL,
  `perm_mod` varchar(5) NOT NULL,
  `perm_desc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`perm_id`, `perm_mod`, `perm_desc`) VALUES
(1, 'USR', 'Access users'),
(2, 'USR', 'Create new users'),
(3, 'USR', 'Update users'),
(4, 'USR', 'Delete users');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`) VALUES
(1, 'admin'),
(2, 'developer'),
(3, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `roles_permissions`
--

CREATE TABLE `roles_permissions` (
  `role_id` int(11) NOT NULL,
  `perm_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles_permissions`
--

INSERT INTO `roles_permissions` (`role_id`, `perm_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `user_email`, `user_password`, `role_id`) VALUES
(1, 'admin@admin.com', 'admin', 1),
(2, 'developer@developer.com', 'developer', 2),
(3, 'user01@user01.com', 'user01', 3),
(4, 'user02@user02.com', 'user02', 3),
(5, 'user03@user03.com', 'user03', 3);

-- --------------------------------------------------------

--
-- Table structure for table `va2pow`
--

CREATE TABLE `va2pow` (
  `cid` int(11) NOT NULL,
  `s_mc_number` varchar(100) NOT NULL,
  `s_company_name` varchar(100) NOT NULL,
  `street_address` varchar(100) DEFAULT NULL,
  `s_phone_number` varchar(100) DEFAULT NULL,
  `client_name` varchar(100) DEFAULT NULL,
  `pow` varchar(100) DEFAULT NULL,
  `s_email` varchar(100) DEFAULT NULL,
  `s_status` varchar(100) DEFAULT NULL,
  `last_changed` datetime(6) DEFAULT current_timestamp(6),
  `times_called` int(50) DEFAULT 0,
  `status_comments` varchar(100) DEFAULT NULL,
  `con_digit` int(11) DEFAULT NULL,
  `voice_mail` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `va2pow`
--

INSERT INTO `va2pow` (`cid`, `s_mc_number`, `s_company_name`, `street_address`, `s_phone_number`, `client_name`, `pow`, `s_email`, `s_status`, `last_changed`, `times_called`, `status_comments`, `con_digit`, `voice_mail`) VALUES
(11929, 'MC738175', '1st Midwest Express Inc', '\n3710 Kersdale Pl\nGrove City, OH 43123-8611', '317-603-5926', '', '', '', 'said-no', '2022-07-18 16:00:02.000000', 1, '', 1, NULL),
(11930, 'MC1421171', 'ABS TRANSPORTERS LLC', '2070 EAST AVE\nAKRON, OH 44314', '830-383-3376', '', '', '', 'said-no', '2022-07-18 16:00:56.000000', 1, '', 1, NULL),
(11931, 'MC1263029', 'ADAMS & SHAW TRUCKING AND LOGISTICS LLC', '821 DANMEAD AVE\nAKRON, OH 44305', '234-738-9353', '', '', '', 'said-no', '2022-07-18 16:01:59.000000', 1, '', 1, NULL),
(11932, 'MC1174895', 'APL LOGISTICS LLC', '745 RUSSELL AVE\nAKRON, OH 44307', '213-257-4177', 'Raymond evans', '', 'Raymondevans@gmail.com', 'said-no', '2022-07-18 16:02:28.000000', 1, 'Not in service', 1, NULL),
(11933, 'MC1256900', 'D WILLIAMS LOGISTICS LLC', '672 PATTERSON AVE\nAKRON, OH 44310', '234-281-5856', '', '', '', 'no-answer', '2022-07-18 16:03:07.000000', 1, '', 1, NULL),
(11934, 'MC93771', 'FR8 Carrier Corporation', '3867 Medina Rd 316\nAkron, OH 44333-4525', '330-780-5018', '', '1', '', 'no-answer', '2022-07-19 10:18:22.000000', 1, '', 1, NULL),
(11935, 'MC787640', 'Ganesh Transport Inc', '3867 Medina Rd 167\nAkron, OH 44333-4525', '917-968-2922', 'ANDZELA DAMME', '2', 'ganeshtransport19@yahoo.com', 'said-no', '2022-07-19 10:20:28.000000', 1, 'broker', 1, NULL),
(11936, 'MC59347', 'Morocco Trucking', '1047 Eagle Dr Apt 513\nAkron, OH 44312-5857 ', '608-446-2660', 'jilali Elomari', '1', 'super_1980@yahoo.com', 'no-answer', '2022-07-19 10:21:43.000000', 1, '', 1, NULL),
(11937, 'MC1070882', 'PLX TRUCKING COMPANY LLC', '89 WYMORE AVE APT A\nAKRON, OH 44319', '234-303-4728', 'Gian', '3', '', 'no-answer', '2022-07-19 10:23:29.000000', 1, '', 1, NULL),
(11938, 'MC1174091', 'POT EXPRESS INC', '942 N MAIN ST SUITE 31\nAKRON, OH 44310', '917-254-3901', '', '', '', 'said-no', '2022-07-19 10:25:20.000000', 1, '', 1, NULL),
(11939, 'MC120507', 'S & F Enterprise', '\n396 Howe St\nAkron, OH 44307-1952 ', '330-208-8349', 'Corey Sonier', '1', 'csonier0716@gmail.com', 'said-no', '2022-07-19 10:26:08.000000', 1, '', 1, NULL),
(11940, 'MC185062', 'T & J Transportation Llc', '2814 Wood Duck Ln Apt 101\nAkron, OH 44319-5785', '850-748-0444', 'Tejinder Singh', '3', 'tj.transportationllc@yahoo.com', 'said-no', '2022-07-19 10:26:53.000000', 1, '', 1, NULL),
(11941, 'MC1226294', 'THE PROFESSIONALS GROUP LLC', '1766 GOODYEAR BLVD\nAKRON, OH 44305', '330-957-5114', 'Keith Burnette', '1', 'Info@wearepillars.com', 'said-no', '2022-07-19 10:27:46.000000', 1, '', 1, NULL),
(11942, 'MC1350495', 'Triple g transportation llc', '\n1409 Neptune\nAkron, OH 44301', '267-699-1585', 'Gerald gray', '2', 'Frontline5@live.com', 'no-answer', '2022-07-19 10:29:03.000000', 1, '', 1, NULL),
(11943, 'MC1064662', 'WADLEY TRUCKING LLC', '521 WINANS AVE\nAKRON, OH 44306-1525', '702-203-2709', 'Melvin L Wadley', '1', 'melvinwadley57@gmail.com', 'no-answer', '2022-07-19 10:30:01.000000', 1, '', 1, NULL),
(11944, 'MC1290384', 'War Elk LLC', '\n566 Queens Court\nAkron, OH 44321', '678-858-6308', 'Cedric Walker', '2', 'Warelk0817@gmail.com', 'said-no', '2022-07-19 10:32:33.000000', 1, '', 1, NULL),
(11945, 'MC834962', 'Gibbons Transportation LLC', '500 Us Highway 42\nAshland, OH 44805-9501', '419-289-2949', 'Jessica', '', 'gibbonslogistics16@gmail.com', 'said-no', '2022-07-19 10:33:47.000000', 1, 'Not in service', 1, NULL),
(11946, 'MC1359560', 'DERRICK SHEPHERD', '1024W W 54TH ST\nASHTABULA, OH 44004', '216-315-2335', 'Derrick Tyrell Shepherd', '1', 'sheph80@gmail.com', 'no-answer', '2022-07-19 10:38:37.000000', 1, 'full mailbox', 1, NULL),
(11947, 'MC1201506', 'SOUTHEAST OHIO TRUCKING LLC', '81 COLUMBUS RD\nATHENS, OH 45701', '614-531-4857', 'Syd Cunningham', '2', 'southeastohiotrucking@gmail.com', 'said-no', '2022-07-19 10:39:22.000000', 1, '', 1, NULL),
(11948, 'MC81553', 'MG Truckin LLC', '5547 Mahoning Ave Ste 349\nAustintown, OH 44515-2316', '646-464-6985', 'Sonnel Martinez', '2', 'Mgtruckin01@gmail.com', 'said-no', '2022-07-19 10:40:05.000000', 1, '', 1, NULL),
(11949, 'MC778560', 'ILIMDAR LLC', '2606 DAEGAN DR\nAVON, OH 44011', '208-440-2564', 'Ilimdar Dursunov', '2', 'ilimdar84@gmail.com', 'said-no', '2022-07-19 10:41:09.000000', 1, '', 1, NULL),
(11950, 'MC1143679', 'QTR LOGISTICS LLC', '\n151 SOMERSET LN #17\nAVON LAKE, OH 44012', '440-787-3256', 'Ali Abu Zahra', '2', 'qtrlogisticsllc@gmail.com', 'no-answer', '2022-07-19 10:42:01.000000', 1, 'mail box not set up', 1, NULL),
(11951, 'MC1221662', 'T L YARBER TRUCKING LLC', '\n162 SOMERSET LN APT 9\nAVON LAKE, OH 44012', '440-650-6225', 'Tina Owens', '1', 't.owens@jalogisticsusa.com', 'said-no', '2022-07-19 10:42:33.000000', 1, '', 1, NULL),
(11952, 'MC1149217', '770 LOGISTICS LLC', '4031 COLONEL GLENN HIGHWAY #450\nBEAVERCREEK, OH 45431', '805-455-0148', 'Andrey Chabanov', '2', 'dispatch@770llc.com', 'no-answer', '2022-07-19 10:43:50.000000', 1, 'full mailbox', 1, NULL),
(11953, 'MC1186524', 'EAA TRANSPORTATION LINES LLC', '\n70 BIRCH ALLEY SUITE 240\nBEAVERCREEK, OH 45440', '832-258-2802', 'Tim Hearst', '3', 'eaadispatchlines@gmail.com', 'no-answer', '2022-07-19 10:45:25.000000', 1, '', 1, NULL),
(11954, 'MC1075962', 'Luna Lite Inc', '4031 Colonel Glenn Highway\nBeavercreek, OH 45431', '215-815-8105', '', '', '', 'said-no', '2022-07-19 10:46:29.000000', 1, '', 1, NULL),
(11955, 'MC568', 'Nirwah Enterprise Llc', '2644 King George St\nBeavercreek, OH 45431-5776', '937-856-2072', '', '', '', 'said-no', '2022-07-19 10:47:18.000000', 1, '', 1, NULL),
(11956, 'MC1076645', 'Pb Highway 16 Transport', '3540 Emeraldcut Dr Apt 9\nBeavercreek, OH 45431-3764', '937-972-1723', 'Sukhdeep Brar', '1', 'Deepbrar.ks@gmail.com', 'no-answer', '2022-07-19 10:48:13.000000', 1, 'mailbox not set', 1, NULL),
(11957, 'MC1314873', 'Z&J EXPRESS INC', '4031 COLONEL GLENN HIGHWAY STE 450\nBEAVERCREEK, OH 45431', '347-569-4318', 'Sevinch', '5', 'sales@zjexpressinc.com', 'no-answer', '2022-07-19 10:49:09.000000', 1, '', 1, NULL),
(11958, 'MC890205', 'ARJ Transport Llc', '91 Gould Ave\nBedford, OH 44146-2612', '216-774-9131', 'Rayshawn Leflore', '', 'savalas523@yahoo.com', 'no-answer', '2022-07-19 10:52:05.000000', 1, 'mailbox not set', 1, NULL),
(11959, 'MC830796', 'Owner Operator Inc', '808 Archer Road\nBedford, OH 44146', '216-634-0833', 'Jerome carter', '1', 'Owneropinc@yahoo.com', 'no-answer', '2022-07-19 11:06:33.000000', 1, '', 1, NULL),
(11960, 'MC1241324', 'RASCO LOGISTICS LLC', '26239 BROADWAY AVE\nBEDFORD, OH 44146', '216-544-0548', 'Michael Richey', '2', 'rascologisticsllc@gmail.com', 'no-answer', '2022-07-19 11:26:17.000000', 1, '', 1, NULL),
(11961, 'MC1344228', 'SRS LOGISTIC LLC', '24675 PRICE RD\nBEDFORD, OH 44146', '440-589-8000', '', '', '', 'no-answer', '2022-07-19 11:27:15.000000', 1, '', 1, NULL),
(11962, 'MC1176228', '50 STARS EXPRESS LLC', '2772 Hampshire Road APT 11\nCleveland Heights, OH 44106', '314-441-1161', 'Bob', '2', '', 'said-no', '2022-07-19 11:34:42.000000', 1, '', 1, NULL),
(11963, 'MC1165844', 'AKAL TRANSPORT INC', '7390 CALMCREST CT\nHUBER HEIGHTS, OH 45424', '937-409-7390', 'Sukhdev Sidhu', '1', 'Akalinc409@gmail.com', 'said-no', '2022-07-19 11:35:38.000000', 1, '', 1, NULL),
(11964, 'MC1172345', 'AZZA LOGISTICS LLC', '8479 LONE TREE DR\nHUBER HEIGHTS, OH 45424 ', '610-570-7678', 'Shareef', '1', '', 'said-no', '2022-07-19 11:36:31.000000', 1, '', 1, NULL),
(11965, 'MC1112749', 'DNG TRUCKING TRANSPORTATION LLP', '5096 GREENHURST DR\nMAPLE HEIGHTS, OH 44146', '216-333-8081', '', '', '', 'no-answer', '2022-07-19 11:37:24.000000', 1, 'mailbox not set', 1, NULL),
(11966, 'MC849375', 'Gold Star Web Llc', '2108 Akins Rd\nBroadview Heights, OH 44147-2330', '216-777-1508', '', '', '', 'no-answer', '2022-07-19 11:38:35.000000', 1, '', 1, NULL),
(11967, 'MC1308919', 'INNA TRANSPORTATION LLC', '1227 N YORKSHIRE DR\nBROADVIEW HEIGHTS, OH 44147 ', '216-835-0217', 'Inna Shchur', '2', 'innatransportation@gmail.com', 'said-no', '2022-07-19 11:39:29.000000', 1, '', 1, NULL),
(11968, 'MC1352484', 'REF EXPRESS LLC', '10427 N CHURCH DR APT 123\nPARMA HEIGHTS, OH 44130-8604', '267-210-3383', '', '', '', 'no-answer', '2022-07-19 11:40:48.000000', 1, 'mailbox not set', 1, NULL),
(11969, 'MC504632', 'Sun Transport Inc', '150 Hartford Ct\nBroadview Heights, OH 44147-4200', '440-832-1217', 'Navi', '2', 'navi@suntransinc.com', 'said-no', '2022-07-19 11:51:47.000000', 1, '', 1, NULL),
(11970, 'MC45264', 'SVS Trucking Inc', '6640 Pearl Rd Apt 106\nParma Heights, OH 44130-3811', '440-224-4022', '', '', '', 'no-answer', '2022-07-19 11:54:27.000000', 1, '', 1, NULL),
(11971, 'MC76861', 'Vanza Llc', '14600 S Industrial Ave Ste D\nMaple Heights, OH 44137', '216-269-1523', 'Clayton Papenfus', '2', 'Clayton Papenfus', 'said-no', '2022-07-19 11:55:18.000000', 1, '', 1, NULL),
(11972, 'MC1242425', 'We Make Shipments LLC', '4659 Burleigh Road\nGarfield Heights, OH 4412', '216-798-8364', 'Andradia Scovil', '2', 'WeMakeShipments@gmail.com', 'said-no', '2022-07-19 11:57:36.000000', 1, '', 1, NULL),
(11973, 'MC695630', 'Schoen Transport Llc', '13161 County Road 24\nBellevue, OH 44811-9516', '567-224-1731', 'Mark Schoen', '2', 'schoentransportllc@yahoo.com', 'no-answer', '2022-07-19 11:58:53.000000', 1, 'full mailbox', 1, NULL),
(11974, 'MC7777', 'Willow Knoll Farm & Transport Llc', '11801 Strecker Rd\nBellevue, OH 44811-9608 ', '567-228-9635', 'Jim Barnet', '1', 'jdbarnettjr@yahoo.com', 'no-answer', '2022-07-19 12:01:44.000000', 1, '', 1, NULL),
(11975, 'MC1214514', 'CONSTANT TRANSPORTATION LLC', '\n925 BEREA INDUSTRIAL PKWY\nBEREA, OH 44017', '216-971-2263', 'Mohamad Abuhilal', '5', 'Constant.transportationllc@gmail.com', 'said-no', '2022-07-19 12:02:46.000000', 1, 'dispatcher', 1, NULL),
(11976, 'MC1202571', 'CIVILITY LOGISTICS LLC', '183 MACENROE DR\nBLACKLICK, OH 43004', '862-400-5958', 'Mussie Sium', '1', 'civilitylogistics@gmail.com', 'said-no', '2022-07-19 12:03:43.000000', 1, '', 1, NULL),
(11977, 'MC1095936', 'GURUNANAK LLC', '8134 ROYAL ELM DR\nBLACKLICK, OH 43004', '614-560-5942', '', '', '', 'said-no', '2022-07-19 12:05:56.000000', 1, '', 1, NULL),
(11978, 'MC851970', 'Simba Trucking Inc', '217 Malloy Ln\nBlacklick, OH 43004-9354', '614-446-2458', 'JUDY Sabur', '9', 'SIMBAOHIO@GMAIL.COM', 'no-answer', '2022-07-19 12:07:03.000000', 1, '', 1, NULL),
(11979, 'MC771510', 'Waranle Transport Llc', '7903 Oak Orchard Ave\nBlacklick, OH 43004-5032', '720-288-5846', 'Abdikadir Dahir', '1', 'waranle@live.com?', 'no-answer', '2022-07-19 12:07:50.000000', 1, 'full mailbox', 1, NULL),
(11980, 'MC1103440', 'ZZ TRANSPORTS LLC', '8212 TURRET DRIVE\nBLACKLICK, OH 43004', '413-355-2054', 'Hari', '1', 'Harisharma712@gmail.com', 'said-no', '2022-07-19 12:10:08.000000', 1, '', 1, NULL),
(11981, 'MC1231454', 'ROYAL ROADS GROUP LLC', '\n10979 REED HARTMAN HWY STE 136B\nBLUE ASH, OH 45242', '513-866-2233', 'Leo Noor', '1', 'DISPATCH@ROYALROADSGROUP.COM', 'said-no', '2022-07-19 12:10:30.000000', 1, 'broker', 1, NULL),
(11982, 'MC948769', 'SKYY TRANSPORT LLC', '6181 SOUTH AVE\nBOARDMAN, OH 44512', '330-565-8480', '', '', '', 'said-no', '2022-07-19 12:11:01.000000', 1, 'not in service', 1, NULL),
(11983, 'MC1103791', 'RECKNAGEL TRUCKING LLC', '\n20825 DUNBRIDGE RD\nBOWLING GREEN, OH 43402', '419-467-4012', 'Dammon Recknagel', '1', 'Recknageltruckingllc47@gmail.com', 'no-answer', '2022-07-19 12:12:03.000000', 1, 'mailbox not set', 1, NULL),
(11984, 'MC190932', 'RW Martin Trucking Llc', '218 Crim St\nBowling Green, OH 43402-3221', '419-353-2691', 'Ray Martin', '', 'ray@rwmartintrucking.com?', 'waiting-call', '2022-06-28 06:16:40.588789', 0, NULL, 1, NULL),
(11985, 'MC986716', 'Cleveland Freight Management Llc', '13374 Ridge Rd Ste 207\nNorth Royalton, OH 44133-3801', '216-278-0213', 'CLEVELAND FREIGHT MANAGEMENT LLC', '1', 'INFO@CLEVELANDFREIGHT.COM', 'waiting-call', '2022-06-28 06:16:40.601934', 0, NULL, 1, NULL),
(11986, 'MC547848', 'Dokic Transportation Inc', '\n23736 Curtis Dr\nNorth Olmsted, OH 44070-2826', '216-926-8262', 'DAVOR DOKIC', '', 'dokictrans@gmail.com', 'waiting-call', '2022-06-28 06:16:40.621953', 0, NULL, 1, NULL),
(11987, 'MC122174', 'Evolution Transport', '14880 Orrville St NW\nNorth Lawrence, OH 44666-9608', '330-414-8756', 'Josh Saunders', '1', 'evolutiontransport18@gmail.com', 'waiting-call', '2022-06-28 06:16:40.644673', 0, NULL, 1, NULL),
(11988, 'MC1267485', 'Faithful Road Shipping LLC', '37591 Stoney Lake Drive\nNorth Ridgeville, OH 44039', '216-609-2567', 'samer', '5', 'samer4jesuschrist@gmail.com', 'waiting-call', '2022-06-28 06:16:40.686846', 0, NULL, 1, NULL),
(11989, 'MC1267145', 'LEWIS & CLARK LOGISTICS LLC', '5961 OPAL ST\nNORTH RIDGEVILLE, OH 44039', '910-624-8690', 'Tim Clark', '', 'Tclark@lewisclarklogistics.com', 'waiting-call', '2022-06-28 06:16:40.737896', 0, NULL, 1, NULL),
(11990, 'MC1285188', 'MY WAY USA LLC', '10246 Bentley Drive\nNorth Royalton, OH 44133', '216-702-7287', '', '', '', 'waiting-call', '2022-06-28 06:16:40.774318', 0, NULL, 1, NULL),
(11991, 'MC1061982', 'NAZIRA CORP', '4823 COLUMBIA ROAD APT 202\nNORTH OLMSTED, OH 44070', '330-318-2747', 'Muzaffar Narkhodjaev', '4', 'Muzaffar8510@yahoo.com', 'waiting-call', '2022-06-28 06:16:40.799208', 0, NULL, 1, NULL),
(11992, 'MC315196', 'R A M Trucking', '3129 S Salem Warren Rd\nNorth Jackson, OH 44451-9739', '330-233-6326', 'Robert Millerleile', '', 'rmillerleile@gmail.com', 'waiting-call', '2022-06-28 06:16:40.824014', 0, NULL, 1, NULL),
(11993, 'MC1065442', 'Tne Express Llc', '9079 Ichabod Dr\nNorth Ridgeville, OH 44039-8732', '813-203-0348', 'Emran Aliyev', '2', 'Tneexpressllc@gmail.com', 'waiting-call', '2022-06-28 06:16:40.835418', 0, NULL, 1, NULL),
(11994, 'MC1011237', 'Trammell Logistics Llc', '13951 Oakbrook Dr Apt 312\nNorth Royalton, OH 44133-4656', '216-716-0352', 'Earnest Trammell', '2', 'Earnest@trammelllogistics.org', 'waiting-call', '2022-06-28 06:16:40.848724', 0, NULL, 1, NULL),
(11995, 'MC1016132', 'UA Express Delivery LLC', '10164 Lynn Dr\nNorth Royalton, OH 44133-1426', '216-551-5433', 'Luda Kochubey', '3', 'uaexpinfo@gmail.com', 'waiting-call', '2022-06-28 06:16:40.861418', 0, NULL, 1, NULL),
(11996, 'MC1093571', 'NORTHERN STAR TRANSPORT LLC', '461 TOLLIS PKWY UNIT 264D\nBROADVIEW HTS, OH 44147', '440-381-7314', 'Oleg', '1', 'Dispatch@northernstar-transport.com', 'waiting-call', '2022-06-28 06:16:40.880213', 0, NULL, 1, NULL),
(11997, 'MC104249', 'Trident Logistic Inc', '\n13485 Zaremba Drive\nBrook Park, OH 44142', '702-328-7016', '', '', '', 'waiting-call', '2022-06-28 06:16:40.911489', 0, NULL, 1, NULL),
(11998, 'MC803584', 'TLN Enterprises Inc', '4001 Edward Dr\nBrunswick, OH 44212-1511', '216-701-0842', 'Lynn Nofziger', '', 'tlnenterprisesinc@gmail.com', 'waiting-call', '2022-06-28 06:16:40.921374', 0, NULL, 1, NULL),
(11999, 'MC7883', 'Volturn Llc', '4062 Blossom Ct\nBrunswick, OH 44212-1702', '216-650-0004', 'Mariya', '2', 'volturnllc@gmail.com?', 'waiting-call', '2022-06-28 06:16:40.934477', 0, NULL, 1, NULL),
(12000, 'MC698150', 'HILER TRUCKING LLC', '5487 STATE ROUTE 4\nBUCYRUS, OH 44820', '419-561-1451', 'Mary', '', '', 'waiting-call', '2022-06-28 06:16:40.945344', 0, NULL, 1, NULL),
(12001, 'MC962795', 'RIPU D KAPIL', '4947 LINCOLN HWY\nBUCYRUS, OH 44820', '419-617-2167', 'Daman kapil', '6', 'mutleyexpress01@gmail.com', 'waiting-call', '2022-06-28 06:16:40.957050', 0, NULL, 1, NULL),
(12002, 'MC941986', 'S.E. REEDS TRUCKING LLC', '1836 RVER ROAD\nBUCYRUS, OH 44820', '740-802-8496', 'Seth Reed', '2', 'Reedstrucking75@yahoo.com', 'waiting-call', '2022-06-28 06:16:40.970069', 0, NULL, 1, NULL),
(12003, 'MC1049078', 'Jusrod Trucking Inc', '4439 Peters Creek Rd\nCambridge, OH 43725-9385', '740-630-8774', 'Troy Hawthorne', '1', 'jusrod379@gmail.com', 'waiting-call', '2022-06-28 06:16:40.981791', 0, NULL, 1, NULL),
(12004, 'MC1183706', 'REMINGTON TRUCKING LLC', '4150 W MIDDLETOWN RD\nCANFIELD, OH 44406', '859-982-2011', '', '', '', 'waiting-call', '2022-06-28 06:16:40.995162', 0, NULL, 1, NULL),
(12005, 'MC20178', 'CM&M SERVICES LLC', '1920 ROOT AVE NE\nCANTON, OH 44705', '330-581-8516', '', '', '', 'waiting-call', '2022-06-28 06:16:41.006476', 0, NULL, 1, NULL),
(12006, 'MC1228302', 'CROWNS TRUCKING LLC', '\n1640 31ST ST NE\nCANTON, OH 44714', '234-410-4457', 'Ariana McPeters', '2', 'Crownstrucking@gmail.com', 'waiting-call', '2022-06-28 06:16:41.018199', 0, NULL, 1, NULL),
(12007, 'MC663121', 'Dansco Manufacturing & Pumping Unit Service Lp', '2149 Moore Ave SE\nCanton, OH 44707-2239', '330-452-3677', '', '', '', 'waiting-call', '2022-06-28 06:16:41.032165', 0, NULL, 1, NULL),
(12008, 'MC1097841', 'LONGWAY BUCKEYE TRUCKING LLC', '823 HALTER CT NW\nCANTON, OH 44708', '330-883-0468', 'Jessica Parker', '1', 'jessicaparker32@icloud.com', 'waiting-call', '2022-06-28 06:16:41.044899', 0, NULL, 1, NULL),
(12009, 'MC764544', 'Mdr Trucking Company Llc', '308 BELDEN AVE SE\nCANTON, OH 44707', '330-546-2060', '', '', '', 'waiting-call', '2022-06-28 06:16:41.056754', 0, NULL, 1, NULL),
(12010, 'MC741009', 'Twin Freight Inc', '4448 Southway St SW\nCanton, OH 44706-1847', '724-581-1105', 'Andriy', '4', 'twinfreight@gmail.com', 'waiting-call', '2022-06-28 06:16:41.068710', 0, NULL, 1, NULL),
(12011, 'MC151564', 'Trans Business Global Inc', '7624 Paragon Commons Cir\nCenterville, OH 45459-4033', '937-409-2261', 'Kamol Ergashev', '3', 'Transbusinessglobalinc@gmail.com', 'waiting-call', '2022-06-28 06:16:41.080423', 0, NULL, 1, NULL),
(12012, 'MC1185769', '3ONE7 Logistics LLC', '2923 Wardall Avenue\nCincinnati, OH 45211', '513-592-8574', 'negassi mengstab issac', '3', '3one7logisticsllc@gmail.com', 'waiting-call', '2022-06-28 06:16:41.094673', 0, NULL, 1, NULL),
(12013, 'MC999526', '3m Nationwide Trucking Inc', '2350 Reading Rd\nCincinnati, OH 45202-1430', '513-476-1125', 'Jonathan Ambaye', '', 'Jonathan Ambaye', 'waiting-call', '2022-06-28 06:16:41.105467', 0, NULL, 1, NULL),
(12014, 'MC976462', 'Allan Johnson Trucking Llc', '4023 Deer Park Ave\nCincinnati, OH 45236-3407', '862-400-3827', 'Allan Johnson', '1', 'rayejohn10@gmail.com?', 'waiting-call', '2022-06-28 06:16:41.143945', 0, NULL, 1, NULL),
(12015, 'MC952326', 'BAD Bear Trucking Company', '2736 Haverknoll Dr\nCincinnati, OH 45231-1053', '513-608-1146', 'Michael Lipp', '1', 'bbtruckingohio@gmail.co', 'waiting-call', '2022-06-28 06:16:41.154495', 0, NULL, 1, NULL),
(12016, 'MC78208', 'Big Dream Way Inc', '4097 Sharon Park Ln Apt 16\nCincinnati, OH 45241-2086', '917-588-3377', 'Hurshed Halimov', '1', 'Bigdreamway@gmail.com', 'waiting-call', '2022-06-28 06:16:41.167554', 0, NULL, 1, NULL),
(12017, 'MC1220462', 'CINC LOGISTICS LLC', '1330 KOENIG ST\nCINCINNATI, OH 45215', '513-349-0640', '', '2', '', 'waiting-call', '2022-06-28 06:16:41.229450', 0, NULL, 1, NULL),
(12018, 'MC1167237', 'Curb Connections Llc', '3648 Hollyridge Court\nCincinnati, OH 45251', '513-387-9619', 'Nic smith', '2', 'Curbconnections@yahoo.com', 'waiting-call', '2022-06-28 06:16:41.240115', 0, NULL, 1, NULL),
(12019, 'MC1108617', 'DBS TRANSPORT AND LOGISTICS LLC', '11362 KARY LN\nCINCINNATI, OH 45240', '513-510-1621', '', '', '', 'waiting-call', '2022-06-28 06:16:41.296978', 0, NULL, 1, NULL),
(12020, 'MC115023', 'DOMIC EXPRESS INC', '2923 RAVOGLI AVE\nCINCINNATI, OH 45211', '513-305-9804', 'Gilbert', '1', 'Gmuhirwe@gmail.com', 'waiting-call', '2022-06-28 06:16:41.315633', 0, NULL, 1, NULL),
(12021, 'MC1362310', 'EXTREME PRECISION LOGISTICS LLC', '6330 MEIS AVE\nCINCINNATI, OH 45224', '513-399-1830', 'Mykeal Parker', '1', 'Extremeprecisionlogistics@gmail.com', 'waiting-call', '2022-06-28 06:16:41.330220', 0, NULL, 1, NULL),
(12022, 'MC943257', 'Es Express Trucking Llc', '7350 Montgomery Rd Unit 36609\nCincinnati, OH 45236-7526 ', '513-546-3457', 'Elson Salter', '1', 'esalter23@gmail.com', 'waiting-call', '2022-06-28 06:16:41.348716', 0, NULL, 1, NULL),
(12023, 'MC1222034', 'FES QUICK TRIP LOGISTICS', '\n8144 BOBOLINK DR\nCINCINNATI, OH 45224', '513-252-4689', 'Janel Cockerham', '2', 'Fesquicktriplogistics@gmail.com', 'waiting-call', '2022-06-28 06:16:41.361903', 0, NULL, 1, NULL),
(12024, 'MC1318517', 'First Solution Transport Llc', '1543 Bermuda Pl\nCincinnati, OH 45231', '513-497-0190', 'nicholas kirkland', '2', 'Firststransport@gmail.com', 'waiting-call', '2022-06-28 06:16:41.381671', 0, NULL, 1, NULL),
(12025, 'MC1235476', 'GILL & SONS XPRESS INC', '2935 PARKWALK DR\nCINCINNATI, OH 45239', '513-448-6221', '', '', '', 'waiting-call', '2022-06-28 06:16:41.395119', 0, NULL, 1, NULL),
(12026, 'MC1204051', 'HENDRIX TRANSPORTATION LLC', '2145 WERON LN\nCINCINNATI, OH 45225', '513-365-1696', '', '', '', 'waiting-call', '2022-06-28 06:16:41.414773', 0, NULL, 1, NULL),
(12027, 'MC1277023', 'HIGHWAY VISION TRANSPORTATION LLC', '1028 TOWNE ST\nCINCINNATI, OH 45216', '513-638-1222', 'Andre Jenkins', '1', 'Highwayvisiontransportation@gmail.com', 'waiting-call', '2022-06-28 06:16:41.426693', 0, NULL, 1, NULL),
(12028, 'MC1217992', 'IMPERIA MAX EXPO INC', '\n6809 MAIN ST UNIT 310\nCINCINNATI, OH 45244', '929-291-0203', 'sanjar bahronov', '1', 'imperiamaxexpo@gmail.com', 'waiting-call', '2022-06-28 06:16:41.438054', 0, NULL, 1, NULL),
(12029, 'MC1262783', 'ITS LLC', '521 HARRIET ST\nCINCINNATI, OH 45203 ', '513-616-6016', 'Anthony Monnig', '', 'hmfic@itruckingservice.co', 'waiting-call', '2022-06-28 06:16:41.451415', 0, NULL, 1, NULL),
(12030, 'MC1094581', 'Interstate Logistics Specialist LLC', '6457 Glenway Avenue unit 329\nCincinnati, OH 45211', '513-908-7757', 'Joshua McShan-Kelly', '1', 'mcshanjoshua@gmail.com', 'waiting-call', '2022-06-28 06:16:41.463376', 0, NULL, 1, NULL),
(12031, 'MC1319180', 'JEAN JEUNE & PARTNERS INC', '250 EAST 5TH STREET 15TH FLOOR\nCINCINNATI, OH 45202', '610-445-1111', '', '', '', 'waiting-call', '2022-06-28 06:16:41.475868', 0, NULL, 1, NULL),
(12032, 'MC1286639', 'JLG & UIS LLC', '4003 SHARON PARK LN APT 19\nCINCINNATI, OH 45241', '513-828-6096', 'Jaba', '2', 'jgubatashvili@gmail.com', 'said-no', '2022-07-18 10:07:08.000000', 1, 'broker', 1, NULL),
(12033, 'MC1116472', 'K & Y Logistic Inc', '1380 PEBBLE CT APT 207\nCincinnati, OH 45255', '347-260-5051', 'KELDIYOR BAHTIYOROV', '2', 'knylogistics86@gmail.com', 'no-answer', '2022-07-18 10:08:23.000000', 1, '', 1, NULL),
(12034, 'MC1312763', 'KAHLONTRANSPORTATION INC', '4727 Hassman Court\nCincinnati, OH 45223', '337-420-0000', '', '', '', 'no-answer', '2022-07-18 10:09:52.000000', 1, '', 1, NULL),
(12035, 'MC836595', 'Koubia Transportation Inc', '8338 Roland Ave\nCincinnati, OH 45216-1029', '937-238-3264', '', '', '', 'no-answer', '2022-07-18 10:10:21.000000', 1, '', 1, NULL),
(12036, 'MC1091643', 'Lamar Trucking Llc', '2716 Queen City Ave Apt 6\nCincinnati, OH 45238-2977', '513-828-8484', 'Abe Hamed', '6', 'Lamartruckingllc222@gmail.com', 'no-answer', '2022-07-18 10:11:09.000000', 1, '', 1, NULL),
(12037, 'MC17960', 'Long Way Llc', '\n12163 Brisben Pl\nCincinnati, OH 45249-8103', '513-612-0482', 'Bekhzod Abdusamatov (BEK)', '', 'longwaylanes@gmail.com', 'no-answer', '2022-07-18 10:12:03.000000', 1, '', 1, NULL),
(12038, 'MC1381813', 'M & M HOTSHOT TRUCKING LLC', '8731 Forfeit Run Road\nCincinnati, OH 45247', '513-348-6329', 'Todd Maringer', '2', 'mandmhotshottrucking@gmail.com', 'no-answer', '2022-07-18 10:13:20.000000', 1, '', 1, NULL),
(12039, 'MC1101641', 'MID-VALLEY EXPRESS LLC', '140 WARREN AVE\nCINCINNATI, OH 45215', '513-371-9465', 'Steve Eric Powers', '1', 'spmidvalleyexpress@aol.com', 'said-no', '2022-07-18 10:14:29.000000', 1, 'not interested', 1, NULL),
(12040, 'MC1164601', 'Nessa Transportation LLC', '126 Glenwood Avenue\nCincinnati, OH 45217', '513-432-8296', 'Donnessa Mccall', '1', 'Nessatransportation@yahoo.com', 'no-answer', '2022-07-18 10:15:14.000000', 1, '', 1, NULL),
(12041, 'MC936446', 'New Punjab Transport LLC', '\n7610 READING ROAD APT 416\nCINCINNATI, OH 45237', '559-317-3911', 'dilraj', '2', 'nptl1124@gmail.com?', 'said-no', '2022-07-18 10:15:59.000000', 1, '', 1, NULL),
(12042, '', 'Ohio Valley Shippers, LLC', '4950 Para Dr\nCincinnati, OH 45237-5012', '513-242-7900', 'Cindy Wilson', '', 'OVSA@OVSA.CC', 'said-no', '2022-07-18 10:16:57.000000', 1, '', 1, NULL),
(12043, 'MC1143181', 'PACKHORSE LIMITED', '3526 REEMELIN RD\nCINCINNATI, OH 45211', '513-488-0690', 'Larry Russo Sr', '2', 'packhorselimited20@gmail.com', 'no-answer', '2022-07-18 10:17:52.000000', 1, '', 1, NULL),
(12044, 'MC1186879', 'PROGRESS LOGISTICS TRANSPORTATION LLC', '\n1225 AMANDA PL\nCINCINNATI, OH 45205', '513-600-3065', '', '', '', 'no-answer', '2022-07-18 10:19:31.000000', 1, '', 1, NULL),
(12045, 'MC1097953', 'Roberto Matos', '6809 MAIN STREET UNIT #33\nCINCINNATI, OH 45244 ', '786-479-6417', '', '', '', 'no-answer', '2022-07-18 10:20:56.000000', 1, '', 1, NULL),
(12046, 'MC56284', 'Roop Transport Inc', '480 Cloverdale Ave\nCincinnati, OH 45246-2244 ', '937-952-4000', 'kiranjeet', '3', 'rooptransportinc@gmail.com', 'no-answer', '2022-07-18 10:22:06.000000', 1, 'Spanish', 1, NULL),
(12047, 'MC1025819', 'SAMCITY EXPRESS INC', '\n4012 SHARON PARK LN\nCINCINNATI, OH 45241', '513-850-6090', 'Ismatillo', '2', 'Samcity.xp@gmail.com', 'said-no', '2022-07-18 10:23:00.000000', 1, '', 1, NULL),
(12048, 'MC1167379', 'SDR LOGISTICS LLC', '2416 OAKTREE PLACE\nCINCINNATI, OH 45238', '513-501-7730', 'Jonathan Johnson', '3', 'jayvianao7@gmail.com', 'said-no', '2022-07-18 10:24:04.000000', 1, '', 1, NULL),
(12049, 'MC47580', 'SG Transport', '\n410 McClelland Avenue\nCincinnati, OH 45217', '956-237-7955', 'Salvador Gonzalez', '2', '', 'said-no', '2022-07-18 10:25:03.000000', 1, '', 1, NULL),
(12050, 'MC1033395', 'Sal Transportation Company', '5413 Bluesky Dr Apt 8\nCincinnati, OH 45247-7890', '513-827-2985', 'Salwan Marouki', '3', 'salwanmarouki@gmail.com', 'said-no', '2022-07-18 10:25:48.000000', 1, '', 1, NULL),
(12051, 'MC7606', 'Sam-B Logistics Transportation Ltd', '2611 Pancoast Avenue\nCincinnati, OH 45211', '513-212-2721', 'Diallo Moussa', '1', 'sambodiall@ymail.com', 'maybe', '2022-07-18 10:54:59.000000', 1, 'May start in the beginning of August', 1, NULL),
(12052, 'MC1274539', 'Samangy Express LLC', '11100 HANOVER RD APT E\nCINCINNATI, OH 45240', '513-550-5422', 'Samuel Akoto B', '1', 'samangyexpress@gmail.com', 'said-no', '2022-07-18 10:59:03.000000', 1, '', 1, NULL),
(12053, 'MC922791', 'Stay Da Path Trucking Llc', '764 Stonebridge Dr\nCincinnati, OH 45233-4859', '513-306-8501', 'Shearod Patterson', '1', 'staydapathtrucking@yahoo.com', 'no-answer', '2022-07-18 10:59:55.000000', 1, '', 1, NULL),
(12054, 'MC1174006', 'Truckloads Express LLC', '2850 LAFUEILLE AVENUE # 2\nCINCINNATI, OH 45211', '513-435-9440', 'Donita Beavers', '1', 'TRUCKLOADS.EXPRESS@GMX.COM', 'said-no', '2022-07-18 11:00:57.000000', 1, '', 1, NULL),
(12055, 'MC1289849', 'V & R Group LLC', '11882 Reading Road\nCincinnati, OH 45241', '513-377-2672', 'AMIT', '2', 'VRGROUP802@GMAIL.COM', 'no-answer', '2022-07-18 11:01:22.000000', 1, '', 1, NULL),
(12056, 'MC181456', 'Vista Express Inc', '5675 HICKORY PLACE DR\nCINCINNATI, OH 45247', '513-808-4835', 'Jason', '2', 'Jason@VistaExp.com', 'said-no', '2022-07-18 11:22:33.000000', 1, 'Broker', 1, NULL),
(12057, 'MC1191186', 'WEST CHESTER GLOBAL LOGISTICS LLC', '7129 MAYFIELD AVE\nCINCINNATI, OH 45243', '347-947-0054', 'sidi baba', '1', 'westchesterglobal.love@gmail.com', 'said-no', '2022-07-18 11:23:32.000000', 1, '', 1, NULL),
(12058, 'MC1143017', 'WINNERS TRANSPORTATION INC', '8033 PEACOCK DR\nCINCINNATI, OH 45239', '513-518-4127', '', '', '', 'no-answer', '2022-07-18 11:24:16.000000', 1, '', 1, NULL),
(12059, 'MC1006954', 'WISE GUYS EXPRESS LLC', '6302 GERSHOM AVE\nCINCINNATI, OH 45224', '513-404-1224', 'Michael B Wise', '2', 'mike@wiseguyspros.com', 'said-no', '2022-07-18 11:25:11.000000', 1, '', 1, NULL),
(12060, 'MC1173864', 'Z LINERS LLC', '\n611 LOWELL AVE APT 12\nCincinnati, OH 45220', '513-596-2160', 'Zein', '3', '', 'said-no', '2022-07-18 11:25:44.000000', 1, '', 1, NULL),
(12061, 'MC1163644', 'ZN786 LLC', '12101 Midpines Drive Apt\nCincinnati, OH 45241', '513-808-3677', 'ZAVKIDDIN', '3', 'Zn786llc@gmail.com', 'said-no', '2022-07-18 11:26:48.000000', 1, 'number not active', 1, NULL),
(12062, 'MC175263', 'Wyatt Specialties Inc', '\n4761 State Route 361\nCircleville, OH 43113-9736', '614-989-5362', 'Deborah Anne Wyatt', '2', 'Deborah.wyattspecialties@gmail.com', 'said-no', '2022-07-18 11:27:35.000000', 1, '', 1, NULL),
(12063, 'MC722860', 'A & O Trucking Llc', '11305 Fortune Ave\nCleveland, OH 44111-4737', '216-688-0086', 'Omayra', '2', 'aandotrucking@me.com', 'said-no', '2022-07-18 11:28:27.000000', 1, '', 1, NULL),
(12064, 'MC1375663', 'ARS Transportation Services', '\n850 EUCLID AVE #819#1685\nCLEVELAND, OH 44114', '513-413-4770', 'Sandy Foster', '1', 'Sandy.foster@arstransport.net', 'said-no', '2022-07-18 11:29:20.000000', 1, '', 1, NULL),
(12065, 'MC1277396', 'ATM GROUP LOGISTICS LLC', '2200 NATCHEZ AVE\nCLEVELAND, OH 44109-4723 ', '216-403-0931', 'Rafael Aquino', '1', 'Atmgr6up@gmail.com', 'said-no', '2022-07-18 11:30:07.000000', 1, '', 1, NULL),
(12066, 'MC35292', 'American Flag Express Inc', '14239 Triskett Rd Apt 103\nCleveland, OH 44111-2342', '832-869-3628', 'fnu Mansoor', '2', 'amflagex@gmail.com', 'no-answer', '2022-07-18 11:30:39.000000', 1, '', 1, NULL),
(12067, 'MC1357910', 'BAICAI EXCELLENCE LLC', '\n15304 PARKGROVE AVE\nCLEVELAND, OH 44110-1308', '216-815-5540', 'Natasha Moton', '2', 'baicaiexcellence@gmail.com', 'said-no', '2022-07-18 11:31:07.000000', 1, 'broker', 1, NULL),
(12068, 'MC1094505', 'Black Rabbit Logistics LLC', '6002 Bower Avenue\nCleveland, OH 44127', '216-308-3697', '', '', '', 'said-no', '2022-07-18 11:32:03.000000', 1, '', 1, NULL),
(12069, 'MC1222257', 'COLTRANE LOGISTICS AND TRUCKING LLC', '11459 MAYFIELD RD PMB 560 SUITE 560\nCleveland, OH 44016', '248-215-0660', '', '', '', 'no-answer', '2022-07-18 11:32:34.000000', 1, '', 1, NULL),
(12070, 'MC1166335', 'CULLINAN INC', '\n2150 W 117TH ST # 1004\nCLEVELAND, OH 44111 ', '917-436-6652', '', '', '', 'no-answer', '2022-07-18 11:33:42.000000', 1, '', 1, NULL),
(12071, 'MC27221', 'Cib Group Llc', '1706 E 38th St\nCleveland, OH 44114-4528', '216-633-9108', '', '', '', 'no-answer', '2022-07-18 11:34:22.000000', 1, '', 1, NULL),
(12072, 'MC1274831', 'D & M TRUCKING', '8800 Jeffries Avenue\nCleveland, OH 44105', '216-978-0647', 'Darrell Blanton', '', 'dmtrucking8@gmail.com', 'said-no', '2022-07-18 11:35:47.000000', 1, 'Dedicated route', 1, NULL),
(12073, 'MC989008', 'Dellriver Services Llc', '12412 Iowa Ave\nCleveland, OH 44108-1721', '216-214-2897', 'john broadway', '3', 'dellriverservices@gmail.com', 'said-no', '2022-07-18 11:36:35.000000', 1, '', 1, NULL),
(12074, 'MC584056', 'Emsyrom Express Inc', '10215 Adelaide Ave\nCleveland, OH 44111-1251', '216-939-9866', 'Aurelian Jdele', '2', 'emsyrom@yaho.com?', 'no-answer', '2022-07-18 11:37:15.000000', 1, '', 1, NULL),
(12075, 'MC1156768', 'I & E TRANSPORT LLC', '3338 LINCOLN AVE\nCLEVELAND, OH 44134-1229', '216-258-5594', 'Isaiah Martin', '1', 'Isaiahmartin.c@gmail.com', 'no-answer', '2022-07-18 11:38:09.000000', 1, '', 1, NULL),
(12076, 'MC107647', 'IRON WILL TRUCKING LLC', '16401 SUNNY GLENN AVE\nCLEVELAND, OH 44128', '216-894-5145', 'Carlita Miller', '2', 'IRONWILLTRUCKING@GMAIL.COM', 'no-answer', '2022-07-18 11:39:02.000000', 1, '', 1, NULL),
(12077, 'MC1414179', 'JAFERI LLC', '4235 W 222ND ST\nCLEVELAND, OH 44126', '216-356-2532', '', '', '', 'said-no', '2022-07-18 11:40:03.000000', 1, '', 1, NULL),
(12078, 'MC1218324', 'JOJO TRUCKING', '14140 TUCKAHOE AVE\nCLEVELAND, OH 44111', '216-314-3303', 'Amy hannum', '1', 'nafdetroit@gmail.com', 'said-no', '2022-07-18 11:40:48.000000', 1, '', 1, NULL),
(12079, 'MC104359', 'Jan Transportation Inc', '14219 Triskett Rd Apt 203D\nCleveland, OH 44111-2350', '972-343-8470', 'Latif Jan', '1', '', 'said-no', '2022-07-18 11:42:16.000000', 1, '', 1, NULL),
(12080, 'MC1354812', 'NIVA TRUCKING INC', '600 SUPERIOR AVE E STE 1300\nCLEVELAND, OH 44114', '786-909-7400', '', '', '', 'said-no', '2022-07-18 11:42:59.000000', 1, '', 1, NULL),
(12081, 'MC1324058', 'OSYO EXPRESS LLC', '\n3100 E 45TH ST STE 234\nCLEVELAND, OH 44127', '917-889-0149', 'Omar Say', '2', 'osyoexpress@gmail.com', 'said-no', '2022-07-18 11:44:34.000000', 1, '', 1, NULL),
(12082, 'MC1162078', 'PARALLAX LOGISTICAL SOLUTIONS', '3701 WEST BLVD\nCLEVELAND, OH 44111', '440-514-8838', 'Jobanjeet Bambrah', '1', 'parallaxdispatch@gmail.com', 'said-no', '2022-07-18 11:45:19.000000', 1, '', 1, NULL),
(12083, 'MC1287559', 'POINTA LOGISTICS LLC', '850 EUCLID AVE #819 #1448\nCLEVELAND, OH 44114', '646-818-5124', 'Aziz Haydarov', '2', 'pointalogistic@gmail.com', 'no-answer', '2022-07-18 12:06:25.000000', 1, '', 1, NULL),
(12084, 'MC1234966', 'Preet Trans Llc', '5556 Broadview Road APT 3425\nCleveland, OH 44134', '216-337-7237', 'Harinder', '2', '', 'said-no', '2022-07-18 12:07:22.000000', 1, '', 1, NULL),
(12085, 'MC1129829', 'RIOS TRUCKING LLC', '3059 W 111TH ST\nCLEVELAND, OH 44111', '216-526-1604', 'RAFAEL RIOS', '1', 'RIOS.TRUCKING23@GMAIL.COM', 'said-no', '2022-07-18 12:08:53.000000', 1, '', 1, NULL),
(12086, 'MC1164199', 'ROADSTAR TRANSPORT LLC', '11916 MARNE AVE\nCLEVELAND, OH 44111-4650', '440-623-9944', '', '', '', 'no-answer', '2022-07-18 12:10:04.000000', 1, '', 1, NULL),
(12087, 'MC1273482', 'ROCK PORT TRANSPORT LLC', '4118 BUSH AVE\nCLEVELAND, OH 44109-5902 ', '216-855-1445', 'freddie montanez jr', '2', 'dispatch@rockportransport.com', 'no-answer', '2022-07-18 12:11:02.000000', 1, '', 1, NULL),
(12088, 'MC1239772', 'RSW LOGISTICS INC', '12612 EMERY AVE\nCLEVELAND, OH 44135-2246', '814-737-7556', 'Ramon Mendez', '1', 'Mayinbass40@hotmail.com', 'said-no', '2022-07-18 12:21:17.000000', 1, 'Number not in service', 1, NULL),
(12089, 'MC78861', 'Steel on Steel Transportation LLC', '12608 Crossburn Ave\nCleveland, OH 44135-3721', '216-210-6623', 'Abdullah Yusuf', '1', 'josephthomas1960@outlook.com', 'said-no', '2022-07-18 12:21:50.000000', 1, 'Not in service', 1, NULL),
(12090, 'MC73413', 'Sto Inc', '7085 Ravenswood Dr\nCleveland, OH 44129-6267 ', '216-255-7443', 'Bogdan', '1', 'nolimittwome@gmail.com', 'no-answer', '2022-07-18 12:22:52.000000', 1, '', 1, NULL),
(12091, 'MC1161791', 'TMV EXPRESS LLC', '7611 CROSSLINE DR\nCLEVELAND, OH 44134', '440-907-1755', 'ILONA STEFANOVYCH', '1', 'ilonatmvexpress@gmail.com', 'said-no', '2022-07-18 12:23:42.000000', 1, '', 1, NULL),
(12092, 'MC58274', '2mj Logistics Llc', '\n1175 Lockwood Rd\nColumbus, OH 43227-1430', '614-969-9272', 'Munewor Jalalle', '2', '2mjllc@gmail.com?', 'said-no', '2022-07-18 12:24:08.000000', 1, 'broker', 1, NULL),
(12093, 'MC804460', 'ADI SERVICES LLC', '4568 ARAGON AVE\nCOLUMBUS, OH 43227', '614-638-4670', 'Amadou Diallo', '2', 'contactadi98@gmail.com', 'maybe', '2022-07-18 12:28:30.000000', 1, 'Sent email', 1, NULL),
(12094, 'MC111039', 'AH TRANSIT LLC', '2391 CLYBOURNE RD APT M\nCOLUMBUS, OH 43231', '614-674-9788', 'AHMED HUSSEIN', '1', '', 'said-no', '2022-07-18 12:29:21.000000', 1, '', 1, NULL),
(12095, 'MC1247420', 'AMERISOM TRUCKING LLC', '\n2600 TILLER LN STE A\nCOLUMBUS, OH 43231', '614-446-9304', '', '', '', 'said-no', '2022-07-18 12:30:12.000000', 1, '', 1, NULL),
(12096, 'MC1129273', 'AMF Trucking LLC', '2674 HAIG PT\nColumbus, OH 43219-3183 ', '614-377-0951', '', '', '', 'no-answer', '2022-07-18 12:31:08.000000', 1, '', 1, NULL),
(12097, 'MC850206', 'ARN TRANSPORTATION LLC', '4331 BENCH CT\nCOLUMBUS, OH 43230', '740-274-8486', 'Abdullahi', '4', 'arafow@gmail.com', 'no-answer', '2022-07-18 12:38:18.000000', 1, '', 1, NULL),
(12098, 'MC1185922', 'ART EXPRESS LOGISTICS INC.', '1201 DUBLIN RD UNIT 618\nCOLUMBUS, OH 43215', '929-271-3795', 'Otabek Rajabov', '3', 'office@artteam1.com', 'no-answer', '2022-07-18 12:47:15.000000', 1, '', 1, NULL),
(12099, 'MC1366578', 'ASAL TRUCKING LLC', '3315 MONMOUTH DR\nCOLUMBUS, OH 43219', '614-625-2740', '', '', '', 'no-answer', '2022-07-18 12:48:58.000000', 1, '', 1, NULL),
(12100, 'MC1037705', 'ASH TRUCKING LLC', '\n1651 ALONA DR APT 6\nCOLUMBUS, OH 43224 ', '614-420-5412', 'Ash M Biswa', '2', 'biswaash6@gmail.com', 'said-no', '2022-07-18 12:50:01.000000', 1, '', 1, NULL),
(12101, 'MC961514', 'Adal Transport Llc', '\n2486 Nissi Dr\nColumbus, OH 43219-6051', '614-260-7492', 'Abdirizak warsame', '2', 'Adaltransport@gmail.com', 'no-answer', '2022-07-18 12:50:58.000000', 1, '', 1, NULL),
(12102, 'MC1041363', 'Ag Freight Llc', '\n4081 Silver Springs Ln\nColumbus, OH 43230-9868', '619-315-1807', 'Ahmed Ahmed', '1', 'agfreight@outlook.com', 'no-answer', '2022-07-18 13:12:13.000000', 1, '', 1, NULL),
(12103, 'MC779629', 'Ahy Trucking', '1933 E Dublin Granville Rd #181\nColumbus, OH 43229', '503-997-8959', 'Hassan Abdi', '', 'koraxpress@gmail.com', 'said-no', '2022-07-18 13:13:19.000000', 1, '', 1, NULL),
(12104, 'MC77449', 'Ajab Trucking LLC', '1929 Forest Cedar Ct\nColumbus, OH 43229-3796', '614-746-8444', 'Dahir Hayle', '3', 'ajabtruck@gmail.com', 'no-answer', '2022-07-18 13:14:09.000000', 1, '', 1, NULL),
(12105, 'MC70545', 'Allstate Logistics Llc', '\n3552 Providence Glen Dr\nColumbus, OH 43219-6049', '216-280-8877', 'Abdinasir', '1', 'Allstatellc1@gmail.com', 'no-answer', '2022-07-18 13:15:36.000000', 1, '', 1, NULL),
(12106, 'MC741467', 'Areella Transport Llc', '5821 Lou St\nColumbus, OH 43231-2908', '614-804-3577', 'Ali', '2', 'afran614@gmail.com', 'no-answer', '2022-07-18 13:16:38.000000', 1, '', 1, NULL),
(12107, 'MC896567', 'Asm Transportation Llc', '4685 Clare Drive\nColumbus, OH 43228', '614-260-1633', 'Hassan Ali', '', 'asmtransportationllc@gmail.com', 'no-answer', '2022-07-18 13:17:59.000000', 1, '', 1, NULL),
(12108, 'MC54212', 'Atlantic Transport Llc', '2477 Adonai Blvd\nColumbus, OH 43219-6055', '571-315-8833', 'Abdifatah Fardalla', '3', 'Atlantictransportllc@gmail.com', 'no-answer', '2022-07-18 13:18:36.000000', 1, '', 1, NULL),
(12109, 'MC1108725', 'BASIMA LOGISTICS & SUPPLY CHAIN SOLUTIONS INC', '4449 EASTON WAY SUITE 200\nCOLUMBUS, OH 43219', '614-254-9445', '', '2', '', 'said-no', '2022-07-18 13:19:08.000000', 1, 'Not in service', 1, NULL),
(12110, 'MC885457', 'BCL', '4389 Thornapple Cir W\nColumbus, OH 43231-6146 ', '614-772-2781', 'Aziz mohamed Anod', '10', 'anod750@gmail.com', 'no-answer', '2022-07-18 13:20:43.000000', 1, '', 1, NULL),
(12111, 'MC1197017', 'BLACK TRUCKING USA LLC', '4687 GLENDON RD\nCOLUMBUS, OH 43229', '614-439-3266', '', '', '', 'no-answer', '2022-07-18 13:21:59.000000', 1, '', 1, NULL),
(12112, 'MC1130387', 'BSH TRANSPORT LLC', '2176 AGLER RD APT 2C\nCOLUMBUS, OH 43224', '614-972-0438', 'Abdijamal Jama', '2', 'Bshtransportllc@gmail.com', 'no-answer', '2022-07-18 15:39:15.000000', 1, '', 1, NULL),
(12113, 'MC61841', 'Bay & Bakol Transportation Llc', '5419 Ravine Bluff Ct\nColumbus, OH 43231-6704 ', '614-687-9857', 'abdi Karim', '1', 'BAYBAKOL2020@GMAIL.COM', 'no-answer', '2022-07-18 15:40:07.000000', 1, '', 1, NULL),
(12114, 'MC1123132', 'Beeline Xpress LLC', '1172 Rockwood Pl\nColumbus, OH 43229', '614-381-1560', 'Moctar Yagi', '2', 'beelinexpress227@gmail.com', 'no-answer', '2022-07-18 15:41:50.000000', 1, '', 1, NULL),
(12115, 'MC917668', 'Blue Star Carrier Llc', '2425 East Hanna Avenue\nColumbus, OH 46227', '310-954-7987', 'HUSSEIN NUR', '1', 'bluestarcarrier1@gmail.com', 'no-answer', '2022-07-18 15:43:15.000000', 1, '', 1, NULL),
(12116, 'MC865357', 'Boocle Transport Llc', '\n3032 Cumberland Woods Dr\nColumbus, OH 43219-1677', '614-747-6214', 'hassan mohamed', '2', 'boocletransport@hotmail.com', 'said-no', '2022-07-18 15:44:17.000000', 1, '', 1, NULL),
(12117, 'MC101181', 'Brooklyn Express Trucking Llc', '320 S Grener Ave Apt C5\nColumbus, OH 43228-1970', '201-878-0547', 'Yonas', '2', 'Brooklynexpress01@gmail.com', 'no-answer', '2022-07-18 15:45:08.000000', 1, '', 1, NULL),
(12118, 'MC1019518', 'COAST TO COAST TRANSIT LLC', '5030 ALPHA CT\nCOLUMBUS, OH 43231', '614-598-4183', '', '', '', 'said-no', '2022-07-18 15:47:17.000000', 1, 'not going through', 1, NULL),
(12119, 'MC1376517', 'COLER TRUCKING LTD', '5631 SELBY CT\nCOLUMBUS, OH 43085-3637', '614-316-7913', 'Shaveh Williams', '', 'colertruckingltd@outlook.com?', 'no-answer', '2022-07-18 15:47:52.000000', 1, '', 1, NULL),
(12120, 'MC102712', 'Cam Transport LLC', '5296 Tamarack Circle East Apt A\nColumbus, OH 43229', '614-965-5349', 'ABDIRASHID', '1', 'CAMTRANSPORT02@GMAIL.COM', 'said-no', '2022-07-18 15:48:51.000000', 1, '', 1, NULL),
(12121, 'MC975938', 'Central Ohio Transit Llc', '5391 Harvestwood Lane\nColumbus, OH 43230', '614-377-8404', 'sharmake', '4', 'centralohiotransit@gmail.com', 'said-no', '2022-07-18 15:50:07.000000', 1, 'not going through', 1, NULL),
(12122, 'MC54187', 'D & C Services Of Ohio Llc', '4881 Songbird Dr\nColumbus, OH 43229-5629', '614-668-9411', 'Demetrius R Dyer', '1', 'dcservicesofohio@gmail.com', 'maybe', '2022-07-18 15:53:39.000000', 1, 'Call back on July 19th', 1, NULL),
(12123, 'MC67808', 'D & H Transportation Llc', '\n2730 Arbury Ct\nColumbus, OH 43224', '614-843-0278', 'Abdifitah Hashi', '1', 'dhtransportation3@gmail.com', 'said-no', '2022-07-18 15:55:05.000000', 1, '', 1, NULL),
(12124, 'MC1236415', 'DC EXPRESS TRANSPORT LLC', '4767 KINGSHILL DR APT H\nCOLUMBUS, OH 43229', '614-929-9388', 'Mohamed Ali', '2', 'Dcexpresstransport614@gmail.com', 'no-answer', '2022-07-18 15:56:23.000000', 1, '', 1, NULL),
(12125, 'MC1207911', 'DG LOGISTICS II LLC', '1396 CROSS CREEK DRIVE APT K\nCOLUMBUS, OH 43204', '646-752-7769', 'Jose Diaz', '1', 'Dglogisticsllllc@gmail.com?', 'no-answer', '2022-07-18 15:57:35.000000', 1, '', 1, NULL),
(12126, 'MC1316440', 'DOVE TRANSPORT LLC', '5760 MILLBANK RD APT D\nCOLUMBUS, OH 43229 ', '407-341-0180', 'Mohamed Amir', '2', 'Dovetransport21@gmail.com', 'said-no', '2022-07-18 15:58:23.000000', 1, '', 1, NULL),
(12127, 'MC83211', 'Dable Express Llc', '3925 Cypress Club Way\nColumbus, OH 43219-3196', '617-756-3193', 'ABDUL-KADIR CALI', '3', 'Dableexpress@gmail.com', 'no-answer', '2022-07-18 15:59:21.000000', 1, '', 1, NULL),
(12128, 'MC95643', 'Dahir Transport Llc', '4002 Migration Ln\nColumbus, OH 43230-9890', '614-769-1248', 'Hussein Dahir', '2', 'dahirtransportllc@gmail.com', 'waiting-call', '2022-06-28 06:16:44.566622', 0, NULL, 5, NULL),
(12129, 'MC773955', 'Dantac Transportation Llc', '3562 Emery Club Way\nColumbus, OH 43219-3158', '614-495-7066', 'jama mohamed', '7', 'dantac79@gmail.com', 'waiting-call', '2022-06-28 06:16:44.578192', 0, NULL, 5, NULL),
(12130, 'MC1343038', 'Deliverex Logistics LLC', '4880 Sinclair Rd\nColumbus, OH 43229-5406', '614-778-6569', '', '', '', 'waiting-call', '2022-06-28 06:16:44.590038', 0, NULL, 5, NULL),
(12131, 'MC1031357', 'Delta Freight Llc', '\n4082 Domain Dr 43230\nColumbus, OH 43230-8496', '775-470-4227', 'Delta freight llc', '1', 'Deltafreight67@gmail.com', 'waiting-call', '2022-06-28 06:16:44.601871', 0, NULL, 5, NULL),
(12132, 'MC82599', 'Divine Logistics LLC', '5536 Runnymede Ln\nColumbus, OH 43228-4561', '614-680-7575', 'SUNDAY ONOJA', '1', 'SUNKYBRIGHT@YAHOO.COM', 'waiting-call', '2022-06-28 06:16:44.614668', 0, NULL, 5, NULL),
(12133, 'MC745029', 'Dubows Llc', '1391 W 5th Ave 310\nColumbus, OH 43212-2902', '614-804-9210', 'Abdikadir Ahmed', '2', 'Dubowsllc@gmail.com', 'waiting-call', '2022-06-28 06:16:44.640178', 0, NULL, 5, NULL),
(12134, 'MC1196005', 'EAGLE EXPRESS SERVICE LLC', '3789 SUNBURST DR\nCOLUMBUS, OH 43207', '614-657-8923', 'Dallas L Scott', '1', 'scottsrehabnrepairs@gmail.com', 'waiting-call', '2022-06-28 06:16:44.651032', 0, NULL, 5, NULL),
(12135, 'MC1137291', 'EAGLE EYE TRUCKING LLC', '5568 Cartwright Lane\nColumbus, OH 43231', '614-286-1187', 'Rachid lazreg', '2', 'Eagleeyetrucking2920@yahoo.com', 'waiting-call', '2022-06-28 06:16:44.665487', 0, NULL, 5, NULL),
(12136, 'MC1145400', 'Elite Trans Training LLP', '\n7856 CROSSOVER BLVD\nColumbus, OH 43235', '614-749-6718', '', '', '', 'waiting-call', '2022-06-28 06:16:44.684204', 0, NULL, 5, NULL),
(12137, 'MC53092', 'Ely Express Llc', '4223 Nafzger Dr\nColumbus, OH 43230-8455', '614-598-8546', 'Elyas salaad', '2', 'ElyExpressLLC@gmail.com', 'waiting-call', '2022-06-28 06:16:44.746330', 0, NULL, 5, NULL),
(12138, 'MC958974', 'FBF TRANS LLC', '10501 Landing Way Unit 325\nMiamisburg, OH 45342', '770-800-7707', 'Fred', '1', 'milelogigroup@gmail.com', 'waiting-call', '2022-06-28 06:16:44.783617', 0, NULL, 5, NULL),
(12139, 'MC1236576', 'FG TRANSIT LLC', '2511 LOGGERS RUN CT\nCOLUMBUS, OH 43235', '515-380-5393', 'Zarizo', '2', 'bjonas2@icloud.com', 'waiting-call', '2022-06-28 06:16:44.820406', 0, NULL, 5, NULL),
(12140, 'MC1158565', 'FIRST CHOICE FREIGHT LLC', '\n4867 HOLLYBRIAR CT\nCOLUMBUS, OH 43228', '614-625-6065', 'Dominic Nebbergall', '2', 'firstchoicefreightdn@gmail.com', 'waiting-call', '2022-06-28 06:16:44.858434', 0, NULL, 5, NULL),
(12141, 'MC140821', 'FRESH START DELIVERY SERVICES LLC', '6536 CENTENNIAL DR\nCOLUMBUS, OH 43068', '614-815-0662', '', '', '', 'waiting-call', '2022-06-28 06:16:44.895174', 0, NULL, 5, NULL),
(12142, 'MC1243824', 'GKX Transport LLC', '2615 Steiner House\nColumbus, OH 43219', '717-557-3444', 'MOHAMED SANKUS', '2', 'gkxtransportllc@gmail.com', 'waiting-call', '2022-06-28 06:16:44.906659', 0, NULL, 5, NULL),
(12143, 'MC1063314', 'GORILLA GOON TRUCKING L.L.C.', '470 W BROAD ST #1024\nCOLUMBUS, OH 43215', '347-458-1010', 'Tyler briggs', '', 'Tyler@gorillagtrucking.com', 'waiting-call', '2022-06-28 06:16:44.919698', 0, NULL, 5, NULL),
(12144, 'MC1326409', 'GRANGER FAMILY TRANSPORTATION LLC', '2985 CHANTE CT\nCOLUMBUS, OH 43219', '614-674-0917', '', '', '', 'waiting-call', '2022-06-28 06:16:44.931045', 0, NULL, 5, NULL),
(12145, 'MC945231', 'GURAYA AUTO TRANSPORT LLC', '3224 SUMMERHILL LANE\nCOLUMBUS, OH 43221', '614-940-3540', '', '', '', 'waiting-call', '2022-06-28 06:16:44.943532', 0, NULL, 5, NULL),
(12146, 'MC1341231', 'Gateway Transport LLC', '6144 Deewood Loop E\nColumbus, OH 43229 ', '615-720-4144', 'Abdiwali Sheikh', '1', 'gatewaytransport21@gmail.com', 'waiting-call', '2022-06-28 06:16:44.955292', 0, NULL, 5, NULL),
(12147, 'MC1156609', 'Gunbe Transportation LLC', '3788 Cypress Club Way\nColumbus, OH 43219', '667-701-9062', 'Ibrahim Abubakar', '1', 'gunbetransportation@gmail.com', 'waiting-call', '2022-06-28 06:16:44.967041', 0, NULL, 5, NULL),
(12148, 'MC1036634', 'H & F Transport Llc', '421 Knob Hl E\nColumbus, OH 43228-2429', '614-806-0853', 'Abdi Abdi', '1', 'handftransport@gmail.com', 'waiting-call', '2022-06-28 06:16:44.979965', 0, NULL, 5, NULL),
(12149, 'MC1111300', 'HSS Transportation Llc', '1933 E DUBLIN GRANVILLE RD STE 210\nCOLUMBUS, OH 43229-3508', '701-630-9500', '', '', '', 'waiting-call', '2022-06-28 06:16:44.991626', 0, NULL, 5, NULL),
(12150, 'MC91336', 'HAZ Logistics Llc', '2511 Goldengate Sq N Apt G\nColumbus, OH 43224-1640', '619-564-1246', '', '', '', 'waiting-call', '2022-06-28 06:16:45.004643', 0, NULL, 5, NULL),
(12151, 'MC1127870', 'Higlo Trucking LLC', '2349 KILBOURNE AVE\nCOLUMBUS, OH 43229 ', '614-323-2124', 'koronto', '1', 'uurdoox82@gmail.com', 'waiting-call', '2022-06-28 06:16:45.017317', 0, NULL, 5, NULL),
(12152, 'MC812476', 'Hilaac Transportation Inc', '3214 Turner Ct\nColumbus, OH 43219-3258 ', '614-804-0040', 'Liban Ali', '', 'hilaactransportation@gmail.com?', 'waiting-call', '2022-06-28 06:16:45.029524', 0, NULL, 5, NULL),
(12153, 'MC89081', 'Hujo Trucking Llc', '3272 Agape Dr\nColumbus, OH 43224-3776', '614-531-5547', 'Mahamad diriye', '2', 'Hujotrucking@gmail.com', 'waiting-call', '2022-06-28 06:16:45.050419', 0, NULL, 5, NULL),
(12154, 'MC1087068', 'Hutchins Logistics Of Columbus Llc', '\n3027 Briar Ridge Rd\nColumbus, OH 43232-5690 ', '614-603-3047', 'Jerry Hutchins', '1', 'Jerryhutchinssr@gmail.com', 'waiting-call', '2022-06-28 06:16:45.062094', 0, NULL, 5, NULL),
(12155, 'MC1304736', 'IDS LOGISTICS INC', '1626 Zettler Road\nColumbus, OH 43227', '614-260-490', 'CATHY NORRIS', '2', 'INDUSTRIALDELIVERYSERVICE@GMAIL.COM', 'waiting-call', '2022-06-28 06:16:45.075132', 0, NULL, 5, NULL),
(12156, 'MC28655', 'Iman Transportation Llc', '3264 Imani Dr\nColumbus, OH 43224-3764', '615-686-5405', 'Abdirizak Hassan Muhumud', '1', '1imantransportation@gmail.com', 'waiting-call', '2022-06-28 06:16:45.086968', 0, NULL, 5, NULL),
(12157, 'MC1009015', 'Imi Express Llc', '1707 Shanley Drive APT 2\nColumbus, OH 43224', '517-944-0784', 'Idris ismail', '2', 'Imiexpress51@gmail.com', 'waiting-call', '2022-06-28 06:16:45.100673', 0, NULL, 5, NULL),
(12158, 'MC486485', 'Intransit Logistics', '2527 Broadleaf Ct\nColumbus, OH 43224-3001', '614-804-1058', 'ADAN', '2', 'sanyarea@gmail.com', 'waiting-call', '2022-06-28 06:16:45.119727', 0, NULL, 5, NULL),
(12159, 'MC759274', 'Itruck Logistics Llc', '1095 Irongate Ln Apt H\nColumbus, OH 43213-325', '734-883-6913', 'Teferi Feyisa', '1', 'itruckllc@gmail.com', 'waiting-call', '2022-06-28 06:16:45.432446', 0, NULL, 5, NULL),
(12160, 'MC1134516', 'Johnston Transportation LLC', '\n954 S EUREKA AVE\nCOLUMBUS, OH 43204', '614-774-2885', 'Russell', '1', '', 'waiting-call', '2022-06-28 06:16:45.458792', 0, NULL, 5, NULL),
(12161, 'MC1075308', 'K and Z Logistics LLC', '676 East Starr Avenue\nColumbus, OH 43201', '203-543-3819', 'Tageldin Banaga', '2', 'kandzlogistic@gmail.com', 'waiting-call', '2022-06-28 06:16:45.483480', 0, NULL, 5, NULL),
(12162, 'MC850878', 'KDH Expedited', '2488 Adonai Boulevard\nColumbus, OH 43219', '614-597-6055', 'Mohamed Dirir', '2', 'kdhexpedited@gmail.com', 'waiting-call', '2022-06-28 06:16:45.495500', 0, NULL, 5, NULL),
(12163, 'MC1082916', 'Kaph Transportation Llc', '3166 Zach Ct\nColumbus, OH 43219-5013', '614-641-8389', 'Philip Kamara', '1', 'kaphtransportation@gmail.com', 'waiting-call', '2022-06-28 06:16:45.508333', 0, NULL, 5, NULL),
(12164, 'MC739617', 'Kess Trucking', '1831 Laylon Dr\nColumbus, OH 43229-1419', '614-747-6384', 'Kesson Gunbo', '', 'kesstrucking@yahoo.com', 'waiting-call', '2022-06-28 06:16:45.520061', 0, NULL, 5, NULL),
(12165, 'MC958382', 'Kilimanjaro Llc', '\n3807 Sunrise Lake Cir\nColumbus, OH 43219-7303 ', '615-944-8285', '', '10', '', 'waiting-call', '2022-06-28 06:16:45.534816', 0, NULL, 5, NULL),
(12166, 'MC1212515', 'Kis Mayo Transportation LLC', '1884 Sharbot Drive\nColumbus, OH 43229', '614-815-4059', 'Gurhan', '1', 'kismayo45llc@gmail.com', 'waiting-call', '2022-06-28 06:16:45.546890', 0, NULL, 5, NULL);
INSERT INTO `va2pow` (`cid`, `s_mc_number`, `s_company_name`, `street_address`, `s_phone_number`, `client_name`, `pow`, `s_email`, `s_status`, `last_changed`, `times_called`, `status_comments`, `con_digit`, `voice_mail`) VALUES
(12167, 'MC944467', 'Kyl Logistics Llc', '\n4074 Migration Ln\nColumbus, OH 43230-7827', '206-307-6355', 'Yusu', '5', 'Kyllogistics@gmail.com', 'waiting-call', '2022-06-28 06:16:45.571055', 0, NULL, 5, NULL),
(12168, 'MC1293178', 'LEGENDS TRANS LLC', '808 FRANK RD\nCOLUMBUS, OH 43223 ', '614-805-0500', 'sahal jama', '3', 'legendstruckinginc@gmail.com', 'waiting-call', '2022-06-28 06:16:45.597704', 0, NULL, 5, NULL),
(12169, 'MC1225374', 'LOCKETT TRUCKING AND TRANSPORT LLC', '100 E CAMPUS VIEW BLVD\nCOLUMBUS, OH 43235-4682', '614-432-2069', 'Jason T Lockett', '1', 'jason43229@yahoo.com', 'waiting-call', '2022-06-28 06:16:45.619230', 0, NULL, 5, NULL),
(12170, 'MC1186324', 'LOOP TRUCKING LLC', '\n4465 WREN TRCE\nCOLUMBUS, OH 43231', '614-600-0007', 'Adan husen', '2', 'Looptruckingllc@gmail.com', 'waiting-call', '2022-06-28 06:16:45.643860', 0, NULL, 5, NULL),
(12171, 'MC931376', 'Leumas Transportation Llc', '2389 Belcher Drive\nColumbus, OH 43224', '614-816-5683', '', '2', '', 'waiting-call', '2022-06-28 06:16:45.676880', 0, NULL, 5, NULL),
(12172, 'MC888464', 'Lidostar Express Llc', '4337 Knob Hl S\nColumbus, OH 43228-2431', '614-815-4486', 'MURIDI BAKARI', '1', 'lidostarexpress@gmail.com', 'waiting-call', '2022-06-28 06:16:45.689036', 0, NULL, 5, NULL),
(12173, 'MC1111969', 'Limo Trucking LLC', '4848 Charlton Court\nColumbus, OH 43229', '614-397-3413', 'Hashi', '1', 'Limotrucking@gmail.co', 'waiting-call', '2022-06-28 06:16:45.702474', 0, NULL, 5, NULL),
(12174, 'MC810655', 'LK Transport Llc', '2338 Antigua Dr APT-2B\nColumbus, OH 43235-6125', '315-447-0155', 'Yuliya Levandovski', '3', 'lk.transport@yahoo.com', 'waiting-call', '2022-06-28 06:16:45.734922', 0, NULL, 5, NULL),
(12175, 'MC1147305', 'Loaded Lion Trucking', '4937 Lyle Rd\nColumbus, OH 43229-5307', '614-732-7217', 'Raheem Farmer', '1', 'leoking28@gmail.com', 'waiting-call', '2022-06-28 06:16:45.750355', 0, NULL, 5, NULL),
(12176, 'MC905430', 'Lyg Transport Inc', '4501 Sullivant Ave Ste B10\nColumbus, OH 43228-4513', '614-772-4959', 'Ahmed Dahir', '6', 'lygtransport@gamail.com?', 'waiting-call', '2022-06-28 06:16:45.762029', 0, NULL, 5, NULL),
(12177, 'MC1086236', 'M&M EXPEDITING LLC', '\n4035 CARLTON AVE\nCOLUMBUS, OH 43227-3604', '614-245-5197', 'Lester Simpson', '2', 'Mnmexpediting@gmail.com', 'waiting-call', '2022-06-28 06:16:45.774765', 0, NULL, 5, NULL),
(12178, 'MC1188246', 'MAME LOGISTICS LLC', '2550 NISSI DR\nCOLUMBUS, OH 43219', '614-599-1947', '', '', '', 'waiting-call', '2022-06-28 06:16:45.820937', 0, NULL, 5, NULL),
(12179, 'MC1171967', 'MERCURY RECORDS LLC', '4204 Chesford Rd\nCOLUMBUS, OH 43224 ', '614-596-5455', 'Eric Vincent', '', 'Mercuryrecordsllc@gmail.com', 'waiting-call', '2022-06-28 06:16:45.868860', 0, NULL, 5, NULL),
(12180, 'MC1120576', 'MILEMART CORP INC', '4863 TATERSALL CT\nCOLUMBUS, OH 43230', '614-377-6867', '', '', '', 'waiting-call', '2022-06-28 06:16:45.912261', 0, NULL, 5, NULL),
(12181, 'MC1062924', 'MORE SIMPLE TRANSPORT LLC', '2408 NISSI DR\nCOLUMBUS, OH 43219', '614-980-4132', 'deq', '2', 'moresimpletransport@gmail.com', 'waiting-call', '2022-06-28 06:16:45.957382', 0, NULL, 5, NULL),
(12182, 'MC1291145', 'MWC TRANSPORTATION LLC', '3247 PLUM CREEK DR\nCOLUMBUS, OH 43219', '614-634-8566', '', '', '', 'waiting-call', '2022-06-28 06:16:46.002448', 0, NULL, 5, NULL),
(12183, 'MC1079720', 'MYA LOGISTICS LLC', '\n4085 CHELSEA SQUARE AVE APT 104\nCOLUMBUS, OH 43230', '216-773-2820', 'Mohamud Abdi', '2', 'myalogisticsllc@gmail.com', 'waiting-call', '2022-06-28 06:16:46.057204', 0, NULL, 5, NULL),
(12184, 'MC1027366', 'Madar Logistic Llc', '321 King Edward Ct E\nColumbus, OH 43228-2414', '206-451-3083', 'Mohamed Madar', '2', 'Madarlogisticllc@gmail.com', 'waiting-call', '2022-06-28 06:16:46.103630', 0, NULL, 5, NULL),
(12185, 'MC896775', 'Malabar Global Transportation Llc', '3792 Tanager Dr\nColumbus, OH 43230-1181', '614-596-4152', 'Hanif Ibrahim', '1', 'malabargt3@gmail.com', 'waiting-call', '2022-06-28 06:16:46.173280', 0, NULL, 5, NULL),
(12186, 'MC63193', 'Mideast Carrier LLC', '4325 Cricket Place\nColumbus, OH 43231', '801-915-0292', 'farhan', '1', 'abdile500@gmail.com', 'waiting-call', '2022-06-28 06:16:46.241079', 0, NULL, 5, NULL),
(12187, 'MC863926', 'Midway Carriers LLC', '\n3485 RED HOOK XING APT D\nCOLUMBUS, OH 43219', '773-934-1461', 'abdi m ahmed', '2', 'midwaycarriers@gmail.com', 'waiting-call', '2022-06-28 06:16:46.296722', 0, NULL, 5, NULL),
(12188, 'MC967116', 'Mohamed Mohamud Agt Of Wehliye Transport Llc', 'PO Box 29066\nColumbus, OH 43229-0066', '716-994-7066', 'MOHAMMED WEHELIE', '3', 'wtransport7@gmail.com', 'waiting-call', '2022-06-28 06:16:46.351330', 0, NULL, 5, NULL),
(12189, 'MC1001513', 'Moons & Son Trucking Llc', '5595 Beverly Hills Dr Apt D\nColumbus, OH 43213-6674', '614-743-4173', 'dawit debas', '1', 'dawit_debas@yahoo.com', 'waiting-call', '2022-06-28 06:16:46.404644', 0, NULL, 5, NULL),
(12190, 'MC951614', 'Mulki Logistics Llc', '3919 Cypress Club Way\nColumbus, OH 43219-3196', '206-434-8465', '', '', 'Mulkilogistics@gmail.com', 'waiting-call', '2022-06-28 06:16:46.518871', 0, NULL, 5, NULL),
(12191, 'MC994543', 'NABIL MOVEMENT LLC', '3296 WESTERVILLE RD\nCOLUMBUS, OH 43224', '614-300-8888', '', '', '', 'waiting-call', '2022-06-28 06:16:46.612202', 0, NULL, 5, NULL),
(12192, 'MC1315142', 'NCO Logistics Llc', '1201 DUBLIN RD\nCOLUMBUS, OH 43215 ', '720-768-2685', 'Michael Taylor', '2', 'm.taylor@ncologistics.com', 'waiting-call', '2022-06-28 06:16:46.814623', 0, NULL, 5, NULL),
(12193, 'MC96519', 'Naod Araya', '\n2734 Audubon Trail\nColumbus, OH 43231', '740-963-6852', 'yonas abrha', '2', 'sanoytransportoh@gmail.com', 'waiting-call', '2022-06-28 06:16:46.977151', 0, NULL, 5, NULL),
(12194, 'MC1150620', 'Natrona Logistics LLC', '1271 EDGEHILL ROAD UNIT C\nCOLUMBUS, OH 43212', '614-530-5271', '', '', '', 'waiting-call', '2022-06-28 06:16:47.124715', 0, NULL, 5, NULL),
(12195, 'MC39494', 'Normale LLC', '1374 Bay Club Cir\nColumbus, OH 43228-6448', '614-363-9268', 'Abdifetah', '1', 'Noormaale88@gmail.com', 'waiting-call', '2022-06-28 06:16:47.149391', 0, NULL, 5, NULL),
(12196, 'MC984844', 'Nuro Express Llc', '2586 Tiller Ln Ste 2A\nColumbus, OH 43231-2265 ', '614-805-7065', 'Ali Abdiwali', '2', 'nuroexpress@gmail.com', 'waiting-call', '2022-06-28 06:16:47.161071', 0, NULL, 5, NULL),
(12197, 'MC1143138', 'Ocean Trucking Service Unlimited LLC', '5367 Gracewood court\nColumbus, OH 43229', '614-500-0786', 'Farah Egal', '3', 'oceantruckingservice@gmail.com', 'waiting-call', '2022-06-28 06:16:47.172944', 0, NULL, 5, NULL),
(12198, 'MC64410', 'Ocean Express Llc', '3601 Amber Clb\nColumbus, OH 43219-3175 ', '614-815-1770', 'abdiqani', '3', 'khalif@oceanexpressllc.com', 'waiting-call', '2022-06-28 06:16:47.185787', 0, NULL, 5, NULL),
(12199, 'MC80311', 'Ocean Side Transportation Llc', '581 Station Rd Apt 5\nColumbus, OH 43228-2293', '202-674-9288', 'Ahmed hassan', '1', 'oceansidetransportationllc@gmail.com', 'waiting-call', '2022-06-28 06:16:47.197730', 0, NULL, 5, NULL),
(12200, 'MC137671', 'OFH Transport Llc', '1967 Oakland Park Ave Apt C\nColumbus, OH 43224-3638 ', '614-302-1795', 'omar', '1', '', 'waiting-call', '2022-06-28 06:16:47.218441', 0, NULL, 5, NULL),
(12201, 'MC111094', 'Oham Trucking Llc', '2479 Nissi Dr\nColumbus, OH 43219-6053', '614-208-7699', 'Abdulahi Mohamed', '7', 'ohamtrucking2@gmail.com', 'waiting-call', '2022-06-28 06:16:47.230709', 0, NULL, 5, NULL),
(12202, 'MC1162139', 'Omega 1 Logistics Inc', '6555 Busch Boulevard Ste 105\nColumbus, OH 43229', '614-828-7681', 'Robert Acheampong', '2', 'robach@omega1logistics.com', 'waiting-call', '2022-06-28 06:16:47.241902', 0, NULL, 5, NULL),
(12203, 'MC1370421', 'On The Move Trucking Llc', '849 West Rich Street\nColumbus, OH 43222', '614-607-0636', 'Daquan johnson', '1', 'Daquanjohnson586@gmail.com', 'waiting-call', '2022-06-28 06:16:47.254903', 0, NULL, 5, NULL),
(12204, 'MC1141561', 'PLATINUM FREIGHT LLC', '4889 SINCLAIR RD SUITE 205\nCOLUMBUS, OH 43229', '206-778-6919', 'ABDI MOHAMED', '3', 'PLATINUMFREIGHT20@GMAIL.COM', 'waiting-call', '2022-06-28 06:16:47.266991', 0, NULL, 5, NULL),
(12205, 'MC39646', 'PRODIGY TRANSPORT LLC', '5244 APPLEBAUGH ST UNIT 3C\nCOLUMBUS, OH 43016', '614-706-3919', 'Warsame Tahlil', '1', 'Prodigytransport@gmail.com', 'waiting-call', '2022-06-28 06:16:47.279628', 0, NULL, 5, NULL),
(12206, 'MC645100', 'Prince & Mary Transportation Llc', '\n2979 Chante Ct\nColumbus, OH 43219-3286', '614-270-7246', 'prince', '2', 'pmtransllc@gmail.com', 'waiting-call', '2022-06-28 06:16:47.291324', 0, NULL, 5, NULL),
(12207, 'MC1182399', 'ROADJET TRUCKING LLC', '4181 APPLELEAF DR\nCOLUMBUS, OH 43230 ', '651-302-4866', 'Abdulahi Mohammed', '3', 'Roadjettruckingllc@gmail.com', 'waiting-call', '2022-06-28 06:16:47.304175', 0, NULL, 5, NULL),
(12208, 'MC1094670', 'ROYAL CARRIER LLC', '\nPO BOX 248103\nCOLUMBUS, OH 43224-8103', '614-284-8701', 'HUSSEIN ABDI', '2', 'royalcarrier20@gmail.com', 'waiting-call', '2022-06-28 06:16:47.317178', 0, NULL, 5, NULL),
(12209, 'MC1132333', 'RTC EXPRESS LLC', '4405 FRANSHIRE S\nCOLUMBUS, OH 43228', '417-720-6619', '', '', '', 'waiting-call', '2022-06-28 06:16:47.328784', 0, NULL, 5, NULL),
(12210, 'MC874616', 'Red River Trucking Llc', '3663 Cypress Club Way\nColumbus, OH 43219-3193', '701-491-0739', 'mohamed nur', '2', 'redrivertruckingllc@gmail.com', 'waiting-call', '2022-06-28 06:16:47.341934', 0, NULL, 5, NULL),
(12211, 'MC1153536', 'Rio Transportation Llc', '4282 Goldengate Square West APT B\nColumbus, OH 43224', '206-384-5212', 'Hassan Noor', '1', 'riodispatch300@gmail.com', 'waiting-call', '2022-06-28 06:16:47.353626', 0, NULL, 5, NULL),
(12212, 'MC1009005', 'Road Ram Llc', '3762 Sunrise Lake Cir\nColumbus, OH 43219-7307', '909-272-7165', 'Abdirisaq', '2', 'Roadramllc19@gmail.com', 'waiting-call', '2022-06-28 06:16:47.367734', 0, NULL, 5, NULL),
(12213, 'MC4536', 'Road Shovels LLC', '\nP O BOX 248709\nCOLUMBUS, OH 43224', '858-585-1460', 'Abdi sofe', '2', '', 'waiting-call', '2022-06-28 06:16:47.378272', 0, NULL, 5, NULL),
(12214, 'MC1078970', 'SAFE DELIVERY TRANSPORTATION LLC', '\n4856 CHARLTON CT\nCOLUMBUS, OH 43229', '614-596-7356', 'Ishmael Laurence Bunoy', '1', 'sdtransportation20@gmail.com', 'waiting-call', '2022-06-28 06:16:47.390210', 0, NULL, 5, NULL),
(12215, 'MC1302602', 'SAHARA LOGISTICS LLC', '100 GRANTS LN W\nCOLUMBUS, OH 43228', '614-546-6449', 'AbdulQadir Said', '2', 'saharalogisticsllc1@gmail.com', 'waiting-call', '2022-06-28 06:16:47.403948', 0, NULL, 5, NULL),
(12216, 'MC855867', 'START TRANSPORTATION LLC', '2665 NORTHLAND PLAZA DR STE A\nCOLUMBUS, OH 43231', '614-772-2070', 'Mohamed', '2', 'starttransportation@gmail.com', 'waiting-call', '2022-06-28 06:16:47.419446', 0, NULL, 5, NULL),
(12217, 'MC57367', 'STATE LINE TRANSPORTATION LLC', '3584 EMERY CLUB WAY\nCOLUMBUS, OH 43219', '214-256-8643', 'ibrahim', '1', 'stateline118@gmail.com', 'waiting-call', '2022-06-28 06:16:47.436682', 0, NULL, 5, NULL),
(12218, 'MC105785', 'Safe Trip Transport Llc', 'PO Box 24435\nColumbus, OH 43224-0435', '614-632-3395', 'Mohamed Ali', '3', 'Safetriptransport18@gmail.com', 'waiting-call', '2022-06-28 06:16:47.448378', 0, NULL, 5, NULL),
(12219, 'MC1109183', 'Sesay Man Inc', '3129 PARKLANE AVE\nCOLUMBUS, OH 43231', '240-495-2779', 'AIZAH SESAY', '1', 'aizahs19@gmail.com', 'waiting-call', '2022-06-28 06:16:47.497800', 0, NULL, 5, NULL),
(12220, 'MC1001335', 'Sheraro Trucking Llc', '4395 Amalia Pl\nColumbus, OH 43227-1219', '443-453-8290', 'MEBRATU KASSA', '1', 'SHERARO2017@GMAIL.COM', 'waiting-call', '2022-06-28 06:16:47.522258', 0, NULL, 5, NULL),
(12221, 'MC838158', 'Shire Cargo Carrier Llc', '2863 Morality Drive\nColumbus, OH 43231', '614-477-2016', 'Mursal Jamal', '2', 'shirecargocarrier@gmail.com', 'waiting-call', '2022-06-28 06:16:47.534544', 0, NULL, 5, NULL),
(12222, 'MC934337', 'Simpl Transportation Services Inc', '20 S 3rd St Ste 210\nColumbus, OH 43215-4206', '740-901-1512', 'Mowlid Abdillahi', '2', 'simpltransport@gmail.com', 'waiting-call', '2022-06-28 06:16:47.544769', 0, NULL, 5, NULL),
(12223, 'MC1113485', 'Somex Transport LLC', '4350 Westport Road\nColumbus, OH 43228', '614-400-3503', 'Abdikhadar Nur', '2', 'Somextransport@gmail.com?', 'waiting-call', '2022-06-28 06:16:47.557793', 0, NULL, 5, NULL),
(12224, 'MC1155855', 'TAKAR LLC', '5891 Spring Rock Circle\nColumbus, OH 43229', '614-929-1480', 'Mohamed Mire', '2', 'momire1@hotmail.com', 'waiting-call', '2022-06-28 06:16:47.569646', 0, NULL, 5, NULL),
(12225, 'MC1142026', 'TARAN TRUCKING LLC', '\n631 Brent Boulevard APT C7\nColumbus, OH 43228', '763-283-1148', 'Keder Farah', '1', 'Tarantdss@gmail.com', 'waiting-call', '2022-06-28 06:16:47.672369', 0, NULL, 5, NULL),
(12226, 'MC94199', 'TMA FREIGHT SERVICES LLC', '2836 PETZINGER RD\nCOLUMBUS, OH 43209', '360-819-8164', '', '3', '', 'waiting-call', '2022-06-28 06:16:47.703936', 0, NULL, 5, NULL),
(12227, 'MC1119315', 'TRU Trucking LLC', '2050 LINWOOD AVE\nCOLUMBUS, OH 43207', '614-928-0933', 'Olandro Sutton', '1', 'olandrosutton@gmail.com', 'waiting-call', '2022-06-28 06:16:47.742973', 0, NULL, 5, NULL),
(12228, 'MC1228934', 'TRUCKMASTERS LLC', '\n4449 EASTON WAY SUITE 200\nCOLUMBUS, OH 43219', '614-816-8662', 'Abdiwahab Dayib', '1', '', 'waiting-call', '2022-06-28 06:16:47.760203', 0, NULL, 5, NULL),
(12229, 'MC1144835', 'TRUSTED TRUCKERS LOGISTICS LLC', '4334 APLEY PL\nCOLUMBUS, OH 43231', '320-339-7984', 'Abdi Farah', '3', 'Trustedtruckerslogistics@gmail.com', 'waiting-call', '2022-06-28 06:16:47.771907', 0, NULL, 5, NULL),
(12230, 'MC1077434', 'TURYO TRUCKING LLC', '370 N MONROE AVE\nCOLUMBUS, OH 43203', '615-961-9887', 'Hellen', '1', 'turyotruck@gmail.com', 'waiting-call', '2022-06-28 06:16:47.784893', 0, NULL, 5, NULL),
(12231, 'MC1187423', 'TWINKEY TRANSPORTS LLC', '4420 DRIFTON DR\nCOLUMBUS, OH 43227', '614-597-4893', 'JO BROWN', '1', 'JOBROWNNS@GMAIL.COM', 'waiting-call', '2022-06-28 06:16:47.796574', 0, NULL, 5, NULL),
(12232, 'MC1068958', 'Terrell Lincoln', '2891 Chimney Point Drive\nColumbus, OH 43231', '614-371-9066', 'Terrell Lincoln', '1', 'truckingyellow20@gmail.com', 'waiting-call', '2022-06-28 06:16:47.809107', 0, NULL, 5, NULL),
(12233, 'MC908484', 'Trans Way Llc', '4321 Bench Ct\nColumbus, OH 43230-9878', '612-618-7299', 'Abdikarim Abukar', '1', '', 'waiting-call', '2022-06-28 06:16:47.821443', 0, NULL, 5, NULL),
(12234, 'MC1175528', 'U S FORWARD LLP', '2514 PENDLETON PL\nCOLUMBUS, OH 43219', '614-400-0129', 'Abdi jama', '5', 'Usforward20@gmail.com', 'waiting-call', '2022-06-28 06:16:47.834683', 0, NULL, 5, NULL),
(12235, 'MC1160944', 'VISION TRUCKING LIMITED LIABILITY COMPANY', '4383 AMALIA PL\nCOLUMBUS, OH 43227 ', '614-432-0887', 'TAMALEW ASAMEREW', '2', 'visiontrucking2020@GMAIL.COM', 'waiting-call', '2022-06-28 06:16:47.846032', 0, NULL, 5, NULL),
(12236, 'MC1332038', 'WANSHUM TRUCKING LLC', '6111 PASQUAL AVE\nCOLUMBUS, OH 43213', '614-496-4466', 'Alonda Long', '1', 'Alondalong@wanshum.com', 'waiting-call', '2022-06-28 06:16:47.857735', 0, NULL, 5, NULL),
(12237, 'MC1145867', 'WARDA TRUCKING LLC', '2595 NORTHWOLD RD\nCOLUMBUS, OH 43231', '206-399-5712', 'Abdulgani Elmi', '1', 'Wardatruckingllc@gmail.com', 'waiting-call', '2022-06-28 06:16:47.869415', 0, NULL, 5, NULL),
(12238, 'MC1151713', 'WHITE STAR TRANS LLC', '3214 TURNER CT\nCOLUMBUS, OH 43219', '614-599-6386', '', '', '', 'waiting-call', '2022-06-28 06:16:47.902766', 0, NULL, 5, NULL),
(12239, 'MC1367262', 'WOLVERINE LOGISTICS LLC', '4449 EASTON WAY FL 2\nCOLUMBUS, OH 43219', '917-655-9705', '', '', '', 'waiting-call', '2022-06-28 06:16:47.920026', 0, NULL, 5, NULL),
(12240, 'MC107625', 'WQM TRANSPORTATION LLC', '4694 HEALY DR\nCOLUMBUS, OH 43227', '614-414-2315', 'Quiess Muhammad', '2', 'wqmtransportation@gmail.com', 'waiting-call', '2022-06-28 06:16:47.933351', 0, NULL, 5, NULL),
(12241, 'MC1007694', 'Walid Transport Llc', '5012 Cherrybluff Ct\nColumbus, OH 43230-4545', '614-364-0696', 'Mohamed warsame', '1', 'Walidtrandportllc@gmail.com', 'waiting-call', '2022-06-28 06:16:47.943836', 0, NULL, 5, NULL),
(12242, 'MC98974', 'Westerville Express Llc', '4966 Cherrybluff Ct\nColumbus, OH 43230-4542 ', '614-378-0354', 'Alifarah', '1', 'Westervillex65@gmail.com', 'waiting-call', '2022-06-28 06:16:47.958327', 0, NULL, 5, NULL),
(12243, 'MC979205', 'World Carrier Inc', '2830 Pinellas Ct Apt C\nColumbus, OH 43231-3037 ', '614-368-3272', 'Bash Farah', '', 'Worldcarrierinc@gmail.com', 'waiting-call', '2022-06-28 06:16:47.977882', 0, NULL, 5, NULL),
(12244, 'MC38745', 'Wowway Logistics Llc', '1550 Bolton Field Street Ste 8\nColumbus, OH 43228', '614-377-1623', 'kassim', '1', 'wowwayllc@gmail.com', 'waiting-call', '2022-06-28 06:16:47.989571', 0, NULL, 5, NULL),
(12245, 'MC1319308', 'YB EXPRESS LLC', '711 COUNTRY CLUB RD\nCOLUMBUS, OH 43213', '614-598-3918', '', '', '', 'waiting-call', '2022-06-28 06:16:48.027670', 0, NULL, 5, NULL),
(12246, 'MC95669', 'Zees Transportation Llc', '4597 Refugee Rd Apt 3F\nColumbus, OH 43232-5739 ', '614-674-4674', 'mohamud', '1', 'zeestransport27@gmail.com', 'waiting-call', '2022-06-28 06:16:48.052583', 0, NULL, 5, NULL),
(12247, 'MC902831', 'MAYOR TRANSPORT', '558 S Parrish Rd\nConneaut, OH 44030-9787', '440-855-3720', 'Scott mayor', '1', 'mayorsg50@gmail.com', 'waiting-call', '2022-06-28 06:16:48.113363', 0, NULL, 5, NULL),
(12248, 'MC1322727', 'BUDDIES TRANSPORT LLC', '9785 DOUGLAS LN APT 104\nOLMSTED FALLS, OH 44138', '470-487-5834', 'Sean Bandel', '2', 'info@buddiestransport.com', 'waiting-call', '2022-06-28 06:16:48.137332', 0, NULL, 5, NULL),
(12249, 'MC1330225', 'PO Transportation LLC', '645 Howe Avenue\nCuyahoga Falls, OH 44221', '330-990-5339', 'Renita Dalton', '1', 'Potransportation21@gmail.com', 'waiting-call', '2022-06-28 06:16:48.150549', 0, NULL, 5, NULL),
(12250, 'MC1404900', 'j l bell logistics inc', '\n1855 9th St\nCuyahoga Falls, OH 44221', '330-604-8614', '', '', '', 'waiting-call', '2022-06-28 06:16:48.186353', 0, NULL, 5, NULL),
(12251, 'MC994445', 'A Star Transportation Inc', '131 Notre Dame Ave\nDayton, OH 45404-1925', '937-451-7216', 'albina aydinova', '1', 'astartransportation@gmail.com', 'waiting-call', '2022-06-28 06:16:48.243715', 0, NULL, 5, NULL),
(12252, 'MC836170', 'Apple Logistics LLC', '5805 Jennysim Pl\nDayton, OH 45415-2527', '937-654-8328', 'surjit singh', '4', 'gilljaspal33@yahoo.com', 'waiting-call', '2022-06-28 06:16:48.280380', 0, NULL, 5, NULL),
(12253, 'MC131828', 'B&F TRANSPORTATION LLC', '3763 LAKEBEND DRIVE\nDAYTON, OH 45404', '937-829-2246', 'Behailu Tolossa', '1', '', 'waiting-call', '2022-06-28 06:16:48.310051', 0, NULL, 5, NULL),
(12254, 'MC1195', 'BIG BUCK HAULING LLC', '8321 INWOOD AVE\nDAYTON, OH 45415', '937-607-9279', 'Melissa Ellison', '2', '', 'waiting-call', '2022-06-28 06:16:48.347590', 0, NULL, 5, NULL),
(12255, 'MC1137495', 'Black Horse Transport Inc', '9591 Aspen Brook Court\nDayton, OH 45458', '513-680-2921', 'Sukhdeep Brar', '1', 'blackhorse9591@gmail.com?', 'waiting-call', '2022-06-28 06:16:48.404608', 0, NULL, 5, NULL),
(12256, 'MC1178100', 'Buckeye Freight Express Inc', '\n6200 Westford Road\nDayton, OH 45426', '804-852-4142', '', '', '', 'waiting-call', '2022-06-28 06:16:48.440608', 0, NULL, 5, NULL),
(12257, 'MC375', 'Daansa Services Llc', '2774 Sutton Ave\nDayton, OH 45429-3743', '937-305-7701', '', '', 'DISPATCH.DAANSA@GMAIL.COM', 'waiting-call', '2022-06-28 06:16:48.490268', 0, NULL, 5, NULL),
(12258, 'MC893849', 'Deniz Trucking Llc', '6265 Black Oak Pl\nDayton, OH 45424-4079', '425-502-2487', 'CHINGIZ UMIYEV', '1', 'deniztruckingllcinfo@gmail.com', 'waiting-call', '2022-06-28 06:16:48.540868', 0, NULL, 5, NULL),
(12259, 'MC1302834', 'GARRISON INVESTMENTS LLC', '4221 Oakridge Dr\nDayton, OH 45417', '678-708-9493', 'Marlon G', '3', 'marlongarrison58@gmail.com', 'waiting-call', '2022-06-28 06:16:48.588333', 0, NULL, 5, NULL),
(12260, 'MC984929', 'Hisham Abdelbagi', '1013 Watertower Ln Apt D\nDayton, OH 45449-2429', '937-750-0365', 'Faisal', '3', 'Faisaldangool7@gmail.com', 'waiting-call', '2022-06-28 06:16:48.626415', 0, NULL, 5, NULL),
(12261, 'MC843196', 'Inhand Transportation Inc', '479 Byron Boulevard\nDayton, OH 45458', '937-545-1960', 'Hardeep Sran', '3', 'hardeepsran81@yahoo.com', 'waiting-call', '2022-06-28 06:16:48.654650', 0, NULL, 5, NULL),
(12262, 'MC1236987', 'JLA TRANSIT LLC', '1628 SPRINGFIELD ST #209\nDAYTON, OH 45431', '614-206-7850', '', '1', '', 'waiting-call', '2022-06-28 06:16:48.692642', 0, NULL, 5, NULL),
(12263, 'MC1143863', 'KAUSHAL TRUCKING LLC', 'Revere Village Court\nDayton, OH 45458 ', '347-400-5152', '', '2', 'Kaushaltrucking@gmail.com', 'waiting-call', '2022-06-28 06:16:48.757635', 0, NULL, 5, NULL),
(12264, 'MC899959', 'Koya Trucking', '4563 Lansmore Dr\nDayton, OH 45415-3352', '937-838-4496', 'Mamadou BA', '1', 'diomfkbl@gmail.com', 'waiting-call', '2022-06-28 06:16:48.799444', 0, NULL, 5, NULL),
(12265, 'MC50154', 'M N A Trucking Llc', '3228 Mccall St\nDayton, OH 45417-1908', '302-463-9076', 'Michael allen', '1', 'Stretch7055@yahoo.com?', 'waiting-call', '2022-06-28 06:16:48.812414', 0, NULL, 5, NULL),
(12266, 'MC844860', 'Meba Express', '4537 Croftshire Drive\nDayton, OH 45440', '818-854-5600', 'EMEL UYGUNCA', '2', 'mebaexpress@hotmail.com', 'waiting-call', '2022-06-28 06:16:48.823784', 0, NULL, 5, NULL),
(12267, 'MC736603', 'Mgi Express Llc', '1100 Brandt Pike\nDayton, OH 45404-2467 ', '614-906-4580', 'kYLE', '10', 'MGIEXPRESS1@GMAIL.COM', 'waiting-call', '2022-06-28 06:16:48.836227', 0, NULL, 5, NULL),
(12268, 'MC887386', 'Midstate Trucking Llc', '182 Alton Ave\nDayton, OH 45404-1947', '208-440-9818', 'Shavkat Suleymanov', '4', 'midstate1407@gmail.com', 'waiting-call', '2022-06-28 06:16:48.849089', 0, NULL, 5, NULL),
(12269, 'MC924708', 'National Freight Lines', '1710 Leo St\nDayton, OH 45404-1916 ', '713-493-8235', 'Rizman', '1', 'nationalfreightllc@gmail.com', 'waiting-call', '2022-06-28 06:16:48.860154', 0, NULL, 5, NULL),
(12270, 'MC1007959', 'RIL ELITE EXPEDITING SERVICES LLC', '\n335 ELMHILL DR\nDAYTON, OH 45415', '937-301-6006', 'Henry Rayford', '', 'rileliteexpediting@gmail.com', 'waiting-call', '2022-06-28 06:16:48.898614', 0, NULL, 5, NULL),
(12271, 'MC1035732', 'Rad Transport Inc', '3217 West Siebenthaler Avenue\nDayton, OH 45405', '773-453-7874', '', '', '', 'waiting-call', '2022-06-28 06:16:48.935829', 0, NULL, 5, NULL),
(12272, 'MC1280998', 'Rashied Express LLC', '17 East Bruce Avenue\nDayton, OH 45405', '937-232-7737', '', '', '', 'waiting-call', '2022-06-28 06:16:48.972934', 0, NULL, 5, NULL),
(12273, 'MC865940', 'Road Captain LLC', '\n1501 Elmbrook Trail\nDayton, OH 45458', '267-206-7196', 'Ayvoz Kapitanov', '2', 'roadcaptainllc@gmail.com', 'waiting-call', '2022-06-28 06:16:49.012849', 0, NULL, 5, NULL),
(12274, 'MC1007511', 'Safety Transport Llc', '24 S Mcgee St\nDayton, OH 45403-2124', '937-789-3146', 'khuseyn lomanov', '1', 'safetyransportllc0@mail.com', 'waiting-call', '2022-06-28 06:16:49.052108', 0, NULL, 5, NULL),
(12275, 'MC203688', 'Schaefer Freight Carrier', '\n954 Calumet Ln\nDayton, OH 45417-8019', '937-838-2310', '', '', '', 'waiting-call', '2022-06-28 06:16:49.087506', 0, NULL, 5, NULL),
(12276, 'MC789003', 'Shakh Express Llc', '162 Notre Dame Ave\nDayton, OH 45404-192', '937-813-1431', 'ismail', '2', 'shakhexpress@gmail.com', 'waiting-call', '2022-06-28 06:16:49.138188', 0, NULL, 5, NULL),
(12277, 'MC902917', 'Sunrise Express Llc', '826 Milburn Ave\nDayton, OH 45404-1627', '206-355-3803', 'Shaismail Lomanov', '4', 'sunriseexpressllc2015@gmail.com', 'waiting-call', '2022-06-28 06:16:49.161942', 0, NULL, 5, NULL),
(12278, 'MC1231836', 'TJ EXPRESS INC', '6228 HERITAGE PARK BLVD\nDAYTON, OH 45424', '937-784-7440', 'Takhir Lutfiyev', '2', 'visiontrucking2020@GMAIL.COM', 'waiting-call', '2022-06-28 06:16:49.173645', 0, NULL, 5, NULL),
(12279, 'MC42592', 'USA CARRIER LLC', '1715 SPRINGFIELD ST\nDAYTON, OH 45403', '937-952-0563', 'Jonathan Oliveras', '5', 'team@usacarrierllc.com', 'waiting-call', '2022-06-28 06:16:49.186620', 0, NULL, 5, NULL),
(12280, 'MC39513', 'Usa Cargo Llc', '521 Notre Dame Ave\nDayton, OH 45404-2704', '937-654-7697', 'Mahmood Ahmed', '1', 'USACargo91@gmail.com', 'waiting-call', '2022-06-28 06:16:49.198724', 0, NULL, 5, NULL),
(12281, 'MC1222385', 'ANYTIME DELIVERY SPECIALISTS', '936 WAYNE AVE ---\nDEFIANCE, OH 43512', '419-576-6961', 'David Adkins', '2', 'anytimedeliveryspecialists@gmail.com', 'waiting-call', '2022-06-28 06:16:49.218581', 0, NULL, 5, NULL),
(12282, 'MC900803', 'AVAZBEK TRUCKING INC', '925 S CLINTON ST SUIT B\nDEFIANCE, OH 43512', '929-888-6463', 'Anvar', '2', 'avazbekdispatchteam@gmail.com', 'waiting-call', '2022-06-28 06:16:49.362814', 0, NULL, 5, NULL),
(12283, 'MC1164225', 'A&R FREIGHT SOLUTIONS LLC', '648 WHITE FAWN RUN\nDELAWARE, OH 43015', '614-804-9762', '', '', '', 'waiting-call', '2022-06-28 06:16:49.399760', 0, NULL, 5, NULL),
(12284, 'MC160327', 'FADLE TRANSPORTATION INC', '801 BLACK MORE DR\nDELAWARE, OH 43015', '740-815-8439', 'Omar Egal', '3', 'fadletransportation@gmail.com', 'waiting-call', '2022-06-28 06:16:49.411541', 0, NULL, 5, NULL),
(12285, 'MC1231532', 'ALBA MOTORS LLC', '\n3365 GARYLANE DR\nDUBLIN, OH 43017', '614-389-1659', 'Sema Williams', '', 'swalbaent@outlook.com', 'waiting-call', '2022-06-28 06:16:49.425233', 0, NULL, 5, NULL),
(12286, 'MC1284097', 'BARLOS LLC', '\n4809 SKYRIDGE DR\nDUBLIN, OH 43016', '702-900-7077', 'Farrux', '3', 'Barlosllc@gmail.com', 'waiting-call', '2022-06-28 06:16:49.436236', 0, NULL, 5, NULL),
(12287, 'MC1165893', 'BHANGU TRASPORT LLC', '5685 BRAYLON ST APT 203\nDUBLIN, OH 43016', '269-830-2631', '', '', '', 'waiting-call', '2022-06-28 06:16:49.449489', 0, NULL, 5, NULL),
(12288, 'MC861676', 'Great Transportation Llc', '5674 Wilcox Rd\nDublin, OH 43016-1255', '614-531-1169', 'Bashir Haji', '1', 'jucfe05@hotmail.com', 'no-answer', '2022-06-28 13:26:56.000000', 1, '', 5, NULL),
(12289, 'MC1269599', 'M&M WHITE GLOVE DELIVERY LLP', '5591 BOWLAND PL N APT 361\nDUBLIN, OH 43016', '614-735-8453', 'Moe', '4', 'mnmwhiteglovedelivery@gmail.com', 'no-answer', '2022-06-28 13:30:57.000000', 1, '', 5, NULL),
(12290, 'MC666869', 'Rocky Road Haul', '5939 Tara Hill Dr\nDublin, OH 43017-2827', '614-619-0944', 'Carlo Barry', '', 'rockyroadhaul@yahoo.com', 'no-answer', '2022-06-28 13:34:14.000000', 1, '', 5, NULL),
(12291, 'MC1174774', 'Rotana Express Transporation Llc', '7755 Hansgrove Court\nDublin, OH 43016', '614-969-8665', 'nooraldeen', '2', 'rotanallc40@gmail.com', 'said-no', '2022-06-28 13:42:51.000000', 1, 'hanged up', 5, NULL),
(12292, 'MC1109936', 'S&Z Trucking LLC', '4912 Stratford Pine Lane\nDublin, OH 43016', '312-539-2391', 'Muawia Zamara', '1', 'sztruckingllc2020@gmail.com', 'no-answer', '2022-06-28 13:44:00.000000', 1, '', 5, NULL),
(12293, 'MC1154362', 'Valor Vision Enterprise LLC', '5746 CAMBROOKE CT\nDUBLIN, OH 43016', '201-637-9002', 'muhammed kaya', '2', 'valorvisionfreight@gmail.com', 'no-answer', '2022-06-28 13:45:05.000000', 1, '', 5, NULL),
(12294, 'MC1018756', 'Zara Trucking Express Llc', '5070 Belle Crossing Rd Unit H\nDublin, OH 43016-5529', '614-984-1931', 'Ali Alwawi', '1', 'Alialwawi87@yahoo.com', 'said-no', '2022-06-28 13:47:33.000000', 1, 'He is good', 5, NULL),
(12295, 'MC1095461', 'TE MASONRY LLC', '11608 W RIDGE RD\nELYRIA, OH 44035', '440-985-0517', 'TRAVIS EVANS', '2', 'TRAVISEVANS58@GMAIL.COM', 'no-answer', '2022-06-28 13:49:04.000000', 1, '', 5, NULL),
(12296, 'MC1143011', 'METROLINA LLC', '1400 CHARDON RD\nEUCLID, OH 44117', '216-386-2554', '', '', '', 'no-answer', '2022-06-28 13:57:01.000000', 1, '', 5, NULL),
(12297, 'MC1218290', 'MJG TRANSPORT LLC', '24140 ALBERTON RD\nEUCLID, OH 44123 ', '216-287-8483', 'Michael Greene', '2', 'mnygrip@gmail.com', 'no-answer', '2022-06-28 14:05:04.000000', 1, '', 5, NULL),
(12298, 'MC1297412', 'DOVE LOGISTICS LLC', '360 W DAYTON YELLOW SPRINGS RD\nFAIRBORN, OH 45324', '937-581-3783', 'Bertin Ngoga', '3', 'dovelogistics21@gmail.com', 'said-no', '2022-06-28 14:07:56.000000', 1, 'Have a dispatcher', 5, NULL),
(12299, 'MC1313294', 'OLJ TRUCKING', '237 Vine Street\nFairborn, OH 45324', '313-421-0637', 'Odell Johnson', '2', 'Oljtrucking@gmail.com', 'said-no', '2022-06-28 14:10:05.000000', 1, 'No thank you and hanged up', 5, NULL),
(12300, 'MC1082046', 'Newleaf Ltd', '245 Knollridge Ct Apt 204\nFairfield, OH 45014-6583', '513-969-4626', 'Jymarcus Lott', '1', 'newleafjd@gmail.com', 'no-answer', '2022-06-28 14:11:27.000000', 1, '', 5, NULL),
(12301, 'MC1278667', 'Backna Industries LLC', '600 Tiffin Avenue\nFindlay, OH 45840', '567-525-4571', '', '', '', 'no-answer', '2022-06-28 14:13:05.000000', 1, '', 5, NULL),
(12302, 'MC750435', 'Erwin Trucking', '55 Trenton St\nFranklin Furnace, OH 45629-8866', '740-981-6989', '', '', '', 'no-answer', '2022-06-28 14:14:27.000000', 1, '', 5, NULL),
(12303, 'MC1137956', 'PRIME STAR LOGISTICS INC', '8401 CLAUDE THOMAS RD STE 21 ROOM G ,\nFRANKLIN, OH 45005', '443-477-5333', 'Dilmurod Mirzaev', '5', 'pslinc20@gmail.com', 'no-answer', '2022-06-28 14:15:17.000000', 1, '', 5, NULL),
(12304, 'MC36904', 'Volk Transportation', '\n2752 State Route 122\nFranklin, OH 45005-9475', '513-465-9391', 'david volk', '1', 'david_volk@yahoo.com', 'no-answer', '2022-06-28 14:16:14.000000', 1, '', 5, NULL),
(12305, 'MC1144713', 'G & A TRANSPORTATION LLC', '4710 Winery Way\nGahanna, OH 43230', '614-500-0698', 'Garad Adam', '1', 'gatrucking01@gmail.com', 'no-answer', '2022-06-28 14:20:01.000000', 1, '', 5, NULL),
(12306, 'MC1158091', 'Four Ma Familia LLC', '12600 ROCKSIDE RD # 282\nGARFIELD HTS, OH 44125', '216-316-5307', 'Nathaniel Early III', '1', 'Fourmafamiliallc@gmail.com', 'no-answer', '2022-06-28 14:21:06.000000', 1, '', 5, NULL),
(12307, 'MC1321073', 'SHOTIME TRUCKING LLC', '9909 MCCRACKEN BLVD\nGARFIELD HTS, OH 44125-5903', '216-926-4675', '', '', '', 'no-answer', '2022-06-28 14:21:48.000000', 1, '', 5, NULL),
(12308, 'MC1208007', 'BIIDI TRANSPORTATION LLC', '2167 Stringtown Rd Suite 306\nGrove City, OH 43123', '614-598-1322', 'SADAT', '1', '', 'no-answer', '2022-06-28 14:26:11.000000', 1, '', 5, NULL),
(12309, 'MC109040', 'Bossin Logistics Llc', '3612 Wood Reed Drive\nTipp City, OH 45371-2574', '509-821-9371', 'Yusuf Aslanov', '1', '252trucking@gmail.com', 'maybe', '2022-06-28 14:30:13.000000', 1, 'I am gonna save your number and will call you back.', 5, NULL),
(12310, 'MC1130567', 'CLARITY SUPPLY CHAIN SERVICES LLC', '14871 MIDDLEBURG PLAIN CITY RD\nPLAIN CITY, OH 43064', '614-419-2606', 'Kevin Wade', '2', 'Kdwade64@gmail.com', 'no-answer', '2022-06-28 14:31:30.000000', 1, '', 5, NULL),
(12311, 'MC1311103', 'FIRST LINE LOGISTICS', '4546 EDGARTON DR\nGROVE CITY, OH 43123-9418', '614-209-4934', 'BRETT W ROBISON', '2', 'firstlinelogisticsohio@gmail.com', 'said-no', '2022-06-28 14:35:54.000000', 1, 'No need of dispatching because all his trucks are on lease', 5, NULL),
(12312, 'MC1209708', 'GOBIND LLC', '4055 SPICEBUSH DR\nTIPP CITY, OH 45371', '937-789-3749', '', '', '', 'said-no', '2022-06-28 14:41:52.000000', 1, 'Hanged up', 5, NULL),
(12313, 'MC879200', 'Gold Eagle Logistics Inc', '\n2786 Blueflag St\nTipp City, OH 45371', '630-788-2642', 'ILYAS CHAKHALIDZE', '2', 'Goldeaglelogisticsinc@gmail.com', 'said-no', '2022-06-28 14:44:30.000000', 1, 'Hanged up', 5, NULL),
(12314, 'MC802413', 'GOOD TRIP TRUCKING LLC', '1056 LAKESIDE ST\nTIPP CITY, OH 45371', '404-543-8187', 'Amrakh RUSTAMOV', '2', 'e.rustamov@icloud.com', 'said-no', '2022-06-28 14:45:33.000000', 1, 'No thank you', 5, NULL),
(12315, 'MC897090', 'Imperial Transport Llc', '2693 BLUEFLAG ST\nTIPP CITY, OH 45371', '937-554-9053', 'Mavlyud Khalilov', '1', 'imperialt2014@gmail.com', 'no-answer', '2022-06-28 14:46:09.000000', 1, '', 5, NULL),
(12316, 'MC479901', 'Jeff Young Trucking Inc', '10312 State Road 47 N\nUnion City, OH 45390-9066', '937-459-0207', 'Jeff Young', '', 'jeffyoungtruckin@embarqmail.com', 'no-answer', '2022-06-28 14:54:41.000000', 1, '', 5, NULL),
(12317, 'MC1105268', 'MIDWEST FREIGHT SERVICES LLC', '3500 GROVE CITY ROAD UNIT 107\nGROVE CITY, OH 43123', '614-230-7005', 'LAILA', '2', 'INFO@MWFSLLC.COM', 'no-answer', '2022-06-28 14:55:57.000000', 1, '', 5, NULL),
(12318, 'MC886397', 'Miski Trucking Llc', '3553 Lake Mead Dr\nGrove City, OH 43123-8606', '614-822-1108', 'Abdiladif Ali', '4', 'miskitrucking@gmail.com', 'no-answer', '2022-06-28 14:59:46.000000', 1, '', 5, NULL),
(12319, 'MC1146178', 'NOVA TRUCKS LLC', '2040 SONDRA LN\nGROVE CITY, OH 43123', '614-937-8540', 'gurpreet', '4', 'novatrucksllc@gmail.com', 'waiting-call', '2022-06-28 06:16:50.213549', 0, NULL, 5, NULL),
(12320, 'MC126238', 'Ohio Transportation Service Llc', '8127 Bushclover Dr\nTipp City, OH 45371-8450', '678-640-8453', 'Ismail Abbasov', '5', 'ohiotsllc@gmail.com', 'waiting-call', '2022-06-28 06:16:50.235057', 0, NULL, 5, NULL),
(12321, 'MC900507', 'Optimus Express Llc', '2669 Blueflag Street\nTipp City, OH 45371', '937-610-8362', 'Ali abbas', '3', 'optimusexpressllc@gmail.com', 'waiting-call', '2022-06-28 06:16:50.256685', 0, NULL, 5, NULL),
(12322, 'MC1162075', 'Royal MG Transport Inc', '3078 White Ash Drive\nTipp City, OH 45371', '937-266-9079', 'Tejinderpal gill', '2', 'Gillbrother0096@gmail.com', 'waiting-call', '2022-06-28 06:16:50.268534', 0, NULL, 5, NULL),
(12323, 'MC721717', 'Smd Trucking Inc', '1901 Rock Creek Dr.\nGrove City, OH 43123', '216-394-7788', 'Babacar Diouf', '1', 'smdtrucking@hotmail.com', 'waiting-call', '2022-06-28 06:16:50.312189', 0, NULL, 5, NULL),
(12324, 'MC796383', 'TRI TRANSPORT LLC', '2040 SILVER LINDEN DR\nTIPP CITY, OH 45371', '773-732-1429', 'Takh', '1', 'tritransport007@gmail.com', 'waiting-call', '2022-06-28 06:16:50.342022', 0, NULL, 5, NULL),
(12325, 'MC933559', 'United Carrier Llc', '1227 Scarlet Oak Dr\nTipp City, OH 45371-2581', '517-242-3027', 'Elmira Shakirova', '2', 'unitedcarrier11@gmail.com', 'waiting-call', '2022-06-28 06:16:50.362002', 0, NULL, 5, NULL),
(12326, 'MC889248', 'Us Star Express Llc', '3123 WHITE ASH DR\nTIPP CITY, OH 45371', '773-574-2892', 'ELMIRA', '2', 'USSTAREXPRESS@GMAIL.COM', 'waiting-call', '2022-06-28 06:16:50.385977', 0, NULL, 5, NULL),
(12327, 'MC1302510', 'View Point Trucking LLC', '2418 Rock Creek Court\nGrove City, OH 43123', '614-843-8976', '', '', '', 'waiting-call', '2022-06-28 06:16:50.411781', 0, NULL, 5, NULL),
(12328, 'MC112709', 'Zernenoutrans Llc', '1924 Kendall Pl\nGrove City, OH 43123-3917', '614-795-1460', 'boubekeur', '2', 'zernenouboubakeur@gmail.com', 'waiting-call', '2022-06-28 06:16:50.424970', 0, NULL, 5, NULL),
(12329, 'MC903755', 'Ami Transport', '5146 Snow Valley Ln\nHamilton, OH 45011-0777 ', '513-354-0516', 'meet patel', '', 'amitransport1@hotmail.com', 'waiting-call', '2022-06-28 06:16:50.437721', 0, NULL, 5, NULL),
(12330, 'MC435466', 'HOWARD TRANSPORT INC.', '219 GATES RD\nHAMILTON, OH 45013', '513-616-6685', 'dustin howard', '4', '', 'waiting-call', '2022-06-28 06:16:50.456308', 0, NULL, 5, NULL),
(12331, 'MC29811', 'Hillcat Inc', '7569 Sycamore Woods Ln\nHamilton, OH 45011-7609', '513-973-7300', 'sammandeep singh', '4', 'hillcatinc@gmail.com', 'waiting-call', '2022-06-28 06:16:50.477671', 0, NULL, 5, NULL),
(12332, 'MC1115118', 'JB GROUP LOGISTICS LLC', '6818 SUGARBERRY KNL\nHAMILTON, OH 45011-7525 ', '609-379-0014', 'Rajander Singh', '1', '', 'waiting-call', '2022-06-28 06:16:50.489367', 0, NULL, 5, NULL),
(12333, 'MC880061', 'L & P Trucking Llc', '5238 River Ridge Dr\nHamilton, OH 45011-2682 ', '513-461-1706', 'Ana Labrador', '2', 'lptruckingllc@gmail.com', 'waiting-call', '2022-06-28 06:16:50.504959', 0, NULL, 5, NULL),
(12334, 'MC1151597', 'Ohio hotshot services llc', '920 Hoadley Ave\nHamilton, OH 45015', '801-867-7877', '', '', '', 'waiting-call', '2022-06-28 06:16:50.522401', 0, NULL, 5, NULL),
(12335, 'MC1082328', 'Orc Transport Llc', '4665 Happy Lane\nHamilton, OH 45011', '513-816-2299', 'Amrit Sekhon', '1', 'orctransportllc@gmail.com', 'waiting-call', '2022-06-28 06:16:50.535502', 0, NULL, 5, NULL),
(12336, 'MC469760', 'Phelps Trucking', '5134 Cincinnati Brookville Rd\nHamilton, OH 45013-9548', '513-738-2204', 'Diane', '', 'phelpstrkg@live.com', 'waiting-call', '2022-06-28 06:16:50.555517', 0, NULL, 5, NULL),
(12337, 'MC1043325', 'Mobius One Trucking', '212 Lyness AVE-APT#66\nHarrison, OH 45030', '919-724-6836', 'Benjamin Deiser', '1', 'badeiser@mobiusonetrucking.com', 'waiting-call', '2022-06-28 06:16:50.568773', 0, NULL, 5, NULL),
(12338, 'MC24883', 'Abd Express Llc', '2523 Pressman Dr\nHilliard, OH 43026-7869', '614-440-3939', 'Mostafa abdelhadi', '1', 'mostafaabdelhadi89@gmail.com', 'waiting-call', '2022-06-28 06:16:50.588783', 0, NULL, 5, NULL),
(12339, 'MC69558', 'Infinity Motor Freight Llc', '2524 Country Ridge Dr.\nHilliard, OH 43026', '614-556-0032', 'Rage muse', '1', 'Imfllc12@gmail.com', 'waiting-call', '2022-06-28 06:16:50.601883', 0, NULL, 5, NULL),
(12340, 'MC887110', 'Luqman Carrier Llc', '2357 Bayside Dr\nHilliard, OH 43026-8639', '614-598-7266', 'Abdiaziz', '2', 'Luqmanllc1@gmail.com', 'waiting-call', '2022-06-28 06:16:50.620703', 0, NULL, 5, NULL),
(12341, 'MC123187', 'Omar Adan', '5440 Tretorn Drive Apt 304\nHilliard, OH 43026', '404-428-0661', 'Yusuf Soufe', '3', 'horizonfreightllc@gmail.com', 'waiting-call', '2022-06-28 06:16:50.633555', 0, NULL, 5, NULL),
(12342, 'MC937181', 'Wa Transport Llc', '4984 Scioto Darby Rd Ste B5\nHilliard, OH 43026-1550 ', '614-772-7429', 'waleed', '', 'wa.transport2@gmail.com', 'waiting-call', '2022-06-28 06:16:50.645211', 0, NULL, 5, NULL),
(12343, 'MC1017365', 'Yeden inc', '5971 Nike dr\nHilliard, OH 43026', '614-315-1056', 'Alex', '2', 'Alex@yedeninc.com', 'waiting-call', '2022-06-28 06:16:50.657825', 0, NULL, 5, NULL),
(12344, 'MC49736', 'S K EXPRESS INC', '8694 Prairie Frost Lane\nLewis Center, OH 43035', '614-809-2889', 'Sukhvinder Singh', '2', '909sukh@gmail.com', 'waiting-call', '2022-06-28 06:16:50.673841', 0, NULL, 5, NULL),
(12345, 'MC658092', 'Rynic Transportation', '13 Roosevelt Dr\nHubbard, OH 44425-2666', '330-502-2844', 'Joseph DelSignore', '2', 'rynictrans@yahoo.com', 'waiting-call', '2022-06-28 06:16:50.987824', 0, NULL, 5, NULL),
(12346, 'MC109699', 'AKRON FITS INC', '6588 BRECKSVILLE RD\nINDEPENDENCE, OH 44131', '440-832-9145', 'Shehrazbek Yakubov', '5', 'Akronfits@hotmail.com', 'waiting-call', '2022-06-28 06:16:51.042353', 0, NULL, 5, NULL),
(12347, 'MC1365866', 'LUDWIG TRANSPORTATION LLC', '11477 TOWNSHIP ROAD 115\nKENTON, OH 43326', '570-751-3396', '', '', '', 'waiting-call', '2022-06-28 06:16:51.071814', 0, NULL, 5, NULL),
(12348, 'MC1123109', 'Star Line Transport LLC', '4040 Erie Street UNIT 1132\nKirtland, OH 44094', '216-929-8612', 'Ron Pavlovich', '2', 'starlinetransportllc@gmail.com', 'waiting-call', '2022-06-28 06:16:51.108683', 0, NULL, 5, NULL),
(12349, 'MC1059352', 'Z Transport Llc', '8480 BRIDLEHURST TRL.\nKIRTLAND, OH 44094-5135', '440-488-9379', '', '', '', 'waiting-call', '2022-06-28 06:16:51.138986', 0, NULL, 5, NULL),
(12350, 'MC1010369', 'APOLLO EXPEDITION LOGISTICS LTD', '\n11804 FRANKLIN BLVD APT 4\nLAKEWOOD, OH 44107', '216-337-9789', 'Arnie Nushi', '2', 'apolloexplog@gmail.com', 'waiting-call', '2022-06-28 06:16:51.176257', 0, NULL, 5, NULL),
(12351, 'MC1231855', 'FAST2U TRANSPORTATION LLC', '1364 PHELPS AVE\nLAKEWOOD, OH 44107', '440-850-0050', 'Nertil', '1', 'Nhysenaj01@gmail.com', 'waiting-call', '2022-06-28 06:16:51.238928', 0, NULL, 5, NULL),
(12352, 'MC1043732', 'WTB TRANSPORT LLC', '1660 VICTORIA AVE\nLAKEWOOD, OH 44107', '216-762-7021', 'MOHAMED ALNAJJAR', '1', 'WTBTRANSPORT@ICLOUD.COM', 'waiting-call', '2022-06-28 06:16:51.287834', 0, NULL, 5, NULL),
(12353, 'MC1206460', 'ODSS LOGISTICS LLC', '428 PIKE ST\nSOUTH LEBANON, OH 45065', '718-909-7150', 'Odil Qulmatov', '2', 'odss.logistics@gmail.com', 'waiting-call', '2022-06-28 06:16:51.328126', 0, NULL, 5, NULL),
(12354, 'MC1101073', 'Northstar Integrity Trucking Llc', '534 Circle Dr\nLondon, OH 43140-8905 ', '614-332-4909', 'Steven Thomas', '1', 'northstarintegritytrucking@yahoo.com', 'waiting-call', '2022-06-28 06:16:51.364637', 0, NULL, 5, NULL),
(12355, 'MC840296', 'Bear Brothers Carriage', '1901 Heidelberg Dr\nLoveland, OH 45140-2006', '513-800-3907', '', '', '', 'waiting-call', '2022-06-28 06:16:51.403523', 0, NULL, 5, NULL),
(12356, 'MC1139103', 'D & JH TRUCKING INC', '9635 DAYBREAK LN\nLOVELAND, OH 45140', '513-331-6853', 'Jerry Hensley', '1', 'henjerwww@yahoo.com', 'waiting-call', '2022-06-28 06:16:51.448952', 0, NULL, 5, NULL),
(12357, 'MC550395', 'JEWEL PRICE LLC', '6507 SNIDER ROAD\nLOVELAND, OH 45140 ', '513-722-1200', '', '', '', 'waiting-call', '2022-06-28 06:16:51.493385', 0, NULL, 5, NULL),
(12358, 'MC972073', 'Moldexpress Inc', '3442 Riverwood Ln Apt 3A\nLoveland, OH 45140-3218 ', '513-988-7262', '', '', '', 'waiting-call', '2022-06-28 06:16:51.531380', 0, NULL, 5, NULL),
(12359, 'MC1140008', 'Shamsi Cargo Inc', '9764 HAYFIELD COURT\nLoveland, OH 45140', '347-977-1544', 'Ayub', '3', 'shamsicargoinc@gmail.com', 'waiting-call', '2022-06-28 06:16:51.576709', 0, NULL, 5, NULL),
(12360, 'MC103497', 'TZM Road Trans Llc', '\n820 Carrington Pl Apt 309\nLoveland, OH 45140-8663', '513-667-7628', 'Tzvetozar', '2', 'Tzmroadtrans@gmail.com', 'waiting-call', '2022-06-28 06:16:51.623117', 0, NULL, 5, NULL),
(12361, 'MC39672', 'WINGSTAR EXPEDITE LLC', '480 e highland rd\nMACEDONIA, OH 44056', '216-544-1200', 'MYRON HARDETSKYY', '2', 'wingstarxpd@gmail.com', 'waiting-call', '2022-06-28 06:16:51.676265', 0, NULL, 5, NULL),
(12362, 'MC1115790', 'JSD TRANSPORT LLC', '162 STURGES AVE\nMANSFIELD, OH 44903', '347-849-8085', 'Sarfaraz ahmed', '2', 'jsdmansfield@gmail.com', 'waiting-call', '2022-06-28 06:16:51.739237', 0, NULL, 5, NULL),
(12363, 'MC669672', 'Arjun Transport Services', '684 Bayhill Ct\nMarion, OH 43302-8004 ', '317-714-0389', 'Harnek Singh', '1', 'kaur49@hotmail.com', 'waiting-call', '2022-06-28 06:16:51.808262', 0, NULL, 5, NULL),
(12364, 'MC916146', 'GBT LLC', '1365 E Fairground Rd\nMarion, OH 43302-8873', '740-382-2700', 'lucky', '', 'gbtohio@gmail.com', 'waiting-call', '2022-06-28 06:16:51.861486', 0, NULL, 5, NULL),
(12365, 'MC5376', 'Ajam Solutions Llc', '300 N Zane Hwy\nMartins Ferry, OH 43935-1625 ', '740-359-9883', 'AJ Weisser', '', 'ajamsolutions@gmail.com', 'waiting-call', '2022-06-28 06:16:51.925401', 0, NULL, 5, NULL),
(12366, 'MC756931', 'A P Transportation LLC', '2611 Hartfield Ln\nMason, OH 45040', '513-315-4901', 'Mark Bender', '2', 'aptransportationllc@gmail.com', 'waiting-call', '2022-06-28 06:16:51.978749', 0, NULL, 5, NULL),
(12367, 'MC1352415', 'GOLDEN GATE TRUCKING INC', '\n5638 STERLING LAKES CIR APT 104\nMASON, OH 45040', '929-523-5257', 'Mirzaali', '1', 'goldengate2021.inc@gmail.com', 'waiting-call', '2022-06-28 06:16:52.078856', 0, NULL, 5, NULL),
(12368, 'MC1308303', 'NUMBER 1 LOGISTICS INC', '5061 SUNBURST WAY\nMASON, OH 45040', '707-509-0999', 'Samat', '2', 'number1logisticsinc@gmail.com', 'waiting-call', '2022-06-28 06:16:52.144686', 0, NULL, 5, NULL),
(12369, 'MC1156327', 'ROYAL TRANSIT LLC', '5739 STERLING LAKES CIR APT 207\nMASON, OH 45040', '929-333-1934', 'Sherzod Salomov', '2', 'royaltransitllc@gmail.com', 'waiting-call', '2022-06-28 06:16:52.181395', 0, NULL, 5, NULL),
(12370, 'MC1239998', 'UZCARGO EXPRESS INC', '320 BAINBRIDGE CT\nMASON, OH 45040', '513-685-8586', 'Akmal', '2', 'dispatchuzcargo@gmail.com', 'waiting-call', '2022-06-28 06:16:52.247762', 0, NULL, 5, NULL),
(12371, 'MC1169775', 'Uzbek Truck World Inc', '\n5723 LAKES CIRCLE APT 104\nMASON, OH 45040', '513-214-3315', 'Diyorbek', '2', 'dispatch.utwinc@gmail.com', 'waiting-call', '2022-06-28 06:16:52.296236', 0, NULL, 5, NULL),
(12372, 'MC24026', 'Cooley Transport Llc', '1838 Sherwood Ave NW\nMassillon, OH 44646-2754', '330-284-8836', 'Scott Cooley', '1', 'scottyc1369@yahoo.com', 'waiting-call', '2022-06-28 06:16:52.332930', 0, NULL, 5, NULL),
(12373, 'MC1375298', 'HARLEEN INC', '6760 EASTGATE DR\nMAYFIELD, OH 44143', '216-767-7469', 'harjinder singh', '1', 'harleeinc11@gmail.com', 'waiting-call', '2022-06-28 06:16:52.406521', 0, NULL, 5, NULL),
(12374, 'MC1320261', 'JTC TRUCKING LLC', '124 LAFAYETTE RD STE 205\nMEDINA, OH 44256', '216-704-2902', 'Julio chavez', '3', 'Jtctruckingco@gmail.com', 'waiting-call', '2022-06-28 06:16:52.475483', 0, NULL, 5, NULL),
(12375, 'MC646613', 'Karly Transportation Llc', '3095 Seven Bridges Rd\nMedina, OH 44256-6231', '208-571-1637', 'Marcela Nicolae', '1', 'marci_sunshine@yahoo.com', 'waiting-call', '2022-06-28 06:16:52.528678', 0, NULL, 5, NULL),
(12376, 'MC1178478', 'THIRTEENSTAR LOGISTICS LLC', '5804 ARLYNE LN\nMEDINA, OH 44256 ', '239-770-4316', 'BENJAMIN THOMAS KUSE', '1', 'ben@thirteenstarlogistics.com', 'waiting-call', '2022-06-28 06:16:52.541697', 0, NULL, 5, NULL),
(12377, 'MC1189842', 'Trident Transport LLC', '6674 Meadowood Drive\nMedina, OH 44256', '347-443-4533', 'Oleg bogdanovych Melnychuk', '1', 'president@tridenttransportllc.com', 'waiting-call', '2022-06-28 06:16:52.554147', 0, NULL, 5, NULL),
(12378, 'MC894859', 'Joni Trans Llc', '7725 Fern Drive\nMentor, OH 44060', '440-231-2350', 'JOSIP PAPIC', '2', 'jonitransllc@gmail.com', 'waiting-call', '2022-06-28 06:16:52.564990', 0, NULL, 5, NULL),
(12379, 'MC801578', '4 Way Transport Llc', '4211 Old Osprey Cir\nMiamisburg, OH 45342-0707', '443-858-4090', 'nariman yasinov', '2', '4waytransport@gmail.com?', 'waiting-call', '2022-06-28 06:16:52.578023', 0, NULL, 5, NULL),
(12380, 'MC1172299', 'AMERICAN PRIDE CONCRETE & CONSTRUCTION LLC', '1125 BERMUDA DR\nMIAMISBURG, OH 45342', '937-572-4983', 'Trinity G Kersey', '1', 'TGKersey@gmail.com?', 'waiting-call', '2022-06-28 06:16:52.589816', 0, NULL, 5, NULL),
(12381, 'MC904327', 'FROZEN TRANSPORT EXPRESS LLC', '9720 NETTLETON PARK\nMIAMISBURG, OH 45342', '937-202-0002', 'Saidkamol Saydullaev', '1', 'frozentransport.expressllc@gmail.com', 'waiting-call', '2022-06-28 06:16:52.604028', 0, NULL, 5, NULL),
(12382, 'MC61580', 'B Morris Trucking Llc', '2471 Bendel Dr\nMiddletown, OH 45044-8127', '513-256-7726', 'Brian Morris', '1', 'bmorristrucking214@gmail.com', 'waiting-call', '2022-06-28 06:16:52.622983', 0, NULL, 5, NULL),
(12383, 'MC1120758', 'Brar Trucking LLC DBA 2020 Freight', '2916 Plymouth Street\nMiddletown, OH 45044', '513-571-8313', 'Harman', '5', 'H2020freight@yahoo.com', 'waiting-call', '2022-06-28 06:16:52.639556', 0, NULL, 5, NULL),
(12384, 'MC1125999', 'Rana Transport Inc', '109 N Clinton St Apt 2B\nMiddletown, OH 45042-2091', '513-465-9938', '', '2', '', 'waiting-call', '2022-06-28 06:16:52.655850', 0, NULL, 5, NULL),
(12385, 'MC128032', 'Wajb Transport Inc', '1219 Jackson Ln Apt 160\nMiddletown, OH 45044-6157', '609-576-0852', 'Brijpal Singh', '2', 'Brijpal0365@gmail.com', 'waiting-call', '2022-06-28 06:16:52.667496', 0, NULL, 5, NULL),
(12386, 'MC1306762', 'Brar Logistics LLC', '810 Main Street\nMilford, OH 45150', '317-903-7400', '', '', '', 'waiting-call', '2022-06-28 06:16:52.680462', 0, NULL, 5, NULL),
(12387, 'MC84904', 'White Horse Transportation Llc', '11 Robbie Rdg Apt 9\nMilford, OH 45150-1652', '513-766-2281', 'Don Brannen', '2', 'whitehorsetransportationllc@gmail.com', 'waiting-call', '2022-06-28 06:16:52.692292', 0, NULL, 5, NULL),
(12388, 'MC939146', 'Bombay Trans Inc', '415 Brandon Dr\nMonroe, OH 45050-2489', '513-465-5212', 'Navdeep Singh', '2', 'bombay.trans@yahoo.com', 'waiting-call', '2022-06-28 06:16:52.706511', 0, NULL, 5, NULL),
(12389, 'MC901196', 'Eagle Eyes Transport LLC', '913 Sleepy Hollow Dr\nMonroe, OH 45050-1759', '513-827-0786', 'Gurdit Singh', '', 'eagleeyes0786@hotmail.com', 'waiting-call', '2022-06-28 06:16:52.725318', 0, NULL, 5, NULL),
(12390, 'MC1052154', 'Jujhar Express Llc', '507 Babbling Brooke Dr\nMonroe, OH 45050-2512 ', '513-800-7583', 'dalwinder dhillon', '', 'jujharexpress@gmail.com', 'waiting-call', '2022-06-28 06:16:52.738391', 0, NULL, 5, NULL),
(12391, 'MC128108', 'Reliance Freight Llc', '824 Cold Water Dr\nMonroe, OH 45050-2546', '513-510-8553', 'Dilraj sandhu', '2', 'Reliancefreightllc@gmail.com', 'waiting-call', '2022-06-28 06:16:52.788042', 0, NULL, 5, NULL),
(12392, 'MC906381', 'Sandhu Xpress Llc', '411 Brandon Dr\nMonroe, OH 45050-2489', '513-328-4819', 'Mandip singh', '2', 'Sandhuxpressllc@gmail.com', 'waiting-call', '2022-06-28 06:16:52.819589', 0, NULL, 5, NULL),
(12393, 'MC927782', 'TRANS CARGO INC', '737 SONYA CT\nMONROE, OH 45050', '917-463-9100', '', '', '', 'waiting-call', '2022-06-28 06:16:52.857025', 0, NULL, 5, NULL),
(12394, 'MC898136', 'Anatoly Yaromich', '2102 Tabor Ridge Rd NE\nNew Philadelphia, OH 44663-7015', '330-412-2228', '', '', 'yton1212@yahoo.com', 'waiting-call', '2022-06-28 06:16:52.894672', 0, NULL, 5, NULL),
(12395, 'MC837670', 'ROB Vernon Lsd To Knd Transport Llc', '27315 Locust Grove Rd\nNew Holland, OH 43145-9720', '740-225-2175', 'Daniel Matheny', '4', 'danmatheny1970@gmail.com', 'waiting-call', '2022-06-28 06:16:52.931350', 0, NULL, 5, NULL),
(12396, 'MC1032122', 'T4D LLC', '5573 Paul Mckee Rd\nNew Paris, OH 45347-8101', '937-459-8038', 'TylanReynolds', '2', 'T4DLLC@AOL.COM?', 'waiting-call', '2022-06-28 06:16:52.943426', 0, NULL, 5, NULL),
(12397, 'MC1029011', 'Xm Express Way Llc', '\n5195 Hampsted Village Center Way Ste 133\nNew Albany, OH 43054-8331', '614-816-5173', 'Khalid', '1', 'Xmexpressway@gmail.com', 'waiting-call', '2022-06-28 06:16:52.955234', 0, NULL, 5, NULL),
(12398, 'MC1351820', 'SABO HAULING LLC', '314 Dry Creek Road\nNewark, OH 43055', '740-403-3369', '', '', '', 'waiting-call', '2022-06-28 06:16:52.979818', 0, NULL, 5, NULL),
(12399, 'MC1098638', 'BOZ TRUCKING LLC', '16641 BENNETT RD\nN ROYALTON, OH 44133', '440-212-9488', 'Keith Layton', '1', '2020kflservices@gmail.com', 'waiting-call', '2022-06-28 06:16:52.991531', 0, NULL, 5, NULL),
(12400, 'MC907269', 'Road Kings Inc', '9511 Sunrise Blvd Unit J19\nN Royalton, OH 44133-3431', '440-457-7676', 'Nina Tubin', '4', 'roadkingsinc@gmail.com', 'waiting-call', '2022-06-28 06:16:53.005397', 0, NULL, 5, NULL),
(12401, 'MC107468', 'RNS Express Llc', '3847 S Hametown Rd\nNorton, OH 44203-5412', '330-335-9066', 'katarina sudicki', '2', 'rnsexpress@aol.com', 'waiting-call', '2022-06-28 06:16:53.016258', 0, NULL, 5, NULL),
(12402, 'MC1198211', 'HWB Freight Express LLC', '10200 VIENNA DR\nPARMA, OH 44130', '216-635-8253', 'Hashem Baharoon', '2', 'Hwbfreightexpress@gmail.com', 'waiting-call', '2022-06-28 06:16:53.029266', 0, NULL, 5, NULL);
INSERT INTO `va2pow` (`cid`, `s_mc_number`, `s_company_name`, `street_address`, `s_phone_number`, `client_name`, `pow`, `s_email`, `s_status`, `last_changed`, `times_called`, `status_comments`, `con_digit`, `voice_mail`) VALUES
(12403, 'MC1117118', 'LEMON TRANSPORT LLC', '8301 SIERRA OVAL\nPARMA, OH 44130', '216-904-2775', '', '', '', 'waiting-call', '2022-06-28 06:16:53.049286', 0, NULL, 5, NULL),
(12404, 'MC919897', 'OTI TRANSPORTATION LLC', '1920 FAY DR\nPARMA, OH 44134', '440-590-3396', 'OLEG KUZIEV', '1', 'otitransportationllc@gmail.com', 'waiting-call', '2022-06-28 06:16:53.082531', 0, NULL, 5, NULL),
(12405, 'MC1077898', 'Durable Trucking Services LLC', '14960 HAVENS CORNERS RD SW\nPATASKALA, OH 43062 ', '315-247-0617', 'Mitra', '2', '', 'waiting-call', '2022-06-28 06:16:53.116236', 0, NULL, 5, NULL),
(12406, 'MC959786', 'Huffys Movers Inc', '25 West Ave SW\nPataskala, OH 43062-8891 ', '614-376-3157', 'Tarek Alhesay', '3', 'Huffysmovers@gmail.com', 'waiting-call', '2022-06-28 06:16:53.153963', 0, NULL, 5, NULL),
(12407, 'MC97790', 'Kimble Trucking Ltd', '1556 Roscommon Dr\nPataskala, OH 43062-7017', '614-736-7440', 'Jason David Kimble', '2', 'Freighthaulers614@att.net', 'waiting-call', '2022-06-28 06:16:53.190056', 0, NULL, 5, NULL),
(12408, 'MC1130069', 'AP Express Transport LLC', '\n27511 HOLIDAY LN STE 207\nPERRYSBURG, OH 43551', '419-283-8131', 'Dashay Hill', '', 'Dashay.Hill@mpexpresstransport.com', 'waiting-call', '2022-06-28 06:16:53.211045', 0, NULL, 5, NULL),
(12409, 'MC1330396', 'Crawford Brothers Trucking LLC', '1387 Logan Lane\nPerrysburg, OH 43551', '567-277-3341', 'Lakisha Woodmore', '1', 'crawford_brothers@yahoo.com', 'waiting-call', '2022-06-28 06:16:53.223025', 0, NULL, 5, NULL),
(12410, 'MC114998', 'Gm Whetsel Transport Llc', '30550 E River Rd\nPerrysburg, OH 43551-3439', '419-461-0982', 'Greg Whetsel', '2', 'gregwhetsel@gmail.com', 'waiting-call', '2022-06-28 06:16:53.237297', 0, NULL, 5, NULL),
(12411, 'MC1054165', 'Jest Trucking Llc', '26800 WOODMONT DRIVE #113\nPerrysburg, OH 43551', '205-222-2536', 'Steven Warren', '1', 'jesttrucking@gmail.com', 'waiting-call', '2022-06-28 06:16:53.288660', 0, NULL, 5, NULL),
(12412, 'MC1257577', 'J & T TRANSPORTATION LLC', '181 Patterson Street\nPickerington, OH 43147', '614-598-4464', 'suweiba M mahs', '1', 'adamseid200@gmail.com', 'waiting-call', '2022-06-28 06:16:53.315920', 0, NULL, 5, NULL),
(12413, 'MC92463', 'Jeron Lewis Transportation', '244 Evergreen Ct\nPickerington, OH 43147-7722', '313-414-1443', 'Jeron Lewis', '1', '', 'waiting-call', '2022-06-28 06:16:53.337960', 0, NULL, 5, NULL),
(12414, 'MC1234107', 'NORTHWAY TRANSPORT LLC', '3027 OLD WARSON DR\nPICKERINGTON, OH 43147', '614-805-8170', 'Na', '', 'northwaytransportoh@gmail.com?', 'waiting-call', '2022-06-28 06:16:53.358474', 0, NULL, 5, NULL),
(12415, 'MC897875', 'Webo Cargo Llc', '9861 Camelot St\nPickerington, OH 43147-8579', '614-300-1289', 'ahmed hussein', '1', 'ahmedwebo29@gmail.com', 'waiting-call', '2022-06-28 06:16:53.388398', 0, NULL, 5, NULL),
(12416, 'MC96181', 'Proud Motor Carrier Llc', '71 Ridgedale Ct\nPowell, OH 43065-9362 ', '614-592-6288', 'Matthew Carroll', '2', 'Proudmotorcarrier@gmail.com', 'waiting-call', '2022-06-28 06:16:53.409002', 0, NULL, 5, NULL),
(12417, 'MC693990', 'ASHLEY FREIGHT LLC', '5716 WYGLE RD\nRAVENNA, OH 44266', '919-771-9429', 'Sean Ashley', '1', 'ashleyfreightllc@hotmail.com', 'waiting-call', '2022-06-28 06:16:53.420755', 0, NULL, 5, NULL),
(12418, 'MC945036', 'B&T Truck LLC', '6577 FIRTHORN AVE\nREYNOLDSBURG, OH 43068', '614-377-2456', 'Biniam Haile', '1', '', 'waiting-call', '2022-06-28 06:16:53.432825', 0, NULL, 5, NULL),
(12419, 'MC1242378', 'Be One Group LLC', '153 Long Cay Lane\nReynoldsburg, OH 43068', '917-741-1645', 'Dembo jagana', '2', 'beonegroupllc1@gmail.com', 'waiting-call', '2022-06-28 06:16:53.444805', 0, NULL, 5, NULL),
(12420, 'MC131560', 'Bodixie Transportation Llc', '8245 Clear Path Dr\nReynoldsburg, OH 43068-9448', '330-518-4565', 'Terrence Rhodes', '1', 'Terrock35@outlook.com', 'waiting-call', '2022-06-28 06:16:53.457585', 0, NULL, 5, NULL),
(12421, 'MC1035943', 'Devida Mclemore', '2187 Lynbridge Dr\nReynoldsburg, OH 43068', '614-427-8351', 'Devida McLemore', '3', 'Dmac4lyf@gmail.com', 'waiting-call', '2022-06-28 06:16:53.471144', 0, NULL, 5, NULL),
(12422, 'MC1181810', 'Isaies Transportation Llc', '7045 Treebourne Drive\nReynoldsburg, OH 43068', '614-500-0005', '', '', '', 'waiting-call', '2022-06-28 06:16:53.489547', 0, NULL, 5, NULL),
(12423, 'MC82708', 'Kawral Freight System Llc', '6910 Tanya Ter\nReynoldsburg, OH 43068-1777', '614-432-4583', 'Sileymane sall', '2', '', 'waiting-call', '2022-06-28 06:16:53.502654', 0, NULL, 5, NULL),
(12424, 'MC727723', 'MERI SULADZE', '7285 FALLOW TRAIL DR\nREYNOLDSBURG, OH 43068', '614-607-0360', '', '', '', 'waiting-call', '2022-06-28 06:16:53.522411', 0, NULL, 5, NULL),
(12425, 'MC1176898', 'Mt Material Transit Llc', '7974 Truman Trail\nReynoldsburg, OH 43068', '740-206-7035', 'Anthony Wartley', '3', 'mtmaterialtransit@yahoo.com?', 'waiting-call', '2022-06-28 06:16:53.552594', 0, NULL, 5, NULL),
(12426, 'MC1009584', 'Nufortune Logistics Llc', '365 Hither Creek Ln\nReynoldsburg, OH 43068-7164', '615-554-4515', 'Asha Moallim', '2', 'Nufortunellc@gmail.com', 'waiting-call', '2022-06-28 06:16:53.564034', 0, NULL, 5, NULL),
(12427, 'MC1337310', 'O & S Transportation LLC', '2660 Prendergast Place\nReynoldsburg, OH 43068', '319-536-6773', 'Sudarshan khanal', '1', '', 'waiting-call', '2022-06-28 06:16:53.575676', 0, NULL, 5, NULL),
(12428, 'MC1334463', 'Reliable Cargo Logistics LLC', '7763 FEATHERLEAF CT\nREYNOLDSBURG, OH 43068', '614-312-3808', 'Aly Ba', '2', 'alyba1@yahoo.com', 'waiting-call', '2022-06-28 06:16:53.588964', 0, NULL, 5, NULL),
(12429, 'MC122654', 'Rosel Transportation LLC', '975 Fortkort Drive\nReynoldsburg, OH 43068', '614-329-1256', 'ADNAN CHAUDHARY', '1', 'ADNAN493@HOTMAIL.COM', 'waiting-call', '2022-06-28 06:16:53.600155', 0, NULL, 5, NULL),
(12430, 'MC1107051', 'SAMS TRANSPORTATION EXPRESS LLC', '8211 tributary ln\nREYNOLDSBURG, OH 43068', '380-222-0479', 'Samed', '3', 'Samed102829@hotmail.com', 'waiting-call', '2022-06-28 06:16:53.613151', 0, NULL, 5, NULL),
(12431, 'MC1186913', 'TBM LOGISTICS INC', '7648 SLATE RIDGE BLVD SUITE 110\nREYNOLDSBURG, OH 43068', '347-761-7525', 'dovrangeldi hojanepesov', '1', 'tbmlogisticsinc@yahoo.com', 'waiting-call', '2022-06-28 06:16:53.624886', 0, NULL, 5, NULL),
(12432, 'MC1175855', 'ZARA TRUCKING LLC', '7212 LINDA TRCE\nREYNOLDSBURG, OH 43068', '727-657-8668', 'Zaidom Yohannes', '2', 'Zaratruckingoh@gmail.com', 'waiting-call', '2022-06-28 06:16:53.661529', 0, NULL, 5, NULL),
(12433, 'MC1010787', 'Damron Transport Llc', '62 Hawk Rdg\nRittman, OH 44270-1822', '419-360-2571', '', '', '', 'waiting-call', '2022-06-28 06:16:53.699463', 0, NULL, 5, NULL),
(12434, 'MC1136194', 'RESPONSIVE LOGISTICS LLC', '2603 STEWART DR\nRITTMAN, OH 44270', '330-814-2128', 'Matthew Sintoni', '1', 'Responsivelogistics@icloud.com', 'waiting-call', '2022-06-28 06:16:53.720606', 0, NULL, 5, NULL),
(12435, 'MC244291', 'Joseph Rini & Daughters Trucking', 'PO Box 337\nGrand River, OH 44045-0337', '440-357-6704', 'Joe/Connie Rini', '2', 'crini59@oh.rr.com', 'waiting-call', '2022-06-28 06:16:53.741818', 0, NULL, 5, NULL),
(12436, 'MC1283704', 'DVISION DELIVERY LLC', '124 E MARKET ST\nSANDUSKY, OH 44870', '312-989-5275', 'Sedric Cook', '', 'dvisiondelivery@gmail.com', 'waiting-call', '2022-06-28 06:16:53.801613', 0, NULL, 5, NULL),
(12437, 'MC1190679', 'BANNER LOGISTICS LLC', '853 MEADVIEW DR\nSEVEN HILLS, OH 44131', '254-247-7388', 'Karlo Rivera', '2', 'bannerlogisticsllc@gmail.com', 'waiting-call', '2022-06-28 06:16:53.824190', 0, NULL, 5, NULL),
(12438, 'MC1383268', 'NATIONAL FREIGHT LLC', '300 EAST BUSINESS WAY SUITE 200 # 2435\nSHARONVILLE, OH 45241', '213-884-7990', '', '', '', 'waiting-call', '2022-06-28 06:16:53.843126', 0, NULL, 5, NULL),
(12439, 'MC1165219', 'HKK TRANSPORT INC', '32027 HAMILTON CT\nSOLON, OH 44139', '201-562-8191', 'kiran kaur', '2', '', 'waiting-call', '2022-06-28 06:16:53.879600', 0, NULL, 5, NULL),
(12440, 'MC6044', 'REEN TRANSPORTATION LLC', '32365 FRANKLIN DR APT 101\nSOLON, OH 44139', '440-591-3673', 'Jatinder Singh', '2', 'jatinderreen1967@gmail.com', 'waiting-call', '2022-06-28 06:16:53.900972', 0, NULL, 5, NULL),
(12441, 'MC1060374', 'Hardline Express', '3340 Ballentine Pike\nSpringfield, OH 45502-8667 ', '937-346-7808', 'Taylor Jackson', '1', 'Taylor@HardlineExpress.com', 'waiting-call', '2022-06-28 06:16:53.920993', 0, NULL, 5, NULL),
(12442, 'MC239881', 'Hirtz Logistics Llc', '3894 Petre Rd\nSpringfield, OH 45502-8750', '937-360-6174', 'MIkea Hirtzinger', '3', 'Hirtzingermike@gmail.com', 'waiting-call', '2022-06-28 06:16:53.941039', 0, NULL, 5, NULL),
(12443, 'MC16590', 'IBERIA LOGISTICS INC.', '1000 E PLEASANT ST\nSPRINGFIELD, OH 45505', '332-600-3979', 'David Sarali', '2', 'vvitransportation@gmail.com?', 'waiting-call', '2022-06-28 06:16:53.954232', 0, NULL, 5, NULL),
(12444, 'MC1302953', 'ROSE CITY LOGISTICS LLC', '2040 S BURNETT RD\nSPRINGFIELD, OH 45505', '937-561-1621', 'Mario Troutman', '1', 'Mariotroutman@gmail.com', 'waiting-call', '2022-06-28 06:16:53.965747', 0, NULL, 5, NULL),
(12445, 'MC16097', 'United Way Llc', '311 Pleasant Meadow Blvd Apt B\nStow, OH 44224-4968', '330-610-0216', 'Alex', '', 'eunitedway@gmail.com', 'waiting-call', '2022-06-28 06:16:53.980263', 0, NULL, 5, NULL),
(12446, 'MC973260', 'Gill Trucking Inc', '1484 Crescent Dr\nStreetsboro, OH 44241-4210', '330-554-6261', 'Manpreet Gill', '1', 'manny@gilltruckinginc.net', 'waiting-call', '2022-06-28 06:16:54.003590', 0, NULL, 5, NULL),
(12447, 'MC775362', 'Db Transport Services Llc', '\n17075 Hawks Lookout Ln\nStrongsville, OH 44136-6220', '216-644-5272', 'Erik', '', 'dbtransportservices@gmail.com', 'waiting-call', '2022-06-28 06:16:54.015188', 0, NULL, 5, NULL),
(12448, 'MC854226', 'Kmc Trucking Llc', '13500 Pearl Road STE 139 PMB 312\nStrongsville, OH 44136', '941-321-2498', 'Erno Orgovan', '1', 'kmctrucking@yahoo.com', 'waiting-call', '2022-06-28 06:16:54.026848', 0, NULL, 5, NULL),
(12449, 'MC986737', 'LV Express Llc', '14354 Hastings Ct\nStrongsville, OH 44136-8159', '440-590-5365', '', '', '', 'waiting-call', '2022-06-28 06:16:54.041558', 0, NULL, 5, NULL),
(12450, 'MC1158012', 'PNV LOGISTICS CO LLC', '\n13114 ROSEWOOD LN\nSTRONGSVILLE, OH 44136', '440-212-2701', '', '', '', 'waiting-call', '2022-06-28 06:16:54.053562', 0, NULL, 5, NULL),
(12451, 'MC843964', 'RM Transport Llc', '8875 Marks Rd\nStrongsville, OH 44149-1008', '216-513-3529', 'Roman Matev', '2', 'Rmtransport13@gmail.com', 'waiting-call', '2022-06-28 06:16:54.066302', 0, NULL, 5, NULL),
(12452, 'MC1341747', 'Petra Transport Llc', '39 Grandview Avenue\nStruthers, OH 44471', '210-793-0814', '', '', '', 'waiting-call', '2022-06-28 06:16:54.078132', 0, NULL, 5, NULL),
(12453, 'MC1310770', 'Quick Routes Transportation & Delivery LLC', '\n541 WEST AVE STE A\nTALLMADGE, OH 44278 ', '330-391-6494', 'Michelle bronner', '2', 'Bronner951@gmail.com?', 'waiting-call', '2022-06-28 06:16:54.482121', 0, NULL, 5, NULL),
(12454, 'MC1184839', 'A TWO Z TRANSPORTATION LLC', '3675 North County Road 15\nTiffin, OH 44883', '419-463-7989', 'Joshua Elijah Jones', '1', 'atwoztransportation@gmail.com', 'waiting-call', '2022-06-28 06:16:54.519796', 0, NULL, 5, NULL),
(12455, 'MC1210803', '2SONS TRUCKING LLC', '\n1743 LONDON RIDGE CT\nTOLEDO, OH 43615 ', '419-699-0144', 'LaToya Goodwin', '1', 'twosonstrucking@gmail.com', 'waiting-call', '2022-06-28 06:16:54.558659', 0, NULL, 5, NULL),
(12456, 'MC1117904', 'ANT CARRIERS LLC', '900 HIGH PINES DR\nTOLEDO, OH 43615 ', '567-694-4268', 'Antoine Watson', '1', 'antcarriers@outlook.com', 'waiting-call', '2022-06-28 06:16:54.595368', 0, NULL, 5, NULL),
(12457, 'MC941917', 'Bowers Logistics Llc', '6226 N Summit St\nToledo, OH 43611-1243', '419-705-0470', 'Teague Bowers', '', 'teague.bowers@gmail.com', 'waiting-call', '2022-06-28 06:16:54.632011', 0, NULL, 5, NULL),
(12458, 'MC1108291', 'EXCLUSIVE TRUCKING ON DEMAND LLC', '1720 MONROE ST\nTOLEDO, OH 43604', '602-781-1040', 'tony', '2', '', 'waiting-call', '2022-06-28 06:16:54.678329', 0, NULL, 5, NULL),
(12459, 'MC1263472', 'FAMILY DREAM RELOCATION LLC', '5702 ANGOLA RD LOT 171\nTOLEDO, OH 43615', '419-410-5364', 'Larry cechin', '2', 'familydreamtantara12@gmail.com', 'waiting-call', '2022-06-28 06:16:54.715007', 0, NULL, 5, NULL),
(12460, 'MC1204621', 'IDP TRUCKING LLC', '5249 SECOR RD STE 3\nTOLEDO, OH 43623', '419-481-6305', 'Eric Hughes', '1', 'info@idptrucking.com', 'waiting-call', '2022-06-28 06:16:54.761310', 0, NULL, 5, NULL),
(12461, 'MC1370175', 'N.F.S LOGISTICS LLC', '1212 STEEPLE CHASE CIR APT 19D\nTOLEDO, OH 43615', '937-825-5405', 'Faustin NDINDILIYIMANA', '1', 'nfslogisticsllc22@gmail.com', 'waiting-call', '2022-06-28 06:16:54.821758', 0, NULL, 5, NULL),
(12462, 'MC1197594', 'NARS TRANSPORTATION LLC', '2051 W ALEXIS RD APT A03\nTOLEDO, OH 43613 ', '419-721-8598', '', '', '', 'waiting-call', '2022-06-28 06:16:54.866730', 0, NULL, 5, NULL),
(12463, 'MC1179638', 'North Line Trucking Co', '1026 Booth Avenue\nToledo, OH 43608', '419-779-7907', 'Beionca', '2', 'northlinetrucking@gmail.com', 'waiting-call', '2022-06-28 06:16:54.907154', 0, NULL, 6, NULL),
(12464, 'MC1244853', 'Pull Em Freight LLC', '3653 Marine Rd STE 2\nToledo, OH 43609', '419-208-9110', 'Jai Terrell', '1', 'admin@pullemfreight.com', 'waiting-call', '2022-06-28 06:16:54.924765', 0, NULL, 6, NULL),
(12465, 'MC1064972', 'RMSS Logistics', '3060 South Ave Back Unit\nToledo, OH 43609-1334', '419-205-1945', 'Mohammad Hamdalh', '3', 'Mohamdalh@yahoo.com', 'waiting-call', '2022-06-28 06:16:54.946112', 0, NULL, 6, NULL),
(12466, 'MC885298', 'SFTF LLC', '\n2620 Overbrook dr\nToledo, OH 43614', '419-271-8664', 'Paul King', '', 'Kngvisn@yahoo.com', 'waiting-call', '2022-06-28 06:16:54.957901', 0, NULL, 6, NULL),
(12467, 'MC504876', 'State Line Trucking Llc', '\n6225 Sugarberry Lane\nToledo, OH 43615', '734-320-3104', 'Yusuf', '1', 'yosef.717@gmail.com', 'waiting-call', '2022-06-28 06:16:54.979145', 0, NULL, 6, NULL),
(12468, 'MC1303724', 'TRANSPORT-LOGISTICS LLC', '5328 Claxton Street\nToledo, OH 43615', '888-891-1189', 'Nick', '7', '', 'waiting-call', '2022-06-28 06:16:55.015765', 0, NULL, 6, NULL),
(12469, 'MC657538', 'The Scorpions Trucking Llc', '3550 Executive Pkwy Ste 343\nToledo, OH 43606-1379', '847-828-5485', 'Mike', '2', '', 'waiting-call', '2022-06-28 06:16:55.066563', 0, NULL, 6, NULL),
(12470, 'MC1086264', 'WHITFIELD TRANSPORTATION LLC', '2525 EASTGATE RD SUITE 10\nTOLEDO, OH 43614', '419-205-8018', '', '2', 'Dispatch@overwhittransport.com', 'waiting-call', '2022-06-28 06:16:55.087038', 0, NULL, 6, NULL),
(12471, 'MC1092407', 'blue bird transportation LLC', '1030 North Holland Sylvania\nToledo, OH 43615', '419-699-9890', 'SAM', '2', 'Bluebirdtransportationllc@gmail.com', 'waiting-call', '2022-06-28 06:16:55.115826', 0, NULL, 6, NULL),
(12472, 'MC1033147', 'Zuni Transport LLC', '\n1580 Cheshire Road Apt 2B\nTroy, OH 45373', '847-707-0308', '', '', '', 'waiting-call', '2022-06-28 06:16:55.211208', 0, NULL, 6, NULL),
(12473, 'MC1134101', 'NAR EXPRESS TRUCKING LLC', '9931 DARROW PARK DR APT 215M\nTWINSBURG, OH 44087 ', '216-666-0444', 'Manjit Singh Nar', '2', 'narexpresstrucking@gmail.com', 'waiting-call', '2022-06-28 06:16:55.305769', 0, NULL, 6, NULL),
(12474, 'MC1237064', 'Prezidential Transport LLC', '\n1731 Chestnut Trail Drive\nTwinsburg, OH 44087', '614-554-3064', 'Kevin Hightower', '1', 'kdhtower@gmail.com', 'waiting-call', '2022-06-28 06:16:55.352399', 0, NULL, 6, NULL),
(12475, 'MC113672', 'Rai Transport Llc', '1881 Maplegrove Dr\nTwinsburg, OH 44087-1953', '216-904-9852', 'sarbjit singh', '1', 'raitransport97@gmail.com?', 'waiting-call', '2022-06-28 06:16:55.407491', 0, NULL, 6, NULL),
(12476, 'MC1238484', 'BRINKMAN TRANSPORT SERVICES LLC', '1235 INDUSTRIAL DR\nVAN WERT, OH 45891', '419-203-6810', 'Joshua A. Brinkman', '2', 'josh@americanpaintrecyclers.com', 'waiting-call', '2022-06-28 06:16:55.467412', 0, NULL, 6, NULL),
(12477, 'MC1114267', 'ABOO LOGISTICS LLC', '\n492 TULIP TRL\nWADSWORTH, OH 44281', '330-840-8444', '', '', '', 'waiting-call', '2022-06-28 06:16:55.506983', 0, NULL, 6, NULL),
(12478, 'MC847864', 'BCH LLC', '172 FORREST ST NW\nWARREN, OH 44483', '234-706-4144', 'Brian Hebrock', '', 'bchllc1020@gmail.com', 'waiting-call', '2022-06-28 06:16:55.565765', 0, NULL, 6, NULL),
(12479, 'MC1359794', 'CARL BROWNS TRUCKING LLC', '1597 WOODBINE AVE SE\nWARREN, OH 44484', '330-219-5941', 'Marcus Morris', '2', 'Carlbrownstransportllc@gmail.com', 'waiting-call', '2022-06-28 06:16:55.630300', 0, NULL, 6, NULL),
(12480, 'MC293087', 'Miller Farm & Trucking', '\n8347 Prairie Rd NW\nWashington Court House, OH 43160-9051', '740-572-6476', 'KEVIN', '', '', 'waiting-call', '2022-06-28 06:16:55.678635', 0, NULL, 6, NULL),
(12481, 'MC612615', 'Casbro Trucking Llc', '48 State Rt 108\nWauseon, OH 43567', '419-388-6208', 'shawn', '1', 'casbro79llc@gmail.com', 'waiting-call', '2022-06-28 06:16:55.728453', 0, NULL, 6, NULL),
(12482, 'MC666693', 'Jack Stewart Trucking', '515 W B St\nWellston, OH 45692-1011', '740-577-1374', 'JACK L STEWART', '2', 'jackstewarttrucking@hotmail.com', 'waiting-call', '2022-06-28 06:16:55.810372', 0, NULL, 6, NULL),
(12483, 'MC1229044', 'GLC CARGO LLC', '8050 BECKETT CENTER DR STE 126\nWEST CHESTER, OH 45069', '360-669-8281', 'dilshod abdurakhmonov', '10', 'info@glccargollc.com', 'waiting-call', '2022-06-28 06:16:55.876717', 0, NULL, 6, NULL),
(12484, 'MC846034', 'GTB TRANSPORT INC', '8302 MISTY SHORE DR\nWEST CHESTER, OH 45069', '513-693-6999', 'raj dhillon', '1', 'gtbtransport@hotmail.com', 'waiting-call', '2022-06-28 06:16:55.955356', 0, NULL, 6, NULL),
(12485, 'MC91799', 'GYT TRANS INC', '6903 FOUNDERS ROW APT 106\nWEST CHESTER, OH 45069-5184', '513-816-9654', 'Suruchi kapoor', '2', 'Gyttrans@gmail.com', 'waiting-call', '2022-06-28 06:16:55.976392', 0, NULL, 6, NULL),
(12486, 'MC924274', 'J K Logistics Llc', '\n8147 Autumn Ln\nWest Chester, OH 45069-2889', '513-501-0444', 'balwinder singh mavi', '1', 'jklog11@gmail.com', 'waiting-call', '2022-06-28 06:16:55.988557', 0, NULL, 6, NULL),
(12487, 'MC1181163', 'LEGEND ROADLINER INC', '\n6672 LAKESIDE DR APT 310F\nWEST CHESTER, OH 45069', '217-343-3051', 'Simranjeet singh', '2', 'Legendroadliner@gmail.com', 'waiting-call', '2022-06-28 06:16:56.001035', 0, NULL, 6, NULL),
(12488, 'MC916498', 'Sidhu Transport Corporation', '7895 Planters Ln\nWest Chester, OH 45069-9440', '513-266-0885', 'swaran sidhu', '2', 'stc1699@gmail.com', 'waiting-call', '2022-06-28 06:16:56.024524', 0, NULL, 6, NULL),
(12489, 'MC1258137', 'UZB TRANSPORT LLC', '7143 SPRUCEWOOD CT\nWEST CHESTER, OH 45241', '215-594-0868', 'sardor', '4', 'uzbtransports@gmail.com', 'waiting-call', '2022-06-28 06:16:56.049232', 0, NULL, 6, NULL),
(12490, 'MC1204784', 'BUYA LOGISTICS LLC', '4471 YELLOWHAMMER DR\nWESTERVILLE, OH 43081', '614-315-1466', 'Mohamed Koroma', '2', 'Buyalogisticsllc@gmail.com', 'waiting-call', '2022-06-28 06:16:56.074713', 0, NULL, 6, NULL),
(12491, 'MC1222937', 'EAGLEWAY EXPRESS LLC', '3361 OLD PROVIDENCE LN\nWESTERVILLE, OH 43081 ', '703-505-7504', 'Mohamed Isse', '3', 'eaglewayx@gmail.com?', 'waiting-call', '2022-06-28 06:16:56.099567', 0, NULL, 6, NULL),
(12492, 'MC1078503', 'Freedom Truckers Llc', '758 Westray Dr\nWesterville, OH 43081-3764', '614-824-7872', 'Khalif Diini', '5', 'freedomtruckers31@gmail.com', 'waiting-call', '2022-06-28 06:16:56.111313', 0, NULL, 6, NULL),
(12493, 'MC883687', 'New Albany Trucking Transportation Llc', '5848 Edge Of Vlg\nWesterville, OH 43081-8647', '614-747-0442', 'Gurdeep singh', '2', 'newalbany2014@gmail.com', 'waiting-call', '2022-06-28 06:16:56.124695', 0, NULL, 6, NULL),
(12494, 'MC1161091', 'PDQ TRUCKING LLC', '7176 Sherbrook Drive\nWesterville, OH 43082', '614-856-1000', 'Jamal Salih', '3', 'pdqtruckingllc@gmail.com', 'waiting-call', '2022-06-28 06:16:56.135978', 0, NULL, 6, NULL),
(12495, 'MC863832', 'Tiger Express Trucking LLC', '3469 Brazzaville Rd\nWesterville, OH 43081-4051', '614-403-9308', 'Yahye Y Ismail', '2', 'yahyeismail@yahoo.com', 'waiting-call', '2022-06-28 06:16:56.177801', 0, NULL, 6, NULL),
(12496, 'MC1364002', 'PD3 TRUCKING LLC', '3790 E BROAD ST\nWHITEHALL, OH 43213', '614-313-0116', 'polly glenn', '', 'pollyglenn1973@yahoo.com', 'waiting-call', '2022-06-28 06:16:56.201914', 0, NULL, 6, NULL),
(12497, 'MC579953', 'Wayne Osborn Trucking', '2562 State Route 380\nWilmington, OH 45177-9242', '937-725-0960', 'wayne', '', 'wosborntrucking@yahoo.com', 'waiting-call', '2022-06-28 06:16:56.226682', 0, NULL, 6, NULL),
(12498, 'MC56378', 'Gold Line Trucking Ltd', '\n1419 Boswall Dr\nWorthington, OH 43085-1734', '614-571-2751', 'mehar bhullar', '3', '', 'waiting-call', '2022-06-28 06:16:56.250043', 0, NULL, 6, NULL),
(12499, 'MC1173099', 'PANTHER TRANSPORTATION LLC', '125 W OLD WILSON BRIDGE RD APT 303\nWORTHINGTON, OH 43085', '616-334-6532', 'Abubakar Sharif', '2', 'Abu@panthertransportationllc.com', 'waiting-call', '2022-06-28 06:16:56.283451', 0, NULL, 6, NULL),
(12500, 'MC51798', 'ARJUN TRANSPORT LLC', '2930 AMBROSIA LANE EAST\nXENIA, OH 45385', '215-359-8033', 'bachiter singh', '1', 'arjuntransportllc@gmail.com', 'waiting-call', '2022-06-28 06:16:56.298623', 0, NULL, 6, NULL),
(12501, 'MC1136833', 'RNR Transport LLC', '831 East 3rd Street\nXenia, OH 45385', '937-397-1092', 'Deidre Francis', '2', 'francisdeidre@gmail.com', 'waiting-call', '2022-06-28 06:16:56.311547', 0, NULL, 6, NULL),
(12502, 'MC495281', 'I & S Transport', '1514 S Meridian Rd\nYoungstown, OH 44511-1141', '330-953-0327', 'SAM', '', '', 'waiting-call', '2022-06-28 06:16:56.323369', 0, NULL, 6, NULL),
(12503, 'MC1145331', 'Rodriguez Transport LLC', '1342 RIGBY STREET\nYOUNGSTOWN, OH 44506', '330-774-0321', 'Karen Rodriguez', '1', 'rodrigueztransportllc@zoho.com', 'waiting-call', '2022-06-28 06:16:56.335356', 0, NULL, 6, NULL),
(12504, 'MC1061451', 'Trinity Transfer Llc', '396 Ventura Dr\nYoungstown, OH 44505-1146 ', '234-232-2911', 'Jim Pence', '1', 'jpence38@aol.com', 'waiting-call', '2022-06-28 06:16:56.347963', 0, NULL, 6, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calls_tally`
--
ALTER TABLE `calls_tally`
  ADD PRIMARY KEY (`tally_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`perm_id`),
  ADD KEY `perm_mod` (`perm_mod`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`),
  ADD UNIQUE KEY `role_name` (`role_name`);

--
-- Indexes for table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD PRIMARY KEY (`role_id`,`perm_id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `perm_id` (`perm_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `va2pow`
--
ALTER TABLE `va2pow`
  ADD PRIMARY KEY (`cid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `calls_tally`
--
ALTER TABLE `calls_tally`
  MODIFY `tally_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=367;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `perm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `va2pow`
--
ALTER TABLE `va2pow`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12505;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD CONSTRAINT `roles_permissions_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `roles_permissions_ibfk_2` FOREIGN KEY (`perm_id`) REFERENCES `permissions` (`perm_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
