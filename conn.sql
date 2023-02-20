drop database link site_friend;

create database link site_friend--[[site_friend = just a name. you can give it whatever you want]]
connect to system identified by "12345" --[[password = sqlplus password]]
using '(DESCRIPTION =
       (ADDRESS_LIST = (ADDRESS = (PROTOCOL = TCP) (HOST = 0.tcp.in.ngrok.io) (PORT = 12208)))
       (CONNECT_DATA = (SID = XE))
	   )'; 
