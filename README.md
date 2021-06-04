# Stoplight

VHDL implementation of stoplight FSM, this code was written to start a stoplight when a "start" signal was pressed. From here, the stoplight will spend 3 seconds on a red light, 2 seconds on a yellow light, and 1 second on a green light before going back to the reset state. At any point during the operation, "reset" can be pressed to send the system back to the original state.
