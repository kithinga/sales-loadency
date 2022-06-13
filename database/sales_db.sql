-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2022 at 06:54 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sales_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `va2pow`
--

CREATE TABLE `va2pow` (
  `s_mc_number` varchar(100) NOT NULL,
  `s_company_name` varchar(100) NOT NULL,
  `street_address` varchar(100) DEFAULT NULL,
  `s_phone_number` varchar(100) DEFAULT NULL,
  `client_name` varchar(100) DEFAULT NULL,
  `pow` varchar(100) DEFAULT NULL,
  `s_email` varchar(100) DEFAULT NULL,
  `s_status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `va2pow`
--

INSERT INTO `va2pow` (`s_mc_number`, `s_company_name`, `street_address`, `s_phone_number`, `client_name`, `pow`, `s_email`, `s_status`) VALUES
('', 'AT FREIGHT 21 LLC', '3950 WYCKOFF DR\nVIRGINIA BCH, VA 23452', '757-339-4053', 'Whitney Venable', '1', 'info@kvrdispatchsolutions.com', 'no-answer'),
('MC1003869', 'Aspire Logistics Inc', '44330 Mercure Cir Ste 100F\nSterling, VA 20166-2023', '848-234-3006', 'Harpreet Singh', '2', 'aspireinc14@gmail.com', 'no-answer'),
('MC101129', 'JMAC ALLIANCE LLC', '10304 EATON PL STE 100 1034\nFAIRFAX, VA 22030', '276-201-9865', 'John McAlpin', '', 'jmacalliancellc@gmail.com', 'said-no'),
('MC1011970', 'AR Taylor Hauling LLC', '2005 Colston St\nPetersburg, VA 23805-2724', '804-638-3798', 'Andre R. Taylor', '2', 'artaylor.hauling69@gmail.com', 'said-no'),
('MC1014536', 'JG Transport Incorporated', '\n6205 St Johns Wood\nWilliamsburg, VA 23188-1796', '757-679-9618', 'James Green', '2', 'james.green@jgtransportinc.com', 'no-answer'),
('MC1025117', 'AM Cargo Inc', '10615 Patterson Ave\nHenrico, VA 23238-4747', '757-533-2492', 'Andy', '2', 'info@amcargoinc.com', 'no-answer'),
('MC1025599', 'Hillsboro Trucking Llc', '36847 Stony Point Rd\nPurcellville, VA 20132-2704', '703-431-4500', 'Steven Zurschmeide', '3', 'steve@zcontracting.com', 'said-no'),
('MC103550', 'GILL TRUCK LINES INC', '\n21893 BLOSSOM HILL TERR\nASHBURN, VA 20148', '347-476-8026', '', '', '', 'no-answer'),
('MC103608', 'Ac Express Llc', '5156 Green Hill Rd\nLinville, VA 22834-2400', '540-833-4031', 'Alexandr', '1', 'acexpressllc2018@gmail.com', 'said-no'),
('MC1047942', 'A Jones Jr Enterprises Inc', '107 Dooley St\nHampton, VA 23669-3339', '404-804-2655', 'Toni Swain', '2', 'toniswain@gmail.com', 'no-answer'),
('MC1054375', 'Hqt Transport Llc', '\n8771 Brays Fork Dr\nGlen Allen, VA 23060-3693', '804-905-9999', 'Thang Ho', '1', 'thangho804@gmail.com', 'no-answer'),
('MC1058571', 'Brown N Archie Trucking LLC', '2178 COUNTY DR T76\nPETERSBURG, VA 23803', '804-255-5955', '', '', '', 'no-answer'),
('MC1059185', 'Bulldog Hauling Transport Llc', '\n417 Hastings Pl\nSuffolk, VA 23436-1134', '832-435-1226', 'SONIA GILDER', '2', 'bulldog_100@outloo.com', 'no-answer'),
('MC1059320', 'Exclusive Transport LLC', '5212 Windbreak Drive\nFredericksburg, VA 22407', '540-645-4141', '', '', '', 'no-answer'),
('MC1066212', 'ESHAL ENTERPRISE LLC', '\n5442 BRADFORD CT APT 240\nALEXANDRIA, VA 22311', '443-752-6430', 'Abdulkerim Beshir', '5', 'Eshalllc@gmail.com', 'said-no'),
('MC1079522', 'Falcon Truck Lines Inc', '1200 Fairfax St\nStephens City, VA 22655-2852', '540-866-0444', 'BJ HUNDAL', '1', 'falcontruckline@gmail.com', 'said-no'),
('MC108029', 'Express Freight Services Inc', '1704 Shewalt Drive\nRichmond, VA 23228', '786-271-8911', 'Anita Fox', '2', 'afoxinc@gmail.com', 'said-no'),
('MC1081887', 'Halo Logistics Llc', '\n3087 American Eagle Blvd\nWoodbridge, VA 22191-6558', '409-548-8715', 'Cody Williams', '2', '\nllc.halologistics@gmail.com', 'said-no'),
('MC1085993', 'Fischer & Sons Hauling Llc', '2405 Prince George Ave\nChester, VA 23836-6439', '804-926-0939', 'Chonita Rose', '3', 'roseydispatch@gmail.com', 'said-no'),
('MC1086823', 'HUNCHO TRANSPORTATION LLC', '3409 ARGENT LN\nRICHMOND, VA 23237', '804-439-2748', 'Kevin Rippy', '2', 'Info@hunchotransportation.com', 'no-answer'),
('MC1088725', 'CHK TRANSPORT INC', '815 THOMAS CT APT 23\nWINCHESTER, VA 22601', '202-766-9882', 'Satnam Singh', '1', 'Chktransportinc@gmail.com', 'said-no'),
('MC1089178', 'JB TRANSPORTATION LLC', '7430 Moonlight Road\nSmithfield, VA 23430', '757-916-0378', 'Jonathan Beale', '2', 'jbtranportationllc1@gmail.com', 'no-answer'),
('MC1089273', 'FROM START TO FINISH TRUCKING LLC', '\n3419 VIRGINIA BEACH BLVD #5143\nVIRGINIA BCH, VA 23452', '813-365-6804', 'Rafael Paschal', '1', 'starttofinishtrucking@gmail.com', 'said-no'),
('MC1092637', 'John C Berry Llc', '\n3884 Pfost Ave\nPrince George, VA 23875-1757', '804-586-8911', 'John Berry', '1', 'Jcberryusmc@gmail.com', 'no-answer'),
('MC1094485', 'BAKER TRUCKING LLC', '\n1167 Crooked Run Road\nMount Jackson, VA 22842', '540-335-8716', '', '2', '', 'said-no'),
('MC1098579', 'Crews Shipping Company', '3325 Plowfield Ct\nRichmond, VA 23223-1273', '434-429-1724', 'Uri Crews', '1', 'cscllc2020@yahoo.com', 'no-answer'),
('MC1099191', 'FAITH FREIGHT TRANSPORT LLC', '\n4807 GLENMORGAN CT\nCHESTER, VA 23831', '804-837-3349', '', '', '', 'no-answer'),
('MC1102431', 'Hauling Excellence LLC', '10139 Giles Run Road\nLorton, VA 22079', '240-877-8174', 'Antoine Edwards', '1', 'Haulingexcellence@gmail.com', 'no-answer'),
('MC1104187', 'IML 1225 TRUCKING LLC', '928 DIAMOND SPRINGS RD STE 110\nVIRGINIA BCH, VA 23455', '757-500-3250', 'denise tonya adadms', '1', 'IML1225TRUCKING@GMAIL.COM', 'said-no'),
('MC1105064', 'A&H Transportation Inc', '4901 SEMINARY RD APT 1012\nALEXANDRIA, VA 22311', '301-500-9009', 'Hashim zia', '3', 'Ahtransportation123@gmail.com', 'no-answer'),
('MC1113910', 'Jermaine Whitehead', '2169 Astoria Circle Apt 114\nHerndon, VA 20170', '559-859-9894', 'Hasean Dix', '2', 'ondawayllc@yahoo.com', 'no-answer'),
('MC1114236', 'GT Logistics LLC', '\n1800 SIDNEY CT\nGlen Allen, VA 23059', '202-812-6864', '', '', '', 'said-no'),
('MC1118969', 'First Rate Trucking Llc', '1025 NAVAL AVE UNIT B\nPORTSMOUTH, VA 23704', '757-724-0585', 'Karim Harrel', '2', 'firstratetrucking7@gmail.com', 'no-answer'),
('MC1123566', 'DONKOR TRUCKING SERVICE LLC', '1367 NEW BETHEL RD\nMEHERRIN, VA 23954-2843', '434-294-6508', 'Michael Fowlkes', '1', 'Donkortruckingllc@gmail.com', 'no-answer'),
('MC1135489', 'ESSENTIAL ACCESS TRANSPORTATION LLC', '525 FOXGLOVE WAY\nSTAFFORD, VA 22554', '404-573-2188', 'Jahbril Nwosu', '1', 'eatransportation.inc@gmail.com', 'no-answer'),
('MC1138558', 'BANKS & BANKS LLC', '33756 SANDY RIDGE RD\nFRANKLIN, VA 23851', '757-653-6349', 'James Banks Jr', '3', 'banksandbanks2014@gmail.com', 'no-answer'),
('MC1140896', 'Green Page LLC/Green Page Trucking LLC', '7918 Jones Branch Drive Suite 400\nMcLean, VA 22102', '888-659-4175', '', '1', '', 'said-no'),
('MC1141655', 'BROOKS T&T TRUCKING LLC', '1626 WILLOW BROOK RD\nBUMPASS, VA 23024', '434-987-8225', '', '2', 'BrooksTnT19@gmail.com', 'said-no'),
('MC1153612', 'AMERICAN FREIGHT TRUCKING LLC', '36051 WELLAND DR\nROUND HILL, VA 20141', '703-843-1617', 'jose rivas', '2', 'americanft9@gmail.com', 'said-no'),
('MC1153640', 'G MAN TRUCKING LLC', '\n95 BOLLING RD\nPORTSMOUTH, VA 23701', '757-633-4809', 'George Eure', '2', 'Gmantruckingllc@yahoo.com', 'no-answer'),
('MC1153881', 'J&W TRUCKING LLC', '321 Hinton St\nPetersburg, VA 23803-3801', '276-229-9011', 'john harris', '2', '\njharris1465@gmail.com', 'no-answer'),
('MC1155161', 'BAXTER TRANSPORT AND HAULING LLC', '\n105 OAKRIDGE DR\nTHAXTON, VA 24174', '', 'Donna Huggins', '1', '\nbaxtertransport77@gmail.com', 'no-answer'),
('MC1167464', 'FREIGHT LIFTERS LLC', '440 NEWTOWN RD\nVIRGINIA BCH, VA 23462', '540-702-0544', 'Kariva McKnight', '1', 'kjdispatchservicellc@gmail.com', 'no-answer'),
('MC1170134', 'Harrison Management LLC', '\n2501 Lafayette Boulevard\nNorfolk, VA 23509', '941-584-9868', 'Yulanda', '2', 'yulanda.davis@harrisonsmllc.com', 'no-answer'),
('MC1171520', 'FRONTLINE EXPRESS TRANSPORT LLC', '\n1910 GABLERIDGE TURN APT 304\nWOODBRIDGE, VA 22191', '919-591-1782', 'Robert Staten Jr', '1', 'Rob@Frontlinetransports.com', 'no-answer'),
('MC1172545', 'EKA TRUCKING LLC', '7050 SOLOMON SEAL CT\nSPRINGFIELD, VA 22152-3150', '703-483-5570', 'Wondwesen', '2', 'Eka.truck25@gmail.com', 'no-answer'),
('MC117389', 'Jp Transport Inc', '10790 Hinton Way\nManassas, VA 20112-5881', '703-589-5438', 'Amrinder', '1', '', 'no-answer'),
('MC1181530', '2 Sharpe Trucking LLC', '13001 CHIPSTEAD RD\nCHESTER, VA 23831', '804-878-4546', 'Darrell Hicks', '2', 'darrell@2sharpetrucking.com', 'no-answer'),
('MC1183909', 'CRUZIN TRUCKING LLC', '1708 VERMIRA PL\nCHARLOTTESVLE, VA 22901', '540-478-5746', 'Jorge Cruz', '1', 'cruzintruckingllc@gmail.com', 'said-no'),
('MC1186904', 'C.N.E. TRUCKING LLC', '6901 BOLELYN DR\nHENRICO, VA 23231', '804-683-9640', '', '', '', 'no-answer'),
('MC1190476', 'HIS & HERS LOGISTICS LLC', '\n9829 KINGSROCK LN\nMECHANICSVLLE, VA 23116', '804-347-5966', 'ShaVonnie Zimmerman', '1', 'Shavonnie@hisherslogistics.com', 'said-no'),
('MC1191509', 'Hamlin Hauling LLC', '200 Cavalier Dr Apt 1-302\nPetersburg, VA 23805', '804-605-0425', 'AUSTIN Wright', '2', 'ceo@adjwright.com', 'said-no'),
('MC1192781', 'INVESTED LLC', '904 EAST ELLERSLIE AVE\nCOLONIAL HGTS, VA 23834', '804-982-8743', 'aiman', '1', 'aiman.apexdispatc@gmail.com', 'no-answer'),
('MC1196856', 'Jorlatt LLC', '\n6104 HERON POND CT\nBURKE, VA 22015', '703-859-6252', 'Columbus Dixon', '2', 'Cdixon@jorlatt.com', 'no-answer'),
('MC1198247', 'AHMED IHSAAN LLC', '\n101 N PINETTA DR UNIT 36467\nN CHESTERFLD, VA 23235', '804-245-5597', 'Faheem Abdul-Wahhaab', '', 'ahmedihsaanllc@gmail.com', 'said-no'),
('MC1198697', 'IROUTE XPRESS LLC', '\n8318 TOBIN RD APT 23\nANNANDALE, VA 22003', '215-469-0087', 'Hashmat', '1', 'iroutexpress@gmail.com', 'no-answer'),
('MC12033', 'Dulles Transport Llc', '22931 Adelphi Ter\nSterling, VA 20166-4335', '703-945-5789', 'HARMEET', '2', 'DULLES.TRANSPORTLLC@GMAIL.COM', 'said-no'),
('MC1205966', 'DISTINCT TRUCKING LLC', '375 E WILLIAMSBURG RD STE B\nSANDSTON, VA 23150-1677', '804-647-7014', 'Chiffon L. Green', '1', 'distincttrucking@gmail.com', 'no-answer'),
('MC1210299', 'BUMPERS TRUCKING LLC', '410 INDUSTRY DR\nHAMPTON, VA 23661', '757-870-6545', 'Carlos Bumpers', '2', 'Bumperstrucking757@gmail.com', 'said-no'),
('MC1222182', 'C & M TRANSPORTATION LLC', '\n26242 SAVAGEVILLE RD\nONANCOCK, VA 23417', '757-710-5420', '', '', '', 'no-answer'),
('MC1233700', 'ARIA TRANSPORT LLC', '6381 LITTLE RIVER TPKE\nALEXANDRIA, VA 22312', '703-474-2410', 'Abdul Hassan Shamsuddin', '2', 'abh@ariatransport.us', 'no-answer'),
('MC1235949', 'Asmerom Sky Transports LLC', '14853 Keanon Ridge Court\nManassas, VA 20112', '202-766-9316', 'Aster Seghit', '2', 'asmeromsky@gmail.com', 'no-answer'),
('MC123679', 'Jtyv Transportation Services Llc', '9903 Tranquility Lane\nSutherland, VA 23885', '434-378-1676', 'Vincent Thomas', '2', 'JTYVTRANSPORTATIONSERVICESLLC@GMAIL.COM', 'said-no'),
('MC1237537', 'JHIGH TRUCKING LLC', '6825 WILDFLOWER LN\nSINGERS GLEN, VA 22850', '540-271-2845', 'Justin High', '2', 'ratecon86jh@gmail.com', 'said-no'),
('MC1240770', 'Amen Trucking LLC', '\n2817 Brier Pond Circle\nWoodbridge, VA 22191', '202-413-3153', 'Wondwosen Teshome', '1', 'amentruckingllc1@gmail.com', 'said-no'),
('MC1244110', 'HILL ENTERPRISE LLC', '5437 TANEY AVE\nALEXANDRIA, VA 22304', '301-502-0838', 'Sherronda Hill', '1', 'hillent_llc@yahoo.com', 'said-no'),
('MC1248130', 'BMR Hauling LLC', '\n839 POWELL DR\nSOUTH HILL, VA 23970', '434-368-0779', 'Baron Maurice Ryans', '2', 'Booandkye@gmail.com', 'no-answer'),
('MC1249087', 'Absalat Trucking LLC', '5597 Seminary Road S 105\nFalls Church, VA 22041', '703-677-5748', 'yohannes h zeleke', '2', 'absalattruckingllc@gmail.com', 'no-answer'),
('MC1250693', 'Derek Billingsley', '4106 Derbyshire Ln\nFredericksburg, VA 22408-9446', '703-400-7624', 'derek billingaley', '2', 'prodigydispatch@yahoo.com', 'no-answer'),
('MC1251273', 'FABRA GROUP LLC', '44272 SUSCON SQ\nASHBURN, VA 20147', '571-422-6283', 'Yu mma', '2', '', 'no-answer'),
('MC1257434', 'AMERICAN TRUCK COMPANY LLC', '\n2916 CROSSINGS DR\nCHESAPEAKE, VA 23321', '757-386-2511', 'Ronneka Harveh', '1', 'Americantruckcompanyllc@gmail.com', 'no-answer'),
('MC1257675', 'BMH LOGISTICS LLC', '6000 PINE RD\nQUINTON, VA 23141', '804-441-5344', 'Darron Bolton', '1', '\nDarron.k@bmhlogistics.org', 'said-no'),
('MC1267845', 'Davis & Davis Trucking Company LLC', '15007 Walking Stick Way\nHaymarket, VA 20169', '202-843-7880', '', '2', '', 'said-no'),
('MC1270691', 'HOLMESTEAD LOGISTICS LLC', '13032 BEECH CREEK LN\nASHLAND, VA 23005-7120', '804-840-9345', 'Tamio Holmes', '1', 'Holmesteadlogisticsllc@gmail.com', 'said-no'),
('MC1270784', 'D&D TOP PRIORITY TRUCKING LLC', '\n7218 MARCY ST APT 8\nNORFOLK, VA 23505', '347-567-9048', 'davone hall', '1', 'ddtoppriority@gmail.com', 'no-answer'),
('MC1284974', 'HANNABASS TRUCKING LLC', '1031 MEADOW ACRE RD\nMONETA, VA 24121', '540-355-1593', 'Kasie Sullivan', '1', 'hannabasstruckingdispatcher@yahoo.com', 'no-answer'),
('MC1290587', 'ADW TRUCKING LLC', '\n13534 RIVER FORK WAY\nCHESTER, VA 23836', '907-687-8965', '', '2', '', 'said-no'),
('MC129224', 'Hilal Enterprises LLC', '11456 Haltonshire Way\nGlen Allen, VA 23059', '804-873-5752', 'bush bouch', '2', 'Hilal_bouchaib@hotmail.com', 'said-no'),
('MC1295256', 'B3 INFERIOR LOGISTICS LLC', '1112 GEORGE OLAH DR\nCHESAPEAKE, VA 23322', '434-247-9381', '', '', '', 'said-no'),
('MC1299471', 'E & E LOGISTICS COMPANY', '17 Sally Ann Place\nNewport News, VA 23602', '757-343-9101', 'Elon Matias', '1', 'enelogisticscompany@gmail.com', 'no-answer'),
('MC1310946', 'BLUE RIDGE MOVERS INC', '\n1257 FAIRGROUND RD\nMADISON, VA 22727', '434-939-2044', 'Donovan Farmer', '2', 'Donovan.farmer@brmover.com', 'said-no'),
('MC1330575', 'Alkozai Transit LLC', '\n13041 Taxi Drive\nWoodbridge, VA 22193', '571-552-7086', 'Hazrat Alkozai', '1', 'alkozaitransit@gmail.com', 'said-no'),
('MC1351310', 'AMPRESS TRANSPORTATION LLC', '1700 TERRACE VIEW LN APT 103\nN CHESTERFLD, VA 23235', '804-840-8419', 'Jovan Smith', '2', 'Ampresstrans@gmail.com', 'no-answer'),
('MC1361602', 'J D LOVE TRANSPORT LLC', '21021 PATRICK HENRY HWY\nJETERSVILLE, VA 23083', '804-297-9396', '', '', '', 'no-answer'),
('MC1367115', 'JEFFREY OWEN', '19682 CHRISTANNA HWY\nLAWRENCEVILLE, VA 23868', '434-848-5756', 'Jeffrey Owen', '3', 'jowentrucking20@gmail.com', 'maybe'),
('MC1372774', 'FIST 2 FIST LOGISTICS/FIST 2 FIST FREIGHT BROKERS', '1412 Highnoon Place\nVirginia Beach, VA 23462', '804-482-3635', '', '', '', 'no-answer'),
('MC1374718', 'J Mal Trucking & Moving LLC', '210 Howison Avenue\nFredericksburg, VA 22401', '540-322-9161', 'Jamal smith', '1', 'Jamalsmith192@yahoo.com', 'maybe'),
('MC1375131', 'BJCF ALL IN ONE LOGISTICS LLC', '\n204 SANTA MARIA AVE\nCOLONIAL BCH, VA 22443', '\n703-965-5354', '', '', '', 'no-answer'),
('MC1377199', 'GLOBAL EQUIPMENT RENTAL LLC', '1220 CANNONS CT\nWOODBRIDGE, VA 22191', '\n703-490-9006', '', '', '', 'said-no'),
('MC1381172', 'Greene & Greene Enterprises LLC', '1524 Merrimac Trail STE L\nWilliamsburg, VA 23185', '202-643-0181', 'amir greene', '1', 'dispatch@greenenational.com', 'said-no'),
('MC1396578', 'Bk Saunders Trucking Llc/Topshelf Logistics Llc', '4128 Ferrara Ter\nWoodbridge, VA 22193-5661', '703-565-3524', '', '', '', 'no-answer'),
('MC1415464', 'D3 HAULING LLC', '1451 SPRING GROVE DR\nRICHMOND, VA 23225-4128', '804-212-9618', '', '', '', 'maybe'),
('MC21424', 'HSZ Transport LLC', '927 Northfield Court\nHarrisonburg, VA 22802', '408-886-0569', 'Hussein Zghayer', '2', 'Hsztransport@yahoo.com', 'no-answer'),
('MC26487', 'Datchers Transport Llc', '103 Forest Ridge Dr\nSterling, VA 20164-2812', '202-413-1373', 'Derrick', '1', 'derrickdatchers2021@gmail.com', 'said-no'),
('MC292761', 'D & D Trucking LLC', '2384 New Chapel Rd\nRustburg, VA 24588-2938', '434-665-1448', 'Melissa or Dale Daniel', '3', 'danddtrking@aol.com', 'said-no'),
('MC3248', 'Black Star Trucking Llc', '\n27301 Saxis Rd\nTemperanceville, VA 23442-2921', '757-407-8141', 'Kendall Matthews', '2', 'Kendallmatthews01@gmail.com', 'no-answer'),
('MC330099', 'Dc Leer', 'PO BOX 15818\nNewport News, VA 23608-3405', '757-898-1965', 'Melinda Hagan', '', 'mhagan@dcleer.com', 'no-answer'),
('MC33282', 'Jordan Transport Llc', '8413 Yolanda Rd\nRichmond, VA 23229-4155', '804-467-3740', 'Abdallah Ahmad', '2', 'ahmadcstore@yahoo.com', 'no-answer'),
('MC372373', 'Aaa Walker Transportation/Walker Transportation', '95 Grace St\nGrottoes, VA 24441-2529', '540-209-9899', '', '', '', 'said-no'),
('MC424529', 'Faltz Trucking Company Inc', '19111 Tomlin Hill Dr\nZuni, VA 23898-2117', '757-636-7896', 'Nathaniel faltz', '2', 'Natefaltz@gmail.com', 'no-answer'),
('MC45527', 'Cdr Trucking Llc', '1036 Tall Grass Ct\nRichmond, VA 23223-5962', '804-909-3809', 'Lakeith Ruffin', '1', 'lpruffin@gmail.com', 'said-no'),
('MC467306', 'A.D. NEDAB TRUCKING L.L.C', '3300 SHIPWRIGHT ST\nPORTSMOUTH, VA 23703', '757-287-3823', 'Alfred Nedab', '2', 'darrellnedab@gmail.com', 'said-no'),
('MC491819', 'Beverly Edgerson Smith', '2511 Patrick Henry Hwy\nMeherrin, VA 23954-5023', '434-736-2208', '', '', '', 'said-no'),
('MC501561', 'Icicle Express Llc', '\n3610 Keota St\nAlexandria, VA 22303-1143', '703-960-4002', 'John Andreadakis', '', 'Ink945@msn.com', 'no-answer'),
('MC511305', 'ATRES TRUCKING INC', '\n1806 COURTHOUSE ROAD\nCHASE CITY, VA 23924', '804-933-6225', 'Albert Alexander Henry Jr', '1', 'staceyhenry1972@yahoo.com', 'no-answer'),
('MC542634', 'D & A Moore Trucking Llc', '3550 19th St S\nArlington, VA 22204-5312', '703-906-6873', 'Darnell Moore', '1', 'Damooretrucking@gmail.com', 'said-no'),
('MC548741', 'D & S Trucking', '5945 Cottage Rd\nBlackstone, VA 23824-3402', '434-294-5878', '', '', '', 'said-no'),
('MC553335', 'F & H Trucking Llc', '4080 Buck Run Court\nRockingham, VA 22802', '540-560-1185', '', '', '', 'said-no'),
('MC554331', 'HAILER TRANSFER INC', '7811 Mulberry Bottom Lane\nSpringfield, VA 22153', '703-913-7800', '', '', '', 'no-answer'),
('MC57026', 'Halal Transportation Llc', '5606 Beach Rd\nMidland, VA 22728-1702', '443-515-8790', 'James French', '', 'frenchjames4@yahoo.com', 'said-no'),
('MC60139', '3P Trading Company Llc', '\n13141 N Enon Church Rd\nChester, VA 23836-3120', '804-357-1424', 'Christian Boehme', '2', 'cboehme@woodfueldevelopers.com', 'no-answer'),
('MC603707', 'Earth Resource Llc', '50 Riverview Shores Dr\nFront Royal, VA 22630-6850', '540-672-8650', 'Lewis Or Ann', '', '1earthresource@gmail.com', 'no-answer'),
('MC619118', 'ALPHA & OMEGA HAULING, LLC', '12204 KEATS GROVE COURT\nGLEN ALLEN, VA 23059', '804-929-4109', 'Wanda Scott-Johnson', '2', 'aohauling1@yahoo.com', 'no-answer'),
('MC628290', 'Clc Trucking Company Llc', '45767 TUFTS TERRACE APT 202\nSTERLING, VA 20166', '571-237-5978', '', '', '', 'no-answer'),
('MC64617', 'GS Transport Inc', '\n131 Taylor Ct\nStephenson, VA 22656-2235', '214-882-7442', 'Gurpreet singh', '3', 'Gsinc85@gmail.com', 'said-no'),
('MC646232', 'EL Sinai Transportation Llc', '100 Castlebury Ct\nStafford, VA 22554-5072', '703-981-1785', 'Wilfredo Romero', '3', 'Elsinaitransportation2018@gmail.com', 'said-no'),
('MC663495', 'G & G Express', '4218 Briarwood Dr\nRichmond, VA 23234-5404', '919-691-6222', 'carlos', '1', 'carlos_gomez@live.com', 'said-no'),
('MC66371', 'Awan Transport Inc', '\n7560 Alleghany Rd\nManassas, VA 20111-4147', '571-619-2194', '', '', '', 'no-answer'),
('MC677745', 'Atlantic Trans Inc', '9257 Alvyn Lake Cir\nBristow, VA 20136-6148', '571-354-9358', 'Davinder', '2', 'Atlantictrans001@yahoo.com', 'said-no'),
('MC67890', 'Freight King Transport Inc', '\n2930 LITTLEBURY DR\nCHESTER, VA 23831', '804-888-5057', 'jay sharma', '5', 'freightking.trans@gmail.com', 'said-no'),
('MC715590', 'A Jones Trucking', '17054 Coal Kiln Rd\nPainter, VA 23420-2249', '757-894-2050', '', '2', '', 'no-answer'),
('MC72093', 'Autobots Transportation Inc', '\n202 Southgate Ave\nFredericksburg, VA 22408-1906', '929-355-0311', 'wally silverio', '2', 'wallysilverio@gmail.com', 'no-answer'),
('MC738942', 'H & A Transport LLC', '\n2432 Berryville Pike Lot 148\nWinchester, VA 22603-5872', '540-877-5155', 'Doyle Hawes', '2', '\ndoylehawes@gmail.com', 'said-no'),
('MC739251', 'Cmzm Trucking Inc', '25 Lucketts Ct\nFredericksburg, VA 22406-8426', '540-273-8152', 'jay', '1', 'cmzm.trucking@gmail.com', 'no-answer'),
('MC74027', 'Dominant Express LLC', '8436 Red Eagle Ct\nLorton, VA 22079-3048', '571-606-5558', 'HARMAN SINGH', '4', 'Dominantdispatch@gmail.com', 'said-no'),
('MC741149', 'Arven Services LLC', '15005 Farm Creek Drive\nWoodbridge, VA 22191', '404-910-3716', 'edward brown jr', '5', 'eb@arvenservices.com', 'maybe'),
('MC749199', 'Emily Transport Inc', '\n6194 Greenwood Dr Apt 202\nFalls Church, VA 22044-2559', '571-422-1003', 'EDWIN ESCOBAR', '2', 'emilytransportinc@gmail.com', 'said-no'),
('MC758395', 'Doaba Transporting Inc', '\n7371 Atlas Walk Way Ste 601\nGainesville, VA 20155-2992', '703-349-5009', 'Waseem', '8', 'cheema527@yahoo.com', 'said-no'),
('MC779687', 'Bowen Boyz Xpress', '\n404 Broken Oak Ct\nSandston, VA 23150-3440', '732-763-5301', '', '', '', 'no-answer'),
('MC796452', 'Barnard Transport Llc', '\n15480 Mica Ln\nAmelia Court House, VA 23002-4650', '804-337-2458', 'Cindy Barnard', '2', 'barnardtransport@aol.com', 'no-answer'),
('MC79825', 'Dosnfx Trucking Llc', '\n2017 Brians Ln\nSuffolk, VA 23434-6330', '757-753-1901', 'Wilbert Doswell', '2', '\ndosnfxtrucking@gmail.com', 'no-answer'),
('MC803411', 'DOUBLE J LOGISTICS INC', '3204 AMERICAN LEGION RD APT D\nCHESAPEAKE, VA 23321', '757-714-2439', 'Carnell', '', 'doublespelloutj_enterprise@yahoo.com', 'maybe'),
('MC808298', 'Far Distributions Llc', '35 Lee St\nVerona, VA 24482-2555', '540-569-7068', 'IGOR FERNANDEZ', '5', '\nfardist.dispatch@gmail.com', 'no-answer'),
('MC811795', 'CNA Transportation', '\n4151 Hudson Cir\nHarrisonburg, VA 22801-2324', '540-405-9149', 'Cesil Gonzalez', '1', 'cna.transportation71121@gmail.com', 'said-no'),
('MC820280', 'Generation Trucking Inc', '169 Crossroads Pl\nLebanon, VA 24266-4528', '276-202-5814', 'James B Harman', '2', 'generationtruckinginc@gmail.com', 'no-answer'),
('MC824786', 'Jl Express', '14211 Santell Dr\nChester, VA 23836-6091', '804-624-0779', 'Jermaine Hill', '1', 'HillJermaine@gmail.com', 'no-answer'),
('MC8283', 'Billing Corporation', '26116 Nimbleton Sq\nSouth Riding, VA 20152-3659', '571-331-7181', 'Sukhvinder Singh', '4', '\nbillingscorporation@gmail.com', 'said-no'),
('MC829544', 'Chapter One Trucking & Logistics Llc', '2504 National St\nHenrico, VA 23231-2029', '804-405-6707', 'P Stevenson', '2', 'chapteronelogistics@gmail.com', 'said-no'),
('MC839387', 'Jim Hall Trucking', '4853 Old Stage Hwy\nSmithfield, VA 23430-4000', '757-419-9878', 'James Hall Jr', '2', 'Jimhalltrucking61@gmail.com', 'no-answer'),
('MC84958', 'ABHI & SEERET TRANSPORT INC', '42194 Highbank Pl\nAldie, VA 20105-5724', '703-626-0403', '', '', '', 'said-no'),
('MC85139', 'Demetrius Jackson Trucking Llc', '2164 Skeetertown Rd\nSuffolk, VA 23434-7849', '757-270-4584', 'Demetrius Jackson', '1', 'demetriusjackson2164@yahoo.com', 'no-answer'),
('MC852220', 'FREIGHT DOCKERS LLC', '\n3005 NEW HERMITAGE COURT\nRICHMOND, VA 23228', '804-517-4410', 'Syed Ahmed', '3', 'Freightdockers1@gmail.com', 'said-no'),
('MC881471', 'Classic Contractors Of Virginia Inc', '\n17126 Benns Church Blvd\nSmithfield, VA 23430-6313', '757-357-6745', 'Jackie Phippins', '1', '\njackie@olddominionhay.com', 'no-answer'),
('MC88676', 'ATLANTIS LOGISTICS BROKERAGE LLC', '22611 Markey Ct Ste 112\nSterling, VA 20166-6903', '703-467-0363', '', '', '', 'said-no'),
('MC906685', 'ARTILES EXPRESS LLC', '14 Holly Ct Apt B\nHarrisonburg, VA 22801-4425', '540-607-7733', 'Jesus Artiles', '1', 'Artilesexpress@gmail.com', 'no-answer'),
('MC912752', 'Coast To Coast Express Inc', '114 Kelly Ln\nBumpass, VA 23024-3448', '540-894-1794', 'Viktor', '2', '\nCoasttwocoastexpress@yahoo.com', 'no-answer'),
('MC914569', 'GILL TRANSPORT INC', '41534 QUARTER MANE TER\nALDIE, VA 20105-3107', '571-338-8436', '', '', '', 'said-no'),
('MC915067', 'Installation Services & Delivery Inc', '659 S Broad St\nSalem, VA 24153-5023', '540-808-2462', 'Jamie Phillips', '4', 'jphillips@isdvirginia.com', 'said-no'),
('MC922923', 'HABIMANA EXPRESS LLC', '601 G ST\nHAMPTON, VA 23661', '602-332-0789', 'Habimana Joseph', '2', 'Habimanaexpress.joe@gmail.com', 'no-answer'),
('MC92878', 'Ab Newfort Express Llc', '2970 Monticello Dr\nFalls Church, VA 22042-1522', '717-701-7757', 'ABEL BECERRA', '1', 'ab.newfort@gmail.com', 'said-no'),
('MC937611', 'Awwad Transportation Llc', '\n5724 Magnolia Ln\nFalls Church, VA 22041-1647', '804-334-0001', 'wanes saud', '', 'awwadtrucking@gmail.com', 'no-answer'),
('MC940961', 'Booker Transportation Services Llc', '2495 Clover Field Cir\nHerndon, VA 20171-4313', '703-798-9716', 'Walter Booker', '2', '\nBookertrans@outlook.com', 'said-no'),
('MC942807', 'AHA Trucking Llc', '\n8 S Van Dorn St Apt 501\nAlexandria, VA 22304-4228', '703-400-6982', 'Aron Habtegergs', '1', 'z.almedom@yahoo.com', 'said-no'),
('MC954222', 'Contreras Express Llc', '718 Jenny Ann Ct\nHerndon, VA 20170-3152', '571-287-9491', 'MARIA CONTRERAS', '', 'C.EXPRS@GMAIL.COM', 'said-no'),
('MC962977', 'Favour Logistics Llc', '\n650 Burnside Ter SE\nLeesburg, VA 20175-8936', '703-930-2577', 'Alberta', '4', 'favourlogistics@gmail.com', 'no-answer'),
('MC965989', 'B C Trucking', '2001 Connell Rd\nBrodnax, VA 23920', '434-247-9381', 'William Blackwell', '1', 'williamblackwell97@gmail.com', 'said-no'),
('MC994667', 'BLAND TRUCKING COMPANY LLC', '1705 2ND ST\nVICTORIA, VA 23974', '434-480-1777', 'Michael Odell Bland', '3', 'Blandtrucking@yahoo.com', 'no-answer'),
('MC999612', 'H & L Trucking Inc', '3485 Green Ridge Ct\nRoanoke, VA 24019-1864', '540-580-4806', 'dawn', '2', 'hkasey3571@gmail.com', 'said-no');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `va2pow`
--
ALTER TABLE `va2pow`
  ADD PRIMARY KEY (`s_mc_number`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
