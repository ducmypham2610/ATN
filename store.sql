-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 19, 2021 lúc 10:37 PM
-- Phiên bản máy phục vụ: 10.4.19-MariaDB
-- Phiên bản PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `store`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `clothing`
--

CREATE TABLE `clothing` (
  `clothing_id` int(11) NOT NULL,
  `clothing_name` varchar(30) DEFAULT NULL,
  `clothing_image` varchar(40) DEFAULT NULL,
  `clothing_price` int(11) DEFAULT NULL,
  `clothing_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `clothing`
--

INSERT INTO `clothing` (`clothing_id`, `clothing_name`, `clothing_image`, `clothing_price`, `clothing_description`) VALUES
(1, 'Hiphop Graphic Tee', 'Ananas Graphic Tee.jpg', 350000, 'Streetwear nói chung và thời trang Hiphop nói riêng không bao giờ thiếu đi những chiếc Graphic Tee nổi bật với cổ tròn ôm gọn, tay lỡ và phom áo rộng linh hoạt. Kết hợp cùng họa tiết Ananas Est. 2017, Hiphop Graphic Tee sẽ là một mảnh ghép không tồi giúp bạn có bộ outfit thú vị và khẳng định cá tính riêng của bản thân. Est. \'17 Ananas cũng là chiếc áo đơn giản nhất so với các mẫu cùng dòng Graphic Tee, do đó lại càng thêm phù hợp cho những ai tìm kiếm sự phá cách vừa đủ, không cần quá nổi bật.'),
(2, 'Tee - Discover Ananas', 'Tee Red.jpg', 340000, 'Streetwear in general and Hiphop fashion in particular are never without the outstanding Graphic Tees with a tight round neck, short sleeves and a flexible shirt shape. Combined with the Discover Ananas motifs on the front and back, Hiphop Graphic Tee will be a good piece to help you have an interesting outfit and affirm your own personality.'),
(3, 'Basic Tee', 'Basic Tee.jpg', 250000, 'Áo thun trơn, ngắn tay, cổ tròn cùng họa tiết Ananas Cropped Symbol in 3D trên ngực áo trái. Phom dáng cổ điển và linh hoạt, thích hợp cho cả Nam và Nữ.\r\nÁo thun trơn, ngắn tay, cổ tròn cùng họa tiết Ananas Cropped Symbol in 3D trên ngực áo trái. Phom dáng cổ điển và linh hoạt, thích hợp cho cả Nam và Nữ.\r\nÁo thun trơn, ngắn tay, cổ tròn cùng họa tiết Ananas Cropped Symbol in 3D trên ngực áo trái. Phom dáng cổ điển và linh hoạt, thích hợp cho cả Nam và Nữ.'),
(4, 'Typo Basic Tee', 'Type Basic Tee.jpg', 240000, 'Áo thun trơn, ngắn tay, cổ tròn cùng họa tiết Ananas Typo in ở gấu áo. Phom dáng cổ điển và linh hoạt, thích hợp cho cả Nam và Nữ.'),
(6, 'Nike Air Force 1', 'nike-air-force-1.jpg', 2000000, 'sang xin min'),
(8, 'AF1 Shadow Pale', 'NVTC-AIR-FORCE-1-SHADOW-PALE.jpg', 900000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit massa porta odio dictum viverra. Aliquam luctus orci molestie bibendum dictum. Aliquam sollicitudin commodo lacus in commodo. Sed molestie dictum nisl ut interdum. Duis risus arcu, aliquam nec iaculis vitae, aliquam et lacus. Nunc nisi lacus, aliquet eu facilisis non, dignissim ut est. Ut gravida quam eu tortor vehicula aliquet. Aliquam egestas id purus ut semper.'),
(10, 'Nike Jordan 1-Retro High', 'AF1 Retro.jpg', 1300000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit massa porta odio dictum viverra. Aliquam luctus orci molestie bibendum dictum. Aliquam sollicitudin commodo lacus in commodo. Sed molestie dictum nisl ut interdum. Duis risus arcu, aliquam nec iaculis vitae, aliquam et lacus. Nunc nisi lacus, aliquet eu facilisis non, dignissim ut est. Ut gravida quam eu tortor vehicula aliquet. Aliquam egestas id purus ut semper.'),
(11, 'Vans Sport', 'Vans Sport.jpg', 550000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit massa porta odio dictum viverra. Aliquam luctus orci molestie bibendum dictum. Aliquam sollicitudin commodo lacus in commodo. Sed molestie dictum nisl ut interdum. Duis risus arcu, aliquam nec iaculis vitae, aliquam et lacus. Nunc nisi lacus, aliquet eu facilisis non, dignissim ut est. Ut gravida quam eu tortor vehicula aliquet. Aliquam egestas id purus ut semper.'),
(12, 'Vans Old Skool', 'Vans Old Skool.jpg', 650000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit massa porta odio dictum viverra. Aliquam luctus orci molestie bibendum dictum. Aliquam sollicitudin commodo lacus in commodo. Sed molestie dictum nisl ut interdum. Duis risus arcu, aliquam nec iaculis vitae, aliquam et lacus. Nunc nisi lacus, aliquet eu facilisis non, dignissim ut est. Ut gravida quam eu tortor vehicula aliquet. Aliquam egestas id purus ut semper.'),
(13, 'Adidas Ultra Boost 4.0', 'Adidas UB4.0.jpg', 1500000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit massa porta odio dictum viverra. Aliquam luctus orci molestie bibendum dictum. Aliquam sollicitudin commodo lacus in commodo. Sed molestie dictum nisl ut interdum. Duis risus arcu, aliquam nec iaculis vitae, aliquam et lacus. Nunc nisi lacus, aliquet eu facilisis non, dignissim ut est. Ut gravida quam eu tortor vehicula aliquet. Aliquam egestas id purus ut semper.'),
(14, 'Adidas Alphal Bounce Cloud', 'Adidas AB instinct cloud.jpg', 695000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit massa porta odio dictum viverra. Aliquam luctus orci molestie bibendum dictum. Aliquam sollicitudin commodo lacus in commodo. Sed molestie dictum nisl ut interdum. Duis risus arcu, aliquam nec iaculis vitae, aliquam et lacus. Nunc nisi lacus, aliquet eu facilisis non, dignissim ut est. Ut gravida quam eu tortor vehicula aliquet. Aliquam egestas id purus ut semper.'),
(15, 'Adidas Alphal Bounce Dark', 'Adidas AB dark.jpg', 570000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit massa porta odio dictum viverra. Aliquam luctus orci molestie bibendum dictum. Aliquam sollicitudin commodo lacus in commodo. Sed molestie dictum nisl ut interdum. Duis risus arcu, aliquam nec iaculis vitae, aliquam et lacus. Nunc nisi lacus, aliquet eu facilisis non, dignissim ut est. Ut gravida quam eu tortor vehicula aliquet. Aliquam egestas id purus ut semper.'),
(16, 'Converse Allstar', 'converse-chuck-taylor-classic-1.jpg', 450000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit massa porta odio dictum viverra. Aliquam luctus orci molestie bibendum dictum. Aliquam sollicitudin commodo lacus in commodo. Sed molestie dictum nisl ut interdum. Duis risus arcu, aliquam nec iaculis vitae, aliquam et lacus. Nunc nisi lacus, aliquet eu facilisis non, dignissim ut est. Ut gravida quam eu tortor vehicula aliquet. Aliquam egestas id purus ut semper.'),
(17, 'Converse Chuck Low', 'converse-chuck-1.jpg', 600000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit massa porta odio dictum viverra. Aliquam luctus orci molestie bibendum dictum. Aliquam sollicitudin commodo lacus in commodo. Sed molestie dictum nisl ut interdum. Duis risus arcu, aliquam nec iaculis vitae, aliquam et lacus. Nunc nisi lacus, aliquet eu facilisis non, dignissim ut est. Ut gravida quam eu tortor vehicula aliquet. Aliquam egestas id purus ut semper.'),
(18, 'Nike Jordan X Off White', 'Jordan-4-Retro-x-Off-White-Sail.jpg', 1600000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit massa porta odio dictum viverra. Aliquam luctus orci molestie bibendum dictum. Aliquam sollicitudin commodo lacus in commodo. Sed molestie dictum nisl ut interdum. Duis risus arcu, aliquam nec iaculis vitae, aliquam et lacus. Nunc nisi lacus, aliquet eu facilisis non, dignissim ut est. Ut gravida quam eu tortor vehicula aliquet. Aliquam egestas id purus ut semper.'),
(19, 'Vans sunflower', 'Vans orange.jpg', 560000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit massa porta odio dictum viverra. Aliquam luctus orci molestie bibendum dictum. Aliquam sollicitudin commodo lacus in commodo. Sed molestie dictum nisl ut interdum. Duis risus arcu, aliquam nec iaculis vitae, aliquam et lacus. Nunc nisi lacus, aliquet eu facilisis non, dignissim ut est. Ut gravida quam eu tortor vehicula aliquet. Aliquam egestas id purus ut semper.'),
(21, 'Converse Hi Commes Des', 'converse-1970s.jpg', 750000, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce hendrerit massa porta odio dictum viverra. Aliquam luctus orci molestie bibendum dictum. Aliquam sollicitudin commodo lacus in commodo. Sed molestie dictum nisl ut interdum. Duis risus arcu, aliquam nec iaculis vitae, aliquam et lacus. Nunc nisi lacus, aliquet eu facilisis non, dignissim ut est. Ut gravida quam eu tortor vehicula aliquet. Aliquam egestas id purus ut semper.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users-infor`
--

CREATE TABLE `users-infor` (
  `users_id` int(11) NOT NULL,
  `users_name` varchar(50) NOT NULL,
  `users_password` varchar(30) NOT NULL,
  `users_fullname` varchar(50) NOT NULL,
  `users_email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users_infor`
--

CREATE TABLE `users_infor` (
  `users_id` int(11) NOT NULL,
  `users_name` varchar(20) DEFAULT NULL,
  `users_password` varchar(30) DEFAULT NULL,
  `users_fullname` varchar(50) DEFAULT NULL,
  `users_email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users_infor`
--

INSERT INTO `users_infor` (`users_id`, `users_name`, `users_password`, `users_fullname`, `users_email`) VALUES
(1, 'hoanghieu1108', '11082002', 'Hoang Dinh Hieu', 'hieudh@fpt.edu.vn'),
(2, 'kiennd1911', '19112002', 'Nguyen Dong Kien', 'kiennd@gpt.edu.vn'),
(3, 'khanhln', '123456', 'Nguyen Lam Khanh', 'khanhln@fpt.edu.vn');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `clothing`
--
ALTER TABLE `clothing`
  ADD PRIMARY KEY (`clothing_id`);

--
-- Chỉ mục cho bảng `users-infor`
--
ALTER TABLE `users-infor`
  ADD PRIMARY KEY (`users_id`);

--
-- Chỉ mục cho bảng `users_infor`
--
ALTER TABLE `users_infor`
  ADD PRIMARY KEY (`users_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `clothing`
--
ALTER TABLE `clothing`
  MODIFY `clothing_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `users-infor`
--
ALTER TABLE `users-infor`
  MODIFY `users_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users_infor`
--
ALTER TABLE `users_infor`
  MODIFY `users_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
