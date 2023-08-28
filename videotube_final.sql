-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2023 at 01:37 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `videotube`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Film & Animation'),
(2, 'Auto & Vehicles'),
(3, 'Music'),
(4, 'Pets & Animals'),
(5, 'Sports'),
(6, 'Travel & Events'),
(7, 'Gaming'),
(8, 'People & Blogs'),
(9, 'Comedy'),
(10, 'Entertainment'),
(11, 'News & Politics'),
(12, 'Howto & Style'),
(13, 'Education'),
(14, 'Science & Technology'),
(15, 'Nonprofits & Activism');

-- --------------------------------------------------------

--
-- Table structure for table `commentdislikes`
--

CREATE TABLE `commentdislikes` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `commentid` int(11) NOT NULL,
  `videoid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `commentlikes`
--

CREATE TABLE `commentlikes` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `commentid` int(11) NOT NULL,
  `videoid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `postedBy` varchar(50) NOT NULL,
  `videoid` int(11) NOT NULL,
  `responseTo` int(11) NOT NULL,
  `body` text NOT NULL,
  `datePosted` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `postedBy`, `videoid`, `responseTo`, `body`, `datePosted`) VALUES
(1, 'Suhas42', 6, 0, 'testing', '2023-08-25 21:08:53'),
(2, 'Suhas042', 6, 1, 'testing', '2023-08-25 21:19:34');

-- --------------------------------------------------------

--
-- Table structure for table `dislikes`
--

CREATE TABLE `dislikes` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `commentid` int(11) NOT NULL,
  `videoid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `commentid` int(11) NOT NULL,
  `videoid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `username`, `commentid`, `videoid`) VALUES
