CREATE DATABASE employee101;
SHOW CREATE DATABASE employee101;
SHOW DATABASES;
USE employee101;

CREATE TABLE Employee(
    emp_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(45) NOT NULL,
    birth_date DATE NOT NULL,
    gender CHAR(1) NOT NULL,
    hire_date DATE NOT NULL,
    PRIMARY KEY (emp_id)
);

desc Employee;
select * from Employee;
insert into Employee(emp_id,name, birth_date, gender, hire_date) values (101,'Bryan', '1988-08-12', 'M', '2015-08-26');
select * from Employee;
insert into Employee(name, birth_date, gender, hire_date) values ('Joseph', '1978-05-12', 'M', '2014-10-21');
select * from Employee;
insert into Employee(name, birth_date, gender, hire_date) values ('Mike', '1984-10-13', 'M', '2017-10-28');
select * from Employee;
insert into Employee(name, birth_date, gender, hire_date) values ('Daren', '1979-04-11', 'F', '2006-11-01');
select * from Employee;
insert into Employee(name, birth_date, gender, hire_date) values ('Marie', '1990-02-11', 'F', '2018-10-12');
select * from Employee;
insert into Employee(name, birth_date, gender, hire_date) values ('Marco', '1988-04-11', 'M', '2010-10-12');
select * from Employee;
insert into Employee(name, birth_date, gender, hire_date) values ('Antonio', '1982-02-15', 'M', '2005-10-12');
select * from Employee;

delete from Employee where emp_id = 107;
select * from Employee;

select * from Employee where hire_date > '2014-01-01';


