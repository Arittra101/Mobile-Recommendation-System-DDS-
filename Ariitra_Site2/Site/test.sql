set verify off;
set serveroutput on;
accept X char prompt "Enter the Operating System = ";
accept Y number prompt "Enter Price of your phone = ";


declare

  os_input  varchar2(30):='&x';

  an_check number; 
  iph_check number;
  price number;
  ram number;
  rom number;
  camera number;
  processor varchar2(30);
  
  money_flt number;
  ram_flt number;
  rom_flt number;
  -- all from android 
  -- from iphone

  Ipprice number:=&Y;
  Ipram number;
  Iprom number;
  Ipcamera number;
  Ipprocessor varchar2(30);

  Ipmoney_flt number;
  Ipram_flt number;
  Iprom_flt number;

begin
  
  -- check whether is it android or iphone
 os_input:='&x';

 an_check:=instr(os_input,'android');
 iph_check:=instr(os_input,'iphone');

  -- if android work from here
 if an_check = 1 then
   
    dbms_output.put_line('dsd');
 else
    dbms_output.put_line('from iphone');



    Ipmoney_flt:=88000;
    dbms_output.put_line('money_fit1 ' || Ipprice);
     
    if (Ipprice < Ipmoney_flt) then

      dbms_output.put_line('Input price < avg price');
        --  iphone1(Ipprice,Ipmoney_flt,Ipram,Ipram_flt,Ipprocessor,Iprom,Iprom_flt,Ipcamera);

    else 
      dbms_output.put_line('Input price > avg price');
        --  iphone(Ipprice,Ipmoney_flt,Ipram,Ipram_flt,Ipprocessor,Iprom,Iprom_flt,Ipcamera);
    end if;       
       
  
 end if;
  -- if android work from here

    
end;
/