CREATE DATABASE studentdb;
SHOW CREATE DATABASE studentdb;
SHOW DATABASES;
USE studentdb;
CREATE TABLE student_table (
    studentid INT NOT NULL AUTO_INCREMENT,
    firstname VARCHAR(45) NOT NULL,
    lastname VARCHAR(45) NOT NULL,
    age INT NOT NULL,
    class INT NOT NULL,
    PRIMARY KEY (studentid)
); 
desc student_table;
select * from student_table;
insert into student_table(firstname,lastname,class,age) values('Sandeep', 'Unnikrishnan', 12, 17);
select * from student_table;
insert into student_table(firstname,lastname,class,age) values('Anuj', 'Nayyar', 11, 19);
select * from student_table;
insert into student_table(firstname,lastname,class,age) values('Somnath', 'Sharma', 10, 15);
select * from student_table;

select max(age) from student_table;
