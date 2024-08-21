select * 
from employees 
where length(first_name) 
in (select max(length(first_name)) from employees); //1

select * 
from employees 
where salary > (select avg(salary) from employees); //2

select * from employees;

select * 
from employees
where manager_id in (select manager_id from employees
where manager_id in (select employee_id from employees where salary > 15000)); //4

select *
from departments 
where department_id not in (select department_id from employees where department_id is not null); //5

select * 
from employees 
where employee_id not in (select manager_id from employees where manager_id is not null); //6

select * 
from employees
where employee_id in (select m from (select manager_id m, count(*)  
from employees
where manager_id is not null
having count(*) > 6
group by manager_id)); //7

select * from employees 
where department_id = (select department_id from departments 
where department_name = 'IT'); //8

select *
from employees
where employee_id in (select employee_id from employees where hire_date between '01-JAN-01' and '01-JAN-05')
and manager_id in (select employee_id from employees
where employee_id in (select manager_id from employees) and manager_id is not null and hire_date between '01-JAN-05' and '01-JAN-06'); //9

select * 
from employees
where employee_id in 
    (select manager_id from employees 
    where manager_id is not null 
    and hire_date is not null
    and hire_date like '%JAN%')
and (select length(job_title) from jobs) > 15;


select job_title from jobs;


