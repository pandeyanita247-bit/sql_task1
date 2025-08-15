
CREATE TABLE employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);

-- Insert sample data
INSERT INTO employees (emp_name, department, salary) VALUES
('John Doe', 'HR', 50000),
('Jane Smith', 'IT', 60000),
('Mike Johnson', 'Finance', 55000),
('Sara Williams', 'IT', 65000);

DELIMITER //
CREATE PROCEDURE GetEmployeesByDept(IN deptName VARCHAR(50))
BEGIN
    SELECT * FROM employees
    WHERE department = deptName;
END //
DELIMITER ;

DELIMITER //
CREATE FUNCTION GetAnnualSalary(monthlySalary DECIMAL(10,2))
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE annualSalary DECIMAL(10,2);
    SET annualSalary = monthlySalary * 12;
    RETURN annualSalary;
END //
DELIMITER ;