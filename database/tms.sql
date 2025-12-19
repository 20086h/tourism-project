-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2023 at 03:00 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) COLLATE utf8_persian_ci DEFAULT NULL,
  `Password` varchar(100) COLLATE utf8_persian_ci DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '81dc9bdb52d04dc20036dbd8313ed055', '2020-05-11 11:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) DEFAULT NULL,
  `UserEmail` varchar(100) COLLATE utf8_persian_ci DEFAULT NULL,
  `FromDate` varchar(100) COLLATE utf8_persian_ci DEFAULT NULL,
  `ToDate` varchar(100) COLLATE utf8_persian_ci DEFAULT NULL,
  `Comment` longtext COLLATE utf8_persian_ci DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) COLLATE utf8_persian_ci DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(1, 1, 'admin@admin.com', '2023-05-17', '2023-05-21', 'gardesh', '2023-05-05 12:26:50', 0, NULL, '2023-06-01 14:57:06'),
(2, 1, 'admin2@admin.com', '2023-05-29', '2023-05-05', 'یبلیب', '2023-05-31 09:08:46', 2, 'a', '2023-06-01 14:57:12'),
(3, 1, 'afra@gmail.com', '2023-05-19', '2023-05-12', 'غعه567ه', '2023-05-31 09:20:38', 2, 'a', '2023-06-01 16:37:31'),
(4, 1, 'afra@gmail.com', '2023-05-31', '2023-05-08', 'سلام ', '2023-05-31 09:24:00', 1, NULL, '2023-06-01 14:57:22');

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) COLLATE utf8_persian_ci DEFAULT NULL,
  `EmailId` varchar(100) COLLATE utf8_persian_ci DEFAULT NULL,
  `MobileNumber` char(10) COLLATE utf8_persian_ci DEFAULT NULL,
  `Subject` varchar(100) COLLATE utf8_persian_ci DEFAULT NULL,
  `Description` longtext COLLATE utf8_persian_ci DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(6, 'afra', 'afra123@gmail.com', '1234567890', 'jyddv vlc ufmv', 'tyheuet6u', '2023-06-01 13:37:52', 1),
