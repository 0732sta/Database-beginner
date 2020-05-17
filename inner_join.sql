SELECT last_name,department_id,department_name
FROM employees
NATURAL JOIN departments;

SELECT last_name,department_id,department_name
FROM employees
JOIN departments
USING (department_id);

SELECT last_name,department_id,department_name
FROM employees
JOIN departments
USING (department_id)
WHERE department_name LIKE 'A%';

SELECT last_name,e.department_id,department_name
FROM employees e
JOIN departments d
ON (e.department_id = d.department_id);

SELECT last_name,department_name,city
FROM employees
join departments
using (department_id)
join locations
using (location_id);

SELECT last_name,department_name,city
FROM employees
join departments
using (department_id)
join locations
using (location_id)
where city like 'S%';

SELECT last_name,department_name,city
FROM employees e
join departments d
on (e.department_id=d.department_id)
join locations l
on (l.location_id=d.location_id);

SELECT last_name,department_name,city
FROM employees 
NATURAL JOIN departments
NATURAL JOIN locations;

SELECT emp.last_name "EMP",mgr.last_name "MGR"
FROM employees emp
join employees mgr
on emp.manager_id=mgr.employee_id;