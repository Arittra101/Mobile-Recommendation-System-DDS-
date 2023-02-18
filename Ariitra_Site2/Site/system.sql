set verify off;
set serveroutput on;

 
declare
  user_search_all number;
  user_input1 number;
  choose_os_iphone number;
  c  number;
 
begin
  
  c:= &c;
  dbms_output.put_line('Options ');
  dbms_output.put_line('Press 1 if you want to search all mobiles else -1 ');
  dbms_output.put_line('Press 2 if you want to search customer ');
  dbms_output.put_line('Press 3 if you want to see order list of yours ');
  
  if c = 1 then
  user_search_all := &user_search_all;
  dbms_output.put_line(user_search_all);

  elsif c = 2 then 
  choose_os_iphone := &choose_os_iphone;
  dbms_output.put_line(choose_os_iphone);

  end if;


    
end;
/