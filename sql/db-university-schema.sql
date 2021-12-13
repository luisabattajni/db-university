-- SCHEMA
CREATE DATABASE `db-university`;
USE `db-university`;

CREATE TABLE `departments`(
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(100) NOT NULL,
	`address` VARCHAR(255),
	`phone` INT,
	`email` VARCHAR(100),
	`website` VARCHAR(100),
	`head_of_department` VARCHAR(100),
	PRIMARY KEY(`id`)
);
-- mod

CREATE TABLE `degrees`(
	`id`INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(255) NOT NULL,
	`address` VARCHAR(255),
	`email`VARCHAR(100),
	`level` VARCHAR(100),
	`departments_id` INT NOT NULL,
	PRIMARY KEY(`id`),
	FOREIGN KEY(`departments_id`) REFERENCES departments(`id`)
);

CREATE TABLE `student`(
	`id`INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(255) NOT NULL,
	`surname` VARCHAR(255) NOT NULL,
	`date_of_birth` DATE NOT NULL,
	`fiscal_code` INT NOT NULL,
	`enrolment_date` DATE NOT NULL,
	`registration_number` INT NOT NULL,
	`email`VARCHAR(100),
	`degrees_id` INT NOT NULL,
	PRIMARY KEY(`id`),
	FOREIGN KEY(`degrees_id`) REFERENCES `degrees`(`id`)
);

CREATE TABLE `courses`(
	`id`INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(255) NOT NULL,
	`description` VARCHAR(255),
	`website` VARCHAR(255),
	`cfu` INT NOT NULL,
	`degrees_id` INT NOT NULL,
	PRIMARY KEY(`id`),
	FOREIGN KEY(`degrees_id`) REFERENCES `degrees`(`id`)
);

CREATE TABLE `exams`(
	`id`INT NOT NULL AUTO_INCREMENT,
	`date` DATE NOT NULL,
	`hour` TIME NOT NULL,
	`location` VARCHAR(255),
	`address` VARCHAR(255),
	`courses_id` INT NOT NULL,
	PRIMARY KEY(`id`),
	FOREIGN KEY(`courses_id`) REFERENCES courses(`id`)
);




-- !! many to many, vedi esempio sotto
-- mail not null perché dovrebbero avere almeno quella di ufficio?
CREATE TABLE `teachers`(
	`id`INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(255) NOT NULL,
	`surname` VARCHAR(255) NOT NULL,
	`phone` INT,
	`email`VARCHAR(100) NOT NULL,
	`office_address` VARCHAR(255),
	PRIMARY KEY(`id`)
);

-- tabella n-n courses teachers

CREATE TABLE `courses_teachers`(
	`courses_id` INT NOT NULL,
	`teachers_id` INT NOT NULL,
	PRIMARY KEY(`courses_id`,`teachers_id`),
	FOREIGN KEY(`courses_id`) REFERENCES courses(`id`),
	FOREIGN KEY(`teachers_id`) REFERENCES `teachers`(`id`)
);

-- tabella n-n courses teachers

CREATE TABLE `student_exams`(
    `student_id`INT NOT NULL,
	`exams_id`INT NOT NULL,
	`vote` INT NOT NULL,
	PRIMARY KEY(`student_id`, `exams_id`),
	FOREIGN KEY(`student_id`) REFERENCES student(`id`),
	FOREIGN KEY(`exams_id`) REFERENCES exams(`id`)
);






