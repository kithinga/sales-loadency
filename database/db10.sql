-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 27, 2022 at 09:39 PM
-- Server version: 10.5.12-MariaDB
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id16399066_sales_db`
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
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `username`, `user_role`, `password`, `email`) VALUES
(14, 'winnie', 'user', '$2y$10$JwLHNrCq4bFAvCShI7q5z.wbbyqsfyll7NWukLDwM9q6Pv7LHBHba', 'menscfesz@gmail.com'),
(15, 'kithinga', 'developer', '$2y$10$iMwbr/JiiztjKuLqpLwpDuf5sy8tepZR7oZrGQRXbiQYafR.RbdAu', 'menscfesz@gmail.com'),
(16, 'frank', 'user', '$2y$10$SFwxK/SwGR4XbAgoOrttD.PYYNdVHZIblL94Zrj7OsLh9mFcd1raG', 'menscfesz@gmail.com'),
(17, 'yassin', 'admin', '$2y$10$XG2OiR35311Dxg1fH9RDxuvLLBDbhNJ/3Z/.0QQuXmkTxhaNSyqxK', 'menscfesz@gmail.com'),
(19, 'shiundu', 'user', '$2y$10$j5sqLn2qqh1nvmtHWECBSeipoTVtj2HuCT.EJ8suMWWSbs7wrcmAy', 'menscfesz@gmail.com'),
(20, 'new', 'user', '$2y$10$1dCKtVbsk0QgImZLw9woCeoXnDrabBXP47hj1antKYt9vAxrZgp4q', 'menscfesz@gmail.com'),
(21, 'dabo', 'user', '$2y$10$4y3jueqnHqroJl4goy0doOwrR.lEC0hZDwgPnHm7FqG./5Gf.9Kna', 'menscfesz@gmail.com'),
(22, 'kanja', 'user', '$2y$10$.vDkRyd7DfI7Y0iI/hMbwunji7qbaaG6PxW7854vv1ZHS8hgwmd02', 'menscfesz@gmail.com'),
(23, 'tesfae', 'user', '$2y$10$fEV9CSDZ2Oq19n67xvhht.MmaUe9jmpZukskIjXqi5/a0TxokUSDq', 'menscfesz@gmail.com');

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
  `caller_email` varchar(100) DEFAULT NULL,
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

INSERT INTO `calls_tally` (`tally_id`, `client_name`, `s_company_name`, `s_mc_number`, `s_phone_number`, `pow`, `caller_email`, `caller_name`, `s_status`, `last_changed`, `status_comments`, `times_called`, `street_address`, `voice_mail`) VALUES
(166, 'Tri Nugroho', 'Joshua Gen Trucking Llc', 'MC1079891', '267-629-0995', '1', NULL, 'frank', 'maybe', '2022-06-27 12:27:11.969444', 'etrewt', 1, '1627 S 19th StPhiladelphia, PA 19145-1438', NULL),
(167, 'Johnny smith', 'JOHNNY & SONS LLC', 'MC1199456', '215-847-8078', '1', NULL, 'frank', 'maybe', '2022-06-27 12:28:16.661468', '', 1, '905 W ERIE AVEPHILADELPHIA, PA 19140', NULL),
(168, 'Johnny smith', 'JOHNNY & SONS LLC', 'MC1199456', '215-847-8078', '1', NULL, 'frank', 'said-no', '2022-06-27 12:29:56.623722', '', 2, '905 W ERIE AVEPHILADELPHIA, PA 19140', NULL),
(169, 'Johnny smith', 'JOHNNY & SONS LLC', 'MC1199456', '215-847-8078', '1', NULL, 'frank', 'no-answer', '2022-06-27 12:33:06.909859', 'ewrewrewrewrewr', 3, '905 W ERIE AVEPHILADELPHIA, PA 19140', NULL),
(170, 'ilhom Hudoykulov', 'ILM TRANSPORTATION INC', 'MC847487', '267-423-7345', '6', NULL, 'tesfae', 'maybe', '2022-06-27 12:44:16.703214', '', 1, '9767 HILSPACH ST FL 2PHILADELPHIA, PA 19115', NULL);

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
  `caller_match` varchar(100) DEFAULT NULL,
  `status_comments` varchar(100) DEFAULT NULL,
  `con_digit` int(11) DEFAULT NULL,
  `voice_mail` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `va2pow`
--

INSERT INTO `va2pow` (`cid`, `s_mc_number`, `s_company_name`, `street_address`, `s_phone_number`, `client_name`, `pow`, `s_email`, `s_status`, `last_changed`, `times_called`, `caller_match`, `status_comments`, `con_digit`, `voice_mail`) VALUES
(7879, 'MC1034189', 'PMO EXPRESS LLC', '231 N SHIPPEN ST STE 22LANCASTER, PA 17602', '717-330-7822', 'juan gallardo', '7', 'juangallardo@pmo-express.com', 'waiting-call', '2022-06-23 07:01:27.433963', 0, NULL, NULL, NULL, NULL),
(7880, 'MC1151036', 'PLATINUM TANKS LLC', '560 Kensington RoadLancaster, PA 17603', '718-916-2210', 'Victor rivera', '1', 'platinumtanksllc@gmail.com', 'waiting-call', '2022-06-23 07:01:27.469875', 0, NULL, NULL, NULL, NULL),
(7881, 'MC1196544', 'PE CARGO EXPRESS', '20 PICKFORD ROADLANCASTER, PA 17603', '717-917-2409', 'VICTOR PENA', '4', 'v.pena@pecargoexpress.com', 'waiting-call', '2022-06-23 07:01:27.494156', 0, NULL, NULL, NULL, NULL),
(7882, 'MC84281', 'Northeast Cargo Express Llc', '657 Patriot DrLancaster, PA 17601-6767', '717-538-3829', 'Jesenia rosado', '1', 'northeastcargoexpress@gmail.com', 'waiting-call', '2022-06-23 07:01:27.519629', 0, NULL, NULL, NULL, NULL),
(7883, 'MC109076', 'Bellview Enterprise Llc', '8024 N 94th StMilwaukee, WI 53224-2915', '763-248-5106', 'David Kengere', '1', 'dispatch@freight4u.com', 'waiting-call', '2022-06-23 07:01:27.556262', 0, NULL, NULL, NULL, NULL),
(7884, 'MC1235578', 'NERCY TRUCKING LLC', '30 E FARNUM STLANCASTER, PA 17602', '786-805-9912', 'Malcolm Jorrin Perez', '1', 'nercy.trucking@gmail.com', 'waiting-call', '2022-06-23 07:01:27.595896', 0, NULL, NULL, NULL, NULL),
(7885, 'MC1263649', 'MOORISH EXECUTIVES LLC', '2173 EMBASSY DRLANCASTER, PA 17603', '717-788-0722', 'Maria Okehie', '1', 'support@toofastfreight.com', 'waiting-call', '2022-06-23 07:01:27.624245', 0, NULL, NULL, NULL, NULL),
(7886, 'MC1121804', 'MARS EMPIRE LLC', '536 REYNOLDS AVELANCASTER, PA 17602-2147', '717-962-0630', 'Luis', '1', 'marsempirellc@outlook.com', 'waiting-call', '2022-06-23 07:01:27.644248', 0, NULL, NULL, NULL, NULL),
(7887, 'MC1340087', 'LYNK TRANSPORTATION INC', '1653 LITITZ PIKE SUITE 2094LANCASTER, PA 17602', '856-562-3023', 'ROLAND GREEN', '3', 'lynktransportation@gmail.com', 'waiting-call', '2022-06-23 07:01:27.687883', 0, NULL, NULL, NULL, NULL),
(7888, 'MC1277670', 'LAUREN TRANSPORT LLC', '480 EUCLID AVE APT LLANCASTER, PA 17603', '717-984-9189', 'Patrick Vargas', '1', 'laurentransportllc@gmail.com', 'waiting-call', '2022-06-23 07:01:27.728803', 0, NULL, NULL, NULL, NULL),
(7889, 'MC1151102', 'Keystone Express Lines LLC', '1127 WABANK RD APT E101Lancaster, PA 17603', '717-681-8494', 'Fernando Sanchez', '3', 'fernando.keltransport@gmail.com', 'waiting-call', '2022-06-23 07:01:27.749323', 0, NULL, NULL, NULL, NULL),
(7890, 'MC783839', 'Kerr Transport Services Llc', '152 Nicholas RdLancaster, PA 17603-9422', '717-799-8610', 'Eric M Kerr', '1', 'ekerr@kerrtransport.org', 'waiting-call', '2022-06-23 07:01:27.771960', 0, NULL, NULL, NULL, NULL),
(7891, 'MC1263579', 'K.Y.K.Y Trucking LLC', '528 Prospect StLancaster, PA 17603', '717-449-4141', 'Yoandris Romero', '1', 'kykytruckingllc1997@gmail.com', 'waiting-call', '2022-06-23 07:01:27.793680', 0, NULL, NULL, NULL, NULL),
(7892, 'MC1195858', 'K & L FREIGHT LLC', '135 COLONIAL CREST DRLANCASTER, PA 17601', '717-481-0232', 'Hector Rodriguez Viera', '1', 'leylanie1616@gmail.com', 'waiting-call', '2022-06-23 07:01:27.813418', 0, NULL, NULL, NULL, NULL),
(7893, 'MC1000121', 'Joseph Transport Services Llc', '1945 STERLING PLACELancaster, PA 17601', '717-345-9595', 'Wilkins Joseph', '1', 'jtransport717@gmail.com', 'waiting-call', '2022-06-23 07:01:27.842997', 0, NULL, NULL, NULL, NULL),
(7894, 'MC1148274', 'JBA TRUCKING LLC', '2299 HOBSON RDLANCASTER, PA 176022299 HOBSON RDLANCASTER, PA 17602', '717-808-8493', 'Alain Sanchez', '1', 'kvci2017@gmail.com', 'waiting-call', '2022-06-23 07:01:27.863168', 0, NULL, NULL, NULL, NULL),
(7895, 'MC1051605', 'JAQUEZ EXPRESS LLC', '717 ASHBOURNE AVELANCASTER, PA 17601', '717-587-9543', 'AOLFO JAQUEZ', '4', 'jaquezexpressllc@gmail.com', 'waiting-call', '2022-06-23 07:01:27.892979', 0, NULL, NULL, NULL, NULL),
(7896, 'MC1020362', 'James F Coleman Transportation Llc', '216 W James StLancaster, PA 17603-2910', '267-971-2330', 'Jevon James', '1', 'jevonjames1977@yahoo.com', 'waiting-call', '2022-06-23 07:01:28.467404', 0, NULL, NULL, NULL, NULL),
(7897, 'MC877039', 'Herrera-Diaz Trucking', '981 E Orange StLancaster, PA 17602-3213', '717-826-4190', 'Angel Herrera', '2', 'herreradiaztrucking8215@gmail.com', 'waiting-call', '2022-06-23 07:01:28.506616', 0, NULL, NULL, NULL, NULL),
(7898, 'MC1339062', 'HALL HAULING COMPANY LLC', '115 ELMSHIRE DRLANCASTER, PA 17603', '717-490-2600', 'Christopher Hall', '1', 'chris@hallhaulingcompany.com', 'waiting-call', '2022-06-23 07:01:28.539537', 0, NULL, NULL, NULL, NULL),
(7899, 'MC1141262', 'GUARDIAN BARRIER SERVICES LLC', '1834 Freedom RoadLancaster, PA 17601', '717-664-2696', 'Joe Zimmerman', '3', 'joe@guardianbarrierservices.com', 'waiting-call', '2022-06-23 07:01:28.586627', 0, NULL, NULL, NULL, NULL),
(7900, 'MC1234234', 'GTBS Transport LLC', '533 Hannigan DriveLancaster, PA 17601', '717-696-8159', 'Harvinder Singh Dhillon', '1', 'gtbs0009llc@gmail.com', 'waiting-call', '2022-06-23 07:01:28.621338', 0, NULL, NULL, NULL, NULL),
(7901, 'MC783959', 'Gp Ponce Transport Llc', '279 Greenland DrLancaster, PA 17602-3379', '717-224-3252', 'Geovanny ponce', '3', 'gpponcetransport12@gmail.com', 'waiting-call', '2022-06-23 07:01:28.659098', 0, NULL, NULL, NULL, NULL),
(7902, 'MC1101494', 'GEOFFREY DELIVERY SERVICES, LLC', '1708 COLUMBIA AVENUE APT 3LANCASTER, PA 17603', '484-797-6074', 'Geoffrey', '1', 'geoffk4@gmail.com', 'waiting-call', '2022-06-23 07:01:28.679208', 0, NULL, NULL, NULL, NULL),
(7903, 'MC102537', 'Eagle Transporting', '511 Rockland StLancaster, PA 17602-4225', '717-617-5583', 'Sharon vale', '2', 'eagletransporting25@gmail.com', 'waiting-call', '2022-06-23 07:01:28.718148', 0, NULL, NULL, NULL, NULL),
(7904, 'MC591973', 'Dove Transport Inc', '40 Pitney RdLancaster, PA 17602-2614', '717-615-8633', 'Dennis Simmons', '5', 'dsimmons235@yahoo.com', 'waiting-call', '2022-06-23 07:01:28.770569', 0, NULL, NULL, NULL, NULL),
(7905, 'MC1054397', 'Craig Transportation Express Llc', '559 Reynolds AveLancaster, PA 17602-2146', '717-799-1669', 'Larry Craig', '1', 'craigtransportationexpress@gmail.com', 'waiting-call', '2022-06-23 07:01:28.850296', 0, NULL, NULL, NULL, NULL),
(7906, 'MC477642', 'Cjc Ventures Llc', 'POW3', '717-629-8389', 'Craig Kreider SR', '2', 'kreidersr@gmail.com', 'waiting-call', '2022-06-23 07:01:28.880817', 0, NULL, NULL, NULL, NULL),
(7907, 'MC911162', 'Capital City Trucking llc', '2073 embassy drlancaster, PA 17603', '561-249-4286', 'BEN ROMAN SR', '8', 'capitalcitytrucking@gmail.com', 'waiting-call', '2022-06-23 07:01:28.933752', 0, NULL, NULL, NULL, NULL),
(7908, 'MC900070', 'C L Black Inc', '818 Hager StLancaster, PA 17603-5720', '717-989-0308', 'Chad Black', '1', 'cblack.dispatch@trucker-mail.com', 'waiting-call', '2022-06-23 07:01:28.968623', 0, NULL, NULL, NULL, NULL),
(7909, 'MC1335264', 'BRIDGE POSSIBLE MGT LLC', '331 LAUREL STLANCASTER, PA 17603', '717-940-3596', 'Jamal Nuur', '6', 'nuurjamal94@gmail.com', 'waiting-call', '2022-06-23 07:01:29.005915', 0, NULL, NULL, NULL, NULL),
(7910, 'MC932028', 'Brallier Trucking Llc', '109 Hawthorne CirLancaster, PA 17602-4798', '717-824-9920', 'Eric Brallier', '2', 'ericbrallier11@gmail.com', 'waiting-call', '2022-06-23 07:01:29.042667', 0, NULL, NULL, NULL, NULL),
(7911, 'MC878281', 'BigTrucks L&T LLP', '1150 Corporate BlvdLancaster, PA 17601', '717-419-4151', 'Patty Floyd', '4', 'patty.bigtrucks@gmail.com', 'waiting-call', '2022-06-23 07:01:29.062906', 0, NULL, NULL, NULL, NULL),
(7912, 'MC1284444', 'Bel Transportation', '1102 Sterling Pllancaster, PA 17603', '717-283-8990', 'Doucks Kalamba', '2', 'dkalamba726@gmail.com', 'waiting-call', '2022-06-23 07:01:29.095516', 0, NULL, NULL, NULL, NULL),
(7913, 'MC1286430', 'ARTAN TRANSPORTATION LLC', '701 WYNCROFT TER APT 4LANCASTER, PA 17603', '612-999-0466', 'Mohamed Suleyman Abdi', '1', 'artantaransportationllc@gmail.com', 'waiting-call', '2022-06-23 07:01:29.120755', 0, NULL, NULL, NULL, NULL),
(7914, 'MC1253302', 'ARCA TRANSPORTATION LLC', '503 N LIME ST STE 2LANCASTER, PA 17602', '862-247-6967', 'Mercedes Ubri', '2', 'arabellyubri@gmail.com', 'waiting-call', '2022-06-23 07:01:29.151305', 0, NULL, NULL, NULL, NULL),
(7915, 'MC90315', 'AMV Transport Llc', '61 Hampton LnLancaster, PA 17601-3713', '717-617-3417', 'Arlen Martinez', '1', 'amvtransport627@gmail.com', 'waiting-call', '2022-06-23 07:01:29.170263', 0, NULL, NULL, NULL, NULL),
(7916, 'MC13921', 'Aiden Express Tl Llc', '338 Stevens AveLancaster, PA 17602-3761', '717-743-7279', 'Carlos zavala', '5', 'aidenexpressllc@gmail.com', 'waiting-call', '2022-06-23 07:01:29.204599', 0, NULL, NULL, NULL, NULL),
(7917, 'MC615989', 'ACTRUCKS', '745 New Holland AvenueLancaster, PA 17602', '717-201-7135', 'ruth pagan', '1', 'actrucksnow@gmail.com', 'waiting-call', '2022-06-23 07:01:29.229143', 0, NULL, NULL, NULL, NULL),
(7918, 'MC40028', 'ABA Logistics LLC', '21 Ramsgate LaneLancaster, PA 17603', '239-851-7718', 'Susy Llerena', '3', 'abalogisitcsllc1@gmail.com', 'waiting-call', '2022-06-23 07:01:29.249922', 0, NULL, NULL, NULL, NULL),
(7919, 'MC1316430', 'A & U Transportation LLC', '1084 Sterling PlaceLancaster, PA 17603', '717-992-5392', 'Alexis Ngoga', '2', 'andutransportation@gmail.com', 'waiting-call', '2022-06-23 07:01:29.274377', 0, NULL, NULL, NULL, NULL),
(7920, 'MC665521', 'Sunlight Transportation Llc', '260 Sunlight DriveHenryville, PA 18332', '570-517-9181', 'Franklin', '1', '1sunlightrans@gmail.com', 'waiting-call', '2022-06-23 07:01:29.294685', 0, NULL, NULL, NULL, NULL),
(7921, 'MC482627', 'Q Way Services Inc', '137 Jungfrau DrHenryville, PA 18332', '570-972-3315', 'miroslaw kurek', '1', 'mkekjk@yahoo.com', 'waiting-call', '2022-06-23 07:01:29.321391', 0, NULL, NULL, NULL, NULL),
(7922, 'MC1092377', 'NORTHEAST TOMATO DISTRIBUTORS INC', '114 SUNSET DRHANOVER TWP, PA 18706-5054', '570-200-5622', 'PAT GOOD', '7', 'pgoodnetd@gmail.com', 'waiting-call', '2022-06-23 07:01:29.351887', 0, NULL, NULL, NULL, NULL),
(7923, 'MC922343', 'Le Faso Inc', '78 Pulaski StHanover Township, PA 18706-5104', '570-998-0606', 'MOUNIROU OUANDAOGO', '2', 'ouand76@yahoo.com', 'waiting-call', '2022-06-23 07:01:29.372190', 0, NULL, NULL, NULL, NULL),
(7924, 'MC1253949', 'IBEMSI GROUP LLC', '314 VANESSA DRHANOVER TWP, PA 18706', '570-793-1923', 'Toni Maloney', '1', 'tonimaloney6115@gmail.com', 'waiting-call', '2022-06-23 07:01:29.395807', 0, NULL, NULL, NULL, NULL),
(7925, 'MC1073967', 'Hanover Crane & Rigging Llc', '5500 Hanover RdHanover, PA 17331-9058', '800-854-9107', 'Todd', '6', 'tstuller@hanovercraneandrigging.com', 'waiting-call', '2022-06-23 07:01:29.434252', 0, NULL, NULL, NULL, NULL),
(7926, 'MC1033711', 'G & J TRANSPORT LLC', '213 LEE PARK AVEHANOVER TWP, PA 18706', '347-429-5620', 'Jaime loja', '2', 'gjtrabsport01@gmail.com', 'waiting-call', '2022-06-23 07:01:29.462703', 0, NULL, NULL, NULL, NULL),
(7927, 'MC778652', 'DSH Transportation', '3 Keystone RdHanover Twp, PA 18706-3106', '570-855-8765', 'Douglas Hoppy', '1', 'dsh18603@aol.com', 'waiting-call', '2022-06-23 07:01:29.491633', 0, NULL, NULL, NULL, NULL),
(7928, 'MC1085835', 'AIK Transport', '139 3rd StreetHanover, PA 17331', '717-623-8472', 'Isidore K Ako', '1', 'izzy.ako@aol.com', 'waiting-call', '2022-06-23 07:01:29.536738', 0, NULL, NULL, NULL, NULL),
(7929, 'MC1130234', 'Jax Transportation LLC', '3192 Peters Mountain RoadHalifax, PA 17032', '717-364-9373', 'Christopher Auditore', '1', 'jaxtransportationllc1@gmail.com', 'waiting-call', '2022-06-23 07:01:29.565252', 0, NULL, NULL, NULL, NULL),
(7930, 'wqewqe', 'ewqe', 'wqewq', 'wqe', 'wewqewqewqe', '2', '', 'waiting-call', '2022-06-23 07:23:04.859397', 0, NULL, NULL, NULL, NULL);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `calls_tally`
--
ALTER TABLE `calls_tally`
  MODIFY `tally_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

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
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7931;

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
