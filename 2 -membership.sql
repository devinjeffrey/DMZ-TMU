CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `members_teams_id` bigint(20) UNSIGNED NOT NULL,
  `members_first_name` varchar(60) NOT NULL DEFAULT '',
  `members_last_name` varchar(60) NOT NULL DEFAULT '',
  `members_birth_date` date NOT NULL,
  `members_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `members` (`id`, `members_teams_id`, `members_first_name`, `members_last_name`, `members_birth_date`, `members_status`) VALUES
(1, 1, 'Devin', 'Jeffrey', '1987-09-29', 1),
(2, 1, 'Jane ', 'Doe', '1980-07-01', 1),
(3, 1, 'Michael ', 'Scott', '1979-09-13', 1),
(4, 2, 'Jodie ', 'Doe', '1987-04-22', 1),
(5, 0, 'Greg', 'Owens', '1989-03-23', 0),
(6, 1, 'John', 'Clement', '1987-09-29', 1),
(7, 3, 'Gwen ', 'Doe', '1980-07-01', 1),
(8, 1, 'Michael ', 'Fraser', '1979-09-13', 1),
(9, 4, 'Jackie ', 'Foster', '1987-04-22', 1),
(10, 0, 'Kaleb', 'Smith', '1989-03-23', 0);

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teams_name` varchar(60) NOT NULL DEFAULT '',
  `teams_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `teams` (`id`, `teams_name`, `teams_status`) VALUES
(1, 'Management', 1),
(2, 'IT', 1),
(3, 'Finance', 0),
(4, 'Human Resources', 1);

ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `members_teams_id` (`members_teams_id`);

ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

