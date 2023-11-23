desc instructor;
select * from instructor WHERE dept_name = "Biology";

desc course;
select * from course WHERE dept_name = "Comp. Sci." AND credits = 3;
select c.course_id, c.title FROM course c JOIN takes t ON c.course_id = t.course_id WHERE t.ID = '10267';

select t.ID, sum(c.credits) as total_credits from takes t JOIN course c ON t.course_id = c.course_id GROUP BY t.ID;
select DISTINCT s.name FROM student s JOIN takes t ON s.ID = t.ID JOIN course c ON t.course_id = c.course_id JOIN department d ON c.dept_name = d.dept_name WHERE d.dept_name = 'Comp. Sci.';

select d.dept_name, MAX(i.salary) AS max_salary FROM department d JOIN instructor i ON d.dept_name = i.dept_name GROUP BY d.dept_name;

select MIN(max_salary) AS lowest_max_salary
FROM (
    select MAX(i.salary) AS max_salary
    FROM department d
    JOIN instructor i ON d.dept_name = i.dept_name
    GROUP BY d.dept_name
) department_max_salaries;

