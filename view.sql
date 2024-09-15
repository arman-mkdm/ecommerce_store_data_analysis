use classicmodels;

select * from employees;
select * from offices;

create view territory_status as select o.territory,count(e.employeeNumber) as "no of employees" from offices o join employees e
on o.officeCode=e.officeCode 
group by o.territory 
order by territory desc;
select * from territory_status;
