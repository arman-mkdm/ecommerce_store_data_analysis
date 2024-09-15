
use classicmodels;
select * from orders;

delimiter //

create procedure get_order_status_2(in param_proc varchar(100))
begin
select count(orderNumber) as Total_orders,year(orderDate) as year from orders where status=param_proc group by year;
end //


call get_order_status_2("shipped");
call get_order_status_2("Cancelled");
call get_order_status_2("On Hold");