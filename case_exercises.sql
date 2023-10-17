-- use employees;

-- Write a query that returns all employees, their department number, their start date, 
-- their end date, and a new column 'is_current_employee' that is a 1 if the employee is still with the company and 0 if not. 
-- DO NOT WORRY ABOUT DUPLICATE EMPLOYEES.

 /* select  distinct concat(employees.first_name, ' ', employees.last_name) as full_name, departments.dept_no, employees.hire_date 
, dept_emp.to_date,
CASE 
        WHEN dept_emp.to_date  = '9999-01-01' THEN 1
        ELSE 0
    END AS is_current_employee
from departments
join dept_emp on dept_emp.dept_no = departments.dept_no
join employees on employees.emp_no = dept_emp.emp_no
join salaries on salaries.emp_no = employees.emp_no; */ --  Bonus exercise included


-- Write a query that returns all employee names (previous and current), and a new column 'alpha_group' 
-- that returns 'A-H', 'I-Q', or 'R-Z' depending on the first letter of their last name.
/* select  distinct concat(employees.first_name, ' ', employees.last_name) as full_name,
case 
when (SUBSTR(last_name,1,1)) like 'a%' or (SUBSTR(last_name,1,1)) like 'b%' or (SUBSTR(last_name,1,1)) like 'c%'
or (SUBSTR(last_name,1,1)) like 'd%' or (SUBSTR(last_name,1,1)) like 'e%' or (SUBSTR(last_name,1,1)) like 'f%' 
or (SUBSTR(last_name,1,1)) like 'g%' or (SUBSTR(last_name,1,1)) like 'h%' then 'A-H'
WHEN LEFT(last_name, 1) BETWEEN 'I' AND 'Q' THEN 'I-Q'
        WHEN LEFT(last_name, 1) BETWEEN 'R' AND 'Z' THEN 'R-Z'
        ELSE 'Other'
    END AS alpha_group
from departments
join dept_emp on dept_emp.dept_no = departments.dept_no
join employees on employees.emp_no = dept_emp.emp_no
join salaries on salaries.emp_no = employees.emp_no; */

-- How many employees (current or previous) were born in each decade?
/* SELECT birth_date, count(
CASE
    WHEN year(employees.birth_date) between 1950 and 1959 then 'A'
    WHEN year(employees.birth_date) between 1960 and 1970 then 'B'
    ELSE 'Other'
  END) AS ageband
FROM employees
group by birth_date
order by birth_date desc; */ -- This counts how many people were born on each specific birth date



/* SELECT  (birth_date),
CASE
    WHEN year(employees.birth_date) between 1950 and 1959 then 'A'
    WHEN year(employees.birth_date) between 1960 and 1970 then 'B'
    ELSE 'Other'
  END AS ageband, 
  count(ageband) as BD_count
FROM employees
group by birth_date
order by birth_date; */

/* -- What is the current average salary for each of the following department groups: 
-- R&D, Sales & Marketing, Prod & QM, Finance & HR, Customer Service?
select concat('$',format(round(avg(salary),0),2)) as avg_salary, dept_name
from departments
join dept_emp on dept_emp.dept_no = departments.dept_no
join employees on employees.emp_no = dept_emp.emp_no
join salaries on salaries.emp_no = employees.emp_no
group by dept_name
order by avg_salary desc; */


