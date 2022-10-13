Create table ActorSample(
actor_id smallint(5) unsigned not null auto_increment,
first_name varchar(45) not null,
last_name varchar(45)  null,
last_update timestamp not null default current_timestamp
on update current_timestamp,
primary key(actor_id)
);