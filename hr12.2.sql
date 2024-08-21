create table students(
id number,
name varchar2(15),
course number, 
faculty_id integer
);
drop table students;
create table faculties(
id number primary key,
name varchar2(15)
);

drop table students;
drop table faculties;

insert into students values 
(1, 'Zaur', null, 1);
insert into students values 
(5, 'Misha', 2, 2);
insert into students values 
(9, 'Ivan', 5, null);
insert into students (id, name, faculty_id) values 
(1, 'Zaur', 5);

select * from  students;

alter table students modify (constraint fk faculty_id references faculties(id));
alter table students modify (faculty_id references faculties(id));
alter table students modify (course null);
alter table students add constraint st_c_notnull unique (course);

insert into students values(7, 'Misha', null, 5);
insert into students values(8, 'Pasha', 3, 7);
insert into students values(null, 'Zaur', 3, 5);
insert into students (id, name, faculty_id)
values(5, 'Zaur', 3);

alter table students modify (id primary key);

insert into faculties values (1, 'CS');
insert into faculties values (2, 'Marketing');

select * from faculties; 

alter table students add foreign key (faculty_id) references faculties (id);