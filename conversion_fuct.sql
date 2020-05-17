 select last_name,hire_date,TO_CHAR(hire_date,'Month dd,Year')
 from employees;
 
select last_name,hire_date,TO_CHAR(hire_date,'fmMonth dd Dy,YYYY')
 from employees;
 
select last_name,hire_date,TO_CHAR(hire_date,'fmMM dd day ,YYYY')
 from employees;
 
select last_name,hire_date,TO_CHAR(hire_date,'Ddth Month YYYY')
 from employees;
 
 select last_name,hire_date,TO_CHAR(hire_date,'Ddsp Month YYYY')
 from employees;
  
select last_name,hire_date,TO_CHAR(hire_date,'mm dd YYYY" is "HH:MI:SS')
 from employees;
 
select last_name,salary,to_char(salary,'  $99,999.99')
from employees;

select last_name,salary,to_char(salary,'fmL 99,999.99')
from employees;

select to_number('5,965','9999')
from dual; 

select
    to_date('123','yyyy') wrong_year,
    to_date('2020 Dec','yyyy-Mon') extra_space,
    to_date('2020/Dec','yyyy-Mon') different_format
from dual;

select 
to_date('1234','fxyyyy')as exact_year
from dual;

select to_date('2020 Dec','fxyyyy Mon')as exact_year_month
from dual;

select to_date('2020-Dec','fxyyyy-Mon') as exact_format
from dual;

select last_name,hire_date
from employees
where hire_date<'21-04-2004';

select last_name,hire_date
from employees
where hire_date<to_date('21-04-2004','fxdd-mm-yyyy');

/*today's date 10-Apr-2020 - 21st Century
30-Aug-1999-20th century
30-Aug-2099 -21st Century
dd-mon-yy or dd-mon-rr*/

select to_date('30-Aug-99','fxdd-Mon-rr')
from dual; 

/*Step nested example*/
SELECT last_name,substr(last_name,1,5)
from employees
where last_name='Greenberg';
SELECT last_name,CONCAT('Green','_MY')
from employees
where last_name='Greenberg';
SELECT last_name,Upper('Green_MY')
from employees
where last_name='Greenberg';

select last_name,Upper(concat(substr(last_name,1,5),'_MY'))
from employees
where last_name='Greenberg';

select last_name,salary,commission_pct,nvl(to_char(commission_pct),'No commission') status_ commission
From employees;

select last_name,salary,commission_pct,salary+(salary*nvl(commission_pct,0)) full_salary
From employees;

select last_name,salary,commission_pct,nvl2(commission_pct,salary+(commission_pct*salary),salary) full_salary
From employees;

select first_name,last_name,length(first_name),length(last_name),nullif(length(first_name),length(last_name)) NULLIF
from employees;

select last_name,commission_pct,manager_id,coalesce(to_char(commission_pct),to_char(manager_id),'No Commission and Manager') COALESCE
from employees;

/*The query checks the salary
if it less than 3001,return 'b40'
if it less than 6276,return 'm40'
else return 't20'*/
select last_name,
(CASE department_id when 90 then 'Management'
                    when 80 then 'Sales'
                    when 60 then 'IT'
    else 'Other dept.' end) department
from employees;

/*salary=salary<3001 and sql no equal less than operator so no need state salary bfr 'when'*/
select last_name,salary,
(case when salary < 3001 then 'b40'
      when salary < 6276 then 'm40'
      else 't20' end) classification
from employees;

select last_name,
DECODE(department_id,90,'Management',
                     80,'Sales',
                     60,'IT',
                     'Other dept.') department
from employees;

select last_name,salary,
DECODE(trunc(salary/2000,0),
                    0,0.00,
                    1,0.09,
                    2,0.15,
                    3,0.20,
                    4,0.25,
                    5,0.35,
                    0.45) TAX_RATE
from employees;
