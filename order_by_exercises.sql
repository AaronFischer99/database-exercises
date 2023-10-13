-- use employees;
-- select * from employees;

-- Find all employees with first names 'Irena', 'Vidya', or 'Maya', and order your results returned by first name. 
-- In your comments, answer: What was the first and last name in the first row of the results? 
-- What was the first and last name of the last person in the table?
-- select * from employees where first_name in ('Irena', 'Vidya', 'Maya')
-- order by first_name asc;   -- first result: Irena Reutenauer, last result: Vidya Simmen

-- Find all employees with first names 'Irena', 'Vidya', or 'Maya', and order your results returned by first name and then last name. 
-- In your comments, answer: What was the first and last name in the first row of the results? 
-- What was the first and last name of the last person in the table?
-- select * from employees where first_name in ('Irena', 'Vidya', 'Maya')
-- order by first_name asc, last_name asc;  -- first result: Irena Action, last result: Vidya Zweizig

-- Find all employees with first names 'Irena', 'Vidya', or 'Maya', 
-- and order your results returned by last name and then first name. 
-- In your comments, answer: What was the first and last name in the first row of the results? 
-- What was the first and last name of the last person in the table?
-- select * from employees where first_name in ('Irena', 'Vidya', 'Maya')
-- order by last_name asc, first_name asc;  -- First result: Irena Action, Last result: Maya Zyda

-- Write a query to find all employees whose last name starts and ends with 'E'. 
-- Sort the results by their employee number. 
-- Enter a comment with the number of employees returned, 
-- the first employee number and their first and last name, and the last employee number with their first and last name.
-- select first_name, last_name, emp_no from employees where last_name like 'e%' and last_name like '%e'
-- order by emp_no desc;  -- 899 results returned, First result: Tadahiro Erde, Last result: Ramzi Erde

-- Write a query to find all employees whose last name starts and ends with 'E'. 
-- Sort the results by their hire date, so that the newest employees are listed first. 
-- Enter a comment with the number of employees returned, the name of the newest employee, and the name of the oldest employee.
-- select first_name, last_name, hire_date, emp_no from employees where last_name like 'e%' and last_name like '%e'
-- order by hire_date desc;  -- 899 results returned, Newest emp: Teiji Eldridge, Sergi Erde

-- Find all employees hired in the 90s and born on Christmas. 
-- Sort the results so that the oldest employee who was hired last is the first result. 
-- Enter a comment with the number of employees returned, the name of the oldest employee who was hired last, 
-- and the name of the youngest employee who was hired first.

-- select first_name, last_name, hire_date, emp_no, birth_date from employees where (YEAR(hire_date) between 1990 and 2000) and MONTH(birth_date) = 12 AND DAY(birth_date) = 25
-- order by hire_date asc, birth_date asc; -- 362 results returned, First result: Hatem Lubachevsky, Last result: Moto Siegrist













