-- after update trigger (maintains the record)

use sql_store;

create table sales_audit(
id int,
before_qua int,
after_qua int,
changed_at datetime
);


delimiter //
create trigger after_update after update on products for each row
begin
if new.quantity_in_stock!=old.quantity_in_stock then
insert into sales_audit values(1,old.quantity_in_stock,new.quantity_in_stock,now());
end if;
end //


update products set quantity_in_stock=100 where product_id=1;

select * from sales_audit;
