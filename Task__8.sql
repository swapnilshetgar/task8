-- drop table if exists employees;

CREATE TABLE employees (
    emp_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    salary NUMERIC
);

INSERT INTO employees (name, department, salary) VALUES
('Rushikesh', 'IT', 60000),
('Abhishek', 'HR', 45000),
('Sneha', 'IT', 72000),
('Aman', 'Finance', 50000),
('Priya', 'HR', 55000);

select * from employees;

-- procedure
CREATE OR REPLACE PROCEDURE update_salary_by_dept(
    dept_name VARCHAR,
    percent_increase NUMERIC
)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE employees
    SET salary = salary + (salary * percent_increase / 100)
    WHERE department = dept_name;

    RAISE NOTICE 'Salary updated for department: %', dept_name;
END;
$$;

-- calling procedure
CALL update_salary_by_dept('HR', 10);

-- fucntion to get average salary from department

CREATE OR REPLACE FUNCTION get_avg_salary(dept_name VARCHAR)
RETURNS NUMERIC
LANGUAGE plpgsql
AS $$
DECLARE
    avg_salary NUMERIC;
BEGIN
    SELECT AVG(salary) INTO avg_salary
    FROM employees
    WHERE department = dept_name;

    RETURN avg_salary;
END;
$$;

-- calling function 
SELECT get_avg_salary('IT');