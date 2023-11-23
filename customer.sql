CREATE DATABASE customer;
SHOW CREATE DATABASE customer;
SHOW DATABASES;
USE customer;

CREATE TABLE Customer(
    Id INT NOT NULL AUTO_INCREMENT,
    Name VARCHAR(45) NOT NULL,
    Product VARCHAR(20) NOT NULL,
    Country VARCHAR(25) NOT NULL,
    Year INT NOT NULL,
    PRIMARY KEY (Id)
);

desc Customer;
select * from Customer;
insert into Customer(Name,Product,Country,Year) values ('Stephen','Computer','USA',2015);
insert into Customer(Name,Product,Country,Year) values ('Joseph','Laptop','India',2016);
insert into Customer(Name,Product,Country,Year) values ('John','TV','USA',2016);
insert into Customer(Name,Product,Country,Year) values ('Donald','Laptop','England',2015);
insert into Customer(Name,Product,Country,Year) values ('Joseph','Mobile','India',2015);
insert into Customer(Name,Product,Country,Year) values ('Peter','Mouse','England',2016);
select * from Customer;

select * from Customer where Country = 'USA';
select * from Customer where Country = 'India';

select * from Customer where Product = 'Laptop';

select * from Customer where name like 'J%';


