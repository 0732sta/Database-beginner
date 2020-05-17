select e.last_name,e.department_id,d.department_name
FROM employees e LEFT OUTER JOIN departments d 
ON (e.department_id=d.department_id); 

select e.last_name,e.department_id,d.department_name
FROM employees e RIGHT OUTER JOIN departments d 
ON (e.department_id=d.department_id);

select e.last_name,e.department_id,d.department_name
FROM employees e FULL OUTER JOIN departments d 
ON (e.department_id=d.department_id);

select last_name,department_name
FROM employees  CROSS JOIN departments  ;