-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2023 at 07:26 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `anodize`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_suhu`
--

CREATE TABLE `data_suhu` (
  `id` int(11) NOT NULL,
  `waktu` date NOT NULL,
  `time` time NOT NULL,
  `suhu1` varchar(50) NOT NULL,
  `suhu2` varchar(50) NOT NULL,
  `suhu3` varchar(100) NOT NULL,
  `suhu4` varchar(100) NOT NULL,
  `suhu5` varchar(100) NOT NULL,
  `suhu6` varchar(100) NOT NULL,
  `suhu7` varchar(100) NOT NULL,
  `suhu8` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_suhu`
--

INSERT INTO `data_suhu` (`id`, `waktu`, `time`, `suhu1`, `suhu2`, `suhu3`, `suhu4`, `suhu5`, `suhu6`, `suhu7`, `suhu8`) VALUES
(2497, '2019-02-14', '22:25:26', '90', '90', '90', '90', '90', '90', '90', '90'),
(2498, '2019-02-14', '22:25:31', '90', '90', '90', '90', '90', '90', '90', '90'),
(2499, '2019-02-14', '22:25:37', '90', '90', '90', '90', '90', '90', '90', '90'),
(2500, '2019-02-14', '22:25:42', '90', '90', '90', '90', '90', '90', '90', '90'),
(2501, '2019-02-14', '22:25:47', '90', '90', '90', '90', '90', '90', '90', '90'),
(2502, '2019-02-14', '22:25:53', '90', '90', '90', '90', '90', '90', '90', '90'),
(2503, '2019-02-14', '22:25:58', '90', '90', '90', '90', '90', '90', '90', '90'),
(2504, '2019-02-14', '22:26:03', '90', '90', '90', '90', '90', '90', '90', '90'),
(2505, '2019-02-15', '08:11:00', '40', '36', '24', '22', '48', '54', '28', '33'),
(2506, '2019-02-15', '08:11:11', '40', '35', '24', '22', '48', '54', '28', '33'),
(2511, '2019-02-15', '08:15:32', '40', '36', '24', '22', '47', '54', '28', '33'),
(2512, '2019-02-15', '08:15:40', '40', '36', '24', '23', '47', '54', '28', '33'),
(2513, '2019-02-15', '08:15:47', '40', '36', '24', '23', '47', '54', '29', '33'),
(2514, '2019-02-15', '08:15:55', '40', '36', '24', '23', '48', '54', '28', '33'),
(2515, '2019-02-15', '08:16:03', '40', '35', '24', '23', '47', '54', '28', '33'),
(2516, '2019-02-15', '08:17:07', '40', '36', '24', '23', '47', '54', '28', '33'),
(2517, '2019-02-15', '08:18:10', '40', '36', '24', '23', '47', '54', '28', '33'),
(2518, '2019-02-15', '08:19:13', '40', '36', '24', '23', '47', '54', '28', '33'),
(2519, '2019-02-15', '08:20:16', '40', '36', '24', '23', '47', '54', '28', '34'),
(2520, '2019-02-15', '08:21:19', '40', '36', '24', '23', '47', '54', '28', '33'),
(2521, '2019-02-15', '08:22:22', '39', '36', '23', '23', '47', '54', '29', '34'),
(2522, '2019-02-15', '08:23:26', '39', '36', '24', '23', '47', '54', '28', '34'),
(2523, '2019-02-15', '08:24:29', '39', '36', '24', '23', '47', '55', '29', '34'),
(2524, '2019-02-15', '08:25:37', '39', '36', '23', '23', '47', '55', '29', '34'),
(2525, '2019-02-15', '08:26:43', '39', '36', '23', '23', '46', '55', '28', '34'),
(2526, '2019-02-15', '08:27:49', '39', '36', '23', '23', '46', '55', '29', '34'),
(2527, '2019-02-15', '08:28:52', '39', '36', '23', '23', '46', '55', '28', '34'),
(2528, '2019-02-15', '08:29:56', '39', '36', '23', '23', '46', '55', '28', '34'),
(2529, '2019-02-15', '08:30:59', '39', '36', '23', '23', '46', '55', '28', '34'),
(2530, '2019-02-15', '08:32:03', '39', '36', '23', '23', '46', '55', '28', '34'),
(2531, '2019-02-15', '08:33:07', '39', '36', '23', '23', '46', '55', '28', '34'),
(2532, '2019-02-15', '08:34:10', '39', '36', '23', '23', '46', '55', '28', '34'),
(2533, '2019-02-15', '08:35:13', '39', '36', '23', '23', '46', '55', '29', '34'),
(2534, '2019-02-15', '08:36:16', '39', '35', '23', '23', '46', '55', '29', '34'),
(2535, '2019-02-15', '08:37:19', '39', '34', '23', '23', '46', '55', '29', '34'),
(2536, '2019-02-15', '08:38:23', '39', '33', '23', '23', '46', '55', '29', '34'),
(2537, '2019-02-15', '08:39:27', '39', '32', '23', '23', '46', '55', '29', '34'),
(2538, '2019-02-15', '08:40:31', '37', '32', '23', '22', '45', '55', '29', '34'),
(2539, '2019-02-15', '08:41:34', '36', '32', '23', '-127', '45', '55', '29', '34'),
(2540, '2019-02-15', '08:42:37', '36', '32', '23', '22', '45', '55', '29', '34'),
(2541, '2019-02-15', '08:43:40', '36', '33', '23', '22', '45', '55', '29', '34'),
(2542, '2019-02-15', '08:44:43', '36', '33', '23', '22', '45', '55', '29', '34'),
(2543, '2019-02-15', '08:45:46', '36', '33', '23', '22', '45', '55', '29', '34'),
(2544, '2019-02-15', '08:46:49', '37', '33', '23', '22', '45', '55', '29', '34'),
(2545, '2019-02-15', '08:47:52', '37', '33', '23', '22', '45', '55', '29', '34'),
(2546, '2019-02-15', '08:48:56', '37', '33', '23', '22', '45', '55', '29', '34'),
(2547, '2019-02-15', '08:50:00', '38', '33', '23', '22', '45', '55', '30', '34'),
(2548, '2019-02-15', '08:51:03', '38', '33', '23', '22', '45', '55', '29', '34'),
(2549, '2019-02-15', '08:52:08', '38', '33', '23', '22', '45', '55', '30', '34'),
(2550, '2019-02-15', '08:53:11', '39', '33', '23', '22', '45', '56', '30', '34'),
(2551, '2019-02-15', '10:59:23', '-127', '36', '24', '21', '46', '56', '34', '35'),
(2552, '2019-02-15', '11:01:51', '39', '36', '24', '21', '46', '56', '34', '35'),
(2553, '2019-02-15', '11:02:54', '39', '36', '23', '21', '46', '56', '34', '35'),
(2554, '2019-02-15', '11:14:46', '39', '36', '24', '21', '45', '56', '34', '35'),
(2555, '2019-02-15', '11:15:17', '39', '36', '24', '21', '45', '56', '34', '35'),
(2557, '2019-02-15', '11:16:12', '39', '36', '24', '21', '45', '56', '34', '35'),
(2559, '2019-02-15', '11:17:40', '39', '36', '24', '21', '45', '56', '34', '35'),
(2560, '2019-02-15', '11:18:13', '39', '36', '24', '21', '45', '56', '34', '35'),
(2562, '2019-02-15', '11:19:25', '39', '36', '24', '21', '45', '56', '34', '35'),
(2564, '2019-02-15', '11:20:01', '39', '36', '24', '21', '45', '56', '34', '35'),
(2567, '2019-02-15', '11:21:46', '39', '36', '24', '21', '45', '56', '34', '35'),
(2568, '2019-02-15', '11:22:50', '39', '36', '24', '21', '45', '56', '34', '35'),
(2569, '2019-02-15', '11:23:54', '39', '36', '24', '21', '45', '56', '34', '35'),
(2570, '2019-02-15', '11:24:58', '38', '36', '24', '21', '45', '56', '34', '35'),
(2571, '2019-02-15', '11:26:01', '-127', '36', '24', '-127', '45', '56', '34', '35'),
(2572, '2019-02-15', '11:27:04', '38', '36', '24', '21', '45', '56', '34', '35'),
(2573, '2019-02-15', '11:28:08', '38', '36', '24', '21', '45', '56', '34', '35'),
(2574, '2019-02-15', '11:29:12', '38', '36', '24', '22', '45', '56', '34', '35'),
(2575, '2019-02-15', '11:30:15', '38', '36', '24', '22', '44', '56', '-127', '35'),
(2576, '2019-02-15', '11:31:22', '38', '36', '24', '21', '45', '56', '34', '35'),
(2577, '2019-02-15', '11:32:28', '38', '36', '24', '21', '44', '56', '34', '35'),
(2578, '2019-02-15', '11:33:32', '38', '36', '24', '22', '44', '56', '34', '35'),
(2579, '2019-02-15', '11:34:37', '-127', '36', '24', '22', '44', '56', '34', '35'),
(2580, '2019-02-15', '11:35:57', '38', '36', '24', '22', '44', '56', '34', '35'),
(2581, '2019-02-15', '11:37:00', '38', '36', '24', '22', '44', '56', '34', '35'),
(2582, '2019-02-15', '11:38:16', '-127', '36', '24', '22', '44', '56', '34', '35'),
(2583, '2019-02-15', '11:39:20', '38', '36', '24', '22', '44', '56', '34', '35'),
(2584, '2019-02-15', '11:40:23', '38', '36', '24', '22', '44', '56', '34', '35'),
(2585, '2019-02-15', '11:41:29', '38', '36', '23', '22', '44', '56', '34', '35'),
(2586, '2019-02-15', '11:42:32', '38', '36', '23', '22', '44', '56', '34', '35'),
(2587, '2019-02-15', '11:43:38', '38', '36', '23', '22', '44', '56', '34', '35'),
(2588, '2019-02-15', '11:44:43', '38', '36', '23', '22', '44', '56', '34', '35'),
(2589, '2019-02-15', '11:45:47', '38', '36', '23', '22', '44', '56', '34', '35'),
(2590, '2019-02-15', '11:46:59', '38', '36', '23', '22', '44', '56', '34', '35'),
(2591, '2019-02-15', '11:48:07', '38', '36', '23', '22', '44', '56', '34', '35'),
(2592, '2019-02-15', '11:49:17', '38', '36', '23', '22', '44', '56', '34', '35'),
(2593, '2019-02-15', '11:50:21', '38', '36', '23', '22', '44', '56', '34', '35'),
(2594, '2019-02-15', '11:51:24', '38', '36', '23', '22', '44', '56', '34', '35'),
(2595, '2019-02-15', '11:52:27', '38', '36', '23', '22', '43', '56', '34', '35'),
(2596, '2019-02-15', '11:53:31', '39', '36', '23', '22', '43', '56', '34', '35'),
(2597, '2019-02-15', '11:54:35', '39', '36', '23', '22', '43', '56', '34', '35'),
(2598, '2019-02-15', '11:55:38', '40', '36', '23', '22', '43', '56', '34', '35'),
(2599, '2019-02-15', '11:56:41', '40', '36', '23', '22', '43', '56', '34', '35'),
(2600, '2019-02-15', '11:57:44', '40', '36', '23', '22', '43', '56', '34', '35'),
(2601, '2019-02-15', '11:58:47', '-127', '36', '23', '22', '43', '56', '34', '35'),
(2602, '2019-02-15', '11:59:51', '41', '36', '23', '22', '43', '56', '34', '35'),
(2603, '2019-02-15', '12:00:54', '41', '36', '23', '22', '43', '56', '34', '35'),
(2604, '2019-02-15', '12:01:57', '42', '36', '23', '22', '43', '56', '34', '35'),
(2605, '2019-02-15', '12:03:01', '42', '36', '23', '22', '43', '56', '34', '35'),
(2606, '2019-02-15', '12:04:03', '42', '36', '23', '23', '43', '56', '34', '35'),
(2607, '2019-02-15', '12:05:07', '42', '36', '23', '23', '43', '56', '34', '35'),
(2608, '2019-02-15', '12:06:10', '42', '36', '23', '23', '43', '56', '34', '35'),
(2609, '2019-02-15', '12:07:13', '42', '36', '23', '23', '43', '56', '34', '35'),
(2610, '2019-02-15', '12:08:17', '-127', '36', '23', '22', '43', '56', '34', '35'),
(2611, '2019-02-15', '12:09:20', '42', '36', '23', '22', '42', '56', '34', '35'),
(2612, '2019-02-15', '12:10:26', '42', '36', '23', '22', '43', '56', '34', '35'),
(2613, '2019-02-15', '12:11:29', '42', '36', '23', '22', '42', '56', '34', '35'),
(2614, '2019-02-15', '12:12:33', '42', '36', '23', '22', '42', '56', '34', '35'),
(2615, '2019-02-15', '12:13:39', '42', '36', '23', '22', '42', '56', '34', '35'),
(2616, '2019-02-15', '12:14:43', '42', '36', '23', '22', '42', '56', '34', '35'),
(2617, '2019-02-15', '12:15:49', '42', '36', '23', '22', '42', '56', '34', '35'),
(2618, '2019-02-15', '12:16:52', '42', '36', '23', '22', '42', '56', '34', '35'),
(2619, '2019-02-15', '12:17:57', '42', '36', '23', '22', '42', '56', '34', '35'),
(2620, '2019-02-15', '12:19:10', '42', '36', '23', '22', '42', '56', '34', '35'),
(2621, '2019-02-15', '12:28:25', '', '', '', '', '', '', '', ''),
(2622, '2019-02-15', '12:29:26', '', '', '', '', '', '', '', ''),
(2623, '2019-02-15', '12:30:26', '', '', '', '', '', '', '', ''),
(2624, '2019-02-15', '12:31:27', '', '', '', '', '', '', '', ''),
(2625, '2019-02-15', '12:32:27', '', '', '', '', '', '', '', ''),
(2626, '2019-02-15', '12:33:27', '', '', '', '', '', '', '', ''),
(2627, '2019-02-15', '12:34:28', '', '', '', '', '', '', '', ''),
(2628, '2019-02-15', '12:35:28', '', '', '', '', '', '', '', ''),
(2629, '2019-02-15', '12:36:29', '41', '36', '22', '22', '48', '56', '34', '35'),
(2630, '2019-02-15', '12:37:31', '41', '36', '22', '22', '48', '56', '34', '35'),
(2631, '2019-02-15', '12:38:34', '41', '36', '22', '22', '49', '56', '34', '35'),
(2632, '2019-02-15', '12:39:38', '-127', '36', '22', '22', '49', '56', '34', '35'),
(2633, '2019-02-15', '12:40:41', '41', '36', '22', '22', '49', '56', '34', '35'),
(2634, '2019-02-15', '12:41:49', '41', '36', '22', '22', '49', '56', '34', '34'),
(2635, '2019-02-15', '12:42:52', '41', '36', '22', '22', '49', '56', '34', '35'),
(2636, '2019-02-15', '12:43:55', '-127', '36', '22', '22', '49', '56', '34', '35'),
(2637, '2019-02-15', '12:51:55', '-127', '36', '22', '22', '48', '56', '34', '34'),
(2638, '2019-02-15', '12:52:58', '41', '36', '22', '22', '48', '56', '34', '34'),
(2639, '2019-02-15', '12:54:02', '41', '36', '22', '22', '48', '56', '34', '34'),
(2640, '2019-02-15', '12:55:08', '41', '36', '22', '22', '48', '56', '33', '34'),
(2641, '2019-02-15', '12:56:16', '41', '36', '22', '22', '48', '56', '34', '34'),
(2642, '2019-02-15', '12:57:19', '41', '36', '22', '22', '48', '56', '34', '34'),
(2643, '2019-02-15', '12:58:25', '41', '36', '22', '22', '47', '56', '34', '34'),
(2644, '2019-02-15', '12:59:28', '41', '36', '22', '22', '47', '56', '34', '34'),
(2645, '2019-02-15', '01:00:32', '41', '36', '22', '22', '47', '57', '34', '34'),
(2646, '2019-02-15', '01:01:35', '41', '36', '22', '22', '47', '56', '34', '34'),
(2647, '2019-02-15', '01:02:38', '41', '36', '22', '22', '47', '56', '33', '34'),
(2648, '2019-02-15', '01:03:42', '-127', '36', '22', '22', '47', '56', '33', '34'),
(2649, '2019-02-15', '01:04:46', '-127', '36', '22', '22', '47', '57', '34', '34'),
(2650, '2019-02-15', '01:05:49', '41', '36', '22', '22', '47', '56', '33', '34'),
(2651, '2019-02-15', '01:06:52', '41', '36', '22', '22', '47', '57', '33', '34'),
(2652, '2019-02-15', '01:07:56', '40', '36', '22', '22', '46', '57', '34', '34'),
(2653, '2019-02-15', '01:09:00', '40', '36', '22', '22', '46', '56', '33', '34'),
(2654, '2019-02-15', '13:10:06', '40', '36', '22', '22', '46', '56', '33', '34'),
(2655, '2019-02-15', '13:11:09', '40', '36', '22', '22', '46', '57', '33', '34'),
(2656, '2019-02-15', '13:12:12', '40', '36', '22', '22', '46', '56', '33', '34'),
(2657, '2019-02-15', '13:13:15', '40', '36', '22', '22', '46', '57', '33', '34'),
(2658, '2019-02-15', '13:14:19', '-127', '36', '22', '22', '46', '56', '33', '34'),
(2659, '2019-02-15', '13:15:22', '-127', '36', '22', '22', '46', '57', '33', '34'),
(2660, '2019-02-15', '13:16:25', '40', '36', '22', '22', '46', '57', '33', '34'),
(2661, '2019-02-15', '13:17:29', '40', '36', '22', '22', '45', '56', '33', '34'),
(2662, '2019-02-15', '13:18:33', '40', '36', '22', '22', '45', '56', '33', '34'),
(2663, '2019-02-15', '13:19:37', '40', '36', '22', '22', '45', '56', '33', '34'),
(2664, '2019-02-15', '13:20:42', '40', '36', '22', '22', '45', '56', '33', '34'),
(2665, '2019-02-15', '13:21:45', '40', '36', '22', '22', '45', '57', '33', '34'),
(2666, '2019-02-15', '13:22:48', '40', '36', '22', '21', '45', '57', '33', '34'),
(2667, '2019-02-15', '13:23:51', '40', '36', '22', '22', '45', '56', '34', '34'),
(2668, '2019-02-15', '13:24:55', '40', '36', '22', '21', '45', '56', '34', '34'),
(2669, '2019-02-15', '13:26:00', '40', '36', '22', '21', '45', '56', '34', '34'),
(2670, '2019-02-15', '13:27:07', '40', '36', '22', '21', '45', '57', '33', '34'),
(2671, '2019-02-15', '13:28:10', '40', '36', '22', '21', '45', '56', '34', '34'),
(2672, '2019-02-15', '13:29:14', '40', '36', '22', '21', '45', '56', '34', '34'),
(2673, '2019-02-15', '13:30:18', '40', '36', '23', '21', '45', '56', '34', '34'),
(2674, '2019-02-15', '13:31:21', '40', '36', '23', '21', '45', '56', '34', '34'),
(2675, '2019-02-15', '13:32:24', '40', '36', '23', '21', '45', '56', '34', '34'),
(2676, '2019-02-15', '13:33:27', '40', '36', '23', '21', '45', '56', '34', '34'),
(2677, '2019-02-15', '13:34:30', '40', '36', '23', '21', '44', '55', '34', '34'),
(2678, '2019-02-15', '13:35:33', '40', '36', '23', '21', '45', '55', '34', '34'),
(2679, '2019-02-15', '13:36:37', '40', '36', '23', '21', '45', '55', '34', '34'),
(2680, '2019-02-15', '13:37:41', '40', '36', '23', '21', '45', '55', '34', '34'),
(2681, '2019-02-15', '13:38:44', '40', '36', '23', '21', '44', '55', '34', '34'),
(2682, '2019-02-15', '13:39:51', '40', '37', '23', '21', '44', '55', '34', '34'),
(2683, '2019-02-15', '13:40:54', '40', '36', '23', '21', '44', '55', '34', '34'),
(2684, '2019-02-15', '13:41:57', '39', '37', '23', '21', '44', '55', '34', '34'),
(2685, '2019-02-15', '13:43:00', '39', '36', '23', '21', '44', '55', '34', '34'),
(2686, '2019-02-15', '13:44:03', '39', '36', '23', '21', '44', '55', '34', '34'),
(2687, '2019-02-15', '13:45:06', '39', '37', '23', '21', '44', '55', '34', '34'),
(2688, '2019-02-15', '13:46:10', '39', '36', '23', '21', '44', '55', '34', '34'),
(2689, '2019-02-15', '13:47:13', '39', '36', '23', '21', '44', '54', '34', '34'),
(2690, '2019-02-15', '13:48:17', '39', '36', '23', '21', '44', '54', '34', '35'),
(2691, '2019-02-15', '13:49:20', '39', '36', '23', '21', '44', '54', '34', '35'),
(2692, '2019-02-15', '13:50:24', '39', '37', '23', '21', '43', '54', '34', '34'),
(2693, '2019-02-15', '13:51:27', '39', '36', '23', '21', '43', '54', '34', '35'),
(2694, '2019-02-15', '13:52:30', '39', '36', '23', '21', '43', '54', '34', '35'),
(2695, '2019-02-15', '13:53:34', '39', '37', '23', '21', '43', '54', '34', '34'),
(2696, '2019-02-15', '13:54:37', '39', '36', '23', '21', '43', '54', '34', '34'),
(2697, '2019-02-15', '13:55:41', '39', '36', '23', '21', '43', '54', '34', '35'),
(2698, '2019-02-15', '13:56:44', '39', '36', '23', '21', '43', '54', '34', '35'),
(2699, '2019-02-15', '13:57:48', '39', '36', '23', '21', '43', '54', '34', '35'),
(2700, '2019-02-15', '13:58:52', '39', '36', '23', '21', '43', '54', '34', '35'),
(2701, '2019-02-15', '13:59:56', '39', '36', '23', '21', '43', '54', '34', '35'),
(2702, '2019-02-15', '14:01:00', '39', '37', '23', '21', '43', '54', '34', '35'),
(2703, '2019-02-15', '14:02:04', '39', '37', '23', '21', '43', '54', '34', '35'),
(2704, '2019-02-15', '14:03:07', '39', '37', '23', '21', '43', '54', '34', '35'),
(2705, '2019-02-15', '14:04:12', '39', '36', '23', '21', '43', '54', '34', '35'),
(2706, '2019-02-15', '14:05:15', '39', '36', '23', '21', '43', '54', '34', '35'),
(2707, '2019-02-15', '14:06:18', '39', '36', '23', '21', '43', '54', '34', '35'),
(2708, '2019-02-15', '14:07:22', '39', '37', '23', '20', '43', '54', '34', '35'),
(2709, '2019-02-15', '14:08:26', '39', '36', '23', '20', '43', '54', '34', '35'),
(2710, '2019-02-15', '14:09:29', '39', '36', '23', '20', '43', '54', '34', '35'),
(2711, '2019-02-15', '14:10:32', '39', '37', '23', '20', '42', '54', '34', '35'),
(2712, '2019-02-15', '14:11:35', '39', '37', '23', '20', '42', '54', '34', '35'),
(2713, '2019-02-15', '14:12:39', '39', '36', '23', '20', '42', '54', '34', '35'),
(2714, '2019-02-15', '14:13:42', '39', '37', '23', '20', '42', '54', '34', '35'),
(2715, '2019-02-15', '14:14:45', '39', '36', '23', '20', '42', '54', '34', '35'),
(2716, '2019-02-15', '14:15:51', '39', '37', '23', '20', '42', '54', '34', '35'),
(2717, '2019-02-15', '14:16:55', '39', '36', '23', '20', '42', '54', '34', '35'),
(2718, '2019-02-15', '14:17:57', '39', '37', '23', '20', '42', '54', '34', '35'),
(2719, '2019-02-15', '14:19:01', '39', '37', '23', '20', '42', '54', '34', '35'),
(2720, '2019-02-15', '14:20:04', '39', '37', '23', '20', '42', '54', '34', '35'),
(2721, '2019-02-15', '14:21:07', '39', '37', '23', '20', '42', '54', '34', '35'),
(2722, '2019-02-15', '14:22:10', '39', '36', '23', '20', '42', '54', '34', '35'),
(2723, '2019-02-15', '14:23:13', '39', '36', '23', '20', '42', '54', '34', '35'),
(2724, '2019-02-15', '14:24:16', '39', '36', '23', '20', '42', '54', '34', '35'),
(2725, '2019-02-15', '14:25:20', '39', '36', '23', '20', '42', '54', '34', '35'),
(2726, '2019-02-15', '14:26:23', '', '36', '23', '20', '42', '54', '34', '35'),
(2727, '2019-02-15', '14:27:49', '38', '36', '23', '20', '42', '54', '34', '35'),
(2728, '2019-02-15', '14:28:52', '-127', '36', '23', '20', '42', '-127', '34', '35'),
(2729, '2019-02-15', '14:29:55', '38', '36', '23', '20', '42', '54', '34', '35'),
(2730, '2019-02-15', '14:30:58', '38', '36', '23', '20', '42', '54', '34', '35'),
(2731, '2019-02-15', '14:32:01', '39', '36', '23', '20', '42', '54', '34', '35'),
(2732, '2019-02-15', '14:33:04', '38', '36', '23', '20', '42', '54', '34', '35'),
(2733, '2019-02-15', '14:34:07', '38', '36', '23', '20', '42', '54', '34', '35'),
(2734, '2019-02-15', '14:35:10', '38', '36', '23', '20', '41', '54', '34', '35'),
(2735, '2019-02-15', '14:36:13', '38', '36', '24', '20', '41', '54', '34', '35'),
(2736, '2019-02-15', '14:37:16', '38', '36', '23', '20', '41', '54', '34', '35'),
(2737, '2019-02-15', '14:38:20', '38', '36', '23', '21', '41', '54', '34', '35'),
(2738, '2019-02-15', '14:39:23', '38', '36', '23', '21', '41', '54', '34', '35'),
(2739, '2019-02-15', '14:40:26', '38', '36', '23', '21', '41', '54', '34', '35'),
(2740, '2019-02-15', '14:41:29', '38', '36', '24', '20', '41', '54', '34', '35'),
(2741, '2019-02-15', '14:42:32', '38', '36', '23', '21', '41', '54', '34', '35'),
(2742, '2019-02-15', '14:43:35', '38', '36', '23', '21', '41', '54', '34', '35'),
(2743, '2019-02-15', '14:44:38', '38', '36', '24', '21', '41', '53', '35', '35'),
(2744, '2019-02-15', '14:45:43', '38', '36', '24', '21', '41', '53', '34', '35'),
(2745, '2019-02-15', '14:46:46', '38', '36', '24', '21', '41', '53', '34', '-127'),
(2746, '2019-02-15', '14:47:49', '38', '36', '24', '21', '41', '53', '34', '35'),
(2747, '2019-02-15', '14:48:52', '38', '36', '24', '21', '41', '53', '34', '35'),
(2748, '2019-02-15', '14:50:15', '38', '36', '23', '21', '41', '53', '34', '35'),
(2749, '2019-02-15', '14:51:19', '38', '36', '23', '21', '41', '53', '35', '35'),
(2750, '2019-02-15', '14:52:22', '38', '36', '24', '21', '41', '53', '34', '35'),
(2751, '2019-02-15', '14:53:26', '38', '36', '24', '21', '41', '53', '35', '35'),
(2752, '2019-02-15', '14:54:32', '38', '36', '24', '21', '41', '53', '34', '35'),
(2753, '2019-02-15', '14:55:37', '38', '36', '24', '21', '41', '53', '34', '35'),
(2754, '2019-02-15', '14:56:41', '38', '36', '24', '21', '41', '53', '35', '35'),
(2755, '2019-02-15', '14:57:49', '38', '36', '24', '21', '41', '53', '35', '35'),
(2756, '2019-02-15', '14:59:00', '38', '36', '24', '21', '41', '53', '34', '35'),
(2757, '2019-02-15', '15:00:04', '38', '36', '24', '21', '41', '53', '35', '35'),
(2758, '2019-02-15', '15:01:07', '38', '36', '24', '21', '41', '53', '34', '35'),
(2759, '2019-02-15', '15:02:10', '38', '36', '24', '21', '41', '53', '34', '35'),
(2760, '2019-02-15', '15:03:14', '38', '36', '24', '21', '41', '53', '35', '35'),
(2761, '2019-02-15', '15:04:18', '38', '36', '24', '21', '41', '53', '35', '35'),
(2762, '2019-02-15', '15:05:21', '38', '36', '24', '21', '41', '53', '35', '35'),
(2763, '2019-02-15', '15:06:32', '38', '36', '24', '21', '41', '53', '35', '35'),
(2764, '2019-02-15', '15:07:35', '38', '36', '24', '21', '40', '53', '34', '35'),
(2765, '2019-02-15', '15:08:40', '38', '36', '24', '21', '41', '53', '35', '35'),
(2766, '2019-02-15', '15:09:50', '38', '36', '24', '21', '40', '53', '35', '35'),
(2767, '2019-02-15', '15:10:55', '38', '36', '24', '21', '40', '53', '35', '35'),
(2768, '2019-02-15', '15:11:59', '38', '36', '24', '21', '40', '53', '35', '35'),
(2769, '2019-02-15', '15:13:02', '38', '36', '24', '21', '40', '53', '35', '35'),
(2770, '2019-02-15', '15:14:06', '38', '36', '24', '21', '40', '53', '35', '35'),
(2771, '2019-02-15', '15:15:09', '38', '36', '24', '21', '40', '53', '35', '35'),
(2772, '2019-02-15', '15:16:12', '38', '35', '24', '21', '40', '53', '35', '35'),
(2773, '2019-02-15', '15:17:15', '38', '36', '24', '21', '40', '53', '35', '35'),
(2774, '2019-02-15', '15:18:19', '38', '36', '24', '21', '40', '53', '35', '35'),
(2775, '2019-02-15', '15:19:22', '38', '36', '24', '21', '40', '53', '35', '35'),
(2776, '2019-02-15', '15:20:25', '38', '36', '24', '21', '40', '53', '35', '35'),
(2777, '2019-02-15', '15:21:28', '38', '35', '24', '21', '40', '53', '35', '35'),
(2778, '2019-02-15', '15:22:32', '37', '35', '24', '21', '40', '53', '35', '35'),
(2779, '2019-02-15', '15:23:35', '37', '36', '24', '21', '40', '53', '35', '35'),
(2780, '2019-02-15', '15:24:38', '37', '35', '24', '21', '40', '53', '35', '35'),
(2781, '2019-02-15', '15:25:44', '37', '35', '24', '21', '40', '53', '35', '35'),
(2782, '2019-02-15', '15:26:47', '37', '35', '24', '21', '40', '53', '35', '35'),
(2783, '2019-02-15', '15:27:50', '37', '35', '24', '21', '40', '53', '35', '35'),
(2784, '2019-02-15', '15:28:53', '37', '35', '24', '21', '40', '53', '35', '35'),
(2785, '2019-02-15', '15:29:56', '37', '35', '24', '21', '40', '53', '35', '35'),
(2786, '2019-02-15', '15:31:00', '37', '35', '24', '21', '40', '53', '35', '35'),
(2787, '2019-02-15', '15:32:04', '-127', '35', '24', '-127', '40', '-127', '35', '34'),
(2788, '2019-02-15', '15:33:07', '37', '35', '24', '21', '40', '53', '35', '35'),
(2789, '2019-02-15', '15:34:10', '37', '35', '24', '21', '40', '53', '35', '35'),
(2790, '2019-02-15', '15:35:13', '37', '35', '24', '21', '40', '53', '35', '34'),
(2791, '2019-02-15', '15:36:16', '37', '35', '24', '21', '40', '53', '35', '35'),
(2792, '2019-02-15', '15:37:21', '37', '35', '24', '21', '40', '53', '35', '34'),
(2793, '2019-02-15', '15:38:24', '37', '35', '24', '21', '40', '53', '35', '34'),
(2794, '2019-02-15', '15:39:28', '-127', '35', '24', '21', '40', '53', '35', '35'),
(2795, '2019-02-15', '15:40:31', '37', '35', '24', '21', '-127', '53', '35', '34'),
(2796, '2019-02-15', '15:41:34', '-127', '35', '24', '-127', '40', '53', '35', '34'),
(2797, '2019-02-15', '15:42:42', '37', '35', '24', '-127', '39', '52', '35', '34'),
(2798, '2019-02-15', '15:43:45', '-127', '35', '-127', '-127', '40', '52', '35', '34'),
(2799, '2019-02-15', '15:44:49', '37', '-127', '24', '-127', '-127', '53', '35', '34'),
(2800, '2019-02-15', '15:45:51', '37', '35', '24', '21', '-127', '53', '35', '34'),
(2801, '2019-02-15', '15:46:55', '37', '35', '24', '21', '39', '53', '35', '-127'),
(2802, '2019-02-15', '15:47:58', '-127', '35', '24', '21', '39', '52', '35', '34'),
(2803, '2019-02-15', '15:49:02', '37', '35', '24', '21', '39', '53', '35', '-127'),
(2804, '2019-02-15', '15:50:05', '-127', '-127', '24', '21', '-127', '52', '35', '34'),
(2805, '2019-02-15', '15:51:10', '-127', '35', '24', '22', '39', '52', '35', '34'),
(2806, '2019-02-15', '15:52:13', '-127', '-127', '-127', '-127', '-127', '52', '-127', '-127'),
(2807, '2019-02-15', '15:53:19', '-127', '-127', '-127', '-127', '-127', '52', '35', '-127'),
(2808, '2019-02-15', '15:54:22', '-127', '-127', '-127', '-127', '39', '52', '-127', '-127'),
(2809, '2019-02-15', '15:55:25', '-127', '35', '-127', '-127', '-127', '-127', '-127', '-127'),
(2810, '2019-02-15', '15:56:29', '-127', '-127', '-127', '-127', '-127', '-127', '35', '34'),
(2811, '2019-02-15', '15:57:32', '37', '35', '24', '22', '39', '52', '35', '34'),
(2812, '2019-02-15', '15:58:36', '-127', '35', '-127', '-127', '-127', '-127', '-127', '34'),
(2813, '2019-02-15', '15:59:39', '-127', '35', '-127', '22', '39', '52', '35', '34'),
(2814, '2019-02-15', '16:00:42', '-127', '35', '24', '-127', '39', '52', '35', '-127'),
(2815, '2019-02-15', '16:01:46', '37', '35', '24', '22', '39', '52', '35', '34'),
(2816, '2019-02-15', '16:02:49', '37', '35', '-127', '22', '39', '52', '35', '34'),
(2817, '2019-02-15', '16:03:52', '37', '-127', '24', '22', '39', '52', '35', '34'),
(2818, '2019-02-15', '16:04:55', '-127', '35', '24', '22', '-127', '52', '35', '34'),
(2819, '2019-02-15', '16:05:58', '37', '35', '24', '22', '39', '52', '35', '34'),
(2820, '2019-02-15', '16:07:02', '37', '-127', '24', '22', '39', '52', '35', '34'),
(2821, '2019-02-15', '16:08:05', '37', '35', '24', '22', '39', '52', '35', '34'),
(2822, '2019-02-15', '16:09:08', '37', '35', '24', '22', '39', '52', '35', '34'),
(2823, '2019-02-15', '16:10:12', '37', '35', '24', '22', '39', '52', '35', '34'),
(2824, '2019-02-15', '16:11:16', '37', '35', '24', '22', '39', '52', '35', '34'),
(2825, '2019-02-15', '16:12:19', '-127', '35', '24', '22', '39', '52', '35', '34'),
(2826, '2019-02-15', '16:13:22', '37', '35', '24', '22', '39', '52', '35', '-127'),
(2827, '2019-02-15', '16:14:25', '37', '35', '24', '-127', '39', '52', '35', '34'),
(2828, '2019-02-15', '16:15:29', '37', '35', '24', '22', '39', '52', '35', '34'),
(2829, '2019-02-15', '16:16:32', '37', '35', '24', '22', '39', '52', '35', '-127'),
(2830, '2019-02-15', '16:17:35', '-127', '35', '-127', '-127', '39', '-127', '35', '-127'),
(2831, '2019-02-15', '16:18:38', '-127', '35', '-127', '22', '-127', '52', '35', '34'),
(2832, '2019-02-15', '16:19:41', '37', '35', '24', '-127', '39', '52', '35', '34'),
(2833, '2019-02-15', '16:20:44', '37', '35', '24', '22', '39', '52', '35', '34'),
(2834, '2019-02-15', '16:21:47', '37', '-127', '24', '22', '38', '52', '35', '34'),
(2835, '2019-02-15', '16:22:50', '36', '35', '24', '22', '39', '52', '35', '34'),
(2836, '2019-02-15', '16:23:53', '-127', '35', '24', '22', '39', '52', '35', '34'),
(2837, '2019-02-15', '16:24:58', '37', '-127', '24', '22', '38', '52', '35', '34'),
(2838, '2019-02-15', '16:26:11', '37', '35', '24', '22', '39', '-127', '34', '34'),
(2839, '2019-02-15', '16:27:15', '-127', '35', '24', '22', '38', '52', '34', '34'),
(2840, '2019-02-15', '16:28:18', '36', '35', '24', '22', '38', '52', '35', '34'),
(2841, '2019-02-15', '16:29:21', '36', '34', '24', '22', '38', '52', '35', '34'),
(2842, '2019-02-15', '16:30:24', '36', '35', '24', '22', '38', '52', '-127', '34'),
(2843, '2019-02-15', '16:31:27', '-127', '35', '-127', '22', '38', '-127', '-127', '34'),
(2844, '2019-02-15', '16:32:32', '-127', '-127', '24', '-127', '38', '52', '34', '-127'),
(2845, '2019-02-15', '16:33:35', '-127', '-127', '24', '22', '38', '-127', '35', '-127'),
(2846, '2019-02-15', '16:34:39', '-127', '35', '24', '22', '-127', '52', '35', '34'),
(2847, '2019-02-15', '16:35:44', '36', '35', '24', '22', '38', '52', '34', '34'),
(2848, '2019-02-15', '16:36:48', '36', '-127', '24', '22', '38', '52', '35', '34'),
(2849, '2019-02-15', '16:37:51', '36', '34', '24', '22', '38', '52', '34', '34'),
(2850, '2019-02-15', '16:38:55', '-127', '-127', '24', '22', '38', '52', '-127', '-127'),
(2851, '2019-02-15', '16:39:58', '36', '35', '24', '22', '38', '52', '34', '34'),
(2852, '2019-02-15', '16:41:02', '36', '34', '24', '22', '38', '-127', '34', '34'),
(2853, '2019-02-15', '16:42:05', '36', '34', '24', '22', '38', '52', '34', '33'),
(2854, '2019-02-15', '16:43:08', '36', '34', '24', '22', '38', '52', '-127', '34'),
(2855, '2019-02-15', '16:44:11', '-127', '34', '24', '22', '38', '52', '34', '33'),
(2856, '2019-02-15', '16:45:14', '36', '34', '24', '22', '38', '52', '34', '34'),
(2857, '2019-02-15', '16:46:19', '36', '34', '24', '22', '38', '52', '-127', '33'),
(2858, '2019-02-15', '16:47:23', '-127', '34', '24', '-127', '38', '52', '34', '34'),
(2859, '2019-02-15', '16:48:26', '36', '34', '24', '22', '38', '52', '34', '34'),
(2860, '2019-02-15', '16:49:30', '-127', '34', '24', '22', '38', '52', '34', '33'),
(2861, '2019-02-15', '16:50:36', '-127', '34', '24', '22', '38', '52', '34', '33'),
(2862, '2019-02-15', '16:51:39', '36', '34', '24', '22', '38', '52', '34', '33'),
(2863, '2019-02-15', '16:52:42', '-127', '34', '24', '22', '38', '-36', '34', '33'),
(2864, '2019-02-15', '16:53:46', '-127', '34', '24', '22', '38', '52', '34', '33'),
(2865, '2019-02-15', '16:54:50', '36', '34', '24', '22', '38', '52', '34', '33'),
(2866, '2019-02-15', '16:55:53', '36', '34', '24', '22', '38', '52', '34', '33'),
(2867, '2019-02-15', '16:56:59', '36', '34', '24', '22', '38', '52', '34', '33'),
(2868, '2019-02-15', '16:58:02', '36', '34', '24', '22', '38', '52', '-127', '33'),
(2869, '2019-02-15', '16:59:05', '-127', '34', '24', '22', '38', '52', '34', '33'),
(2870, '2019-02-15', '17:00:09', '-127', '34', '24', '-127', '38', '52', '34', '33'),
(2871, '2019-02-15', '17:01:12', '-127', '34', '24', '22', '38', '52', '34', '33'),
(2872, '2019-02-15', '17:02:16', '36', '34', '24', '22', '38', '-127', '34', '33'),
(2873, '2019-02-15', '17:03:20', '36', '34', '24', '22', '38', '52', '34', '33'),
(2874, '2019-02-15', '17:04:24', '-127', '34', '24', '22', '37', '51', '34', '33'),
(2875, '2019-02-15', '17:05:28', '36', '34', '-127', '22', '38', '52', '34', '33'),
(2876, '2019-02-15', '17:06:31', '36', '34', '-127', '22', '37', '51', '34', '33'),
(2877, '2019-02-15', '17:07:35', '36', '34', '-127', '22', '37', '52', '34', '33'),
(2878, '2019-02-15', '17:08:38', '-127', '-127', '24', '22', '38', '52', '34', '33'),
(2879, '2019-02-15', '17:09:41', '36', '34', '24', '22', '37', '-127', '34', '33'),
(2880, '2019-02-15', '17:10:45', '36', '34', '24', '22', '37', '52', '34', '33'),
(2881, '2019-02-15', '17:11:48', '36', '34', '24', '22', '-127', '51', '34', '33'),
(2882, '2019-02-15', '17:12:51', '36', '34', '24', '23', '37', '51', '34', '33'),
(2883, '2019-02-15', '17:13:55', '36', '34', '25', '22', '37', '51', '34', '33'),
(2884, '2019-02-15', '17:14:58', '-127', '34', '24', '22', '37', '51', '34', '33'),
(2885, '2019-02-15', '17:16:02', '-127', '34', '-127', '22', '-127', '51', '34', '-127'),
(2886, '2019-02-15', '17:17:05', '36', '34', '24', '23', '37', '51', '34', '33'),
(2887, '2019-02-15', '17:18:08', '36', '34', '24', '22', '37', '51', '34', '33'),
(2888, '2019-02-15', '17:19:11', '36', '34', '24', '22', '37', '51', '34', '33'),
(2889, '2019-02-15', '17:20:14', '-127', '34', '24', '22', '37', '51', '34', '33'),
(2890, '2019-02-15', '17:21:17', '36', '34', '24', '23', '37', '51', '34', '33'),
(2891, '2019-02-15', '17:22:21', '36', '34', '-127', '23', '37', '51', '34', '33'),
(2892, '2019-02-15', '17:23:24', '36', '34', '24', '22', '37', '51', '34', '33'),
(2893, '2019-02-15', '17:24:27', '36', '34', '24', '-127', '37', '51', '34', '33'),
(2894, '2019-02-15', '17:25:31', '36', '34', '24', '-127', '37', '51', '34', '33'),
(2895, '2019-02-15', '17:26:34', '36', '34', '25', '23', '37', '51', '34', '33'),
(2896, '2019-02-15', '17:27:37', '35', '34', '24', '22', '37', '51', '34', '33'),
(2897, '2019-02-15', '17:28:40', '-127', '-127', '-127', '-127', '-127', '51', '34', '33'),
(2898, '2019-02-15', '17:29:43', '-127', '-127', '-127', '-127', '37', '51', '34', '33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_suhu`
--
ALTER TABLE `data_suhu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_suhu`
--
ALTER TABLE `data_suhu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2899;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
