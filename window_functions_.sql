use sql_hr;
select * from employees;
select *,ntile(4) over (partition by office_id order by salary) from employees;
select *,lag(1) over (partition by office_id order by salary) from employees;
select *,lead(1) over (partition by office_id order by salary) from employees;
select *,first_value(salary) over (partition by office_id order by salary) from employees;
select *,last_value(salary) over (partition by office_id order by salary) from employees;
select *,nth_value(salary,2) over (partition by office_id) from employees;