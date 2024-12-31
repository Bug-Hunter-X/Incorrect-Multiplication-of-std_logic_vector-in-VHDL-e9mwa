```vhdl
ENTITY multiplier IS
  PORT ( clk : IN  STD_LOGIC;
                a : IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
                b : IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
                product : OUT  STD_LOGIC_VECTOR(15 DOWNTO 0));
END ENTITY;

ARCHITECTURE behavioral OF multiplier IS
  SIGNAL temp_prod : STD_LOGIC_VECTOR(15 DOWNTO 0) := (OTHERS => '0');
BEGIN
  PROCESS (clk) 
  BEGIN
    IF rising_edge(clk) THEN
      temp_prod <= a * b;  -- Illegal operation:  * is not defined for std_logic_vector
      product <= temp_prod;
    END IF;
  END PROCESS;
END ARCHITECTURE;
```