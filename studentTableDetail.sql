desc student;
select * from student;
select * from student WHERE dept_name = 'Civil Eng.';
select * from student WHERE dept_name='Civil Eng.' ORDER BY name;
select * from student WHERE dept_name = 'Civil Eng.' AND tot_cred >= 100;
select ID, name, dept_name from student WHERE dept_name = 'Comp. Sci.';

desc instructor;
select ID, name, dept_name, salary, salary*1.05 as "New Salary" from instructor WHERE dept_name = 'Comp. Sci.';

desc takes;
select * from takes where ID = '1000' and year = '2005';
select * from takes where ID='1000' and NOT year='2005';
select * from takes where year IN ('2001','2003','2006') and semester ='Fall';

select * FROM student WHERE tot_cred BETWEEN 80 AND 90;
select * FROM student WHERE name LIKE 'A%';
select * FROM student WHERE name LIKE '%um';
SELECT * FROM student WHERE dept_name LIKE '%Eng.%' AND name LIKE '%um%';