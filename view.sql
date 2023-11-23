CREATE VIEW student_course_view AS
SELECT
    s.ID AS student_id,
    s.name AS Name,
    t.course_id AS course_taken,
    t.semester,
    t.year
FROM student s
JOIN takes t ON s.ID = t.ID;

CREATE VIEW instructor_department_view AS
SELECT
    i.ID,
    i.name,
    d.dept_name,
    d.building
FROM instructor i
JOIN department d ON i.dept_name = d.dept_name;

SELECT * FROM student_course_view;
SELECT * FROM instructor_department_view;

