-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 02, 2021 lúc 01:01 PM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qlkhachhang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `forgetpassword`
--

CREATE TABLE `forgetpassword` (
  `id` int(11) NOT NULL,
  `token` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `accountId` int(11) NOT NULL,
  `time` decimal(10,0) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `id` int(11) NOT NULL,
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `accountId` int(11) DEFAULT NULL,
  `diachi` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` smallint(6) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`id`, `name`, `phone`, `accountId`, `diachi`, `trangthai`, `created_at`) VALUES
(1, 'Ninh Quang Duẩn', '098 899 998', 1, 'Hải Hậu, Nam Định', 10, '2021-11-25'),
(2, 'Nguyễn Thái Tuấn', '0969 869 896', 3, 'Hà Nội xịn', 8, '2021-11-25'),
(3, 'Đạt OneP', '02919233', 5, 'Thái Bình', 2, '2021-11-25'),
(4, 'Dương CF', '00999999', 7, 'Hà Nội', 5, '2021-11-25'),
(10, 'QD', '91111222', 12, 'HN', 2, '2021-12-23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `id` int(11) NOT NULL,
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `accountId` int(11) DEFAULT NULL,
  `diachi` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` smallint(6) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`id`, `name`, `phone`, `accountId`, `diachi`, `trangthai`, `created_at`) VALUES
(1, 'Dang Hai Dang', '0957508288', 2, 'Việt Trì, Phú Thọ', 2, '2021-11-25'),
(2, 'Lê Ngọc Kiên', '0947888999', 4, 'Đông Anh, Hà Nội', 3, '2021-11-25'),
(3, 'Dũng Ẩn Sĩ', '02919233', 6, 'Nam Định', 3, '2021-11-25'),
(4, 'HÃ¹ng PT', '88888888', 8, 'Quáº£ng Ninh', 2, '2021-11-01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phancong`
--

CREATE TABLE `phancong` (
  `id` int(11) NOT NULL,
  `nhanvien` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `khachhang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `histories` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` date NOT NULL,
  `created_by` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phancong`
--

INSERT INTO `phancong` (`id`, `nhanvien`, `khachhang`, `histories`, `created_at`, `created_by`) VALUES
(1, 'Dang Hai Dang', 'Ninh Quang Duáº©n', 'Giá»i thiá»u vá» giáº£i thÆ°á»ng mÃ¹a thu cá»§a cÃ´ng ty', '2021-11-25', '2021-11-25'),
(2, 'LÃª Ngá»c KiÃªn', 'Nguyá»n ThÃ¡i Tuáº¥n', 'TÃ¬m hiá»u vá» nhá»¯ng loáº¡i chuá»i cÃ³ trÃªn thá» trÆ°á»ng', '2021-11-25', '2021-11-25'),
(3, 'DÅ©ng áº¨n SÄ©', 'Äáº¡t OneP', 'Giá»i thiá»u lÃ² bÃ¡nh lá»n nháº¥t Nam Äá»nh', '2021-11-25', '2021-11-25'),
(4, 'HÃÂ¹ng PT', 'DÆ°Æ¡ng CF', 'Chia sáº» kinh nghiá»m thá»±c chiáº¿n', '2021-11-25', '2021-11-25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `ID` int(100) NOT NULL,
  `ten` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(30) NOT NULL,
  `matkhau` varchar(100) NOT NULL,
  `role` varchar(2) NOT NULL,
  `ngaydangky` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`ID`, `ten`, `email`, `matkhau`, `role`, `ngaydangky`) VALUES
(6, 'LÃª KiÃªn', 'nkien200@gmail.com', '123', '2', '2021-12-21'),
(7, 'QD', 'duan2k@gmai.com', '123', '2', '2021-12-15'),
(8, 'Tuan', 'tuan2k8@gmail.com', '123', '2', '2021-12-22'),
(9, '&#272;&#259;ng', 'bedang2k@gmail.com', '123', '0', '2021-12-21'),
(11, 'admin', 'admin@gmail.com', 'admin', '0', '0000-00-00'),
(12, 'Kien', 'nkien2000@gmail.com', '123', '0', '2021-12-15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `role` smallint(6) NOT NULL,
  `trangthai` smallint(6) NOT NULL,
  `created_at` date NOT NULL,
  `created_by` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `role`, `trangthai`, `created_at`, `created_by`) VALUES
(1, 'Ninh Quang Duẩn', 'duan@gmail.com', '1', 2, 3, '2021-11-25', '2021-11-25'),
(2, 'Dang Hai Dang', 'dang@gmail.com', '1', 3, 4, '2021-11-25', '2021-11-25'),
(3, 'Nguyễn Thái Tuấn', 'tuan@gmail.com', '1', 2, 2, '2021-11-25', '2021-11-25'),
(4, 'Lê Ngọc Kiên', 'kien@gmail.com', '1', 3, 2, '2021-11-25', '2021-11-25'),
(5, 'Phí Trọng Đạt', 'dat@gmail.com', '1', 2, 2, '2021-11-25', '2021-11-25'),
(6, 'Trần Tiến Dũng', 'dung@gmail.com', '1', 3, 2, '2021-11-25', '2021-11-25'),
(7, 'Trương Huy Dương', 'duong@gmail.com', '1', 2, 4, '2021-11-25', '2021-11-25'),
(8, 'Trá»nh Tháº¿ HÃ¹ng', 'hung@gmail.com', '1', 3, 2, '1999-01-28', '1999-05-31'),
(16, '[value-2]', '[value-3]', '[value-4]', 0, 0, '0000-00-00', '0000-00-00');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `forgetpassword`
--
ALTER TABLE `forgetpassword`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accountId` (`accountId`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accountId` (`accountId`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accountId` (`accountId`);

--
-- Chỉ mục cho bảng `phancong`
--
ALTER TABLE `phancong`
  ADD PRIMARY KEY (`id`),
  ADD KEY `khachhang` (`khachhang`),
  ADD KEY `nhanvien` (`nhanvien`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `forgetpassword`
--
ALTER TABLE `forgetpassword`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `phancong`
--
ALTER TABLE `phancong`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
