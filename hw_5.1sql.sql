select * from employees where instr(lower(first_name), 'b') > 0; //1

select * from employees where instr(lower(first_name), 'a', 1, 2) > 0; //2

select * from departments;
select department_name, substr(trim(department_name), 1, length(trim(department_name))-length(substr(trim(department_name) ,instr(trim(department_name), ' '))))
from departments 
where instr(trim(department_name), ' ') > 0; //3
