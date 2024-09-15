use classicmodels;
show tables;
select * from customers;
select * from orders;
select * from orderdetails;


select c.customerNumber,c.customerName,sum(od.quantityOrdered*od.priceEach) as sales from customers c join orders o join orderdetails od
on c.customerNumber=o.customerNumber and o.orderNumber=od.orderNumber 
group by c.customerNumber
order by sales desc;
