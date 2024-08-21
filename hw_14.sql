create table test200(
id integer,
name1 varchar2(20),
name2 varchar2(20),
address1 varchar2(20),
address2 varchar2(20)
);

update test200 set &col6 = &val6 where id = &id_val;

select &&name, &name, &&address, &address from test200;
undefine 