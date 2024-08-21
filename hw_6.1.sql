select 
    min(salary), 
    max(salary),
    min(hire_date), 
    max(hire_date), 
    count(*)
from employees
group by department_id
order by count(*) desc; //1

select substr(first_name, 1, 1), count(*)
from employees
having count(*) > 1
group by substr(first_name, 1, 1)
order by count(*); //2

select department_id, salary, count(*)
from employees
group by department_id, salary; //3

select to_char(hire_date, 'day'), count(*) 
from employees
group by to_char(hire_date, 'day')
order by count(*); //4

select department_id, count(*), sum(salary) 
from employees
having sum(salary) > 300000 and count(*) > 30
group by department_id; //5

select region_id, sum(length(country_name))
from countries
having sum(length(country_name)) > 50
group by region_id; //6

select job_id, round(avg(salary))
from employees
group by job_id; //7

select department_id, count(distinct job_id)
from employees
having count(distinct job_id) > 1
group by department_id; //8

select department_id, job_id, max(salary), min(salary)
from employees
having avg(salary) > 10000
group by department_id, job_id; //9

select manager_id, avg(salary) 
from employees
where commission_pct is null
having avg(salary) between 6000 and 9000
group by manager_id; //10

select round(max(avg(salary)), -3)
from employees
group by department_id; //11





