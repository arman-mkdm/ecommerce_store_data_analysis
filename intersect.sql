#intersect

# which products are orderd (nested sub query)
# find out a products that have never been ordered

use sql_store;
select * from order_items;
select * from products;


select * from products where product_id not in(select distinct(product_id) from order_items);



#find out customres that have never ordered a product

use sql_store;
select * from customers;
select * from orders;

select * from customers where customer_id not in (select distinct(customer_id) from orders);
