-- phpMyAdmin SQL Dump Optimized for Aiven Cloud
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- ========================================================
-- 1. Table structure for table `students`
-- ========================================================
CREATE TABLE `students` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(150) NOT NULL,
  `course` varchar(100) NOT NULL,
  `year_level` varchar(20) NOT NULL,
  `section` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `role` varchar(20) DEFAULT 'student',
  PRIMARY KEY (`student_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci AUTO_INCREMENT=85;

INSERT INTO `students` (`student_id`, `full_name`, `course`, `year_level`, `section`, `email`, `username`, `password`, `created_at`, `role`) VALUES
(1, 'Juan Dela Cruz', 'BSIT', '1st Year', 'A', 'juan@gmail.com', 'juan', '1234', '2026-05-28 06:48:06', 'student'),
(2, 'Maria Santos', 'BSCS', '1st Year', 'B', 'maria@gmail.com', 'maria', '1234', '2026-05-28 06:48:06', 'student'),
(34, 'Juan Dela Cruz', 'BSIT', '1st Year', 'A', 'juan@gmail.com', 'juann', '1234', '2026-05-28 06:52:53', 'student'),
(35, 'Maria Santos', 'BSCS', '1st Year', 'B', 'maria@gmail.com', 'mariaa', '1234', '2026-05-28 06:52:53', 'student'),
(39, 'Claire Mendoza', 'BSCS', '2nd Year', 'B', 'claire@gmail.com', 'claire', '1234', '2026-05-28 06:52:53', 'student'),
(40, 'James Ramos', 'BSIT', '4th Year', 'A', 'james@gmail.com', 'james', '1234', '2026-05-28 06:52:53', 'student'),
(41, 'Nicole Flores', 'BSIS', '2nd Year', 'C', 'nicole@gmail.com', 'nicole', '1234', '2026-05-28 06:52:53', 'student'),
(42, 'Daniel Garcia', 'BSIT', '1st Year', 'B', 'daniel@gmail.com', 'daniel', '1234', '2026-05-28 06:52:53', 'student'),
(43, 'Sophia Villanueva', 'BSCS', '3rd Year', 'A', 'sophia@gmail.com', 'sophia', '1234', '2026-05-28 06:52:53', 'student'),
(74, 'Juan Dela Cruz', 'BSIT', '1st Year', 'A', 'juan@gmail.com', 'juan_01', '1234', '2026-05-28 06:54:53', 'student'),
(75, 'Maria Santos', 'BSCS', '1st Year', 'B', 'maria@gmail.com', 'maria_01', '1234', '2026-05-28 06:54:53', 'student'),
(76, 'John Reyes', 'BSIT', '2nd Year', 'A', 'john@gmail.com', 'john_01', '1234', '2026-05-28 06:54:53', 'student'),
(78, 'Mark Bautista', 'BSIT', '3rd Year', 'C', 'mark@gmail.com', 'mark_01', '1234', '2026-05-28 06:54:53', 'student'),
(79, 'Claire Mendoza', 'BSCS', '2nd Year', 'B', 'claire@gmail.com', 'claire_01', '1234', '2026-05-28 06:54:53', 'student'),
(80, 'James Ramos', 'BSIT', '4th Year', 'A', 'james@gmail.com', 'james_01', '1234', '2026-05-28 06:54:53', 'student'),
(81, 'Nicole Flores', 'BSIS', '2nd Year', 'C', 'nicole@gmail.com', 'nicole_01', '1234', '2026-05-28 06:54:53', 'student'),
(82, 'Daniel Garcia', 'BSIT', '1st Year', 'B', 'daniel@gmail.com', 'daniel_01', '1234', '2026-05-28 06:54:53', 'student'),
(83, 'Sophia Villanueva', 'BSCS', '3rd Year', 'A', 'sophia@gmail.com', 'sophia_01', '1234', '2026-05-28 06:54:53', 'student'),
(84, 'John Michael Peralta', 'BSIT', 'Second year', '2C', 'johnmichaelperalta177@gmail.com', 'jm', '123', '2026-05-28 07:33:59', 'student');

-- ========================================================
-- 2. Table structure for table `subjects`
-- ========================================================
CREATE TABLE `subjects` (
  `subject_id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_code` varchar(20) NOT NULL,
  `subject_name` varchar(100) NOT NULL,
  `units` int(11) DEFAULT 3,
  `semester` varchar(50) NOT NULL,
  `year_level` varchar(50) NOT NULL,
  `course` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`subject_id`),
  UNIQUE KEY `subject_code` (`subject_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci AUTO_INCREMENT=7;

INSERT INTO `subjects` (`subject_id`, `subject_code`, `subject_name`, `units`, `semester`, `year_level`, `course`, `created_at`) VALUES
(1, 'IT101', 'Introduction to Computing', 3, '1st Semester', '1st Year', 'BSIT', '2026-05-28 06:48:06'),
(2, 'IT102', 'Programming 1', 3, '1st Semester', '1st Year', 'BSIT', '2026-05-28 06:48:06'),
(3, 'IT201', 'Database Management', 3, '2nd Semester', '2nd Year', 'BSIT', '2026-05-28 06:48:06'),
(4, 'MANUKAN09', 'MANUKAN', 3, '2nd Semester', '1st Year', 'BSIT', '2026-05-28 07:00:26'),
(5, 'ITO12', 'Programming 3', 3, '2nd Semester', '2nd Year', 'BSIT', '2026-05-28 07:37:25'),
(6, 'CS101', 'Programming 4', 3, '2nd Semester', '3rd Year', 'BSIT', '2026-05-28 07:49:26');

-- ========================================================
-- 3. Table structure for table `teachers`
-- ========================================================
CREATE TABLE `teachers` (
  `teacher_id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(150) NOT NULL,
  `department` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `role` varchar(20) DEFAULT 'teacher',
  PRIMARY KEY (`teacher_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci AUTO_INCREMENT=26;

INSERT INTO `teachers` (`teacher_id`, `full_name`, `department`, `email`, `username`, `password`, `created_at`, `role`) VALUES
(2, 'Ms. Garcia', 'College of Computing', 'garcia@gmail.com', 'garcia', '1234', '2026-05-28 06:48:06', 'teacher'),
(14, 'Mr. Santos', 'College of Computing', 'santos@gmail.com', 'teacher_01', '1234', '2026-05-28 06:54:53', 'teacher'),
(15, 'Ms. Garcia', 'College of Computing', 'garcia@gmail.com', 'teacher_02', '1234', '2026-05-28 06:54:53', 'teacher'),
(16, 'Mr. Cruz', 'College of Computing', 'cruz@gmail.com', 'teacher_03', '1234', '2026-05-28 06:54:53', 'teacher'),
(17, 'Ms. Lopez', 'College of Computing', 'lopez@gmail.com', 'teacher_04', '1234', '2026-05-28 06:54:53', 'teacher'),
(18, 'Mr. Mendoza', 'College of Computing', 'mendoza@gmail.com', 'teacher_05', '1234', '2026-05-28 06:54:53', 'teacher'),
(19, 'Ms. Reyes', 'College of Computing', 'reyes@gmail.com', 'teacher_06', '1234', '2026-05-28 06:54:53', 'teacher'),
(20, 'Mr. Ramos', 'College of Computing', 'ramos@gmail.com', 'teacher_07', '1234', '2026-05-28 06:54:53', 'teacher'),
(21, 'Ms. Flores', 'College of Computing', 'flores@gmail.com', 'teacher_08', '1234', '2026-05-28 06:54:53', 'teacher'),
(23, 'Ms. Villanueva', 'College of Computing', 'villanueva@gmail.com', 'teacher_10', '1234', '2026-05-28 06:54:53', 'teacher'),
(24, '', NULL, '', 'admin', '1234', '2026-05-28 07:16:44', 'admin'),
(25, 'MIca Ella Peralta', 'CCS', 'micaaaa@gmail', 'micaa', '123', '2026-05-28 07:35:54', 'teacher');

-- ========================================================
-- 4. Table structure for table `student_averages`
-- ========================================================
CREATE TABLE `student_averages` (
  `average_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `gwa` decimal(5,2) DEFAULT 0.00,
  `rank_position` int(11) DEFAULT NULL,
  `academic_status` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`average_id`),
  KEY `student_id` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci AUTO_INCREMENT=5;

INSERT INTO `student_averages` (`average_id`, `student_id`, `gwa`, `rank_position`, `academic_status`, `created_at`) VALUES
(1, 1, 1.88, 2, 'Dean List', '2026-05-28 06:48:06'),
(2, 2, 2.38, 3, 'Regular', '2026-05-28 06:48:06'),
(4, 84, 1.75, NULL, 'Dean List', '2026-05-28 07:40:37');

-- ========================================================
-- 5. Table structure for table `student_grades`
-- ========================================================
CREATE TABLE `student_grades` (
  `grade_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `grade` decimal(5,2) DEFAULT 0.00,
  `remarks` varchar(20) DEFAULT 'Pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`grade_id`),
  KEY `student_id` (`student_id`),
  KEY `subject_id` (`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci AUTO_INCREMENT=16;

INSERT INTO `student_grades` (`grade_id`, `student_id`, `subject_id`, `grade`, `remarks`, `created_at`) VALUES
(1, 1, 1, 1.75, 'Passed', '2026-05-28 06:48:06'),
(2, 1, 2, 2.00, 'Passed', '2026-05-28 06:48:06'),
(3, 2, 1, 2.25, 'Passed', '2026-05-28 06:48:06'),
(4, 2, 2, 2.50, 'Passed', '2026-05-28 06:48:06'),
(12, 84, 5, 1.50, 'Passed', '2026-05-28 07:50:55'),
(13, 84, 3, 2.50, 'Passed', '2026-05-28 07:50:55'),
(14, 84, 1, 2.00, 'Passed', '2026-05-28 07:50:55'),
(15, 84, 6, 1.00, 'Passed', '2026-05-28 07:50:55');

-- ========================================================
-- 6. Table structure for table `student_subjects`
-- ========================================================
CREATE TABLE `student_subjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `student_id` (`student_id`),
  KEY `subject_id` (`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci AUTO_INCREMENT=10;

INSERT INTO `student_subjects` (`id`, `student_id`, `subject_id`, `created_at`) VALUES
(1, 1, 1, '2026-05-28 06:48:06'),
(2, 1, 2, '2026-05-28 06:48:06'),
(3, 2, 1, '2026-05-28 06:48:06'),
(4, 2, 2, '2026-05-28 06:48:06'),
(6, 84, 5, '2026-05-28 07:3