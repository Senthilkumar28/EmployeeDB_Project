create database Empolyee_dep;


use Empolyee_dep;
go

create table departments(
 dep_id int identity(2,2) primary key,
 depname varchar(255)
 )

create table empolyees(
 emp_id int identity(1,1) ,
 emp_name varchar(50) not null,
 emp_age int not null,
 dep_id int,
 primary key(emp_id),
 constraint fk_departments_employees
 foreign key(dep_id) references departments(dep_id)
 )

 insert into departments(depname)
 values('analyst')
 insert into departments(depname)
 values('marketing')
 insert into departments(depname)
 values('monitering')
 insert into departments(depname)
 values('software role')

 
 insert into empolyees(emp_name,emp_age,dep_id)
 values('senthil',28,4)
 insert into empolyees(emp_name,emp_age,dep_id)
 values('vignesh',34,8)
 insert into empolyees(emp_name,emp_age,dep_id)
 values('ramesh',28,2)
insert into empolyees(emp_name,emp_age,dep_id)
 values('sunil',30,6)
 insert into empolyees(emp_name,emp_age,dep_id)
 values('suriya',34,8)

 select * from empolyees
 select * from departments

 --linking empolyees and departments using joins:

 select empolyees.emp_id,empolyees.emp_name,empolyees.emp_age,departments.depname
 from empolyees
 inner join departments
 on empolyees.dep_id=departments.dep_id

 --updated empolyee dep_id

 update empolyees set  dep_id=8
 where emp_name='senthil'

 select * from empolyees

 --deleting empolyee record

 delete from empolyees
 where emp_name='suriya'

 select * from empolyees


--ordering in asecending order based on age
 select * from empolyees order by emp_age ;


-- searching
select * from empolyees where emp_age between 29 and 31 and dep_id=6


