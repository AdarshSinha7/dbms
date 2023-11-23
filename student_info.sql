create database student_info;
use student_info;
CREATE TABLE student_info (
    stud_id INT NOT NULL AUTO_INCREMENT,
    stud_code INT NOT NULL,
    stud_name VARCHAR(45) NOT NULL,
    subject VARCHAR(20) NOT NULL,
    marks INT NOT NULL,
    phone VARCHAR(20) NOT NULL,
    PRIMARY KEY (stud_id)
);

desc student_info;

insert into student_info(stud_code,stud_name,subject,marks,phone) values (101,'Marks','English',68,'34545693537');
insert into student_info(stud_code,stud_name,subject,marks,phone) values (102,'Joseph','Physics',70,'98765435659');
insert into student_info(stud_code,stud_name,subject,marks,phone) values (103,'John','Maths',70,'97653269756');
insert into student_info(stud_code,stud_name,subject,marks,phone) values (104,'Barack','Maths',90,'87698753256');
insert into student_info(stud_code,stud_name,subject,marks,phone) values (105,'Rinky','Maths',85,'67531579757');
insert into student_info(stud_code,stud_name,subject,marks,phone) values (106,'Adam','Science',92,'79642256864');
insert into student_info(stud_code,stud_name,subject,marks,phone) values (107,'Andrew','Science',83,'56742437579');
insert into student_info(stud_code,stud_name,subject,marks,phone) values (108,'Brayan','Science',85,'75234165670');
insert into student_info(stud_id,stud_code,stud_name,subject,marks,phone) values (10,110,'Alexander','Biology',67,'2347346438');

SELECT 
    *
FROM
    student_info;

DELIMITER && 
CREATE PROCEDURE get_merit_student () 
BEGIN 
 SELECT * FROM student_info WHERE marks > 70; 
 SELECT COUNT(stud_code) AS Total_Student FROM student_info; 
END && 
DELIMITER ;

CALL get_merit_student();
