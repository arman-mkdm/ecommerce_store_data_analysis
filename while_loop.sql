#while loop exp
use excelr;
delimiter //
create procedure while_loop_exp()
begin
	declare i int default 1;
	while i <= 10 do
		select i; #print 1
		set i=i+1;
    end while;
end //

call while_loop_exp()