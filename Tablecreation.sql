use SQL_Practice;
create table student(id int primary key,name varchar(10),mail varchar(10),cell int);
insert into student values(1,'chandu','cdbah@.com',1233);
select*from student;
select name from sys.databases; --for showing databases
select table_name
from INFORMATION_SCHEMA.tables
where table_type='base table';
