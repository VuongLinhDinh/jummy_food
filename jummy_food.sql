-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2023 at 03:50 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jummy_food`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'admin', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2'),
(3, 'admin02', '40bd001563085fc35165329ea1ff5c5ecbdbbeef');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(14, 3, 2, 'chezzy burger 01', 10, 4, 'burger-1.png'),
(24, 2, 5, 'cold drink 01', 15, 1, 'drink-1.png');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(1, 2, 'Vuong dinh linh', 'linhvdph38932@fpt.edu.vn', '0971207241', 'Hương vị truyền thống, nước dùng đậm đà, và bò viên mềm mịn. Một bữa sáng tuyệt vời'),
(2, 0, 'Vuong dinh linh', 'vuongdinhlinh1412@gmail.com', '0971207241', 'Sushi tươi ngon, sashimi cắt mỏng vừa, tạo nên một trải nghiệm ẩm thực tuyệt vời'),
(3, 3, 'kunkun', 'vuongdinhlinh1412@gmail.com', '0988754715', 'Sushi tươi ngon, sashimi cắt mỏng vừa, tạo nên một trải nghiệm ẩm thực tuyệt vời'),
(4, 3, 'Nguyễn Xuân Trường', 'xuantruong2004@gmail.com', '0987554623', 'Mỳ hải sản áp chảo ở đây không chỉ thơm ngon mà còn đầy ắp các loại hải sản tươi ngon. Một bữa ăn đặc sắc!'),
(5, 3, 'Vương Thị Trang', 'trangsadgirl@gmail.com', '0972116559', 'Pizza Gorgonzola với nho khô tại Jummy-Food kết hợp giữa vị ngon của phô mai và hương thơm đặc trưng của nho khô.'),
(6, 2, 'Vân Anh', 'anhhtph38911@fpt.edu.vn', '0973473471', 'Hương vị truyền thống, nước dùng đậm đà');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(1, 2, 'kunkun', '0971207241', 'linhvdph38932@fpt.edu.vn', 'credit card', '18., lotte plaza, Thanh Xuân, lotte, Hà Nội, Nguyễn Trãi, Việt Nam - 01266', 'main dishes 01 (5 x 1) - main dish 02 (20 x 1) - cold drink 01 (15 x 1) - ', 40, '2023-11-21', 'completed'),
(2, 2, 'kunkun', '0971207241', 'linhvdph38932@fpt.edu.vn', 'cash on delivery', '18., lotte plaza, Thanh Xuân, lotte, Hà Nội, Nguyễn Trãi, Việt Nam - 01266', 'delicious dessert 01 (5 x 7) - delicious pizza 01 (30 x 4) - ', 155, '2023-11-21', 'pending'),
(3, 2, 'kunkun', '0971207241', 'linhvdph38932@fpt.edu.vn', 'credit card', '18., lotte plaza, Thanh Xuân, lotte, Hà Nội, Nguyễn Trãi, Việt Nam - 01266', 'chezzy burger 01 (10 x 6) - ', 60, '2023-11-21', 'completed'),
(4, 2, 'kunkun', '0971207241', 'linhvdph38932@fpt.edu.vn', 'credit card', '18., lotte plaza, Thanh Xuân, lotte, Hà Nội, Nguyễn Trãi, Việt Nam - 01266', 'main dishes 01 (5 x 6) - main dish 02 (20 x 1) - ', 50, '2023-11-23', 'pending'),
(5, 2, 'kunkun', '0971207241', 'linhvdph38932@fpt.edu.vn', 'cash on delivery', '18., lotte plaza, Thanh Xuân, lotte, Hà Nội, Nguyễn Trãi, Việt Nam - 01266', 'delicious dessert 01 (5 x 1) - ', 5, '2023-11-26', 'pending'),
(6, 3, 'vuong dinh linh', '0968578471', 'vuongdinhlinh1412@gmail.com', 'credit card', 'A ad ducimus esse pariatur Qui excepteur officia, Perspiciatis unde et dolore dolorem facere in fug, Asperiores non nostrum hic incidunt reprehenderit, Qui qui aperiam et molestiae cillum sunt labore e, Delectus ex quibusdam id ea at nobis earum, Ipsum do enim ut iusto est, Dolor quis at dolore praesentium omnis aut alias m - 632157', 'chezzy burger 01 (10 x 6) - ', 60, '2023-12-02', 'pending'),
(7, 3, 'vuong dinh linh', '0968578471', 'vuongdinhlinh1412@gmail.com', 'credit card', 'A ad ducimus esse pariatur Qui excepteur officia, Perspiciatis unde et dolore dolorem facere in fug, Asperiores non nostrum hic incidunt reprehenderit, Qui qui aperiam et molestiae cillum sunt labore e, Delectus ex quibusdam id ea at nobis earum, Ipsum do enim ut iusto est, Dolor quis at dolore praesentium omnis aut alias m - 632157', 'main dishes 01 (5 x 1) - ', 5, '2023-12-05', 'pending'),
(8, 2, 'kunkun', '0971207241', 'linhvdph38932@fpt.edu.vn', 'VN pay', '18., lotte plaza, Thanh Xuân, lotte, Hà Nội, Nguyễn Trãi, Việt Nam - 01266', 'main dishes 01 (5 x 1) - chezzy burger 01 (10 x 2) - ', 25, '2023-12-07', 'pending'),
(10, 2, 'kunkun', '0971207241', 'linhvdph38932@fpt.edu.vn', 'VN pay', '18., lotte plaza, Thanh Xuân, lotte, Hà Nội, Nguyễn Trãi, Việt Nam - 01266', 'chezzy burger 01 (10 x 1) - ', 10, '2023-12-07', 'pending'),
(11, 2, 'kunkun', '0971207241', 'linhvdph38932@fpt.edu.vn', 'cash on delivery', '18., lotte plaza, Thanh Xuân, lotte, Hà Nội, Nguyễn Trãi, Việt Nam - 01266', 'main dish 02 (20 x 1) - ', 20, '2023-12-07', 'pending'),
(12, 2, 'kunkun', '0971207241', 'linhvdph38932@fpt.edu.vn', 'VN pay', '18., lotte plaza, Thanh Xuân, lotte, Hà Nội, Nguyễn Trãi, Việt Nam - 01266', 'delicious pizza 01 (30 x 1) - ', 30, '2023-12-07', 'pending'),
(13, 2, 'kunkun', '0971207241', 'linhvdph38932@fpt.edu.vn', 'VN pay', '18., lotte plaza, Thanh Xuân, lotte, Hà Nội, Nguyễn Trãi, Việt Nam - 01266', 'main dishes 01 (15 x 1) - ', 15, '2023-12-07', 'pending'),
(14, 2, 'kunkun', '0971207241', 'linhvdph38932@fpt.edu.vn', 'VN pay', '18., lotte plaza, Thanh Xuân, lotte, Hà Nội, Nguyễn Trãi, Việt Nam - 01266', 'delicious dessert 01 (5 x 1) - ', 5, '2023-12-07', 'pending'),
(15, 2, 'kunkun', '0971207241', 'linhvdph38932@fpt.edu.vn', 'VN pay', '18., lotte plaza, Thanh Xuân, lotte, Hà Nội, Nguyễn Trãi, Việt Nam - 01266', 'delicious dessert 01 (5 x 1) - delicious pizza 01 (30 x 1) - ', 35, '2023-12-07', 'pending'),
(16, 2, 'kunkun', '0971207241', 'linhvdph38932@fpt.edu.vn', 'VN pay', '18., lotte plaza, Thanh Xuân, lotte, Hà Nội, Nguyễn Trãi, Việt Nam - 01266', 'cold drink 01 (15 x 1) - ', 15, '2023-12-07', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `price`, `image`) VALUES
(2, 'chezzy burger 01', 'fast food', 10, 'burger-1.png'),
(3, 'main dishes 01', 'main dish', 15, 'dish-1.png'),
(4, 'delicious dessert 01', 'desserts', 5, 'dessert-2.png'),
(5, 'cold drink 01', 'drinks', 15, 'drink-1.png'),
(6, 'delicious pizza 01', 'fast food', 30, 'pizza-1.png'),
(7, 'main dish 02', 'main dish', 20, 'dish-2.png'),
(8, 'Animal Style Fries (In-N-Out Burger)', 'fast food', 32, 'burger-2.png'),
(9, 'Loaded Nachos (Various Chains)', 'fast food', 15, 'home-img-2.png'),
(11, 'Japanese Mochi Delicious(less sweet)', 'desserts', 30, 'dessert-8.png'),
(12, 'delicious dessert 02', 'desserts', 10, 'dessert-5.png'),
(13, 'delicious dessert 03', 'desserts', 10, 'dessert-6.png'),
(14, 'cold drink 02', 'drinks', 12, 'drink-3.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `number`, `password`, `address`) VALUES
(2, 'kunkun', 'linhvdph38932@fpt.edu.vn', '0971207241', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '18., lotte plaza, Thanh Xuân, lotte, Hà Nội, Nguyễn Trãi, Việt Nam - 01266'),
(3, 'Shoshana Morgan', 'qami@mailinator.com', '536', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'Soluta ad expedita deserunt omnis eum molestias en, Voluptas magna obcaecati illo pariatur Minima tem, In eius eveniet cupiditate eum rerum dignissimos , Aliquid autem amet voluptatem labore quia error c, Do corrupti officiis nihil neque architecto facer, Non amet non quos incidunt labore nemo labore re, Minim accusamus eligendi sit quod alias error non - 286813');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
