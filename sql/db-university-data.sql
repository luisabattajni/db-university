USE `db-university`;

-- DATI
INSERT INTO `departments`(`name`,`address`) VALUES ('Ingegneria', 'P.za Leonardo da Vinci, Milano');
INSERT INTO `departments`(`name`,`address`) VALUES ('Economia', 'Via Cavour, Milano');	
INSERT INTO `departments`(`name`,`address`) VALUES ('Archiettura', 'Via Montevideo 11, Milano');	

INSERT INTO `degrees`(`name`, `email`,`level`, `departments_id`) VALUES ('Laurea in Ingegneria Informatica', 'informatica@polimi.it', 'Triennale', 1);
INSERT INTO `degrees`(`name`, `email`,`level`, `departments_id`) VALUES ('Laurea in Ingegneria Chimica', 'chimica@polimi.it', 'Triennale', 2);
INSERT INTO `degrees`(`name`, `email`,`level`, `departments_id`) VALUES ('Laurea in Ingegneria Biomedica', 'biomedica@polimi.it', 'Magistrale', 3);

INSERT INTO `student`(`name`,`surname`, `date_of_birth`, `fiscal_code`,`enrolment_date`, `registration_number`, `email`, `degrees_id`) VALUES ('Mario', 'Rossi', '1998-03-01', 38408, '2020-03-01', 1233, 'mariorossi@gmail.com', 2);
INSERT INTO `student`(`name`,`surname`, `date_of_birth`, `fiscal_code`, `enrolment_date`, `registration_number`, `email`, `degrees_id`) VALUES ('Maria', 'Bianchi', '1990-10-10', 2222, '2019-04-01', 22323, 'mariabianchi@gmail.com', 3);
INSERT INTO `student`(`name`,`surname`, `date_of_birth`, `fiscal_code`, `enrolment_date`, `registration_number`, `email`, `degrees_id`) VALUES ('Asdrubale', 'Verdi', '1992-05-02', 47267, '2016-03-01', 6464, 'billverdi@gmail.com', 1);

INSERT INTO `courses`(`name`, `cfu`, `degrees_id`) VALUES ('Analisi 1', 6, 1);
INSERT INTO `courses`(`name`, `cfu`, `degrees_id`) VALUES ('Matematica', 6, 2);

INSERT INTO `exams`(`date`,`hour`, `courses_id`) VALUES ('2020-03-01', '18:00:00', 1);
INSERT INTO `exams`(`date`,`hour`, `courses_id`) VALUES ('2021-12-01', '10:30:00', 2);



SELECT * FROM `departments`;
SELECT * FROM `degrees`;
SELECT * FROM `student`;
SELECT * FROM `courses`;
SELECT * FROM `exams`;
