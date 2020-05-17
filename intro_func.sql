SELECT last_name,UPPER(LAST_NAME)
FROM EMPLOYEES;

SELECT (319/2)-30
from dual;

SELECT last_name,job_id,INITCAP(job_id)
FROM EMPLOYEES;

select 'Hello' || 'World'
from dual;

select first_name,last_name,concat(first_name,last_name)
from employees;

select concat(first_name,concat(' ',last_name)) full_name
from employees;

select substr('HelloWorld',1,5)
from dual;

select substr('HelloWorld',6)
from dual;

select last_name
from employees
where substr(last_name,1,1)='A';

select last_name
from employees
where substr(last_name,1,2)='Ch';

select last_name
from employees
where substr(last_name,-1,1)='t';

select last_name
from employees
where substr(last_name,-3,3)='man';

select last_name
from employees
where instr(last_name,'a')=3;

select last_name
from employees
where length(last_name) = 8;

select lpad('Ali',10,';')
from dual;

select rpad('Ali',10,';')
from dual;

/*for every 2000 in a salary,replace it with #.for example,if the salary is 4000,that employee will receive ##*/
select last_name,salary, lpad(' ',salary/2000+1,'#')/* +1 utk hash symbol*/ 
from employees;

select trim(leading 'a' from 'abcba')
from dual;

select trim(trailing 'a' from 'abcba')
from dual;

select trim(both 'a' from 'abcba')
from dual;

select replace('jack and juse','j','bl')
from dual;

select last_name,replace(last_name,'B','@')
from employees;

select ROUND(45.123,2),ROUND(45.123,0),ROUND(43.123,-1)
from dual;

select trunc(45.923,2),trunc(45.923,0),trunc(45.923,-1)
from dual;

select last_name,salary,mod(salary,5000)
from employees
where job_id='SA_REP';

select last_name,hire_date,(sysdate-hire_date)/7 weeks
from employees;

select last_name,hire_date,(sysdate-hire_date)/30 months
from employees;

select last_name,hire_date,(sysdate-hire_date)/365 years, months_between(sysdate,hire_date)/12
from employees;

select sysdate,add_months(sysdate,6) 
from dual;

select sysdate,next_day(sysdate,'Friday') as "Coming Day"
from dual;

select sysdate,last_day(sysdate)
from dual;

select last_name,hire_date,round(hire_date,'month')
from employees
where last_name in ('Faviet','Higgins','Sciarra','Markle');

select last_name,hire_date,trunc(hire_date,'year')
from employees
where last_name in ('Faviet','Higgins','Sciarra','Himura');