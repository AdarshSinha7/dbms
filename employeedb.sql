CREATE DATABASE employeedb;
SHOW CREATE DATABASE employeedb;
SHOW DATABASES;
USE emplyeedb;
CREATE TABLE employee_table( 
 id int NOT NULL AUTO_INCREMENT, 
 name varchar(45) NOT NULL, 
 occupation varchar(35) NOT NULL, 
 age int NOT NULL, 
 PRIMARY KEY (id) 
); 
desc employee_table;
select * from employee_table;
insert into employee_table(name,occupation,age) values('Bijit', 'GM', 36);
select * from employee_table;
insert into employee_table(name,occupation,age) values('Joshn', 'Programmer', 25);
select * from employee_table;
insert into employee_table(name,occupation,age) values('Anup', 'Das', 25);
