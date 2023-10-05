CREATE SCHEMA `nested_queries` ;

-- Create Table for students  

CREATE TABLE `nested_queries`.`students` (
  `student_id` INT NOT NULL,
  PRIMARY KEY (`student_id`));

  ALTER TABLE `nested_queries`.`students` 
ADD COLUMN `student_name` VARCHAR(45) NULL AFTER `student_id`;

ALTER TABLE `nested_queries`.`students` 
ADD COLUMN `age` INT NULL AFTER `student_name`,
ADD COLUMN `class_id` INT NULL AFTER `age`;

-- Insert Data into Student table

INSERT INTO `nested_queries`.`students` (`student_id`, `student_name`, `age`, `class_id`) VALUES ('1', 'student1', '18', '19');
INSERT INTO `nested_queries`.`students` (`student_id`, `student_name`, `age`, `class_id`) VALUES ('2', 'student2', '19', '20');
INSERT INTO `nested_queries`.`students` (`student_id`, `student_name`, `age`, `class_id`) VALUES ('3', 'student3', '17', '21');
INSERT INTO `nested_queries`.`students` (`student_id`, `student_name`, `age`, `class_id`) VALUES ('4', 'student4', '20', '22');

UPDATE `nested_queries`.`students` SET `class_id` = '101' WHERE (`student_id` = '1');
UPDATE `nested_queries`.`students` SET `class_id` = '102' WHERE (`student_id` = '2');
UPDATE `nested_queries`.`students` SET `class_id` = '102' WHERE (`student_id` = '3');
UPDATE `nested_queries`.`students` SET `class_id` = '103' WHERE (`student_id` = '4');

-- Create Table for classes 

CREATE TABLE `nested_queries`.`classes` (
  `class_id` INT NOT NULL,
  PRIMARY KEY (`class_id`));

  ALTER TABLE `nested_queries`.`classes` 
ADD COLUMN `class_name` VARCHAR(45) NULL AFTER `class_id`;

-- Insert Data into Class table 

INSERT INTO `nested_queries`.`classes` (`class_id`, `class_name`) VALUES ('101', 'Maths ');
INSERT INTO `nested_queries`.`classes` (`class_id`, `class_name`) VALUES ('102', 'Science ');
INSERT INTO `nested_queries`.`classes` (`class_id`, `class_name`) VALUES ('103', 'History ');


-- Create Table for Scores

CREATE TABLE `nested_queries`.`scores` (
  `student_id` INT NULL,
  `subject` VARCHAR(45) NULL,
  `score` INT NULL);

-- Insert data into scores 
INSERT INTO `nested_queries`.`scores` (`student_id`, `subject`, `score`) VALUES ('1', 'Maths', '90');
INSERT INTO `nested_queries`.`scores` (`student_id`, `subject`, `score`) VALUES ('1', 'Science', '85');
INSERT INTO `nested_queries`.`scores` (`student_id`, `subject`, `score`) VALUES ('2', 'Maths', '78');
INSERT INTO `nested_queries`.`scores` (`student_id`, `subject`, `score`) VALUES ('2', 'Science', '92');
INSERT INTO `nested_queries`.`scores` (`student_id`, `subject`, `score`) VALUES ('3', 'Maths', '88');
INSERT INTO `nested_queries`.`scores` (`student_id`, `subject`, `score`) VALUES ('3', 'Science', '79');
INSERT INTO `nested_queries`.`scores` (`student_id`, `subject`, `score`) VALUES ('4', 'History ', '95');


------------------------------------------------------------------------------------------------------------------------

