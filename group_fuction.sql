select min(salary),max(salary),sum(salary)
from employees;

select min(hire_date),max(hire_date)
from employees;

select AVG(nvl(salary,0))
from employees;

select count(commission_pct)
from employees;

select count(distinct job_id)
from employees;

select AVG(salary)
from employees;

select AVG(salary)
from employees
where department_id=80;

select department_id,AVG(salary)
from employees
group by department_id;

select department_id,Count(job_id)
from employees
group by department_id;

select department_id,sum(salary)
from employees
where department_id in ('50','100','40')
group by department_id
Order by 2;

select department_id,job_id,sum(salary)
from employees
where department_id in ('50','100','40')
group by department_id,job_id
Order by 2;

select department_id,job_id,avg(salary)
from employees
where department_id in ('50','100','40')
having avg(salary)>7000
group by department_id,job_id
Order by 2;

select department_id,sum(salary)
from employees
having sum(salary)>30000
group by department_id
Order by 2;

select department_id,min(salary)
from employees
having max(salary)>3000
group by department_id
Order by 2;

select department_id,job_id,avg(salary)
from employees
where job_id like '%N_'
having avg(salary)>7000
group by department_id,job_id
Order by 2;

select max(sum(salary))
from employees
group by department_id;

select department_id,avg(salary)
from employees
group by department_id
having avg(salary)=
                    (select max(avg(salary))
                    from employees
                    group by department_id);