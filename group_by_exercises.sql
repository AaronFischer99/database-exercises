-- select * from employees;

-- Write a query to find a list of all unique last names that start and end with 'E' using GROUP BY
-- select distinct(last_name) from employees 
-- where last_name like 'e%' and last_name like '%e'
-- group by 1

-- Write a query to to find all unique combinations of first and last names of all employees 
-- whose last names start and end with 'E'
-- select distinct(concat(first_name, ' ',last_name)) from employees 
-- where last_name like 'e%' and last_name like '%e';

-- Write a query to find the unique last names with a 'q' but not 'qu'. 
-- Include those names in a comment in your sql code
-- select count(distinct(last_name)) from employees
-- where last_name not like 'qu%' and last_name like '%q%';
/*'Rouquie'
'Chleq'
'Maquelin'
'Lindqvist'
'Zumaque'
'Marquardt'
'Qiwen' */

-- Find all employees with first names 'Irena', 'Vidya', or 'Maya'. 
-- Use COUNT(*) and GROUP BY to find the number of employees with those names for each gender.
/* select count(*), gender from employees 
where first_name in ('Irena', 'Vidya', 'Maya')
group by gender; */

-- generate a count of employees with each unique username.
/* SELECT count(distinct(concat(SUBSTR(first_name,1,1), substr(last_name,1,4), '_', month(birth_date), substr(year(birth_date),1,2)))) as count,
concat(SUBSTR(first_name,1,1), substr(last_name,1,4), '_', month(birth_date), substr(year(birth_date),1,2)) as username
from employees
group by concat(SUBSTR(first_name,1,1), substr(last_name,1,4), '_', month(birth_date), substr(year(birth_date),1,2)); */

SELECT count(concat(SUBSTR(first_name,1,1), substr(last_name,1,4), '_', month(birth_date), substr(year(birth_date),1,2))) as count,
concat(SUBSTR(first_name,1,1), substr(last_name,1,4), '_', month(birth_date), substr(year(birth_date),1,2)) as username
from employees
group by concat(SUBSTR(first_name,1,1), substr(last_name,1,4), '_', month(birth_date), substr(year(birth_date),1,2))
having count > 1
order by count desc;   -- 27 is the highest amount a name shows up, 33 rows returned




-- show tables from employees;
-- SELECT DISTINCT title_name FROM titles;
-- SELECT COUNT(DISTINCT title) FROM table;