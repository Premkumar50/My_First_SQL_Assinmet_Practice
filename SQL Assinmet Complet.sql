-- Create the employeex Table 
CREATE TABLE employeex(
employee_id SERIAL PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
department VARCHAR(50),
salary DECIMAL(10, 2) CHECK (salary > 0),
joining_date DATE NOT NULL, age INT CHECK (age >= 18)
);

SELECT * FROM  employeex;

--Insert data into employeex Table
INSERT INTO employeex (first_name, last_name, department, salary, joining_date, age)
VALUES('Amit', 'Sharma', 'IT', 60000.00, '2022-05-01', 29),
      ('Neha', 'Patel', 'HR', 55000.00, '2021-08-15', 32),
      ('Ravi', 'Kumar', 'Finance', 70000.00, '2020-03-10', 35),
	  ('Anjali', 'Verma', 'IT', 65000.00, '2019-11-22', 28),
      ('Suresh', 'Reddy', 'Operations', 50000.00, '2023-01-10', 26);

	  -- 	QUESTIONS SOLVING :

--Q1: Retrieve all employees' first_names and their departments.

SELECT first_name, department
FROM employeex;


--Q2: Update the salary of all employees in the 'IT' department by increasing it by 10%.

UPDATE employeex
SET salary = salary * 0.10
WHERE department = 'IT';

SELECT * FROM  employeex;

--Q3: Delete all employees who are older than 34 years.

DELETE FROM employeex
WHERE  age > 34;

--Q4: Add a new column 'email' to the 'employeex' table.

ALTER TABLE employeex
ADD COLUMN email VARCHAR(100);

--Q5: Rename the 'department' column to 'dept_name`.

ALTER TABLE employeex
RENAME COLUMN departmen TO dept_name;

--Q6: Retrieve the names of employeex who joined after January 1, 2021.

SELECT first_name, last_name, joining_date FROM employeex
WHERE joining_date > '2021-01-01';

SELECT * FROM  employeex;

--Q7: Change the data type of the 'salary' column to `INTEGER`.

ALTER TABLE employeex
ALTER COLUMN salary TYPE INTEGER USING salary :: INTEGER;

--Q8: List all employeex with their age and salary in descending order of salary.

SELECT first_name, age, salary FROM employeex
ORDER BY salary DESC;

--Q9: Insert a new employee with the following details: 'Raj', 'Singh', 'Marketing', 60000, '2023-09-15', 30.

INSERT INTO employeex(first_name, last_name, department, salary, joining_date, age)
VALUEs ('Raj', 'Singh','Marketing', 60000, '2023-09-15', 30); 

-- DELETE LAST ROW
 DELETE FROM employeex
 WHERE employee_id= 7;

SELECT * FROM  employeex;

--Q10: Update age of employee +1 to every employee  

UPDATE employeex
SET age=age+1;

-- Drop the Table if alredy exists
DROP TABLE IF EXISTS employeex;
