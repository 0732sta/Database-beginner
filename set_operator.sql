/*Rule : 
number of columns selected for the queries must be the same
corresponding columns for the queries must have matched data type
The names of the columns need to be identical
Column names in the output are taken from the column names in the first select statement
Paratheses can be used to alter the sequence of execution
ORDER BY clause can appear only at the very end of the statement*/

 /*The minus operator returns all rows found in one table but not the other*/
 
 /*Display the current and previous job details of all employees. Display each employee only once (eliminate duplicate)*/
 SELECT employee_id,job_id
 FROM employees
 union
 SELECT employee_id,job_id
 FROM job_history
 
/*Intersect operator returns all rows common to both tables*/ 
/*Employees that chaged jobs but have now gone back to doing the same job they did previously*/
SELECT employee_id,job_id
 FROM employees
 intersect
 SELECT employee_id,job_id
 FROM job_history
 
SELECT location_id,department_name,to_char(null)
FROM departments
union
SELECT location_id,to_char(null),state_province
FROM locations;

SELECT employee_id,salary
 FROM employees
 union
 SELECT employee_id,0
 FROM job_history
 
 SELECT employee_id,salary
 FROM employees
 union
 SELECT employee_id,0
 FROM job_history
 order by 1
