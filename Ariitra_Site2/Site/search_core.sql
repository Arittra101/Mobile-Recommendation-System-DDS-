set verify off;
set serveroutput on;
accept X char prompt "Enter the Operating System = ";
accept Y number prompt "Enter Price of your phone = ";
accept Z char prompt "Enter Processor of your phone = ";
accept K number prompt "Enter of your phon Ram = ";
accept A number prompt "Enter of your phone Rom = ";
accept B number prompt "Enter of your phone Camera = ";



create or replace procedure  android(price in number,money_flt in number,ram in number,ram_flt in number,processor in varchar2,rom in number,rom_flt in number,camera in number)
is 
begin
  dbms_output.put_line('Phone Name' ||' ' || 'Ram' ||  'Rom' || ' ' || 'PROCESSOR'  || ' ' || 'display_size' || ' ' || 'battery');
  for R in (select * from android_core_mobile3) loop

      if  R.price>=price-2000 and R.price <= money_flt OR R.RAM>=ram and R.RAM<=ram_flt OR R.Rom>=rom and R.RAM<=ram_flt then 
      for N in (select * from android_fency_mobile4@site_friend) loop
       if N.phone_id = R.phone_id then
          dbms_output.put_line(R.phone_id ||' ' || R.RAM || ' '||  R.ROM || ' ' || R.PROCESSOR  || ' ' || N.display_size || ' ' || N.battery||' ' ||R.price);
      end if;

    end loop;   
    end if;

  end loop;
end android;
/

create or replace procedure  iphone(price in number,money_flt in number,ram in number,ram_flt in number,processor in varchar2,rom in number,rom_flt in number,camera in number)
is 
begin
  dbms_output.put_line('PhoneId' ||' ' || 'Ram' ||  'Rom' || ' ' || 'PROCESSOR'  || ' ' || 'display_size' || ' ' || 'battery');
  for R in (select * from iphone_core_mobile1@site_friend) loop

      if  R.price>=price-2000 and R.price <= money_flt OR R.RAM>=ram and R.RAM<=ram_flt OR R.Rom>=rom and R.RAM<=ram_flt then 
      for N in (select * from iphone_fency_mobile2) loop
       if N.phone_id = R.phone_id then
          dbms_output.put_line(R.phone_id ||' ' || R.RAM || ' '||  R.ROM || ' ' || R.PROCESSOR  || ' ' || N.display_size || ' ' || N.battery ||' ' ||R.price);
      end if;

    end loop;   
    end if;

  end loop;
end iphone;
/

create or replace procedure  iphone1(price in number,money_flt in number,ram in number,ram_flt in number,processor in varchar2,rom in number,rom_flt in number,camera in number)
is 
begin
  dbms_output.put_line('PhoneId' ||' ' || 'Ram' ||  'Rom' || ' ' || 'PROCESSOR'  || ' ' || 'display_size' || ' ' || 'battery' || 'Price');
  for R in (select * from iphone_core_mobile1@site_friend) loop

      if  money_flt<=R.price  then 
      for N in (select * from iphone_fency_mobile2) loop
       if N.phone_id = R.phone_id then
          dbms_output.put_line(R.phone_id ||' ' || R.RAM || ' '||  R.ROM || ' ' || R.PROCESSOR  || ' ' || N.display_size || ' ' || N.battery||' '||R.price);
      end if;

    end loop;   
    end if;

  end loop;
end iphone1;
/

create or replace procedure  android1(price in number,money_flt in number,ram in number,ram_flt in number,processor in varchar2,rom in number,rom_flt in number,camera in number)
is 
begin
  dbms_output.put_line('PhoneId' ||' ' || 'Ram' ||  'Rom' || ' ' || 'PROCESSOR'  || ' ' || 'display_size' || ' ' || 'battery' || 'Price');
  for R in (select * from android_core_mobile3) loop

      if  money_flt<=R.price  then 
      for N in (select * from android_fency_mobile4@site_friend) loop
       if N.phone_id = R.phone_id then
          dbms_output.put_line(R.phone_id ||' ' || R.RAM || ' '||  R.ROM || ' ' || R.PROCESSOR  || ' ' || N.display_size || ' ' || N.battery||' '||R.price);
      end if;

    end loop;   
    end if;

  end loop;
end android1;
/
declare

  os_input  varchar2(30);

  an_check number; 
  iph_check number;


  price number:=&Y;
  ram number :=&k;
  processor varchar2(30):='&Z';
  rom number:=&A;
  camera number:=&B;
  
  money_flt number;
  ram_flt number;
  rom_flt number;
  -- all from android 
  -- from iphone

  Ipprice number;
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

     

      select AVG(PRICE) into money_flt from android_core_mobile3;
      select AVG(TO_NUMBER(RAM)) into ram_flt from android_core_mobile3;
      select AVG(TO_NUMBER(ROM)) into rom_flt from android_core_mobile3;
    


      --dbms_output.put_line(money_flt || ' ' || ram_flt||' '||rom_flt);
    
       if price>=money_flt then
        android1(price,money_flt,ram,ram_flt,processor,rom,rom_flt,camera);
       else android(price,money_flt,ram,ram_flt,processor,rom,rom_flt,camera);
       end if;  
     --android(price,money_flt,ram,ram_flt,processor,rom,rom_flt,camera);
     --dbms_output.put_line('wow its android');

  else
    dbms_output.put_line('from iphone');



     select AVG(PRICE) into Ipmoney_flt from iphone_core_mobile1@site_friend;
     select AVG(TO_NUMBER(RAM)) into Ipram_flt from iphone_core_mobile1@site_friend;
     select AVG(TO_NUMBER(ROM)) into Iprom_flt from iphone_core_mobile1@site_friend;
     --dbms_output.put_line(Ipprice || Ipram || Ipprocessor || Iprom || Ipcamera);
     --dbms_output.put_line(Ipmoney_flt || ' ' || Ipram_flt||' '||Iprom_flt);

       if price>=Ipmoney_flt then
        -- dbms_output.put_line('input price > avg');
         iphone1(price,Ipmoney_flt,ram,Ipram_flt,processor,rom,Iprom_flt,Ipcamera);
       else   
        -- dbms_output.put_line('input price < avg'); 
         iphone(price,Ipmoney_flt,ram,Ipram_flt,processor,rom,Iprom_flt,Ipcamera);
       end if;       
       
  
 end if;
  -- if android work from here

    
end;
/