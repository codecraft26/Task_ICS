-- left outer join 
-- exapmple code for join

select p.*, o.orderid, o.person_id from persons p left join  orders o on p.person_id = o.person_id;
 
-- right join
select p.person_id, o.orderid, o.person_id,o.* from persons p right join  orders o on p.person_id = o.person_id;
 
-- full outer join
select p.person_id, o.orderid, o.person_id from persons p left join  orders o on p.person_id = o.person_id
union
select p.person_id, o.orderid, o.person_id from persons p right join  orders o on p.person_id = o.person_id;
 
-- cross join
select p.person_id, o.orderid, o.person_id from persons p cross join  orders o;
 

-- Self join
create table EMployee(
EmployeeId int primary key,
Name varchar(20),
manager_id int );
select * from employee;
 
insert into Employee 
select 1, 'harshada',2 
union all
select 2, 'harshada1',1
union all
select 3, 'harshada2',1
union all
select 4, 'harshada3',3;
 
select * from employee;
 
select e1.name employeeName, e2.name managername
from employee e1 inner join employee e2 
on e1.manager_id = e2.employeeid;
 
select e1.name employeeName, e2.name managername
from employee e1 left join employee e2 
on e1.manager_id = e2.employeeid;
 
-- drop table employee;
 
-- using keyword
select p.person_id, o.orderid, o.person_id from persons p right join  orders o using (person_id);