#case and null

use django;
select * from employee;
#case query
select *,
case when salary=1000 then salary+salary*0.2
when salary=3000 then salary+salary*0.1
else salary
end as updated_salary from employee;
#isnull
select *,isnull(null_col) from employee;
#ifnull
select *,ifnull(null_col,0) from employee;
update employee set null_col=ifnull(null_col,0);
update employee set email= null where l_name ="fjffjx";#to null single cell  
#coalesce
select *,coalesce(f_name,middle_name,l_name,"no data available") from employee;
#select *,ifnull(null_col,1) from employee;

select * from employee;

select *, 




