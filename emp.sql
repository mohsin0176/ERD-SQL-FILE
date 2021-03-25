-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2021 at 05:48 PM
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
-- Database: `emp`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee_account`
--

CREATE TABLE `employee_account` (
  `account_id` int(15) NOT NULL,
  `date_` date NOT NULL,
  `org_eobi_amount` decimal(18,3) NOT NULL,
  `salary_eobi_amount` decimal(18,3) NOT NULL,
  `org_medical_amount` decimal(18,3) NOT NULL,
  `salary_medical_amount` decimal(18,3) NOT NULL,
  `org_insurance_amount` decimal(18,3) NOT NULL,
  `salary_insurance_amount` decimal(18,3) NOT NULL,
  `total_eobi_amount` decimal(18,3) NOT NULL,
  `total_insurance_amount` decimal(18,3) NOT NULL,
  `total_medical_amount` decimal(18,3) NOT NULL,
  `emp_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `issue_salary`
--

CREATE TABLE `issue_salary` (
  `issue_salary_id` int(15) NOT NULL,
  `issue_date` date NOT NULL,
  `status` varchar(30) NOT NULL,
  `medical_amount` decimal(18,3) NOT NULL,
  `eobi_amount` decimal(18,3) NOT NULL,
  `insurance_amount` decimal(18,3) NOT NULL,
  `graudity_amount` decimal(18,3) NOT NULL,
  `personal_pay_amount` decimal(18,3) NOT NULL,
  `total_salary` decimal(18,3) NOT NULL,
  `net_amount` decimal(18,3) NOT NULL,
  `total_deduction_amount` decimal(18,3) NOT NULL,
  `loan_id` int(45) NOT NULL,
  `emp_id` int(45) NOT NULL,
  `advance_salar_scheme_id` int(45) NOT NULL,
  `issue_bonus_id` int(45) NOT NULL,
  `issue_allowance_id` int(45) NOT NULL,
  `attendance_id` int(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_advance_salary_payment`
--

CREATE TABLE `tbl_advance_salary_payment` (
  `payment_id` int(15) NOT NULL,
  `month_` date NOT NULL,
  `permonth_amount` decimal(10,3) NOT NULL,
  `status` varchar(15) NOT NULL,
  `description` varchar(100) NOT NULL,
  `deduction_date` date NOT NULL,
  `emp_id` int(15) NOT NULL,
  `advance_salar_scheme_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_advance_scheme`
--

CREATE TABLE `tbl_advance_scheme` (
  `advance_salar_scheme_id` int(15) NOT NULL,
  `date_` date NOT NULL,
  `perceneage_amount` decimal(10,3) NOT NULL,
  `deduction_each_month` decimal(10,3) NOT NULL,
  `duration_recover` varchar(14) NOT NULL,
  `emp_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_allowances`
--

CREATE TABLE `tbl_allowances` (
  `allowance_id` int(15) NOT NULL,
  `name_` varchar(23) NOT NULL,
  `date_` date NOT NULL,
  `status` varchar(13) NOT NULL,
  `amount` decimal(18,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_attendance`
--

CREATE TABLE `tbl_attendance` (
  `attendance_id` int(15) NOT NULL,
  `att_date` date NOT NULL,
  `starttime` date NOT NULL,
  `endtime` date NOT NULL,
  `status` varchar(20) NOT NULL,
  `emp_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_basic_salary`
--

CREATE TABLE `tbl_basic_salary` (
  `basic_salary_id` int(15) NOT NULL,
  `basic_salary_amount` decimal(10,3) NOT NULL,
  `date_` date NOT NULL,
  `emp_id` int(15) NOT NULL,
  `per_designation_id` int(15) NOT NULL,
  `fun_designation_id` int(15) NOT NULL,
  `total_basic_salary` decimal(10,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bonus`
--

CREATE TABLE `tbl_bonus` (
  `bonus_id` int(15) NOT NULL,
  `name_` varchar(23) NOT NULL,
  `date_` date NOT NULL,
  `status` varchar(13) NOT NULL,
  `amount` decimal(10,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_branch`
--

CREATE TABLE `tbl_branch` (
  `branch_id` int(15) NOT NULL,
  `name_` varchar(23) NOT NULL,
  `location_` varchar(50) NOT NULL,
  `phone_no` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(15) NOT NULL,
  `name_` varchar(20) NOT NULL,
  `status` varchar(23) NOT NULL,
  `date_` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_deduction`
--

CREATE TABLE `tbl_deduction` (
  `deduction_id` int(15) NOT NULL,
  `date_` date NOT NULL,
  `gaurity_deduction_amount` decimal(10,3) NOT NULL,
  `eobi_deduction_amount` decimal(10,3) NOT NULL,
  `insurance_deduction_amount` decimal(10,3) NOT NULL,
  `hba_mca_loan_deduction_amount` decimal(10,3) NOT NULL,
  `advance_salary_deduction_amount` decimal(10,3) NOT NULL,
  `attendance_deduction_amount` decimal(10,3) NOT NULL,
  `emp_id` int(15) NOT NULL,
  `basic_salary_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee`
--

CREATE TABLE `tbl_employee` (
  `emp_id` int(15) NOT NULL,
  `emp_no` varchar(11) NOT NULL,
  `emp_name` varchar(40) NOT NULL,
  `emp_father_name` varchar(40) NOT NULL,
  `emp_dob` date NOT NULL,
  `emp_address` varchar(60) NOT NULL,
  `emp_gender` varchar(12) NOT NULL,
  `emp_cnic_no` varchar(15) NOT NULL,
  `emp_image` varchar(255) NOT NULL,
  `emp_status` varchar(12) NOT NULL,
  `emp_join_data` date NOT NULL,
  `emp_leave_date` date NOT NULL,
  `emp_bps` varchar(12) NOT NULL,
  `per_designation_id` int(15) NOT NULL,
  `fun_designation_id` int(15) NOT NULL,
  `category_id` int(15) NOT NULL,
  `branch_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_fingure_detilas`
--

CREATE TABLE `tbl_fingure_detilas` (
  `fingure_detials_id` int(15) NOT NULL,
  `f1` varchar(40) NOT NULL,
  `f2` varchar(40) NOT NULL,
  `f3` varchar(40) NOT NULL,
  `f4` varchar(40) NOT NULL,
  `f5` varchar(40) NOT NULL,
  `f6` varchar(40) NOT NULL,
  `f7` varchar(40) NOT NULL,
  `f8` varchar(40) NOT NULL,
  `f9` varchar(40) NOT NULL,
  `f10` varchar(40) NOT NULL,
  `emp_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_functional_designation`
--

CREATE TABLE `tbl_functional_designation` (
  `fun_designation_id` int(15) NOT NULL,
  `per_name` varchar(12) NOT NULL,
  `per_status` varchar(30) NOT NULL,
  `per_date` date DEFAULT NULL,
  `salary` decimal(10,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_issue_allowance`
--

CREATE TABLE `tbl_issue_allowance` (
  `issue_allowance_id` int(15) NOT NULL,
  `issue_date` date NOT NULL,
  `issue_amount` decimal(18,3) NOT NULL,
  `emp_id` int(15) NOT NULL,
  `allowance_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_issue_bonus`
--

CREATE TABLE `tbl_issue_bonus` (
  `issue_bonus_id` int(15) NOT NULL,
  `issue_date` date NOT NULL,
  `issue_amount` decimal(18,3) NOT NULL,
  `emp_id` int(15) NOT NULL,
  `bonus_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_loan`
--

CREATE TABLE `tbl_loan` (
  `loan_id` int(15) NOT NULL,
  `loan_name` varchar(10) NOT NULL,
  `date_` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_loan_applicant`
--

CREATE TABLE `tbl_loan_applicant` (
  `applicant_id` int(15) NOT NULL,
  `emp_id` int(15) NOT NULL,
  `status` varchar(12) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_loan_payment`
--

CREATE TABLE `tbl_loan_payment` (
  `loan_payment_id` int(15) NOT NULL,
  `loan_id` int(15) NOT NULL,
  `emp_id` int(15) NOT NULL,
  `date_` date NOT NULL,
  `per_month_amount` decimal(10,3) DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `deduction_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_loan_scheme`
--

CREATE TABLE `tbl_loan_scheme` (
  `loan_scheme_id` int(15) NOT NULL,
  `duration` varchar(12) NOT NULL,
  `each_month_deduction_amount` decimal(18,3) NOT NULL,
  `date_` date NOT NULL,
  `loan_id` int(15) NOT NULL,
  `emp_id` int(15) NOT NULL,
  `total_amount` decimal(18,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_personal_designation`
--

CREATE TABLE `tbl_personal_designation` (
  `per_designation_id` int(15) NOT NULL,
  `per_name` varchar(12) NOT NULL,
  `per_status` varchar(30) NOT NULL,
  `per_date` date DEFAULT NULL,
  `salary` decimal(10,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_qualification`
--

CREATE TABLE `tbl_qualification` (
  `quali_id` int(15) NOT NULL,
  `ssc` varchar(13) NOT NULL,
  `hscc` varchar(13) NOT NULL,
  `bs` varchar(14) NOT NULL,
  `ms` varchar(13) NOT NULL,
  `description` varchar(100) NOT NULL,
  `experince` varchar(150) NOT NULL,
  `emp_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee_account`
--
ALTER TABLE `employee_account`
  ADD PRIMARY KEY (`account_id`),
  ADD KEY `emMMp_iDDDd_FKKK` (`emp_id`);

--
-- Indexes for table `issue_salary`
--
ALTER TABLE `issue_salary`
  ADD PRIMARY KEY (`issue_salary_id`),
  ADD KEY `loan_iddd_FK` (`loan_id`),
  ADD KEY `emp_iddd_FK` (`emp_id`),
  ADD KEY `advancee_salary_id_FK` (`advance_salar_scheme_id`),
  ADD KEY `isseue_bonus_amount_FK` (`issue_bonus_id`),
  ADD KEY `issuee_allownace_amount_FK` (`issue_allowance_id`),
  ADD KEY `atteendenace_id_FK` (`attendance_id`);

--
-- Indexes for table `tbl_advance_salary_payment`
--
ALTER TABLE `tbl_advance_salary_payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `emmp_idd_fk` (`emp_id`),
  ADD KEY `advance_saalaar_scheme_idd_fk` (`advance_salar_scheme_id`);

--
-- Indexes for table `tbl_advance_scheme`
--
ALTER TABLE `tbl_advance_scheme`
  ADD PRIMARY KEY (`advance_salar_scheme_id`),
  ADD KEY `emp_id_fkk` (`emp_id`);

--
-- Indexes for table `tbl_allowances`
--
ALTER TABLE `tbl_allowances`
  ADD PRIMARY KEY (`allowance_id`);

--
-- Indexes for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  ADD PRIMARY KEY (`attendance_id`),
  ADD KEY `emmp_iddd_fkk` (`emp_id`);

--
-- Indexes for table `tbl_basic_salary`
--
ALTER TABLE `tbl_basic_salary`
  ADD PRIMARY KEY (`basic_salary_id`),
  ADD KEY `fun_designation_id_fk` (`fun_designation_id`),
  ADD KEY `emp_id_fk` (`emp_id`);

--
-- Indexes for table `tbl_bonus`
--
ALTER TABLE `tbl_bonus`
  ADD PRIMARY KEY (`bonus_id`);

--
-- Indexes for table `tbl_branch`
--
ALTER TABLE `tbl_branch`
  ADD PRIMARY KEY (`branch_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_deduction`
--
ALTER TABLE `tbl_deduction`
  ADD PRIMARY KEY (`deduction_id`),
  ADD KEY `emp_idd_fk` (`emp_id`),
  ADD KEY `basic_salary_idd_fk` (`basic_salary_id`);

--
-- Indexes for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  ADD PRIMARY KEY (`emp_id`),
  ADD KEY `per_designation_idd_fk` (`per_designation_id`),
  ADD KEY `fun_designation_idd_fk` (`fun_designation_id`),
  ADD KEY `category_idd_fk` (`category_id`),
  ADD KEY `branch_idd_fk` (`branch_id`);

--
-- Indexes for table `tbl_fingure_detilas`
--
ALTER TABLE `tbl_fingure_detilas`
  ADD PRIMARY KEY (`fingure_detials_id`),
  ADD KEY `emp_iddd_fkk` (`emp_id`);

--
-- Indexes for table `tbl_functional_designation`
--
ALTER TABLE `tbl_functional_designation`
  ADD PRIMARY KEY (`fun_designation_id`);

--
-- Indexes for table `tbl_issue_allowance`
--
ALTER TABLE `tbl_issue_allowance`
  ADD PRIMARY KEY (`issue_allowance_id`),
  ADD KEY `emmmp_iddd_fkk` (`emp_id`),
  ADD KEY `allowaaance_iddd_fkk` (`allowance_id`);

--
-- Indexes for table `tbl_issue_bonus`
--
ALTER TABLE `tbl_issue_bonus`
  ADD PRIMARY KEY (`issue_bonus_id`),
  ADD KEY `emp_iddd_fkkk` (`emp_id`),
  ADD KEY `issue_bonuus_iddd_fkkk` (`bonus_id`);

--
-- Indexes for table `tbl_loan`
--
ALTER TABLE `tbl_loan`
  ADD PRIMARY KEY (`loan_id`);

--
-- Indexes for table `tbl_loan_applicant`
--
ALTER TABLE `tbl_loan_applicant`
  ADD PRIMARY KEY (`applicant_id`),
  ADD KEY `emp_idd_fkk` (`emp_id`);

--
-- Indexes for table `tbl_loan_payment`
--
ALTER TABLE `tbl_loan_payment`
  ADD PRIMARY KEY (`loan_payment_id`),
  ADD KEY `empp_id_FK` (`emp_id`),
  ADD KEY `loaan_id_FK` (`loan_id`);

--
-- Indexes for table `tbl_loan_scheme`
--
ALTER TABLE `tbl_loan_scheme`
  ADD PRIMARY KEY (`loan_scheme_id`),
  ADD KEY `emmp_idd_fkk` (`emp_id`),
  ADD KEY `loaan_idd_fkk` (`loan_id`);

--
-- Indexes for table `tbl_personal_designation`
--
ALTER TABLE `tbl_personal_designation`
  ADD PRIMARY KEY (`per_designation_id`);

--
-- Indexes for table `tbl_qualification`
--
ALTER TABLE `tbl_qualification`
  ADD PRIMARY KEY (`quali_id`),
  ADD KEY `emp_id` (`emp_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee_account`
--
ALTER TABLE `employee_account`
  ADD CONSTRAINT `emMMp_iDDDd_FKKK` FOREIGN KEY (`emp_id`) REFERENCES `tbl_employee` (`emp_id`);

--
-- Constraints for table `issue_salary`
--
ALTER TABLE `issue_salary`
  ADD CONSTRAINT `advancee_salary_id_FK` FOREIGN KEY (`advance_salar_scheme_id`) REFERENCES `tbl_advance_scheme` (`advance_salar_scheme_id`),
  ADD CONSTRAINT `atteendenace_id_FK` FOREIGN KEY (`attendance_id`) REFERENCES `tbl_attendance` (`attendance_id`),
  ADD CONSTRAINT `emp_iddd_FK` FOREIGN KEY (`emp_id`) REFERENCES `tbl_employee` (`emp_id`),
  ADD CONSTRAINT `isseue_bonus_amount_FK` FOREIGN KEY (`issue_bonus_id`) REFERENCES `tbl_issue_bonus` (`issue_bonus_id`),
  ADD CONSTRAINT `issuee_allownace_amount_FK` FOREIGN KEY (`issue_allowance_id`) REFERENCES `tbl_issue_allowance` (`issue_allowance_id`),
  ADD CONSTRAINT `loan_iddd_FK` FOREIGN KEY (`loan_id`) REFERENCES `tbl_loan` (`loan_id`);

--
-- Constraints for table `tbl_advance_salary_payment`
--
ALTER TABLE `tbl_advance_salary_payment`
  ADD CONSTRAINT `advance_saalaar_scheme_idd_fk` FOREIGN KEY (`advance_salar_scheme_id`) REFERENCES `tbl_advance_scheme` (`advance_salar_scheme_id`),
  ADD CONSTRAINT `emmp_idd_fk` FOREIGN KEY (`emp_id`) REFERENCES `tbl_employee` (`emp_id`);

--
-- Constraints for table `tbl_advance_scheme`
--
ALTER TABLE `tbl_advance_scheme`
  ADD CONSTRAINT `emp_id_fkk` FOREIGN KEY (`emp_id`) REFERENCES `tbl_employee` (`emp_id`);

--
-- Constraints for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  ADD CONSTRAINT `emmp_iddd_fkk` FOREIGN KEY (`emp_id`) REFERENCES `tbl_employee` (`emp_id`);

--
-- Constraints for table `tbl_basic_salary`
--
ALTER TABLE `tbl_basic_salary`
  ADD CONSTRAINT `emp_id_fk` FOREIGN KEY (`emp_id`) REFERENCES `tbl_employee` (`emp_id`),
  ADD CONSTRAINT `fun_designation_id_fk` FOREIGN KEY (`fun_designation_id`) REFERENCES `tbl_functional_designation` (`fun_designation_id`);

--
-- Constraints for table `tbl_deduction`
--
ALTER TABLE `tbl_deduction`
  ADD CONSTRAINT `basic_salary_idd_fk` FOREIGN KEY (`basic_salary_id`) REFERENCES `tbl_basic_salary` (`basic_salary_id`),
  ADD CONSTRAINT `emp_idd_fk` FOREIGN KEY (`emp_id`) REFERENCES `tbl_employee` (`emp_id`);

--
-- Constraints for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  ADD CONSTRAINT `branch_idd_fk` FOREIGN KEY (`branch_id`) REFERENCES `tbl_branch` (`branch_id`),
  ADD CONSTRAINT `category_idd_fk` FOREIGN KEY (`category_id`) REFERENCES `tbl_category` (`category_id`),
  ADD CONSTRAINT `fun_designation_idd_fk` FOREIGN KEY (`fun_designation_id`) REFERENCES `tbl_functional_designation` (`fun_designation_id`),
  ADD CONSTRAINT `per_designation_idd_fk` FOREIGN KEY (`per_designation_id`) REFERENCES `tbl_personal_designation` (`per_designation_id`);

--
-- Constraints for table `tbl_fingure_detilas`
--
ALTER TABLE `tbl_fingure_detilas`
  ADD CONSTRAINT `emp_iddd_fkk` FOREIGN KEY (`emp_id`) REFERENCES `tbl_employee` (`emp_id`);

--
-- Constraints for table `tbl_issue_allowance`
--
ALTER TABLE `tbl_issue_allowance`
  ADD CONSTRAINT `allowaaance_iddd_fkk` FOREIGN KEY (`allowance_id`) REFERENCES `tbl_allowances` (`allowance_id`),
  ADD CONSTRAINT `emmmp_iddd_fkk` FOREIGN KEY (`emp_id`) REFERENCES `tbl_employee` (`emp_id`);

--
-- Constraints for table `tbl_issue_bonus`
--
ALTER TABLE `tbl_issue_bonus`
  ADD CONSTRAINT `emp_iddd_fkkk` FOREIGN KEY (`emp_id`) REFERENCES `tbl_employee` (`emp_id`),
  ADD CONSTRAINT `issue_bonuus_iddd_fkkk` FOREIGN KEY (`bonus_id`) REFERENCES `tbl_bonus` (`bonus_id`);

--
-- Constraints for table `tbl_loan_applicant`
--
ALTER TABLE `tbl_loan_applicant`
  ADD CONSTRAINT `emp_idd_fkk` FOREIGN KEY (`emp_id`) REFERENCES `tbl_employee` (`emp_id`);

--
-- Constraints for table `tbl_loan_payment`
--
ALTER TABLE `tbl_loan_payment`
  ADD CONSTRAINT `empp_id_FK` FOREIGN KEY (`emp_id`) REFERENCES `tbl_employee` (`emp_id`),
  ADD CONSTRAINT `loaan_id_FK` FOREIGN KEY (`loan_id`) REFERENCES `tbl_loan` (`loan_id`);

--
-- Constraints for table `tbl_loan_scheme`
--
ALTER TABLE `tbl_loan_scheme`
  ADD CONSTRAINT `emmp_idd_fkk` FOREIGN KEY (`emp_id`) REFERENCES `tbl_employee` (`emp_id`),
  ADD CONSTRAINT `loaan_idd_fkk` FOREIGN KEY (`loan_id`) REFERENCES `tbl_loan` (`loan_id`);

--
-- Constraints for table `tbl_qualification`
--
ALTER TABLE `tbl_qualification`
  ADD CONSTRAINT `emp_id` FOREIGN KEY (`emp_id`) REFERENCES `tbl_employee` (`emp_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
