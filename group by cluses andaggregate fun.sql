--GROUP BY CLAUSE
use SQL_Practice
create table Departss(id int primary key, name varchar(20));
insert into Departss values(101,'chandu'),(102,'vani'),(103,'bhanu'),(104,'chandana');


--updatting table values
--update  Departs set name='it' where id=101 


create table emps(eid int primary key,name varchar(10),sal int, id int, constraint FK_emps_id foreign key (id) references Departss(id));
insert into emps values(1,'deva', 38000,101),
(2,'chandu',24000,103),
(3,'keeru',20000,102),
(4,'lakshmi',24000,103);
--group by clause using to find how many emps works in each dept
select id, count(*) as count_depts From emps 
group by id

select sum(sal) as su_sal from emps 
group by id

select id, avg(sal) as avg from emps 
group by id

--find avg salary in each dept where sal inb/w 20000 to 25000
select avg(sal) as avg_sal from emps 
where sal between 20000 and 25000
group by id
--finding least sal name
select top 1 * from emps order by sal desc