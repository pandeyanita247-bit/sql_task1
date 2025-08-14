
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

SELECT name, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

SELECT e.name, e.department_id, e.salary
FROM employees e
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
    WHERE department_id = e.department_id
);

SELECT name
FROM employees
WHERE department_id IN (
    SELECT department_id
    FROM departments
    WHERE location = 'New York'
);

SELECT d.department_name
FROM departments d
WHERE EXISTS (
    SELECT 1
    FROM employees e
    WHERE e.department_id = d.department_id
);

SELECT dept_avg.department_id, dept_avg.avg_salary
FROM (
    SELECT department_id, AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department_id
) AS dept_avg
WHERE dept_avg.avg_salary > 50000;