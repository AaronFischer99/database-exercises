-- use employees;
-- select * from employees;

-- List the first 10 distinct last names sorted in descending order.

/* select distinct last_name from employees 
order by last_name desc
limit 10;  -- 'Zykh'
'Zyda'
'Zwicker'
'Zweizig'
'Zumaque'
'Zultner'
'Zucker'
'Zuberek'
'Zschoche'
'Zongker' */

-- Find all previous or current employees hired in the 90s and born on Christmas. 
-- Find the first 5 employees hired in the 90's by sorting by hire date and limiting your results to the first 5 records. 
-- Write a comment in your code that lists the five names of the employees returned.
-- select first_name, last_name from employees where (YEAR(hire_date) between 1990 and 2000) and MONTH(birth_date) = 12 AND DAY(birth_date) = 25
-- order by hire_date desc
-- limit 5;  
/* Resuls by asc order: 
'Khun','Bernini'
'Elvis','Goodrum'
'Sachar','Ghalwash'
'Moto','Siegrist'
'Ulf','Pehl' */


/* Results desc:
'Alselm','Cappello'
'Utz','Mandell'
'Bouchung','Schreiter'
'Baocai','Kushner'
'Petter','Stroustrup' */
 
/* select *
from employees where (YEAR(hire_date) between 1990 and 2000) and MONTH(birth_date) = 12 AND DAY(birth_date) = 25
order by hire_date desc
limit 10, 4;  --offset acts as starting point, where limit is ending results total --My intent with this query was to limit the reslts to 10, with evrey 5th name being filtered */

-- select * from employees;
SELECT concat(SUBSTR(first_name,1,1), substr(last_name,1,4), '_', month(birth_date), 
substr(year(birth_date),1,2)) as username
-- select substr(last_name,1,4)
from employees;






