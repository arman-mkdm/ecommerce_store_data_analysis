#store procedure with in and out parameter
use sql_hr;
select * from employees;

delimiter //
create procedure ztech(in off_id int,out emp_count int)
begin 
select count(employee_id) into emp_count from employees where office_id=off_id;
end //

call ztech(5,@emp_count);

select @emp_count;