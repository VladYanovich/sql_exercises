select * from employees;
select first_name, last_name, salary from employees where salary = 17000;

select first_name, salary from employees where last_name = 'King'; 
select * from employees where hire_date = '21.09.05';

select * from departments where location_id = 1700;

select * from employees where employee_id = manager_id + 1000/10+2;

select * from job_history where job_id = 'ST_CLERK';

select * from employees where first_name = last_name;

select *
from employees
where 'Dr '||first_name||' '||last_name = 'Dr David Austin'; 

select *
from job_history 
where end_date = start_date + 364;

select first_name, last_name, salary 
from employees 
where salary != 5000; 

select * from employees
where first_name < 'Steven'; 

select * from job_history where start_date < '01.01.05';
 
select first_name, last_name, salary from employees
where salary between employee_id+100 and 10000;

select * from job_history where start_date between '01.01.04' and '31.12.06';

select * from employees where first_name between 'A' and 'C';

select last_name, first_name, salary from employees 
where salary >=4000 and salary <=10000;

select * from departments where location_id in (1700,2400,1500);

select * from job_history where job_id in ('IT_PROG', 'ST_CLERK');

select * from job_history where end_date in ('31.12.07', '05.05.05');

select * from departments 
where location_id = 1700 or location_id = 2400 or location_id = 1500;

select * from employees where first_name is null;


