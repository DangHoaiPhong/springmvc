-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 19, 2022 lúc 03:01 AM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `trangsuc_shop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `user`, `password`) VALUES
(1, 'admin', '123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `billdetail`
--

CREATE TABLE `billdetail` (
  `id` bigint(20) NOT NULL,
  `id_product` bigint(20) NOT NULL,
  `id_bills` bigint(20) NOT NULL,
  `quanty` int(11) NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `billdetail`
--

INSERT INTO `billdetail` (`id`, `id_product`, `id_bills`, `quanty`, `total`) VALUES
(1, 6, 1, 1, 16915000),
(2, 46, 1, 1, 15290000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bills`
--

CREATE TABLE `bills` (
  `id` bigint(20) NOT NULL,
  `user` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `total` double NOT NULL,
  `quanty` int(11) NOT NULL,
  `note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `bills`
--

INSERT INTO `bills` (`id`, `user`, `phone`, `username`, `address`, `total`, `quanty`, `note`) VALUES
(1, 'abc@gmail.com', '0822818759', 'phong hoai', 'duong so 2', 0, 0, 'khong');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `description`) VALUES
(1, 'Bàn', NULL),
(2, 'Ghế ', NULL),
(3, 'Giường', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `details` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `id_category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `details`, `img`, `id_category`) VALUES
(1, 'Sofa 3 chỗ PENNY – vải màu xanh lá', 22865000, 'Sự đơn giản, tinh tế, sang trọng và không kém phần nổi bật của chiếc Sofa mang dòng máu bất diệt Scandivian này với lần lượt các phiên bản màu từ tối tới sáng bật Pastel sẽ mang lại các sắc màu không thể lẫn vào đâu và đa dạng cho từng không gian sống nhà', '1.jpg', 1),
(2, 'Sofa Bridge 3 chỗ hiện đại da Beige', 93406500, 'Sofa Bridge 3 chỗ với thiết kế vượt thời gian, sử dụng chất liệu gỗ sồi đặc và da bò tự nhiên, sofa Bridge là điểm nhấn đẳng cấp trong phòng khách của bạn. Đặc biệt, phần tay vịn được hoàn thiện vô cùng tinh xảo kết hợp với kết cấu vô cùng chắn chắn giúp ', '2.jpg', 1),
(3, 'Sofa 3 chỗ Elegance màu tự nhiên, vải xanh', 73074500, '', '3.jpg', 1),
(4, 'Sofa Maxine 3 chỗ hiện đại da Cognac', 40808500, 'Sofa Maxine 3 chỗ với thiết kế gọn gàng, tối giản. Sofa Maxine 3 chỗ “linh động”, “ấm áp” với nhiều màu sắc khác nhau để chọn lựa, phù hợp không gian phòng khách hiện đại của gia đình bạn.', '4.jpg', 1),
(5, 'Giường hộc kéo Iris 1m6 Stone', 12435500, 'Giường hộc kéo Iris 1m6 với thiết kế đóng nút đầu giường, điểm đặc biệt là bốn ngăn chứa đồ rộng thuận tiện cất những vật dụng trong phòng ngủ như gối, mền, drap hết sức gọn gàng. Chắc chắn sẽ là sự lựa chọn tối ưu cho không gian phòng ngủ hiện đại. Giườn', '5.jpg', 3),
(6, 'Giường ngủ Miami 1m8 bọc vải Dolce 160', 16915000, 'Giường ngủ bọc vải Miami sử dụng gỗ Sồi trắng nhập khẩu từ Mỹ kết hợp MDF chống ẩm cao cấp tạo nên sự chắc chắn cho sản phẩm. Nhờ vào tone ấm của gỗ, giường Miami mang đến một sự hài hòa, đặc trưng của phong cách nội thất Bắc Âu.', '6.jpg', 3),
(7, 'Giường ngủ bọc da Mây 1m8 Mushroom', 24956000, 'Giường ngủ bọc da Mây là sự kết hợp giữa thân giường chính bằng gỗ tràm, bọc da và nhấn bằng chất liệu mây cho phần đầu giường. Màu sắc trầm giúp không gian phòng ngủ ấm cúng và gần gũi hơn. Giường Mây có 2 kích thước 1m6 và 1m8.', '7.jpg', 3),
(8, 'Giường ngủ Canyon 1m6', 33142500, '', '8.jpg', 3),
(9, 'Bàn nước Miami N202023', 10191500, '', '9.jpg', 2),
(10, 'Bàn nước Mây – 2 Modul', 9103500, 'Một chiếc bàn nước kết hợp nhịp nhàng bởi 2 khối hình khác nhau về độ cao. Bàn nước Mây giúp cho không gian phòng khách trở nên cá tính hơn. Sản phẩm sử dụng chất liệu đã marble cho phần mặt bàn, được bao quanh bởi kết cấu khung gỗ và nhấn nhá với phần ch', '10.jpg', 2),
(11, 'Bàn bên Osaka', 4165000, '', '11.jpg', 2),
(12, 'Bàn bên tròn gỗ', 4472000, '', '12.jpg', 2),
(13, 'Armchair TUDOR VELVET PETROL', 23700000, 'Các sản phẩm nội thất tại Nhà Xinh đa số đều được sản xuất tại nhà máy của công ty cổ phần xây dựng kiến trúc AA với đội ngũ nhân viên và công nhân ưu tú cùng cơ sở vật chất hiện đại ', '13.jpg', 1),
(14, 'Ghế Lazboy Dreamtime 10T554 màu Fern', 38790000, 'Ghế thư giãn thương hiệu nối tiếng Lazboy của Mỹ được làm bằng khung gỗ bọc da, cấu trúc ghế chắc chắn nâng đỡ cơ thể. Khi ngồi tạo cảm giác êm ái thoải mái lắc lư theo nhịp ghế, phần nâng đỡ chân được bật ra, chỉ cần một động tác nhẹ phần tựa lưng sẽ tự ', '14.jpg', 1),
(15, 'Ghế Lazboy Enzo 10T349 – Pebble', 26410000, 'Ghế thư giãn thương hiệu nối tiếng Lazboy của Mỹ được làm bằng khung gỗ bọc da, cấu trúc ghế chắc chắn nâng đỡ cơ thể. Khi ngồi tạo cảm giác êm ái thoải mái lắc lư theo nhịp ghế, phần nâng đỡ chân được bật ra, chỉ cần một động tác nhẹ phần tựa lưng sẽ tự ', '15.jpg', 1),
(16, 'Ghế Lazboy H.Town 10T532 – Cognac', 39080000, 'Ghế thư giãn của thương hiệu nối tiếng Lazboy của Mỹ được làm bằng khung gỗ xà cừ bọc da, cấu trúc ghế chắc chắn nâng đỡ cơ thể ở các trạng thái ngồi và nằm. Ghế thư giãn là sự lựa chọn cho những phút giây thư giãn sau một ngày dài hoạt động', '16.jpg', 1),
(17, 'Ghế Lazboy Rowan 2C.32P765-Black', 70690000, 'Ghế thư giãn thương hiệu nối tiếng Lazboy của Mỹ được làm bằng khung gỗ bọc da, cấu trúc ghế chắc chắn nâng đỡ cơ thể. Khi ngồi tạo cảm giác êm ái thoải mái lắc lư theo nhịp ghế, phần nâng đỡ chân được bật ra, chỉ cần một động tác nhẹ phần tựa lưng sẽ tự ', '17.jpg', 1),
(18, 'Sofa Poppy góc phải vải màu cam', 29360000, '', '18.jpg', 1),
(19, 'Sofa góc trái Rap hiện đại vải vàng', 29360000, 'Sofa góc phải Rap với phần nệm ngồi êm ái, chân sofa sử dụng kim loại bóng sáng không rỉ tạo sự sang trọng. Sofa góc Rap là 1 lựa chọn tối ưu cho không gian phòng khách hiện đại, tiện nghi cho cả gia đình.', '19.jpg', 1),
(20, 'Sofa Tonic 3 chỗ và 2 armchair hiện đại da nâu', 115170000, 'Sofa da Tonic với thiết kế sang trọng. Bộ sofa bao gồm 1 sofa 3 chỗ và 2 armchair một chỗ. Bạn sẽ cảm nhận được sự thoải mái khi ngồi bởi chất liệu da cao cấp và lớp lông vũ bên trong. Sofa da Tonic là 1 lựa chọn tối ưu cho không gian phòng khách hiện đại', '20.jpg', 1),
(21, 'Bench Butterfly Ginkgo 411554', 111345000, '', '21.jpg', 1),
(22, 'Đôn Bridge Gỗ Tự nhiên Da Đen', 19690000, 'Đôn Bridge với phần khung làm bằng gỗ sồi đặc chắn chắn, đường nét bo cong được gia công tỉ mỉ kết hợp nệm ngồi bọc mousse và gòn êm ái, độ bền cao cùng chất da Ý mềm mát sẽ mang đến điểm nhấn độc đáo cho căn phòng. Bridge – Tình yêu thiên nhiên và sức qu', '22.jpg', 1),
(23, 'Ghế Đôn Mây – da Fango', 5800000, 'Là một sản phẩm bổ sung hữu ích cho không gian phòng ngủ và phòng khách. Đôn Mây tạo cảm giác thoải mái với phần nệm ngồi bằng da và nét độc đáo bởi thiết kế uốn cong lạ mắt.', '23.jpg', 1),
(24, 'Ghế Đôn Cherry hoa', 3240000, '', '24.jpg', 1),
(25, 'Ghế Bench Victoria – Vải Iris B1702', 12180000, '', '25.jpg', 1),
(26, 'Ghế Bench Rap', 6780000, '', '26.jpg', 1),
(27, 'Bàn Console Maxine', 28970000, 'Là sản phẩm giúp tăng tiện ích công năng nhưng cũng là nơi để bạn thỏa sức trang trí với các khu vực sát tường hay những góc nhỏ. Bàn console Maxine kết hợp giữa khung bằng kim loại đồng sang trọng và khung gỗ beech hoàn thiện mdf veneer.', '27.jpg', 2),
(28, 'Bàn console Art Marble', 25430000, 'Sản phẩm là sự kết hợp giữa khung kim loại nhuộm màu gold và mặt kính, đặc biệt phần khung được TK khá lạ mắt, mềm mại. Có thể đặt ở sảnh chờ hoặc phòng khách', '28.jpg', 2),
(29, 'Bàn console Osaka KA', 53910000, 'Bàn Console hay còn gọi là bàn trang trí, sản phẩm có thể để những đồ vật như khung ảnh gia đình, các sản phẩm trang trí Sẽ giúp cho những mảng tường trống của nhà bạn trở nên sinh động hơn.', '29.jpg', 2),
(30, 'Bàn console Secrect 83335K', 29360000, 'Bàn Console hay còn gọi là bàn trang trí, sản phẩm có thể để những đồ vật như khung ảnh gia đình, các sản phẩm trang trí Sẽ giúp cho những mảng tường trống của nhà bạn trở nên sinh động hơn.', '30.jpg', 2),
(31, 'Bàn trang điểm chân Inox', 13450000, '', '31.jpg', 2),
(32, 'Bàn trang điểm Mây – Mẫu 2', 24450000, 'Bàn trang điểm Mây mang thiết kế thanh lịch, duyên dáng và có chút nữ tính. Thiết kế bố trí các phần hộc kéo giúp cất trữ đầy đủ các vật dụng trang điểm tối ưu. Những nét bo tròn của gương và khung gỗ giúp tạo nét mềm mại.', '32.jpg', 2),
(33, 'Bàn trang điểm Skagen', 12670000, '', '33.jpg', 2),
(34, 'Bàn trang điểm và đôn Harmony', 11690000, 'Là sự kết hợp của màu trắng tinh khôi với màu gỗ ấm áp trên nền những đường nét thiết kế hiện đại, trang nhã. Bàn trang điểm Harmony được đánh giá rất cao cả về kiểu dáng và công năng. Bàn được làm bằng gỗ tràm kết hợp ván lạng sồi, trước bàn là mặt giươn', '34.jpg', 2),
(35, 'Bàn đầu giường Mây mẫu 2', 5400000, 'Một chiếc bàn nhỏ chứa đựng công năng và cũng rất duyên dáng, thanh lịch cho không gian phòng ngủ. Bàn đầu giường Mây sử dụng chất liệu mây và gỗ tràm. Thiết kế cân đối với phần hộc kéo giúp cất trữ đồ đạc nhỏ.', '35.jpg', 2),
(36, 'Bàn đầu giường Pio', 5400000, 'Một sản phẩm cộng thêm cho phòng ngủ của bạn. Bàn đầu giường Pio giúp tạo điểm nhấn và công năng. Hoàn thiện với màu nâu xám và điểm xuyến với màu ghi tạo tổng thể hài hòa.', '36.jpg', 2),
(39, 'Bàn đầu giường Miami', 7200000, '', '37.jpg', 2),
(40, 'Bàn đầu giường City màu excel', 4860000, 'Bàn đầu giường City với thiết kế đơn giản, tông màu gỗ kết hợp cùng mặt kính sang trọng sẽ là phát huy được cả công năng và tính thẩm mỹ.', '37.jpg', 2),
(41, 'Bàn đầu giường Caren – Grey', 2850000, '', '39.jpg', 2),
(42, 'Bàn đầu giường Melody', 6780000, '', '40.jpg', 2),
(43, 'Giường Osaka 1M8 – Da 506', 61700000, 'Các sản phẩm nội thất tại Nhà Xinh đa số đều được sản xuất tại nhà máy của công ty cổ phần xây dựng kiến trúc AA với đội ngũ nhân viên và công nhân ưu tú cùng cơ sở vật chất hiện đại', '41.jpg', 3),
(44, 'Giường ngủ bọc vải Skagen 1m8', 24450000, 'Giường ngủ bọc vải Skagen 1m8 màu 79267 nổi bật cho phòng ngủ theo phong cách Bắc Âu.', '42.jpg', 3),
(45, 'Giường hộc kéo Penny 1m8\r\n', 15610000, 'Giường hộc kéo Penny 1m8 với điểm nổi bật là bốn ngăn chứa đồ rộng thuận tiện cất những vật dụng trong phòng ngủ như gối, mền, drap hết sức gọn gàng.', '43.jpg', 3),
(46, 'Giường ngủ Miami 1m2 bọc vải Florence', 15290000, 'Giường ngủ bọc vải Miami sử dụng gỗ Sồi trắng nhập khẩu từ Mỹ kết hợp MDF chống ẩm cao cấp tạo nên sự chắc chắn cho sản phẩm.', '43.jpg', 3),
(47, 'Giường ngủ bọc da Mây 1m8', 29360000, 'Giường ngủ bọc da Mây là sự kết hợp giữa thân giường chính bằng gỗ tràm, bọc da và nhấn bằng chất liệu mây cho phần đầu giường. ', '44.jpg', 3),
(48, 'Giường ngủ Canyon 1m6', 44190000, '', '45.jpg', 3),
(51, 'Giường ngủ gỗ Shadow 1m8', 31320000, 'Giường ngủ gỗ Shadow 1m8 là sự kết hợp từ những chất liệu đặc sắc và độ bền cao: ván MDF chống ẩm cao cấp được phủ một lớp gỗ sồi Hitech Veneer cùng với phần chân sắt làm từ hợp kim thép.', '46.jpg', 3),
(52, 'Giường ngủ gỗ Maxine 1m6', 31910000, 'Giường ngủ gỗ Maxine 1m6 với đường nét thiết kế đến điểm nhấn đều hài hòa và đều rất giá trị. ', '47.jpg', 3),
(53, 'Giường ngủ bọc vải Pio 1m8', 26410000, 'Giường ngủ bọc vải Pio 1m8 màu 10/WV094 được thiết kế bọc vải hoàn toàn với khung gỗ beech chắc chắn.', '48.jpg', 3),
(54, 'Giường ngủ bọc vải Pop 1m8', 26410000, 'Giường ngủ bọc vải Pop 1m8 silve sử dụng nét đẹp đường vân gỗ cuộn xoáy đặc trưng, thể hiện trên tông màu nâu trầm ấm đầy sang trọng.', '49.jpg', 3),
(57, 'Giường ngủ bọc da Lạc Viên 1m6', 31320000, 'Giường ngủ bọc vải Lạc Viên 1m6 nâu với màu trắng nhẹ nhàng. Mang phong cách hiện đại, giường Lạc Viên được làm bằng khung gỗ xà cừ bọc da công nghiệp cao cấp, tạo điểm nhấn bởi các đường cong ở phần đầu giường.', '50.jpg', 3),
(58, 'Giường ngủ bọc vải Lạc Viên 1m8', 34270000, 'Giường ngủ bọc vải Lạc Viên 1m8 màu 63860 với màu trắng nhẹ nhàng. Mang phong cách hiện đại, giường Lạc Viên được làm bằng khung gỗ xà cừ bọc da công nghiệp cao cấp, tạo điểm nhấn bởi các đường cong ở phần đầu giường.', '51.jpg', 3),
(59, 'Giường ngủ gỗ Bụi 1m6', 16600000, 'Giường ngủ gỗ Bụi 1m6 là một thiết kế độc đáo và mới lạ cho không gian phòng khách cá tính, yêu thích sự tự do.', '52.jpg', 3),
(60, 'Giường ngủ bọc vải Leman 1m8', 4267000, 'Giường ngủ bọc vải Leman 1m8 màu 02', '53.jpg', 3),
(61, 'Giường ngủ bọc vải Blue 1m6', 35640000, 'Giường ngủ bọc vải Blue 1m6 xanh được làm bằng gỗ Sồi đánh cước, phần đầu giường bọc vải hoa văn cao cấp mang lại cảm giác nhẹ nhàng và thư giãn. Giường Blue là một lựa chọn sáng giá cho không gian phòng ngủ của gia đình bạn.', '54.jpg', 3),
(62, 'Giường ngủ gỗ Victoria 1m6', 28380000, 'Giường ngủ gỗ Victoria 1m6 với màu trắng nhẹ nhàng, tạo một không gian trang nhã và tinh tế với các hoa văn chạm khắc mang phong cách cổ điển phương Tây.', '55.jpg', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slides`
--

CREATE TABLE `slides` (
  `id` int(11) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `slides`
--

INSERT INTO `slides` (`id`, `img`) VALUES
(1, '1.jpg'),
(2, '2.jpg'),
(3, '3.jpg'),
(4, '4.jpg'),
(5, '5.jpg'),
(6, '6.jpg'),
(7, '7.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(11) NOT NULL,
  `user` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `user`, `password`, `username`, `address`) VALUES
(1, 'phonghoai1512@gmail.com', '$2a$12$xcjk3OjGDDHvd17KKEzuQuHCeQjAKRqXHBzC9PnEa9uTTF1lCZdhC', 'Dang Hoai Phong', 'áº¤p 3 xÃ£ trung an'),
(7, 'abc@gmail.com', '$2a$12$kIWCNYJ0N0ehtdWETxX74uy4TO9z5Ih8nAVqc4rTOxLF3z24rTELi', 'phong hoai', '');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `billdetail`
--
ALTER TABLE `billdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_bills` (`id_bills`);

--
-- Chỉ mục cho bảng `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `billdetail`
--
ALTER TABLE `billdetail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `bills`
--
ALTER TABLE `bills`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `billdetail`
--
ALTER TABLE `billdetail`
  ADD CONSTRAINT `billdetail_ibfk_4` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `billdetail_ibfk_5` FOREIGN KEY (`id_bills`) REFERENCES `bills` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
