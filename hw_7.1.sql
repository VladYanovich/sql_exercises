select region_name, count(*) 
from employees join departments using(department_id) join locations using (location_id) join countries using (country_id) join regions using (region_id)
group by region_name; //1

select first_name, last_name, department_name, job_id, street_address, country_name, region_name
from employees e left outer join departments d natural join regions natural join locations natural join countries 
on (e.department_id = d.department_id); //2

select * from departments;

select * from employees;

select * from countries;

select * from locations;

select emp2.first_name, count(*)
from employees emp1 join employees emp2 on (emp1.manager_id = emp2.employee_id)
having count(*) > 6
group by emp2.first_name
order by count(*); //3

select department_name, count(*)
from departments join employees using (department_id)
having count(*) > 30
group by department_name; //4

select department_name, count(d.manager_id)
from departments d left outer join employees e on (d.department_id = e.department_id)
having count(d.manager_id) = 0
group by department_name; //5

select * 
from employees emp1 join employees emp2 on (emp1.manager_id = emp2.employee_id)
where emp1.hire_date between '01-JAN-01' and '01-JAN-05' and emp2.hire_date between '01-JAN-05' and '01-JAN-06'; //6

select country_name, region_name
from countries natural join regions; //7

select first_name, last_name, salary 
from employees e join jobs j on (e.job_id = j.job_id)
where salary < min_salary + 1000; //8

select distinct first_name, last_name, country_name 
from employees left outer join departments using(department_id) join locations using (location_id) right outer join countries using (country_id); //9

select first_name, last_name, country_name
from employees natural join countries; //10

select region_name, count(*) 
from regions r, (countries c, (locations l, (departments d, employees e 
    where e.department_id = d.department_id) 
    where d.location_id = l.location_id) 
    where l.country_id = c.country_id)
    where c.region_id = r.region_id
group by region_name;

select department_name, count(d.manager_id)
from departments d,employees e where d.department_id = e.department_id(+)
having count(d.manager_id) = 0
group by department_name; //12 
