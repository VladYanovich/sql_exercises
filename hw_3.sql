select * from employees where first_name = 'David'; //1

select * from employees where job_id = 'FI_ACCOUNT'; //2

select first_name, last_name, salary, department_id 
from employees
where  department_id = 50 and salary > 4000; //3

select * from employees
where department_id in ('20', '30'); //4

select * from employees 
where first_name like '_a%a'; //5

select * from employees
where department_id in ('50', '80') and commission_pct is not null 
order by 4; //6

select * from employees
where first_name like '%n%n%' or first_name like 'N%n%'; //7

select * from employees
where first_name like '_____%' order by department_id desc nulls last; //8

select * from employees
where salary between 3000 and 7000
and commission_pct is null
and job_id in ('PU_CLERK', 'ST_MAN', ' ST_CLERK'); //9

select * from employees
where first_name like '%\%%' escape '\'; //10

select job_id, first_name, salary from employees
where employee_id >= 120
AND job_id not in ('IT_PROG')
order by job_id, first_name desc; 