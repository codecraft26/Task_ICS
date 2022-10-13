use sakila;
CREATE TABLE Persons (
person_id int NOT NULL,
LastName varchar(255) NULL,
FirstName varchar(255) NOT NULL,
Age int
);

 alter table Persons
 drop primary key;



ALTER TABLE Persons ADD CONSTRAINT pk_Person primary key (person_id); 
ALTER TABLE Persons Drop CONSTRAINT pk_Person;
ALTER TABLE Persons ALTER LastName SET DEFAULT 'Sandnes'; 
 
 
 
 
desc Persons;
ALTER TABLE sakila.Persons MODIFY LastName varchar(255) not null; 
Alter table sakila.persons modify age int not null default 20;
 

drop table sakila.Persons;
 
insert sakila.Persons (person_id, firstName,Lastname,Age) values (2,'sretdf','dg',12);
delete from persons where person_id = 1;
select * from Persons;
 
CREATE TABLE Orders (OrderID int NOT NULL, OrderNumber int NOT NULL, person_id int, PRIMARY KEY (OrderID), 
CONSTRAINT FK_PersonOrder FOREIGN KEY (person_id) REFERENCES Persons(person_id)); 
drop table orders;
desc Orders;
ALTER TABLE Orders DROP FOREIGN KEY FK_PersonOrder;
ALTER TABLE Orders ADD CONSTRAINT FK_PersonOrder FOREIGN KEY (person_id) REFERENCES Persons(person_id); 
 
insert  into orders values(1, 12,1);
delete from orders where person_id = 2;
 
ALTER TABLE Persons ADD CONSTRAINT CHK_PersonAge CHECK (Age>=10); 
ALTER TABLE Persons Drop constraint persons_chk_1;
 
insert into persons (person_id, firstName, age) values(7,'harshada',50);
insert into persons values(3,'shreya ','singh',39);
insert into persons values(4,'nitesh gupta','hello',39);
insert into persons values(5,'nisha ','sawant',39);
 
insert into orders values(3,25,3);
insert into orders values(4,25,3);
insert into orders values(5,25,4);
-- insert into orders values(6,25,9);
select * from orders;
 
select p.person_id, o.orderid, o.person_id from persons p, orders o where p.person_id = o.person_id;    -- implicit
select p.person_id, o.orderid, o.person_id from persons p inner join  orders o on p.person_id = o.person_id; -- explicit
 
 
