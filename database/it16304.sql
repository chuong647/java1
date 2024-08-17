-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 16, 2022 lúc 05:49 PM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `it16304`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `ten`, `user_id`) VALUES
(38, 'quần', 82),
(39, 'quần áo', 82),
(40, 'quần áo 3', 82);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `tong_tien` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`id`, `user_id`, `tong_tien`, `status`) VALUES
(78, 83, 400000, 1),
(79, 83, 800000, 0),
(80, 83, 800000, 1),
(81, 83, 193000, 1),
(82, 83, 350000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadonchitiet`
--

CREATE TABLE `hoadonchitiet` (
  `id` int(11) NOT NULL,
  `hoaDon_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `so_luong` int(11) NOT NULL,
  `thanh_tien` int(50) NOT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `hoadonchitiet`
--

INSERT INTO `hoadonchitiet` (`id`, `hoaDon_id`, `product_id`, `user_id`, `so_luong`, `thanh_tien`, `status`) VALUES
(107, 80, 45, 83, 2, 400000, 1),
(108, 80, 45, 83, 2, 400000, 1),
(109, NULL, 46, 83, 3, 450000, 1),
(110, NULL, 45, 83, 2, 400000, 1),
(111, 81, 48, 83, 1, 43000, 1),
(112, 81, 46, 83, 1, 150000, 1),
(113, 82, 45, 83, 1, 200000, 1),
(114, 82, 46, 83, 1, 150000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `so_luong` int(11) NOT NULL DEFAULT 0,
  `don_gia` int(11) NOT NULL DEFAULT 0,
  `mau_sac` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kich_thuoc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `ten`, `so_luong`, `don_gia`, `mau_sac`, `kich_thuoc`, `img`, `category_id`) VALUES
(45, 'quần 7 7 49 lỗ', 15, 200000, 'đen', '40cm', 'product1.jpg', 38),
(46, 'quần thủng 3 lỗ và áo thủng 4 lỗ', 15, 150000, 'cam và đen', '40cm', 'product2.jpg', 39),
(47, 'áo trắng và quần trắng trẻ em', 15, 230000, 'trắng', '50cm', 'product3.jpg', 39),
(48, 'quần thủng 3 lỗ và áo thủng 3 lỗ nhưng có mũ', 15, 43000, 'đỏ', '60cm và 50cm', 'product4.jpg', 40),
(49, 'Quần lủng 2 lỗ thừa 1 lỗ', 15, 123000, 'đen', '80cm', 'product5.jpg', 40),
(51, 'áo dó', 15, 50000, '1', '50cm', 'product6.jpg', 38),
(53, 'quần 14 lỗ', 3, 230000, 'red', '40cm', 'product3.jpg', 38),
(54, 'quần 3 lỗ 1', 4, 233000, 'đen', '40cm', 'product1.jpg', 40),
(55, 'quần 3 lỗ 123', 4, 3, 'red', '40cm', 'product1.jpg', 40);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `ho_ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gioi_tinh` int(11) NOT NULL DEFAULT 1,
  `sdt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dia_chi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `ho_ten`, `gioi_tinh`, `sdt`, `dia_chi`, `email`, `password`, `avatar`, `role`) VALUES
(82, 'Cường', 1, '0844567891', '23 Hà Lội', '1@gmail.com', '$2a$10$suKdht.Fzsb1lP0ZTBQH/ut/XdlWtnT8PBsWMRlFmWbdchmM4wneu', NULL, 1),
(83, 'Dương', 1, '0841234567', 'ds', 'duong@gmail.com', '$2a$10$4373YuSEJ5ovzFXbBtbO/Ouiyhqi1RMA2gb7LfCzbhZfTSvTJLZlO', NULL, 0),
(87, 'ewq', 1, '0841234534', 'dsa', 'duong12@gmail.com', '$2a$10$jXQg7C5PVLkVcHKx8X3CE..CSlkf1tj.E9zKkpddEXeCGl7vsIvBu', NULL, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hoadonchitiet`
--
ALTER TABLE `hoadonchitiet`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT cho bảng `hoadonchitiet`
--
ALTER TABLE `hoadonchitiet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
