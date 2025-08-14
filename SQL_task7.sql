
-- Create Departments table
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50),
    location VARCHAR(50)
);

-- Create Employees table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    department_id INT,
    salary DECIMAL(10,2),
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

-- Insert departments
INSERT INTO departments (department_id, department_name, location) VALUES
(1, 'HR', 'New York'),
(2, 'Finance', 'Chicago'),
(3, 'IT', 'New York'),
(4, 'Marketing', 'Boston');

-- Insert employees
INSERT INTO employees (employee_id, name, department_id, salary) VALUES
(101, 'Alice', 1, 50000),
(102, 'Bob', 2, 60000),
(103, 'Charlie', 2, 55000),
(104, 'David', 3, 70000),
(105, 'Eva', 3, 72000),
(106, 'Frank', 4, 45000),
(107, 'Grace', 1, 52000);

CREATE VIEW view_ny_employees AS
SELECT e.employee_id, e.name, e.salary, d.department_name, d.location
FROM employees e
JOIN departments d ON e.department_id = d.department_id
WHERE d.location = 'New York';

CREATE VIEW view_avg_salary AS
SELECT d.department_name, AVG(e.salary) AS avg_salary
FROM employees e
JOIN departments d ON e.department_id = d.department_id
GROUP BY d.department_name;

CREATE VIEW view_employee_public AS
SELECT name, department_id
FROM employees;

SELECT * FROM view_ny_employees;
SELECT * FROM view_avg_salary;
SELECT * FROM view_employee_public;

CREATE OR REPLACE VIEW view_avg_salary AS
SELECT d.department_name, AVG(e.salary) AS avg_salary
FROM employees e
JOIN departments d ON e.department_id = d.department_id
GROUP BY d.department_name
HAVING AVG(e.salary) > 55000;

DROP VIEW view_ny_employees;