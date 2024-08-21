create table students(
id number,
name varchar2(15),
course number, 
faculty_id integer,
avg_score number(5,2),
start_date date,
scholarship integer
);

create table faculties(
id number,
name varchar2(15)
);

insert into students values(1, 'Zaur', 3, 1, 8.7, TO_DATE('15-sep-17'), 1500);
insert into students values(1, 'Kolya', 3, 1, 8.7, TO_DATE('15-sep-17'), 1500);
insert into students values(2, 'Misha', 2, 3, 7.5, TO_DATE('15-sep-18'), 800);
insert into students values(null, 'Zaur', 3, 1, 8.7, TO_DATE('15-sep-17'), 1500);

select * from students;

drop table students;
drop table faculties;

alter table students add constraint st_id_unique unique(id);

insert into faculties values(1, 'CS');
insert into faculties values(2, 'Economics');
insert into faculties values(2, 'Philology');
select * from faculties;
alter table faculties add unique(id);

update faculties set id = 3 where name = 'Philology';

alter table students modify (id constraint abc unique);
alter table faculties modify (id unique);

alter table students drop constraint abc;