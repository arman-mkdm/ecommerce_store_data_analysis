use excelr;


#TCL(Transaction Control Language)
#commit,rollback,savepoint

create table employee(
emp_id int primary key,
name varchar(50),
age int
);

desc employee;
select * from employee;
drop table employee;

start transaction;
insert into employee values (1,"abcd",21),(2,"gjgk",27);
savepoint save1;
update employee set age=18 where emp_id=1;
savepoint save2;
delete from employee where emp_id=2;
savepoint save3;
rollback to save1;
select * from employee;
