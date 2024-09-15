use sql_store;
select * from customers;
select * from orders;

#left outer join

#select * from customers left join orders on customers.customer_id=orders.customer_id;

select c.customer_id,c.first_name,c.last_name,o.order_id,o.order_date from customers c left join orders o
on c.customer_id=o.customer_id;

#right outer join

select c.customer_id,c.first_name,c.last_name,o.order_id,o.order_date from customers c right join orders o
on c.customer_id=o.customer_id;

#full outer join

select c.customer_id,c.first_name,c.last_name,o.order_id,o.order_date from customers c left join orders o
on c.customer_id=o.customer_id union
select c.customer_id,c.first_name,c.last_name,o.order_id,o.order_date from customers c right join orders o
on c.customer_id=o.customer_id;

#self join

select c.customer_id, c.firstname , m.phone ,m.address from customers c  join customers m 