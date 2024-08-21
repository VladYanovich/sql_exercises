select * from regions;
select * from countries;
select * from locations2;

CREATE TABLE locations2 AS (SELECT * FROM locations WHERE 1=2);

insert into locations2 (location_id, street_address, city, country_id) values ('1000','1297 Via Cola di Rie','Roma', 'IT');
insert into locations2 (location_id, street_address, city, country_id) values ('1100','93091 Calle della Testa','Venice', 'IT');

commit;

insert into locations2 values ('1956','Troloolo', '12345','Paris','province 1', 'FR');
insert into locations2 values ('1933','Bendro21', '12234','Lion','province 2', 'FR');

commit;

insert into locations2 (select * from locations where length(state_province) > 9);

commit;

CREATE TABLE locations4europe AS (SELECT * FROM locations WHERE 1=2);

insert into locations2 (select * from locations);
insert into locations4europe (location_id, street_address, city, country_id)
(select location_id, street_address, city, l.country_id from locations l 
join countries c on (l.country_id=c.country_id) 
join regions r on(c.region_id=r.region_id)
where c.region_id = 1);

commit;

update locations2 set postal_code = 2222 where postal_code is null;

rollback;

update locations2 set postal_code = (select postal_code from locations where location_id = 2600) where postal_code is null;

commit;

delete from locations2 where country_id = 'IT';

savepoint s1;

update locations2 set street_address = 'Sezam st.18' where location_id > 2500;

savepoint s2;

delete from locations2 where street_address = 'Sezam st.18';

rollback to savepoint s1;

commit;

