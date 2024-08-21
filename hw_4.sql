select * from employees where length(first_name) > 10; //1

select * from employees where mod(salary, 1000) = 0;  //2

select phone_number, substr(phone_number, 1, 3) from employees 
where length(phone_number) = 12; //3

select * from employees 
where length(first_name) > 5 
and substr(first_name, -1) = 'm';

select sysdate, next_day(sysdate, 5) from dual; //5

select * from employees where months_between(sysdate, hire_date) > 150; //6

select replace(phone_number, '.', '-') from employees; //7

select first_name||'   '||email||'       '||job_id from employees; //8

select concat(first_name, salary) from employees; //9

select hire_date, round(hire_date, 'MM'), trunc(hire_date, 'YYYY') from employees; //10

select rpad(first_name, 10, '$'), lpad(last_name, 15, '!') from employees; //11

select first_name, instr(first_name, 'a', 1, 2) from employees; //12

select '!!!HELLO!! MY FRIEND!!!!!!!!', trim('!' from '!!!HELLO!!')||trim('!' from ' MY FRIEND!!!!!!!!') from dual; //13

select salary, salary*3.1415, round(salary*3.1415), trunc(salary*3.1415, -3) from employees; //14

select hire_date, add_months(hire_date, 6), last_day(hire_date) from employees; /15


