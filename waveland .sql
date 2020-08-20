-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2020-08-19 10:34:10
-- 伺服器版本： 10.4.13-MariaDB
-- PHP 版本： 7.3.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `waveland`
--

-- --------------------------------------------------------

--
-- 資料表結構 `categories`
--

CREATE TABLE `categories` (
  `sid` int(11) NOT NULL,
  `name` varchar(30) CHARACTER SET utf8 NOT NULL,
  `parent_sid` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `categories`
--

INSERT INTO `categories` (`sid`, `name`, `parent_sid`) VALUES
(1, '地區', 0),
(2, '項目', 0),
(3, '北部', 1),
(4, '中部', 1),
(5, '南部', 1),
(6, '東部', 1),
(7, '離島', 1),
(8, 'SUP', 2),
(9, '獨木舟', 2),
(10, '泛舟', 2),
(11, '潛水', 2),
(12, '風帆', 2);

-- --------------------------------------------------------

--
-- 資料表結構 `extra_product`
--

CREATE TABLE `extra_product` (
  `sid` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `extra_product`
--

INSERT INTO `extra_product` (`sid`, `product_id`, `name`, `price`) VALUES
(1, 1, '防水背包\r\n', 350),
(2, 1, '福隆火車站-龍門接駁', 50),
(3, 1, '福隆便當\r\n', 80),
(4, 1, '防水運動相機租借\r\n', 350),
(5, 2, '防水背包\r\n', 350),
(6, 2, '福隆火車站-龍門接駁', 50),
(7, 2, '福隆便當\r\n', 80),
(8, 2, '防水運動相機租借\r\n', 350);

-- --------------------------------------------------------

--
-- 資料表結構 `group-add`
--

CREATE TABLE `group-add` (
  `sid` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `groupClass-name` int(11) NOT NULL,
  `courseName` varchar(255) CHARACTER SET utf8 NOT NULL,
  `groupClass-locate` varchar(11) CHARACTER SET utf8 NOT NULL,
  `groupClass-type` varchar(11) CHARACTER SET utf8 NOT NULL,
  `group-date` date NOT NULL,
  `group-time` varchar(11) CHARACTER SET utf8 NOT NULL,
  `group-theme` varchar(11) CHARACTER SET utf8 NOT NULL,
  `group-type` varchar(11) CHARACTER SET utf8 NOT NULL,
  `group-message` varchar(255) CHARACTER SET utf8 NOT NULL,
  `join_count` int(11) NOT NULL,
  `created_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `group-add`
--

INSERT INTO `group-add` (`sid`, `member_id`, `groupClass-name`, `courseName`, `groupClass-locate`, `groupClass-type`, `group-date`, `group-time`, `group-theme`, `group-type`, `group-message`, `join_count`, `created_time`) VALUES
(22, 0, 6, '龍洞SUP浮潛體驗', '東北角', '浮潛', '2020-09-30', '15:00-18:30', '找冒險王夥伴', '挑戰冒險團', '來玩ㄚㄚㄚㄚㄚㄚㄚㄚㄚ', 15, '2020-08-12 10:37:19'),
(24, 0, 8, '日月潭SUP體驗', '日月潭', 'SUP', '2020-10-18', '8:30-11:00', '辣台妹一起來玩', '輕鬆休閒團', '來玩ㄚㄚㄚㄚㄚㄚㄚㄚㄚ', 5, '2020-08-12 10:48:09'),
(25, 0, 3, '獨木舟體驗-東澳團', '東澳', 'SUP', '2020-09-20', '15:00-18:30', '相約超美夕陽團~~~', '輕鬆休閒團', '來玩ㄚㄚㄚㄚㄚㄚㄚㄚㄚ', 3, '2020-08-12 10:50:37'),
(26, 0, 1, 'SUP體驗-福隆古道團', '新北，福隆', 'SUP', '2020-08-28', '6:00-9:30', '來啊來玩啊!', '挑戰冒險團', '6666666666', 1, '2020-08-12 15:09:39'),
(30, 3, 2, '夢幻牛奶湖SUP體驗', '宜蘭，龜山島', 'SUP', '2020-08-20', '8:30-11:00', '來RRRRRRR', '輕鬆休閒團', '6262', 0, '2020-08-14 15:44:47'),
(31, 3, 18, '海龜同遊浮淺體驗', '綠島', '浮潛', '2020-09-29', '8:30-11:00', '快快樂樂浮潛R~', '挑戰冒險團', '484684', 0, '2020-08-18 18:52:32'),
(32, 12, 2, '夢幻牛奶湖SUP體驗', '宜蘭，龜山島', 'SUP', '2020-09-29', '8:30-11:00', '來RRRRRRR', '輕鬆休閒團', '5424757857857578578578578578', 0, '2020-08-19 15:13:35');

-- --------------------------------------------------------

--
-- 資料表結構 `likes`
--

CREATE TABLE `likes` (
  `sid` int(11) NOT NULL,
  `product_sid` int(255) NOT NULL,
  `member_sid` int(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `likes`
--

INSERT INTO `likes` (`sid`, `product_sid`, `member_sid`, `created_at`) VALUES
(2, 3, 1, '2020-08-07 14:17:53'),
(3, 1, 2, '2020-08-07 14:17:53'),
(5, 4, 3, '2020-08-07 17:45:40'),
(6, 7, 3, '2020-08-10 09:19:26'),
(7, 3, 3, '2020-08-10 17:28:44'),
(8, 1, 3, '2020-08-13 09:28:45'),
(14, 2, 12, '2020-08-19 14:56:00'),
(17, 5, 12, '2020-08-19 14:56:09'),
(19, 6, 12, '2020-08-19 15:01:27'),
(49, 15, 12, '2020-08-19 15:29:37'),
(50, 1, 12, '2020-08-19 15:30:52');

-- --------------------------------------------------------

--
-- 資料表結構 `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `hash` varchar(255) NOT NULL,
  `activated` int(11) NOT NULL DEFAULT 0,
  `nickname` varchar(255) NOT NULL,
  `gender` text NOT NULL,
  `create_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `members`
--

INSERT INTO `members` (`id`, `name`, `email`, `password`, `mobile`, `address`, `birthday`, `hash`, `activated`, `nickname`, `gender`, `create_at`) VALUES
(3, '王小明', 'ming@gg.com', '123456', '0918222333', '', '1990-02-02', '52c61e86824899ca67e8d815a7a7afb0ce43878c', 0, 'Ming', 'M', '2019-01-07 10:39:38'),
(4, '', 'aaa@qq.com', '3d4f2bf07dc1be38b20cd6e46949a1071f9d0e3d', '0988888888', '', '0000-00-00', '1bc88dddf4783874a5f50c8955b703be32775ca1', 0, 'aaa', '', '2019-01-10 10:29:53'),
(5, '', 'aaa@qq.coma', '3d4f2bf07dc1be38b20cd6e46949a1071f9d0e3d', '0911111111', '', '0000-00-00', '93264d4396836844f43a4cb1669827ba41ff5d58', 0, 'aaaa', '', '2019-01-10 10:33:20'),
(6, '', 'aaaaaaaa@qq.coma', 'fba9f1c9ae2a8afe7815c9cdd492512622a66302', '0911111111', '', '0000-00-00', '57774e6b1c6ccc3913fd8be593836c384d5da1a3', 0, 'aaaa', '', '2019-01-10 10:34:27'),
(7, '', 'michael60311@gmail.com', '123456', NULL, NULL, NULL, '8e81ab87216ce64eef4c979dc657ad69', 0, 'Michael', '', '2020-08-11 11:09:28'),
(9, '', 'michael@gmail.com', '123456', NULL, NULL, NULL, '70d0a2c8f959f1556964c8e2bdf38ac1', 0, 'Mike', 'M', '2020-08-11 11:14:23'),
(10, '', 'tutingyeh@yahoo.com', '123456', NULL, NULL, NULL, '035e8f42c9d4c07bfa573b778d66a11d', 0, '杜老大', 'F', '2020-08-13 15:39:38'),
(11, '', '5555@gmail.com', '123456', NULL, NULL, NULL, 'ff4ada99d1c12c99934a924d37a2f0bc', 0, '杜老大', '', '2020-08-13 15:43:05'),
(12, '', '555555@gmail.com', '123456', NULL, NULL, NULL, '043b0704bd2bd4cfd87bc70c43f0ba78', 0, 'aa', '', '2020-08-19 14:55:22');

-- --------------------------------------------------------

--
-- 資料表結構 `orders`
--

CREATE TABLE `orders` (
  `sid` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `payment` varchar(255) NOT NULL,
  `cardNumber` varchar(255) NOT NULL,
  `month` text NOT NULL,
  `year` text NOT NULL,
  `securityCode` varchar(255) NOT NULL,
  `taxIDnumber` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `orders`
--

INSERT INTO `orders` (`sid`, `member_id`, `total_amount`, `phone`, `email`, `payment`, `cardNumber`, `month`, `year`, `securityCode`, `taxIDnumber`, `status`, `create_at`) VALUES
(100087, 3, 2500, '+886919537752', 'tutingyeh@yahoo.com', 'creditCard', '3323333333', '一月', '2020', '323623', '', 1, '2020-08-18 09:47:16'),
(100088, 3, 2500, '+886919537752', 'tutingyeh@yahoo.com', 'creditCard', '5254524', '二月', '2020', '5244', '52', 1, '2020-08-18 11:41:23'),
(100089, 3, 5300, '+886919537752', 'tutingyeh@yahoo.com', 'creditCard', '599586', '二月', '2020', '5555', '', 1, '2020-08-19 06:31:05'),
(100090, 12, 2800, '+886919537752', 'tutingyeh@yahoo.com', 'creditCard', '132456', '二月', '2020', '123', '', 1, '2020-08-19 07:20:21');

-- --------------------------------------------------------

--
-- 資料表結構 `order_detail`
--

CREATE TABLE `order_detail` (
  `sid` int(11) NOT NULL,
  `order_sid` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `adult_qty` int(11) NOT NULL,
  `child_qty` int(11) NOT NULL,
  `date` text NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `order_detail`
--

INSERT INTO `order_detail` (`sid`, `order_sid`, `product_id`, `adult_qty`, `child_qty`, `date`, `time`) VALUES
(51, 100045, 5, 0, 0, '2020-08-15 00:00:39', ''),
(52, 100046, 1, 0, 0, '2020-08-15 00:02:15', ''),
(53, 100046, 5, 0, 0, '2020-08-15 00:02:15', ''),
(54, 100047, 1, 0, 0, '2020-08-15 00:02:43', ''),
(55, 100047, 5, 0, 0, '2020-08-15 00:02:43', ''),
(56, 100048, 1, 0, 0, '2020-08-15 00:09:52', ''),
(57, 100048, 5, 0, 0, '2020-08-15 00:09:52', ''),
(58, 100049, 1, 0, 0, '2020-08-15 00:10:16', ''),
(59, 100049, 5, 0, 0, '2020-08-15 00:10:16', ''),
(60, 100050, 1, 0, 0, '2020-08-15 00:13:53', ''),
(61, 100050, 5, 0, 0, '2020-08-15 00:13:53', ''),
(62, 100052, 3, 2, 0, '2020-08-15 00:55:04', ''),
(63, 100060, 3, 2, 0, '2020-08-15 01:03:18', ''),
(64, 100069, 1, 1, 1, '2020-08-15 11:21:56', 'noon'),
(65, 100072, 1, 1, 1, '2020-08-15 11:23:35', 'morning'),
(66, 100075, 1, 1, 1, '2020-08-15 11:39:14', 'noon'),
(67, 100085, 2, 1, 1, '2020-08-15 11:47:14', 'noon'),
(68, 100086, 2, 1, 1, '2020-08-15 11:55:44', 'noon'),
(69, 100087, 1, 1, 1, '2020-08-18 17:47:16', 'noon'),
(70, 100088, 1, 1, 1, '2020-08-18 19:41:23', 'noon'),
(71, 100089, 11, 1, 1, '2020-08-19 14:31:05', 'afternoon'),
(72, 100090, 4, 1, 1, '2020-08-19 15:20:21', 'noon');

-- --------------------------------------------------------

--
-- 資料表結構 `product-test`
--

CREATE TABLE `product-test` (
  `sid` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `kv_img` varchar(30) NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 NOT NULL,
  `type_id` int(11) NOT NULL,
  `locate` varchar(255) CHARACTER SET utf8 NOT NULL,
  `locate_id` int(11) NOT NULL,
  `time` varchar(255) CHARACTER SET utf8 NOT NULL,
  `score` varchar(11) CHARACTER SET utf8 NOT NULL,
  `price` int(11) NOT NULL,
  `price_child` int(11) NOT NULL,
  `intro` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `product-test`
--

INSERT INTO `product-test` (`sid`, `name`, `kv_img`, `type`, `type_id`, `locate`, `locate_id`, `time`, `score`, `price`, `price_child`, `intro`) VALUES
(1, 'SUP體驗-福隆古道團', '1-kv', 'SUP', 8, '新北，福隆', 3, '3.5Hrs', '4.2', 1700, 800, '想在秋冬划 SUP，不能錯過福隆！在兼具景觀與安全性的福隆雙溪河玩立式槳板，由教練陪同指導，教你學習基本動作、技巧，輕鬆找到其中樂趣，夏季還可至福隆海水浴場欣賞沙雕季及海洋音樂祭！在專業教練指導下，新手也能操控槳板，完成漂流划行的樂趣，隨行人員也將為參與者拍攝美麗生動的照片影像，為行程留下完美記憶!'),
(2, '夢幻牛奶湖SUP體驗', '2-kv', 'SUP', 8, '宜蘭，龜山島', 3, '3.5Hrs', '4.8', 4500, 800, ''),
(3, '獨木舟體驗-東澳團', '3-kv', '獨木舟', 9, '東澳', 3, '3.5Hrs', '3.9', 1800, 800, ''),
(4, '珊瑚復育區生態浮潛', '4-kv', '浮潛', 11, '澎湖', 7, '3.5Hrs', '4.7', 2000, 800, ''),
(5, '南寮&柴口浮淺體驗', '5-kv', '浮潛', 11, '綠島', 7, '3.5Hrs', '5', 2000, 800, ''),
(6, '龍洞浮潛體驗', '6-kv', '浮潛', 11, '東北角', 3, '3.5Hrs', '4.7', 1500, 800, ''),
(7, '蘭嶼浮潛體驗', '7-kv', '浮潛', 11, '蘭嶼', 7, '3.5Hrs', '4.8', 2000, 800, ''),
(8, '日月潭SUP體驗', '8-kv', 'SUP', 8, '南投，日月潭', 4, '3.5Hrs', '4.8', 2000, 800, ''),
(9, '划 SUP 去！徜徉療癒藍色啤酒海', '9-kv', 'SUP', 8, '宜蘭', 3, '3.5Hrs', '4.8', 2000, 800, ''),
(10, '基隆外木山SUP體驗', '10-kv', 'SUP', 8, '基隆，外木山', 3, '3.5Hrs', '4.3', 3500, 800, ''),
(11, '深澳象鼻岩SUP立槳｜東北角秘境！', '11-kv', 'SUP', 8, '台北，深澳', 3, '3.5Hrs', '4.9', 4500, 800, ''),
(12, '金山燭台嶼SUP體驗', '12-kv', 'SUP', 8, '台北，金山', 3, '3.5Hrs', '4.0', 2300, 800, ''),
(13, '金山員潭溪SUP立槳初體驗', '13-kv', 'SUP', 8, '台北，金山', 3, '3.5Hrs', '4.1', 2000, 800, ''),
(14, '南方澳-豆腐岬ＳＵＰ探索之旅', '27-kv', 'SUP', 8, '宜蘭，南方澳', 3, '3.5Hrs', '4.7', 4800, 1000, ''),
(15, '小琉球-美人洞浮淺探索', '14-kv', '浮潛', 11, '小琉球', 7, '3.5Hrs', '4.8', 2000, 800, ''),
(16, '小琉球-衫福沈船秘境探索', '15-kv', '浮潛', 11, '小琉球', 7, '3.5Hrs', '4.8', 4600, 1200, ''),
(17, '石朗-水下伸展台浮淺體驗', '16-kv', '浮潛', 11, '綠島', 7, '3.5Hrs', '5', 3600, 800, ''),
(18, '海龜同遊浮淺體驗', '17-kv', '浮潛', 11, '綠島', 7, '3.5Hrs', '5', 3600, 800, ''),
(19, '澎湖｜忘憂島浮潛體驗，超完整浮潛課程', '18-kv', '浮潛', 11, '澎湖', 7, '3.5Hrs', '4.5', 5200, 2000, ''),
(20, '象鼻岩獨木舟打卡團-網美秘境', '19-kv', '獨木舟', 9, '台北，深澳', 3, '3.5Hrs', '4.9', 4200, 1200, ''),
(21, '獨木舟體驗-粉鳥林探索團', '20-kv', '獨木舟', 9, '宜蘭', 3, '3.5Hrs', '3.9', 1800, 800, ''),
(22, '東部獨木舟-清水斷涯夕陽團', '21-kv', '獨木舟', 9, '花蓮', 6, '3.5Hrs', '4.2', 3200, 800, ''),
(23, '台東限定｜石雨傘生態獨木舟', '22-kv', '獨木舟', 9, '台東', 6, '3.5Hrs', '4.5', 3200, 800, ''),
(24, '南投｜日月潭日出獨木舟', '23-kv', '獨木舟', 9, '南投,日月潭', 4, '3.5Hrs', '4.8', 4200, 1000, ''),
(25, '虎頭埤風景區獨木舟體驗', '24-kv', '獨木舟', 9, '台南，新化', 5, '3.5Hrs', '3.6', 1800, 500, ''),
(26, '墾丁後灣獨木舟體驗', '25-kv', '獨木舟', 9, '屏東，墾丁', 5, '3.5Hrs', '4.0', 3200, 600, ''),
(27, '墾丁後灣透明獨木舟生態欣賞', '26-kv', '獨木舟', 9, '屏東，墾丁', 5, '3.5Hrs', '4.2', 4600, 1000, '');

-- --------------------------------------------------------

--
-- 資料表結構 `product_img`
--

CREATE TABLE `product_img` (
  `sid` int(5) NOT NULL,
  `product_id` int(4) NOT NULL,
  `img` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `product_img`
--

INSERT INTO `product_img` (`sid`, `product_id`, `img`) VALUES
(1, 1, '111.jpg'),
(2, 1, '112.jpg');

-- --------------------------------------------------------

--
-- 資料表結構 `product_notice`
--

CREATE TABLE `product_notice` (
  `sid` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `location` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `how_car` varchar(255) NOT NULL,
  `how_pub` varchar(255) NOT NULL,
  `area` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `product_notice`
--

INSERT INTO `product_notice` (`sid`, `product_id`, `location`, `address`, `how_car`, `how_pub`, `area`) VALUES
(1, 1, '貢寮德心宮', '新北市貢寮區德心街 10 號', '從台北出發，沿著 2 丙公路行駛，車程約 1 到 1.5 小時', '台鐵貢寮站下車， 沿著朝陽街與學苑街行走，見到德心街右轉，步行約 1.5 公里', '雙溪河'),
(2, 2, '貢寮德心宮', '新北市貢寮區德心街 10 號', '從台北出發，沿著 2 丙公路行駛，車程約 1 到 1.5 小時', '台鐵貢寮站下車， 沿著朝陽街與學苑街行走，見到德心街右轉，步行約 1.5 公里', '雙溪河'),
(3, 3, '貢寮德心宮', '新北市貢寮區德心街 10 號', '從台北出發，沿著 2 丙公路行駛，車程約 1 到 1.5 小時', '台鐵貢寮站下車， 沿著朝陽街與學苑街行走，見到德心街右轉，步行約 1.5 公里', '雙溪河');

-- --------------------------------------------------------

--
-- 資料表結構 `product_schedule`
--

CREATE TABLE `product_schedule` (
  `sid` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `time` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `product_schedule`
--

INSERT INTO `product_schedule` (`sid`, `product_id`, `time`, `title`, `content`) VALUES
(1, 1, '0-60mins', '集合暖身', '於貢寮德心宮集合，由領隊帶隊換裝、暖身，講解基本漿語。<br>\r\n                  Ps.請準時抵達集合地點，全體學員下水後，不再另外安排下水。'),
(2, 1, '60mins-120mins', '雙溪美景盡覽無遺', '行程沿著雙溪河順流而下，雙溪河曾經是凱達格蘭族三貂四社文明的重要發源地，水量豐沛、水質優良，有豐富的水中生態，還有獨具特色的彩虹橋與雙溪吊橋等。'),
(3, 1, '120mins-150mins', '龍門吊橋享受愜意片刻', '龍門距離福隆海域很近，卻因為有段距離而保有它的沉靜。抵達龍門吊橋後，會讓學員附近稍作休息。想要玩水、浮潛的人，也可以在這裡下水。專業教練隨時確保學員的安全，隨行領隊也將為活動留下美麗生動的照片影像，讓大家盡興而歸。'),
(4, 1, '150mins-180mins', '抵達福隆海水浴場，活動結束', '休息片刻後繼續啟航，終點為福隆海水浴場，因此學員不必在逆行而上，滑回出發地。用最少力氣，享受最多美景。'),
(5, 2, '0-60mins', '集合暖身', '於貢寮德心宮集合，由領隊帶隊換裝、暖身，講解基本漿語。<br>\r\n                  Ps.請準時抵達集合地點，全體學員下水後，不再另外安排下水。'),
(6, 2, '60mins-120mins', '雙溪美景盡覽無遺', '行程沿著雙溪河順流而下，雙溪河曾經是凱達格蘭族三貂四社文明的重要發源地，水量豐沛、水質優良，有豐富的水中生態，還有獨具特色的彩虹橋與雙溪吊橋等。'),
(7, 2, '120mins-150mins', '龍門吊橋享受愜意片刻', '龍門距離福隆海域很近，卻因為有段距離而保有它的沉靜。抵達龍門吊橋後，會讓學員附近稍作休息。想要玩水、浮潛的人，也可以在這裡下水。專業教練隨時確保學員的安全，隨行領隊也將為活動留下美麗生動的照片影像，讓大家盡興而歸。'),
(8, 2, '150mins-180mins', '抵達福隆海水浴場，活動結束', '休息片刻後繼續啟航，終點為福隆海水浴場，因此學員不必在逆行而上，滑回出發地。用最少力氣，享受最多美景。');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `group-add`
--
ALTER TABLE `group-add`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- 資料表索引 `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `product-test`
--
ALTER TABLE `product-test`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `product_img`
--
ALTER TABLE `product_img`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `product_notice`
--
ALTER TABLE `product_notice`
  ADD PRIMARY KEY (`sid`);

--
-- 資料表索引 `product_schedule`
--
ALTER TABLE `product_schedule`
  ADD PRIMARY KEY (`sid`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `categories`
--
ALTER TABLE `categories`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `group-add`
--
ALTER TABLE `group-add`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `likes`
--
ALTER TABLE `likes`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `orders`
--
ALTER TABLE `orders`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100091;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product-test`
--
ALTER TABLE `product-test`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_img`
--
ALTER TABLE `product_img`
  MODIFY `sid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_notice`
--
ALTER TABLE `product_notice`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_schedule`
--
ALTER TABLE `product_schedule`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
