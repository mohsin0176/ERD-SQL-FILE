-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2021 at 02:52 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `schoolsms`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_advance_salary`
--

CREATE TABLE `tbl_advance_salary` (
  `advance_salary_id` int(15) NOT NULL,
  `emp_id` int(15) NOT NULL,
  `advances_salary_for_months` decimal(18,3) NOT NULL,
  `total_amount` decimal(18,3) NOT NULL,
  `recover_duration` int(15) NOT NULL,
  `per_month_recover_amount` decimal(18,3) NOT NULL,
  `recover_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_allowance`
--

CREATE TABLE `tbl_allowance` (
  `allowance_id` int(15) NOT NULL,
  `all_name` varchar(15) NOT NULL,
  `all_status` varchar(13) NOT NULL,
  `all_amount` decimal(18,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bank`
--

CREATE TABLE `tbl_bank` (
  `bank_id` int(15) NOT NULL,
  `bank_name` varchar(40) NOT NULL,
  `bank_phone_no` int(15) NOT NULL,
  `schoo_account_no` int(15) NOT NULL,
  `deposit_date` date NOT NULL,
  `deposit_amount` decimal(18,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bonus`
--

CREATE TABLE `tbl_bonus` (
  `bonus_is` int(15) NOT NULL,
  `bonus_name` varchar(23) NOT NULL,
  `bonus_amount` decimal(18,3) NOT NULL,
  `bonus_status` varchar(23) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_class`
--

CREATE TABLE `tbl_class` (
  `cls_id` int(15) NOT NULL,
  `cla_name` varchar(40) NOT NULL,
  `st_id` int(15) NOT NULL,
  `co_id` int(15) NOT NULL,
  `teacher_id` int(15) NOT NULL,
  `room_id` int(15) NOT NULL,
  `cls_date` date NOT NULL,
  `cls_start_time` time NOT NULL,
  `cls_end_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course_reg`
--

CREATE TABLE `tbl_course_reg` (
  `co_id` int(15) NOT NULL,
  `co_name` varchar(40) NOT NULL,
  `co_date` date NOT NULL,
  `st_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_designation`
--

CREATE TABLE `tbl_designation` (
  `emp_designation_id` int(15) NOT NULL,
  `des_name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee`
--

CREATE TABLE `tbl_employee` (
  `emp_id` int(15) NOT NULL,
  `emp_name` varchar(40) NOT NULL,
  `emp_NO` int(15) NOT NULL,
  `emp_father_name` varchar(40) NOT NULL,
  `emp_cnic_NO` varchar(40) NOT NULL,
  `emp_phoneN0` int(15) NOT NULL,
  `emp_join_date` date NOT NULL,
  `emp_status` varchar(40) NOT NULL,
  `emp_designation_id` int(15) NOT NULL,
  `emp_type_id` int(15) NOT NULL,
  `emp_category_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee_category`
--

CREATE TABLE `tbl_employee_category` (
  `emp_category_id` int(15) NOT NULL,
  `emp_cate_name` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee_type`
--

CREATE TABLE `tbl_employee_type` (
  `emp_type_id` int(15) NOT NULL,
  `emp_type_name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_free_dues`
--

CREATE TABLE `tbl_free_dues` (
  `free_dues_id` int(15) NOT NULL,
  `due_date` date NOT NULL,
  `due_amount` decimal(18,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_free_type`
--

CREATE TABLE `tbl_free_type` (
  `free_type_id` int(15) NOT NULL,
  `free_type_name` varchar(40) DEFAULT NULL,
  `status` varchar(40) NOT NULL,
  `amount` decimal(18,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_paper`
--

CREATE TABLE `tbl_paper` (
  `p_id` int(15) NOT NULL,
  `st_id` int(15) NOT NULL,
  `teacher_id` int(15) NOT NULL,
  `quz_id` int(15) NOT NULL,
  `co_id` int(15) NOT NULL,
  `p_date` date NOT NULL,
  `total_marks` int(15) NOT NULL,
  `obtain_marks` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_parient`
--

CREATE TABLE `tbl_parient` (
  `pa_id` int(15) NOT NULL,
  `pa_name` varchar(40) NOT NULL,
  `pa_phone_no` int(15) NOT NULL,
  `Pa_occupation` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_quezies`
--

CREATE TABLE `tbl_quezies` (
  `quz_id` int(15) NOT NULL,
  `quz_date` date NOT NULL,
  `quz_type_id` int(15) NOT NULL,
  `st_id` int(15) NOT NULL,
  `teacher_id` int(15) NOT NULL,
  `course_id` int(15) NOT NULL,
  `marks` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_quze_type`
--

CREATE TABLE `tbl_quze_type` (
  `quz_type_id` int(15) NOT NULL,
  `quz_type_name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_registration`
--

CREATE TABLE `tbl_registration` (
  `reg_id` int(15) NOT NULL,
  `reg_no` int(15) NOT NULL,
  `reg_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_role`
--

CREATE TABLE `tbl_role` (
  `role_id` int(15) NOT NULL,
  `role_name` varchar(34) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rooms`
--

CREATE TABLE `tbl_rooms` (
  `room_id` int(15) NOT NULL,
  `roll_no` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_salary`
--

CREATE TABLE `tbl_salary` (
  `salary_id` int(15) NOT NULL,
  `emp_id` int(15) NOT NULL,
  `emp_designation_id` int(15) NOT NULL,
  `allowance_id` int(15) NOT NULL,
  `bonus_is` int(15) NOT NULL,
  `advance_salary_id` int(15) NOT NULL,
  `total_salary` decimal(10,3) NOT NULL,
  `salary_ststus` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_schoo`
--

CREATE TABLE `tbl_schoo` (
  `sch_id` int(15) NOT NULL,
  `sch_name` varchar(40) NOT NULL,
  `sch_address` varchar(40) NOT NULL,
  `sch_phone_no` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

CREATE TABLE `tbl_student` (
  `st_id` int(15) NOT NULL,
  `roll_no` int(15) NOT NULL,
  `st_name` varchar(40) NOT NULL,
  `pa_id` int(15) NOT NULL,
  `reg_id` int(15) NOT NULL,
  `st_phone_no` int(15) NOT NULL,
  `st_DOB` date NOT NULL,
  `st_gender` varchar(40) NOT NULL,
  `st_email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_teacher`
--

CREATE TABLE `tbl_teacher` (
  `teacher_id` int(15) NOT NULL,
  `te_name` varchar(40) NOT NULL,
  `te_phone_No` int(15) NOT NULL,
  `te_email` varchar(40) NOT NULL,
  `te_gender` varchar(40) NOT NULL,
  `te_join_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(15) NOT NULL,
  `user_name` varchar(39) NOT NULL,
  `password` varchar(23) NOT NULL,
  `role_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_free`
--

CREATE TABLE `tb_free` (
  `f_id` int(15) NOT NULL,
  `st_id` int(15) NOT NULL,
  `f_date` date NOT NULL,
  `invoce_no` int(15) NOT NULL,
  `last_date` date NOT NULL,
  `amount` decimal(10,5) NOT NULL,
  `free_dues_id` int(15) NOT NULL,
  `free_type_id` int(15) NOT NULL,
  `bank_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_advance_salary`
--
ALTER TABLE `tbl_advance_salary`
  ADD PRIMARY KEY (`advance_salary_id`);

--
-- Indexes for table `tbl_allowance`
--
ALTER TABLE `tbl_allowance`
  ADD PRIMARY KEY (`allowance_id`);

--
-- Indexes for table `tbl_bank`
--
ALTER TABLE `tbl_bank`
  ADD PRIMARY KEY (`bank_id`);

--
-- Indexes for table `tbl_bonus`
--
ALTER TABLE `tbl_bonus`
  ADD PRIMARY KEY (`bonus_is`);

--
-- Indexes for table `tbl_class`
--
ALTER TABLE `tbl_class`
  ADD PRIMARY KEY (`cls_id`),
  ADD KEY `student_id_fk` (`st_id`),
  ADD KEY `course_id_fk` (`co_id`),
  ADD KEY `teacher_id_fk` (`teacher_id`),
  ADD KEY `room_id_fk` (`room_id`);

--
-- Indexes for table `tbl_course_reg`
--
ALTER TABLE `tbl_course_reg`
  ADD PRIMARY KEY (`co_id`),
  ADD KEY `st_id_fk` (`st_id`);

--
-- Indexes for table `tbl_designation`
--
ALTER TABLE `tbl_designation`
  ADD PRIMARY KEY (`emp_designation_id`);

--
-- Indexes for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  ADD PRIMARY KEY (`emp_id`),
  ADD KEY `dsignationn_id_fk` (`emp_designation_id`),
  ADD KEY `emp_typpe_id_fk` (`emp_type_id`),
  ADD KEY `emp_categoryy_id_fk` (`emp_category_id`);

--
-- Indexes for table `tbl_employee_category`
--
ALTER TABLE `tbl_employee_category`
  ADD PRIMARY KEY (`emp_category_id`);

--
-- Indexes for table `tbl_employee_type`
--
ALTER TABLE `tbl_employee_type`
  ADD PRIMARY KEY (`emp_type_id`);

--
-- Indexes for table `tbl_free_dues`
--
ALTER TABLE `tbl_free_dues`
  ADD PRIMARY KEY (`free_dues_id`);

--
-- Indexes for table `tbl_free_type`
--
ALTER TABLE `tbl_free_type`
  ADD PRIMARY KEY (`free_type_id`);

--
-- Indexes for table `tbl_paper`
--
ALTER TABLE `tbl_paper`
  ADD PRIMARY KEY (`p_id`),
  ADD KEY `studentt_id_fk` (`st_id`),
  ADD KEY `teacherr_id_fk` (`teacher_id`),
  ADD KEY `quzee_id_fk` (`quz_id`),
  ADD KEY `co_idd_fk` (`co_id`);

--
-- Indexes for table `tbl_parient`
--
ALTER TABLE `tbl_parient`
  ADD PRIMARY KEY (`pa_id`);

--
-- Indexes for table `tbl_quezies`
--
ALTER TABLE `tbl_quezies`
  ADD PRIMARY KEY (`quz_id`),
  ADD KEY `quz_type_id_fk` (`quz_type_id`),
  ADD KEY `studeent_id_fk` (`st_id`),
  ADD KEY `couurse_id_fk` (`course_id`),
  ADD KEY `teaacher_id_fk` (`teacher_id`);

--
-- Indexes for table `tbl_quze_type`
--
ALTER TABLE `tbl_quze_type`
  ADD PRIMARY KEY (`quz_type_id`);

--
-- Indexes for table `tbl_registration`
--
ALTER TABLE `tbl_registration`
  ADD PRIMARY KEY (`reg_id`);

--
-- Indexes for table `tbl_role`
--
ALTER TABLE `tbl_role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `tbl_rooms`
--
ALTER TABLE `tbl_rooms`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `tbl_salary`
--
ALTER TABLE `tbl_salary`
  ADD PRIMARY KEY (`salary_id`),
  ADD KEY `employeee_id_fk` (`emp_id`),
  ADD KEY `designationn_id_fk` (`emp_designation_id`),
  ADD KEY `allwoancee_id_fk` (`allowance_id`),
  ADD KEY `bonuss_is_fk` (`bonus_is`),
  ADD KEY `advancee_salary_id_fk` (`advance_salary_id`);

--
-- Indexes for table `tbl_schoo`
--
ALTER TABLE `tbl_schoo`
  ADD PRIMARY KEY (`sch_id`);

--
-- Indexes for table `tbl_student`
--
ALTER TABLE `tbl_student`
  ADD PRIMARY KEY (`st_id`),
  ADD KEY `parient_id_fk` (`pa_id`),
  ADD KEY `registration_id_fk` (`reg_id`);

--
-- Indexes for table `tbl_teacher`
--
ALTER TABLE `tbl_teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `rolee_id_fk` (`role_id`);

--
-- Indexes for table `tb_free`
--
ALTER TABLE `tb_free`
  ADD PRIMARY KEY (`f_id`),
  ADD KEY `freee_dues_id_fk` (`free_dues_id`),
  ADD KEY `freee_type_id_fk` (`free_type_id`),
  ADD KEY `bankk_id_fk` (`bank_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_class`
--
ALTER TABLE `tbl_class`
  ADD CONSTRAINT `course_id_fk` FOREIGN KEY (`co_id`) REFERENCES `tbl_course_reg` (`co_id`),
  ADD CONSTRAINT `room_id_fk` FOREIGN KEY (`room_id`) REFERENCES `tbl_rooms` (`room_id`),
  ADD CONSTRAINT `student_id_fk` FOREIGN KEY (`st_id`) REFERENCES `tbl_student` (`st_id`),
  ADD CONSTRAINT `teacher_id_fk` FOREIGN KEY (`teacher_id`) REFERENCES `tbl_teacher` (`teacher_id`);

--
-- Constraints for table `tbl_course_reg`
--
ALTER TABLE `tbl_course_reg`
  ADD CONSTRAINT `st_id_fk` FOREIGN KEY (`st_id`) REFERENCES `tbl_student` (`st_id`);

--
-- Constraints for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  ADD CONSTRAINT `dsignationn_id_fk` FOREIGN KEY (`emp_designation_id`) REFERENCES `tbl_designation` (`emp_designation_id`),
  ADD CONSTRAINT `emp_categoryy_id_fk` FOREIGN KEY (`emp_category_id`) REFERENCES `tbl_employee_category` (`emp_category_id`),
  ADD CONSTRAINT `emp_typpe_id_fk` FOREIGN KEY (`emp_type_id`) REFERENCES `tbl_employee_type` (`emp_type_id`);

--
-- Constraints for table `tbl_paper`
--
ALTER TABLE `tbl_paper`
  ADD CONSTRAINT `co_idd_fk` FOREIGN KEY (`co_id`) REFERENCES `tbl_course_reg` (`co_id`),
  ADD CONSTRAINT `quzee_id_fk` FOREIGN KEY (`quz_id`) REFERENCES `tbl_quezies` (`quz_id`),
  ADD CONSTRAINT `studentt_id_fk` FOREIGN KEY (`st_id`) REFERENCES `tbl_student` (`st_id`),
  ADD CONSTRAINT `teacherr_id_fk` FOREIGN KEY (`teacher_id`) REFERENCES `tbl_teacher` (`teacher_id`);

--
-- Constraints for table `tbl_quezies`
--
ALTER TABLE `tbl_quezies`
  ADD CONSTRAINT `couurse_id_fk` FOREIGN KEY (`course_id`) REFERENCES `tbl_course_reg` (`co_id`),
  ADD CONSTRAINT `quz_type_id_fk` FOREIGN KEY (`quz_type_id`) REFERENCES `tbl_quze_type` (`quz_type_id`),
  ADD CONSTRAINT `strudent_id_fk` FOREIGN KEY (`st_id`) REFERENCES `tbl_student` (`st_id`),
  ADD CONSTRAINT `studeent_id_fk` FOREIGN KEY (`st_id`) REFERENCES `tbl_student` (`st_id`),
  ADD CONSTRAINT `teaacher_id_fk` FOREIGN KEY (`teacher_id`) REFERENCES `tbl_teacher` (`teacher_id`);

--
-- Constraints for table `tbl_salary`
--
ALTER TABLE `tbl_salary`
  ADD CONSTRAINT `advancee_salary_id_fk` FOREIGN KEY (`advance_salary_id`) REFERENCES `tbl_advance_salary` (`advance_salary_id`),
  ADD CONSTRAINT `allwoancee_id_fk` FOREIGN KEY (`allowance_id`) REFERENCES `tbl_allowance` (`allowance_id`),
  ADD CONSTRAINT `bonuss_is_fk` FOREIGN KEY (`bonus_is`) REFERENCES `tbl_bonus` (`bonus_is`),
  ADD CONSTRAINT `designationn_id_fk` FOREIGN KEY (`emp_designation_id`) REFERENCES `tbl_designation` (`emp_designation_id`),
  ADD CONSTRAINT `employeee_id_fk` FOREIGN KEY (`emp_id`) REFERENCES `tbl_employee` (`emp_id`);

--
-- Constraints for table `tbl_student`
--
ALTER TABLE `tbl_student`
  ADD CONSTRAINT `parient_id_fk` FOREIGN KEY (`pa_id`) REFERENCES `tbl_parient` (`pa_id`),
  ADD CONSTRAINT `registration_id_fk` FOREIGN KEY (`reg_id`) REFERENCES `tbl_registration` (`reg_id`);

--
-- Constraints for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD CONSTRAINT `rolee_id_fk` FOREIGN KEY (`role_id`) REFERENCES `tbl_role` (`role_id`);

--
-- Constraints for table `tb_free`
--
ALTER TABLE `tb_free`
  ADD CONSTRAINT `bankk_id_fk` FOREIGN KEY (`bank_id`) REFERENCES `tbl_bank` (`bank_id`),
  ADD CONSTRAINT `freee_dues_id_fk` FOREIGN KEY (`free_dues_id`) REFERENCES `tbl_free_dues` (`free_dues_id`),
  ADD CONSTRAINT `freee_type_id_fk` FOREIGN KEY (`free_type_id`) REFERENCES `tbl_free_type` (`free_type_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
