-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 04, 2024 at 10:04 PM
-- Server version: 10.6.17-MariaDB
-- PHP Version: 8.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `modernit_insurence`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `location_countries`
--

CREATE TABLE `location_countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `country_code` varchar(20) DEFAULT NULL,
  `country_short_code` varchar(20) DEFAULT NULL,
  `flag_url` varchar(200) DEFAULT NULL,
  `country_symbol` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`country_symbol`)),
  `serial` int(11) DEFAULT NULL,
  `creator` bigint(20) UNSIGNED DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `location_countries`
--

INSERT INTO `location_countries` (`id`, `name`, `country_code`, `country_short_code`, `flag_url`, `country_symbol`, `serial`, `creator`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Moldova', '+373', 'MD', 'https://flagcdn.com/w320/md.png', '{\"MDL\": {\"name\": \"Moldovan leu\", \"symbol\": \"L\"}}', NULL, NULL, 'moldova-8861150', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(2, 'United States', '+1201', 'US', 'https://flagcdn.com/w320/us.png', '{\"USD\": {\"name\": \"United States dollar\", \"symbol\": \"$\"}}', NULL, NULL, 'united-states-2062369', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(3, 'Mayotte', '+262', 'YT', 'https://flagcdn.com/w320/yt.png', '{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}', NULL, NULL, 'mayotte-9693496', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(4, 'Nauru', '+674', 'NR', 'https://flagcdn.com/w320/nr.png', '{\"AUD\": {\"name\": \"Australian dollar\", \"symbol\": \"$\"}}', NULL, NULL, 'nauru-4084675', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(5, 'Mozambique', '+258', 'MZ', 'https://flagcdn.com/w320/mz.png', '{\"MZN\": {\"name\": \"Mozambican metical\", \"symbol\": \"MT\"}}', NULL, NULL, 'mozambique-9135232', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(6, 'Brazil', '+55', 'BR', 'https://flagcdn.com/w320/br.png', '{\"BRL\": {\"name\": \"Brazilian real\", \"symbol\": \"R$\"}}', NULL, NULL, 'brazil-1926748', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(7, 'Cape Verde', '+238', 'CV', 'https://flagcdn.com/w320/cv.png', '{\"CVE\": {\"name\": \"Cape Verdean escudo\", \"symbol\": \"Esc\"}}', NULL, NULL, 'cape-verde-4877887', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(8, 'Equatorial Guinea', '+240', 'GQ', 'https://flagcdn.com/w320/gq.png', '{\"XAF\": {\"name\": \"Central African CFA franc\", \"symbol\": \"Fr\"}}', NULL, NULL, 'equatorial-guinea-6548583', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(9, 'Albania', '+355', 'AL', 'https://flagcdn.com/w320/al.png', '{\"ALL\": {\"name\": \"Albanian lek\", \"symbol\": \"L\"}}', NULL, NULL, 'albania-5779200', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(10, 'United States Virgin Islands', '+1340', 'VI', 'https://flagcdn.com/w320/vi.png', '{\"USD\": {\"name\": \"United States dollar\", \"symbol\": \"$\"}}', NULL, NULL, 'united-states-virgin-islands-94110430', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(11, 'Niue', '+683', 'NU', 'https://flagcdn.com/w320/nu.png', '{\"NZD\": {\"name\": \"New Zealand dollar\", \"symbol\": \"$\"}}', NULL, NULL, 'niue-99011642', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(12, 'Palau', '+680', 'PW', 'https://flagcdn.com/w320/pw.png', '{\"USD\": {\"name\": \"United States dollar\", \"symbol\": \"$\"}}', NULL, NULL, 'palau-64012824', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(13, 'Nigeria', '+234', 'NG', 'https://flagcdn.com/w320/ng.png', '{\"NGN\": {\"name\": \"Nigerian naira\", \"symbol\": \"₦\"}}', NULL, NULL, 'nigeria-96413892', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(14, 'British Virgin Islands', '+1284', 'VG', 'https://flagcdn.com/w320/vg.png', '{\"USD\": {\"name\": \"United States dollar\", \"symbol\": \"$\"}}', NULL, NULL, 'british-virgin-islands-28814707', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(15, 'Gambia', '+220', 'GM', 'https://flagcdn.com/w320/gm.png', '{\"GMD\": {\"name\": \"dalasi\", \"symbol\": \"D\"}}', NULL, NULL, 'gambia-79515539', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(16, 'Somalia', '+252', 'SO', 'https://flagcdn.com/w320/so.png', '{\"SOS\": {\"name\": \"Somali shilling\", \"symbol\": \"Sh\"}}', NULL, NULL, 'somalia-52716758', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(17, 'Yemen', '+967', 'YE', 'https://flagcdn.com/w320/ye.png', '{\"YER\": {\"name\": \"Yemeni rial\", \"symbol\": \"﷼\"}}', NULL, NULL, 'yemen-55417661', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(18, 'Malaysia', '+60', 'MY', 'https://flagcdn.com/w320/my.png', '{\"MYR\": {\"name\": \"Malaysian ringgit\", \"symbol\": \"RM\"}}', NULL, NULL, 'malaysia-91918865', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(19, 'Dominica', '+1767', 'DM', 'https://flagcdn.com/w320/dm.png', '{\"XCD\": {\"name\": \"Eastern Caribbean dollar\", \"symbol\": \"$\"}}', NULL, NULL, 'dominica-75119283', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(20, 'United Kingdom', '+44', 'GB', 'https://flagcdn.com/w320/gb.png', '{\"GBP\": {\"name\": \"British pound\", \"symbol\": \"£\"}}', NULL, NULL, 'united-kingdom-12120188', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(21, 'Madagascar', '+261', 'MG', 'https://flagcdn.com/w320/mg.png', '{\"MGA\": {\"name\": \"Malagasy ariary\", \"symbol\": \"Ar\"}}', NULL, NULL, 'madagascar-31621439', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(22, 'Western Sahara', '+2125288', 'EH', 'https://flagcdn.com/w320/eh.png', '{\"DZD\": {\"name\": \"Algerian dinar\", \"symbol\": \"دج\"}, \"MAD\": {\"name\": \"Moroccan dirham\", \"symbol\": \"DH\"}, \"MRU\": {\"name\": \"Mauritanian ouguiya\", \"symbol\": \"UM\"}}', NULL, NULL, 'western-sahara-38122355', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(23, 'Cyprus', '+357', 'CY', 'https://flagcdn.com/w320/cy.png', '{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}', NULL, NULL, 'cyprus-62223971', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(24, 'Antigua and Barbuda', '+1268', 'AG', 'https://flagcdn.com/w320/ag.png', '{\"XCD\": {\"name\": \"Eastern Caribbean dollar\", \"symbol\": \"$\"}}', NULL, NULL, 'antigua-and-barbuda-63024820', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(25, 'Ireland', '+353', 'IE', 'https://flagcdn.com/w320/ie.png', '{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}', NULL, NULL, 'ireland-43825482', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(26, 'Paraguay', '+595', 'PY', 'https://flagcdn.com/w320/py.png', '{\"PYG\": {\"name\": \"Paraguayan guaraní\", \"symbol\": \"₲\"}}', NULL, NULL, 'paraguay-79426311', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(27, 'Sri Lanka', '+94', 'LK', 'https://flagcdn.com/w320/lk.png', '{\"LKR\": {\"name\": \"Sri Lankan rupee\", \"symbol\": \"Rs  රු\"}}', NULL, NULL, 'sri-lanka-39227815', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(28, 'South Africa', '+27', 'ZA', 'https://flagcdn.com/w320/za.png', '{\"ZAR\": {\"name\": \"South African rand\", \"symbol\": \"R\"}}', NULL, NULL, 'south-africa-48728821', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(29, 'Kuwait', '+965', 'KW', 'https://flagcdn.com/w320/kw.png', '{\"KWD\": {\"name\": \"Kuwaiti dinar\", \"symbol\": \"د.ك\"}}', NULL, NULL, 'kuwait-36029788', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(30, 'Algeria', '+213', 'DZ', 'https://flagcdn.com/w320/dz.png', '{\"DZD\": {\"name\": \"Algerian dinar\", \"symbol\": \"د.ج\"}}', NULL, NULL, 'algeria-88730998', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(31, 'Croatia', '+385', 'HR', 'https://flagcdn.com/w320/hr.png', '{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}', NULL, NULL, 'croatia-38531330', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(32, 'Martinique', '+596', 'MQ', 'https://flagcdn.com/w320/mq.png', '{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}', NULL, NULL, 'martinique-46532883', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(33, 'Sierra Leone', '+232', 'SL', 'https://flagcdn.com/w320/sl.png', '{\"SLL\": {\"name\": \"Sierra Leonean leone\", \"symbol\": \"Le\"}}', NULL, NULL, 'sierra-leone-76933589', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(34, 'Northern Mariana Islands', '+1670', 'MP', 'https://flagcdn.com/w320/mp.png', '{\"USD\": {\"name\": \"United States dollar\", \"symbol\": \"$\"}}', NULL, NULL, 'northern-mariana-islands-80234827', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(35, 'Rwanda', '+250', 'RW', 'https://flagcdn.com/w320/rw.png', '{\"RWF\": {\"name\": \"Rwandan franc\", \"symbol\": \"Fr\"}}', NULL, NULL, 'rwanda-10935873', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(36, 'Syria', '+963', 'SY', 'https://flagcdn.com/w320/sy.png', '{\"SYP\": {\"name\": \"Syrian pound\", \"symbol\": \"£\"}}', NULL, NULL, 'syria-81836252', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(37, 'Saint Vincent and the Grenadines', '+1784', 'VC', 'https://flagcdn.com/w320/vc.png', '{\"XCD\": {\"name\": \"Eastern Caribbean dollar\", \"symbol\": \"$\"}}', NULL, NULL, 'saint-vincent-and-the-grenadines-87137105', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(38, 'Kosovo', '+383', 'XK', 'https://flagcdn.com/w320/xk.png', '{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}', NULL, NULL, 'kosovo-40938360', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(39, 'Saint Lucia', '+1758', 'LC', 'https://flagcdn.com/w320/lc.png', '{\"XCD\": {\"name\": \"Eastern Caribbean dollar\", \"symbol\": \"$\"}}', NULL, NULL, 'saint-lucia-38839755', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(40, 'Honduras', '+504', 'HN', 'https://flagcdn.com/w320/hn.png', '{\"HNL\": {\"name\": \"Honduran lempira\", \"symbol\": \"L\"}}', NULL, NULL, 'honduras-89540701', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(41, 'Jordan', '+962', 'JO', 'https://flagcdn.com/w320/jo.png', '{\"JOD\": {\"name\": \"Jordanian dinar\", \"symbol\": \"د.ا\"}}', NULL, NULL, 'jordan-27641896', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(42, 'Tuvalu', '+688', 'TV', 'https://flagcdn.com/w320/tv.png', '{\"AUD\": {\"name\": \"Australian dollar\", \"symbol\": \"$\"}, \"TVD\": {\"name\": \"Tuvaluan dollar\", \"symbol\": \"$\"}}', NULL, NULL, 'tuvalu-95942140', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(43, 'Nepal', '+977', 'NP', 'https://flagcdn.com/w320/np.png', '{\"NPR\": {\"name\": \"Nepalese rupee\", \"symbol\": \"₨\"}}', NULL, NULL, 'nepal-97543674', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(44, 'Liberia', '+231', 'LR', 'https://flagcdn.com/w320/lr.png', '{\"LRD\": {\"name\": \"Liberian dollar\", \"symbol\": \"$\"}}', NULL, NULL, 'liberia-57944246', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(45, 'Heard Island and McDonald Islands', '', 'HM', 'https://flagcdn.com/w320/hm.png', '\"\"', NULL, NULL, 'heard-island-and-mcdonald-islands-77145544', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(46, 'Austria', '+43', 'AT', 'https://flagcdn.com/w320/at.png', '{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}', NULL, NULL, 'austria-67646389', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(47, 'Guernsey', '+44', 'GG', 'https://flagcdn.com/w320/gg.png', '{\"GBP\": {\"name\": \"British pound\", \"symbol\": \"£\"}, \"GGP\": {\"name\": \"Guernsey pound\", \"symbol\": \"£\"}}', NULL, NULL, 'guernsey-61247996', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(48, 'Central African Republic', '+236', 'CF', 'https://flagcdn.com/w320/cf.png', '{\"XAF\": {\"name\": \"Central African CFA franc\", \"symbol\": \"Fr\"}}', NULL, NULL, 'central-african-republic-65248936', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(49, 'Mauritania', '+222', 'MR', 'https://flagcdn.com/w320/mr.png', '{\"MRU\": {\"name\": \"Mauritanian ouguiya\", \"symbol\": \"UM\"}}', NULL, NULL, 'mauritania-12349206', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(50, 'Djibouti', '+253', 'DJ', 'https://flagcdn.com/w320/dj.png', '{\"DJF\": {\"name\": \"Djiboutian franc\", \"symbol\": \"Fr\"}}', NULL, NULL, 'djibouti-76950322', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(51, 'Fiji', '+679', 'FJ', 'https://flagcdn.com/w320/fj.png', '{\"FJD\": {\"name\": \"Fijian dollar\", \"symbol\": \"$\"}}', NULL, NULL, 'fiji-47251117', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(52, 'Norway', '+47', 'NO', 'https://flagcdn.com/w320/no.png', '{\"NOK\": {\"name\": \"Norwegian krone\", \"symbol\": \"kr\"}}', NULL, NULL, 'norway-30352432', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(53, 'Latvia', '+371', 'LV', 'https://flagcdn.com/w320/lv.png', '{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}', NULL, NULL, 'latvia-46253409', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(54, 'Falkland Islands', '+500', 'FK', 'https://flagcdn.com/w320/fk.png', '{\"FKP\": {\"name\": \"Falkland Islands pound\", \"symbol\": \"£\"}}', NULL, NULL, 'falkland-islands-44654801', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(55, 'Kazakhstan', '+76', 'KZ', 'https://flagcdn.com/w320/kz.png', '{\"KZT\": {\"name\": \"Kazakhstani tenge\", \"symbol\": \"₸\"}}', NULL, NULL, 'kazakhstan-28255476', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(56, 'Åland Islands', '+35818', 'AX', 'https://flagcdn.com/w320/ax.png', '{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}', NULL, NULL, 'aland-islands-32256668', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(57, 'Turkmenistan', '+993', 'TM', 'https://flagcdn.com/w320/tm.png', '{\"TMT\": {\"name\": \"Turkmenistan manat\", \"symbol\": \"m\"}}', NULL, NULL, 'turkmenistan-17757861', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(58, 'Cocos (Keeling) Islands', '+61', 'CC', 'https://flagcdn.com/w320/cc.png', '{\"AUD\": {\"name\": \"Australian dollar\", \"symbol\": \"$\"}}', NULL, NULL, 'cocos-keeling-islands-68158744', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(59, 'Bulgaria', '+359', 'BG', 'https://flagcdn.com/w320/bg.png', '{\"BGN\": {\"name\": \"Bulgarian lev\", \"symbol\": \"лв\"}}', NULL, NULL, 'bulgaria-90259785', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(60, 'Tokelau', '+690', 'TK', 'https://flagcdn.com/w320/tk.png', '{\"NZD\": {\"name\": \"New Zealand dollar\", \"symbol\": \"$\"}}', NULL, NULL, 'tokelau-19960201', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(61, 'New Caledonia', '+687', 'NC', 'https://flagcdn.com/w320/nc.png', '{\"XPF\": {\"name\": \"CFP franc\", \"symbol\": \"₣\"}}', NULL, NULL, 'new-caledonia-40561345', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(62, 'Barbados', '+1246', 'BB', 'https://flagcdn.com/w320/bb.png', '{\"BBD\": {\"name\": \"Barbadian dollar\", \"symbol\": \"$\"}}', NULL, NULL, 'barbados-32262644', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(63, 'São Tomé and Príncipe', '+239', 'ST', 'https://flagcdn.com/w320/st.png', '{\"STN\": {\"name\": \"São Tomé and Príncipe dobra\", \"symbol\": \"Db\"}}', NULL, NULL, 'sao-tome-and-principe-17463149', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(64, 'Antarctica', '', 'AQ', 'https://flagcdn.com/w320/aq.png', '\"\"', NULL, NULL, 'antarctica-27664984', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(65, 'Brunei', '+673', 'BN', 'https://flagcdn.com/w320/bn.png', '{\"BND\": {\"name\": \"Brunei dollar\", \"symbol\": \"$\"}, \"SGD\": {\"name\": \"Singapore dollar\", \"symbol\": \"$\"}}', NULL, NULL, 'brunei-36265137', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(66, 'Bhutan', '+975', 'BT', 'https://flagcdn.com/w320/bt.png', '{\"BTN\": {\"name\": \"Bhutanese ngultrum\", \"symbol\": \"Nu.\"}, \"INR\": {\"name\": \"Indian rupee\", \"symbol\": \"₹\"}}', NULL, NULL, 'bhutan-51566579', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(67, 'Cameroon', '+237', 'CM', 'https://flagcdn.com/w320/cm.png', '{\"XAF\": {\"name\": \"Central African CFA franc\", \"symbol\": \"Fr\"}}', NULL, NULL, 'cameroon-25467875', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(68, 'Argentina', '+54', 'AR', 'https://flagcdn.com/w320/ar.png', '{\"ARS\": {\"name\": \"Argentine peso\", \"symbol\": \"$\"}}', NULL, NULL, 'argentina-12468251', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(69, 'Azerbaijan', '+994', 'AZ', 'https://flagcdn.com/w320/az.png', '{\"AZN\": {\"name\": \"Azerbaijani manat\", \"symbol\": \"₼\"}}', NULL, NULL, 'azerbaijan-94969529', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(70, 'Mexico', '+52', 'MX', 'https://flagcdn.com/w320/mx.png', '{\"MXN\": {\"name\": \"Mexican peso\", \"symbol\": \"$\"}}', NULL, NULL, 'mexico-79270709', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(71, 'Morocco', '+212', 'MA', 'https://flagcdn.com/w320/ma.png', '{\"MAD\": {\"name\": \"Moroccan dirham\", \"symbol\": \"د.م.\"}}', NULL, NULL, 'morocco-28971357', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(72, 'Guatemala', '+502', 'GT', 'https://flagcdn.com/w320/gt.png', '{\"GTQ\": {\"name\": \"Guatemalan quetzal\", \"symbol\": \"Q\"}}', NULL, NULL, 'guatemala-27372582', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(73, 'Kenya', '+254', 'KE', 'https://flagcdn.com/w320/ke.png', '{\"KES\": {\"name\": \"Kenyan shilling\", \"symbol\": \"Sh\"}}', NULL, NULL, 'kenya-81873507', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(74, 'Malta', '+356', 'MT', 'https://flagcdn.com/w320/mt.png', '{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}', NULL, NULL, 'malta-79674642', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(75, 'Czechia', '+420', 'CZ', 'https://flagcdn.com/w320/cz.png', '{\"CZK\": {\"name\": \"Czech koruna\", \"symbol\": \"Kč\"}}', NULL, NULL, 'czechia-88975920', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(76, 'Gibraltar', '+350', 'GI', 'https://flagcdn.com/w320/gi.png', '{\"GIP\": {\"name\": \"Gibraltar pound\", \"symbol\": \"£\"}}', NULL, NULL, 'gibraltar-32976118', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(77, 'Aruba', '+297', 'AW', 'https://flagcdn.com/w320/aw.png', '{\"AWG\": {\"name\": \"Aruban florin\", \"symbol\": \"ƒ\"}}', NULL, NULL, 'aruba-53577976', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(78, 'Saint Barthélemy', '+590', 'BL', 'https://flagcdn.com/w320/bl.png', '{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}', NULL, NULL, 'saint-barthelemy-52178761', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(79, 'Monaco', '+377', 'MC', 'https://flagcdn.com/w320/mc.png', '{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}', NULL, NULL, 'monaco-89979493', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(80, 'United Arab Emirates', '+971', 'AE', 'https://flagcdn.com/w320/ae.png', '{\"AED\": {\"name\": \"United Arab Emirates dirham\", \"symbol\": \"د.إ\"}}', NULL, NULL, 'united-arab-emirates-61680318', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(81, 'South Sudan', '+211', 'SS', 'https://flagcdn.com/w320/ss.png', '{\"SSP\": {\"name\": \"South Sudanese pound\", \"symbol\": \"£\"}}', NULL, NULL, 'south-sudan-56881669', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(82, 'Puerto Rico', '+1787', 'PR', 'https://flagcdn.com/w320/pr.png', '{\"USD\": {\"name\": \"United States dollar\", \"symbol\": \"$\"}}', NULL, NULL, 'puerto-rico-74982366', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(83, 'El Salvador', '+503', 'SV', 'https://flagcdn.com/w320/sv.png', '{\"USD\": {\"name\": \"United States dollar\", \"symbol\": \"$\"}}', NULL, NULL, 'el-salvador-15583653', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(84, 'France', '+33', 'FR', 'https://flagcdn.com/w320/fr.png', '{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}', NULL, NULL, 'france-15384591', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(85, 'Niger', '+227', 'NE', 'https://flagcdn.com/w320/ne.png', '{\"XOF\": {\"name\": \"West African CFA franc\", \"symbol\": \"Fr\"}}', NULL, NULL, 'niger-26885320', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(86, 'Ivory Coast', '+225', 'CI', 'https://flagcdn.com/w320/ci.png', '{\"XOF\": {\"name\": \"West African CFA franc\", \"symbol\": \"Fr\"}}', NULL, NULL, 'ivory-coast-61486316', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(87, 'South Georgia', '+500', 'GS', 'https://flagcdn.com/w320/gs.png', '{\"SHP\": {\"name\": \"Saint Helena pound\", \"symbol\": \"£\"}}', NULL, NULL, 'south-georgia-53487691', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(88, 'Botswana', '+267', 'BW', 'https://flagcdn.com/w320/bw.png', '{\"BWP\": {\"name\": \"Botswana pula\", \"symbol\": \"P\"}}', NULL, NULL, 'botswana-97988332', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(89, 'British Indian Ocean Territory', '+246', 'IO', 'https://flagcdn.com/w320/io.png', '{\"USD\": {\"name\": \"United States dollar\", \"symbol\": \"$\"}}', NULL, NULL, 'british-indian-ocean-territory-51889406', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(90, 'Uzbekistan', '+998', 'UZ', 'https://flagcdn.com/w320/uz.png', '{\"UZS\": {\"name\": \"Uzbekistani soʻm\", \"symbol\": \"so\'m\"}}', NULL, NULL, 'uzbekistan-27590674', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(91, 'Tunisia', '+216', 'TN', 'https://flagcdn.com/w320/tn.png', '{\"TND\": {\"name\": \"Tunisian dinar\", \"symbol\": \"د.ت\"}}', NULL, NULL, 'tunisia-96691186', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(92, 'Hong Kong', '+852', 'HK', 'https://flagcdn.com/w320/hk.png', '{\"HKD\": {\"name\": \"Hong Kong dollar\", \"symbol\": \"$\"}}', NULL, NULL, 'hong-kong-58992991', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(93, 'North Macedonia', '+389', 'MK', 'https://flagcdn.com/w320/mk.png', '{\"MKD\": {\"name\": \"denar\", \"symbol\": \"den\"}}', NULL, NULL, 'north-macedonia-73693215', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(94, 'Suriname', '+597', 'SR', 'https://flagcdn.com/w320/sr.png', '{\"SRD\": {\"name\": \"Surinamese dollar\", \"symbol\": \"$\"}}', NULL, NULL, 'suriname-82194377', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(95, 'Belgium', '+32', 'BE', 'https://flagcdn.com/w320/be.png', '{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}', NULL, NULL, 'belgium-69895225', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(96, 'American Samoa', '+1684', 'AS', 'https://flagcdn.com/w320/as.png', '{\"USD\": {\"name\": \"United States dollar\", \"symbol\": \"$\"}}', NULL, NULL, 'american-samoa-81996180', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(97, 'Solomon Islands', '+677', 'SB', 'https://flagcdn.com/w320/sb.png', '{\"SBD\": {\"name\": \"Solomon Islands dollar\", \"symbol\": \"$\"}}', NULL, NULL, 'solomon-islands-24897852', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(98, 'Ukraine', '+380', 'UA', 'https://flagcdn.com/w320/ua.png', '{\"UAH\": {\"name\": \"Ukrainian hryvnia\", \"symbol\": \"₴\"}}', NULL, NULL, 'ukraine-34698377', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(99, 'Finland', '+358', 'FI', 'https://flagcdn.com/w320/fi.png', '{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}', NULL, NULL, 'finland-91799991', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(100, 'Burkina Faso', '+226', 'BF', 'https://flagcdn.com/w320/bf.png', '{\"XOF\": {\"name\": \"West African CFA franc\", \"symbol\": \"Fr\"}}', NULL, NULL, 'burkina-faso-212100361', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(101, 'Bosnia and Herzegovina', '+387', 'BA', 'https://flagcdn.com/w320/ba.png', '{\"BAM\": {\"name\": \"Bosnia and Herzegovina convertible mark\"}}', NULL, NULL, 'bosnia-and-herzegovina-881101279', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(102, 'Iran', '+98', 'IR', 'https://flagcdn.com/w320/ir.png', '{\"IRR\": {\"name\": \"Iranian rial\", \"symbol\": \"﷼\"}}', NULL, NULL, 'iran-844102447', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(103, 'Cuba', '+53', 'CU', 'https://flagcdn.com/w320/cu.png', '{\"CUC\": {\"name\": \"Cuban convertible peso\", \"symbol\": \"$\"}, \"CUP\": {\"name\": \"Cuban peso\", \"symbol\": \"$\"}}', NULL, NULL, 'cuba-126103529', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(104, 'Eritrea', '+291', 'ER', 'https://flagcdn.com/w320/er.png', '{\"ERN\": {\"name\": \"Eritrean nakfa\", \"symbol\": \"Nfk\"}}', NULL, NULL, 'eritrea-152104313', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(105, 'Slovakia', '+421', 'SK', 'https://flagcdn.com/w320/sk.png', '{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}', NULL, NULL, 'slovakia-651105634', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(106, 'Lithuania', '+370', 'LT', 'https://flagcdn.com/w320/lt.png', '{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}', NULL, NULL, 'lithuania-424106604', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(107, 'Saint Martin', '+590', 'MF', 'https://flagcdn.com/w320/mf.png', '{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}', NULL, NULL, 'saint-martin-268107952', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(108, 'Pitcairn Islands', '+64', 'PN', 'https://flagcdn.com/w320/pn.png', '{\"NZD\": {\"name\": \"New Zealand dollar\", \"symbol\": \"$\"}}', NULL, NULL, 'pitcairn-islands-751108358', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(109, 'Guinea-Bissau', '+245', 'GW', 'https://flagcdn.com/w320/gw.png', '{\"XOF\": {\"name\": \"West African CFA franc\", \"symbol\": \"Fr\"}}', NULL, NULL, 'guinea-bissau-802109485', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(110, 'Montserrat', '+1664', 'MS', 'https://flagcdn.com/w320/ms.png', '{\"XCD\": {\"name\": \"Eastern Caribbean dollar\", \"symbol\": \"$\"}}', NULL, NULL, 'montserrat-711110481', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(111, 'Turkey', '+90', 'TR', 'https://flagcdn.com/w320/tr.png', '{\"TRY\": {\"name\": \"Turkish lira\", \"symbol\": \"₺\"}}', NULL, NULL, 'turkey-196111519', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(112, 'Philippines', '+63', 'PH', 'https://flagcdn.com/w320/ph.png', '{\"PHP\": {\"name\": \"Philippine peso\", \"symbol\": \"₱\"}}', NULL, NULL, 'philippines-101112817', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(113, 'Vanuatu', '+678', 'VU', 'https://flagcdn.com/w320/vu.png', '{\"VUV\": {\"name\": \"Vanuatu vatu\", \"symbol\": \"Vt\"}}', NULL, NULL, 'vanuatu-318113490', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(114, 'Bolivia', '+591', 'BO', 'https://flagcdn.com/w320/bo.png', '{\"BOB\": {\"name\": \"Bolivian boliviano\", \"symbol\": \"Bs.\"}}', NULL, NULL, 'bolivia-236114748', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(115, 'Saint Kitts and Nevis', '+1869', 'KN', 'https://flagcdn.com/w320/kn.png', '{\"XCD\": {\"name\": \"Eastern Caribbean dollar\", \"symbol\": \"$\"}}', NULL, NULL, 'saint-kitts-and-nevis-133115133', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(116, 'Romania', '+40', 'RO', 'https://flagcdn.com/w320/ro.png', '{\"RON\": {\"name\": \"Romanian leu\", \"symbol\": \"lei\"}}', NULL, NULL, 'romania-727116520', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(117, 'Cambodia', '+855', 'KH', 'https://flagcdn.com/w320/kh.png', '{\"KHR\": {\"name\": \"Cambodian riel\", \"symbol\": \"៛\"}, \"USD\": {\"name\": \"United States dollar\", \"symbol\": \"$\"}}', NULL, NULL, 'cambodia-218117777', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(118, 'Zimbabwe', '+263', 'ZW', 'https://flagcdn.com/w320/zw.png', '{\"ZWL\": {\"name\": \"Zimbabwean dollar\", \"symbol\": \"$\"}}', NULL, NULL, 'zimbabwe-934118699', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(119, 'Jersey', '+44', 'JE', 'https://flagcdn.com/w320/je.png', '{\"GBP\": {\"name\": \"British pound\", \"symbol\": \"£\"}, \"JEP\": {\"name\": \"Jersey pound\", \"symbol\": \"£\"}}', NULL, NULL, 'jersey-358119828', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(120, 'Kyrgyzstan', '+996', 'KG', 'https://flagcdn.com/w320/kg.png', '{\"KGS\": {\"name\": \"Kyrgyzstani som\", \"symbol\": \"с\"}}', NULL, NULL, 'kyrgyzstan-115120539', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(121, 'Caribbean Netherlands', '+599', 'BQ', 'https://flagcdn.com/w320/bq.png', '{\"USD\": {\"name\": \"United States dollar\", \"symbol\": \"$\"}}', NULL, NULL, 'caribbean-netherlands-694121386', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(122, 'Guyana', '+592', 'GY', 'https://flagcdn.com/w320/gy.png', '{\"GYD\": {\"name\": \"Guyanese dollar\", \"symbol\": \"$\"}}', NULL, NULL, 'guyana-702122617', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(123, 'United States Minor Outlying Islands', '+268', 'UM', 'https://flagcdn.com/w320/um.png', '{\"USD\": {\"name\": \"United States dollar\", \"symbol\": \"$\"}}', NULL, NULL, 'united-states-minor-outlying-islands-601123166', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(124, 'Armenia', '+374', 'AM', 'https://flagcdn.com/w320/am.png', '{\"AMD\": {\"name\": \"Armenian dram\", \"symbol\": \"֏\"}}', NULL, NULL, 'armenia-586124702', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(125, 'Lebanon', '+961', 'LB', 'https://flagcdn.com/w320/lb.png', '{\"LBP\": {\"name\": \"Lebanese pound\", \"symbol\": \"ل.ل\"}}', NULL, NULL, 'lebanon-276125637', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(126, 'Montenegro', '+382', 'ME', 'https://flagcdn.com/w320/me.png', '{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}', NULL, NULL, 'montenegro-561126782', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(127, 'Greenland', '+299', 'GL', 'https://flagcdn.com/w320/gl.png', '{\"DKK\": {\"name\": \"krone\", \"symbol\": \"kr.\"}}', NULL, NULL, 'greenland-228127115', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(128, 'Papua New Guinea', '+675', 'PG', 'https://flagcdn.com/w320/pg.png', '{\"PGK\": {\"name\": \"Papua New Guinean kina\", \"symbol\": \"K\"}}', NULL, NULL, 'papua-new-guinea-555128409', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(129, 'Zambia', '+260', 'ZM', 'https://flagcdn.com/w320/zm.png', '{\"ZMW\": {\"name\": \"Zambian kwacha\", \"symbol\": \"ZK\"}}', NULL, NULL, 'zambia-869129805', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(130, 'Trinidad and Tobago', '+1868', 'TT', 'https://flagcdn.com/w320/tt.png', '{\"TTD\": {\"name\": \"Trinidad and Tobago dollar\", \"symbol\": \"$\"}}', NULL, NULL, 'trinidad-and-tobago-345130510', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(131, 'French Southern and Antarctic Lands', '+262', 'TF', 'https://flagcdn.com/w320/tf.png', '{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}', NULL, NULL, 'french-southern-and-antarctic-lands-765131553', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(132, 'Peru', '+51', 'PE', 'https://flagcdn.com/w320/pe.png', '{\"PEN\": {\"name\": \"Peruvian sol\", \"symbol\": \"S/ \"}}', NULL, NULL, 'peru-862132321', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(133, 'Sweden', '+46', 'SE', 'https://flagcdn.com/w320/se.png', '{\"SEK\": {\"name\": \"Swedish krona\", \"symbol\": \"kr\"}}', NULL, NULL, 'sweden-373133528', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(134, 'Sudan', '+249', 'SD', 'https://flagcdn.com/w320/sd.png', '{\"SDG\": {\"name\": \"Sudanese pound\"}}', NULL, NULL, 'sudan-821134370', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(135, 'Saint Pierre and Miquelon', '+508', 'PM', 'https://flagcdn.com/w320/pm.png', '{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}', NULL, NULL, 'saint-pierre-and-miquelon-599135540', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(136, 'Oman', '+968', 'OM', 'https://flagcdn.com/w320/om.png', '{\"OMR\": {\"name\": \"Omani rial\", \"symbol\": \"ر.ع.\"}}', NULL, NULL, 'oman-402136171', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(137, 'India', '+91', 'IN', 'https://flagcdn.com/w320/in.png', '{\"INR\": {\"name\": \"Indian rupee\", \"symbol\": \"₹\"}}', NULL, NULL, 'india-777137351', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(138, 'Taiwan', '+886', 'TW', 'https://flagcdn.com/w320/tw.png', '{\"TWD\": {\"name\": \"New Taiwan dollar\", \"symbol\": \"$\"}}', NULL, NULL, 'taiwan-237138108', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(139, 'Mongolia', '+976', 'MN', 'https://flagcdn.com/w320/mn.png', '{\"MNT\": {\"name\": \"Mongolian tögrög\", \"symbol\": \"₮\"}}', NULL, NULL, 'mongolia-425139122', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(140, 'Senegal', '+221', 'SN', 'https://flagcdn.com/w320/sn.png', '{\"XOF\": {\"name\": \"West African CFA franc\", \"symbol\": \"Fr\"}}', NULL, NULL, 'senegal-506140522', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(141, 'Tanzania', '+255', 'TZ', 'https://flagcdn.com/w320/tz.png', '{\"TZS\": {\"name\": \"Tanzanian shilling\", \"symbol\": \"Sh\"}}', NULL, NULL, 'tanzania-751141722', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(142, 'Canada', '+1', 'CA', 'https://flagcdn.com/w320/ca.png', '{\"CAD\": {\"name\": \"Canadian dollar\", \"symbol\": \"$\"}}', NULL, NULL, 'canada-712142458', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(143, 'Costa Rica', '+506', 'CR', 'https://flagcdn.com/w320/cr.png', '{\"CRC\": {\"name\": \"Costa Rican colón\", \"symbol\": \"₡\"}}', NULL, NULL, 'costa-rica-239143710', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(144, 'China', '+86', 'CN', 'https://flagcdn.com/w320/cn.png', '{\"CNY\": {\"name\": \"Chinese yuan\", \"symbol\": \"¥\"}}', NULL, NULL, 'china-481144313', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(145, 'Colombia', '+57', 'CO', 'https://flagcdn.com/w320/co.png', '{\"COP\": {\"name\": \"Colombian peso\", \"symbol\": \"$\"}}', NULL, NULL, 'colombia-851145723', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(146, 'Myanmar', '+95', 'MM', 'https://flagcdn.com/w320/mm.png', '{\"MMK\": {\"name\": \"Burmese kyat\", \"symbol\": \"Ks\"}}', NULL, NULL, 'myanmar-785146769', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(147, 'Russia', '+73', 'RU', 'https://flagcdn.com/w320/ru.png', '{\"RUB\": {\"name\": \"Russian ruble\", \"symbol\": \"₽\"}}', NULL, NULL, 'russia-176147450', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(148, 'North Korea', '+850', 'KP', 'https://flagcdn.com/w320/kp.png', '{\"KPW\": {\"name\": \"North Korean won\", \"symbol\": \"₩\"}}', NULL, NULL, 'north-korea-498148617', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(149, 'Cayman Islands', '+1345', 'KY', 'https://flagcdn.com/w320/ky.png', '{\"KYD\": {\"name\": \"Cayman Islands dollar\", \"symbol\": \"$\"}}', NULL, NULL, 'cayman-islands-138149330', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(150, 'Bouvet Island', '+47', 'BV', 'https://flagcdn.com/w320/bv.png', '\"\"', NULL, NULL, 'bouvet-island-837150554', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(151, 'Belarus', '+375', 'BY', 'https://flagcdn.com/w320/by.png', '{\"BYN\": {\"name\": \"Belarusian ruble\", \"symbol\": \"Br\"}}', NULL, NULL, 'belarus-509151879', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(152, 'Portugal', '+351', 'PT', 'https://flagcdn.com/w320/pt.png', '{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}', NULL, NULL, 'portugal-599152664', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(153, 'Eswatini', '+268', 'SZ', 'https://flagcdn.com/w320/sz.png', '{\"SZL\": {\"name\": \"Swazi lilangeni\", \"symbol\": \"L\"}, \"ZAR\": {\"name\": \"South African rand\", \"symbol\": \"R\"}}', NULL, NULL, 'eswatini-223153186', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(154, 'Poland', '+48', 'PL', 'https://flagcdn.com/w320/pl.png', '{\"PLN\": {\"name\": \"Polish złoty\", \"symbol\": \"zł\"}}', NULL, NULL, 'poland-202154233', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(155, 'Switzerland', '+41', 'CH', 'https://flagcdn.com/w320/ch.png', '{\"CHF\": {\"name\": \"Swiss franc\", \"symbol\": \"Fr.\"}}', NULL, NULL, 'switzerland-673155362', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(156, 'Republic of the Congo', '+242', 'CG', 'https://flagcdn.com/w320/cg.png', '{\"XAF\": {\"name\": \"Central African CFA franc\", \"symbol\": \"Fr\"}}', NULL, NULL, 'republic-of-the-congo-206156589', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(157, 'Venezuela', '+58', 'VE', 'https://flagcdn.com/w320/ve.png', '{\"VES\": {\"name\": \"Venezuelan bolívar soberano\", \"symbol\": \"Bs.S.\"}}', NULL, NULL, 'venezuela-262157977', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(158, 'Panama', '+507', 'PA', 'https://flagcdn.com/w320/pa.png', '{\"PAB\": {\"name\": \"Panamanian balboa\", \"symbol\": \"B/.\"}, \"USD\": {\"name\": \"United States dollar\", \"symbol\": \"$\"}}', NULL, NULL, 'panama-188158825', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(159, 'Netherlands', '+31', 'NL', 'https://flagcdn.com/w320/nl.png', '{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}', NULL, NULL, 'netherlands-566159280', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(160, 'Samoa', '+685', 'WS', 'https://flagcdn.com/w320/ws.png', '{\"WST\": {\"name\": \"Samoan tālā\", \"symbol\": \"T\"}}', NULL, NULL, 'samoa-806160956', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(161, 'Denmark', '+45', 'DK', 'https://flagcdn.com/w320/dk.png', '{\"DKK\": {\"name\": \"Danish krone\", \"symbol\": \"kr\"}}', NULL, NULL, 'denmark-730161648', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(162, 'Luxembourg', '+352', 'LU', 'https://flagcdn.com/w320/lu.png', '{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}', NULL, NULL, 'luxembourg-678162895', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(163, 'Faroe Islands', '+298', 'FO', 'https://flagcdn.com/w320/fo.png', '{\"DKK\": {\"name\": \"Danish krone\", \"symbol\": \"kr\"}, \"FOK\": {\"name\": \"Faroese króna\", \"symbol\": \"kr\"}}', NULL, NULL, 'faroe-islands-143163665', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(164, 'Slovenia', '+386', 'SI', 'https://flagcdn.com/w320/si.png', '{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}', NULL, NULL, 'slovenia-979164491', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(165, 'Togo', '+228', 'TG', 'https://flagcdn.com/w320/tg.png', '{\"XOF\": {\"name\": \"West African CFA franc\", \"symbol\": \"Fr\"}}', NULL, NULL, 'togo-493165461', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(166, 'Thailand', '+66', 'TH', 'https://flagcdn.com/w320/th.png', '{\"THB\": {\"name\": \"Thai baht\", \"symbol\": \"฿\"}}', NULL, NULL, 'thailand-500166415', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(167, 'Wallis and Futuna', '+681', 'WF', 'https://flagcdn.com/w320/wf.png', '{\"XPF\": {\"name\": \"CFP franc\", \"symbol\": \"₣\"}}', NULL, NULL, 'wallis-and-futuna-481167690', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(168, 'Bahamas', '+1242', 'BS', 'https://flagcdn.com/w320/bs.png', '{\"BSD\": {\"name\": \"Bahamian dollar\", \"symbol\": \"$\"}, \"USD\": {\"name\": \"United States dollar\", \"symbol\": \"$\"}}', NULL, NULL, 'bahamas-999168188', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(169, 'Tonga', '+676', 'TO', 'https://flagcdn.com/w320/to.png', '{\"TOP\": {\"name\": \"Tongan paʻanga\", \"symbol\": \"T$\"}}', NULL, NULL, 'tonga-424169197', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(170, 'Greece', '+30', 'GR', 'https://flagcdn.com/w320/gr.png', '{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}', NULL, NULL, 'greece-214170245', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(171, 'San Marino', '+378', 'SM', 'https://flagcdn.com/w320/sm.png', '{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}', NULL, NULL, 'san-marino-887171202', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(172, 'Réunion', '+262', 'RE', 'https://flagcdn.com/w320/re.png', '{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}', NULL, NULL, 'reunion-748172767', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(173, 'Vatican City', '+3906698', 'VA', 'https://flagcdn.com/w320/va.png', '{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}', NULL, NULL, 'vatican-city-631173575', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(174, 'Burundi', '+257', 'BI', 'https://flagcdn.com/w320/bi.png', '{\"BIF\": {\"name\": \"Burundian franc\", \"symbol\": \"Fr\"}}', NULL, NULL, 'burundi-708174567', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(175, 'Bahrain', '+973', 'BH', 'https://flagcdn.com/w320/bh.png', '{\"BHD\": {\"name\": \"Bahraini dinar\", \"symbol\": \".د.ب\"}}', NULL, NULL, 'bahrain-204175363', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(176, 'Marshall Islands', '+692', 'MH', 'https://flagcdn.com/w320/mh.png', '{\"USD\": {\"name\": \"United States dollar\", \"symbol\": \"$\"}}', NULL, NULL, 'marshall-islands-874176489', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(177, 'Turks and Caicos Islands', '+1649', 'TC', 'https://flagcdn.com/w320/tc.png', '{\"USD\": {\"name\": \"United States dollar\", \"symbol\": \"$\"}}', NULL, NULL, 'turks-and-caicos-islands-835177324', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(178, 'Isle of Man', '+44', 'IM', 'https://flagcdn.com/w320/im.png', '{\"GBP\": {\"name\": \"British pound\", \"symbol\": \"£\"}, \"IMP\": {\"name\": \"Manx pound\", \"symbol\": \"£\"}}', NULL, NULL, 'isle-of-man-753178582', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(179, 'Haiti', '+509', 'HT', 'https://flagcdn.com/w320/ht.png', '{\"HTG\": {\"name\": \"Haitian gourde\", \"symbol\": \"G\"}}', NULL, NULL, 'haiti-799179982', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(180, 'Afghanistan', '+93', 'AF', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Flag_of_the_Taliban.svg/320px-Flag_of_the_Taliban.svg.png', '{\"AFN\": {\"name\": \"Afghan afghani\", \"symbol\": \"؋\"}}', NULL, NULL, 'afghanistan-385180636', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(181, 'Israel', '+972', 'IL', 'https://flagcdn.com/w320/il.png', '{\"ILS\": {\"name\": \"Israeli new shekel\", \"symbol\": \"₪\"}}', NULL, NULL, 'israel-186181684', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(182, 'Libya', '+218', 'LY', 'https://flagcdn.com/w320/ly.png', '{\"LYD\": {\"name\": \"Libyan dinar\", \"symbol\": \"ل.د\"}}', NULL, NULL, 'libya-990182154', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(183, 'Uruguay', '+598', 'UY', 'https://flagcdn.com/w320/uy.png', '{\"UYU\": {\"name\": \"Uruguayan peso\", \"symbol\": \"$\"}}', NULL, NULL, 'uruguay-634183606', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(184, 'Norfolk Island', '+672', 'NF', 'https://flagcdn.com/w320/nf.png', '{\"AUD\": {\"name\": \"Australian dollar\", \"symbol\": \"$\"}}', NULL, NULL, 'norfolk-island-260184891', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(185, 'Nicaragua', '+505', 'NI', 'https://flagcdn.com/w320/ni.png', '{\"NIO\": {\"name\": \"Nicaraguan córdoba\", \"symbol\": \"C$\"}}', NULL, NULL, 'nicaragua-227185956', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(186, 'Cook Islands', '+682', 'CK', 'https://flagcdn.com/w320/ck.png', '{\"CKD\": {\"name\": \"Cook Islands dollar\", \"symbol\": \"$\"}, \"NZD\": {\"name\": \"New Zealand dollar\", \"symbol\": \"$\"}}', NULL, NULL, 'cook-islands-700186625', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(187, 'Laos', '+856', 'LA', 'https://flagcdn.com/w320/la.png', '{\"LAK\": {\"name\": \"Lao kip\", \"symbol\": \"₭\"}}', NULL, NULL, 'laos-588187213', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(188, 'Christmas Island', '+61', 'CX', 'https://flagcdn.com/w320/cx.png', '{\"AUD\": {\"name\": \"Australian dollar\", \"symbol\": \"$\"}}', NULL, NULL, 'christmas-island-364188705', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(189, 'Saint Helena, Ascension and Tristan da Cunha', '+290', 'SH', 'https://flagcdn.com/w320/sh.png', '{\"GBP\": {\"name\": \"Pound sterling\", \"symbol\": \"£\"}, \"SHP\": {\"name\": \"Saint Helena pound\", \"symbol\": \"£\"}}', NULL, NULL, 'saint-helena-ascension-and-tristan-da-cunha-678189221', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(190, 'Anguilla', '+1264', 'AI', 'https://flagcdn.com/w320/ai.png', '{\"XCD\": {\"name\": \"Eastern Caribbean dollar\", \"symbol\": \"$\"}}', NULL, NULL, 'anguilla-325190970', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(191, 'Micronesia', '+691', 'FM', 'https://flagcdn.com/w320/fm.png', '{\"USD\": {\"name\": \"United States dollar\", \"symbol\": \"$\"}}', NULL, NULL, 'micronesia-338191153', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(192, 'Germany', '+49', 'DE', 'https://flagcdn.com/w320/de.png', '{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}', NULL, NULL, 'germany-992192760', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(193, 'Guam', '+1671', 'GU', 'https://flagcdn.com/w320/gu.png', '{\"USD\": {\"name\": \"United States dollar\", \"symbol\": \"$\"}}', NULL, NULL, 'guam-442193922', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(194, 'Kiribati', '+686', 'KI', 'https://flagcdn.com/w320/ki.png', '{\"AUD\": {\"name\": \"Australian dollar\", \"symbol\": \"$\"}, \"KID\": {\"name\": \"Kiribati dollar\", \"symbol\": \"$\"}}', NULL, NULL, 'kiribati-274194852', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(195, 'Sint Maarten', '+1721', 'SX', 'https://flagcdn.com/w320/sx.png', '{\"ANG\": {\"name\": \"Netherlands Antillean guilder\", \"symbol\": \"ƒ\"}}', NULL, NULL, 'sint-maarten-629195804', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(196, 'Spain', '+34', 'ES', 'https://flagcdn.com/w320/es.png', '{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}', NULL, NULL, 'spain-883196636', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(197, 'Jamaica', '+1876', 'JM', 'https://flagcdn.com/w320/jm.png', '{\"JMD\": {\"name\": \"Jamaican dollar\", \"symbol\": \"$\"}}', NULL, NULL, 'jamaica-123197867', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(198, 'Palestine', '+970', 'PS', 'https://flagcdn.com/w320/ps.png', '{\"EGP\": {\"name\": \"Egyptian pound\", \"symbol\": \"E£\"}, \"ILS\": {\"name\": \"Israeli new shekel\", \"symbol\": \"₪\"}, \"JOD\": {\"name\": \"Jordanian dinar\", \"symbol\": \"JD\"}}', NULL, NULL, 'palestine-334198702', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(199, 'French Guiana', '+594', 'GF', 'https://flagcdn.com/w320/gf.png', '{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}', NULL, NULL, 'french-guiana-813199429', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(200, 'Andorra', '+376', 'AD', 'https://flagcdn.com/w320/ad.png', '{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}', NULL, NULL, 'andorra-305200597', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(201, 'Chile', '+56', 'CL', 'https://flagcdn.com/w320/cl.png', '{\"CLP\": {\"name\": \"Chilean peso\", \"symbol\": \"$\"}}', NULL, NULL, 'chile-940201282', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(202, 'Lesotho', '+266', 'LS', 'https://flagcdn.com/w320/ls.png', '{\"LSL\": {\"name\": \"Lesotho loti\", \"symbol\": \"L\"}, \"ZAR\": {\"name\": \"South African rand\", \"symbol\": \"R\"}}', NULL, NULL, 'lesotho-860202857', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(203, 'Australia', '+61', 'AU', 'https://flagcdn.com/w320/au.png', '{\"AUD\": {\"name\": \"Australian dollar\", \"symbol\": \"$\"}}', NULL, NULL, 'australia-913203127', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(204, 'Grenada', '+1473', 'GD', 'https://flagcdn.com/w320/gd.png', '{\"XCD\": {\"name\": \"Eastern Caribbean dollar\", \"symbol\": \"$\"}}', NULL, NULL, 'grenada-894204867', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(205, 'Ghana', '+233', 'GH', 'https://flagcdn.com/w320/gh.png', '{\"GHS\": {\"name\": \"Ghanaian cedi\", \"symbol\": \"₵\"}}', NULL, NULL, 'ghana-792205641', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(206, 'Seychelles', '+248', 'SC', 'https://flagcdn.com/w320/sc.png', '{\"SCR\": {\"name\": \"Seychellois rupee\", \"symbol\": \"₨\"}}', NULL, NULL, 'seychelles-401206234', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(207, 'Angola', '+244', 'AO', 'https://flagcdn.com/w320/ao.png', '{\"AOA\": {\"name\": \"Angolan kwanza\", \"symbol\": \"Kz\"}}', NULL, NULL, 'angola-640207239', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(208, 'Bermuda', '+1441', 'BM', 'https://flagcdn.com/w320/bm.png', '{\"BMD\": {\"name\": \"Bermudian dollar\", \"symbol\": \"$\"}}', NULL, NULL, 'bermuda-508208560', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(209, 'Pakistan', '+92', 'PK', 'https://flagcdn.com/w320/pk.png', '{\"PKR\": {\"name\": \"Pakistani rupee\", \"symbol\": \"₨\"}}', NULL, NULL, 'pakistan-406209164', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(210, 'Mali', '+223', 'ML', 'https://flagcdn.com/w320/ml.png', '{\"XOF\": {\"name\": \"West African CFA franc\", \"symbol\": \"Fr\"}}', NULL, NULL, 'mali-131210938', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(211, 'Saudi Arabia', '+966', 'SA', 'https://flagcdn.com/w320/sa.png', '{\"SAR\": {\"name\": \"Saudi riyal\", \"symbol\": \"ر.س\"}}', NULL, NULL, 'saudi-arabia-933211113', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(212, 'Curaçao', '+599', 'CW', 'https://flagcdn.com/w320/cw.png', '{\"ANG\": {\"name\": \"Netherlands Antillean guilder\", \"symbol\": \"ƒ\"}}', NULL, NULL, 'curacao-934212928', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(213, 'South Korea', '+82', 'KR', 'https://flagcdn.com/w320/kr.png', '{\"KRW\": {\"name\": \"South Korean won\", \"symbol\": \"₩\"}}', NULL, NULL, 'south-korea-981213560', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(214, 'Ethiopia', '+251', 'ET', 'https://flagcdn.com/w320/et.png', '{\"ETB\": {\"name\": \"Ethiopian birr\", \"symbol\": \"Br\"}}', NULL, NULL, 'ethiopia-719214536', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(215, 'Guadeloupe', '+590', 'GP', 'https://flagcdn.com/w320/gp.png', '{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}', NULL, NULL, 'guadeloupe-851215118', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(216, 'Bangladesh', '+880', 'BD', 'https://flagcdn.com/w320/bd.png', '{\"BDT\": {\"name\": \"Bangladeshi taka\", \"symbol\": \"৳\"}}', 1, NULL, 'bangladesh-336216321', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(217, 'New Zealand', '+64', 'NZ', 'https://flagcdn.com/w320/nz.png', '{\"NZD\": {\"name\": \"New Zealand dollar\", \"symbol\": \"$\"}}', NULL, NULL, 'new-zealand-887217530', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15');
INSERT INTO `location_countries` (`id`, `name`, `country_code`, `country_short_code`, `flag_url`, `country_symbol`, `serial`, `creator`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(218, 'Comoros', '+269', 'KM', 'https://flagcdn.com/w320/km.png', '{\"KMF\": {\"name\": \"Comorian franc\", \"symbol\": \"Fr\"}}', NULL, NULL, 'comoros-886218665', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(219, 'Belize', '+501', 'BZ', 'https://flagcdn.com/w320/bz.png', '{\"BZD\": {\"name\": \"Belize dollar\", \"symbol\": \"$\"}}', NULL, NULL, 'belize-638219431', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(220, 'Uganda', '+256', 'UG', 'https://flagcdn.com/w320/ug.png', '{\"UGX\": {\"name\": \"Ugandan shilling\", \"symbol\": \"Sh\"}}', NULL, NULL, 'uganda-299220926', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(221, 'Singapore', '+65', 'SG', 'https://flagcdn.com/w320/sg.png', '{\"SGD\": {\"name\": \"Singapore dollar\", \"symbol\": \"$\"}}', NULL, NULL, 'singapore-934221759', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(222, 'Liechtenstein', '+423', 'LI', 'https://flagcdn.com/w320/li.png', '{\"CHF\": {\"name\": \"Swiss franc\", \"symbol\": \"Fr\"}}', NULL, NULL, 'liechtenstein-112222328', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(223, 'Hungary', '+36', 'HU', 'https://flagcdn.com/w320/hu.png', '{\"HUF\": {\"name\": \"Hungarian forint\", \"symbol\": \"Ft\"}}', NULL, NULL, 'hungary-719223505', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(224, 'Iceland', '+354', 'IS', 'https://flagcdn.com/w320/is.png', '{\"ISK\": {\"name\": \"Icelandic króna\", \"symbol\": \"kr\"}}', NULL, NULL, 'iceland-973224242', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(225, 'Tajikistan', '+992', 'TJ', 'https://flagcdn.com/w320/tj.png', '{\"TJS\": {\"name\": \"Tajikistani somoni\", \"symbol\": \"ЅМ\"}}', NULL, NULL, 'tajikistan-176225558', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(226, 'Namibia', '+264', 'NA', 'https://flagcdn.com/w320/na.png', '{\"NAD\": {\"name\": \"Namibian dollar\", \"symbol\": \"$\"}, \"ZAR\": {\"name\": \"South African rand\", \"symbol\": \"R\"}}', NULL, NULL, 'namibia-927226978', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(227, 'Timor-Leste', '+670', 'TL', 'https://flagcdn.com/w320/tl.png', '{\"USD\": {\"name\": \"United States dollar\", \"symbol\": \"$\"}}', NULL, NULL, 'timor-leste-363227705', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(228, 'Egypt', '+20', 'EG', 'https://flagcdn.com/w320/eg.png', '{\"EGP\": {\"name\": \"Egyptian pound\", \"symbol\": \"£\"}}', NULL, NULL, 'egypt-686228784', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(229, 'Serbia', '+381', 'RS', 'https://flagcdn.com/w320/rs.png', '{\"RSD\": {\"name\": \"Serbian dinar\", \"symbol\": \"дин.\"}}', NULL, NULL, 'serbia-282229214', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(230, 'Mauritius', '+230', 'MU', 'https://flagcdn.com/w320/mu.png', '{\"MUR\": {\"name\": \"Mauritian rupee\", \"symbol\": \"₨\"}}', NULL, NULL, 'mauritius-488230448', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(231, 'Macau', '+853', 'MO', 'https://flagcdn.com/w320/mo.png', '{\"MOP\": {\"name\": \"Macanese pataca\", \"symbol\": \"P\"}}', NULL, NULL, 'macau-655231617', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(232, 'French Polynesia', '+689', 'PF', 'https://flagcdn.com/w320/pf.png', '{\"XPF\": {\"name\": \"CFP franc\", \"symbol\": \"₣\"}}', NULL, NULL, 'french-polynesia-327232164', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(233, 'Maldives', '+960', 'MV', 'https://flagcdn.com/w320/mv.png', '{\"MVR\": {\"name\": \"Maldivian rufiyaa\", \"symbol\": \".ރ\"}}', NULL, NULL, 'maldives-822233993', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(234, 'Indonesia', '+62', 'ID', 'https://flagcdn.com/w320/id.png', '{\"IDR\": {\"name\": \"Indonesian rupiah\", \"symbol\": \"Rp\"}}', NULL, NULL, 'indonesia-662234436', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(235, 'DR Congo', '+243', 'CD', 'https://flagcdn.com/w320/cd.png', '{\"CDF\": {\"name\": \"Congolese franc\", \"symbol\": \"FC\"}}', NULL, NULL, 'dr-congo-836235863', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(236, 'Estonia', '+372', 'EE', 'https://flagcdn.com/w320/ee.png', '{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}', NULL, NULL, 'estonia-458236602', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(237, 'Vietnam', '+84', 'VN', 'https://flagcdn.com/w320/vn.png', '{\"VND\": {\"name\": \"Vietnamese đồng\", \"symbol\": \"₫\"}}', NULL, NULL, 'vietnam-604237924', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(238, 'Italy', '+39', 'IT', 'https://flagcdn.com/w320/it.png', '{\"EUR\": {\"name\": \"Euro\", \"symbol\": \"€\"}}', NULL, NULL, 'italy-934238873', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(239, 'Guinea', '+224', 'GN', 'https://flagcdn.com/w320/gn.png', '{\"GNF\": {\"name\": \"Guinean franc\", \"symbol\": \"Fr\"}}', NULL, NULL, 'guinea-161239684', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(240, 'Chad', '+235', 'TD', 'https://flagcdn.com/w320/td.png', '{\"XAF\": {\"name\": \"Central African CFA franc\", \"symbol\": \"Fr\"}}', NULL, NULL, 'chad-603240547', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(241, 'Ecuador', '+593', 'EC', 'https://flagcdn.com/w320/ec.png', '{\"USD\": {\"name\": \"United States dollar\", \"symbol\": \"$\"}}', NULL, NULL, 'ecuador-406241612', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(242, 'Georgia', '+995', 'GE', 'https://flagcdn.com/w320/ge.png', '{\"GEL\": {\"name\": \"lari\", \"symbol\": \"₾\"}}', NULL, NULL, 'georgia-777242137', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(243, 'Malawi', '+265', 'MW', 'https://flagcdn.com/w320/mw.png', '{\"MWK\": {\"name\": \"Malawian kwacha\", \"symbol\": \"MK\"}}', NULL, NULL, 'malawi-951243308', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(244, 'Iraq', '+964', 'IQ', 'https://flagcdn.com/w320/iq.png', '{\"IQD\": {\"name\": \"Iraqi dinar\", \"symbol\": \"ع.د\"}}', NULL, NULL, 'iraq-779244176', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(245, 'Svalbard and Jan Mayen', '+4779', 'SJ', 'https://flagcdn.com/w320/sj.png', '{\"NOK\": {\"name\": \"krone\", \"symbol\": \"kr\"}}', NULL, NULL, 'svalbard-and-jan-mayen-551245292', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(246, 'Benin', '+229', 'BJ', 'https://flagcdn.com/w320/bj.png', '{\"XOF\": {\"name\": \"West African CFA franc\", \"symbol\": \"Fr\"}}', NULL, NULL, 'benin-684246543', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(247, 'Japan', '+81', 'JP', 'https://flagcdn.com/w320/jp.png', '{\"JPY\": {\"name\": \"Japanese yen\", \"symbol\": \"¥\"}}', NULL, NULL, 'japan-823247429', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(248, 'Dominican Republic', '+1809', 'DO', 'https://flagcdn.com/w320/do.png', '{\"DOP\": {\"name\": \"Dominican peso\", \"symbol\": \"$\"}}', NULL, NULL, 'dominican-republic-155248459', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(249, 'Qatar', '+974', 'QA', 'https://flagcdn.com/w320/qa.png', '{\"QAR\": {\"name\": \"Qatari riyal\", \"symbol\": \"ر.ق\"}}', NULL, NULL, 'qatar-399249921', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(250, 'Gabon', '+241', 'GA', 'https://flagcdn.com/w320/ga.png', '{\"XAF\": {\"name\": \"Central African CFA franc\", \"symbol\": \"Fr\"}}', NULL, NULL, 'gabon-774250545', 'active', '2024-09-01 10:24:15', '2024-09-01 10:24:15');

-- --------------------------------------------------------

--
-- Table structure for table `location_districts`
--

CREATE TABLE `location_districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_id` bigint(20) DEFAULT NULL,
  `state_division_id` bigint(20) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `creator` bigint(20) UNSIGNED DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `location_state_divisions`
--

CREATE TABLE `location_state_divisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_id` bigint(20) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `creator` bigint(20) UNSIGNED DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `location_stations`
--

CREATE TABLE `location_stations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_id` bigint(20) DEFAULT NULL,
  `state_division_id` bigint(20) DEFAULT NULL,
  `district_id` bigint(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `post_office` varchar(100) DEFAULT NULL,
  `post_code` varchar(100) DEFAULT NULL,
  `creator` bigint(20) UNSIGNED DEFAULT NULL,
  `slug` varchar(50) DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(5, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(6, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(7, '2016_06_01_000004_create_oauth_clients_table', 1),
(8, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(9, '2019_08_19_000000_create_failed_jobs_table', 1),
(10, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(11, 'create_otp_codes_table', 2),
(12, 'create_sliders_table', 2),
(13, 'create_visitor_count_table', 2),
(14, 'create_countries_table', 3),
(15, 'create_districts_table', 3),
(16, 'create_orders_table', 3),
(17, 'create_state_divisions_table', 3),
(18, 'create_stations_table', 3),
(19, 'create_motors_table', 4),
(20, 'create_omi_money_receipt_table', 4),
(21, 'create_overseas_mediclaim_insurences_table', 4),
(22, 'create_price_range_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `motors`
--

CREATE TABLE `motors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `visa_type` varchar(255) DEFAULT NULL,
  `country_id` varchar(255) DEFAULT NULL,
  `passport_no` varchar(255) DEFAULT NULL,
  `stay_duration` varchar(255) DEFAULT NULL,
  `mobile_number` varchar(255) DEFAULT NULL,
  `creator` bigint(20) UNSIGNED DEFAULT NULL,
  `slug` varchar(50) DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '7VjWJobaIBuzcMdIURL6IaBaNlRT66acyT2cMyfc', NULL, 'http://localhost', 1, 0, 0, '2024-09-01 10:24:15', '2024-09-01 10:24:15'),
