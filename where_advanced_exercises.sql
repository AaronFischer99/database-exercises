-- use employees;
-- select * from employees;

-- Find all current or previous employees with first names 'Irena', 'Vidya', or 'Maya' using IN. 
-- What is the employee number of the top three results?
-- select * from employees where first_name in ('Irena', 'Vidya', 'Maya');
-- employee # without manipulating or sorting order: 10200, 10397, 10610

 -- Find all current or previous employees with first names 'Irena', 'Vidya', or 'Maya', as in Q2, 
 -- but use OR instead of IN. What is the employee number of the top three results? 
 -- Does it match the previous question?
 -- select * from employees where first_name = 'Irena' or 'Vidya' or 'Maya';
 -- The results do not match the previous due to the fact that sql is acknowledging whichever name /,
 -- is listed fiorsrt and runs through all possible outcomes before moving on to the next listed name
 
 -- Find all current or previous employees with first names 'Irena', 'Vidya', or 'Maya', 
 -- using OR, and who is male. What is the employee number of the top three results?
 -- select * from employees where (first_name = 'Irena' or 'Vidya' or 'Maya') and gender = 'M';
 -- employee #: 120397, 10821, 113237
 
 -- Find all unique last names that start with 'E'
 -- select distinct first_name from employees where first_name like 'l%';
 
 -- Find all unique last names that start or end with 'E'
 -- select distinct first_name from employees where first_name like '%e' or first_name like 'e%';
 
 -- Find all unique last names that end with E, but does not start with E?
 -- select distinct last_name from employees where last_name like '%e' and last_name not like 'e%';
 
 -- Find all unique last names that start and end with 'E'
-- select last_name from employees where last_name like '%e' and '%e';

-- Find all current or previous employees hired in the 90s./,
-- Enter a comment with the top three employee numbers.
-- select max(hire_date) from employees;
-- select * from employees where hire_date between '1990-01-01' and '2000-01-01';
-- employee # without sorting method: 10008, 1011, 10012

-- select * from employees;
-- Find all current or previous employees born on Christmas. 
-- Enter a comment with the top three employee numbers.
-- select * from employees WHERE MONTH(birth_date) = 12 AND DAY(birth_date) = 25;
-- Top employee # without sorting: 10078, 10115, 10261

-- Find all current or previous employees hired in the 90s and born on Christmas. 
-- Enter a comment with the top three employee numbers.
-- select * from employees where (YEAR(hire_date) between 1990 and 2000) and MONTH(birth_date) = 12 AND DAY(birth_date) = 25;
-- Employee # without sorting: 10261, 10438, 10681

-- Find all unique last names that have a 'q' in their last name.
-- select last_name from employees where last_name like '%q%';

-- Find all unique last names that have a 'q' in their last name but not 'qu'.
-- select last_name from employees where last_name like '%q%' and last_name not like '%qu%';









