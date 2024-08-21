create table address (
id integer constraint ad_id_un unique, 
country varchar2(15),
city varchar2(15)
);

create table friends(
id integer, 
name varchar2(15), 
email varchar2(15),
address_id integer constraint ai_f references address(id) on delete set null, 
birthday date,
constraint ch check (length(name)>3)
);

create unique index fr_in1 on friends(id);

alter table friends add constraint fr_id_pk primary key(id);

create index fr_email_in on friends(email);

alter table friends modify(constraint fr_email_nn email not null);

drop table friends;
drop table address;