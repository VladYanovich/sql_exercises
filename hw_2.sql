select * from regions; //1

select first_name, department_id, salary, last_name from employees; //2

select employee_id, email, hire_date - 7 as "One week before hire
date"  from employees; //3

select first_name||'('||job_id||')' as our_employees from employees; //4 

select distinct first_name from employees; //5


select job_title, 'min = '||min_salary||', max = '||max_salary as info, max_salary as "max", max_salary*2-2000 as new_salary from jobs; //6

select 'Peter''s dog is very clever' from dual; //7

select q'<Peter's dog is very clever>' from dual; //8

select 100*365.25*24*60 from dual; //9

