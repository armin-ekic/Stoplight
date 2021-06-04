library ieee;
use ieee.std_logic_1164.all;

package components is

------------ clock ---------------
component clock IS
	PORT (
		CLK :  IN  STD_LOGIC;
		RST :  IN  STD_LOGIC;
		START: IN STD_LOGIC;
		Z :  OUT  STD_LOGIC
	);
END component;

------------- stoplight_fsm -------------------
component stoplight_fsm IS
	PORT (restart, start, clk, T: in std_logic;
		RED, YELLOW, GREEN: out std_logic);
END component;

end components;