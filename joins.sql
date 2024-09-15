#joins

use sql_store;
select * from customers;
select * from order_statuses;
select * from orders;
select * from order_items;
select * from order_item_notes;
select * from shippers;
select * from products;

#inner join
select c.customer_id,c.first_name,c.last_name,o.order_date,o.order_id,os.name from customers c join orders o join order_statuses os
on c.customer_id= o.customer_id and o.status=os.order_status_id;

select c.customer_id,c.first_name,c.last_name,o.order_date,oi.order_id,oi.unit_price from customers c join orders o join order_items oi
on c.customer_id= o.customer_id and o.order_id=oi.order_id;

select * from customers;
select * from orders;