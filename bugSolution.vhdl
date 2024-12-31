```vhdl
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY multiplier IS
  PORT ( clk : IN  STD_LOGIC;
                a : IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
                b : IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
                product : OUT  STD_LOGIC_VECTOR(15 DOWNTO 0));
END ENTITY;

ARCHITECTURE behavioral OF multiplier IS
  SIGNAL temp_prod : UNSIGNED(15 DOWNTO 0) := (OTHERS => '0');
  SIGNAL a_unsigned : UNSIGNED(7 DOWNTO 0);
  SIGNAL b_unsigned : UNSIGNED(7 DOWNTO 0);
BEGIN
  a_unsigned <= UNSIGNED(a);
  b_unsigned <= UNSIGNED(b);
  PROCESS (clk) 
  BEGIN
    IF rising_edge(clk) THEN
      temp_prod <= a_unsigned * b_unsigned; 
      product <= STD_LOGIC_VECTOR(temp_prod);
    END IF;
  END PROCESS;
END ARCHITECTURE;
```