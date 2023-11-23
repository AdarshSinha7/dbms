CREATE DATABASE employeedb_alter;
SHOW CREATE DATABASE employeedb_alter;
SHOW DATABASES;
USE employeedb_alter;
CREATE TABLE employee1_table( 
 id int NOT NULL AUTO_INCREMENT, 
 name varchar(45) NOT NULL, 
 occupation varchar(35) NOT NULL, 
 age int NOT NULL, 
 PRIMARY KEY (id) 
); 
desc employee1_table;
select * from employee1_table;
insert into employee1_table(name,occupation,age) values('Bijit', 'GM', 36);
select * from employee1_table;
insert into employee1_table(name,occupation,age) values('Joshn', 'Programmer', 25);
select * from employee1_table;
insert into employee1_table(name,occupation,age) values('Anup', 'Das', 25);
select * from employee1_table;

alter table employee1_table add column salary decimal(10, 2);

update employee1_table set salary = 50000 where id = 1;
update employee1_table set salary = 40000 where id = 2;
update employee1_table set salary = 0 where id = 3;


