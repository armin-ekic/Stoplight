Library IEEE;
use IEEE.std_logic_1164.all;

entity stoplight_fsm is 
	port(restart, start, clk, T: in std_logic;
		RED, YELLOW, GREEN: out std_logic);
end stoplight_fsm;

architecture stoplight of stoplight_fsm is
	signal state, ns: integer range 0 to 3 :=0;
begin
	process(restart, start, T, clk)
	begin
		case state is
		when 0 =>
			if start = '1' and restart = '0' then ns <= 1;
			else ns <= 0; 
			end if;
			RED <= '1'; YELLOW <= '0'; GREEN <= '0';
		when 1 =>
			if T = '1' and restart = '0' then ns <= 2;
			elsif restart = '1' then ns <= 0;
			end if;
			RED <= '1'; YELLOW <= '0'; GREEN <= '0';
		when 2 =>
			if T = '1' and restart = '0' then ns <= 3;
			elsif restart = '1' then ns <= 0;
			end if;
			RED <= '0'; YELLOW <= '1'; GREEN <= '0';
		when 3 =>
			if T = '1' or restart = '1' then ns <= 0;
			else ns <= 3;
			end if;
			RED <= '0'; YELLOW <= '0'; GREEN <= '1';
		end case;
	end process;
	
	process(clk)
	begin
		if clk'event and clk = '1' then state <= ns;
		end if;
	end process;
	
end stoplight;