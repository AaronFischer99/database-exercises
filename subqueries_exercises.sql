-- use employees;
/* select sum(gender) over(partition by gender) as gender_sum, gender, count(*)
from employees
group by gender;
-- [Product IDTotal] = sum(LineTotal) over(partition by ProductID, OrderQty) */

/* -- Find all the current employees with the same hire date as employee 101010 using a subquery.
SELECT *
FROM employees
WHERE hire_date IN
(select hire_date from employees
where emp_no = '101010'
); */

-- Find all the titles ever held by all current employees with the first name Aamod
/* (select distinct(departments.dept_name) from departments
join dept_emp on dept_emp.dept_no = departments.dept_no
join employees on employees.emp_no = dept_emp.emp_no
where employees.first_name = 'Aamod'); */

/* -- Subquery query:
select distinct(dept_name) from departments where departments.dept_name in
(select departments.dept_name from departments
join dept_emp on dept_emp.dept_no = departments.dept_no
join employees on employees.emp_no = dept_emp.emp_no
where employees.first_name = 'Aamod'); */

-- How many people in the employees table are no longer working for the company? Give the answer in a comment in your code.
-- use employees;
/* select count(*) from departments                -- 91479 people
join dept_emp on dept_emp.dept_no = departments.dept_no
join employees on employees.emp_no = dept_emp.emp_no
where dept_emp.to_date != '9999-01-01'; */

/* -- subquery format
select count(*) from dept_emp where dept_emp.to_date not in
(select * from departments                -- 91479 people
join dept_emp on dept_emp.dept_no = departments.dept_no
join employees on employees.emp_no = dept_emp.emp_no
where dept_emp.to_date != '9999-01-01'); */

-- Find all the current department managers that are female. List their names in a comment in your code.

-- select first_name from employees where employees.first_name in
/* select concat(employees.first_name, ' ', employees.last_name) as full_name from departments
join dept_manager on dept_manager.dept_no = departments.dept_no
join employees on employees.emp_no = dept_manager.emp_no
where (dept_manager.to_date != '9999-01-01') and employees.gender = 'F';
'Tonny Butterworth'
'Marjo Giarratana'
'Xiaobin Spinelli'
'Shirish Ossenbruggen'
'Krassimir Wegerle'
'Rosine Cools'
'Peternela Onuegbe'
'Rutger Hofmeyr'
'Sanjoy Quadeer' */

/* -- subquery method:
select t.full_name from
(select concat(employees.first_name, ' ', employees.last_name) as full_name from departments
join dept_manager on dept_manager.dept_no = departments.dept_no
join employees on employees.emp_no = dept_manager.emp_no
where (dept_manager.to_date != '9999-01-01')
and employees.gender = 'F') t; */

-- Find all the employees who currently have a higher salary than the companie's overall, historical average salary.

/* select *, avg(salary) over(partition by dept_name) as avg_salary
from departments
join dept_emp on dept_emp.dept_no = departments.dept_no
join employees on employees.emp_no = dept_emp.emp_no
join salaries on salaries.emp_no = employees.emp_no; 


-- select avg(salary) from 
(select round(avg(salaries.salary),0) -- avg(salary) over() as avg_salary  --avg salary 63805
-- AVG(salary) OVER () AS average_salary
from departments
join dept_emp on dept_emp.dept_no = departments.dept_no
join employees on employees.emp_no = dept_emp.emp_no
join salaries on salaries.emp_no = employees.emp_no); */

/* -- Individuals who make more than company average:
select distinct concat(first_name, ' ', last_name), salary  -- min: Huan Lortz (64238), max: Tokuyashi Pesch(158,220)
-- AVG(salary) OVER () AS average_salary
from departments
join dept_emp on dept_emp.dept_no = departments.dept_no
join employees on employees.emp_no = dept_emp.emp_no
join salaries on salaries.emp_no = employees.emp_no
where salary > 63805;
-- order by salary desc
limit 1; */

-- Who is the highest paid employee within each department.

/* (select  employees.first_name, employees.last_name, departments.dept_name, salary from departments
join dept_emp on dept_emp.dept_no = departments.dept_no
join employees on employees.emp_no = dept_emp.emp_no
join salaries on salaries.emp_no = employees.emp_no
order by salaries.salary desc); */

/* select max(salary), departments.dept_name
from employees join salaries on salaries.emp_no = employees.emp_no
join dept_emp on dept_emp.emp_no = employees.emp_no
join departments on departments.dept_no = dept_emp.dept_no
group by departments.dept_name; */

-- [first_name, last_name, dept_name, salary]
-- 'Tokuyasu','Pesch','Sales','158220', 'Akemi','Warwick','Marketing','145128', 'Vidya','Hanabata','Customer Service','144866'
-- 'Khosrow','Sgarro','Development','144434', 'Lunjin','Swick','Finance','142395', 'Yinlin','Flowers','Human Resources','141953'
-- 'Youjian','Cronau','Production','138273'


/* select t.dept_name, t.first_name, t.last_name, max(t.salary) from
(select  employees.first_name, employees.last_name, departments.dept_name, salary from departments
join dept_emp on dept_emp.dept_no = departments.dept_no
join employees on employees.emp_no = dept_emp.emp_no
join salaries on salaries.emp_no = employees.emp_no
order by salaries.salary desc) t; */


-- Find all the employees who currently have a higher salary than the companie's overall, historical average salary.

/* -- select * from salaries join employees on employees.emp_no = salaries.emp_no where salary >  --shows all rows
select distinct concat(first_name, ' ', last_name) as full_name from 
salaries join employees on employees.emp_no = salaries.emp_no where salary >
(select avg(salary)
from departments
join dept_emp on dept_emp.dept_no = departments.dept_no
join employees on employees.emp_no = dept_emp.emp_no
join salaries on salaries.emp_no = employees.emp_no); */

/* select distinct t.dept_name, (select max(salary) from salaries) from
(select  employees.first_name, employees.last_name, departments.dept_name, salary from departments
join dept_emp on dept_emp.dept_no = departments.dept_no
join employees on employees.emp_no = dept_emp.emp_no
join salaries on salaries.emp_no = employees.emp_no
order by salaries.salary desc) t; */


select max(salary), departments.dept_name
from employees join salaries on salaries.emp_no = employees.emp_no
join dept_emp on dept_emp.emp_no = employees.emp_no
join departments on departments.dept_no = dept_emp.dept_no
group by departments.dept_name;












