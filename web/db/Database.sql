/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  kili
 * Created: 27 Jul, 2018
 */
/*Create the database in the name of svote*/

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";
CREATE TABLE `bjp` (
  `name` varchar(30) COLLATE utf8_bin NOT NULL,
  `aadhar` varchar(30) COLLATE utf8_bin NOT NULL,
  `voterid` varchar(30) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `cong`
--

CREATE TABLE `cong` (
  `name` varchar(30) COLLATE utf8_bin NOT NULL,
  `aadhar` varchar(30) COLLATE utf8_bin NOT NULL,
  `voterid` varchar(30) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `nonvoted`
--

CREATE TABLE `nonvoted` (
  `name` varchar(30) COLLATE utf8_bin NOT NULL,
  `aadhar` varchar(30) COLLATE utf8_bin NOT NULL,
  `voterid` varchar(30) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bjp`
--
ALTER TABLE `bjp`
  ADD PRIMARY KEY (`aadhar`);

--
-- Indexes for table `cong`
--
ALTER TABLE `cong`
  ADD PRIMARY KEY (`aadhar`);

--
-- Indexes for table `nonvoted`
--
ALTER TABLE `nonvoted`
  ADD PRIMARY KEY (`aadhar`);
COMMIT;