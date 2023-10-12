/* Use [database]
show tables */

-- Use albums_db. -- Index is the primary key
-- SHOW CREATE DATABASE albums_db
-- SELECT user, host FROM mysql.user;


-- use employees
-- show tables
-- SHOW COLUMNS FROM employees;   -- data types include: int, date, varchar, enum. -- Alt method: DESCRIBE employees
									-- "first_name", "last_name" would have a str type
                                    -- "hire_date" and "birth_date" have date types
                                    
									-- DATABASE to TABLE relationship [-- select * from INFORMATION_SCHEMA.TABLE_CONSTRAINTS;]
									-- SHOW CREATE TABLE dept_manager
-- select * from INFORMATION_SCHEMA.TABLE_CONSTRAINTS;

/* SELECT                       -- Another way of showing relationship directly between table and column         
    TABLE_NAME,
    COLUMN_NAME,
    CONSTRAINT_NAME,
    REFERENCED_TABLE_NAME,
    REFERENCED_COLUMN_NAME
FROM
    INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE
	REFERENCED_TABLE_SCHEMA = 'employees'
    AND REFERENCED_TABLE_NAME = 'departments'; */