select * from ActorSample;
 
insert  into actorsample (first_name,last_name,last_update) values ('aman  ','Gupta','2022-10-10');
insert  into actorsample (first_name,last_name) values ('aman  ','gupta');
insert  into actorsample (first_name,last_name,last_update) values ('nite g gupta','niteggupta',DEFAULT);
insert  into actorsample (first_name,last_name,last_update) values ('harshada','sawant',DEFAULT),('harshada1','sawant1',DEFAULT);
 
update actorsample set first_name = 'daksh', last_name = 'sa' where actor_id = 2;
update actorsample set first_name = 'daksh', last_name = 'sa', last_update = DEFAULT where actor_id = 1;
 
delete from actorsample where actor_id = 2;
 
update actorsample set first_name = 'Teju'
 where actor_id in (
select actor_id from sakila.film_actor where film_id = 1
);
select * from sakila.film_actor where film_id = 1;