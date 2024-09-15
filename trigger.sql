-- after insert  (used for auditing for maintaining record)

use sql_hr;
-- drop table emp_audti;
desc emp_audit;	
select * from emp_audit;
create table emp_audit(
id int,
audit varchar(255)
);

delimiter //
create trigger after_insert after insert on employees for each row
begin
insert into emp_audit values (new.employee_id,concat("a row has been inserted in audit table",now()));


end//
insert into employees(employee_id,first_name,last_name,job_title,office_id,salary) values (102,"sgi","sss","developer",4,-500);
