#lab questions

use classicmodels;
select * from products;

select distinct(productLine),first_value(msrp) over (partition by productLine order by MSRP desc)  from products;

select * from orderdetails;




