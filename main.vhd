--LAB 1

library ieee;
use ieee.std_logic_1164.all;
use work.components.all;

entity main is
	port(clk, reset, start : in std_logic;
	RED, YELLOW, GREEN : out std_logic);
end main;

architecture behaviour of main is
	signal DONE : std_logic;
	
	begin
	
	clk_component : clock port map (clk, reset, start, DONE);
	
	fsm : stoplight_fsm port map (reset, start, clk, DONE, RED, YELLOW, GREEN);
	
	end behaviour;
	