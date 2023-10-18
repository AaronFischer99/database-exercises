-- use employees;
-- select * from dept_emp;
-- select * from departments;
-- select * from employees;
-- write a query that shows each department along with the name of the current manager for that department.
/* select distinct(CONCAT(d.first_name, ' ', d.last_name)) AS manager_name, a.dept_name, d.gender
from departments a          -- departments, dept_emp
join dept_emp b on b.dept_no = a.dept_no
join dept_manager c on c.dept_no = b.dept_no
join employees d on d.emp_no = c.emp_no
where d.gender = 'F';    -- The addition of this line displays all managers who are female */

/* -- Find the current titles of employees currently working in the Customer Service department.
select distinct(CONCAT(d.first_name, ' ', d.last_name)) AS manager_name, a.dept_name, d.gender
from departments a          -- departments, dept_emp
join dept_emp b on b.dept_no = a.dept_no
join dept_manager c on c.dept_no = b.dept_no
join employees d on d.emp_no = c.emp_no
where a.dept_name = 'Customer Service'; */




/* -- Find the current salary of all current managers.
select distinct(CONCAT(a.first_name, ' ', a.last_name)) AS manager_name, b.salary, d.dept_name
from employees a 
join salaries b on b.emp_no = a.emp_no
join dept_man c on c.emp_no = b.emp_no
join departments d on d.dept_no = c.dept_no
where a.emp_no = c.emp_no; */


-- Which current department manager has the highest salary?
/* select distinct(CONCAT(a.first_name, ' ', a.last_name)) AS manager_name, max(b.salary) as highest_salary, d.dept_name
from employees a 
join salaries b on b.emp_no = a.emp_no
join dept_man c on c.emp_no = b.emp_no
join departments d on d.dept_no = c.dept_no
where a.emp_no = c.emp_no
group by d.dept_name; */

-- Find the number of current employees in each department.
-- count(*), dept_name, dept_no


-- Find the number of current employees in each department
-- use employees;
/* SELECT count(a.dep_no) as employee_count, a.dept_name
from departments a join dept_emp b on b.dept_no = a.dept_no
join employees c on c.emp_no = b.emp_no
where b.to_date > NOW
group by a.dept_name; */

-- departments, dept_emp, employees

/* -- Which department has the highest average salary? Hint: Use current not historic information.
SELECT avg(d.salary), a.dept_name
from departments a join dept_emp b on b.dept_no = a.dept_no
join employees c on c.emp_no = b.emp_no
join salaries d on d.emp_no = c.emp_no
group by a.dept_name
order by avg(d.salary);   -- Sales has the higherst avgerage salary */

-- Who is the highest paid employee in the Marketing department?
/* SELECT distinct(CONCAT(c.first_name, ' ', c.last_name)) as emp_fullname, d.salary
from departments a join dept_emp b on b.dept_no = a.dept_no
join employees c on c.emp_no = b.emp_no
join salaries d on d.emp_no = c.emp_no
where a.dept_name = 'Marketing'
order by d.salary desc;  --Highest pais employee in Marketing is Akemi Warwick */

/* -- Determine the average salary for each department.
SELECT round(avg(d.salary),0), a.dept_name
from departments a join dept_emp b on b.dept_no = a.dept_no
join employees c on c.emp_no = b.emp_no
join salaries d on d.emp_no = c.emp_no
group by a.dept_name
order by round(avg(d.salary),0) desc; */













