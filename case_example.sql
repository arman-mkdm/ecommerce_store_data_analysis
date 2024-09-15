use classicmodels;
select creditLimit from customers;
select country from customers where country like "a%" or country like "b%" or country like "c%" order by country;
select *,case  when creditLimit > 100000 then "high" when creditLimit between 25000 and 100000 then  "medium" else "low" end  as type
from customers;	