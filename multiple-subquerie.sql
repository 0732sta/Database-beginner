select last_name,department_id
from employees
where department_id in
                        (select department_id
                        from employees
                        where last_name='King');

select employee_id,last_name,job_id,salary
from employees
where salary < ANY
                    (select salary
                    FROM employees
                    where job_id='IT_PROG')
and job_id <> 'IT_PROG';

/* 9000,6000,4800,4200
   <ANY           >ANY
   >ALL           <ALL */
   
/*Find the departments whose min salary is less than the salary of any employee who work in department 10 or 20*/
select department_id, min(salary)
from employees
group by department_id
having min(salary)< any 
                        (select salary 
                        from employees
                        where department_id in (10,20));

/*List the employees whose manager and deparments are the same as the manager and department of employees 149 or 174*/
select last_name,manager_id,department_id
from employees
where (manager_id,department_id) in 
                                    (select manager_id,department_id
                                    from employees
                                    where employee_id in (149,174));
                                    
/*Find the department that has the highest avg salary*/
select department_id,department_name,avg(salary)
from employees
join departments
using (department_id)
group by department_id,department_name
having avg(salary) =   (select max(avg(salary))
                        from employees
                        group by department_id);
                        
select *
from 
(select department_id,department_name,avg(salary)
from employees
join departments
using (department_id)
group by department_id,department_name
order by 3 desc)
where rownum=1;

/*top 3*/
select *
from 
(select department_id,department_name,avg(salary)
from employees
join departments
using (department_id)
group by department_id,department_name
order by 3 desc)
where rownum<4;