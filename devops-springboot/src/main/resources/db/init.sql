create schema devops collate utf8mb4_0900_ai_ci;
USE devops;
CREATE TABLE `contact` (
                           `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
                           `age` int(3) NOT NULL,
                           `dob` date NOT NULL,
                           `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
                           `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
ALTER TABLE `contact`
    ADD PRIMARY KEY (`id`);
ALTER TABLE `contact`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;COMMIT;

INSERT INTO `contact` (`name`, `age`, `dob`, `email`, `id`) VALUES
                                                                ('Nguyễn văn B', 22, '2017-11-15', 'vanb@gamil.com', 2),
                                                                ('Nguyễn A', 22, '2017-11-01', 'test@gmail.com', 3),
                                                                ('Nguyễn C', 23, '1997-11-01', 'test@gmail.com', 4),
                                                                ('Test', 25, '1990-11-01', 'test@gmail.com', 5);