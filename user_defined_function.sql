#another example of user defined functions
use sql_store;
select * from customers;
select * from orders;

delimiter //

create function no_of_orders(cust_id int)
returns int
deterministic
begin
declare order_count int;
select count(order_id) into order_count from orders where cust_id = customer_id group by customer_id;
return order_count;

end
//

select no_of_orders(10);