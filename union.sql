use sql_store;

select * from price;
select * from items;

select i.item_id,i.name,p.item_id,p.price from items i right join price p on i.item_id = p.item_id;

select i.item_id,i.name,p.item_id,p.price from items i left join price p on i.item_id = p.item_id union
select i.item_id,i.name,p.item_id,p.price from items i right join price p on i.item_id = p.item_id;