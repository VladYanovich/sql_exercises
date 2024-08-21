select * from friends; 
create table friends as
(select employee_id id, first_name name, last_name surname from employees where commission_pct is not null);

alter table friends add(mail varchar2(25));

alter table friends modify(email varchar2(25) DEFAULT 'no email');

insert into friends (id, name, surname)
values (1, 'Zaur', 'Tregulov');

alter table friends rename column id to friend_id;

drop table friends;

create table friends (
id integer,
name varchar2(20),
surname varchar2(20),
email varchar2(20),
salary varchar2(20) default '2000',
city varchar2(20),
birthday date default sysdate
);

insert into friends (id, name, surname, email, salary, city, birthday)
values (1, 'Zaur', 'Tregulov', 'Ztreg', '2345', 'Moscow', sysdate);

insert into friends (id, name, surname, email, city)
values (2, 'Vlad', 'Yanovich', 'Vyan', 'Grodno');

select * from friends; 

commit;

alter table friends drop column salary;

alter table friends set unused column email;
 
alter table friends set unused column birthday;

alter table friends drop unused columns;

alter table friends read only;

insert into friends (id, name, surname, city)
values (3, 'Nsd', 'Gsndof', 'Brest');

drop table friends;