use sql_store;

select * from products;
select * from order_items;

select p.product_id, p.name, oi.order_id from products as p left join order_items as oi on p.product_id=oi.product_id;