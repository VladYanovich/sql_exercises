select * from employees where instr(lower(first_name), 'b') > 0; //1

select * from employees where instr(lower(first_name), 'a', 1, 2) > 0; //2


select department_name, substr(trim(department_name), 1, length(trim(department_name))-length(substr(trim(department_name) ,instr(trim(department_name), ' '))))
from departments 
where instr(trim(department_name), ' ') > 0; //3

select first_name, substr(substr(first_name, 1, length(substr(first_name, 2))), 2) from employees; //4

select * from employees where length(job_id)>5 and substr(job_id, 4) != 'CLERK'; //5

select * from employees where substr(hire_date, 1, 2) = '01'; //6

select * from employees where substr(hire_date, 8)='08'; //7

select to_char(sysdate+1, 'fm"Tomorrow is "Ddspth "day of" Month') from dual;

select to_char(salary*1.2, '$99,999.99') from employees; //10

select to_date(sysdate, 'dd-mon-yy hh24:mi:ss') from dual;

select first_name, salary, salary + to_number('$12,345.55', '$999999.99') from employees; //12

select first_name, hire_date, months_between(to_date('SEP, 18:45:00 18 2009', 'MON, hh24:mi:ss dd yyyy'), hire_date) from employees; //13

select first_name, salary, to_char(salary*(1+NVL(commission_pct, 0)), '$99,999.99') from employees; //14

select first_name; 

select first_name, commission_pct, NVL2(commission_pct, 'YES', 'NO') from employees; //16

select first_name, coalesce(commission_pct, manager_id, salary) from employees; //17

select first_name, salary,  decode(salary,  'low level') from employees; 

select 
decode(region_id, 1, 'Europe', 2, 'America', 3, 'Asia', 4, 'Africa') //19
from countries;


select  
case region_id
when 1 then 'Europe'
when 2 then 'America'
when 3 then 'Asia'
when 4 then 'Africa'
end
from countries; //20

select first_name, salary, 
case 
when salary < 10000 and commission_pct is null then 'bad'
when salary between 10000 and 15000 and commission_pct is not null then 'normal'
when salary > 15000 then 'good'
end
from employees; //21




