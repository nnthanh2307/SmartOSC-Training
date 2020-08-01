-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 06, 2020 lúc 10:28 PM
-- Phiên bản máy phục vụ: 10.4.6-MariaDB
-- Phiên bản PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `endtest`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `parent_id`, `created_time`, `status`) VALUES
(54, 'Áo', 0, '2020-03-06 20:21:49', '0'),
(55, 'Áo Nam', 54, '2020-03-06 20:21:59', '0'),
(56, 'Áo Nữ', 54, '2020-03-06 20:22:11', '0'),
(57, 'Quần', 0, '2020-03-06 20:22:20', '0'),
(58, 'Quần Âu', 57, '2020-03-06 20:22:30', '0'),
(59, 'Quần Bò', 57, '2020-03-06 20:22:39', '0'),
(60, 'Quần short', 57, '2020-03-06 20:22:50', '0'),
(61, 'Váy, đầm', 0, '2020-03-06 20:23:04', '0'),
(62, 'Váy nữ', 61, '2020-03-06 20:23:17', '0'),
(63, 'Váy, đầm công sở', 61, '2020-03-06 20:23:37', '0'),
(64, 'Phụ Kiện', 0, '2020-03-06 20:23:58', '0'),
(65, 'Túi xách', 64, '2020-03-06 20:24:10', '0'),
(66, 'Giày', 0, '2020-03-06 20:24:17', '0'),
(67, 'Giày Nam', 66, '2020-03-06 20:24:24', '0'),
(68, 'Giày Nữ', 66, '2020-03-06 20:24:34', '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `color`
--

CREATE TABLE `color` (
  `color_id` int(11) NOT NULL,
  `color_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `color`
--

INSERT INTO `color` (`color_id`, `color_name`) VALUES
(1, 'Red '),
(2, 'Blue '),
(3, 'White '),
(4, 'Yellow '),
(5, 'Gray '),
(6, 'Green '),
(7, 'Black');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `map`
--

CREATE TABLE `map` (
  `map_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `map`
--

INSERT INTO `map` (`map_id`, `product_id`, `color_id`, `size_id`) VALUES
(379, 113, 2, 2),
(380, 113, 2, 3),
(381, 113, 2, 4),
(382, 113, 5, 2),
(383, 113, 5, 3),
(384, 113, 5, 4),
(385, 114, 3, 2),
(386, 114, 3, 3),
(387, 114, 5, 2),
(388, 114, 5, 3),
(389, 115, 3, 2),
(390, 115, 3, 3),
(391, 115, 3, 4),
(392, 115, 3, 5),
(393, 116, 2, 1),
(394, 116, 2, 2),
(395, 116, 2, 3),
(396, 116, 3, 1),
(397, 116, 3, 2),
(398, 116, 3, 3),
(399, 116, 5, 1),
(400, 116, 5, 2),
(401, 116, 5, 3),
(402, 117, 2, 1),
(403, 117, 2, 2),
(404, 117, 2, 3),
(405, 117, 2, 4),
(406, 118, 7, 1),
(407, 118, 7, 2),
(408, 118, 7, 3),
(409, 118, 7, 4),
(410, 119, 5, 2),
(411, 119, 5, 3),
(412, 119, 5, 4),
(413, 119, 5, 5),
(414, 119, 6, 2),
(415, 119, 6, 3),
(416, 119, 6, 4),
(417, 119, 6, 5),
(418, 119, 7, 2),
(419, 119, 7, 3),
(420, 119, 7, 4),
(421, 119, 7, 5),
(422, 120, 5, 2),
(423, 120, 5, 3),
(424, 120, 5, 4),
(425, 120, 6, 2),
(426, 120, 6, 3),
(427, 120, 6, 4),
(428, 121, 1, 1),
(429, 121, 1, 2),
(430, 121, 1, 3),
(431, 122, 3, 2),
(432, 122, 3, 3),
(433, 122, 3, 4),
(434, 122, 7, 2),
(435, 122, 7, 3),
(436, 122, 7, 4),
(437, 123, 5, 2),
(438, 123, 5, 3),
(439, 124, 5, 3),
(440, 124, 5, 4),
(441, 125, 1, 2),
(442, 125, 1, 3),
(443, 125, 1, 4),
(444, 125, 2, 2),
(445, 125, 2, 3),
(446, 125, 2, 4),
(447, 125, 7, 2),
(448, 125, 7, 3),
(449, 125, 7, 4),
(450, 126, 7, 1),
(451, 126, 7, 2),
(452, 126, 7, 3),
(453, 126, 7, 4),
(454, 126, 7, 5),
(455, 127, 1, 3),
(456, 127, 1, 4),
(457, 127, 1, 5),
(458, 128, 1, 4),
(459, 128, 1, 5),
(460, 129, 7, 1),
(461, 129, 7, 2),
(462, 129, 7, 3),
(463, 130, 3, 1),
(464, 130, 3, 2),
(465, 130, 3, 3),
(466, 130, 3, 4),
(467, 131, 1, 2),
(468, 131, 1, 3),
(469, 131, 1, 4),
(470, 131, 2, 2),
(471, 131, 2, 3),
(472, 131, 2, 4),
(473, 132, 4, 4),
(474, 132, 4, 5),
(475, 133, 3, 1),
(476, 133, 3, 2),
(477, 133, 3, 3),
(478, 133, 3, 4),
(479, 133, 3, 5),
(480, 134, 3, 3),
(481, 134, 3, 4),
(482, 134, 3, 5),
(483, 134, 7, 3),
(484, 134, 7, 4),
(485, 134, 7, 5),
(486, 135, 3, 1),
(487, 135, 3, 2),
(488, 135, 3, 3),
(489, 135, 3, 4),
(490, 135, 3, 5),
(491, 136, 2, 2),
(492, 136, 2, 3),
(493, 136, 2, 4),
(494, 136, 2, 5),
(495, 136, 3, 2),
(496, 136, 3, 3),
(497, 136, 3, 4),
(498, 136, 3, 5),
(499, 136, 7, 2),
(500, 136, 7, 3),
(501, 136, 7, 4),
(502, 136, 7, 5),
(503, 137, 2, 2),
(504, 137, 2, 3),
(505, 137, 2, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `sub_total` int(11) NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `quantity`, `price`, `sub_total`, `url`) VALUES
(11, 'ORDER1583529903', 120, 3, 320000, 960000, '?scope=shop&action=view&id=2&productid=120'),
(12, 'ORDER1583529903', 114, 1, 180000, 180000, '?scope=shop&action=view&id=2&productid=114'),
(13, 'ORDER1583529903', 125, 1, 200000, 200000, '?scope=shop&action=view&id=2&productid=125');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `post_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `post`
--

INSERT INTO `post` (`post_id`, `parent_id`, `post_title`, `post_description`, `post_image`, `post_detail`, `post_status`, `created_time`) VALUES
(14, 17, 'Chuẩn bị vào Hè, đây là 5 món đồ thời trang mà các nàng không thể nhắm mắt làm ngơ', '\"Điểm danh\" 5 món đồ cần phải có trong tủ đồ mùa hè năm nay giúp bạn không bị lỗi mốt.', 'public/images/post/chuan-bi-vao-he-sam-gi-cung-duoc-nhung-dung-bo-qua-5-mon-do-dinh-khong-co-keo-que-mua-mua-1-1582790313-300-width660height986.jpg', '<p><img alt=\"chuan bi vao he, day la 5 mon do thoi trang ma cac nang khong the nham mat lam ngo - 1\" data-original=\"https://cdn.eva.vn/upload/1-2020/images/2020-02-27/chuan-bi-vao-he-sam-gi-cung-duoc-nhung-dung-bo-qua-5-mon-do-dinh-khong-co-keo-que-mua-mua-1-1582790313-300-width660height986.jpg\" data-was-processed=\"true\" height=\"747\" onclick=\"return openNewImage(this, \'\')\" src=\"https://cdn.eva.vn/upload/1-2020/images/2020-02-27/chuan-bi-vao-he-sam-gi-cung-duoc-nhung-dung-bo-qua-5-mon-do-dinh-khong-co-keo-que-mua-mua-1-1582790313-300-width660height986.jpg\" width=\"500\" /></p>\n\n<p>&nbsp;</p>\n\n<p align=\"center\"><img alt=\"chuan bi vao he, day la 5 mon do thoi trang ma cac nang khong the nham mat lam ngo - 3\" data-original=\"https://cdn.eva.vn/upload/1-2020/images/2020-02-27/chuan-bi-vao-he-sam-gi-cung-duoc-nhung-dung-bo-qua-5-mon-do-dinh-khong-co-keo-que-mua-mua-2-1582790313-855-width660height986.jpg\" data-was-processed=\"true\" height=\"747\" onclick=\"return openNewImage(this, \'\')\" src=\"https://cdn.eva.vn/upload/1-2020/images/2020-02-27/chuan-bi-vao-he-sam-gi-cung-duoc-nhung-dung-bo-qua-5-mon-do-dinh-khong-co-keo-que-mua-mua-2-1582790313-855-width660height986.jpg\" width=\"500\" /></p>\n\n<p align=\"center\"><img alt=\"chuan bi vao he, day la 5 mon do thoi trang ma cac nang khong the nham mat lam ngo - 4\" data-original=\"https://cdn.eva.vn/upload/1-2020/images/2020-02-27/chuan-bi-vao-he-sam-gi-cung-duoc-nhung-dung-bo-qua-5-mon-do-dinh-khong-co-keo-que-mua-mua-3-1582790313-642-width660height986.jpg\" data-was-processed=\"true\" height=\"747\" onclick=\"return openNewImage(this, \'\')\" src=\"https://cdn.eva.vn/upload/1-2020/images/2020-02-27/chuan-bi-vao-he-sam-gi-cung-duoc-nhung-dung-bo-qua-5-mon-do-dinh-khong-co-keo-que-mua-mua-3-1582790313-642-width660height986.jpg\" width=\"500\" /></p>\n\n<p align=\"center\"><img alt=\"chuan bi vao he, day la 5 mon do thoi trang ma cac nang khong the nham mat lam ngo - 5\" data-original=\"https://cdn.eva.vn/upload/1-2020/images/2020-02-27/chuan-bi-vao-he-sam-gi-cung-duoc-nhung-dung-bo-qua-5-mon-do-dinh-khong-co-keo-que-mua-mua-5-1582790313-120-width660height986.jpg\" data-was-processed=\"true\" height=\"747\" onclick=\"return openNewImage(this, \'\')\" src=\"https://cdn.eva.vn/upload/1-2020/images/2020-02-27/chuan-bi-vao-he-sam-gi-cung-duoc-nhung-dung-bo-qua-5-mon-do-dinh-khong-co-keo-que-mua-mua-5-1582790313-120-width660height986.jpg\" width=\"500\" /></p>\n\n<p align=\"center\"><img alt=\"chuan bi vao he, day la 5 mon do thoi trang ma cac nang khong the nham mat lam ngo - 6\" data-original=\"https://cdn.eva.vn/upload/1-2020/images/2020-02-27/chuan-bi-vao-he-sam-gi-cung-duoc-nhung-dung-bo-qua-5-mon-do-dinh-khong-co-keo-que-mua-mua_-1582790313-552-width660height986.jpg\" data-was-processed=\"true\" height=\"747\" onclick=\"return openNewImage(this, \'\')\" src=\"https://cdn.eva.vn/upload/1-2020/images/2020-02-27/chuan-bi-vao-he-sam-gi-cung-duoc-nhung-dung-bo-qua-5-mon-do-dinh-khong-co-keo-que-mua-mua_-1582790313-552-width660height986.jpg\" width=\"500\" /></p>', '0', '2020-03-06 21:12:28'),
(15, 17, 'Không quá đơn điệu, không quá lố lăng, đây là những kiểu áo dài được săn đón Tết này', 'Muốn đón Tết với trang phục áo dài đẹp nền nã mà vẫn nổi bật suốt cả 3 mùng, sao không thử \"tậu\" ngay về cho mình những thiết kế đẹp như mơ này.', 'public/images/post/khong-truyen-thong-don-dieu-khong-tan-thoi-lo-lang-day-la-kieu-ao-dai-duoc-san-don-tet-nay-anhdantuyenbai-min-1578902504-555-width648height480.jpg', '<p>Từ l&acirc;u, &aacute;o d&agrave;i kh&ocirc;ng chỉ l&agrave; trang phục truyền thống t&ocirc;n vinh những gi&aacute; trị văn ho&aacute; Việt Nam m&agrave; c&ograve;n l&agrave; kiểu trang phục t&ocirc;n l&ecirc;n vẻ đẹp nữ t&iacute;nh của phụ nữ. Thế nhưng nếu diện m&atilde;i 1 kiểu &aacute;o d&agrave;i cổ điển sẽ kh&ocirc;ng tr&aacute;nh được cảm gi&aacute;c nh&agrave;m ch&aacute;n. Mặt kh&aacute;c, &aacute;o d&agrave;i c&aacute;ch t&acirc;n qu&aacute; đ&agrave; dễ g&acirc;y phản cảm.&nbsp;</p>\n\n<p>Nắm bắt được điều n&agrave;y, NTK L&ecirc; Thanh Ho&agrave; đ&atilde; ra mắt BST &aacute;o d&agrave;i Tết, với sự kết hợp h&agrave;i ho&agrave; giữa truyền thống v&agrave; t&acirc;n thời. Vẫn l&agrave; t&agrave; &aacute;o d&agrave;i mềm mại - quần ống su&ocirc;ng nhưng được nhấn nh&aacute; th&ecirc;m chi tiết ở cổ, vai v&agrave; tay đ&atilde; mang lại d&aacute;ng vẻ mới mẻ &ldquo;h&uacute;t mắt&rdquo; cho người mặc.</p>\n\n<p align=\"center\"><img alt=\"khong qua don dieu, khong qua lo lang, day la nhung kieu ao dai duoc san don tet nay - 3\" data-original=\"https://cdn.eva.vn/upload/1-2020/images/2020-01-12/khong-truyen-thong-don-dieu-khong-tan-thoi-lo-lang-day-la-mau-ao-dai-duoc-san-don-tet-nay-b1-1578842132-797-width700height1000.jpg\" data-was-processed=\"true\" height=\"714\" onclick=\"return openNewImage(this, \'\')\" src=\"https://cdn.eva.vn/upload/1-2020/images/2020-01-12/khong-truyen-thong-don-dieu-khong-tan-thoi-lo-lang-day-la-mau-ao-dai-duoc-san-don-tet-nay-b1-1578842132-797-width700height1000.jpg\" width=\"500\" /></p>\n\n<p>Những t&ocirc;ng m&agrave;u s&aacute;ng, dịu d&agrave;ng sắc hoa rất ph&ugrave; hợp với kh&ocirc;ng kh&iacute; m&ugrave;a xu&acirc;n phương Nam nhiều nắng gi&oacute; được NTK tận dụng đối đa. Hoa trở th&agrave;nh cảm hứng v&agrave; l&agrave; chi tiết điểm xuyết khiến trang phục trở n&ecirc;n nổi bật hơn.</p>\n\n<p align=\"center\"><img alt=\"khong qua don dieu, khong qua lo lang, day la nhung kieu ao dai duoc san don tet nay - 4\" data-original=\"https://cdn.eva.vn/upload/1-2020/images/2020-01-12/khong-truyen-thong-don-dieu-khong-tan-thoi-lo-lang-day-la-mau-ao-dai-duoc-san-don-tet-nay-b8-1578842132-215-width700height1000.jpg\" data-was-processed=\"true\" height=\"714\" onclick=\"return openNewImage(this, \'\')\" src=\"https://cdn.eva.vn/upload/1-2020/images/2020-01-12/khong-truyen-thong-don-dieu-khong-tan-thoi-lo-lang-day-la-mau-ao-dai-duoc-san-don-tet-nay-b8-1578842132-215-width700height1000.jpg\" width=\"500\" /></p>\n\n<p>Mẫu &aacute;o d&agrave;i voan m&agrave;u nude sang trọng với h&igrave;nh th&ecirc;u hoa đ&agrave;o rộn r&agrave;ng kh&ocirc;ng kh&iacute; m&ugrave;a xu&acirc;n chắc chắn sẽ được l&ograve;ng những c&ocirc; n&agrave;ng &ldquo;b&aacute;nh b&egrave;o&rdquo; với thiết kế tay c&aacute;nh ti&ecirc;n xuy&ecirc;n thấu.</p>\n\n<p align=\"center\"><img alt=\"khong qua don dieu, khong qua lo lang, day la nhung kieu ao dai duoc san don tet nay - 5\" data-original=\"https://cdn.eva.vn/upload/1-2020/images/2020-01-12/khong-truyen-thong-don-dieu-khong-tan-thoi-lo-lang-day-la-mau-ao-dai-duoc-san-don-tet-nay-b2-1578842132-279-width700height1000.jpg\" data-was-processed=\"true\" height=\"714\" onclick=\"return openNewImage(this, \'\')\" src=\"https://cdn.eva.vn/upload/1-2020/images/2020-01-12/khong-truyen-thong-don-dieu-khong-tan-thoi-lo-lang-day-la-mau-ao-dai-duoc-san-don-tet-nay-b2-1578842132-279-width700height1000.jpg\" width=\"500\" /></p>\n\n<p>Giữ nguy&ecirc;n chi tiết cổ trụ của &aacute;o d&agrave;i truyền thống, NTK kh&eacute;o l&eacute;o nhấn nh&aacute; phần tay, tạo n&ecirc;n thiết kế tay phồng &ldquo;si&ecirc;u to khổng lồ&rdquo; vừa trang nh&atilde; vừa ấn tượng. Mẫu thiết kế n&agrave;y rất ph&ugrave; hợp với những c&ocirc; n&agrave;ng muốn trở n&ecirc;n nổi bật hơn nhưng vẫn giữ được phong c&aacute;ch thanh lịch cổ điển.</p>\n\n<p align=\"center\"><img alt=\"khong qua don dieu, khong qua lo lang, day la nhung kieu ao dai duoc san don tet nay - 6\" data-original=\"https://cdn.eva.vn/upload/1-2020/images/2020-01-12/khong-truyen-thong-don-dieu-khong-tan-thoi-lo-lang-day-la-mau-ao-dai-duoc-san-don-tet-nay-b3-1578842132-874-width700height1000.jpg\" data-was-processed=\"true\" height=\"714\" onclick=\"return openNewImage(this, \'\')\" src=\"https://cdn.eva.vn/upload/1-2020/images/2020-01-12/khong-truyen-thong-don-dieu-khong-tan-thoi-lo-lang-day-la-mau-ao-dai-duoc-san-don-tet-nay-b3-1578842132-874-width700height1000.jpg\" width=\"500\" /></p>\n\n<p>Tr&ecirc;n nền &aacute;o trắng nền n&atilde;, chi tiết hoa th&ecirc;u v&agrave;ng trở th&agrave;nh điểm nhấn nổi bật, e ấp dịu d&agrave;ng nhưng cũng nở rộ đầy sức sống. Để qua đ&oacute; t&ocirc;n l&ecirc;n d&aacute;ng vẻ y&ecirc;u kiều xinh đẹp của hội chị em.</p>\n\n<p align=\"center\"><img alt=\"khong qua don dieu, khong qua lo lang, day la nhung kieu ao dai duoc san don tet nay - 7\" data-original=\"https://cdn.eva.vn/upload/1-2020/images/2020-01-12/khong-truyen-thong-don-dieu-khong-tan-thoi-lo-lang-day-la-mau-ao-dai-duoc-san-don-tet-nay-b4-1578842132-647-width700height1000.jpg\" data-was-processed=\"true\" onclick=\"return openNewImage(this, \'\')\" src=\"https://cdn.eva.vn/upload/1-2020/images/2020-01-12/khong-truyen-thong-don-dieu-khong-tan-thoi-lo-lang-day-la-mau-ao-dai-duoc-san-don-tet-nay-b4-1578842132-647-width700height1000.jpg\" width=\"660\" /></p>\n\n<p>Chất liệu chiffon gi&uacute;p t&agrave; &aacute;o đỏ quyền lực trở n&ecirc;n mềm mại, nhẹ nh&agrave;ng hơn. Điểm xuyết xuy&ecirc;n suốt t&agrave; &aacute;o d&agrave;i đỏ rực rỡ l&agrave; những b&ocirc;ng hoa bản to m&agrave;u xanh hiện đại v&agrave; trẻ trung. Diện k&egrave;m t&uacute;i x&aacute;ch v&agrave; gi&agrave;y v&agrave; t&uacute;i x&aacute;ch t&ocirc;ng xuyệt t&ocirc;ng l&agrave; n&agrave;ng đ&atilde; c&oacute; trang phục đ&oacute;n năm mới đỏ tưng bừng.</p>', '0', '2020-03-06 21:13:22'),
(16, 18, 'Top 7 xu hướng thời trang dẫn đầu trong năm 2019: bạn đã áp dụng thành công mốt nào?', 'Năm 2019 vừa qua, đâu là những xu hướng thời trang nổi bật mà cứ hễ ra phố, chị em lại được dịp bắt gặp?', 'public/images/post/top-7-xu-huong-thoi-trang-khien-chi-chi-em-em-tranh-nhau-dan-dau-trong-nam-2019-71-1576518622-366-width1205height665.jpg', '<p>Một trong những xu hướng thời trang được c&aacute;c qu&yacute; c&ocirc; s&agrave;nh mốt li&ecirc;n tục &aacute;p dụng trong năm, kể cả m&ugrave;a h&egrave; hay m&ugrave;a đ&ocirc;ng ch&iacute;nh l&agrave; diện croptop chẳng t&agrave;y gang để t&ocirc;n d&aacute;ng triệt để.&nbsp;</p>\n\n<p align=\"center\">&nbsp;</p>\n\n<p><img alt=\"top 7 xu huong thoi trang dan dau trong nam 2019: ban da ap dung thanh cong mot nao? - 1\" data-original=\"https://cdn.eva.vn/upload/4-2019/images/2019-12-17/top-7-xu-huong-thoi-trang-khien-chi-chi-em-em-tranh-nhau-dan-dau-trong-nam-2019-01-1576557063-103-width660height986.jpg\" data-was-processed=\"true\" height=\"747\" onclick=\"return openNewImage(this, \'\')\" src=\"https://cdn.eva.vn/upload/4-2019/images/2019-12-17/top-7-xu-huong-thoi-trang-khien-chi-chi-em-em-tranh-nhau-dan-dau-trong-nam-2019-01-1576557063-103-width660height986.jpg\" width=\"500\" /></p>\n\n<p>&nbsp;</p>\n\n<p align=\"center\"><img alt=\"top 7 xu huong thoi trang dan dau trong nam 2019: ban da ap dung thanh cong mot nao? - 3\" data-original=\"https://cdn.eva.vn/upload/4-2019/images/2019-12-17/top-7-xu-huong-thoi-trang-khien-chi-chi-em-em-tranh-nhau-dan-dau-trong-nam-2019-71-1576518622-366-width1205height665.jpg\" data-was-processed=\"true\" height=\"276\" onclick=\"return openNewImage(this, \'\')\" src=\"https://cdn.eva.vn/upload/4-2019/images/2019-12-17/top-7-xu-huong-thoi-trang-khien-chi-chi-em-em-tranh-nhau-dan-dau-trong-nam-2019-71-1576518622-366-width1205height665.jpg\" width=\"500\" /></p>\n\n<p align=\"center\">Mốt mặc vest kh&ocirc;ng nội y c&oacute; thể kết hợp với nhiều phong c&aacute;ch v&agrave; m&agrave;u sắc trang phục kh&aacute;c nhau. D&ugrave; bạn theo đuổi h&igrave;nh ảnh sang trọng&nbsp;trong c&acirc;y đồ đen, năng động v&agrave; gợi cảm với outfit m&agrave;u v&agrave;ng hay ngọt ng&agrave;o đ&aacute;ng y&ecirc;u với set v&aacute;y &aacute;o t&ocirc;ng hồng... tất cả đều c&oacute; thể gi&uacute;p bạn trở n&ecirc;n s&agrave;nh điệu hết nấc.&nbsp;</p>\n\n<p align=\"center\"><img alt=\"top 7 xu huong thoi trang dan dau trong nam 2019: ban da ap dung thanh cong mot nao? - 4\" data-original=\"https://cdn.eva.vn/upload/4-2019/images/2019-12-17/top-7-xu-huong-thoi-trang-khien-chi-chi-em-em-tranh-nhau-dan-dau-trong-nam-2019-02-min-1576558447-902-width660height986.jpg\" data-was-processed=\"true\" onclick=\"return openNewImage(this, \'\')\" src=\"https://cdn.eva.vn/upload/4-2019/images/2019-12-17/top-7-xu-huong-thoi-trang-khien-chi-chi-em-em-tranh-nhau-dan-dau-trong-nam-2019-02-min-1576558447-902-width660height986.jpg\" /></p>\n\n<p align=\"center\"><img alt=\"top 7 xu huong thoi trang dan dau trong nam 2019: ban da ap dung thanh cong mot nao? - 5\" data-original=\"https://cdn.eva.vn/upload/4-2019/images/2019-12-17/top-7-xu-huong-thoi-trang-khien-chi-chi-em-em-tranh-nhau-dan-dau-trong-nam-2019-72-1576518622-708-width1205height900.jpg\" data-was-processed=\"true\" onclick=\"return openNewImage(this, \'\')\" src=\"https://cdn.eva.vn/upload/4-2019/images/2019-12-17/top-7-xu-huong-thoi-trang-khien-chi-chi-em-em-tranh-nhau-dan-dau-trong-nam-2019-72-1576518622-708-width1205height900.jpg\" width=\"660\" /></p>\n\n<p align=\"center\">Đối với những kiểu croptop ngắn cũn cỡn thế n&agrave;y, việc mix - match c&ugrave;ng một chiếc quần d&agrave;i theo phong c&aacute;ch bụi bặm hay c&aacute; t&iacute;nh ch&iacute;nh l&agrave; combo tuyệt vời hơn cả. Bởi khi ấy, chị em sẽ tr&ocirc;ng năng động, khỏe khoắn v&agrave; tinh tế hơn cả với c&acirc;y đồ nửa k&iacute;n nửa hở n&agrave;y.&nbsp;</p>\n\n<p align=\"center\"><img alt=\"top 7 xu huong thoi trang dan dau trong nam 2019: ban da ap dung thanh cong mot nao? - 6\" data-original=\"https://cdn.eva.vn/upload/4-2019/images/2019-12-17/top-7-xu-huong-thoi-trang-dan-dau-trong-nam-2019-ban-co-phai-la-co-nang-sanh-dieu-a7-min-1576565947-509-width660height986.jpg\" data-was-processed=\"true\" onclick=\"return openNewImage(this, \'\')\" src=\"https://cdn.eva.vn/upload/4-2019/images/2019-12-17/top-7-xu-huong-thoi-trang-dan-dau-trong-nam-2019-ban-co-phai-la-co-nang-sanh-dieu-a7-min-1576565947-509-width660height986.jpg\" /></p>\n\n<p align=\"center\"><img alt=\"top 7 xu huong thoi trang dan dau trong nam 2019: ban da ap dung thanh cong mot nao? - 7\" data-original=\"https://cdn.eva.vn/upload/4-2019/images/2019-12-17/top-7-xu-huong-thoi-trang-khien-chi-chi-em-em-tranh-nhau-dan-dau-trong-nam-2019-77-1576518622-307-width1200height700.jpg\" data-was-processed=\"true\" onclick=\"return openNewImage(this, \'\')\" src=\"https://cdn.eva.vn/upload/4-2019/images/2019-12-17/top-7-xu-huong-thoi-trang-khien-chi-chi-em-em-tranh-nhau-dan-dau-trong-nam-2019-77-1576518622-307-width1200height700.jpg\" width=\"660\" /></p>\n\n<p align=\"center\">Với khả năng mang đến cho người mặc vẻ ngo&agrave;i trẻ trung v&agrave; s&agrave;nh điệu cũng như &quot;hack d&aacute;ng&quot; đ&aacute;ng kể, chiếc quần bike short nhanh ch&oacute;ng xuất hiện với tần suất ra phố d&agrave;y đặc. Tuy nhi&ecirc;n, thiết kế quần n&agrave;y lại kh&ocirc;ng ph&ugrave; hợp lắm với c&aacute;c qu&yacute; c&ocirc; sở hữu đ&ocirc;i ch&acirc;n k&eacute;m thon v&igrave; c&oacute; thể ph&ocirc; b&agrave;y nhược điểm cơ thể.&nbsp;</p>\n\n<p align=\"center\"><img alt=\"top 7 xu huong thoi trang dan dau trong nam 2019: ban da ap dung thanh cong mot nao? - 8\" data-original=\"https://cdn.eva.vn/upload/4-2019/images/2019-12-17/top-7-xu-huong-thoi-trang-dan-dau-trong-nam-2019-ban-co-phai-la-co-nang-sanh-dieu-a9-1576565928-12-width660height986.jpg\" data-was-processed=\"true\" onclick=\"return openNewImage(this, \'\')\" src=\"https://cdn.eva.vn/upload/4-2019/images/2019-12-17/top-7-xu-huong-thoi-trang-dan-dau-trong-nam-2019-ban-co-phai-la-co-nang-sanh-dieu-a9-1576565928-12-width660height986.jpg\" /></p>\n\n<p align=\"center\"><img alt=\"top 7 xu huong thoi trang dan dau trong nam 2019: ban da ap dung thanh cong mot nao? - 9\" data-original=\"https://cdn.eva.vn/upload/4-2019/images/2019-12-17/top-7-xu-huong-thoi-trang-khien-chi-chi-em-em-tranh-nhau-dan-dau-trong-nam-2019-74-1576518622-38-width800height700.jpg\" data-was-processed=\"true\" onclick=\"return openNewImage(this, \'\')\" src=\"https://cdn.eva.vn/upload/4-2019/images/2019-12-17/top-7-xu-huong-thoi-trang-khien-chi-chi-em-em-tranh-nhau-dan-dau-trong-nam-2019-74-1576518622-38-width800height700.jpg\" width=\"660\" /></p>\n\n<p align=\"center\">T&uacute;i kẹp n&aacute;ch gọn nhẹ, thường c&oacute; phom d&aacute;ng mang form d&aacute;ng cổ điển h&igrave;nh chữ nhật hoặc biến tấu đa dạng dựa tr&ecirc;n phi&ecirc;n bản cũ. D&ugrave; k&iacute;ch thước kh&ocirc;ng chứa được nhiều đồ d&ugrave;ng nhưng lại gi&uacute;p chị em biến h&oacute;a th&agrave;nh c&aacute;c fashionista ch&iacute;nh hiệu.&nbsp;</p>\n\n<p align=\"center\"><img alt=\"top 7 xu huong thoi trang dan dau trong nam 2019: ban da ap dung thanh cong mot nao? - 10\" data-original=\"https://cdn.eva.vn/upload/4-2019/images/2019-12-17/top-7-xu-huong-thoi-trang-dan-dau-trong-nam-2019-ban-co-phai-la-co-nang-sanh-dieu-a8-1576565928-993-width660height986.jpg\" data-was-processed=\"true\" onclick=\"return openNewImage(this, \'\')\" src=\"https://cdn.eva.vn/upload/4-2019/images/2019-12-17/top-7-xu-huong-thoi-trang-dan-dau-trong-nam-2019-ban-co-phai-la-co-nang-sanh-dieu-a8-1576565928-993-width660height986.jpg\" /></p>\n\n<p align=\"center\"><img alt=\"top 7 xu huong thoi trang dan dau trong nam 2019: ban da ap dung thanh cong mot nao? - 11\" data-original=\"https://cdn.eva.vn/upload/4-2019/images/2019-12-17/top-7-xu-huong-thoi-trang-khien-chi-chi-em-em-tranh-nhau-dan-dau-trong-nam-2019-73-1576518622-643-width1205height700.jpg\" data-was-processed=\"true\" onclick=\"return openNewImage(this, \'\')\" src=\"https://cdn.eva.vn/upload/4-2019/images/2019-12-17/top-7-xu-huong-thoi-trang-khien-chi-chi-em-em-tranh-nhau-dan-dau-trong-nam-2019-73-1576518622-643-width1205height700.jpg\" width=\"660\" /></p>\n\n<p>Sở dĩ thiết kế t&uacute;i kh&ocirc;ng sở hữu khả năng chứa đồ n&agrave;y được c&aacute;c qu&yacute; c&ocirc; y&ecirc;u th&iacute;ch l&agrave; bởi k&iacute;ch thước của ch&uacute;ng qu&aacute; b&eacute;, c&oacute; thể t&ocirc; điểm cho set đồ nhưng lại kh&ocirc;ng khiến cho tổng thể trở n&ecirc;n rối mắt hay chệch nhịp.</p>\n\n<p align=\"center\"><img alt=\"top 7 xu huong thoi trang dan dau trong nam 2019: ban da ap dung thanh cong mot nao? - 12\" data-original=\"https://cdn.eva.vn/upload/4-2019/images/2019-12-17/top-7-xu-huong-thoi-trang-khien-chi-chi-em-em-tranh-nhau-dan-dau-trong-nam-2019-03-1576558427-253-width660height986.jpg\" data-was-processed=\"true\" onclick=\"return openNewImage(this, \'\')\" src=\"https://cdn.eva.vn/upload/4-2019/images/2019-12-17/top-7-xu-huong-thoi-trang-khien-chi-chi-em-em-tranh-nhau-dan-dau-trong-nam-2019-03-1576558427-253-width660height986.jpg\" /></p>\n\n<p align=\"center\"><img alt=\"top 7 xu huong thoi trang dan dau trong nam 2019: ban da ap dung thanh cong mot nao? - 13\" data-original=\"https://cdn.eva.vn/upload/4-2019/images/2019-12-17/top-7-xu-huong-thoi-trang-khien-chi-chi-em-em-tranh-nhau-dan-dau-trong-nam-2019-75-1576518622-882-width800height700.jpg\" data-was-processed=\"true\" onclick=\"return openNewImage(this, \'\')\" src=\"https://cdn.eva.vn/upload/4-2019/images/2019-12-17/top-7-xu-huong-thoi-trang-khien-chi-chi-em-em-tranh-nhau-dan-dau-trong-nam-2019-75-1576518622-882-width800height700.jpg\" width=\"660\" /></p>\n\n<p align=\"center\">Sắc xanh nổi bật kh&ocirc;ng chỉ gi&uacute;p tạo mang đến nguồn năng lượng t&iacute;ch cực cho người mặc m&agrave; c&ograve;n gi&uacute;p chị em&nbsp;ứng k&iacute;ch th&iacute;ch thị gi&aacute;c, trở n&ecirc;n nổi bần bật trong mắt đối phương. Phong c&aacute;ch ph&ugrave; hợp nhất với sắc th&aacute;i ch&oacute;i chang n&agrave;y ch&iacute;nh l&agrave; sporty - chic khỏe khoắn v&agrave; năng động.&nbsp;</p>\n\n<p align=\"center\"><img alt=\"top 7 xu huong thoi trang dan dau trong nam 2019: ban da ap dung thanh cong mot nao? - 14\" data-original=\"https://cdn.eva.vn/upload/4-2019/images/2019-12-17/top-7-xu-huong-thoi-trang-dan-dau-trong-nam-2019-ban-co-phai-la-co-nang-sanh-dieu-a10-1576565928-251-width660height986.jpg\" data-was-processed=\"true\" onclick=\"return openNewImage(this, \'\')\" src=\"https://cdn.eva.vn/upload/4-2019/images/2019-12-17/top-7-xu-huong-thoi-trang-dan-dau-trong-nam-2019-ban-co-phai-la-co-nang-sanh-dieu-a10-1576565928-251-width660height986.jpg\" /></p>\n\n<p align=\"center\"><img alt=\"top 7 xu huong thoi trang dan dau trong nam 2019: ban da ap dung thanh cong mot nao? - 15\" data-original=\"https://cdn.eva.vn/upload/4-2019/images/2019-12-17/top-7-xu-huong-thoi-trang-khien-chi-chi-em-em-tranh-nhau-dan-dau-trong-nam-2019-76-1576518622-474-width800height700.jpg\" data-was-processed=\"true\" onclick=\"return openNewImage(this, \'\')\" src=\"https://cdn.eva.vn/upload/4-2019/images/2019-12-17/top-7-xu-huong-thoi-trang-khien-chi-chi-em-em-tranh-nhau-dan-dau-trong-nam-2019-76-1576518622-474-width800height700.jpg\" width=\"660\" /></p>\n\n<p>Từ hoa tai ngọc trai điệu đ&agrave; đến kẹp t&oacute;c duy&ecirc;n d&aacute;ng hay c&agrave;i t&oacute;c sang chảnh, sự biến tấu theo hướng hiện đại lẫn cổ điển của phụ kiện ngọc trai đ&atilde; &ldquo;đốn tim&rdquo; c&aacute;c n&agrave;ng.</p>', '0', '2020-03-06 21:15:01'),
(17, 18, 'Dự đoán những gam màu, họa tiết thống trị xu hướng thời trang thu đông 2019', 'Những sắc màu như: tím, cam, xanh lá,... hay họa tiết kẻ, hoa,... được dự đoán sẽ bùng nổ và dẫn đầu xu hướng thời trang Thu Đông 2019.', 'public/images/post/du-doan-nhung-gam-mau-hoa-tiet-thong-tri-xu-huong-thoi-trang-thu-dong-2019-collage-10-1568826369-493-width600height300.jpg', '<p>Khi trời chuyển thu cũng l&agrave; l&uacute;c cũng l&agrave; l&uacute;c ph&aacute;i đẹp cần l&ecirc;n kế hoạch &ldquo;t&acirc;n trang&rdquo; lại tủ đồ trong thời điểm giao m&ugrave;a. Tr&aacute;i với suy nghĩ của nhiều người rằng&nbsp;<a href=\"https://eva.vn/xu-huong-thoi-trang-thu-dong-2017-p2186c36.html\">thời trang thu đ&ocirc;ng</a>&nbsp;sẽ đi liền với những gam m&agrave;u v&agrave; họa tiết đơn sắc, trung t&iacute;nh;&nbsp;<a href=\"https://eva.vn/xu-huong-thoi-trang-thu-dong-p2186c36.html\">xu hướng thời trang thu đ&ocirc;ng</a>&nbsp;2019 lại c&oacute; chiều hướng thi&ecirc;n về những t&ocirc;ng m&agrave;u v&agrave; họa tiết thời thượng, trẻ trung. B&agrave;i viết n&agrave;y sẽ điểm qua những xu hướng thời trang được dự đo&aacute;n sẽ &ldquo;l&agrave;m mưa l&agrave;m gi&oacute;&rdquo; trong m&ugrave;a Thu Đ&ocirc;ng 2019.</p>\n\n<p><strong>Những gam m&agrave;u &ldquo;hot&rdquo; nhất thời trang Thu Đ&ocirc;ng 2019</strong></p>\n\n<p><strong>1. T&iacute;m l&atilde;ng mạn</strong></p>\n\n<p>Đ&acirc;y l&agrave; t&ocirc;ng m&agrave;u được dự b&aacute;o sẽ l&ecirc;n ng&ocirc;i trong xu hướng thời trang Thu Đ&ocirc;ng 2019.&nbsp;</p>\n\n<p>Muốn tạo ra vẻ ngo&agrave;i thật thời thượng, h&atilde;y diện cả &ldquo;c&acirc;y&rdquo; t&iacute;m với đa dạng c&aacute;c sắc th&aacute;i tr&ecirc;n c&ugrave;ng tổng thể. Muốn tr&ocirc;ng ấm &aacute;p, đậm chất Thu Đ&ocirc;ng hơn, t&iacute;m đi c&ugrave;ng sắc x&aacute;m hoặc n&acirc;u chắc chắn kh&ocirc;ng khiến bạn thất vọng. B&ecirc;n cạnh đ&oacute;, c&aacute;c bộ phối kh&aacute;c c&ugrave;ng m&agrave;u x&aacute;m v&agrave; xanh lam, m&agrave;u v&agrave;ng v&agrave; m&agrave;u n&acirc;u đều cho hiệu ứng m&agrave;u sắc ấn tượng.</p>\n\n<p align=\"center\">&nbsp;</p>\n\n<p><img alt=\"du doan nhung gam mau, hoa tiet thong tri xu huong thoi trang thu dong 2019 - 1\" data-original=\"https://cdn.eva.vn/upload/3-2019/images/2019-09-19/du-doan-nhung-gam-mau-hoa-tiet-thong-tri-xu-huong-thoi-trang-thu-dong-2019-nos1442647577-1568826369-127-width600height490.jpg\" data-was-processed=\"true\" height=\"408\" onclick=\"return openNewImage(this, \'\')\" src=\"https://cdn.eva.vn/upload/3-2019/images/2019-09-19/du-doan-nhung-gam-mau-hoa-tiet-thong-tri-xu-huong-thoi-trang-thu-dong-2019-nos1442647577-1568826369-127-width600height490.jpg\" width=\"500\" /></p>\n\n<p>&nbsp;</p>\n\n<p>&ldquo;Nữ ho&agrave;ng giải tr&iacute;&rdquo; Hồ Ngọc H&agrave; thể hiện gu thời trang thời thượng khi diện cả nguy&ecirc;n c&acirc;y m&agrave;u t&iacute;m.</p>\n\n<p align=\"center\"><img alt=\"du doan nhung gam mau, hoa tiet thong tri xu huong thoi trang thu dong 2019 - 3\" data-original=\"https://cdn.eva.vn/upload/3-2019/images/2019-09-19/du-doan-nhung-gam-mau-hoa-tiet-thong-tri-xu-huong-thoi-trang-thu-dong-2019-thoi-tiet-mat-me-hoc-sao-viet-cach-phoi-do-tong-xu-1568826369-146-width600height382.jpg\" data-was-processed=\"true\" height=\"318\" onclick=\"return openNewImage(this, \'\')\" src=\"https://cdn.eva.vn/upload/3-2019/images/2019-09-19/du-doan-nhung-gam-mau-hoa-tiet-thong-tri-xu-huong-thoi-trang-thu-dong-2019-thoi-tiet-mat-me-hoc-sao-viet-cach-phoi-do-tong-xu-1568826369-146-width600height382.jpg\" width=\"500\" /></p>\n\n<p>Ninh Dương Lan Ngọc quyến rũ v&agrave; c&aacute; t&iacute;nh trong bộ vest t&iacute;m kết hợp &aacute;o sơ mi m&agrave;u x&aacute;m, tạo n&ecirc;n một tổng thể v&ocirc; c&ugrave;ng cuốn h&uacute;t, hứa hẹn sẽ l&agrave; hot trend trong thời trang thu đ&ocirc;ng năm nay.</p>\n\n<p align=\"center\"><img alt=\"du doan nhung gam mau, hoa tiet thong tri xu huong thoi trang thu dong 2019 - 4\" data-original=\"https://cdn.eva.vn/upload/3-2019/images/2019-09-19/du-doan-nhung-gam-mau-hoa-tiet-thong-tri-xu-huong-thoi-trang-thu-dong-2019-unnamed-1568826369-879-width600height900.jpg\" data-was-processed=\"true\" height=\"750\" onclick=\"return openNewImage(this, \'\')\" src=\"https://cdn.eva.vn/upload/3-2019/images/2019-09-19/du-doan-nhung-gam-mau-hoa-tiet-thong-tri-xu-huong-thoi-trang-thu-dong-2019-unnamed-1568826369-879-width600height900.jpg\" width=\"500\" /></p>\n\n<p>Sắc t&iacute;m phối c&ugrave;ng m&agrave;u đỏ v&agrave; m&agrave;u v&agrave;ng tạo n&ecirc;n hiệu ứng m&agrave;u sắc v&ocirc; c&ugrave;ng ấn tượng.</p>\n\n<p><strong>2. Xanh l&aacute; thời thượng</strong></p>\n\n<p>Xu hướng thời trang Thu Đ&ocirc;ng 2019 l&agrave; dịp l&ecirc;n ng&ocirc;i của 50 sắc th&aacute;i xanh l&aacute;. Trẻ trung, mới lạ v&agrave; đem đến cảm gi&aacute;c ho&agrave;n to&agrave;n kh&aacute;c biệt, gam m&agrave;u n&agrave;y hứa hẹn sẽ thử th&aacute;ch khả năng phối đồ của c&aacute;c n&agrave;ng s&agrave;nh điệu. Gu thời trang của bạn sẽ thăng hoa đ&aacute;ng kể v&agrave; thu h&uacute;t hơn nếu chinh phục được m&agrave;u sắc th&uacute; vị n&agrave;y.</p>\n\n<p align=\"center\"><img alt=\"du doan nhung gam mau, hoa tiet thong tri xu huong thoi trang thu dong 2019 - 5\" data-original=\"https://cdn.eva.vn/upload/3-2019/images/2019-09-19/du-doan-nhung-gam-mau-hoa-tiet-thong-tri-xu-huong-thoi-trang-thu-dong-2019-str_1-1568826369-156-width600height840.jpg\" data-was-processed=\"true\" onclick=\"return openNewImage(this, \'\')\" src=\"https://cdn.eva.vn/upload/3-2019/images/2019-09-19/du-doan-nhung-gam-mau-hoa-tiet-thong-tri-xu-huong-thoi-trang-thu-dong-2019-str_1-1568826369-156-width600height840.jpg\" /></p>\n\n<p>Quả kh&ocirc;ng hổ l&agrave; t&iacute;n đồ thời trang h&agrave;ng đầu Vbiz, H&agrave; Hồ tiếp tục đ&oacute;n đầu xu hướng khi kho&aacute;c l&ecirc;n m&igrave;nh bộ c&aacute;nh thu đ&ocirc;ng m&agrave;u xanh l&aacute; mạ phối c&ugrave;ng sơ mi thắt nơ thanh lịch.</p>\n\n<p align=\"center\"><img alt=\"du doan nhung gam mau, hoa tiet thong tri xu huong thoi trang thu dong 2019 - 6\" data-original=\"https://cdn.eva.vn/upload/3-2019/images/2019-09-19/du-doan-nhung-gam-mau-hoa-tiet-thong-tri-xu-huong-thoi-trang-thu-dong-2019-1-1568826369-65-width600height284.jpg\" data-was-processed=\"true\" onclick=\"return openNewImage(this, \'\')\" src=\"https://cdn.eva.vn/upload/3-2019/images/2019-09-19/du-doan-nhung-gam-mau-hoa-tiet-thong-tri-xu-huong-thoi-trang-thu-dong-2019-1-1568826369-65-width600height284.jpg\" /></p>\n\n<p>Ho&agrave;ng Th&ugrave;y cũng l&agrave; một fan trung th&agrave;nh của t&ocirc;ng m&agrave;u xanh thời thượng.</p>\n\n<p><strong>3. Cam nổi bật</strong></p>\n\n<p>Sẽ thật sai lầm nếu cho rằng t&ocirc;ng m&agrave;u cam nổi bật chỉ d&agrave;nh ri&ecirc;ng cho thời trang m&ugrave;a H&egrave;. Bởi tất cả c&aacute;c sắc th&aacute;i của cam, đặc biệt l&agrave; t&ocirc;ng cam trầm đ&atilde; được giới mộ điệu t&iacute;ch cực lăng x&ecirc; tr&ecirc;n khắp mặt trận thời trang Thu Đ&ocirc;ng, từ s&agrave;n diễn, street style đến c&ocirc;ng sở.&nbsp;</p>\n\n<p align=\"center\"><img alt=\"du doan nhung gam mau, hoa tiet thong tri xu huong thoi trang thu dong 2019 - 7\" data-original=\"https://cdn.eva.vn/upload/3-2019/images/2019-09-19/du-doan-nhung-gam-mau-hoa-tiet-thong-tri-xu-huong-thoi-trang-thu-dong-2019-collage-10-1568826369-493-width600height300.jpg\" data-was-processed=\"true\" onclick=\"return openNewImage(this, \'\')\" src=\"https://cdn.eva.vn/upload/3-2019/images/2019-09-19/du-doan-nhung-gam-mau-hoa-tiet-thong-tri-xu-huong-thoi-trang-thu-dong-2019-collage-10-1568826369-493-width600height300.jpg\" /></p>\n\n<p>C&aacute;c sao nữ, fashionista cũng bị t&ocirc;ng m&agrave;u rực rỡ n&agrave;y thu h&uacute;t.</p>', '0', '2020-03-06 21:16:13'),
(18, 20, '4 gợi ý bữa xế tăng sức đề kháng phòng chống Covid-19', 'Bữa xế lành mạnh là cách tốt để duy trì hoạt động ổn định của hệ tiêu hóa, đồng thời nạp thêm năng lượng cho cơ thể luôn khỏe mạnh trong mùa dịch.', 'public/images/post/delightfulplate.jpg', '<h3>Sandwich quả bơ v&agrave; trứng</h3>\n\n<p>Một l&aacute;t sandwich sẽ l&agrave; bữa xế l&yacute; tưởng gi&uacute;p bạn nạp năng lượng. Trong đ&oacute;, sandwich quả bơ v&agrave; trứng l&agrave; một gợi &yacute; đ&aacute;ng thử.</p>\n\n<p>Kh&ocirc;ng chỉ ngon, bơ c&ograve;n chứa khoảng 25 vitamin v&agrave; kho&aacute;ng chất tốt cho sức khỏe. Một khẩu phần ăn 100 g bơ cung cấp 26% vitamin K, 20% folate, 14% vitamin B5, 13% vitamin B6, 17% vitamin C, 14% kali v&agrave; 10% vitamin E m&agrave; cơ thể cần.</p>\n\n<table align=\"center\">\n	<tbody>\n		<tr>\n			<td><img alt=\"4 goi y bua xe tang suc de khang phong chong Covid-19 hinh anh 1 san.jpg\" data-bind-event=\"true\" src=\"https://znews-photo.zadn.vn/w660/Uploaded/unhuai2/2020_03_05/san.jpg\" /></td>\n		</tr>\n		<tr>\n			<td>Sandwich bơ v&agrave; trứng tăng cường sức khỏe m&ugrave;a dịch.</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>Để l&agrave;m sandwich bơ trứng, bạn cần một l&aacute;t&nbsp;<a href=\"https://news.zing.vn/tieu-diem/banh-mi.html\" title=\"Tin tức Bánh mì\" topic-id=\"5648\">b&aacute;nh m&igrave;</a>, nửa tr&aacute;i bơ dầm nhỏ hoặc th&aacute;i l&aacute;t mỏng, một quả trứng ốp la hoặc c&oacute; thể biến tấu th&agrave;nh trứng b&aacute;c. C&ocirc;ng đoạn cuối c&ugrave;ng l&agrave; phết bơ dầm l&ecirc;n mặt b&aacute;nh rồi đặt trứng l&ecirc;n, rắc ch&uacute;t hạt ti&ecirc;u l&agrave; bạn đ&atilde; c&oacute; bữa xế thơm ngon.</p>\n\n<h3>Ch&aacute;o hạnh nh&acirc;n hạt sen</h3>\n\n<p>Một gợi &yacute; bữa xế ngon miệng, bổ dưỡng kh&aacute;c với hạnh nh&acirc;n l&agrave; nấu ch&aacute;o. M&oacute;n ch&aacute;o hạnh nh&acirc;n hạt sen sẽ l&agrave; lựa chọn hợp khẩu vị cả gia đ&igrave;nh, đặc biệt ph&ugrave; hợp với người ăn chay.</p>\n\n<p>Nguy&ecirc;n liệu cho bữa xế n&agrave;y gồm: 100 gram gạo tẻ, 50 gram hạt sen tươi, 50 gram hạnh nh&acirc;n, đậu hũ v&agrave; sườn chay chi&ecirc;n v&agrave;ng, c&agrave; rốt, h&agrave;nh ng&ograve;&hellip;</p>\n\n<table align=\"center\">\n	<tbody>\n		<tr>\n			<td><img alt=\"4 goi y bua xe tang suc de khang phong chong Covid-19 hinh anh 2 5.1.jpg\" data-bind-event=\"true\" src=\"https://znews-photo.zadn.vn/w660/Uploaded/unhuai2/2020_03_05/5.1.jpg\" /></td>\n		</tr>\n		<tr>\n			<td>\n			<p>Hạnh nh&acirc;n nấu ch&aacute;o c&oacute; nhiều c&ocirc;ng dụng với sức khỏe.</p>\n			</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>Đầu ti&ecirc;n, cho gạo, hạt sen v&agrave; hạnh nh&acirc;n cạo bỏ lụa v&agrave;o nồi, đổ ngập nước v&agrave; đun s&ocirc;i, giảm lửa ninh đến khi th&agrave;nh ch&aacute;o đặc. Cho c&agrave; rốt v&agrave;o ninh mềm. Bởi đ&acirc;y l&agrave; m&oacute;n chay, n&ecirc;n chị em nội trợ lưu &yacute; d&ugrave;ng gia vị n&ecirc;m nguồn gốc thực vật như hạt n&ecirc;m Knorr nấm để m&oacute;n ăn ngọt thơm tr&ograve;n vị, th&iacute;ch hợp d&ugrave;ng trong m&oacute;n chay. Cuối c&ugrave;ng, cho h&agrave;nh boaro phi v&agrave;o đảo đều rồi tắt bếp.</p>\n\n<p>Khi ăn, m&uacute;c ch&aacute;o ra b&aacute;t, cho đậu hũ v&agrave; sườn chay chi&ecirc;n l&ecirc;n tr&ecirc;n, rắc th&ecirc;m ti&ecirc;u v&agrave; trang tr&iacute; với ng&ograve; r&iacute;.</p>\n\n<table align=\"center\">\n	<tbody>\n		<tr>\n			<td><img alt=\"4 goi y bua xe tang suc de khang phong chong Covid-19 hinh anh 3 5.5.jpg\" data-bind-event=\"true\" src=\"https://znews-photo.zadn.vn/w660/Uploaded/unhuai2/2020_03_05/5.5.jpg\" /></td>\n		</tr>\n		<tr>\n			<td>\n			<p>Ch&aacute;o hạnh nh&acirc;n hạt sen th&iacute;ch hợp bổ sung dinh dưỡng cho người ăn chay.</p>\n			</td>\n		</tr>\n	</tbody>\n</table>\n\n<h3>Sữa chua hoa quả v&agrave; hạnh nh&acirc;n</h3>\n\n<p>Sữa chua gi&agrave;u vitamin D gi&uacute;p điều h&ograve;a v&agrave; tăng cường chức năng miễn dịch. Vitamin D cũng gi&uacute;p chức năng phổi v&agrave; h&ocirc; hấp khỏe mạnh, hỗ trợ bảo vệ hệ h&ocirc; hấp trước c&aacute;c mối đe dọa b&ecirc;n ngo&agrave;i. Ngo&agrave;i ra, sữa chua chứa nhiều lợi khuẩn tốt cho ti&ecirc;u h&oacute;a - nơi nương n&aacute;u của hệ vi sinh đường ruột, với chức năng tạo t&iacute;nh ổn định v&agrave; khả năng đề kh&aacute;ng của cơ thể.</p>\n\n<p>Trong khi đ&oacute;, hoa quả v&agrave; c&aacute;c loại hạt như hạnh nh&acirc;n đ&atilde; được chứng minh gi&agrave;u vitamin, chất xơ v&agrave; chất chống oxy h&oacute;a. Chất tự nhi&ecirc;n trong lớp m&agrave;ng của hạt hạnh nh&acirc;n gi&uacute;p tăng cường hệ miễn dịch.</p>\n\n<table align=\"center\">\n	<tbody>\n		<tr>\n			<td><img alt=\"4 goi y bua xe tang suc de khang phong chong Covid-19 hinh anh 4 yogurt_with_fresh_fruits_raspberries_granola_and_almonds_on_serving_GF0E6G.jpg\" data-bind-event=\"true\" src=\"https://znews-photo.zadn.vn/w660/Uploaded/unhuai2/2020_03_05/yogurt_with_fresh_fruits_raspberries_granola_and_almonds_on_serving_GF0E6G.jpg\" /></td>\n		</tr>\n		<tr>\n			<td>\n			<p>Sữa chua hoa quả v&agrave; hạnh nh&acirc;n ph&ugrave; hợp l&agrave;m bữa s&aacute;ng hoặc bữa xế.</p>\n			</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>Nhanh - gọn - lẹ nhưng gi&agrave;u dưỡng chất l&agrave; những g&igrave; bạn c&oacute; thể t&igrave;m thấy ở sữa chua hoa v&agrave; hạnh nh&acirc;n. Chỉ cần một hộp sữa chua, 1-2 loại quả th&aacute;i hạt lựu (chuối, t&aacute;o, kiwi&hellip;), hạnh nh&acirc;n nguy&ecirc;n hạt hoặc cắt l&aacute;t, bữa xế vừa ngon miệng lại bổ dưỡng đ&atilde; sẵn s&agrave;ng. Bạn n&ecirc;n lưu &yacute; mua hoa quả được trồng theo chuẩn VietGAP để đảm bảo an to&agrave;n vệ sinh thực phẩm.</p>\n\n<h3>S&uacute;p g&agrave; ng&ocirc; nấm</h3>\n\n<p>S&uacute;p g&agrave; ng&ocirc; nấm l&agrave; m&oacute;n xế vừa ấm bụng, vừa bổ dưỡng. C&aacute;c axit amin cysteine sản sinh từ thịt g&agrave; trong qu&aacute; tr&igrave;nh nấu s&uacute;p c&oacute; t&aacute;c dụng tương tự thuốc vi&ecirc;m phế quản acetylcystein, ngăn chặn sự l&acirc;y lan của t&igrave;nh trạng vi&ecirc;m v&agrave; giảm triệu chứng cảm lạnh.</p>\n\n<p>Trong khi đ&oacute;, nấm c&oacute; khả năng chống lại c&aacute;c bệnh li&ecirc;n quan đến cảm c&uacute;m, đồng thời chứa axit b&eacute;o kh&ocirc;ng b&atilde;o h&ograve;a v&agrave; một lượng lớn chất c&oacute; thể chuyển h&oacute;a th&agrave;nh vitamin D, gi&uacute;p tăng đề kh&aacute;ng.</p>\n\n<table align=\"center\">\n	<tbody>\n		<tr>\n			<td><img alt=\"4 goi y bua xe tang suc de khang phong chong Covid-19 hinh anh 5 delightfulplate.jpg\" data-bind-event=\"true\" src=\"https://znews-photo.zadn.vn/w660/Uploaded/unhuai2/2020_03_05/delightfulplate.jpg\" /></td>\n		</tr>\n		<tr>\n			<td>\n			<p>Ăn nấm thường xuy&ecirc;n gi&uacute;p kh&aacute;ng virus tự nhi&ecirc;n.</p>\n			</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>Ngo&agrave;i s&uacute;p g&agrave; nấm, bạn c&oacute; thể tham khảo m&oacute;n đậu hũ non sốt nấm đ&ocirc;ng c&ocirc;, trứng hấp nấm, nấm x&agrave;o hoặc nấu canh... để tăng sức đề kh&aacute;ng l&uacute;c giao m&ugrave;a, dịch bệnh như hiện nay.</p>', '0', '2020-03-06 21:17:10'),
(19, 20, 'Bánh ướt heo quay và 3 món ngon nức tiếng miền Trung', 'Miền Trung luôn thu hút du khách với loạt cảnh đẹp và những món ăn ngon. Bánh ướt heo quay, bún mắm mêm... là các hương vị bạn nhất định phải thử khi đến nơi này.', 'public/images/post/6.jpg', '<p>Miền Trung lu&ocirc;n thu h&uacute;t du kh&aacute;ch với loạt cảnh đẹp v&agrave; những m&oacute;n ăn ngon. B&aacute;nh ướt heo quay, b&uacute;n mắm m&ecirc;m... l&agrave; c&aacute;c hương vị bạn nhất định phải thử khi đến nơi n&agrave;y.</p>\n\n<table align=\"center\">\n	<tbody>\n		<tr>\n			<td>\n			<p><img alt=\"Banh uot heo quay va 3 mon ngon nuc tieng mien Trung hinh anh 1 IMG_3551.JPG\" data-bind-event=\"true\" height=\"1272\" src=\"https://znews-photo.zadn.vn/w1024/Uploaded/spivpdiv/2020_03_02/IMG_3551.JPG\" width=\"1080\" /></p>\n\n			<p><img alt=\"Banh uot heo quay va 3 mon ngon nuc tieng mien Trung hinh anh 2 IMG_3550.jpg\" data-bind-event=\"true\" height=\"1224\" original-width=\"408\" src=\"https://znews-photo.zadn.vn/w1024/Uploaded/spivpdiv/2020_03_02/IMG_3550.jpg\" width=\"1242\" /></p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p><strong>B&aacute;nh</strong>&nbsp;<strong>b&egrave;o:</strong>&nbsp;B&aacute;nh b&egrave;o l&agrave; m&oacute;n ăn thơm ngon, bổ dưỡng v&agrave; thịnh h&agrave;nh ở miền Trung. Nguy&ecirc;n liệu l&agrave;m b&aacute;nh l&agrave; bột gạo, phần nh&acirc;n l&agrave;m bằng t&ocirc;m xay nhuyễn. Ngo&agrave;i ra, bề mặt b&aacute;nh c&ograve;n được phủ th&ecirc;m h&agrave;nh phi v&agrave; t&oacute;p mỡ rang. Ảnh:&nbsp;<em>Hana.foodie, Ryanfoodaholic.</em></p>\n			</td>\n		</tr>\n	</tbody>\n</table>\n\n<table align=\"center\">\n	<tbody>\n		<tr>\n			<td>\n			<p><img alt=\"Banh uot heo quay va 3 mon ngon nuc tieng mien Trung hinh anh 3 IMG_3553.JPG\" data-bind-event=\"true\" height=\"1215\" src=\"https://znews-photo.zadn.vn/w1024/Uploaded/spivpdiv/2020_03_02/IMG_3553.JPG\" width=\"1080\" /></p>\n\n			<p><img alt=\"Banh uot heo quay va 3 mon ngon nuc tieng mien Trung hinh anh 4 IMG_3552.JPG\" data-bind-event=\"true\" height=\"1350\" original-width=\"355\" src=\"https://znews-photo.zadn.vn/w1024/Uploaded/spivpdiv/2020_03_02/IMG_3552.JPG\" width=\"1080\" /></p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>Thực kh&aacute;ch thưởng thức b&aacute;nh c&ugrave;ng loại nước chấm đặc biệt. Loại nước chấm n&agrave;y kh&ocirc;ng c&oacute; tỏi v&agrave; kh&ocirc;ng vắt chanh hay dấm, chỉ c&oacute; ớt xanh xắt l&aacute;t cho v&agrave;o t&ugrave;y độ ăn cay của bạn. B&ecirc;n cạnh b&aacute;nh b&egrave;o được phục vụ theo dĩa, b&aacute;nh b&egrave;o ch&eacute;n cũng được thực kh&aacute;ch s&agrave;nh ăn ưa chuộng. Ảnh:&nbsp;<em>Ryanfoodaholic</em>.</p>\n			</td>\n		</tr>\n	</tbody>\n</table>\n\n<table align=\"center\">\n	<tbody>\n		<tr>\n			<td>\n			<p><img alt=\"Banh uot heo quay va 3 mon ngon nuc tieng mien Trung hinh anh 5 IMG_3559.JPG\" data-bind-event=\"true\" height=\"1350\" src=\"https://znews-photo.zadn.vn/w1024/Uploaded/spivpdiv/2020_03_02/IMG_3559.JPG\" width=\"1080\" /></p>\n\n			<p><img alt=\"Banh uot heo quay va 3 mon ngon nuc tieng mien Trung hinh anh 6 IMG_3557.jpg\" data-bind-event=\"true\" height=\"1225\" original-width=\"419\" src=\"https://znews-photo.zadn.vn/w1024/Uploaded/spivpdiv/2020_03_02/IMG_3557.jpg\" width=\"1242\" /></p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p><strong>B&uacute;n</strong>&nbsp;<strong>mắm</strong>&nbsp;<strong>n&ecirc;m:</strong>&nbsp;Nếu y&ecirc;u th&iacute;ch ẩm thực miền Trung, du kh&aacute;ch kh&ocirc;ng thể bỏ qua cơ hội thưởng thức m&oacute;n b&uacute;n mắm n&ecirc;m hấp dẫn. Bạn c&oacute; thể kết hợp một số hoặc tất cả c&aacute;c nguy&ecirc;n liệu gồm b&uacute;n, thịt heo quay, thịt heo luộc, chả, nem chua, tai heo, đậu phộng rang, dưa leo, đu đủ b&agrave;o... Ảnh:&nbsp;<em>Ryanfoodaholic, Mitsfoody.</em></p>\n			</td>\n		</tr>\n	</tbody>\n</table>\n\n<table align=\"center\">\n	<tbody>\n		<tr>\n			<td>\n			<p><img alt=\"Banh uot heo quay va 3 mon ngon nuc tieng mien Trung hinh anh 7 IMG_3558.JPG\" data-bind-event=\"true\" height=\"1080\" src=\"https://znews-photo.zadn.vn/w1024/Uploaded/spivpdiv/2020_03_02/IMG_3558.JPG\" width=\"1080\" /></p>\n\n			<p><img alt=\"Banh uot heo quay va 3 mon ngon nuc tieng mien Trung hinh anh 8 IMG_3556.jpg\" data-bind-event=\"true\" height=\"1551\" original-width=\"333\" src=\"https://znews-photo.zadn.vn/w1024/Uploaded/spivpdiv/2020_03_02/IMG_3556.jpg\" width=\"1242\" /></p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>Mắm chan đặc trưng của m&oacute;n b&uacute;n được l&agrave;m từ c&aacute;c loại c&aacute; tươi như c&aacute; cơm, c&aacute; nục... c&oacute; m&agrave;u n&acirc;u dạng sệt, đậm vị. Ngo&agrave;i ra, bạn c&oacute; thể ăn k&egrave;m với c&aacute;c gia vị n&ecirc;m th&ecirc;m như ớt chưng, rau sống. Trước khi thưởng thức, bạn cần trộn đều t&ocirc; b&uacute;n để c&aacute;c hương vị h&ograve;a quyện v&agrave;o nhau. Ảnh:&nbsp;<em>Ryanfoodaholic, Foodcollectionsmy.</em></p>\n			</td>\n		</tr>\n	</tbody>\n</table>\n\n<table align=\"center\">\n	<tbody>\n		<tr>\n			<td>\n			<p><img alt=\"Banh uot heo quay va 3 mon ngon nuc tieng mien Trung hinh anh 9 IMG_3561.JPG\" data-bind-event=\"true\" height=\"1080\" src=\"https://znews-photo.zadn.vn/w1024/Uploaded/spivpdiv/2020_03_02/IMG_3561.JPG\" width=\"1080\" /></p>\n\n			<p><img alt=\"Banh uot heo quay va 3 mon ngon nuc tieng mien Trung hinh anh 10 IMG_3560.JPG\" data-bind-event=\"true\" height=\"1080\" original-width=\"375\" src=\"https://znews-photo.zadn.vn/w1024/Uploaded/spivpdiv/2020_03_02/IMG_3560.JPG\" width=\"1080\" /></p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p><strong>Ốc</strong>&nbsp;<strong>bươu</strong>&nbsp;<strong>x&agrave;o</strong>&nbsp;<strong>sả</strong>&nbsp;<strong>ớt</strong><strong>:</strong>&nbsp;M&oacute;n ăn n&agrave;y hội đủ vị mặn, ngọt, chua, cay khiến nhiều t&iacute;n đồ ẩm thực đường phố say m&ecirc; thưởng thức. Ốc được sơ chế kỹ lưỡng v&agrave; n&ecirc;m nếm cầu kỳ. Nồi ốc n&oacute;ng hổi thu h&uacute;t thực kh&aacute;ch với m&agrave;u sắc bắt mắt. Ảnh:&nbsp;<em>Ryanfoodaholic</em>.</p>\n			</td>\n		</tr>\n	</tbody>\n</table>\n\n<table align=\"center\">\n	<tbody>\n		<tr>\n			<td>\n			<p><img alt=\"Banh uot heo quay va 3 mon ngon nuc tieng mien Trung hinh anh 11 IMG_3562.JPG\" data-bind-event=\"true\" height=\"1349\" src=\"https://znews-photo.zadn.vn/w1024/Uploaded/spivpdiv/2020_03_02/IMG_3562.JPG\" width=\"1080\" /></p>\n\n			<p><img alt=\"Banh uot heo quay va 3 mon ngon nuc tieng mien Trung hinh anh 12 IMG_3563.JPG\" data-bind-event=\"true\" height=\"1349\" original-width=\"375\" src=\"https://znews-photo.zadn.vn/w1024/Uploaded/spivpdiv/2020_03_02/IMG_3563.JPG\" width=\"1080\" /></p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p>Bạn sẽ thoả m&atilde;n vị gi&aacute;c nhờ vị đậm đ&agrave; của ốc, hương thơm đặc trưng của sả v&agrave; vị ớt cay nồng. Ngo&agrave;i ra, đĩa ốc c&ograve;n được phủ topping xo&agrave;i b&agrave;o, đu đủ với h&agrave;nh phi kh&ocirc;. Khi ăn, thực kh&aacute;ch thưởng thức k&egrave;m b&aacute;t nước mắm ớt hấp dẫn. Ảnh:&nbsp;<em>Ryanfoodaholic.</em></p>\n			</td>\n		</tr>\n	</tbody>\n</table>\n\n<table align=\"center\">\n	<tbody>\n		<tr>\n			<td>\n			<p><img data-bind-event=\"true\" src=\"https://znews-photo.zadn.vn/w1024/Uploaded/spivpdiv/2020_03_02/foody_checkin_ba_suu_banh_uot_heo_quay_829_636998274556432052_1.jpg\" /></p>\n\n			<p><img alt=\"Banh uot heo quay va 3 mon ngon nuc tieng mien Trung hinh anh 13 IMG_3565.JPG\" data-bind-event=\"true\" height=\"1080\" original-width=\"363\" src=\"https://znews-photo.zadn.vn/w1024/Uploaded/spivpdiv/2020_03_02/IMG_3565.JPG\" width=\"1080\" /></p>\n			</td>\n		</tr>\n		<tr>\n			<td>\n			<p><strong>B&aacute;nh</strong>&nbsp;<strong>ướt</strong>&nbsp;<strong>heo</strong>&nbsp;<strong>quay:</strong>&nbsp;M&oacute;n ăn n&agrave;y l&agrave; đặc sản nức tiếng ở miền Trung. Một phần ăn gồm c&oacute; heo quay, b&aacute;nh ướt, dưa muối chua c&ugrave;ng gi&aacute;, hẹ, c&agrave; rốt v&agrave; 2 b&aacute;t nước mắm ớt ngọt, mặn t&ugrave;y theo khẩu vị thực kh&aacute;ch. Ngo&agrave;i ra, b&aacute;nh ướt thịt heo quay c&ograve;n c&oacute; rau sống ăn k&egrave;m gi&uacute;p chống ngấy. Sự ho&agrave; quyện của c&aacute;c nguy&ecirc;n liệu l&agrave;m bất kỳ vị kh&aacute;ch n&agrave;o cũng bị chinh phục bởi hương vị thơm ngon n&agrave;y. Ảnh:&nbsp;<em>Foody, Ryanfoodaholic</em>.</p>\n			</td>\n		</tr>\n	</tbody>\n</table>', '0', '2020-03-06 21:18:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_category`
--

CREATE TABLE `post_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `post_category`
--

INSERT INTO `post_category` (`category_id`, `category_name`, `parent_id`, `created_time`, `status`) VALUES
(16, 'Thời trang', 0, '2020-03-06 21:10:05', '0'),
(17, 'Xu hướng', 16, '2020-03-06 21:10:16', '0'),
(18, 'Thịnh hành', 16, '2020-03-06 21:10:24', '0'),
(19, 'Ẩm thực', 0, '2020-03-06 21:10:52', '0'),
(20, 'Món ngon', 19, '2020-03-06 21:11:03', '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `product_id` int(10) NOT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Price` int(20) NOT NULL,
  `Description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `Color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Image` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `Name`, `Price`, `Description`, `Detail`, `created_time`, `product_status`, `Color`, `Size`, `Image`) VALUES
(113, 'ÁO THUN NAM CHỮ V THANH LỊCH', 150000, 'ÁO THUN NAM CHỮ V THANH LỊCH: Chất vải mịn lạnh, thấm hút mồ hôi nhanh giúp các chàng luôn thoải mái khi vận động, chơi các trò chơi thể thao, thể chất. Bên cạnh đó là thiết kế năng động, trẻ trung và mạnh mẽ để các chàng luôn sẵn sàng xuất hiện trước các nàng mà không lo thiếu sự thu hút.', '<figure><img alt=\"ÁO THUN NAM CHỮ V THANH LỊCH\" height=\"800\" src=\"https://thoitrangngaynay.com/upload/images/14\'(2).jpg\" width=\"800\" />\n<figcaption>&Aacute;O THUN NAM CHỮ V THANH LỊCH M&Agrave;U ĐEN</figcaption>\n</figure>\n\n<figure><img alt=\"ÁO THUN NAM CHỮ V THANH LỊCH\" height=\"800\" src=\"https://thoitrangngaynay.com/upload/images/15\'(1).jpg\" width=\"800\" />\n<figcaption>&Aacute;O THUN NAM CHỮ V THANH LỊCH M&Agrave;U XANH</figcaption>\n</figure>\n', '2020-03-06 20:27:17', '0', 'Blue,Gray', 'M,L,XL', 'public/media/ao-thun-nam-chu-v-thanh-lich-721-2.jpg,public/media/ao-thun-nam-chu-v-thanh-lich-721-1.jpg'),
(114, 'ÁO THUN NAM CAO CẤP F&S', 180000, 'ÁO THUN NAM CAO CẤP F&S: Chất vải mịn lạnh, thấm hút mồ hôi nhanh giúp các chàng luôn thoải mái khi vận động, chơi các trò chơi thể thao, thể chất. Bên cạnh đó là thiết kế năng động, trẻ trung và mạnh mẽ với dòng chữ Fashion and Sport mang tên thương hiệu nổi tiếng để các chàng luôn sẵn sàng xuất hiện trước các nàng mà không lo thiếu sự thu hút.', '<figure><img alt=\"ÁO THUN NAM CAO CẤP F&amp;S\" height=\"618\" src=\"https://thoitrangngaynay.com/upload/images/18\'(3).jpg\" width=\"621\" />\n<figcaption>&Aacute;O THUN NAM CAO CẤP F&amp;S M&Agrave;U ĐEN</figcaption>\n</figure>\n\n<figure><img alt=\"ÁO THUN NAM CAO CẤP F&amp;S\" height=\"620\" src=\"https://thoitrangngaynay.com/upload/images/18\'\'(3).jpg\" width=\"621\" />\n<figcaption>&Aacute;O THUN NAM CAO CẤP F&amp;S M&Agrave;U TRẮNG</figcaption>\n</figure>\n', '2020-03-06 20:28:40', '0', 'White,Gray', 'M,L', 'public/media/ao-thun-nam-cao-cap-f-s-720-2.jpg,public/media/ao-thun-nam-cao-cap-f-s-720-1.jpg'),
(115, 'QUẦN JEANS NAM PHONG CÁCH', 270000, 'QUẦN JEANS NAM PHONG CÁCH: Thiết kế phá cách, theo xu hướng đường phố kèm theo đó là phụ kiện dây treo lạ mắt, sáng tạo đem đến cho các chàng trai sự năng động, pha chút nổi loạn làm các chàng trai trông thật sự nổi bật cũng như tự tin thể hiện phong cách của bản thân trong mọi cuộc vui. ', '<figure><img alt=\"QUẦN JEANS NAM PHONG CÁCH\" height=\"800\" src=\"https://thoitrangngaynay.com/upload/images/17\'(1).jpg\" width=\"800\" />\n<figcaption>QUẦN JEANS NAM PHONG C&Aacute;CH</figcaption>\n</figure>\n\n<figure><img alt=\"QUẦN JEANS NAM PHONG CÁCH\" height=\"800\" src=\"https://thoitrangngaynay.com/upload/images/17(3).jpg\" width=\"800\" />\n<figcaption>QUẦN JEANS NAM PHONG C&Aacute;CH</figcaption>\n</figure>\n', '2020-03-06 20:31:12', '0', 'White', 'M,L,XL,XXL', 'public/media/quan-jeans-nam-phong-cach-719-1.jpg,public/media/quan-jeans-nam-phong-cach-719-2.jpg'),
(116, 'ÁO THUN NAM HỌA TIẾT NHẤN SỌC', 160000, ' CHẤT VẢI THUN CAO CẤP', '<p>&nbsp;</p>\n\n<figure><img alt=\"ÁO THUN NAM HỌA TIẾT NHẤN SỌC \" height=\"800\" src=\"https://thoitrangngaynay.com/upload/images/2(12).jpg\" width=\"800\" />\n<figcaption>&Aacute;O THUN NAM HỌA TIẾT NHẤN SỌC&nbsp;</figcaption>\n</figure>\n\n<figure><img alt=\"ÁO THUN NAM HỌA TIẾT NHẤN SỌC \" height=\"800\" src=\"https://thoitrangngaynay.com/upload/images/6(7).jpg\" width=\"800\" />\n<figcaption>&Aacute;O THUN NAM HỌA TIẾT NHẤN SỌC&nbsp; M&Agrave;U XNAH DƯƠNG</figcaption>\n</figure>\n\n<figure><img alt=\"ÁO THUN NAM HỌA TIẾT NHẤN SỌC \" height=\"800\" src=\"https://thoitrangngaynay.com/upload/images/7\'(3).jpg\" width=\"800\" />\n<figcaption>&Aacute;O THUN NAM HỌA TIẾT NHẤN SỌC M&Agrave;U TRẮNG</figcaption>\n</figure>\n\n<figure><img alt=\"ÁO THUN NAM HỌA TIẾT NHẤN SỌC \" height=\"800\" src=\"https://thoitrangngaynay.com/upload/images/6\'\'\'(1).jpg\" width=\"800\" />\n<figcaption>&Aacute;O THUN NAM HỌA TIẾT NHẤN SỌC M&Agrave;U ĐEN</figcaption>\n</figure>\n', '2020-03-06 20:32:50', '0', 'Blue,White,Gray', 'S,M,L', 'public/media/ao-thun-nam-hoa-tiet-nhan-soc-711-3.jpg,public/media/ao-thun-nam-hoa-tiet-nhan-soc-711-1.jpg'),
(117, 'QUẦN JEANS NAM SƠN MÀU NHẤN GỐI', 260000, 'QUẦN JEANS NAM SƠN MÀU NHẤN GỐI: Thiết kế snasg tạo nhấn màu gối bên cạnh nét xước tinh tế thời trang đảm bảo các chàng trai luôn trông thật nổi bật. Bên cạnh đó là chất vải mịn, mềm và không xù để các chàng yên tâm khi hoạt động.', '<p><img alt=\"QUẦN JEANS NAM SƠN MÀU NHẤN GỐI\" height=\"800\" src=\"https://thoitrangngaynay.com/upload/images/16(4).jpg\" width=\"600\" /> QUẦN JEANS NAM SƠN M&Agrave;U NHẤN GỐI</p>\n', '2020-03-06 20:33:46', '0', 'Blue', 'S,M,L,XL', 'public/media/quan-jeans-nam-son-mau-nhan-goi-710-1.jpg'),
(118, 'QUẦN JEANS NAM SUP MẠNH MẼ PHONG CÁCH', 257000, 'QUẦN JEANS NAM SUP MẠNH MẼ PHONG CÁCH: Với chất vải jeasn dày dặn nhập khẩu không chỉ dày dặn mà còn mịn nhẹ không cảm thấy thô ráp khi mặc. Bên cạnh đó là thiết kế phong cách với các chữ in và họa tiết độc đáo mang nét đặc trung của phong cách đường phố.', '<p style=\"text-align: center;\"><img alt=\"QUẦN JEANS NAM SUP MẠNH MẼ PHONG CÁCH\" height=\"800\" src=\"https://thoitrangngaynay.com/upload/images/15\'.jpg\" width=\"800\" /> QUẦN JEANS NAM SUP MẠNH MẼ PHONG C&Aacute;CH</p>\n', '2020-03-06 20:39:28', '0', 'Black', 'S,M,L,XL', 'public/media/quan-jeans-nam-sup-manh-me-phong-cach-653-1.jpg'),
(119, 'QUẦN JEANS NAM ẤN ĐÙI ĐỘC LẠ', 265000, 'QUẦN JEANS NAM ẤN ĐÙI ĐỘC LẠ: Thiết kế độc đáo cùng chất vải dày dặn cao cấp giúp người mang không chỉ dễ chịu, thoải mái khi hoạt động trong ngày hè nắng nóng. Bên cạnh đó thiết kế mới mẻ giúp người mang luôn nổi bật.', '<p><img alt=\"QUẦN JEANS NAM ẤN ĐÙI ĐỘC LẠ\" height=\"800\" src=\"https://thoitrangngaynay.com/upload/images/2\'\'(5).jpg\" width=\"800\" /> QUẦN JEANS NAM ẤN Đ&Ugrave;I ĐỘC LẠ</p>\n', '2020-03-06 20:40:12', '0', 'Gray,Green,Black', 'M,L,XL,XXL', 'public/media/quan-jeans-nam-an-dui-doc-la-638-1.jpg'),
(120, 'QUẦN JEANS NAM IN CHỮ DỌC PHONG CÁCH', 320000, 'QUẦN JEANS NAM IN CHỮ DỌC PHONG CÁCH: Với chất vải jeans cao cấp dày dặn và có độ co giãn vừa phải giúp người mặc cảm thấy thoải mái khi hoạt động dù trong ngày hè nắng nóng. Bên cạnh đó là thiết kế mới mẻ với dòng chữ in lớn dọc theo đùi giúp sản phẩm trông bắt mắt hơn.', '<p style=\"text-align: center;\">&nbsp;</p>\n\n<p style=\"text-align: center;\"><img alt=\"QUẦN JEANS NAM IN CHỮ DỌC PHONG CÁCH\" height=\"960\" src=\"https://thoitrangngaynay.com/upload/images/1\'(5).jpg\" width=\"638\" /> QUẦN JEANS NAM IN CHỮ DỌC PHONG C&Aacute;CH</p>\n', '2020-03-06 20:41:30', '0', 'Gray,Green', 'M,L,XL', 'public/media/quan-jeans-nam-in-chu-doc-phong-cach-605-1.jpg'),
(121, 'ĐẦM NỮ CỔ CHỮ U XẺ TÀ SÀNH ĐIỆU', 247000, 'ĐẦM NỮ CỔ CHỮ U XẺ TÀ SÀNH ĐIỆU: Với chất vải cao cấp nhập khẩu từ Thái Lan, vải dày dặn, thấm hút mồ hôi tốt. Bên cạnh đó thiết kế sang trọng với cổ chữ U và xẻ tà quyến rũ giúp người mặc trông thật trẻ trung năng động và đầy tự tin. ', '<p><img alt=\"ĐẦM NỮ CỔ CHỮ U XẺ TÀ SÀNH ĐIỆU\" height=\"960\" src=\"https://thoitrangngaynay.com/upload/images/3(3).jpg\" width=\"768\" /> ĐẦM NỮ CỔ CHỮ U XẺ T&Agrave; S&Agrave;NH ĐIỆU</p>\n', '2020-03-06 20:42:57', '0', 'Red', 'S,M,L', 'public/media/dam-nu-co-chu-u-xe-ta-sanh-dieu-519-1.jpg'),
(122, 'ÁO KHOÁC NỮ KAKI NỮ THỜI TRANG CAO CẤP TRẺ', 185000, 'ÁO KHOÁC NỮ KAKI NỮ THỜI TRANG CAO CẤP TRẺ: Chất kaki dày dặn, mịn mềm đảm bảo cho các cô gái luôn thoải mái hoạt động mà không cảm thấy bí bách hay khó chịu. Đặc biệt là thiết kế đơn giản nhưng mang đến sự thanh lịch, trang nhã và với những điểm nhấn tinh tế đã tạo thêm cho sản phẩm sự trẻ trung hiện đại giúp các bạn gái luôn tự tin diện mọi nơi.', '<figure><img alt=\"ÁO KHOÁC NỮ KAKI NỮ THỜI TRANG CAO CẤP TRẺ\" height=\"800\" src=\"https://thoitrangngaynay.com/upload/images/17\'(2).jpg\" width=\"800\" />\n<figcaption>&Aacute;O KHO&Aacute;C NỮ KAKI NỮ THỜI TRANG CAO CẤP TRẺ M&Agrave;U ĐEN</figcaption>\n</figure>\n\n<figure><img alt=\"ÁO KHOÁC NỮ KAKI NỮ THỜI TRANG CAO CẤP TRẺ\" height=\"800\" src=\"https://thoitrangngaynay.com/upload/images/17\'\'\'.jpg\" width=\"800\" />\n<figcaption>&Aacute;O KHO&Aacute;C NỮ KAKI NỮ THỜI TRANG CAO CẤP TRẺ M&Agrave;U TRẺ</figcaption>\n</figure>\n', '2020-03-06 20:44:07', '0', 'White,Black', 'M,L,XL', 'public/media/ao-khoac-nu-kaki-nu-thoi-trang-cao-cap-tre-753-1.jpg,public/media/ao-khoac-nu-kaki-nu-thoi-trang-cao-cap-tre-753-2.jpg'),
(123, 'ÁO KHOÁC KAKI NỮ MŨ LIỀN NĂNG ĐỘNG', 436000, 'ÁO KHOÁC KAKI NỮ MŨ LIỀN NĂNG ĐỘNG: Chất kaki dày dặn, mịn mềm đảm bảo cho các cô gái luôn thoải mái hoạt động mà không cảm thấy bí bách hay khó chịu. Đặc biệt là thiết kế đơn giản nhưng mang đến sự thanh lịch, trang nhã và với những điểm nhấn tinh tế đã tạo thêm cho sản phẩm sự trẻ trung hiện đại giúp các bạn gái luôn tự tin diện mọi nơi.', '<figure><img alt=\"ÁO KHOÁC KAKI NỮ MŨ LIỀN NĂNG ĐỘNG\" height=\"800\" src=\"https://thoitrangngaynay.com/upload/images/10(6).jpg\" width=\"800\" />\n<figcaption>&Aacute;O KHO&Aacute;C KAKI NỮ MŨ LIỀN NĂNG ĐỘNG</figcaption>\n</figure>\n\n<figure><img alt=\"ÁO KHOÁC KAKI NỮ MŨ LIỀN NĂNG ĐỘNG\" height=\"800\" src=\"https://thoitrangngaynay.com/upload/images/11\'(1).jpg\" width=\"800\" />\n<figcaption>&Aacute;O KHO&Aacute;C KAKI NỮ MŨ LIỀN NĂNG ĐỘNG</figcaption>\n</figure>\n', '2020-03-06 20:45:31', '0', 'Gray', 'M,L', 'public/media/ao-khoac-kaki-nu-mu-lien-nang-dong-743-1.jpg,public/media/ao-khoac-kaki-nu-mu-lien-nang-dong-743-2.jpg'),
(124, 'ÁO KHOÁC NỮ KAKI VIỀN MÀU DỄ THƯƠNG', 185000, 'ÁO KHOÁC NỮ KAKI VIỀN MÀU DỄ THƯƠNG: Với chất vải kaki dày dặn xuất khẩu đảm bảo chất lượng bền đẹp giúp người mặc không lo lắng đến các trường hợp khó xử. Bên cạnh đó là thiết kế và màu sắc trẻ trung theo phong cách của xứ sở kim cho các bạn luôn nổi bật.', '<figure><img alt=\"ÁO KHOÁC NỮ KAKI VIỀN MÀU DỄ THƯƠNG\" height=\"800\" src=\"https://thoitrangngaynay.com/upload/images/25\'\'\'\'.jpg\" width=\"600\" />\n<figcaption>&Aacute;O KHO&Aacute;C NỮ KAKI VIỀN M&Agrave;U DỄ THƯƠNG M&Agrave;U HỒNG</figcaption>\n</figure>\n\n<figure><img alt=\"ÁO KHOÁC NỮ KAKI VIỀN MÀU DỄ THƯƠNG\" height=\"800\" src=\"https://thoitrangngaynay.com/upload/images/26\'\'(3).jpg\" width=\"600\" />\n<figcaption>&Aacute;O KHO&Aacute;C NỮ KAKI VIỀN M&Agrave;U DỄ THƯƠNG M&Agrave;U V&Agrave;NG</figcaption>\n</figure>\n\n<figure><img alt=\"ÁO KHOÁC NỮ KAKI VIỀN MÀU DỄ THƯƠNG\" height=\"640\" src=\"https://thoitrangngaynay.com/upload/images/25(3).jpg\" width=\"480\" />\n<figcaption>&Aacute;O KHO&Aacute;C NỮ KAKI VIỀN M&Agrave;U DỄ THƯƠNG M&Agrave;U HỒNG</figcaption>\n</figure>\n', '2020-03-06 20:47:38', '0', 'Gray', 'L,XL', 'public/media/ao-khoac-nu-kaki-vien-mau-de-thuong-682-3.jpg,public/media/ao-khoac-nu-kaki-vien-mau-de-thuong-682-1.jpg,public/media/ao-khoac-nu-kaki-vien-mau-de-thuong-682-2.jpg'),
(125, 'QUẦN PHỤ KIỆN CHỮ D', 200000, 'Quần phụ kiện chữ D\n\nMã Sản Phẩm: QA349\n- Giá Bán: 330.000đ\n- Số Đo Vòng Eo: 64Cm\n- Số Đo Dài Quần: 87Cm\n- Số Đo Vòng Mông: 86Cm\n- Số Đo Rộng Đùi: 54Cm\n- Số Đo Cửa Ống: 28Cm\n- Màu sắc sản phẩm: XANH, ĐEN, ĐỎ\n- Chất Liệu Vải: COTTON MISA\n* CÓ 1 LỚP\n* CÓ TÚI\n- Số Size: XS - S - M - L - XL\n*Số Đo Sản Phẩm Size XS*\n', '<p><img alt=\"Quần phụ kiện chữ D\" src=\"https://gumac.vn/image/thang320/aa304060320201119142201.jpg?width=750\" title=\"Quần phụ kiện chữ D\" width=\"100%\" /></p>\n\n<p><img alt=\"Quần phụ kiện chữ D\" src=\"https://gumac.vn/image/thang320/aa315-qa349060320201119142357.jpg?width=750\" title=\"Quần phụ kiện chữ D\" width=\"100%\" /></p>\n\n<p><img alt=\"Quần phụ kiện chữ D\" src=\"https://gumac.vn/image/thang320/aa304den060320201119142201.jpg?width=750\" title=\"Quần phụ kiện chữ D\" width=\"100%\" /></p>\n\n<p><img alt=\"Quần phụ kiện chữ D\" src=\"https://gumac.vn/image/thang320/aa304sau060320201119142201.jpg?width=750\" title=\"Quần phụ kiện chữ D\" width=\"100%\" /></p>\n', '2020-03-06 20:50:17', '0', 'Red,Blue,Black', 'M,L,XL', 'public/media/aa304060320201119142201.jpg,public/media/aa304den060320201119142201.jpg,public/media/aa315-qa349060320201119142357.jpg'),
(126, 'ÁO IN LOVE', 100000, 'Áo in Love\n\nMã Sản Phẩm: ATA330\n- Màu Sắc Sản Phẩm: ĐEN\n- Giá Bán: 160.000đ\n- Số Đo Vòng Ngực Áo: 92CM\n- Số Đo Vòng Hông Áo: 96CM\n- Số Đo Vai Áo: 37CM\n- Số Đo Cửa Tay: 32CM\n- Số Đo Dài Tay Áo: 18CM\n- Số Đo Dài Áo: 58CM\n- Số Size Sản Phẩm: S - M - L\n- Chất Liệu Vải: Thun TC\n* Thông Số Sản Phẩm Size S *', '<p><img alt=\"Áo in Love\" src=\"https://gumac.vn/image/thang320/ata330-va323mot060320201119299545.jpg?width=750\" title=\"Áo in Love\" width=\"100%\" /></p>\n\n<p><img alt=\"Áo in Love\" src=\"https://gumac.vn/image/thang320/ata330-va323060320201119299545.jpg?width=750\" title=\"Áo in Love\" width=\"100%\" /></p>\n\n<p><img alt=\"Áo in Love\" src=\"https://gumac.vn/image/thang320/ata330-va323sau060320201119299545.jpg?width=750\" title=\"Áo in Love\" width=\"100%\" /></p>\n', '2020-03-06 20:51:14', '0', 'Black', 'S,M,L,XL,XXL', 'public/media/ata330-va323060320201119299545.jpg,public/media/ata330-va323mot060320201119299545.jpg'),
(127, 'ĐẦM TAY LIỀN NHÚN NGỰC', 340000, 'Đầm tay liền nhún ngực\n\nMã Sản Phẩm: MS22039\n- Giá Bán Sản Phẩm: 495.000đ\n- Màu Sắc Sản Phẩm: Đỏ\n- Số Đo Vòng Ngực Đầm: 88CM\n- Số Đo Vòng Eo: 68CM\n- Số Đo Dài Tay: 21CM\n- Số Đo Cửa Tay: 34CM\n- Số Đo Chiều Dài Đầm: 96CM\n- Chất Liệu Sản Phẩm: Cotton Thái\n*** Chi Tiết Sản Phẩm:\n* Trên Đầm 1 Lớp\n* Dưới Đầm 2 Lớp\n* Không Có Túi\n* Co Giãn Ít\n- Số Size Đầm: XS - S - M - L - XL.\n* Thông Số Sản Phẩm Size S *\nHƯỚN', '<p><img alt=\"Đầm tay liền nhún ngực\" src=\"https://gumac.vn/image/thang220/ms39110220201131391271.jpg?width=750\" title=\"Đầm tay liền nhún ngực\" width=\"100%\" /></p>\n\n<p><img alt=\"Đầm tay liền nhún ngực\" src=\"https://gumac.vn/image/thang220/ms39mot110220201131391281.jpg?width=750\" title=\"Đầm tay liền nhún ngực\" width=\"100%\" /></p>\n\n<p><img alt=\"Đầm tay liền nhún ngực\" src=\"https://gumac.vn/image/thang220/ms39sau110220201131391291.jpg?width=750\" title=\"Đầm tay liền nhún ngực\" width=\"100%\" /></p>\n', '2020-03-06 20:53:04', '0', 'Red', 'L,XL,XXL', 'public/media/ms39sau110220201131391291.jpg,public/media/ms39mot110220201131391281.jpg,public/media/ms39110220201131391271.jpg'),
(128, 'ĐẦM PHI LỤA TAY BỒNG', 270000, 'Đầm phi lụa tay bồng\n\nMã Sản Phẩm: MS11917\n- Giá Bán Sản Phẩm: 495.000đ\n- Màu Sắc Sản Phẩm: Đỏ\n- Số Đo Vòng Ngực Đầm: 84CM\n- Số Đo Vòng Eo: 63CM\n- Số Đo Hạ Cổ Đầm: 13CM\n- Số Đo Ra Cổ Đầm: 29CM\n- Số Đo Cửa Tay Đầm: 28CM\n- Chiều Dài Tay Đầm: 24CM\n- Chiều Dài Đầm: 97CM\n- Chất Liệu Sản Phẩm: Phi Dẻo\n- Chi Tiết Sản Phẩm:\n+ Đầm 2 Lớp\n+ Có Túi\n( Thông Số Sản Phẩm Size XS )', '<p><img alt=\"Đầm phi lụa tay bồng cuốn hút đến từng Cen-ti-met\" src=\"https://gumac.vn/image/thang1109/ms17071120190923469922.jpg?width=750\" title=\"Đầm phi lụa tay bồng cuốn hút đến từng Cen-ti-met\" width=\"100%\" /></p>\n\n<p><img alt=\"Đầm phi lụa tay bồng cuốn hút đến từng Cen-ti-met\" src=\"https://gumac.vn/image/thang1109/ms17mot071120190923470078.jpg?width=750\" title=\"Đầm phi lụa tay bồng cuốn hút đến từng Cen-ti-met\" width=\"100%\" /></p>\n\n<p><img alt=\"Đầm phi lụa tay bồng cuốn hút đến từng Cen-ti-met\" src=\"https://gumac.vn/image/thang1109/ms17sau071120190923470078.jpg?width=750\" title=\"Đầm phi lụa tay bồng cuốn hút đến từng Cen-ti-met\" width=\"100%\" /></p>\n', '2020-03-06 20:54:34', '0', 'Red', 'XL,XXL', 'public/media/ms17mot071120190923470078.jpg,public/media/ms17071120190923469922.jpg'),
(129, 'ĐẦM THÊU 2 BẢN DÂY', 240000, 'Đầm thêu 2 bản dây\n\nMã Sản Phẩm: MS11952\n- Giá Bán Sản Phẩm: 495.000đ\n- Màu Sắc Sản Phẩm: Đen\n- Số Đo Vòng Ngực Đầm: 89CM\n- Số Đo Vòng Eo: 70CM\n- Số Đo Hạ Cổ Đầm: 14CM\n- Số Đo Bản Dây Đầm: 3CM\n- Số Đo Dài Dây Đầm: 37CM\n- Chiều Dài Đầm: 97CM\n- Chất Liệu Sản Phẩm: Cát Thái\n- Chi Tiết Sản Phẩm:\n+ Đầm 1 Lớp\n+ Có Túi\n( Thông Số Sản Phẩm Size M )', '<p><img alt=\"Đầm thêu 2 bản dây khoe bở vai trần đầy gợi cảm  \" src=\"https://gumac.vn/image/thang1109/ms52071120191034496172.jpg?width=750\" title=\"Đầm thêu 2 bản dây khoe bở vai trần đầy gợi cảm  \" width=\"100%\" /></p>\n\n<p><img alt=\"Đầm thêu 2 bản dây khoe bở vai trần đầy gợi cảm  \" src=\"https://gumac.vn/image/thang1109/ms52mot071120191034496172.jpg?width=750\" title=\"Đầm thêu 2 bản dây khoe bở vai trần đầy gợi cảm  \" width=\"100%\" /></p>\n\n<p><img alt=\"Đầm thêu 2 bản dây khoe bở vai trần đầy gợi cảm  \" src=\"https://gumac.vn/image/thang1109/ms52hai071120191034496172.jpg?width=750\" title=\"Đầm thêu 2 bản dây khoe bở vai trần đầy gợi cảm  \" width=\"100%\" /></p>\n\n<p><img alt=\"Đầm thêu 2 bản dây khoe bở vai trần đầy gợi cảm  \" src=\"https://gumac.vn/image/thang1109/ms52sau071120191034496172.jpg?width=750\" title=\"Đầm thêu 2 bản dây khoe bở vai trần đầy gợi cảm  \" width=\"100%\" /></p>\n', '2020-03-06 20:55:36', '0', 'Black', 'S,M,L', 'public/media/ms52hai071120191034496172.jpg,public/media/ms52071120191034496172.jpg'),
(130, 'ĐẦM CỔ U NƠ NGỰC', 350000, ' Xem toàn màn hình\n\nTHÔNG TIN SẢN PHẨM\nĐầm cổ U nơ ngực\n\nMã Sản Phẩm: MS22005\n- Giá Bán Sản Phẩm: 495.000đ\n- Màu Sắc Sản Phẩm: Trắng\n- Số Đo Vòng Ngực Đầm: 86CM\n- Số Đo Vòng Eo: 67CM\n- Số Đo Hạ Cổ V: 16CM\n- Số Đo Ra Cổ Đầm: 26CM\n- Số Đo Dài Tay: 26CM\n- Số Đo Cửa Tay: 27CM\n- Số Đo Chiều Dài Đầm: 96CM\n- Chất Liệu Sản Phẩm: Cotton Mịn Phối Tơ Sọc Gân\n*** Chi Tiết Sản Phẩm:\n* Đầm 2 Lớp\n* Có Túi\n* Co Giãn Nhẹ\n- Số Size Đầm: XS - S - M - L - XL.\n* Thông Số Sản Phẩm Size S *', '<p><img alt=\"Đầm cổ U nơ ngực\" src=\"https://gumac.vn/image/thang220/ms05110220201629561597.jpg?width=750\" title=\"Đầm cổ U nơ ngực\" width=\"100%\" /></p>\n\n<p><img alt=\"Đầm cổ U nơ ngực\" src=\"https://gumac.vn/image/thang220/ms05mot110220201629561597.jpg?width=750\" title=\"Đầm cổ U nơ ngực\" width=\"100%\" /></p>\n\n<p><img alt=\"Đầm cổ U nơ ngực\" src=\"https://gumac.vn/image/thang220/ms05hai110220201629561597.jpg?width=750\" title=\"Đầm cổ U nơ ngực\" width=\"100%\" /></p>\n\n<p><img alt=\"Đầm cổ U nơ ngực\" src=\"https://gumac.vn/image/thang220/ms05sau110220201629561597.jpg?width=750\" title=\"Đầm cổ U nơ ngực\" width=\"100%\" /></p>\n', '2020-03-06 20:57:21', '0', 'White', 'S,M,L,XL', 'public/media/ms05hai110220201629561597.jpg,public/media/ms05110220201629561597.jpg'),
(131, 'ÁO SƠ MI LỤA', 220000, 'Áo sơ mi lụa\n\nMã Sản Phẩm: A07904\n- Giá Bán: 275.000đ\n- Số Đo Vòng Ngực: 104Cm\n- Chiều Dài Tay: 60Cm\n- Chiều Dài Áo: 59Cm\n- Số Đo Ngang Vai: 34Cm\n- Số Đo Cửa Tay: 2Cm\n- Số Đo Hạ Cổ V: 17Cm\n- Số Đo Bản Tay: 10Cm\n- Số Đo Vòng Hông: 94Cm\n- Màu Sắc: Hồng. Xanh\n- Chất Liệu Vải: Lụa\n+ Áo Có 1 Lớp\n( Số Đo Đầm Size S)\n* Mẫu Thiên An: 1m67*', '<p><img alt=\"Áo sơ mi lụa\" src=\"https://gumac.vn/image/thang719/a04-cv57-1080720191633371214.jpg?width=750\" title=\"Áo sơ mi lụa\" width=\"100%\" /></p>\n\n<p><img alt=\"Áo sơ mi lụa\" src=\"https://gumac.vn/image/thang719/a04-cv57-h080720191633371370.jpg?width=750\" title=\"Áo sơ mi lụa\" width=\"100%\" /></p>\n\n<p><img alt=\"Áo sơ mi lụa\" src=\"https://gumac.vn/image/thang719/a04-cv57-h-1080720191633371370.jpg?width=750\" title=\"Áo sơ mi lụa\" width=\"100%\" /></p>\n\n<p><img alt=\"Áo sơ mi lụa\" src=\"https://gumac.vn/image/thang719/a04-cv57-2080720191633371370.jpg?width=750\" title=\"Áo sơ mi lụa\" width=\"100%\" /></p>\n', '2020-03-06 20:58:26', '0', 'Red,Blue', 'M,L,XL', 'public/media/a04-cv57-h080720191633371370.jpg,public/media/a04-cv57-1080720191633371214.jpg'),
(132, 'GIÀY BÚP BÊ NƠ HẬU 7P', 250000, 'Giày búp bê nơ hậu 7P\n\nMã Sản Phẩm: GD139\n- Giá Bán Sản Phẩm: 480.000đ\n- Màu Sắc Sản Phẩm: Kem\n- Chất Liệu Sản Phẩm: Da Tổng Hợp\n- Chiều Cao: 7CM\n- Size Sản Phẩm: 35 - 36 - 37 - 38 - 39.', '<p><img alt=\"Giày búp bê nơ hậu 7P\" src=\"https://gumac.vn/image/giay/139-1151120191121244162.jpg?width=750\" title=\"Giày búp bê nơ hậu 7P\" width=\"100%\" /></p>\n\n<p><img alt=\"Giày búp bê nơ hậu 7P\" src=\"https://gumac.vn/image/giay/139-2151120191121244162.jpg?width=750\" title=\"Giày búp bê nơ hậu 7P\" width=\"100%\" /></p>\n\n<p><img alt=\"Giày búp bê nơ hậu 7P\" src=\"https://gumac.vn/image/giay/139-3151120191121244318.jpg?width=750\" title=\"Giày búp bê nơ hậu 7P\" width=\"100%\" /></p>\n\n<p><img alt=\"Giày búp bê nơ hậu 7P\" src=\"https://gumac.vn/image/giay/139-4151120191121244318.jpg?width=750\" title=\"Giày búp bê nơ hậu 7P\" width=\"100%\" /></p>\n', '2020-03-06 21:00:07', '0', 'Yellow', 'XL,XXL', 'public/media/139-3151120191121244318.jpg,public/media/139-1151120191121244162.jpg'),
(133, 'GIÀY THỂ THAO NỮ MÀU TRẮNG ĐẸP', 260000, '- Hàng nhập trực tiếp từ quảng châu giá sỉ, cung ứng tại hàn\n- gia công bằng chất liệu cao cấp, bền đẹp, đường may thiết kế phù hợp chắc chắn là.\n- mẫu mã Thể Thao, phong thái tiên tiến, sành điệu.\n- giầy với khối lượng vơi hỗ trợ con người với luôn cảm thấy thoải mái.\n- Đế được thiết kế bởi cao su thiên nhiên đo đếm, êm ắng, phong cách thiết kế chống trơn cực tốt.', '<p><img alt=\"GIÀY THỂ THAO NỮ MÀU TRẮNG ĐẸP\" height=\"280\" src=\"https://thoitrangngaynay.com/upload/images/giay%20the%20thao%20converse.jpg\" width=\"373\" /></p>\n', '2020-03-06 21:01:46', '0', 'White', 'S,M,L,XL,XXL', 'public/media/giay-the-thao-nu-mau-trang-dep-446-1.jpg'),
(134, 'GIÀY THỂ THAO NỮ ĐEN TRẮNG CÁ TÍNH', 340000, 'Giày thể thao nữ đen trắng cá tính với chất liệu là da tổng hợp mang lại cảm giác êm chân, thoáng mát cho người sử dụng, ngoài tác dụng bảo vệ đôi chân, giày thể thao nữ với mẫu mới và đường may sắc sảo chắc chắn sẽ là một phụ kiện không thể thiếu trong tủ đồ của các bạn nữ.', '<figure><img alt=\"GIÀY THỂ THAO NỮ ĐEN TRẮNG CÁ TÍNH\" height=\"960\" src=\"https://thoitrangngaynay.com/upload/images/Giay-the-thao-nu-mau-den-ca-tinh.jpg\" width=\"768\" />\n<figcaption>GI&Agrave;Y THỂ THAO NỮ M&Agrave;U ĐEN C&Aacute; T&Iacute;NH</figcaption>\n</figure>\n\n<p>&nbsp;</p>\n\n<figure><img alt=\"GIÀY THỂ THAO NỮ ĐEN TRẮNG CÁ TÍNH\" height=\"960\" src=\"https://thoitrangngaynay.com/upload/images/Giay-the-thao-nu-mau-den-ca-tinh\'.jpg\" width=\"768\" />\n<figcaption>GI&Agrave;Y THỂ THAO NỮ M&Agrave;U ĐEN&nbsp; C&Aacute; T&Iacute;NH&#39;</figcaption>\n</figure>\n\n<figure><img alt=\"GIÀY THỂ THAO NỮ ĐEN TRẮNG CÁ TÍNH\" height=\"960\" src=\"https://thoitrangngaynay.com/upload/images/Giay-the-thao-nu-mau-trang-ca-tinh.jpg\" width=\"768\" />\n<figcaption>GI&Agrave;Y THỂ THAO NỮ TRẮNG C&Aacute; T&Iacute;NH</figcaption>\n</figure>\n\n<figure><img alt=\"GIÀY THỂ THAO NỮ ĐEN TRẮNG CÁ TÍNH\" height=\"960\" src=\"https://thoitrangngaynay.com/upload/images/Giay-the-thao-nu-mau-trang-ca-tinh\'.jpg\" width=\"768\" />\n<figcaption>GI&Agrave;Y THỂ THAO NỮ TRẮNG C&Aacute; T&Iacute;NH&#39;</figcaption>\n</figure>\n', '2020-03-06 21:02:53', '0', 'White,Black', 'L,XL,XXL', 'public/media/giay-the-thao-nu-den-trang-ca-tinh-439-4.jpg,public/media/giay-the-thao-nu-den-trang-ca-tinh-439-2.jpg'),
(135, 'ÁO SƠ MI NAM LOGO GẤU TRÚC ĐÁNG YÊU', 245000, 'ÁO SƠ MI NAM LOGO GẤU TRÚC ĐÁNG YÊU: Chất vải dày dặn cao cấp, dáng áo chuẩn để các chàng tự tin khoe dáng. Bên cạnh đó là chất màu lên tông chuẩn để các chàng lựa chọn phong cách cho mình thật thoải mái. Ngoài ra, với thiết kế tay dài thanh lịch nhưng vô cùng đáng yêu với logo hình chú gấu trúc tinh nghịch ngay bên ngực áo giúp các chàng trai để lại ấn tượng khó quên cho các cô gái bởi sự đnág yêu ngọt ngào.', '<p><img alt=\"ÁO SƠ MI NAM LOGO GẤU TRÚC ĐÁNG YÊU\" height=\"640\" src=\"https://thoitrangngaynay.com/upload/images/29(2).jpg\" width=\"457\" /> &Aacute;O SƠ MI NAM LOGO GẤU TR&Uacute;C Đ&Aacute;NG Y&Ecirc;U</p>\n', '2020-03-06 21:05:01', '0', 'White', 'S,M,L,XL,XXL', 'public/media/ao-so-mi-nam-logo-gau-truc-dang-yeu-725-1.jpg'),
(136, 'SƠ MI NAM BODY TAY DÀI CAO CẤP', 254500, 'SƠ MI NAM BODY TAY DÀI CAO CẤP: Với chất vải lụa mềm mịn và có độ co giãn giúp các chàng trai có thể khoe được thân hình của mình một cách hoàn hảo nhất có thể. Bên cạnh đó, sản phẩm có nhiều màu sắc giúp người mua thoải mái lựa chọn cho mình màu sắc phù hợp nhất', '<figure><img alt=\"SƠ MI NAM BODY TAY DÀI CAO CẤP\" height=\"960\" src=\"https://thoitrangngaynay.com/upload/images/8(2).jpg\" width=\"720\" />\n<figcaption>SƠ MI NAM BODY TAY D&Agrave;I CAO CẤP M&Agrave;U NUDE</figcaption>\n</figure>\n\n<figure><img alt=\"SƠ MI NAM BODY TAY DÀI CAO CẤP\" height=\"900\" src=\"https://thoitrangngaynay.com/upload/images/8\'(2).jpg\" width=\"900\" />\n<figcaption>SƠ MI NAM BODY TAY D&Agrave;I CAO CẤP M&Agrave;U XANH</figcaption>\n</figure>\n\n<figure><img alt=\"SƠ MI NAM BODY TAY DÀI CAO CẤP\" height=\"900\" src=\"https://thoitrangngaynay.com/upload/images/8\'\'\'(2).jpg\" width=\"900\" />\n<figcaption>SƠ MI NAM BODY TAY D&Agrave;I CAO CẤP M&Agrave;U ĐEN</figcaption>\n</figure>\n\n<figure><img alt=\"SƠ MI NAM BODY TAY DÀI CAO CẤP\" src=\"https://thoitrangngaynay.com/upload/images/8\'\'\'\'.jpg\" />\n<figcaption>SƠ MI NAM BODY TAY D&Agrave;I CAO CẤP M&Agrave;U TRẮNG</figcaption>\n</figure>\n', '2020-03-06 21:06:20', '0', 'Blue,White,Black', 'M,L,XL,XXL', 'public/media/so-mi-nam-body-tay-dai-cao-cap-641-2.jpg,public/media/so-mi-nam-body-tay-dai-cao-cap-641-3.jpg'),
(137, 'QUẦN ĐÙI NAM SỐ 69 CAO CẤP', 340000, 'QUẦN ĐÙI NAM SỐ 69 CAO CẤP: Thiết kế trẻ trung, năng động với thiết kế săn lai ống giúp các trai trông năng động hơn. Bên cạnh đó chất vải jenas dày dặn mang đến sự tự tin cho các chàng trong việc hoạt động vui chơi mà không lo các sự cố khó xửa xảy ra.', '<p><img alt=\"QUẦN ĐÙI NAM SỐ 69 CAO CẤP\" height=\"800\" src=\"https://thoitrangngaynay.com/upload/images/16\'\'(2).jpg\" width=\"800\" /> QUẦN Đ&Ugrave;I NAM SỐ 69 CAO CẤP</p>\n', '2020-03-06 21:08:20', '0', 'Blue', 'M,L,XL', 'public/media/quan-dui-nam-so-69-cao-cap-3-1.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_category`
--

CREATE TABLE `product_category` (
  `map_product_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_category`
--

INSERT INTO `product_category` (`map_product_id`, `product_id`, `category_id`) VALUES
(146, 113, 54),
(147, 113, 55),
(148, 114, 54),
(149, 114, 55),
(150, 115, 57),
(151, 115, 59),
(152, 116, 54),
(153, 116, 55),
(154, 117, 57),
(155, 117, 59),
(156, 118, 57),
(157, 118, 59),
(158, 119, 57),
(159, 119, 59),
(160, 120, 57),
(161, 120, 59),
(162, 121, 61),
(163, 121, 62),
(164, 122, 54),
(165, 122, 56),
(166, 123, 54),
(167, 123, 56),
(168, 124, 54),
(169, 124, 56),
(170, 125, 57),
(171, 125, 58),
(172, 126, 54),
(173, 126, 56),
(174, 127, 61),
(175, 127, 62),
(176, 128, 61),
(177, 128, 63),
(178, 129, 61),
(179, 129, 62),
(180, 130, 61),
(181, 130, 62),
(182, 131, 54),
(183, 131, 56),
(184, 132, 66),
(185, 132, 68),
(186, 133, 66),
(187, 133, 68),
(188, 134, 66),
(189, 134, 68),
(190, 135, 54),
(191, 135, 55),
(192, 136, 54),
(193, 136, 55),
(194, 137, 57),
(195, 137, 60);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `size`
--

CREATE TABLE `size` (
  `size_id` int(11) NOT NULL,
  `size_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `size`
--

INSERT INTO `size` (`size_id`, `size_name`) VALUES
(1, 'S '),
(2, 'M '),
(3, 'L '),
(4, 'XL '),
(5, 'XXL ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `table_order`
--

CREATE TABLE `table_order` (
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `total` float NOT NULL,
  `num_order` int(11) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `table_order`
--

INSERT INTO `table_order` (`order_id`, `full_name`, `email`, `address`, `phone`, `payment`, `order_status`, `total`, `num_order`, `message`) VALUES
('ORDER1583529903', 'Nguyễn Ngọc Thành', 'timlai1visao9x2@gmail.com', 'Tân Lập, Đan Phượng, Hà Nội', '0983677288', '', '0', 1340000, 5, 'nguyen ngoc thanh');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`color_id`);

--
-- Chỉ mục cho bảng `map`
--
ALTER TABLE `map`
  ADD PRIMARY KEY (`map_id`),
  ADD KEY `fk_map_product` (`product_id`),
  ADD KEY `fk_map_color` (`color_id`),
  ADD KEY `fk_map_size` (`size_id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_order_detail` (`order_id`),
  ADD KEY `fk_detail_product` (`product_id`);

--
-- Chỉ mục cho bảng `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `fk_post_category` (`parent_id`);

--
-- Chỉ mục cho bảng `post_category`
--
ALTER TABLE `post_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`map_product_id`),
  ADD KEY `fk_productcategory_product` (`product_id`),
  ADD KEY `fk_productcategory_category` (`category_id`);

--
-- Chỉ mục cho bảng `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`size_id`);

--
-- Chỉ mục cho bảng `table_order`
--
ALTER TABLE `table_order`
  ADD PRIMARY KEY (`order_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT cho bảng `color`
--
ALTER TABLE `color`
  MODIFY `color_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `map`
--
ALTER TABLE `map`
  MODIFY `map_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=506;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `post_category`
--
ALTER TABLE `post_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT cho bảng `product_category`
--
ALTER TABLE `product_category`
  MODIFY `map_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;

--
-- AUTO_INCREMENT cho bảng `size`
--
ALTER TABLE `size`
  MODIFY `size_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `map`
--
ALTER TABLE `map`
  ADD CONSTRAINT `fk_map_color` FOREIGN KEY (`color_id`) REFERENCES `color` (`color_id`),
  ADD CONSTRAINT `fk_map_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  ADD CONSTRAINT `fk_map_size` FOREIGN KEY (`size_id`) REFERENCES `size` (`size_id`);

--
-- Các ràng buộc cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `fk_detail_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  ADD CONSTRAINT `fk_order_detail` FOREIGN KEY (`order_id`) REFERENCES `table_order` (`order_id`);

--
-- Các ràng buộc cho bảng `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `fk_post_category` FOREIGN KEY (`parent_id`) REFERENCES `post_category` (`category_id`);

--
-- Các ràng buộc cho bảng `product_category`
--
ALTER TABLE `product_category`
  ADD CONSTRAINT `fk_productcategory_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`),
  ADD CONSTRAINT `fk_productcategory_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
