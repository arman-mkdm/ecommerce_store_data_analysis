use sql_hr;
select * from employees;
select *,avg(salary)  over (partition by office_id) as "average salary" from employees;
select *,rank() over (partition by office_id order by salary) as "rank",dense_rank() over (partition by office_id order by salary)
as "dense rank"  from employees;
select *,row_number()  over (partition by office_id) as "index" from employees;

#gives values between 0 - 1
select *,cume_dist()  over (partition by office_id order by salary) as "Cum dist" from employees; #current row divide by total no of row
select *,rank()  over (partition by office_id order by salary) ,percent_rank()  over (partition by office_id order by salary)
as "percent rank" from employees; # rank -  divide by total no of rows - 