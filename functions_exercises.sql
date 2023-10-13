-- use employees;
-- select * from employees;

-- Write a query to find all employees whose last name starts and ends with 'E'. 
-- Use concat() to combine their first and last name together as a single column named full_name.
-- select concat(first_name, ' ', last_name) as full_name
-- from employees where last_name like 'e%' and last_name like '%e';

-- Convert to all uppercase
-- select upper(concat(first_name, ' ', last_name)) as full_name
-- from employees where last_name like 'e%' and last_name like '%e';

-- select count(upper(concat(first_name, ' ', last_name))) as full_name
-- from employees;    -- 899 rows returned, and 300024 results returned



-- select count(first_name) from employees;

-- select datediff(current_date, hire_date) as days_worked
-- from employees 
-- where (YEAR(hire_date) between 1990 and 2000) and MONTH(birth_date) = 12 AND DAY(birth_date) = 25;

select min(salary), max(salary) from salaries;  -- max and min salaries

-- Use your knowledge of built in SQL functions to generate a username for all of the employees. 
-- A username should be all lowercase, and consist of the first character of the employees first name, 
-- the first 4 characters of the employees last name, an underscore, the month the employee was born, 
-- and the last two digits of the year that they were born. 

-- SELECT concat(SUBSTR(first_name,1,1), substr(last_name,1,4), '_', month(birth_date), 
-- substr(year(birth_date),1,2)) as username




