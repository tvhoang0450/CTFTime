-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 07, 2019 lúc 06:25 AM
-- Phiên bản máy phục vụ: 10.4.6-MariaDB
-- Phiên bản PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ctftime`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `events`
--

CREATE TABLE `events` (
  `onsite` tinyint(1) NOT NULL,
  `finish` varchar(50) NOT NULL,
  `description` varchar(800) NOT NULL,
  `weight` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `url` varchar(50) NOT NULL,
  `is_votable_now` tinyint(1) NOT NULL,
  `restrictions` varchar(5) NOT NULL,
  `format` varchar(10) NOT NULL,
  `start` varchar(50) NOT NULL,
  `participants` int(11) NOT NULL,
  `ctftime_url` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `live_feed` varchar(50) NOT NULL,
  `public_votable` tinyint(1) NOT NULL,
  `logo` varchar(50) NOT NULL,
  `format_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `ctf_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `events`
--

INSERT INTO `events` (`onsite`, `finish`, `description`, `weight`, `title`, `url`, `is_votable_now`, `restrictions`, `format`, `start`, `participants`, `ctftime_url`, `location`, `live_feed`, `public_votable`, `logo`, `format_id`, `id`, `ctf_id`) VALUES
(0, '2019-11-17T17:00:00+00:00', '', 0, 'ASIS CTF Finals 2019', 'https://asisctf.com/', 0, 'Open', 'Jeopardy', '2019-11-15T17:00:00+00:00', 38, 'https://ctftime.org/event/805/', '', 'https://ctftime.org/live/805/', 1, 'https://ctftime.org/media/events/asis_log_gb_2.png', 1, 805, 59),
(0, '', '', 10, 'Hello', '', 0, '', '', '', 0, '', 'Viet Nam', '', 0, '', 0, 887, 103),
(0, '2019-11-18T05:00:00+00:00', 'RITSEC CTF 2019 is a security-focused competition that features the following categories: Bin, PWN, Crypto, Forensics, Steganography, and Web.  We welcome beginners and more advanced security friends! There will be three brackets: RIT students, other college students, and everyone else. ', 0, 'RITSEC CTF 2019', 'https://ctf.ritsec.club/', 0, 'Open', 'Jeopardy', '2019-11-15T17:00:00+00:00', 46, 'https://ctftime.org/event/898/', '', 'https://ctftime.org/live/898/', 1, 'https://ctftime.org/media/events/RITSEC_CTF_19_LOG', 1, 898, 170),
(0, '2019-11-23T19:00:00+00:00', 'International online challenge\r\nin information security. Good choice to start playing A/D, because we are providing vulnbox in our cloud, so you dont need to be an administrator. Also good choice for pros â€”Â you will battle with teams from all over the world!', 0, 'RuCTFE 2019', 'https://ructfe.org/', 0, 'Open', 'Attack-Def', '2019-11-23T10:00:00+00:00', 24, 'https://ctftime.org/event/906/', '', '', 1, 'https://ctftime.org/media/events/social.png', 2, 906, 6),
(1, '2019-11-16T06:30:00+00:00', 'GreHack CTF is Jeopardy style and will be held onsite of the 7th edition of GreHack conference organized by Securimag team.\r\nPlease note that exact start and end time of this event could vary a bit.', 0, 'GreHack CTF 2019', 'https://grehack.fr/2019/', 0, 'Open', 'Jeopardy', '2019-11-15T22:00:00+00:00', 3, 'https://ctftime.org/event/922/', 'Grenoble, France', '', 1, '', 1, 922, 42);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `registrations`
--

CREATE TABLE `registrations` (
  `teamid` int(11) NOT NULL,
  `eventid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `registrations`
--

INSERT INTO `registrations` (`teamid`, `eventid`) VALUES
(1, 805),
(1, 805),
(1, 805),
(515, 805),
(515, 922),
(515, 887),
(515, 887),
(514, 922),
(515, 887),
(515, 805),
(2, 805);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `teams`
--