(2, NULL, 'Laravel Password Grant Client', 'vDTFC41YbtLW2Lil8w3vYP8N7uZkLCu3IFoFzPpn', 'users', 'http://localhost', 0, 1, 0, '2024-09-01 10:24:15', '2024-09-01 10:24:15');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-09-01 10:24:15', '2024-09-01 10:24:15');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `omi_money_receipt`
--

CREATE TABLE `omi_money_receipt` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `omi_order_id` int(11) DEFAULT NULL,
  `money_receipt_no` int(11) DEFAULT NULL,
  `received_from` varchar(255) DEFAULT NULL,
  `amount_received` double(8,2) DEFAULT NULL,
  `amount_received_in_word` varchar(255) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `down_on_payment` int(11) DEFAULT NULL,
  `issued_against` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `omi_money_receipt`
--

INSERT INTO `omi_money_receipt` (`id`, `omi_order_id`, `money_receipt_no`, `received_from`, `amount_received`, `amount_received_in_word`, `payment_method`, `down_on_payment`, `issued_against`, `created_at`, `updated_at`) VALUES
(1, 2, 124, 'wukubyz@mailinator.com', 3323.50, 'Three Thousand Three Hundred Twenty Four ', 'online', NULL, NULL, '2024-09-01 12:09:38', NULL),
(2, 3, 124, 'qixaquv@mailinator.com', 3974.40, 'Three Thousand Nine Hundred Seventy Four ', 'online', NULL, NULL, '2024-09-02 08:58:17', NULL),
(3, 5, 124, 'zavujiz@mailinator.com', 2817.50, 'Two Thousand Eight Hundred Eighteen ', 'online', NULL, NULL, '2024-09-02 09:08:00', NULL),
(4, 6, 125, 'zavujiz@mailinator.com', 16560.00, 'Sixteen Thousand Five Hundred Sixty ', 'online', NULL, NULL, '2024-09-02 09:12:45', NULL),
(5, 7, 126, 'zavujiz@mailinator.com', 3197.00, 'Three Thousand One Hundred Ninty Seven ', 'online', NULL, NULL, '2024-09-02 09:28:33', '2024-09-02 09:28:33'),
(6, 8, 127, 'xegefehudy@mailinator.com', 3070.50, 'Three Thousand Seventy One ', 'online', NULL, NULL, '2024-09-02 09:28:45', '2024-09-02 09:28:45'),
(7, 8, 127, 'xegefehudy@mailinator.com', 3070.50, 'Three Thousand Seventy One ', 'online', NULL, NULL, '2024-09-02 09:30:12', '2024-09-02 09:30:12'),
(8, 325697093, 128, 'baqabycasa@mailinator.com', 16560.00, 'Sixteen Thousand Five Hundred Sixty ', 'online', NULL, NULL, '2024-09-02 09:45:53', '2024-09-02 09:45:53'),
(9, 164318485, 129, 'nadik@mailinator.com', 16560.00, 'Sixteen Thousand Five Hundred Sixty ', 'online', NULL, NULL, '2024-09-02 09:58:59', '2024-09-02 09:58:59'),
(10, 192061600, 131, 'zitaz@mailinator.com', 16560.00, 'Sixteen Thousand Five Hundred Sixty ', 'online', NULL, NULL, '2024-09-02 10:06:27', '2024-09-02 10:06:27'),
(11, 338511666, 132, 'fdsfs', 16560.00, 'Sixteen Thousand Five Hundred Sixty ', 'online', NULL, NULL, '2024-09-02 12:47:01', '2024-09-02 12:47:01'),
(12, 535171806, 133, 'rrrrrr', 1282.25, 'One Thousand Two Hundred Eighty Two ', 'online', NULL, NULL, '2024-09-02 13:30:11', '2024-09-02 13:30:11'),
(13, 607049157, 134, 'qozacyg@mailinator.com', 16560.00, 'Sixteen Thousand Five Hundred Sixty ', 'online', NULL, NULL, '2024-09-03 11:44:50', '2024-09-03 11:44:50');