(7, 'امین', 'admin2@admin.com', 'جلیل زاده', 'عدم رززو', 'امکان رزرو برای من وجود ندارد', '2023-06-02 14:07:36', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblissues`
--

CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) COLLATE utf8_persian_ci DEFAULT NULL,
  `Issue` varchar(100) COLLATE utf8_persian_ci DEFAULT NULL,
  `Description` longtext COLLATE utf8_persian_ci DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` longtext COLLATE utf8_persian_ci DEFAULT NULL,
  `AdminremarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tblissues`
--

INSERT INTO `tblissues` (`id`, `UserEmail`, `Issue`, `Description`, `PostingDate`, `AdminRemark`, `AdminremarkDate`) VALUES
(1, 'afra@gmail.com', 'مسائل مربوط به رزرو', 'عنفعنعنه', '2023-05-31 09:25:43', '56عت4س6ه', '2023-06-02 14:25:46'),
(2, 'afra@gmail.com', 'باز پرداخت', 'غتغتنغه', '2023-06-01 15:03:05', 'از طریق شکاره کارت ازسالشده به شماره مورد نظر می‌توانید هزینه را پرداخت کنید', '2023-06-03 17:53:18'),
(3, 'afra@gmail.com', 'سایر موارد', 'امکان رزرو برای من وجود ندارد', '2023-06-02 14:10:21', 'fdgdvsb', '2023-06-02 16:23:42'),
(4, 'afra@gmail.com', 'لغو', 'رزرو', '2023-06-02 14:39:00', NULL, '2023-06-03 17:49:09'),
(31, NULL, NULL, NULL, '2023-07-14 15:10:12', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_persian_ci DEFAULT '',
  `detail` longtext COLLATE utf8_persian_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(1, 'شرایط استفاده', '																																																												<p align=\"justify\"><span style=\"color: black; font-size: larger; font-weight: 700;\">برای رزرو تورهای ما می‌توانید ابتد بر روی دکمه جزئیات تور کلیک کنید، پس از مشخص کردن تاریخ بر روی دکمه ثبت رزرو کلیک کنید تا در پنجره باز شده حساب کاربری ایجاد کنید تا رزرو شما انجام شود و یا می‌توانید قبل از هر کاری، اول از قسمت ثبت نام که در بالای صفحه قرار دارد برای خودتان حساب ایجاد کنید در این صورت می‎‌توانید تور مورد نظر خودتان را رزرو کنید.</span></p>\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										'),
(2, 'سیاست حفظ حریم خصوصی', '<div style=\"text-align: justify;\"><span style=\"color: black; font-size: larger;\">مسئولیت صحت آگهی های درج شده در این سایت به عهده آگهی دهنده میباشد.کلیه حقوق مادی و معنوی این سایت حفظ شده و هرگونه کپی برداری از آن پیگرد قانونی دارد.</span></div>										'),
(3, 'درباره ما', '																				<div style=\"text-align: justify;\"><span style=\"color: black; font-size: larger;\">تلاش ما این بوده است که امکان خرید بلیط اتوبوس  را از طریق اینترنت به ساده‌ترین شکل ممکن فراهم کنیم. هدف ما نیز این است که شما بتوانید بدون اتلاف وقت و در سریع‌ترین زمان ممکن مشخصات کامل سرویس‌های مورد نظرتان را مشاهده کنید و به سادگی بتوانید با مقایسه گزینه‌های پیش روی خود بهترین آن‌ها را انتخاب نمایید.</span></div>\r\n										\r\n										'),
(4, 'شماره های تماس', '																																																		<div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">09197245267</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">09378888551</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">09397784739</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">09357822378</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">09156842013</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">09154823601</span></div>\r\n										\r\n										\r\n										\r\n										\r\n										');

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) COLLATE utf8_persian_ci DEFAULT NULL,
  `PackageType` varchar(150) COLLATE utf8_persian_ci DEFAULT NULL,
  `PackageLocation` varchar(100) COLLATE utf8_persian_ci DEFAULT NULL,
  `PackagePrice` int(11) DEFAULT NULL,
  `PackageFetures` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL,
  `PackageDetails` longtext COLLATE utf8_persian_ci DEFAULT NULL,
  `PackageImage` varchar(100) COLLATE utf8_persian_ci DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(1, 'آبشار مارگون', 'طبیعت گردی', 'یاسوج', 650000, 'دو شب اقامت در هتل، همراهی راهنمای تور از ابتدا تا انتهای تور، بیمه مسافرتی، پرداخت ورودیه اماکن مورد بازدید، پذیرایی بین روز ،صبحانه بوفه', 'می خواهیم به سمت سرزمین چهار فصل ایران برویم. یاسوج که همچون نگینی بر استان زیبای کهگلویه و بویر احمد می‌درخشد. به دل طبیعت می زنیم. از آبشار زیبای یاسوج دیدار می کنیم. به سوی منطقه سی سخت می رویم، و در چشمه میشی جلوه گری طبیعت کوهگل را به تماشا می‌نشینیم. منطقه حفاظت شده دنا با طبیعت بکر و بی نظیرش از دیگر دیدنی هایی است که در تور یاسوج سفرهای علاءالدین خواهیم دید. در طبیعت زیبای مارگون یکی از ترین های جهان را نیز با هم خواهیم دید. آبشار مارگون بعنوان بزرگترین و مرتفع ترین آبشار چشمه‌ای جهان، از گشت های بسیار جذاب این سفر خواهد بود. ', 'Alaedin-Travel-Agency-Margoon-Waterfall-1-s.jpg', '2023-05-26 15:12:29', '2023-05-26 16:02:06'),
(2, 'ارسباران', 'طبیعت گردی', 'آذربایجان شرقی', 800000, 'دو شب اقامت در هتل، همراهی راهنمای تور از ابتدا تا انتهای تور، بیمه مسافرتی، پرداخت ورودیه اماکن مورد بازدید، پذیرایی بین روز ،صبحانه بوفه', 'از اهر، بزرگترین شهرستان منطقه قره داغ آغاز می کنیم. به سراغ بازار تاریخی اهر می رویم. بازار زیبایی که نه تنها از لحاظ معماری قابل اهمیت است بلکه مشاغل مختلف آن بسیار جلب توجه می کند. حرکتمان به سمت کلیبر را ادامه می دهیم تا شب نشینی در بام کلیبر را از دست ندهیم. در دل جنگل های ارسباران قلعه ای اسرار آمیز وجود دارد که بعد از یک گشت و گذار در جنگل به آن می رسیم. قلعه بابک خرم دین که وقتی به سراغش بروید تازه متوجه خواهید شد چرا اسرارآمیز به شمار می آید. چگونه در آن سال ها مصالح تا بالای کوه آورده شده اند و چگونه قلعه ساخته شده است. قلعه بابک خرمدین در دل جنگل های ارسباران هم چنان سرافراز و پایدار ایستاده است. وقتی به شمال غرب ایران می رویم بازدید از رود ارس را نباید از دست بدهیم. رودی که تنها مرز ایران و کشورهای همسایه به شمار می رود. در مسیر ارس پلی وجود دارد که یادگار روزگاری بوده است که رفت و آمد مردم از طریق آن انجام می شد. سفرمان به سرزمین سبز ارسباران با دیدار از آینالو، یکی از بکرترین جنگل های ایران به پایان می رسد.', 'Alaedin-Travel-Agency-Babak-Castel-1-s.jpg', '2023-05-26 15:25:44', NULL),
(3, 'دره ستارگان', 'طبیعت گردی', 'قشم', 1000000, 'سفر با اتوبوس توریستی، هشت شب اقامت در هتل، همراهی راهنمای تور از ابتدا تا انتهای تور، بیمه مسافرتی، پذیرایی بین روز ،صبحانه، ناهار و شام ', 'جنوب ایران در پاییز و زمستان، سالانه میزبان هزاران گردشگر داخلی و خارجی است. این خطه خلیجی به دلیل آب و هوا و شرایط جغرافیایی خاصی که دارد، محل برخی از زیباترین جاذبه‌های گردشگری ایران بوده که در لیست «عجایب هفتگانه ایران» است. ', 'Alaedin-Travel-Agency-Stars-Valley-s.jpg', '2023-05-26 15:41:34', '2023-05-26 16:03:15'),
(4, 'باغ گل‌ها ', 'طبیعت گردی', 'اصفهان', 2990000, 'اتوبوس توریستی، بیمه سفر، لیدر حرفه ای، صبحانه، پذیرایی میان وعده، ورودی ها', 'اغ گل های اصفهان یکی از متفاوترین و خاص ترین دیدنی های اصفهان است که با گل رنگارنگ و زیبایش حال دلتان را خوب می‌کند و دقایقی خوش را در کنار بازدید از جاذبه های تاریخی این شهر برایتان در تور اصفهان خلق می‌سازد. حال و هوای خوش این باغ فرصت خوبی را فراهم می‌کند تا گردشگران بتوانند در این باغ در فضای رویایی و رمانتیک آن دمی به استراحت بنشینند و از آن همه زیبایی لذت ببرند. در بازدید از باغ گل های اصفهان شما می‌توانید با انواع گل و گیاه‌های زیبا و عجیب و غریب آشنا شوید و بیش از 395 گونه گیاهی زیبا را در یک مجموعه مشاهده می‌کنید.', 'Alaedin-Travel-Attraction-Isfahan-Flowers-Garden-s.jpg', '2023-05-26 15:50:32', '2023-05-31 08:15:56'),
(5, 'خانه تاریخی داروغه مشهد', 'خانه تاریخی', 'مشهد', 2000000, 'سفر با اتوبوس توریستی، هشت شب اقامت در هتل، همراهی راهنمای تور از ابتدا تا انتهای تور، بیمه مسافرتی، پذیرایی بین روز ،صبحانه، ناهار و شام بوفه', 'خانه تاریخی داروغه یکی از بناهای تاریخی مشهد است که گردشگران تور مشهد محال است بدون بازدید از این خانه راهی شهرشان شوند. این خانه در اواخر دوره قاجار به دستور یوسف خان هراتی، در مساحت حدود یک هزار و صد مترمربع احداث گردید. خانه تاریخی داروغه مشهد به لحاظ فرم و شکل معماری به شیوه مرسوم خانه‌ های تاریخی ایران (سه طرف ساخت) بنا شده است و عناصر معماری آن، به ویژه طرح تراس پله‌‌های دو طرفه و تزئینات، نشان از الگوبرداری از طرح‌‌های معماری روسی دارد. این خانه از بخش‌های بسیاری همچون دو ضلع نشیمن، یک ضلع غلام رو، سرداب، نخستین شومینه مشهد، اولین حمام خصوصی مشهد، دو طبقه نانوایی، مطبخ خانه، اتاق‌ های بادگیر، حوض آب جاری سنتی تشکیل شده است. ', 'Alaedin-Travel-Agency-Mashhad-Darougheh-Historical-House-s.jpg', '2023-05-26 16:01:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) COLLATE utf8_persian_ci DEFAULT NULL,
  `MobileNumber` char(10) COLLATE utf8_persian_ci DEFAULT NULL,
  `EmailId` varchar(70) COLLATE utf8_persian_ci DEFAULT NULL,
  `Password` varchar(100) COLLATE utf8_persian_ci DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(1, 'حسام', '0123456789', 'hesam@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2023-05-26 16:11:36', NULL),
(2, 'رامین ساعدی', '1234567890', 'ramin@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2023-05-26 16:22:19', NULL),
(3, 'رقیه حبیبی', '2345678901', 'habibi@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2023-05-26 16:24:26', '2023-05-27 15:06:14'),
(4, 'نوشین سرمدی', '3456789012', 'noshin@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2023-05-26 16:28:12', NULL),
(5, 'زهرا مددی ', '4567890123', 'zahra@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2023-05-26 16:30:10', NULL),
(6, 'افرا', '5678901234', 'afra@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2023-05-26 16:31:06', '2023-06-01 13:47:13'),
(7, 'امین', 'جلیل زاده', 'admin2@admin.com', '202cb962ac59075b964b07152d234b70', '2023-05-31 09:07:47', NULL),
(8, 'رویا مظفری', '1245789630', 'roya@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2023-06-02 14:05:38', '2023-06-02 14:35:19'),
(17, 'رقیه حبیبی', '0147852369', 'a1382@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2023-07-14 15:10:11', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
