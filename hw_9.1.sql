select manager_id, to_char(null), to_number(null), sum(salary) from employees
group by manager_id
union
select to_number(null), job_id, to_number(null), sum(salary) from employees
group by job_id
union
select to_number(null), to_char(null), department_id, sum(salary) from employees
group by department_id; //1

select department_id from employees where manager_id = 100
minus
select department_id from employees where manager_id = 145
minus
select department_id from employees where manager_id = 201; //2

select first_name, last_name, salary from employees where first_name like '_a%'
intersect 
select first_name, last_name, salary from employees where lower(last_name) like '%s%'
intersect
select first_name, last_name, salary from employees
order by salary desc; //3

select * from locations;

select location_id, postal_code, city from locations where country_id = 'IT'
union
select location_id, postal_code, city from locations where country_id = 'DE'
UNION
select location_id, postal_code, city from locations where postal_code like '%9%'; //4

select country_id id, country_name country, region_id region from countries where length(country_name) > 8
union
select country_id id, country_name country, region_id region from countries where region_id != 1;