-- --------------------------------------------------------

--
-- Table structure for table `omi_overseas_mediclaim_insurences`
--

CREATE TABLE `omi_overseas_mediclaim_insurences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `visa_type` varchar(50) DEFAULT NULL,
  `passport_no` varchar(50) DEFAULT NULL,
  `stay_duration` varchar(10) DEFAULT NULL,
  `mobile_number` varchar(20) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `journy_date_start_from` date DEFAULT NULL,
  `journy_date_end_to` date DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `total_cost` double(8,2) DEFAULT NULL,
  `vat_cost` double(8,2) DEFAULT NULL,
  `net_cost` double(8,2) DEFAULT NULL,
  `stay_of_days` int(11) DEFAULT NULL,
  `mrp_no` bigint(20) DEFAULT NULL,
  `policy_no` bigint(20) DEFAULT NULL,
  `creator` bigint(20) UNSIGNED DEFAULT NULL,
  `slug` varchar(50) DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `omi_overseas_mediclaim_insurences`
--

INSERT INTO `omi_overseas_mediclaim_insurences` (`id`, `order_id`, `country_id`, `name`, `email`, `visa_type`, `passport_no`, `stay_duration`, `mobile_number`, `date_of_birth`, `journy_date_start_from`, `journy_date_end_to`, `address`, `occupation`, `age`, `total_cost`, `vat_cost`, `net_cost`, `stay_of_days`, `mrp_no`, `policy_no`, `creator`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 872882655, 116, 'pito@mailinator.com', 'gyhosi@mailinator.com', 'tourist', '20-Oct-2022', '61-75', '1234556', '1994-10-10', '2018-05-17', '2018-07-31', 'vifozypi@mailinator.com', NULL, 29, 2817.50, 367.50, 2450.00, 75, 124, 12346, NULL, '3261917', 'active', '2024-09-01 10:24:26', '2024-09-01 10:24:34'),
(2, 528115105, 216, 'wukubyz@mailinator.com', 'cudekyfo@mailinator.com', 'tourist', '05-Mar-2005', '121-135', 'buha@mailinator.com', '2018-03-03', '1991-06-07', '1991-10-20', 'myqonihypy@mailinator.com', NULL, 6, 3323.50, 433.50, 2890.00, 135, 124, 12346, NULL, '5632725', 'active', '2024-09-01 12:09:33', '2024-09-01 12:09:38'),
(3, 336220548, 229, 'qixaquv@mailinator.com', 'vebapocu@mailinator.com', 'tourist', '08-Apr-1997', '46-60', 'q2w41234234', '1982-03-28', '1998-09-06', '1998-11-05', 'jexolut@mailinator.com', NULL, 42, 3974.40, 518.40, 3456.00, 60, 124, 12346, NULL, '4113805', 'active', '2024-09-02 08:58:09', '2024-09-02 08:58:17'),
(4, 592766304, 250, NULL, NULL, 'tourist', '27-Aug-2016', '61-75', NULL, '2001-01-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4324658', 'active', '2024-09-02 09:06:56', '2024-09-02 09:06:56'),
(5, 531035025, 250, 'zavujiz@mailinator.com', 'vucygux@mailinator.com', 'tourist', '27-Aug-2016', '61-75', '234234', '2001-01-29', '1986-09-14', '1986-11-28', 'delasoci@mailinator.com', NULL, 23, 2817.50, 367.50, 2450.00, 75, 124, 12346, NULL, '7235614', 'active', '2024-09-02 09:07:51', '2024-09-02 09:08:00'),
(6, 757560606, 236, 'zavujiz@mailinator.com', 'vucygux@mailinator.com', 'working/student', '21-Aug-1975', '6', '234234', '2012-01-18', '1986-09-14', '1987-03-13', 'delasoci@mailinator.com', NULL, 12, 16560.00, 2160.00, 14400.00, 180, 125, 12347, NULL, '7536538', 'active', '2024-09-02 09:12:24', '2024-09-02 09:12:45'),
(7, 862856014, 177, 'zavujiz@mailinator.com', 'vucygux@mailinator.com', 'tourist', '03-Feb-1973', '106-120', '234234', '2003-01-29', '1986-09-14', '1987-01-12', 'delasoci@mailinator.com', NULL, 21, 3197.00, 417.00, 2780.00, 120, 126, 12348, NULL, '1427604', 'active', '2024-09-02 09:28:28', '2024-09-02 09:28:33'),
(8, 289474964, 226, 'xegefehudy@mailinator.com', 'xevuzij@mailinator.com', 'tourist', '17-Jan-2000', '91-105', '12312', '2023-07-24', '2023-10-13', '2024-01-26', 'soluwiwon@mailinator.com', NULL, 1, 3070.50, 400.50, 2670.00, 105, 127, 12349, NULL, '2578628', 'active', '2024-09-02 09:28:41', '2024-09-02 09:28:45'),
(9, 325697093, 102, 'baqabycasa@mailinator.com', 'gorufuvyqu@mailinator.com', 'working/student', '07-Sep-1974', '6', '1234566789', '1972-06-02', '2024-09-02', '2025-03-01', 'zixecito@mailinator.com', NULL, 52, 16560.00, 2160.00, 14400.00, 180, 128, 12350, NULL, '3249289', 'active', '2024-09-02 09:45:39', '2024-09-02 09:45:53'),
(10, 164318485, 6, 'nadik@mailinator.com', 'mosazox@mailinator.com', 'working/student', '123456987', '6', '0123456789', '2016-01-09', '2024-09-02', '2025-03-01', 'gijy@mailinator.com', NULL, 8, 16560.00, 2160.00, 14400.00, 180, 129, 12351, NULL, '72210789', 'active', '2024-09-02 09:58:32', '2024-09-02 09:58:59'),
(11, 567915291, 113, NULL, NULL, 'working/student', '05-Oct-1978', '6', NULL, '2011-02-12', NULL, NULL, NULL, NULL, 13, 16560.00, 2160.00, 14400.00, 180, 130, 12352, NULL, '34011146', 'active', '2024-09-02 10:03:53', '2024-09-02 10:03:53'),
(12, 192061600, 112, 'zitaz@mailinator.com', 'geqif@mailinator.com', 'working/student', '21-Apr-1970', '6', '23423', '2013-02-25', '2015-05-02', '2015-10-29', 'mubujit@mailinator.com', NULL, 11, 16560.00, 2160.00, 14400.00, 180, 131, 12353, NULL, '44812708', 'active', '2024-09-02 10:06:15', '2024-09-02 10:06:27'),
(13, 338511666, 224, 'fdsfs', 'rokafdsfn@gamil.com', 'working/student', 'afdfdf', '6', '015465', '1984-01-01', '2024-01-10', '2024-07-08', 'fdsfsd', NULL, 40, 16560.00, 2160.00, 14400.00, 180, 132, 12354, NULL, '78813758', 'active', '2024-09-02 12:46:30', '2024-09-02 12:47:01'),
(14, 535171806, 203, 'rrrrrr', 'ffff@gmail.com', 'tourist', 'gfdgg', '1-15', '0132132', '1984-01-01', '2024-02-10', '2024-02-25', 'fdsfsdd', NULL, 40, 1282.25, 167.25, 1115.00, 15, 133, 12355, NULL, '23014851', 'active', '2024-09-02 13:29:50', '2024-09-02 13:30:11'),
(15, 607049157, 139, 'qozacyg@mailinator.com', 'gaki@mailinator.com', 'working/student', '04-Oct-2013', '6', '324234', '1981-07-10', '2014-08-26', '2015-02-22', 'waxosa@mailinator.com', NULL, 43, 16560.00, 2160.00, 14400.00, 180, 134, 12356, NULL, '15115271', 'active', '2024-09-03 11:44:45', '2024-09-03 11:44:50');

-- --------------------------------------------------------

--
-- Table structure for table `omi_price_range`
--

CREATE TABLE `omi_price_range` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `plan_name` varchar(255) NOT NULL,
  `period_days` varchar(255) NOT NULL,
  `age_band_0_40_years` int(11) NOT NULL,
  `age_band_41_50_years` int(11) NOT NULL,
  `age_band_51_55_years` int(11) NOT NULL,
  `age_band_56_59_years` int(11) NOT NULL,
  `age_band_60_65_years` int(11) NOT NULL,
  `age_band_66_70_years` int(11) NOT NULL,
  `age_band_71_75_years` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `omi_price_range`
--

INSERT INTO `omi_price_range` (`id`, `plan_name`, `period_days`, `age_band_0_40_years`, `age_band_41_50_years`, `age_band_51_55_years`, `age_band_56_59_years`, `age_band_60_65_years`, `age_band_66_70_years`, `age_band_71_75_years`, `created_at`, `updated_at`) VALUES
(1, 'non schengen', '15', 1115, 1795, 2249, 2249, 2249, 7318, 10824, NULL, NULL),
(2, 'non schengen', '30', 1795, 2923, 3666, 3666, 3666, 11631, 17189, NULL, NULL),
(3, 'non schengen', '45', 2249, 3666, 4597, 4597, 4597, 14608, 21580, NULL, NULL),
(4, 'non schengen', '60', 2343, 3456, 4567, 4567, 4567, 15789, 22345, NULL, NULL),
(5, 'non schengen', '75', 2450, 3567, 4789, 4789, 4789, 16789, 23456, NULL, NULL),
(6, 'non schengen', '90', 2560, 3678, 4890, 4890, 4890, 17890, 24567, NULL, NULL),
(7, 'non schengen', '105', 2670, 3789, 5001, 5001, 5001, 18901, 25678, NULL, NULL),
(8, 'non schengen', '120', 2780, 3890, 5112, 5112, 5112, 20012, 26789, NULL, NULL),
(9, 'non schengen', '135', 2890, 4001, 5223, 5223, 5223, 21123, 27890, NULL, NULL),
(10, 'non schengen', '150', 3000, 4112, 5334, 5334, 5334, 22234, 28901, NULL, NULL),
(11, 'non schengen', '160', 3110, 4223, 5445, 5445, 5445, 23345, 30012, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `address` text DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `currency` varchar(20) DEFAULT NULL,
  `creator` bigint(20) UNSIGNED DEFAULT NULL,
  `slug` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `amount`, `address`, `status`, `transaction_id`, `currency`, `creator`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'wukubyz@mailinator.com', 'cudekyfo@mailinator.com', 'buha@mailinator.com', 3323.5, 'Customer Address', 'Processing', '528115105', 'BDT', NULL, NULL, NULL, NULL),
(2, 'qixaquv@mailinator.com', 'vebapocu@mailinator.com', 'q2w41234234', 3974.4, 'Customer Address', 'Processing', '336220548', 'BDT', NULL, NULL, NULL, NULL),
(3, 'zavujiz@mailinator.com', 'vucygux@mailinator.com', '234234', 2817.5, 'Customer Address', 'Processing', '531035025', 'BDT', NULL, NULL, NULL, NULL),
(4, 'zavujiz@mailinator.com', 'vucygux@mailinator.com', '234234', 16560, 'Customer Address', 'Processing', '757560606', 'BDT', NULL, NULL, NULL, NULL),
(5, 'xegefehudy@mailinator.com', 'xevuzij@mailinator.com', '12312', 3070.5, 'Customer Address', 'Processing', '289474964', 'BDT', NULL, NULL, NULL, NULL),
(6, 'baqabycasa@mailinator.com', 'gorufuvyqu@mailinator.com', '1234566789', 16560, 'Customer Address', 'Processing', '325697093', 'BDT', NULL, NULL, NULL, NULL),
(7, 'zitaz@mailinator.com', 'geqif@mailinator.com', '23423', 16560, 'Customer Address', 'Processing', '192061600', 'BDT', NULL, NULL, NULL, NULL),
(8, 'fdsfs', 'rokafdsfn@gamil.com', '015465', 16560, 'Customer Address', 'Processing', '338511666', 'BDT', NULL, NULL, NULL, NULL),
(9, 'rrrrrr', 'ffff@gmail.com', '0132132', 1282.25, 'Customer Address', 'Processing', '535171806', 'BDT', NULL, NULL, NULL, NULL),
(10, 'qozacyg@mailinator.com', 'gaki@mailinator.com', '324234', 16560, 'Customer Address', 'Processing', '607049157', 'BDT', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `otp_codes`
--

CREATE TABLE `otp_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `type` enum('register','reset') DEFAULT 'register',
  `code` varchar(255) DEFAULT NULL,
  `verify_status` tinyint(1) DEFAULT 0,
  `validate_till` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `creator` bigint(20) UNSIGNED DEFAULT NULL,
  `slug` varchar(50) DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visitor_count`
--

CREATE TABLE `visitor_count` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip` varchar(50) NOT NULL,
  `creator` bigint(20) UNSIGNED DEFAULT NULL,
  `slug` varchar(50) DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `location_countries`