CREATE TABLE `teams` (
  `aliases` varchar(200) NOT NULL,
  `country` varchar(20) NOT NULL,
  `academic` tinyint(1) NOT NULL,
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `teams`
--

INSERT INTO `teams` (`aliases`, `country`, `academic`, `id`, `name`) VALUES
('', 'VN', 0, 1, 'HoangDT'),
('smokedchicken', 'RU', 0, 2, 'Smoked Chicken'),
('leetmore,CIT,CIT CTF,citctf,Leet_More', 'RU', 0, 3, 'Leet More'),
('HatesIrony', 'US', 0, 279, 'Hates Irony'),
('sutegoma2ã€€', 'JP', 0, 280, 'sutegoma2'),
('EuroNOP', 'DK', 0, 282, 'European Nopsled Team'),
('', '', 0, 283, 'Routards'),
('PPP,PPP87,PPP_,tylerni7,PPPwning', 'US', 1, 284, 'Plaid Parliament of Pwning'),
('EpicPhail,PartOfShellphish,Poopphish,Shellphish Sashimi,Shellphish Nigiri', 'US', 1, 285, 'Shellphish'),
('', '', 0, 286, 'VelociROPtors'),
('', '', 0, 287, 'six men came to kill me one time'),
('', 'ES', 0, 288, 'int3pids'),
('', '', 0, 291, 'WOWHACKER'),
('our name sucks', '', 0, 292, 'Robot Mafia'),
('', '', 0, 293, '(*)(*)'),
('', '', 0, 294, 'PlayTronics'),
('', '', 0, 295, 'TwoSixNine'),
('', '', 0, 296, 'III xor ICST'),
('', '', 0, 297, 'CHROOT'),
('clgt2,GGWP,CLGT-Meepwn', 'VN', 0, 298, 'CLGT'),
('', '', 0, 299, 'nocfed'),
('Hanoiati,TOWEROFHANOI,LoHackers,t0fh,The Tower of Hanoi', 'IT', 1, 300, 'Tower of Hanoi'),
('', '', 0, 301, 'Song of Freedom with Guardian'),
('gn00bz1', '', 0, 302, 'gn00bz'),
('Negative Nine Security,Neg9!', 'US', 0, 303, 'Neg9'),
('', '', 0, 304, 'Sur3x5F'),
('', '', 0, 305, 'Unic0rnRiderz'),
('', '', 0, 306, 'bobcroute'),
('', '', 0, 307, 'bell'),
('SecDawgs', 'US', 0, 308, 'disekt'),
('', '', 0, 309, 'Attack Research'),
('bigdaddy,big_daddy', 'FR', 0, 310, 'Big-Daddy'),
('', '', 0, 311, 'StolenByte'),
('', 'RU', 0, 312, 'SSH'),
('', '', 0, 313, 'Double Merguez Frites'),
('cissp,groupies,CISSPGROUPIES,Amish 0verflow', 'CA', 0, 314, 'CISSP Groupies'),
('Whitehatters,WCSC_2,0x28', 'US', 1, 315, 'WCSC'),
('', '', 0, 316, 'DrunkenYetis'),
('', '', 0, 318, 'quail'),
('', 'FR', 0, 319, 'shell-storm'),
('', '', 0, 320, 'xBExEF Supreme'),
('NULL,NULL-Life,NULL_Life,NL,NULLLife', '', 0, 321, 'NULL Life'),
('De Eindbazen,aapjeolifantje,aapje_olifantje2', 'NL', 0, 322, 'Eindbazen'),
('', '', 0, 323, 'lulzteam'),
('0ldEurope', 'DE', 0, 324, '0ldEur0pe'),
(' DEFRAGMENTEDBRAINS,defbra,defragmented.brains,DEFRAGMENTEDBRAINS,defbxx', 'AT', 0, 325, 'defragmented brains'),
('Valkyrie-X (VXRL),Valkyrie-X VXRL,Valkyrie-X', 'HK', 0, 326, 'VXRL'),
('', '', 0, 327, 'The Art of Approximation in Science and Engineerin'),
('', '', 0, 328, 'w33t34m'),
('', '', 0, 329, 'turbohacker'),
('', '', 0, 330, 'Knights Who Say 0wned'),
('', '', 0, 331, 'Orange'),
('', '', 0, 332, 'Olives'),
('UTDCSG,UTD CSG', 'US', 1, 333, 'CSG'),
('', '', 0, 335, 'Vogons'),
('', '', 0, 336, '! Factorial'),
('', '', 0, 337, 'Senkihaziak'),
('', '', 0, 338, 'X-N2O'),
('RDot,RDotOrg,Guests', 'RU', 0, 339, 'Rdot.org'),
('', '', 0, 340, 'Packet Mercenaries'),
('', '', 0, 341, 'PainSec'),
('', '', 0, 342, 'Adversarial Science Lab'),
('', '', 0, 343, 'rootkit.tw'),
('', '', 0, 344, ':p:p:pwn'),
('', '', 0, 345, 'showkey'),
('', '', 0, 346, 'nc7uc3'),
('CoP', 'FR', 0, 347, 'C.o.P'),
('', '', 0, 348, 'popopop00000n'),
('', '', 0, 349, 'DigRev'),
('', 'ES', 0, 350, 'w3b0n3s'),
('NISRA_OE', '', 0, 351, 'NISRA'),
('', '', 0, 352, 'PTDhRip'),
('', '', 0, 353, 'salsiners'),
('', '', 0, 354, 'trasnos'),
('HackingAlpacas,halpacas', 'US', 0, 355, 'Hacking Alpacas'),
('', '', 0, 356, 'LutrinaeEnhydra'),
('', '', 0, 357, 'MRL'),
('_paid2penetrate', '', 0, 358, 'paid2penetrate'),
('v&', 'US', 0, 359, 'vand'),
('', '', 0, 360, 'infinity'),
('', '', 0, 361, 'DFRC'),
('', '', 0, 362, 'firesea'),
('', '', 0, 363, 'CIST'),
('', '', 0, 364, 'crazymind'),
('Narwhal Reveng', '', 0, 366, 'NarwhalRevEng'),
('', 'CH', 0, 367, 'fixme'),
('', '', 0, 368, 'hackonbooze'),
('RoKyc,LeeGong', 'KR', 1, 369, 'CyKOR'),
('', '', 0, 370, 'The On-Net Gang'),
('', '', 0, 371, 'Squidz-R-Us'),
('', '', 0, 372, 'iluvmama'),
('', '', 0, 373, 'kknock'),
('[Lobotomy]', 'RU', 0, 374, 'Lobotomy'),
('', '', 0, 375, 'GreenTeam'),
('', '', 0, 376, 'LowNoiseHG'),
('', '', 0, 378, 'CERT-IS'),
('', '', 0, 380, 'Warhack'),
('', '', 0, 381, '2010572027'),
('', '', 0, 382, 'Strange Loop'),
('', '', 0, 383, 'back-seat baked potato'),
('', '', 0, 384, '0xn00b'),
('', '', 0, 385, 'hacking for xenu'),
('', 'RU', 0, 386, 'WildRide'),
('', '', 0, 387, 'ADLab'),
('', '', 0, 388, 'Droopy Eyed Armless Lonely Sheep Herding Umpa Lump'),
('', '', 0, 389, 'RICTeam'),
('', '', 0, 390, 'TheDoubleDown'),
('', '', 0, 391, 'tehc.no.hack'),
('', '', 0, 392, 'Esoterica'),
('', '', 0, 393, 'One-Eyed Jack'),
('', '', 0, 394, 'weareplaying'),
('Saps,Penguins Hate Flags,Lopi', '', 0, 395, 'Sapheads'),
('', '', 0, 396, 'multivision'),
('Kernel-Sanders,Kernel Sander,KernelSander,RealKernelSanders', 'US', 1, 397, 'Kernel Sanders'),
('', '', 0, 398, 'bluezbros'),
('', '', 0, 399, 'Nella Fantasia'),
('', '', 0, 400, 'PlanB'),
('', '', 0, 401, 'eijiro'),
('', '', 0, 402, 'lollerskaterly hacking'),
('', '', 0, 403, 'elColombianDream'),
('', '', 0, 404, 'True'),
('VLGU', 'RU', 0, 405, 'Honeypot'),
('', '', 0, 406, 'NRjunior'),
('', '', 0, 407, 'Taiwan'),
('', '', 0, 408, '55627e3dc819285de189def6fa18b12e537e358'),
('', '', 0, 409, 'Team-ADA'),
('', '', 0, 410, 'Team #288'),
('', '', 0, 411, 'BullShit'),
('', '', 0, 412, 'NellaFantasia'),
('', '', 0, 414, 'mylittlepwnies'),
('', '', 0, 415, '404NameNotF0und'),
('', '', 0, 416, '*371d8df2ee2f5a219136bc4285109e**aa764f6934*'),
('', '', 0, 417, 'My Little Pwnies'),
('', 'US', 0, 418, 'Pi Backwards'),
('', '', 0, 419, 'FiveLateFive'),
('', '', 0, 420, 'None'),
('', '', 0, 421, 'min'),
('', '', 0, 422, '`sudo_reboot`'),
('', '', 0, 423, 'chanzhan'),
('', '', 0, 424, 'Z0mbieHax0rs'),
('', '', 0, 425, 'Lazerwolf'),
('', '', 0, 426, 'catsecurity'),
('', '', 0, 427, 'wst'),
('', '', 0, 428, 'exitia'),
('', '', 0, 429, 'NaneunHackerDa'),
('', 'BR', 0, 430, 'XLII'),
('', '', 0, 431, 'Certified Ethylic Hackers'),
('', '', 0, 432, 'nyan.catz'),
('', '', 0, 433, 'us3ful id10ts'),
('', '', 0, 434, 'CannoobZ'),
('', '', 0, 435, 'Team Anomaly'),
('', '', 0, 436, 'Chuck Norris Fan Club'),
('', '', 0, 437, 'The AK-41s'),
('', '', 0, 438, 'rally_pretac'),
('BrooklyntOverflow,Brooklyn Overflow,Brooklynt_Overflow', 'US', 1, 439, 'NYUSEC'),
('', '', 0, 440, 'endian pale ale'),
('', '', 0, 441, 'all swolchok all the time'),
('', '', 0, 442, 'NotInUse'),
('', '', 0, 443, 'kame0'),
('', '', 0, 444, 'catsec'),
('', '', 0, 445, 'HIRT'),
('Delogrand,Delusions_of_Grandeur,DELUSIONSOFGRANDEUR', 'US', 1, 446, 'Delusions of Grandeur'),
('', '', 0, 447, 'cal0rieMachine'),
('', '', 0, 448, 'dwq'),
('', '', 0, 449, 'NR2011'),
('', '', 0, 450, 'TaraDef'),
('', '', 0, 451, 'kiderikake'),
('', '', 0, 452, 'PapasPingouin'),
('', '', 0, 453, 'nulldevnull-team'),
('', '', 0, 454, '!GH_'),
('Syclover_XCTF', 'CN', 0, 455, 'Syclover'),
('', '', 0, 456, 'qwerty'),
('', '', 0, 457, 'killdozer'),
('', '', 0, 458, 'ozu-manue'),
('', '', 0, 459, 'diabl0'),
('', '', 0, 460, 'Mafia Kittehs'),
('', '', 0, 461, 'East Infection'),
('', '', 0, 462, 'ika'),
('', '', 0, 463, 'punkgrok'),
('', '', 0, 464, '3a9605eae68e244a78df75ca17af67 6acc8cec26'),
('', '', 0, 466, 'BinaryPirates'),
('', '', 0, 467, 'ë‚˜ëŠ”ê¹€ë™ì„ ì´ë‹¤'),
('', '', 0, 468, 'dfisher'),
('', 'RU', 1, 469, 'ufologists'),
('', '', 0, 470, 'KSP'),
('', '', 0, 471, 'd19c01'),
('', '', 0, 472, 'pentsec'),
('', '', 0, 473, '0-Day Saints'),
('', '', 0, 474, 'asdasd'),
('', '', 0, 475, 'a6a9d828bfe827a6ec9f6fac8a43b038beaad1'),
('', '', 0, 476, 'sk3wl0fr00t'),
('', '', 0, 477, '1109F785B17A'),
('Go Back', 'DZ', 0, 478, 'GoBack'),
('', '', 0, 479, 'metacortex'),
('', '', 0, 480, 'Strawberry Torte'),
('', '', 0, 481, 'TheFort'),
('', '', 0, 482, 'gdops'),
('', '', 0, 483, '727'),
('', '', 0, 484, 'cipherion'),
('', 'VN', 1, 485, 'HoangDepTrai123'),
('', 'VN', 1, 486, 'HoangDepTrai123'),
('', 'VN', 1, 487, 'HoangDepTrai123'),
('', 'VN', 1, 488, 'HoangDepTrai123'),
('', 'vn', 1, 489, ''),
('', 'VN', 1, 490, '123'),
('', 'VN Vo Dich', 1, 491, 'Hoang dep trai vo dich'),
('', 'Viet Nam', 0, 492, 'qer'),
('', 'country', 0, 508, 'name'),
('', 'country', 0, 509, 'name'),
('', 'country', 0, 510, 'name'),
('', 'country', 0, 511, 'name'),
('', 'country', 0, 512, 'name'),
('', 'country', 0, 513, 'name'),
('', 'country', 0, 514, 'name'),
('', 'vn', 0, 515, 'yyyy');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `usertype` tinyint(1) NOT NULL,
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`username`, `password`, `usertype`, `id`) VALUES
('admin', 'admin', 0, NULL),
('admin1', 'admin', 0, NULL),
('hdt', 'hdt', 0, NULL),
('Hoang', '123', 1, 515),
('HoangDepTrai', '12345', 0, NULL),
('tvh', 'tvh', 1, 514);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ctf_id` (`ctf_id`);

--
-- Chỉ mục cho bảng `registrations`
--
ALTER TABLE `registrations`
  ADD KEY `teamid` (`teamid`),
  ADD KEY `eventid` (`eventid`);

--
-- Chỉ mục cho bảng `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`),
  ADD KEY `FK_userid` (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=924;

--
-- AUTO_INCREMENT cho bảng `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=516;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `registrations`
--
ALTER TABLE `registrations`
  ADD CONSTRAINT `registrations_ibfk_1` FOREIGN KEY (`teamid`) REFERENCES `teams` (`id`),
  ADD CONSTRAINT `registrations_ibfk_2` FOREIGN KEY (`eventid`) REFERENCES `events` (`id`);

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK_userid` FOREIGN KEY (`id`) REFERENCES `teams` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
