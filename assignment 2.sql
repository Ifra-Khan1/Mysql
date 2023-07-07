create database std;
use std;
create table students(
Stid int unique not null,
name varchar (10) not null
);
insert into students (Stid , name) 
values(1001,"Mary"),(1002,"Jane"),(1003,"Daniel"),(1004,"Jack"),(1005,"Harold");

use std;
create table cources (
Cid int unique not null,
Cname varchar (19) not null ,
Stid int not null ,
foreign key (Stid) references students (STid)
);
insert into cources (Cid,Cname,Stid)
values (5001,"PHP",1004),(5002,"JAVA",1001),(5003,"ASP.NET",1001),(5004,"RUBY",1002);

use std;
create table teachers (
Tid int unique not null,
Tname varchar (32) not null,
Cid int not null ,
foreign key (Cid) references cources (Cid)
);
insert into teachers (Tid,Tname,Cid)
values (3001,"jill",5003),(3002,"Greul",5002),(3003,"Jemkin",5001),(3004,"Polo",5004);

select * from students join cources on students.Stid = cources.Stid;
select * from students join cources; 
select * from students join cources join teachers;
select * from students join cources on students.Stid = cources.Cid;
select * from students cross join cources ;
select * from students inner join cources;
select Stid ,name from students join cources on students.Stid = cources.Cid;
select* from students left join cources on students.Stid = cources.Cid;
select Stid ,name from students join cources on students.Stid = cources.Cid;
select* from students right join cources on students.Stid = cources.Cid;









