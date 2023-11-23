
DROP TABLE IF EXISTS emp_temp;


CREATE TABLE emp_temp (
  employee_id INT AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  department_id INT,
  salary DECIMAL(10, 2)
);

INSERT INTO emp_temp (first_name, last_name, department_id, salary)
VALUES
  ('John', 'Doe', 50, 12000.00),
  ('Jane', 'Smith', 50, 16000.00),
  ('Alice', 'Johnson', 50, 14000.00),
  ('Bob', 'Williams', 60, 18000.00),
  ('Eve', 'Davis', 50, 13000.00);

UPDATE emp_temp
SET salary = CASE
  WHEN department_id = 50 AND salary < 15000 THEN salary * 1.15
  WHEN department_id = 50 THEN salary * 1.10
  ELSE salary
  END;

SELECT * FROM emp_temp;
