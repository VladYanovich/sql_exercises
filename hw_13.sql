create table emp1000 as
(select  first_name, last_name, salary, department_id from employees);

create view v1000 as
(select  first_name, last_name, salary, department_name, city from emp1000 e join departments d on(e.department_id=d.department_id));

alter table emp1000 add city varchar2(15);

select * from v1000;

create synonym syn1000 for v1000;

drop view v1000;

drop synonym syn1000;

drop view emp1000;

create sequence seq1000 start with 12 increment by 4 maxvalue 200;

alter sequence seq1000 nomaxvalue;

insert into employees values(seq1000.nextval, 'Vlad', 'Yanovich', 'Vyan', '433.242.3432', sysdate, 'AD_PRES', 32000, null, null, 90);

select * from employees;

commit;