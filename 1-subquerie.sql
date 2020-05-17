SELECT last_name,salary
FROM employees
WHERE salary > (SELECT salary
                FROM employees 
                WHERE last_name='Abel');
/*find employee who has job the same as Vargas*/
select last_name,job_id
from employees
where job_id = (select job_id
                from employees
                where last_name='Vargas');
/*find employees from marketing department*/
select last_name,department_id
from employees
where department_id= (select department_id
                      from departments
                      where department_name='Marketing')
/*find employees that same job as employee_id,141 and his/her location_id of department is 1500*/
select last_name,job_id,salary,department_id
from employees
where job_id = (select job_id
                      from employees
                      where employee_id=141)
and  department_id = (select department_id
                      from departments
                      where location_id=1500);
/*find all employees who has salary lowest than average salary in this company*/
select last_name,job_id,salary
from employees
where salary < (select AVG(salary)
                from employees)
/*find all employees who has lowest salary*/                
select last_name,job_id,salary
from employees
where salary = (select min(salary)
                from employees)
/*find all department that has minimum slary greater than minimum salary of department 50*/
select salary,department_id
from employees
where salary > (select min(salary)
                from employees
                where department_id=50);
/*correction*/
select min(salary),department_id
from employees
group by department_id
having min(salary) > (select min(salary)
                      from employees
                      where department_id=50);