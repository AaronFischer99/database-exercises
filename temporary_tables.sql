-- use ursula_2324;

/* CREATE TEMPORARY TABLE  empolyees_with_departments (
id int primary key not null,
first_name varchar(50) not null, last_name varchar(50) not null , dept_name varchar(50) not null); */
-- select * from empolyees_with_departments;
-- alter table empolyees_with_departments add full_name varchar(100);


-- select * from empolyees_with_departments;
-- alter table empolyees_with_departments drop column first_name, drop column last_name;
-- select * from empolyees_with_departments;





-- update table set value/feature - difference
-- alter table [table name] add full_name varchar():
	-- insert into full_name values (
	-- update runner set full_name concat(first_name, ' ', last_name);
 -- alter table runner drop column first_name, drop column last_name;   
    
    
    
/* select e.first_name, e.last_name, d.dept_name
from employees e 
join dept_emp b on b.emp_no = e.emp_no
left join departments d on d.dept_no = b.dept_no; */



-- CREATE TEMPORARY TABLE employees_with_departments AS
/* (select e.first_name, e.last_name, d.dept_name
from employees e 
join dept_emp b on b.emp_no = e.emp_no
join departments d on d.dept_no = b.dept_no); */


-- use sakila;
-- use ursula_2324;
/* create temporary table pay_ment as 
select * from sakila.payment; */

-- select  as int from pay_ment;
-- ALTER TABLE empolyees_with_departments MODIFY amount INT STORAGE MEMORY;
-- ALTER TABLE pay_ment MODIFY amount INTEGER;
-- select * from pay_ment;

-- use ursula_2324;



/* CREATE TEMPORARY TABLE payment_departments AS
SELECT *
 -- from employees.departments join employees.dept_emp USING(dept_no);
from employees.departments join employees.dept_emp on employees.departments.dept_no = employees.dept_emp.dept_no
join employees.salaries on employees.salaries.emp_no = employees.employees.emp_no; */


/* CREATE TEMPORARY TABLE temp_dept_salary AS
SELECT avg(s.salary), b.dept_name     -- e.employee_id, e.first_name, e.last_name, s.salary
FROM employees.employees e
JOIN employees.salaries s ON e.emp_no = s.emp_no
join employees.dept_emp d on d.emp_no = e.emp_no
join employees.departments b on b.dept_no = d.dept_no
group by b.dept_name; */





-- show database();

-- join employees.dept_emp USING(dept_no);
/* join employees.dept_emp on employees.dept_emp.dept_no = employees.departments.dept_no
join employees.employees  on employees.employees.emp_no = employees.dept_emp.emp_no
join employees.salaries  on employees.salaries.emp_no = employees.employees.emp_no; */

-- use employees;
/* SELECT avg(s.salary), b.dept_name, (salary - (SELECT AVG(salary) FROM salaries where to_date > now()))
        /
        (SELECT stddev(salary) FROM salaries where to_date > now()) AS zscore     -- e.employee_id, e.first_name, e.last_name, s.salary
FROM employees.employees e
JOIN employees.salaries s ON e.emp_no = s.emp_no
join employees.dept_emp d on d.emp_no = e.emp_no
join employees.departments b on b.dept_no = d.dept_no
group by b.dept_name; */


/* SELECT salary,
        (salary - (SELECT AVG(salary) FROM salaries where to_date > now()))
        /
        (SELECT stddev(salary) FROM salaries where to_date > now()) AS zscore
    FROM salaries;
    -- WHERE to_date > now(); */

-- select min(zscore_, max(zscore) from
select distinct salary, b.dept_name, -- e.emp_no,
        (salary - (SELECT AVG(salary) FROM salaries where to_date > now()))   -- best dept: Sales      , worst dept: HR     
        /
        (SELECT stddev(salary) FROM salaries where to_date > now()) AS zscore,
        avg(salary) over(partition by b.dept_name) as avg_salary
from employees.employees e
JOIN employees.salaries s ON e.emp_no = s.emp_no
join employees.dept_emp d on d.emp_no = e.emp_no
join employees.departments b on b.dept_no = d.dept_no
order by b.dept_name, zscore;
-- order by b.dept_name, s.salary;

-- use employees; 
-- use ursula_2324;