(1, 'Suhas42', 0, 5),
(2, 'Suhas42', 0, 6),
(3, 'Suhas042', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL,
  `userTo` varchar(50) NOT NULL,
  `userFrom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `userTo`, `userFrom`) VALUES
(1, 'Suhas42', 'Suhas042');

-- --------------------------------------------------------

--
-- Table structure for table `thumbnails`
--

CREATE TABLE `thumbnails` (
  `id` int(11) NOT NULL,
  `videoid` int(11) NOT NULL,
  `filePath` varchar(250) NOT NULL,
  `selected` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `thumbnails`
--

INSERT INTO `thumbnails` (`id`, `videoid`, `filePath`, `selected`) VALUES
(1, 5, 'uploads/videos/thumbnails/5-64e8c32794b26.jpg', 1),
(2, 5, 'uploads/videos/thumbnails/5-64e8c328034b0.jpg', 0),
(3, 5, 'uploads/videos/thumbnails/5-64e8c328afc84.jpg', 0),
(4, 6, 'uploads/videos/thumbnails/6-64e8c3dcd02c4.jpg', 1),
(5, 6, 'uploads/videos/thumbnails/6-64e8c3df2b73e.jpg', 0),
(6, 6, 'uploads/videos/thumbnails/6-64e8c3e3ad8a4.jpg', 0),
(7, 7, 'uploads/videos/thumbnails/7-64e9e7e74e488.jpg', 1),
(8, 7, 'uploads/videos/thumbnails/7-64e9e7e785724.jpg', 0),
(9, 7, 'uploads/videos/thumbnails/7-64e9e7e7ca7aa.jpg', 0),
(10, 8, 'uploads/videos/thumbnails/8-64e9e94b77180.jpg', 1),
(11, 8, 'uploads/videos/thumbnails/8-64e9e94bb9361.jpg', 0),
(12, 8, 'uploads/videos/thumbnails/8-64e9e94c1d0a0.jpg', 0),
(13, 9, 'uploads/videos/thumbnails/9-64e9ea0f5807e.jpg', 1),
(14, 9, 'uploads/videos/thumbnails/9-64e9ea0fa167b.jpg', 0),
(15, 9, 'uploads/videos/thumbnails/9-64e9ea101b57b.jpg', 0),
(16, 10, 'uploads/videos/thumbnails/10-64e9ea6b26680.jpg', 1),
(17, 10, 'uploads/videos/thumbnails/10-64e9ea6b85d4a.jpg', 0),
(18, 10, 'uploads/videos/thumbnails/10-64e9ea6c2824c.jpg', 0),
(19, 11, 'uploads/videos/thumbnails/11-64e9eac2aa5e5.jpg', 1),
(20, 11, 'uploads/videos/thumbnails/11-64e9eac2ddb56.jpg', 0),
(21, 11, 'uploads/videos/thumbnails/11-64e9eac332f9d.jpg', 0),
(22, 12, 'uploads/videos/thumbnails/12-64e9eb2cdfc17.jpg', 1),
(23, 12, 'uploads/videos/thumbnails/12-64e9eb2d1b005.jpg', 0),
(24, 12, 'uploads/videos/thumbnails/12-64e9eb2d64393.jpg', 0),
(25, 13, 'uploads/videos/thumbnails/13-64e9eb9b2e3de.jpg', 1),
(26, 13, 'uploads/videos/thumbnails/13-64e9eb9b68c43.jpg', 0),
(27, 13, 'uploads/videos/thumbnails/13-64e9eb9bb9876.jpg', 0),
(28, 14, 'uploads/videos/thumbnails/14-64e9ec1dc69ac.jpg', 1),
(29, 14, 'uploads/videos/thumbnails/14-64e9ec1e05ebc.jpg', 0),
(30, 14, 'uploads/videos/thumbnails/14-64e9ec1e4f5fe.jpg', 0),
(31, 15, 'uploads/videos/thumbnails/15-64ec80e664021.jpg', 1),
(32, 15, 'uploads/videos/thumbnails/15-64ec80e6d0ea9.jpg', 0),
(33, 15, 'uploads/videos/thumbnails/15-64ec80e7ab466.jpg', 0),
(34, 16, 'uploads/videos/thumbnails/16-64ec816325168.jpg', 1),
(35, 16, 'uploads/videos/thumbnails/16-64ec8163dc614.jpg', 0),
(36, 16, 'uploads/videos/thumbnails/16-64ec81655ef76.jpg', 0),
(37, 17, 'uploads/videos/thumbnails/17-64ec81e8b37e8.jpg', 1),
(38, 17, 'uploads/videos/thumbnails/17-64ec81e8eab50.jpg', 0),
(39, 17, 'uploads/videos/thumbnails/17-64ec81e9476c5.jpg', 0),
(40, 18, 'uploads/videos/thumbnails/18-64ec82657ce7d.jpg', 1),
(41, 18, 'uploads/videos/thumbnails/18-64ec8265d15c1.jpg', 0),
(42, 18, 'uploads/videos/thumbnails/18-64ec8266700ef.jpg', 0),
(43, 19, 'uploads/videos/thumbnails/19-64ec82aac83af.jpg', 1),
(44, 19, 'uploads/videos/thumbnails/19-64ec82ab49936.jpg', 0),
(45, 19, 'uploads/videos/thumbnails/19-64ec82ac2a1a6.jpg', 0),
(46, 20, 'uploads/videos/thumbnails/20-64ec82f4b5137.jpg', 1),
(47, 20, 'uploads/videos/thumbnails/20-64ec82f4ec763.jpg', 0),
(48, 20, 'uploads/videos/thumbnails/20-64ec82f54cc3a.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstName` varchar(25) NOT NULL,
  `lastName` varchar(25) NOT NULL,
  `username` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `signUpDate` datetime NOT NULL DEFAULT current_timestamp(),
  `profilePic` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `username`, `email`, `password`, `signUpDate`, `profilePic`) VALUES
(1, 'Suhas', 'Nagireddy', 'Suhas42', 'suhasreddy1234@gmail.com', '3d2ddd8fc6ddfcb4e0e4804896308f4469b3e6d59cd039fbff3263e3a6302409986feabdaa6b965c6f82a4af9e3cb5e2275603e906113a76f5c59ab083eeff7b', '2023-08-25 20:23:33', 'assets/images/profilePictures/default.png'),
(2, 'Suhas', 'Reddy', 'Suhas042', 'tester@gmail.com', '3d2ddd8fc6ddfcb4e0e4804896308f4469b3e6d59cd039fbff3263e3a6302409986feabdaa6b965c6f82a4af9e3cb5e2275603e906113a76f5c59ab083eeff7b', '2023-08-25 21:19:07', 'assets/images/profilePictures/default.png'),
(3, 'Suhas', 'Reddy', 'Suhas14', 'lol@gmail.com', '3d2ddd8fc6ddfcb4e0e4804896308f4469b3e6d59cd039fbff3263e3a6302409986feabdaa6b965c6f82a4af9e3cb5e2275603e906113a76f5c59ab083eeff7b', '2023-08-27 13:51:43', 'assets/images/profilePictures/default.png');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `uploadedBy` varchar(50) NOT NULL,
  `title` varchar(70) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `privacy` int(11) NOT NULL DEFAULT 0,
  `filePath` varchar(250) NOT NULL,
  `category` int(11) NOT NULL DEFAULT 0,
  `uploadDate` datetime NOT NULL DEFAULT current_timestamp(),
  `views` int(11) NOT NULL DEFAULT 0,
  `duration` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `uploadedBy`, `title`, `description`, `privacy`, `filePath`, `category`, `uploadDate`, `views`, `duration`) VALUES
