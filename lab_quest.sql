#practice

use classicmodels;

select * from orderdetails;

select ordernumber,quantityordered from (select quantityordered,ordernumber,dense_rank()
over (partition by ordernumber order by quantityordered desc) as ranking
from orderdetails) as shubham where ranking=2;
