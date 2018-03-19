library ieee;
use ieee.std_logic_1164.all;

entity Proyecto01 is
port (a,b,c,d,w,x,y,z : in std_logic;
		j: out std_logic);
end Proyecto01;

architecture beh of Proyecto01 is
signal tmp: std_logic_vector(3 downto 0);

begin 
	tmp <= (a,b,c,d);
	
	with tmp select 
		j <= w  when "1000",
			  x  when "0100",
			  y  when "0010",
			  z  when "0001",
			 '0' when others;
			 
end beh;			 