(5, 'Suhas42', 'Leon Can\'t Spell', 'A Resident Evil parody of T-R-E-A-T meme', 1, 'uploads/videos/64e8c322d778d.mp4', 7, '2023-08-25 20:35:06', 8, '01:00'),
(6, 'Suhas42', 'Tower of Hanoi', 'Recursion', 1, 'uploads/videos/64e8c3ce194b4.mp4', 13, '2023-08-25 20:37:58', 13, '04:13'),
(7, 'Suhas42', 'dog', 'a dog playing on a beach', 1, 'uploads/videos/64e9e7e17848c.mp4', 4, '2023-08-26 17:24:09', 2, '00:05'),
(8, 'Suhas42', 'car', 'a car moving through a city', 1, 'uploads/videos/64e9e946a895a.mp4', 2, '2023-08-26 17:30:06', 1, '00:08'),
(9, 'Suhas42', 'table tennis', 'people playing table tennis', 1, 'uploads/videos/64e9ea0a4f0e6.mp4', 5, '2023-08-26 17:33:22', 1, '00:09'),
(10, 'Suhas42', 'ice hockey', 'people playing ice hockey', 1, 'uploads/videos/64e9ea62730be.mp4', 5, '2023-08-26 17:34:50', 1, '00:13'),
(11, 'Suhas42', 'goldfish', 'a goldfish learning how to swim', 1, 'uploads/videos/64e9eabe14e57.mp4', 4, '2023-08-26 17:36:22', 0, '00:05'),
(12, 'Suhas42', 'swimming', 'people swimming', 1, 'uploads/videos/64e9eb29a4d58.mp4', 8, '2023-08-26 17:38:09', 1, '00:09'),
(13, 'Suhas42', 'Ducks', 'a lot of ducks', 1, 'uploads/videos/64e9eb9646935.mp4', 4, '2023-08-26 17:39:58', 0, '00:05'),
(14, 'Suhas42', 'a person playing guitar', 'guitar hero', 1, 'uploads/videos/64e9ec1a5c516.mp4', 3, '2023-08-26 17:42:10', 0, '00:10'),
(15, 'Suhas14', 'Time Lapse of Shooting Star Burning in the Sky (Oct, 2017)', 'SONG Gentle Winds\r\nARTIST Ethan Sloan', 1, 'uploads/videos/64ec80dd6d812.mp4', 1, '2023-08-28 16:41:25', 0, '01:06'),
(16, 'Suhas14', 'The Karate Kid deleted Ending Mr.HAN vs Master LI', 'Watch the deleted Final Fight in the movie karate kid 2010!', 1, 'uploads/videos/64ec81543a683.mp4', 1, '2023-08-28 16:43:24', 0, '03:04'),
(17, 'Suhas14', 'Sunset timelapse in just 10 seconds', 'Sunset in just 10 seconds (About 14 minutes). Also, airplanes are landing nearby and you can catch a glimpse of them in the video', 1, 'uploads/videos/64ec81e46efec.mp4', 14, '2023-08-28 16:45:48', 0, '00:10'),
(18, 'Suhas14', 'Midnight Sun in the Arctic (Time-Lapse)', 'The summer sun never sets on Toolik Field Station in the Alaskan Arctic. This time-lapse was taken from 8:31 PM to 7:53 AM on June 15-16, 2019, facing south toward Toolik Lake.', 1, 'uploads/videos/64ec825fb74e6.mp4', 14, '2023-08-28 16:47:51', 0, '00:34'),
(19, 'Suhas14', 'Jewels of the night sky: time-lapse video, Chile - Nikon D810A', 'Sit back and enjoy this time-lapse video', 1, 'uploads/videos/64ec82a007a19.mp4', 1, '2023-08-28 16:48:56', 0, '00:34'),
(20, 'Suhas14', '10 SECONDS VIDEO CLIP', 'view from afar', 1, 'uploads/videos/64ec82f1122fd.mp4', 10, '2023-08-28 16:50:17', 0, '00:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commentdislikes`
--
ALTER TABLE `commentdislikes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commentlikes`
--
ALTER TABLE `commentlikes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dislikes`
--
ALTER TABLE `dislikes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thumbnails`
--
ALTER TABLE `thumbnails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `commentdislikes`
--
ALTER TABLE `commentdislikes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `commentlikes`
--
ALTER TABLE `commentlikes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dislikes`
--
ALTER TABLE `dislikes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `thumbnails`
--
ALTER TABLE `thumbnails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
