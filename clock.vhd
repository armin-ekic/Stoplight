-- Lab 1 Clock 
-- Z is asserted for 1 clock period 
-- after 1 second, then 3 seconds, then 6 seconds,
-- and then 1 second etc.

-- Written by Tyler Spadgenske
-- 1/29/2020

LIBRARY ieee;
use ieee.std_logic_1164.all; 
use IEEE.std_logic_arith.all;
use IEEE.std_logic_signed.all;

ENTITY clock IS 
	PORT
	(
		CLK :  IN  STD_LOGIC;
		RST :  IN  STD_LOGIC;
		START: IN STD_LOGIC;
		Z :  OUT  STD_LOGIC
	);
END clock;

ARCHITECTURE eqn of clock is 
	SIGNAL Q:std_logic_vector(24 downto 0) := "0000000000000000000000000";
	--SIGNAL Q:std_logic_vector(3 downto 0) := "0000";
	SIGNAL WAIT_TIME:std_logic_vector(3 downto 0) := "0000";
	SIGNAL pulse:std_logic := '0';
	
	SIGNAL running:std_logic := '0';
	begin
	
	Z <= (((not WAIT_TIME(3) and not WAIT_TIME(2) and not WAIT_TIME(1) and WAIT_TIME(0)) or (not WAIT_TIME(3) and not WAIT_TIME(2) and WAIT_TIME(1) and WAIT_TIME(0))
			or (not WAIT_TIME(3) and WAIT_TIME(2) and WAIT_TIME(1) and not WAIT_TIME(0))) and pulse);
	
	process(RST, CLK)
	begin 
		if CLK = '1' then
			if START'event and START = '1' then running <= '1'; end if;
			
			if RST = '1' then 
				--Q <= "0000";
				Q <= "0000000000000000000000000";
				WAIT_TIME <= "0000";
				running <= '0';
			elsif running = '1' then Q <= Q + 1;
			end if;
			
			--Every X clock cycles count (each second)
			if Q = "1011111010111100001000000" then
			--if Q = "1010" then
				WAIT_TIME <= WAIT_TIME + 1;
				pulse <= '1';
				Q <= "0000000000000000000000000";
				--Q <= "0000";
			else pulse <= '0';
			end if;
			
			if WAIT_TIME = "0110" then 
				running <= '0';
				WAIT_TIME <= "0000"; 
			end if;
			
		end if;
	end process;
	
end eqn;
		