--
ALTER TABLE `location_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location_districts`
--
ALTER TABLE `location_districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location_state_divisions`
--
ALTER TABLE `location_state_divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location_stations`
--
ALTER TABLE `location_stations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `motors`
--
ALTER TABLE `motors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `omi_money_receipt`
--
ALTER TABLE `omi_money_receipt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `omi_overseas_mediclaim_insurences`
--
ALTER TABLE `omi_overseas_mediclaim_insurences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `omi_price_range`
--
ALTER TABLE `omi_price_range`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otp_codes`
--
ALTER TABLE `otp_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitor_count`
--
ALTER TABLE `visitor_count`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `location_countries`
--
ALTER TABLE `location_countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `location_districts`
--
ALTER TABLE `location_districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `location_state_divisions`
--
ALTER TABLE `location_state_divisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `location_stations`
--
ALTER TABLE `location_stations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `motors`
--
ALTER TABLE `motors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `omi_money_receipt`
--
ALTER TABLE `omi_money_receipt`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `omi_overseas_mediclaim_insurences`
--
ALTER TABLE `omi_overseas_mediclaim_insurences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `omi_price_range`
--
ALTER TABLE `omi_price_range`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `otp_codes`
--
ALTER TABLE `otp_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visitor_count`
--
ALTER TABLE `visitor_count`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
