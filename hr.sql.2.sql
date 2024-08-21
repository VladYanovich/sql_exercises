select first_name, salary*1.5/4, salary from employees;
select salary, salary*5/2/10-5, salary*5/2/(10-5) from employees;

select commission_pct, commission_pct/2 from employees;

select * from job_history;

select start_date, end_date, (end_date - start_date) + 1 from job_history;

select start_date, start_date + 7 from job_history;


select 'My name is '||first_name|| ' and my surname is '||last_name as name from employees;

select 'A'||commission_pct||'B' from employees;

select first_name fn, last_name, commission_pct as pct from employees;

select start_date, end_date, (end_date - start_date) + 1 as "AbCd" from job_history;