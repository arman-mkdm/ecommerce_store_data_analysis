#loops
#example 1
use excelr;

delimiter //
create procedure loop_exmple()
begin
	declare no int;
		set no = 0;
		loop_exp : loop
			set no = no +1;
			select no; #print no
			if no = 5 then
				leave loop_exp;
			end if;
		end loop loop_exp;
select no; #print final value

end //
call loop_exmple();