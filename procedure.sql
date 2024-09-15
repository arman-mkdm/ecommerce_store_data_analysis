# (2) parameter in store procedure
use sql_hr;
select * from employees;

delimiter //
create procedure count_of_emp(in off_id int)
begin
select count(employee_id) as emp_counts from employees where office_id=off_id;
end //
call count_of_emp(5);