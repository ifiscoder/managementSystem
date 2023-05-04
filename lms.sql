-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2023 at 07:25 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(1, 'kasishsingh619@gmail.com', '025db420560617303c2ba988d050ec62562343bc0fb0358d31d2f0bae8dbede8');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `desc` longtext NOT NULL,
  `author` varchar(255) NOT NULL,
  `availability` tinyint(1) NOT NULL,
  `edition` varchar(255) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `name`, `desc`, `author`, `availability`, `edition`, `count`) VALUES
(1, '101 Ways To Be A Software Engineer', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut repudiandae assumenda distinctio quas tempore, voluptatibus accusamus dolores temporibus, recusandae eligendi similique. Optio, eius? Sint vel nemo, quisquam architecto fugit odio!', 'Mr. Johnny Test', 1, '1', 3),
(2, 'JAVA For Absolute Beginners', 'Step into the basics of java programmming along with globally famed programmer', '', 1, '1', 5),
(3, 'Learning Python', 'Master the fundamentals of Python programming', 'Mark Lutz', 1, '5', 10),
(4, 'The Pragmatic Programmer', 'From Journeyman to Master', 'Andrew Hunt and David Thomas', 1, '2', 7),
(5, 'Clean Code', 'A Handbook of Agile Software Craftsmanship', 'Robert C. Martin', 1, '1', 12),
(6, 'Code Complete', 'A Practical Handbook of Software Construction', 'Steve McConnell', 1, '2', 8),
(7, 'Head First Design Patterns', 'A Brain-Friendly Guide', 'Eric Freeman, Elisabeth Freeman, Kathy Sierra, and Bert Bates', 1, '1', 6),
(8, 'Design Patterns: Elements of Reusable Object-Oriented Software', 'Gang of Four book', 'Erich Gamma, Richard Helm, Ralph Johnson, and John Vlissides', 1, '1', 4),
(9, 'Introduction to Algorithms', 'The Bible of Algorithms', 'Thomas H. Cormen, Charles E. Leiserson, Ronald L. Rivest, and Clifford Stein', 1, '3', 3),
(10, 'Computer Networks', 'A Top-Down Approach', 'James F. Kurose and Keith W. Ross', 1, '7', 2),
(11, 'The Mythical Man-Month', 'Essays on Software Engineering', 'Frederick P. Brooks Jr.', 1, '2', 9),
(12, 'Code', 'The Hidden Language of Computer Hardware and Software', 'Charles Petzold', 1, '1', 11),
(13, 'Structure and Interpretation of Computer Programs', 'Classic computer science textbook', 'Harold Abelson and Gerald Jay Sussman', 1, '2', 7),
(14, 'Don\'t Make Me Think', 'A Common Sense Approach to Web Usability', 'Steve Krug', 1, '3', 6),
(15, 'The C Programming Language', 'The Bible of C Programming', 'Brian Kernighan and Dennis Ritchie', 1, '2', 4),
(16, 'Agile Estimating and Planning', 'Techniques for Estimating and Planning Agile Projects', 'Mike Cohn', 1, '1', 5),
(17, 'Refactoring: Improving the Design of Existing Code', 'Improving the Design of Existing Code', 'Martin Fowler', 1, '2', 8),
(18, 'The Art of Computer Programming', 'The Art of Computer Programming, Vol. 1: Fundamental Algorithms', 'Donald E. Knuth', 1, '3', 3),
(19, 'Effective C++', '55 Specific Ways to Improve Your Programs and Designs', 'Scott Meyers', 1, '3', 2),
(20, 'Cracking the Coding Interview', '189 Programming Questions and Solutions', 'Gayle Laakmann McDowell', 1, '6', 1),
(21, 'Clean Architecture', 'A Craftsman\'s Guide to Software Structure and Design', 'Robert C. Martin', 1, '1', 5);

-- --------------------------------------------------------

--
-- Table structure for table `reserve`
--

CREATE TABLE `reserve` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `reserve`
--

INSERT INTO `reserve` (`id`, `user_id`, `book_id`) VALUES
(1, 1, 1),
(2, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `bio` longtext NOT NULL,
  `mob` varchar(255) NOT NULL,
  `lock` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `bio`, `mob`, `lock`, `created_at`) VALUES
(1, 'Hamza', 'hamza@gmail.com', '025db420560617303c2ba988d050ec62562343bc0fb0358d31d2f0bae8dbede8', 'They watch you from the shelf while you sleep 👀. Are you dreaming of them, they wonder, in that wistful mood books are prone to at night when they’re bored and there’s nothing else to do but tease the cat.?', '', 0, '2021-11-09 00:00:00'),
(6, 'Naveed Ali', 'naveed@gmail.com', '025db420560617303c2ba988d050ec62562343bc0fb0358d31d2f0bae8dbede8', 'Hi :)! Long time no see ❤️', '', 0, '2021-11-18 23:07:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reserve`
--
ALTER TABLE `reserve`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `reserve`
--
ALTER TABLE `reserve`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
